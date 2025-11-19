@interface WBSRecentHistoryTopicTagController
- (WBSRecentHistoryTopicTagController)initWithHistory:(id)a3;
- (void)loadTopicsWithCompletionHandler:(id)a3;
@end

@implementation WBSRecentHistoryTopicTagController

- (WBSRecentHistoryTopicTagController)initWithHistory:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WBSRecentHistoryTopicTagController;
  v6 = [(WBSRecentHistoryTopicTagController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_history, a3);
    v7->_timeIntervalBeforeNowForFetchingTags = 604800.0;
    v8 = v7;
  }

  return v7;
}

- (void)loadTopicsWithCompletionHandler:(id)a3
{
  history = self->_history;
  v5 = MEMORY[0x1E695DF00];
  v6 = -self->_timeIntervalBeforeNowForFetchingTags;
  v7 = a3;
  v9 = [v5 dateWithTimeIntervalSinceNow:v6];
  v8 = [MEMORY[0x1E695DF00] date];
  [(WBSHistory *)history fetchTopicsFromStartDate:v9 toEndDate:v8 limit:self->_maximumNumberOfTopics minimumItemCount:1 sortOrder:2 completionHandler:v7];
}

@end