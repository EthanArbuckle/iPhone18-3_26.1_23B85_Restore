@interface PLCloudFeedEntriesChangeNotification
+ (id)notificationWithFullReload;
+ (id)notificationWithInsertedEntries:(id)a3 updatedEntries:(id)a4 deletedEntries:(id)a5;
- (id)_initWithFullReload;
- (id)_initWithInsertedEntries:(id)a3 updatedEntries:(id)a4 deletedEntries:(id)a5;
@end

@implementation PLCloudFeedEntriesChangeNotification

+ (id)notificationWithInsertedEntries:(id)a3 updatedEntries:(id)a4 deletedEntries:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] _initWithInsertedEntries:v10 updatedEntries:v9 deletedEntries:v8];

  return v11;
}

+ (id)notificationWithFullReload
{
  v2 = [[a1 alloc] _initWithFullReload];

  return v2;
}

- (id)_initWithInsertedEntries:(id)a3 updatedEntries:(id)a4 deletedEntries:(id)a5
{
  if (self)
  {
    v8 = a5;
    v9 = a4;
    [(PLCloudFeedEntriesChangeNotification *)self setInsertedEntries:a3];
    [(PLCloudFeedEntriesChangeNotification *)self setUpdatedEntries:v9];

    [(PLCloudFeedEntriesChangeNotification *)self setDeletedEntries:v8];
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