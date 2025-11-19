@interface PGChildActivityMemoryTitleGenerator
- (BOOL)_shouldIncludeChildNameForActivityLabels:(id)a3;
- (PGChildActivityMemoryTitleGenerator)initWithMomentNodes:(id)a3 activityLabels:(id)a4 childName:(id)a5 titleGenerationContext:(id)a6 loggingConnection:(id)a7;
- (void)_generateTitleAndSubtitleWithResult:(id)a3;
@end

@implementation PGChildActivityMemoryTitleGenerator

- (BOOL)_shouldIncludeChildNameForActivityLabels:(id)a3
{
  v3 = MEMORY[0x277CBEB98];
  v4 = a3;
  v5 = [[v3 alloc] initWithObjects:{@"PersonActionJumpingOrLeaping", @"PersonActionRunningOrJogging", 0}];
  v6 = [v5 intersectsSet:v4];

  return v6 ^ 1;
}

- (void)_generateTitleAndSubtitleWithResult:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(NSSet *)self->_activityLabels containsObject:@"PersonActionPlayingOnASwing"]&& [(NSSet *)self->_activityLabels containsObject:@"PersonActionPlayingOnASlide"])
  {
    v5 = @"PGChildActivityMemoryTitlePersonActionSwingsAndSlide";
    goto LABEL_7;
  }

  if ([(NSSet *)self->_activityLabels containsObject:@"PersonActionHugging"]|| [(NSSet *)self->_activityLabels containsObject:@"PersonActionKissing"])
  {
    v5 = @"PGChildActivityMemoryTitlePersonActionSweetMoments";
    goto LABEL_7;
  }

  if ([(NSSet *)self->_activityLabels count]== 1)
  {
    v19 = MEMORY[0x277CCACA8];
    v20 = [(NSSet *)self->_activityLabels anyObject];
    v5 = [v19 stringWithFormat:@"PGChildActivityMemoryTitle%@", v20];

    if (v5)
    {
LABEL_7:
      v6 = [(PGChildActivityMemoryTitleGenerator *)self _shouldIncludeChildNameForActivityLabels:self->_activityLabels];
      if ([(NSString *)self->_childName length])
      {
        v7 = !v6;
      }

      else
      {
        v7 = 1;
      }

      if (v7)
      {
        v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v11 = [v9 localizedStringForKey:v5 value:v5 table:@"Localizable"];
      }

      else
      {
        v8 = [(__CFString *)v5 stringByAppendingString:@" %@"];

        v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v10 = [v9 localizedStringForKey:v8 value:v8 table:@"Localizable"];
        childName = self->_childName;
        v11 = PFStringWithValidatedFormat();

        v5 = v8;
      }

      v12 = [PGTitle titleWithString:v11 category:1];
      v13 = objc_alloc_init(PGTimeTitleOptions);
      v14 = [(PGTitleGenerator *)self momentNodes];
      [(PGTimeTitleOptions *)v13 setMomentNodes:v14];

      [(PGTimeTitleOptions *)v13 setAllowedFormats:20];
      v15 = [(PGTitleGenerator *)self featuredYearNodes];
      [(PGTimeTitleOptions *)v13 setFeaturedYearNodes:v15];

      v16 = [PGTimeTitleUtility timeTitleWithOptions:v13];
      v17 = [PGTitle titleWithString:v16 category:5];
      v4[2](v4, v12, v17);

      goto LABEL_14;
    }
  }

  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
  {
    activityLabels = self->_activityLabels;
    v23 = loggingConnection;
    v24 = [(NSSet *)activityLabels allObjects];
    *buf = 138412290;
    v27 = v24;
    _os_log_error_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_ERROR, "[PGChildActivityMemoryTitleGenerator] Invalid Combination:%@", buf, 0xCu);
  }

  v4[2](v4, 0, 0);
LABEL_14:

  v18 = *MEMORY[0x277D85DE8];
}

- (PGChildActivityMemoryTitleGenerator)initWithMomentNodes:(id)a3 activityLabels:(id)a4 childName:(id)a5 titleGenerationContext:(id)a6 loggingConnection:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = PGChildActivityMemoryTitleGenerator;
  v16 = [(PGTitleGenerator *)&v19 initWithMomentNodes:a3 type:0 titleGenerationContext:a6];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_activityLabels, a4);
    objc_storeStrong(&v17->_childName, a5);
    objc_storeStrong(&v17->_loggingConnection, a7);
  }

  return v17;
}

@end