@interface PLPersistentHistoryMarker
+ (id)markerWithDate:(id)a3;
+ (id)markerWithToken:(id)a3;
+ (id)markerWithTransaction:(id)a3;
- (id)overrride_changeRequestForFetching;
- (id)overrride_shortDescription;
@end

@implementation PLPersistentHistoryMarker

+ (id)markerWithTransaction:(id)a3
{
  v3 = a3;
  v4 = [[PLPersistentHistoryMarkerTransaction alloc] initWithTransaction:v3];

  return v4;
}

+ (id)markerWithDate:(id)a3
{
  v3 = a3;
  v4 = [[PLPersistentHistoryMarkerDate alloc] initWithDate:v3];

  return v4;
}

+ (id)markerWithToken:(id)a3
{
  v3 = a3;
  v4 = [[PLPersistentHistoryMarkerToken alloc] initWithToken:v3];

  return v4;
}

- (id)overrride_shortDescription
{
  v2 = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

- (id)overrride_changeRequestForFetching
{
  v2 = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

@end