@interface WBSBookmarkAndHistoryCompletionMatch
- (BOOL)containsBookmark;
- (BOOL)containsReadingListItem;
- (BOOL)matchesAutocompleteTrigger;
- (BOOL)onlyContainsCloudTab;
- (WBSBookmarkAndHistoryCompletionMatch)initWithBookmarkAndHistoryCompletionMatch:(void *)match userInput:(id)input forQueryID:(int64_t)d;
- (double)lastVisitTimeInterval;
- (id)cloudTabDeviceName;
- (id)parsecDomainIdentifier;
@end

@implementation WBSBookmarkAndHistoryCompletionMatch

- (WBSBookmarkAndHistoryCompletionMatch)initWithBookmarkAndHistoryCompletionMatch:(void *)match userInput:(id)input forQueryID:(int64_t)d
{
  inputCopy = input;
  v9 = *(*match + 8);
  v13.receiver = self;
  v13.super_class = WBSBookmarkAndHistoryCompletionMatch;
  v10 = [(WBSURLCompletionMatch *)&v13 initWithMatchLocation:v9 userInput:inputCopy forQueryID:d];
  if (v10)
  {
    v12 = SafariShared::BookmarkAndHistoryCompletionMatch::data(*match);
    -[WBSBookmarkAndHistoryCompletionMatch initWithBookmarkAndHistoryCompletionMatch:userInput:forQueryID:].cold.1(v10, [v12 isSynthesized], v12, match);
  }

  return v10;
}

- (BOOL)matchesAutocompleteTrigger
{
  data = [(WBSBookmarkAndHistoryCompletionMatch *)self data];
  userInput = [(WBSURLCompletionMatch *)self userInput];
  v5 = [data matchesAutocompleteTrigger:userInput isStrengthened:0];

  return v5;
}

- (BOOL)containsBookmark
{
  v2 = SafariShared::BookmarkAndHistoryCompletionMatch::data(self->_match.m_ptr);
  containsBookmark = [v2 containsBookmark];

  return containsBookmark;
}

- (BOOL)containsReadingListItem
{
  v2 = SafariShared::BookmarkAndHistoryCompletionMatch::data(self->_match.m_ptr);
  if (objc_opt_respondsToSelector())
  {
    containsReadingListItem = [v2 containsReadingListItem];
  }

  else
  {
    containsReadingListItem = 0;
  }

  return containsReadingListItem;
}

- (BOOL)onlyContainsCloudTab
{
  v2 = SafariShared::BookmarkAndHistoryCompletionMatch::data(self->_match.m_ptr);
  if (objc_opt_respondsToSelector())
  {
    onlyContainsCloudTab = [v2 onlyContainsCloudTab];
  }

  else
  {
    onlyContainsCloudTab = 0;
  }

  return onlyContainsCloudTab;
}

- (id)cloudTabDeviceName
{
  v2 = SafariShared::BookmarkAndHistoryCompletionMatch::data(self->_match.m_ptr);
  if (objc_opt_respondsToSelector())
  {
    cloudTabDeviceName = [v2 cloudTabDeviceName];
  }

  else
  {
    cloudTabDeviceName = 0;
  }

  return cloudTabDeviceName;
}

- (double)lastVisitTimeInterval
{
  v2 = SafariShared::BookmarkAndHistoryCompletionMatch::data(self->_match.m_ptr);
  [v2 lastVisitedTimeInterval];
  v4 = v3;

  return v4;
}

- (id)parsecDomainIdentifier
{
  data = [(WBSBookmarkAndHistoryCompletionMatch *)self data];
  containsBookmark = [data containsBookmark];
  v4 = WBSParsecDomainSafariBookmark;
  if (!containsBookmark)
  {
    v4 = WBSParsecDomainSafariHistory;
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

- (id)initWithBookmarkAndHistoryCompletionMatch:(void *)a3 userInput:(uint64_t *)a4 forQueryID:.cold.1(uint64_t a1, char a2, void *a3, uint64_t *a4)
{
  *(a1 + 72) = a2;

  v5 = *a4;
  *a4 = 0;
  v6 = *(a1 + 64);
  *(a1 + 64) = v5;
  if (v6)
  {
    WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v6);
  }

  return a1;
}

@end