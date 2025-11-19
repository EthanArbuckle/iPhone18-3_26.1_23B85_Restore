@interface PGHolidayClassifier
- (BOOL)isCelebratingForDateScore:(double)a3 sceneScore:(double)a4 locationScore:(double)a5;
- (PGHolidayClassifier)init;
- (double)scoreForHolidayDetectedScenes:(id)a3;
- (id)description;
@end

@implementation PGHolidayClassifier

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v7.receiver = self;
  v7.super_class = PGHolidayClassifier;
  v4 = [(PGHolidayClassifier *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@\n", v4];

  [v5 appendFormat:@" %@: %f\n", @"LocationWeight", *&self->_locationWeight];
  [v5 appendFormat:@" %@: %f\n", @"DateWeight", *&self->_dateWeight];
  [v5 appendFormat:@" %@: %f\n", @"SceneWeight", *&self->_sceneWeight];
  [v5 appendFormat:@" %@: %f\n", @"LocaleLocationWeight", *&self->_localeLocationWeight];
  [v5 appendFormat:@" %@: %f\n", @"MomentLocationWeight", *&self->_momentLocationWeight];
  [v5 appendFormat:@" %@: %f\n", @"EdgeCaseSceneWeight", *&self->_edgeCaseSceneWeight];
  [v5 appendFormat:@" %@: %f\n", @"MediumSceneWeight", *&self->_mediumSceneWeight];
  [v5 appendFormat:@" %@: %f\n", @"ImportantSceneWeight", *&self->_importantSceneWeight];
  [v5 appendFormat:@" %@: %f\n", @"ImperativeSceneWeight", *&self->_imperativeSceneWeight];
  [v5 appendFormat:@" %@: %f\n", @"CelebrationThreshold", *&self->_celebrationThreshold];

  return v5;
}

- (double)scoreForHolidayDetectedScenes:(id)a3
{
  v4 = a3;
  v5 = [v4 detectedSceneEdgeCaseCount];
  edgeCaseSceneWeight = self->_edgeCaseSceneWeight;
  v7 = self->_mediumSceneWeight * [v4 detectedSceneMediumCount] + v5 * edgeCaseSceneWeight;
  v8 = v7 + [v4 detectedSceneImportantCount] * self->_importantSceneWeight;
  v9 = [v4 detectedSceneImperativeCount];

  result = v8 + v9 * self->_imperativeSceneWeight;
  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

- (BOOL)isCelebratingForDateScore:(double)a3 sceneScore:(double)a4 locationScore:(double)a5
{
  v11 = *MEMORY[0x277D85DE8];
  if (a3 == 0.0)
  {
    result = 0;
  }

  else
  {
    v7 = self->_dateWeight * a3 + self->_locationWeight * a5 + self->_sceneWeight * a4;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v9 = 134217984;
      v10 = v7;
      _os_log_debug_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "[HolidayProcessor] celebrationScore: %f", &v9, 0xCu);
    }

    result = v7 > self->_celebrationThreshold;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (PGHolidayClassifier)init
{
  v15.receiver = self;
  v15.super_class = PGHolidayClassifier;
  v2 = [(PGHolidayClassifier *)&v15 init];
  if (v2)
  {
    v3 = [[PGRemoteConfiguration alloc] initWithTrialNamespace:5 onDiskResourceFile:0];
    [(PGRemoteConfiguration *)v3 doubleValueForKey:@"LocationWeight" withFallbackValue:0.25];
    v2->_locationWeight = v4;
    [(PGRemoteConfiguration *)v3 doubleValueForKey:@"DateWeight" withFallbackValue:0.15];
    v2->_dateWeight = v5;
    [(PGRemoteConfiguration *)v3 doubleValueForKey:@"SceneWeight" withFallbackValue:0.6];
    v2->_sceneWeight = v6;
    [(PGRemoteConfiguration *)v3 doubleValueForKey:@"LocaleLocationWeight" withFallbackValue:0.4];
    v2->_localeLocationWeight = v7;
    [(PGRemoteConfiguration *)v3 doubleValueForKey:@"MomentLocationWeight" withFallbackValue:0.6];
    v2->_momentLocationWeight = v8;
    [(PGRemoteConfiguration *)v3 doubleValueForKey:@"EdgeCaseSceneWeight" withFallbackValue:0.3];
    v2->_edgeCaseSceneWeight = v9;
    [(PGRemoteConfiguration *)v3 doubleValueForKey:@"MediumSceneWeight" withFallbackValue:0.4];
    v2->_mediumSceneWeight = v10;
    [(PGRemoteConfiguration *)v3 doubleValueForKey:@"ImportantSceneWeight" withFallbackValue:0.6];
    v2->_importantSceneWeight = v11;
    [(PGRemoteConfiguration *)v3 doubleValueForKey:@"ImperativeSceneWeight" withFallbackValue:1.0];
    v2->_imperativeSceneWeight = v12;
    [(PGRemoteConfiguration *)v3 doubleValueForKey:@"CelebrationThreshold" withFallbackValue:0.8];
    v2->_celebrationThreshold = v13;
  }

  return v2;
}

@end