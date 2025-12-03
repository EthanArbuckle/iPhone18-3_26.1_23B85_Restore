@interface PLPersistentHistoryMarker
+ (id)markerWithDate:(id)date;
+ (id)markerWithToken:(id)token;
+ (id)markerWithTransaction:(id)transaction;
- (id)overrride_changeRequestForFetching;
- (id)overrride_shortDescription;
@end

@implementation PLPersistentHistoryMarker

+ (id)markerWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  v4 = [[PLPersistentHistoryMarkerTransaction alloc] initWithTransaction:transactionCopy];

  return v4;
}

+ (id)markerWithDate:(id)date
{
  dateCopy = date;
  v4 = [[PLPersistentHistoryMarkerDate alloc] initWithDate:dateCopy];

  return v4;
}

+ (id)markerWithToken:(id)token
{
  tokenCopy = token;
  v4 = [[PLPersistentHistoryMarkerToken alloc] initWithToken:tokenCopy];

  return v4;
}

- (id)overrride_shortDescription
{
  selfCopy = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

- (id)overrride_changeRequestForFetching
{
  selfCopy = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

@end