@interface _REMAppStoreReviewCloudConfigurationStorage
- (_REMAppStoreReviewCloudConfigurationStorage)initWithCreatedOrCompletedRemindersCountThreshold:(unint64_t)a3 numberOfForegroundsThreshold:(unint64_t)a4 timeIntervalOfInterest:(double)a5 timeIntervalSinceInitialForeground:(double)a6 timeIntervalSinceLastFetch:(double)a7 timeIntervalSinceLastPrompt:(double)a8;
@end

@implementation _REMAppStoreReviewCloudConfigurationStorage

- (_REMAppStoreReviewCloudConfigurationStorage)initWithCreatedOrCompletedRemindersCountThreshold:(unint64_t)a3 numberOfForegroundsThreshold:(unint64_t)a4 timeIntervalOfInterest:(double)a5 timeIntervalSinceInitialForeground:(double)a6 timeIntervalSinceLastFetch:(double)a7 timeIntervalSinceLastPrompt:(double)a8
{
  v15.receiver = self;
  v15.super_class = _REMAppStoreReviewCloudConfigurationStorage;
  result = [(_REMAppStoreReviewCloudConfigurationStorage *)&v15 init];
  if (result)
  {
    result->_appStoreReviewCreatedOrCompletedRemindersCountThreshold = a3;
    result->_appStoreReviewNumberOfForegroundsThreshold = a4;
    result->_appStoreReviewTimeIntervalOfInterest = a5;
    result->_appStoreReviewTimeIntervalSinceInitialForeground = a6;
    result->_appStoreReviewTimeIntervalSinceLastPrompt = a8;
    result->_appStoreReviewTimeIntervalSinceLastFetch = a7;
  }

  return result;
}

@end