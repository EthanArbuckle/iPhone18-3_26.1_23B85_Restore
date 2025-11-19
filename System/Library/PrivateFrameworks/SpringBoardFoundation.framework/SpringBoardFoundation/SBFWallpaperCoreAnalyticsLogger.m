@interface SBFWallpaperCoreAnalyticsLogger
- (SBFWallpaperCoreAnalyticsLogger)init;
- (SBFWallpaperCoreAnalyticsLogger)initWithWallpaperDefaultsDomain:(id)a3;
- (unint64_t)ageOfWallpaper;
- (void)saveStateOfWallpaperToCoreAnalytics:(int64_t)a3 withHasVideo:(BOOL)a4 hasProcedural:(BOOL)a5 name:(id)a6;
@end

@implementation SBFWallpaperCoreAnalyticsLogger

- (SBFWallpaperCoreAnalyticsLogger)init
{
  v3 = objc_alloc_init(MEMORY[0x1E69B7DF0]);
  v4 = [(SBFWallpaperCoreAnalyticsLogger *)self initWithWallpaperDefaultsDomain:v3];

  return v4;
}

- (SBFWallpaperCoreAnalyticsLogger)initWithWallpaperDefaultsDomain:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBFWallpaperCoreAnalyticsLogger;
  v6 = [(SBFWallpaperCoreAnalyticsLogger *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wallpaperDefaultsDomain, a3);
  }

  return v7;
}

- (unint64_t)ageOfWallpaper
{
  v2 = [(PBUIWallpaperDefaultsDomain *)self->_wallpaperDefaultsDomain dateWallpaperLastChanged];
  v3 = [MEMORY[0x1E695DF00] date];
  if (v2)
  {
    v4 = objc_alloc(MEMORY[0x1E695DEE8]);
    v5 = [v4 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
    v6 = [v5 components:16 fromDate:v2 toDate:v3 options:0];
    v7 = [v6 day];
  }

  else
  {
    v7 = 1;
  }

  v8 = &qword_1BEAD3B10;
  v9 = 6;
  v10 = 365;
  while (v7 >= *v8)
  {
    ++v8;
    if (!--v9)
    {
      goto LABEL_9;
    }
  }

  v10 = *(v8 - 1);
LABEL_9:

  return v10;
}

- (void)saveStateOfWallpaperToCoreAnalytics:(int64_t)a3 withHasVideo:(BOOL)a4 hasProcedural:(BOOL)a5 name:(id)a6
{
  v8 = a4;
  v18 = a6;
  v11 = [v18 length];
  v12 = v11;
  v13 = @"UserPhoto";
  if (v8)
  {
    v13 = @"UserIris";
    v14 = @"PreCannedIris";
  }

  else
  {
    v14 = @"PreCannedPhoto";
  }

  if (v11)
  {
    v13 = v14;
  }

  if (a5)
  {
    v15 = @"Procedural";
  }

  else
  {
    v15 = v13;
  }

  if ([(__CFString *)v15 length])
  {
    if (a3)
    {
      lockType = self->_lockType;
      self->_lockType = &v15->isa;
    }

    if ((a3 & 2) != 0)
    {
      homeType = self->_homeType;
      self->_homeType = &v15->isa;
    }
  }

  if (v12 && [v18 length])
  {
    if (a3)
    {
      objc_storeStrong(&self->_lockName, a6);
    }

    if ((a3 & 2) != 0)
    {
      objc_storeStrong(&self->_homeName, a6);
    }
  }

  if (a3)
  {
    self->_irisEnabled = v8;
  }

  self->_sharedWallpaper = a3 == 3;
}

id __70__SBFWallpaperCoreAnalyticsLogger_sendStateOfWallpaperToCoreAnalytics__block_invoke(uint64_t a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"irisEnabled";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 48)];
  v13[0] = v2;
  v12[1] = @"irisPlayCount";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(*(a1 + 32) + 8), "irisWallpaperPlayCount")}];
  v13[1] = v3;
  v12[2] = @"shared";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 49)];
  v13[2] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v6 = [v5 mutableCopy];

  if ([*(*(a1 + 32) + 16) length])
  {
    v7 = [*(*(a1 + 32) + 16) copy];
    [v6 setObject:v7 forKeyedSubscript:@"homeType"];
  }

  if ([*(*(a1 + 32) + 24) length])
  {
    v8 = [*(*(a1 + 32) + 24) copy];
    [v6 setObject:v8 forKeyedSubscript:@"lockType"];
  }

  if ([*(*(a1 + 32) + 32) length])
  {
    v9 = [*(*(a1 + 32) + 32) copy];
    [v6 setObject:v9 forKeyedSubscript:@"homeName"];
  }

  if ([*(*(a1 + 32) + 40) length])
  {
    v10 = [*(*(a1 + 32) + 40) copy];
    [v6 setObject:v10 forKeyedSubscript:@"lockName"];
  }

  return v6;
}

@end