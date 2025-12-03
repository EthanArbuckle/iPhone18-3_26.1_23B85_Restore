@interface EmptyBackgroundFetchJournal
- (NSArray)entries;
- (void)addEntryWithReason:(id)reason;
@end

@implementation EmptyBackgroundFetchJournal

- (void)addEntryWithReason:(id)reason
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