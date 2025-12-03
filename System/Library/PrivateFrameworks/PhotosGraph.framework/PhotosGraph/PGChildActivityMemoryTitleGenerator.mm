@interface PGChildActivityMemoryTitleGenerator
- (BOOL)_shouldIncludeChildNameForActivityLabels:(id)labels;
- (PGChildActivityMemoryTitleGenerator)initWithMomentNodes:(id)nodes activityLabels:(id)labels childName:(id)name titleGenerationContext:(id)context loggingConnection:(id)connection;
- (void)_generateTitleAndSubtitleWithResult:(id)result;
@end

@implementation PGChildActivityMemoryTitleGenerator

- (BOOL)_shouldIncludeChildNameForActivityLabels:(id)labels
{
  v3 = MEMORY[0x277CBEB98];
  labelsCopy = labels;
  v5 = [[v3 alloc] initWithObjects:{@"PersonActionJumpingOrLeaping", @"PersonActionRunningOrJogging", 0}];
  v6 = [v5 intersectsSet:labelsCopy];

  return v6 ^ 1;
}

- (void)_generateTitleAndSubtitleWithResult:(id)result
{
  v28 = *MEMORY[0x277D85DE8];
  resultCopy = result;
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
    anyObject = [(NSSet *)self->_activityLabels anyObject];
    v5 = [v19 stringWithFormat:@"PGChildActivityMemoryTitle%@", anyObject];

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
      momentNodes = [(PGTitleGenerator *)self momentNodes];
      [(PGTimeTitleOptions *)v13 setMomentNodes:momentNodes];

      [(PGTimeTitleOptions *)v13 setAllowedFormats:20];
      featuredYearNodes = [(PGTitleGenerator *)self featuredYearNodes];
      [(PGTimeTitleOptions *)v13 setFeaturedYearNodes:featuredYearNodes];

      v16 = [PGTimeTitleUtility timeTitleWithOptions:v13];
      v17 = [PGTitle titleWithString:v16 category:5];
      resultCopy[2](resultCopy, v12, v17);

      goto LABEL_14;
    }
  }

  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
  {
    activityLabels = self->_activityLabels;
    v23 = loggingConnection;
    allObjects = [(NSSet *)activityLabels allObjects];
    *buf = 138412290;
    v27 = allObjects;
    _os_log_error_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_ERROR, "[PGChildActivityMemoryTitleGenerator] Invalid Combination:%@", buf, 0xCu);
  }

  resultCopy[2](resultCopy, 0, 0);
LABEL_14:

  v18 = *MEMORY[0x277D85DE8];
}

- (PGChildActivityMemoryTitleGenerator)initWithMomentNodes:(id)nodes activityLabels:(id)labels childName:(id)name titleGenerationContext:(id)context loggingConnection:(id)connection
{
  labelsCopy = labels;
  nameCopy = name;
  connectionCopy = connection;
  v19.receiver = self;
  v19.super_class = PGChildActivityMemoryTitleGenerator;
  v16 = [(PGTitleGenerator *)&v19 initWithMomentNodes:nodes type:0 titleGenerationContext:context];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_activityLabels, labels);
    objc_storeStrong(&v17->_childName, name);
    objc_storeStrong(&v17->_loggingConnection, connection);
  }

  return v17;
}

@end