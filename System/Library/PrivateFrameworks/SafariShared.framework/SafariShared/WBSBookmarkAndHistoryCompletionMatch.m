@interface WBSBookmarkAndHistoryCompletionMatch
- (BOOL)containsBookmark;
- (BOOL)containsReadingListItem;
- (BOOL)matchesAutocompleteTrigger;
- (BOOL)onlyContainsCloudTab;
- (WBSBookmarkAndHistoryCompletionMatch)initWithBookmarkAndHistoryCompletionMatch:(void *)a3 userInput:(id)a4 forQueryID:(int64_t)a5;
- (double)lastVisitTimeInterval;
- (id)cloudTabDeviceName;
- (id)parsecDomainIdentifier;
@end

@implementation WBSBookmarkAndHistoryCompletionMatch

- (WBSBookmarkAndHistoryCompletionMatch)initWithBookmarkAndHistoryCompletionMatch:(void *)a3 userInput:(id)a4 forQueryID:(int64_t)a5
{
  v8 = a4;
  v9 = *(*a3 + 8);
  v13.receiver = self;
  v13.super_class = WBSBookmarkAndHistoryCompletionMatch;
  v10 = [(WBSURLCompletionMatch *)&v13 initWithMatchLocation:v9 userInput:v8 forQueryID:a5];
  if (v10)
  {
    v12 = SafariShared::BookmarkAndHistoryCompletionMatch::data(*a3);
    -[WBSBookmarkAndHistoryCompletionMatch initWithBookmarkAndHistoryCompletionMatch:userInput:forQueryID:].cold.1(v10, [v12 isSynthesized], v12, a3);
  }

  return v10;
}

- (BOOL)matchesAutocompleteTrigger
{
  v3 = [(WBSBookmarkAndHistoryCompletionMatch *)self data];
  v4 = [(WBSURLCompletionMatch *)self userInput];
  v5 = [v3 matchesAutocompleteTrigger:v4 isStrengthened:0];

  return v5;
}

- (BOOL)containsBookmark
{
  v2 = SafariShared::BookmarkAndHistoryCompletionMatch::data(self->_match.m_ptr);
  v3 = [v2 containsBookmark];

  return v3;
}

- (BOOL)containsReadingListItem
{
  v2 = SafariShared::BookmarkAndHistoryCompletionMatch::data(self->_match.m_ptr);
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 containsReadingListItem];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)onlyContainsCloudTab
{
  v2 = SafariShared::BookmarkAndHistoryCompletionMatch::data(self->_match.m_ptr);
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 onlyContainsCloudTab];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)cloudTabDeviceName
{
  v2 = SafariShared::BookmarkAndHistoryCompletionMatch::data(self->_match.m_ptr);
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 cloudTabDeviceName];
  }

  else
  {
    v3 = 0;
  }

  return v3;
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
  v2 = [(WBSBookmarkAndHistoryCompletionMatch *)self data];
  v3 = [v2 containsBookmark];
  v4 = WBSParsecDomainSafariBookmark;
  if (!v3)
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