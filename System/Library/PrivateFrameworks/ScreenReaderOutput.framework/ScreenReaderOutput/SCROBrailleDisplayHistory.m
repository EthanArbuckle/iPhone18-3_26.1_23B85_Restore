@interface SCROBrailleDisplayHistory
+ (void)initialize;
- (BOOL)_moveIndexBy:(int64_t)a3;
- (SCROBrailleDisplayHistory)init;
- (id)currentString;
- (void)addString:(id)a3;
- (void)dealloc;
- (void)markSnapshotAsRead;
- (void)snapshotUnread;
@end

@implementation SCROBrailleDisplayHistory

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == a1)
  {
    v4 = objc_alloc(MEMORY[0x277CBEAC0]);
    v12 = [v4 initWithObjectsAndKeys:{MEMORY[0x277CBEC38], kSCROHistoryAttribute, MEMORY[0x277CBEC28], kSCROUnreadAttribute, 0}];
    v5 = objc_alloc(MEMORY[0x277CCA898]);
    v6 = MEMORY[0x277CCA8D8];
    v7 = objc_opt_self();
    v8 = [v6 bundleForClass:v7];
    v9 = [v8 localizedStringForKey:@"noAnnouncements" value:&stru_28763D5C8 table:@"Server"];
    v10 = [v5 initWithString:v9 attributes:v12];
    v11 = _NoAnnouncementString;
    _NoAnnouncementString = v10;
  }
}

- (SCROBrailleDisplayHistory)init
{
  v6.receiver = self;
  v6.super_class = SCROBrailleDisplayHistory;
  v2 = [(SCROBrailleDisplayHistory *)&v6 init];
  if (v2)
  {
    v3 = *MEMORY[0x277CBECE8];
    v4 = MEMORY[0x277CBF128];
    v2->_announcements = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    v2->_unreadSnapshot = CFArrayCreateMutable(v3, 0, v4);
    v2->_currentIndex = -1;
  }

  return v2;
}

- (void)dealloc
{
  CFRelease(self->_announcements);
  self->_announcements = 0;
  CFRelease(self->_unreadSnapshot);
  self->_unreadSnapshot = 0;
  v3.receiver = self;
  v3.super_class = SCROBrailleDisplayHistory;
  [(SCROBrailleDisplayHistory *)&v3 dealloc];
}

- (void)addString:(id)a3
{
  value = [a3 mutableCopy];
  if ([value length])
  {
    [value removeAttribute:kSCROAlertAttribute[0] range:{0, 1}];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@" "];
    [value appendAttributedString:v4];
  }

  v5 = MEMORY[0x277CBEC38];
  [value addAttribute:kSCROHistoryAttribute value:MEMORY[0x277CBEC38] range:{0, 1}];
  [value addAttribute:kSCROUnreadAttribute value:v5 range:{0, 1}];
  CFArrayAppendValue(self->_announcements, value);
  if (self->_currentIndex < 0)
  {
    self->_currentIndex = 0;
  }

  ++self->_unreadCount;
  if (CFArrayGetCount(self->_announcements) >= 11)
  {
    do
    {
      v6 = CFArrayGetValueAtIndex(self->_announcements, 0);
      if (SCROBrailleDisplayHistoryIsStringUnread(v6))
      {
        --self->_unreadCount;
      }

      CFArrayRemoveValueAtIndex(self->_announcements, 0);
      currentIndex = self->_currentIndex;
      v8 = currentIndex < 1;
      v9 = currentIndex - 1;
      if (!v8)
      {
        self->_currentIndex = v9;
      }
    }

    while (CFArrayGetCount(self->_announcements) > 10);
  }
}

- (void)snapshotUnread
{
  CFArrayRemoveAllValues(self->_unreadSnapshot);
  Count = CFArrayGetCount(self->_announcements);
  if (Count >= 1)
  {
    v4 = Count + 1;
    while (1)
    {
      value = CFArrayGetValueAtIndex(self->_announcements, v4 - 2);
      if (!SCROBrailleDisplayHistoryIsStringUnread(value))
      {
        break;
      }

      CFArrayAppendValue(self->_unreadSnapshot, value);

      if (--v4 <= 1)
      {
        return;
      }
    }
  }
}

- (void)markSnapshotAsRead
{
  Count = CFArrayGetCount(self->_unreadSnapshot);
  if (Count >= 1)
  {
    v4 = Count;
    for (i = 0; i != v4; ++i)
    {
      v6 = CFArrayGetValueAtIndex(self->_unreadSnapshot, i);
      if (SCROBrailleDisplayHistoryIsStringUnread(v6))
      {
        [v6 removeAttribute:kSCROUnreadAttribute range:{0, 1}];
        --self->_unreadCount;
      }
    }
  }

  unreadSnapshot = self->_unreadSnapshot;

  CFArrayRemoveAllValues(unreadSnapshot);
}

- (id)currentString
{
  currentIndex = self->_currentIndex;
  if (currentIndex < 0 || (CFArrayGetValueAtIndex(self->_announcements, currentIndex), (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = _NoAnnouncementString;
  }

  else
  {
    v5 = v4;
    Count = CFArrayGetCount(self->_announcements);
    v7 = [objc_alloc(MEMORY[0x277CCAB48]) initWithAttributedString:v5];
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%ld ", Count - self->_currentIndex];
    [v7 replaceCharactersInRange:0 withString:{0, v8}];
    v9 = [v7 copy];
  }

  return v9;
}

- (BOOL)_moveIndexBy:(int64_t)a3
{
  currentIndex = self->_currentIndex;
  Count = CFArrayGetCount(self->_announcements);
  v7 = Count - 1;
  if (Count < 1)
  {
    return 0;
  }

  v8 = self->_currentIndex;
  if (v8 + a3 < Count)
  {
    v7 = v8 + a3;
  }

  if (v8 + a3 < 0)
  {
    v7 = 0;
  }

  if (v7 == v8)
  {
    return 0;
  }

  self->_currentIndex = v7;
  v10 = CFArrayGetValueAtIndex(self->_announcements, currentIndex);
  if (SCROBrailleDisplayHistoryIsStringUnread(v10))
  {
    [v10 removeAttribute:kSCROUnreadAttribute range:{0, 1}];
    --self->_unreadCount;
  }

  return 1;
}

@end