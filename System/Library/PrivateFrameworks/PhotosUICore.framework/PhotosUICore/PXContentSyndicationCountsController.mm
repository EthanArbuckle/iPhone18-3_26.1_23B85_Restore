@interface PXContentSyndicationCountsController
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)detailedCounts;
- (NSString)savedCountDescription;
- (NSString)totalCountDescription;
- (PXContentSyndicationCountsController)init;
- (int64_t)savedCount;
- (void)performChanges:(id)a3;
- (void)setAssetCollection:(id)a3;
- (void)setDetailedCounts:(id *)a3;
- (void)setSavedCount:(int64_t)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
@end

@implementation PXContentSyndicationCountsController

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v5 = a4;
  v6 = NSStringFromSelector(sel_mockNumberOfAssetsSaved);
  if ([v5 isEqualToString:v6])
  {

LABEL_4:
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __68__PXContentSyndicationCountsController_settings_changedValueForKey___block_invoke;
    v9[3] = &unk_1E772F528;
    v9[4] = self;
    [(PXContentSyndicationCountsController *)self performChanges:v9];
    goto LABEL_5;
  }

  v7 = NSStringFromSelector(sel_footerMockType);
  v8 = [v5 isEqualToString:v7];

  if (v8)
  {
    goto LABEL_4;
  }

LABEL_5:
}

uint64_t __68__PXContentSyndicationCountsController_settings_changedValueForKey___block_invoke(uint64_t a1)
{
  [*(a1 + 32) signalChange:2];
  v2 = *(a1 + 32);

  return [v2 signalChange:1];
}

- (void)setSavedCount:(int64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_savedCount != a3)
  {
    v5 = PXContentSyndicationCountsControllerGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      if (a3 == -1)
      {
        v7 = @"-";
      }

      else
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%td", a3];
      }

      *buf = 138412802;
      v9 = v6;
      v10 = 2048;
      v11 = self;
      v12 = 2114;
      v13 = v7;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "<%@:%p> >>> Saved Count: %{public}@", buf, 0x20u);
    }

    self->_savedCount = a3;
    [(PXContentSyndicationCountsController *)self signalChange:1];
  }
}

- (int64_t)savedCount
{
  v2 = [(PXContentSyndicationCountsController *)self actualSavedCount];
  v3 = +[PXContentSyndicationSettings sharedInstance];
  if ([v3 mockNumberOfAssetsSaved])
  {
    v4 = [v3 footerMockType];
    if (v4 < 3)
    {
      v2 = v4;
    }
  }

  return v2;
}

- (void)setDetailedCounts:(id *)a3
{
  p_detailedCounts = &self->_detailedCounts;
  if (self->_detailedCounts.photosCount != a3->var0 || self->_detailedCounts.videosCount != a3->var1 || self->_detailedCounts.othersCount != a3->var2)
  {
    v8 = PXContentSyndicationCountsControllerGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      objc_opt_class();
      PXDisplayAssetDetailedCountsDescription();
    }

    v9 = *&a3->var0;
    p_detailedCounts->othersCount = a3->var2;
    *&p_detailedCounts->photosCount = v9;
    [(PXContentSyndicationCountsController *)self signalChange:2];
  }
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)detailedCounts
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  [(PXContentSyndicationCountsController *)self actualDetailedCounts];
  v5 = +[PXContentSyndicationSettings sharedInstance];
  if ([v5 mockNumberOfAssetsSaved])
  {
    retstr->var1 = 0;
    retstr->var2 = 0;
    retstr->var0 = 2;
  }

  return result;
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXContentSyndicationCountsController;
  [(PXContentSyndicationCountsController *)&v3 performChanges:a3];
}

- (NSString)savedCountDescription
{
  [(PXContentSyndicationCountsController *)self detailedCounts];
  v3 = [(PXContentSyndicationCountsController *)self savedCount];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL || *(&v12 + 1) == 0x7FFFFFFFFFFFFFFFLL || v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    if (v3 != -1)
    {
      v7 = *(&v12 + 1) + v12 + v13;
      if (v7)
      {
        if (v3)
        {
          if (v7 != v3)
          {
            v14 = v12;
            v15 = v13;
            PXLocalizedStringForDetailedCounts(&v14, @"PXContentSyndicationPhotosSavedTitleFormat", @"PXContentSyndicationVideosSavedTitleFormat", @"PXContentSyndicationItemsSavedTitleFormat");
            objc_claimAutoreleasedReturnValue();
            PXLocalizedStringWithValidatedFormat();
          }

          v14 = v12;
          v15 = v13;
          v8 = @"PXContentSyndicationPhotosSavedAllTitle";
          v9 = @"PXContentSyndicationVideosSavedAllTitle";
          v10 = @"PXContentSyndicationItemsSavedAllTitle";
        }

        else
        {
          v14 = v12;
          v15 = v13;
          v8 = @"PXContentSyndicationPhotosSavedNoneTitle";
          v9 = @"PXContentSyndicationVideosSavedNoneTitle";
          v10 = @"PXContentSyndicationItemsSavedNoneTitle";
        }

        v6 = PXLocalizedStringForDetailedCounts(&v14, v8, v9, v10);
      }
    }
  }

  return v6;
}

- (NSString)totalCountDescription
{
  [(PXContentSyndicationCountsController *)self detailedCounts];
  v3 = v6 == 0x7FFFFFFFFFFFFFFFLL || v7 == 0x7FFFFFFFFFFFFFFFLL || v8 == 0x7FFFFFFFFFFFFFFFLL;
  if (!v3 && v7 + v6 + v8)
  {
    v4 = PLLocalizedCountDescription();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAssetCollection:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationCountsController.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"assetCollection"}];
  }

  assetCollection = self->_assetCollection;
  if (assetCollection != v5 && ([(PXDisplayAssetCollection *)assetCollection isEqual:v5]& 1) == 0)
  {
    v7 = PXContentSyndicationCountsControllerGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = v5;
      v10 = [(PXDisplayAssetCollection *)v9 px_cheapLogIdentifier];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p>", objc_opt_class(), v9];
      }

      v13 = v12;

      *buf = 138412802;
      v18 = v8;
      v19 = 2048;
      v20 = self;
      v21 = 2114;
      v22 = v13;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "<%@:%p> Set Asset Collection: %{public}@", buf, 0x20u);
    }

    v14 = [(PXDisplayAssetCollection *)v5 copyWithZone:0];
    v15 = self->_assetCollection;
    self->_assetCollection = v14;

    [(PXContentSyndicationCountsController *)self didSetAssetCollection:v5];
  }
}

- (PXContentSyndicationCountsController)init
{
  v4 = objc_opt_class();
  if (v4 == objc_opt_class())
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationCountsController.m" lineNumber:44 description:{@"%s is not available as initializer", "-[PXContentSyndicationCountsController init]"}];

    abort();
  }

  v10.receiver = self;
  v10.super_class = PXContentSyndicationCountsController;
  v5 = [(PXContentSyndicationCountsController *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_savedCount = -1;
    v5->_detailedCounts.othersCount = *(off_1E7721F70 + 2);
    *&v5->_detailedCounts.photosCount = *off_1E7721F70;
    v7 = +[PXContentSyndicationSettings sharedInstance];
    [v7 addDeferredKeyObserver:v6];
  }

  return v6;
}

@end