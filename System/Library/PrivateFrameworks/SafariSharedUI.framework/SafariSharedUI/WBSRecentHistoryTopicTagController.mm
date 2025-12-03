@interface WBSRecentHistoryTopicTagController
- (WBSRecentHistoryTopicTagController)initWithHistory:(id)history;
- (void)loadTopicsWithCompletionHandler:(id)handler;
@end

@implementation WBSRecentHistoryTopicTagController

- (WBSRecentHistoryTopicTagController)initWithHistory:(id)history
{
  historyCopy = history;
  v10.receiver = self;
  v10.super_class = WBSRecentHistoryTopicTagController;
  v6 = [(WBSRecentHistoryTopicTagController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_history, history);
    v7->_timeIntervalBeforeNowForFetchingTags = 604800.0;
    v8 = v7;
  }

  return v7;
}

- (void)loadTopicsWithCompletionHandler:(id)handler
{
  history = self->_history;
  v5 = MEMORY[0x1E695DF00];
  v6 = -self->_timeIntervalBeforeNowForFetchingTags;
  handlerCopy = handler;
  v9 = [v5 dateWithTimeIntervalSinceNow:v6];
  date = [MEMORY[0x1E695DF00] date];
  [(WBSHistory *)history fetchTopicsFromStartDate:v9 toEndDate:date limit:self->_maximumNumberOfTopics minimumItemCount:1 sortOrder:2 completionHandler:handlerCopy];
}

@end