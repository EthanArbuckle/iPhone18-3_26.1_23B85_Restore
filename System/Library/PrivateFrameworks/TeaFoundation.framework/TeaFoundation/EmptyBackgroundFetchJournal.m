@interface EmptyBackgroundFetchJournal
- (NSArray)entries;
- (void)addEntryWithReason:(id)a3;
@end

@implementation EmptyBackgroundFetchJournal

- (void)addEntryWithReason:(id)a3
{
  sub_1BF17A0AC();
}

- (NSArray)entries
{
  type metadata accessor for BackgroundFetchJournalEntry();
  v2 = sub_1BF17A4CC();

  return v2;
}

@end