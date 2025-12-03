@interface _REMAppStoreReviewCloudConfigurationStorage
- (_REMAppStoreReviewCloudConfigurationStorage)initWithCreatedOrCompletedRemindersCountThreshold:(unint64_t)threshold numberOfForegroundsThreshold:(unint64_t)foregroundsThreshold timeIntervalOfInterest:(double)interest timeIntervalSinceInitialForeground:(double)foreground timeIntervalSinceLastFetch:(double)fetch timeIntervalSinceLastPrompt:(double)prompt;
@end

@implementation _REMAppStoreReviewCloudConfigurationStorage

- (_REMAppStoreReviewCloudConfigurationStorage)initWithCreatedOrCompletedRemindersCountThreshold:(unint64_t)threshold numberOfForegroundsThreshold:(unint64_t)foregroundsThreshold timeIntervalOfInterest:(double)interest timeIntervalSinceInitialForeground:(double)foreground timeIntervalSinceLastFetch:(double)fetch timeIntervalSinceLastPrompt:(double)prompt
{
  v15.receiver = self;
  v15.super_class = _REMAppStoreReviewCloudConfigurationStorage;
  result = [(_REMAppStoreReviewCloudConfigurationStorage *)&v15 init];
  if (result)
  {
    result->_appStoreReviewCreatedOrCompletedRemindersCountThreshold = threshold;
    result->_appStoreReviewNumberOfForegroundsThreshold = foregroundsThreshold;
    result->_appStoreReviewTimeIntervalOfInterest = interest;
    result->_appStoreReviewTimeIntervalSinceInitialForeground = foreground;
    result->_appStoreReviewTimeIntervalSinceLastPrompt = prompt;
    result->_appStoreReviewTimeIntervalSinceLastFetch = fetch;
  }

  return result;
}

@end