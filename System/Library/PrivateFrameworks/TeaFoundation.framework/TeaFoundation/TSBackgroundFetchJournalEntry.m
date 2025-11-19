@interface TSBackgroundFetchJournalEntry
- (NSDate)date;
- (NSString)reason;
- (TSBackgroundFetchJournalEntry)initWithReason:(id)a3 date:(id)a4;
@end

@implementation TSBackgroundFetchJournalEntry

- (NSString)reason
{
  BackgroundFetchJournalEntry.reason.getter();
  v2 = sub_1BF17A07C();

  return v2;
}

- (NSDate)date
{
  v2 = sub_1BF1794AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  BackgroundFetchJournalEntry.date.getter(v6);
  v7 = sub_1BF1793FC();
  (*(v3 + 8))(v6, v2);

  return v7;
}

- (TSBackgroundFetchJournalEntry)initWithReason:(id)a3 date:(id)a4
{
  v4 = sub_1BF1794AC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1BF17A0AC();
  sub_1BF17945C();
  return BackgroundFetchJournalEntry.init(reason:date:)();
}

@end