@interface _UIStatistics
+ (id)_sharedStatisticWithDomain:(id)a3 statisticsClass:(Class)a4 identifierReporting:(int64_t)a5;
+ (id)controlInteractionDurationDistributionWithCategory:(id)a3 suffix:(id)a4;
+ (id)controlTapCountWithCategory:(id)a3 suffix:(id)a4;
+ (id)controlValueChangeEmittedCountWithCategory:(id)a3 suffix:(id)a4;
+ (id)coverSheetButtonFirstActivationDurationWithCategory:(id)a3;
+ (id)coverSheetButtonInteractionCountWithActivation:(BOOL)a3 category:(id)a4;
+ (id)coverSheetButtonInteractionDurationWithCategory:(id)a3;
+ (id)coverSheetButtonMaximumForceWithActivation:(BOOL)a3 category:(id)a4;
+ (id)feedbackEngineActivationCountWithSuffix:(id)a3;
+ (id)feedbackEngineActivationDurationWithSuffix:(id)a3;
+ (id)feedbackEngineOutOfChannelsCountWithSuffix:(id)a3;
+ (id)feedbackEnginePrewarmCountWithSuffix:(id)a3;
+ (id)feedbackEnginePrewarmDurationWithSuffix:(id)a3;
+ (id)feedbackGeneratorActivationCountWithSuffix:(id)a3;
+ (id)feedbackGeneratorActivationDurationWithSuffix:(id)a3;
+ (id)feedbackGeneratorActivationTimeOutCountWithSuffix:(id)a3;
+ (id)feedbackGeneratorPlayCountWithSuffix:(id)a3;
+ (id)feedbackGeneratorPreparationCountWithSuffix:(id)a3;
+ (id)maxForce;
+ (id)pinchGestureCount;
+ (id)previewInteractionAlertPresentationCount;
+ (id)previewInteractionPeekCount;
+ (id)previewInteractionPeekDuration;
+ (id)previewInteractionPeekForce;
+ (id)previewInteractionPopCount;
+ (id)previewInteractionPopForce;
+ (id)previewInteractionTapCount;
+ (id)recentsInputViewItemSelectedCount;
+ (id)recentsInputViewNewEntryCount;
+ (id)recentsInputViewNumberOfItems;
+ (id)recentsInputViewPresentationCount;
+ (id)scrollBounceCount;
+ (id)scrubberUsageCount;
+ (id)scrubberUsageTime;
+ (id)zoomGestureCount;
- (BOOL)_shouldSample;
- (_UIStatistics)init;
- (_UIStatistics)initWithDomain:(id)a3 identifierReporting:(int64_t)a4;
- (id)description;
- (void)_addChildStatistic:(id)a3;
- (void)_incrementValueBy:(int64_t)a3;
- (void)_recordDistributionTime:(unint64_t)a3;
- (void)_recordDistributionValue:(double)a3;
- (void)_removeChildStatistic:(id)a3;
- (void)_resetDistribution;
- (void)_resetDistributionToValue:(double)a3;
- (void)_resetValue;
- (void)_setValue:(int64_t)a3;
@end

@implementation _UIStatistics

- (BOOL)_shouldSample
{
  v2 = self->_sampleRate + self->_sampleValue;
  v3 = v2 >= 1.0;
  v4 = v2 - trunc(v2);
  if (v2 >= 1.0)
  {
    v2 = v4;
  }

  self->_sampleValue = v2;
  return v3;
}

+ (id)previewInteractionTapCount
{
  if (qword_1ED4A2810 != -1)
  {
    dispatch_once(&qword_1ED4A2810, &__block_literal_global_134_1);
  }

  v3 = qword_1ED4A2808;

  return v3;
}

+ (id)maxForce
{
  if (qword_1ED4A2850 != -1)
  {
    dispatch_once(&qword_1ED4A2850, &__block_literal_global_163_0);
  }

  v3 = qword_1ED4A2848;

  return v3;
}

- (_UIStatistics)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s should not be called", "-[_UIStatistics init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  [v6 raise];

  return 0;
}

- (_UIStatistics)initWithDomain:(id)a3 identifierReporting:(int64_t)a4
{
  v7 = a3;
  if (![v7 length])
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"_UIStatistics.m" lineNumber:93 description:@"You cannot construct a _UIStatistic instance with an empty or nil string"];
  }

  v17.receiver = self;
  v17.super_class = _UIStatistics;
  v8 = [(_UIStatistics *)&v17 init];
  if (v8)
  {
    v9 = _UIStatisticsBundleIdentifier(a4);
    v10 = [v9 length];
    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v10)
    {
      v12 = [v11 initWithFormat:@"com.apple.%@.%@", v7, v9];
    }

    else
    {
      v12 = [v11 initWithFormat:@"com.apple.%@", v7, v16];
    }

    key = v8->_key;
    v8->_key = v12;

    v8->_sampleRate = 1.0;
    v8->_sampleValue = 0.0;
  }

  return v8;
}

- (void)_addChildStatistic:(id)a3
{
  children = self->_children;
  if (children)
  {

    [(NSMutableSet *)children addObject:a3];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFA8] setWithObject:a3];
    v6 = self->_children;
    self->_children = v5;
  }
}

- (void)_removeChildStatistic:(id)a3
{
  v6 = a3;
  v4 = [(NSMutableSet *)self->_children count];
  children = self->_children;
  if (v4 > 1)
  {
    [(NSMutableSet *)children removeObject:v6];
  }

  else
  {
    self->_children = 0;
  }
}

- (void)_resetDistribution
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = +[_UIStatisticsIntegrator sharedInstance];
  [v3 resetDistributionForKey:self->_key];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = self->_children;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) _resetDistribution];
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_resetDistributionToValue:(double)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(_UIStatistics *)self _shouldSample])
  {
    v5 = +[_UIStatisticsIntegrator sharedInstance];
    [v5 resetDistributionToValue:self->_key forKey:a3];

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_children;
    v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * i) _resetDistributionToValue:{a3, v11}];
        }

        v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }

  else
  {

    [(_UIStatistics *)self _resetValue];
  }
}

- (void)_recordDistributionValue:(double)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(_UIStatistics *)self _shouldSample])
  {
    v5 = +[_UIStatisticsIntegrator sharedInstance];
    [v5 recordDistributionValue:self->_key forKey:a3];

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_children;
    v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) _recordDistributionValue:{a3, v11}];
        }

        while (v8 != v10);
        v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)_recordDistributionTime:(unint64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(_UIStatistics *)self _shouldSample])
  {
    v5 = +[_UIStatisticsIntegrator sharedInstance];
    [v5 recordDistributionTime:a3 forKey:self->_key];

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_children;
    v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) _recordDistributionTime:{a3, v11}];
        }

        while (v8 != v10);
        v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)_resetValue
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = +[_UIStatisticsIntegrator sharedInstance];
  [v3 resetValueForKey:self->_key];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = self->_children;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) _resetValue];
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_setValue:(int64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(_UIStatistics *)self _shouldSample])
  {
    v5 = +[_UIStatisticsIntegrator sharedInstance];
    [v5 setValue:a3 forKey:self->_key];

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_children;
    v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) _setValue:{a3, v11}];
        }

        while (v8 != v10);
        v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)_incrementValueBy:(int64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(_UIStatistics *)self _shouldSample])
  {
    v5 = +[_UIStatisticsIntegrator sharedInstance];
    [v5 incrementValueBy:a3 forKey:self->_key];

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_children;
    v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) _incrementValueBy:{a3, v11}];
        }

        while (v8 != v10);
        v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = _UIStatistics;
  v3 = [(_UIStatistics *)&v7 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@" key=%@", self->_key];
  sampleRate = self->_sampleRate;
  if (sampleRate < 1.0)
  {
    [v4 appendFormat:@" sampled (progress=%f, rate=%f)", *&self->_sampleValue, *&sampleRate];
  }

  return v4;
}

+ (id)previewInteractionPeekCount
{
  if (qword_1ED4A27E0 != -1)
  {
    dispatch_once(&qword_1ED4A27E0, &__block_literal_global_108);
  }

  v3 = qword_1ED4A27D8;

  return v3;
}

+ (id)previewInteractionPeekDuration
{
  if (qword_1ED4A27F0 != -1)
  {
    dispatch_once(&qword_1ED4A27F0, &__block_literal_global_117_3);
  }

  v3 = qword_1ED4A27E8;

  return v3;
}

+ (id)previewInteractionPopCount
{
  if (qword_1ED4A2800 != -1)
  {
    dispatch_once(&qword_1ED4A2800, &__block_literal_global_126_2);
  }

  v3 = qword_1ED4A27F8;

  return v3;
}

+ (id)previewInteractionAlertPresentationCount
{
  if (qword_1ED4A2820 != -1)
  {
    dispatch_once(&qword_1ED4A2820, &__block_literal_global_139_3);
  }

  v3 = qword_1ED4A2818;

  return v3;
}

+ (id)previewInteractionPeekForce
{
  if (qword_1ED4A2830 != -1)
  {
    dispatch_once(&qword_1ED4A2830, &__block_literal_global_147_1);
  }

  v3 = qword_1ED4A2828;

  return v3;
}

+ (id)previewInteractionPopForce
{
  if (qword_1ED4A2840 != -1)
  {
    dispatch_once(&qword_1ED4A2840, &__block_literal_global_155);
  }

  v3 = qword_1ED4A2838;

  return v3;
}

+ (id)scrubberUsageCount
{
  if (qword_1ED4A2860 != -1)
  {
    dispatch_once(&qword_1ED4A2860, &__block_literal_global_171_1);
  }

  v3 = qword_1ED4A2858;

  return v3;
}

+ (id)scrubberUsageTime
{
  if (qword_1ED4A2870 != -1)
  {
    dispatch_once(&qword_1ED4A2870, &__block_literal_global_176_0);
  }

  v3 = qword_1ED4A2868;

  return v3;
}

+ (id)controlTapCountWithCategory:(id)a3 suffix:(id)a4
{
  v4 = _domainWithCategoryAndSuffix(@"UIKit.eventCount.tap", a3, a4);
  v5 = [_UIStatistics _sharedStatisticWithDomain:v4 statisticsClass:objc_opt_class() identifierReporting:1];

  return v5;
}

+ (id)controlValueChangeEmittedCountWithCategory:(id)a3 suffix:(id)a4
{
  v4 = _domainWithCategoryAndSuffix(@"UIKit.eventCount.valueChange", a3, a4);
  v5 = [_UIStatistics _sharedStatisticWithDomain:v4 statisticsClass:objc_opt_class() identifierReporting:1];

  return v5;
}

+ (id)controlInteractionDurationDistributionWithCategory:(id)a3 suffix:(id)a4
{
  v4 = _domainWithCategoryAndSuffix(@"UIKit.interactionDistribution", a3, a4);
  v5 = [_UIStatistics _sharedStatisticWithDomain:v4 statisticsClass:objc_opt_class() identifierReporting:1];

  return v5;
}

+ (id)pinchGestureCount
{
  v2 = _domainWithCategoryAndSuffix(@"UIKit.eventCount", @"pinch", 0);
  v3 = [_UIStatistics _sharedStatisticWithDomain:v2 statisticsClass:objc_opt_class() identifierReporting:1];

  return v3;
}

+ (id)zoomGestureCount
{
  v2 = _domainWithCategoryAndSuffix(@"UIKit.eventCount", @"zoom", 0);
  v3 = [_UIStatistics _sharedStatisticWithDomain:v2 statisticsClass:objc_opt_class() identifierReporting:1];

  return v3;
}

+ (id)scrollBounceCount
{
  v2 = _domainWithCategoryAndSuffix(@"UIKit.eventCount", @"scrollBounce", 0);
  v3 = [_UIStatistics _sharedStatisticWithDomain:v2 statisticsClass:objc_opt_class() identifierReporting:1];

  return v3;
}

+ (id)feedbackEngineActivationCountWithSuffix:(id)a3
{
  v3 = _domainWithCategoryAndSuffix(@"UIKit.feedback", @"engineActivationCount", a3);
  v4 = [_UIStatistics _sharedStatisticWithDomain:v3 statisticsClass:objc_opt_class() identifierReporting:0];

  return v4;
}

+ (id)feedbackEngineActivationDurationWithSuffix:(id)a3
{
  v3 = _domainWithCategoryAndSuffix(@"UIKit.feedback", @"engineActivationDuration", a3);
  v4 = [_UIStatistics _sharedStatisticWithDomain:v3 statisticsClass:objc_opt_class() identifierReporting:0];

  return v4;
}

+ (id)feedbackEnginePrewarmCountWithSuffix:(id)a3
{
  v3 = _domainWithCategoryAndSuffix(@"UIKit.feedback", @"enginePrewarmCount", a3);
  v4 = [_UIStatistics _sharedStatisticWithDomain:v3 statisticsClass:objc_opt_class() identifierReporting:0];

  return v4;
}

+ (id)feedbackEnginePrewarmDurationWithSuffix:(id)a3
{
  v3 = _domainWithCategoryAndSuffix(@"UIKit.feedback", @"enginePrewarmDuration", a3);
  v4 = [_UIStatistics _sharedStatisticWithDomain:v3 statisticsClass:objc_opt_class() identifierReporting:0];

  return v4;
}

+ (id)feedbackEngineOutOfChannelsCountWithSuffix:(id)a3
{
  v3 = _domainWithCategoryAndSuffix(@"UIKit.feedback", @"engineOutOfChannelsCount", a3);
  v4 = [_UIStatistics _sharedStatisticWithDomain:v3 statisticsClass:objc_opt_class() identifierReporting:0];

  return v4;
}

+ (id)feedbackGeneratorActivationCountWithSuffix:(id)a3
{
  v3 = _domainWithCategoryAndSuffix(@"UIKit.feedback", @"behaviorActivationCount", a3);
  v4 = [_UIStatistics _sharedStatisticWithDomain:v3 statisticsClass:objc_opt_class() identifierReporting:0];

  return v4;
}

+ (id)feedbackGeneratorActivationDurationWithSuffix:(id)a3
{
  v3 = _domainWithCategoryAndSuffix(@"UIKit.feedback", @"behaviorActivationDuration", a3);
  v4 = [_UIStatistics _sharedStatisticWithDomain:v3 statisticsClass:objc_opt_class() identifierReporting:0];

  return v4;
}

+ (id)feedbackGeneratorActivationTimeOutCountWithSuffix:(id)a3
{
  v3 = _domainWithCategoryAndSuffix(@"UIKit.feedback", @"behaviorActivationTimeOutCount", a3);
  v4 = [_UIStatistics _sharedStatisticWithDomain:v3 statisticsClass:objc_opt_class() identifierReporting:0];

  return v4;
}

+ (id)feedbackGeneratorPreparationCountWithSuffix:(id)a3
{
  v3 = _domainWithCategoryAndSuffix(@"UIKit.feedback", @"behaviorPreparationCount", a3);
  v4 = [_UIStatistics _sharedStatisticWithDomain:v3 statisticsClass:objc_opt_class() identifierReporting:0];

  return v4;
}

+ (id)feedbackGeneratorPlayCountWithSuffix:(id)a3
{
  v3 = _domainWithCategoryAndSuffix(@"UIKit.feedback", @"behaviorPlayCount", a3);
  v4 = [_UIStatistics _sharedStatisticWithDomain:v3 statisticsClass:objc_opt_class() identifierReporting:0];

  return v4;
}

+ (id)recentsInputViewPresentationCount
{
  v2 = _domainWithCategoryAndSuffix(@"UIKit.recentsInputView", @"presentationCount", 0);
  v3 = [_UIStatistics _sharedStatisticWithDomain:v2 statisticsClass:objc_opt_class() identifierReporting:0];

  return v3;
}

+ (id)recentsInputViewNumberOfItems
{
  v2 = _domainWithCategoryAndSuffix(@"UIKit.recentsInputView", @"numberOfItems", 0);
  v3 = [_UIStatistics _sharedStatisticWithDomain:v2 statisticsClass:objc_opt_class() identifierReporting:0];

  return v3;
}

+ (id)recentsInputViewItemSelectedCount
{
  v2 = _domainWithCategoryAndSuffix(@"UIKit.recentsInputView", @"itemSelectedCount", 0);
  v3 = [_UIStatistics _sharedStatisticWithDomain:v2 statisticsClass:objc_opt_class() identifierReporting:0];

  return v3;
}

+ (id)recentsInputViewNewEntryCount
{
  v2 = _domainWithCategoryAndSuffix(@"UIKit.recentsInputView", @"newEntryCount", 0);
  v3 = [_UIStatistics _sharedStatisticWithDomain:v2 statisticsClass:objc_opt_class() identifierReporting:0];

  return v3;
}

+ (id)coverSheetButtonInteractionCountWithActivation:(BOOL)a3 category:(id)a4
{
  if (a3)
  {
    v4 = @"didActivate.count";
  }

  else
  {
    v4 = @"didNotActivate.count";
  }

  v5 = _domainWithCategoryAndSuffix(@"UIKit.coverSheetButton", a4, v4);
  v6 = [_UIStatistics _sharedStatisticWithDomain:v5 statisticsClass:objc_opt_class() identifierReporting:1];

  return v6;
}

+ (id)coverSheetButtonInteractionDurationWithCategory:(id)a3
{
  v3 = _domainWithCategoryAndSuffix(@"UIKit.coverSheetButton", a3, @"interactionDuration");
  v4 = [_UIStatistics _sharedStatisticWithDomain:v3 statisticsClass:objc_opt_class() identifierReporting:1];

  return v4;
}

+ (id)coverSheetButtonFirstActivationDurationWithCategory:(id)a3
{
  v3 = _domainWithCategoryAndSuffix(@"UIKit.coverSheetButton", a3, @"firstActivationDuration");
  v4 = [_UIStatistics _sharedStatisticWithDomain:v3 statisticsClass:objc_opt_class() identifierReporting:1];

  return v4;
}

+ (id)coverSheetButtonMaximumForceWithActivation:(BOOL)a3 category:(id)a4
{
  if (a3)
  {
    v4 = @"didActivate.maxForce";
  }

  else
  {
    v4 = @"didNotActivate.maxForce";
  }

  v5 = _domainWithCategoryAndSuffix(@"UIKit.coverSheetButton", a4, v4);
  v6 = [_UIStatistics _sharedStatisticWithDomain:v5 statisticsClass:objc_opt_class() identifierReporting:1];

  return v6;
}

+ (id)_sharedStatisticWithDomain:(id)a3 statisticsClass:(Class)a4 identifierReporting:(int64_t)a5
{
  v7 = a3;
  if (qword_1ED4A2878 != -1)
  {
    dispatch_once(&qword_1ED4A2878, &__block_literal_global_274_0);
  }

  v8 = [qword_1ED4A2880 valueForKey:v7];
  if (!v8)
  {
    v8 = [[a4 alloc] initWithDomain:v7 identifierReporting:a5];
    [qword_1ED4A2880 setObject:v8 forKey:v7];
  }

  return v8;
}

@end