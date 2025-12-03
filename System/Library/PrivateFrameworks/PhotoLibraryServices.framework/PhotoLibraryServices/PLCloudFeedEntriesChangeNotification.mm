@interface PLCloudFeedEntriesChangeNotification
+ (id)notificationWithFullReload;
+ (id)notificationWithInsertedEntries:(id)entries updatedEntries:(id)updatedEntries deletedEntries:(id)deletedEntries;
- (id)_initWithFullReload;
- (id)_initWithInsertedEntries:(id)entries updatedEntries:(id)updatedEntries deletedEntries:(id)deletedEntries;
@end

@implementation PLCloudFeedEntriesChangeNotification

+ (id)notificationWithInsertedEntries:(id)entries updatedEntries:(id)updatedEntries deletedEntries:(id)deletedEntries
{
  deletedEntriesCopy = deletedEntries;
  updatedEntriesCopy = updatedEntries;
  entriesCopy = entries;
  v11 = [[self alloc] _initWithInsertedEntries:entriesCopy updatedEntries:updatedEntriesCopy deletedEntries:deletedEntriesCopy];

  return v11;
}

+ (id)notificationWithFullReload
{
  _initWithFullReload = [[self alloc] _initWithFullReload];

  return _initWithFullReload;
}

- (id)_initWithInsertedEntries:(id)entries updatedEntries:(id)updatedEntries deletedEntries:(id)deletedEntries
{
  if (self)
  {
    deletedEntriesCopy = deletedEntries;
    updatedEntriesCopy = updatedEntries;
    [(PLCloudFeedEntriesChangeNotification *)self setInsertedEntries:entries];
    [(PLCloudFeedEntriesChangeNotification *)self setUpdatedEntries:updatedEntriesCopy];

    [(PLCloudFeedEntriesChangeNotification *)self setDeletedEntries:deletedEntriesCopy];
  }

  return self;
}

- (id)_initWithFullReload
{
  if (self)
  {
    [(PLCloudFeedEntriesChangeNotification *)self setShouldReload:1];
  }

  return self;
}

@end