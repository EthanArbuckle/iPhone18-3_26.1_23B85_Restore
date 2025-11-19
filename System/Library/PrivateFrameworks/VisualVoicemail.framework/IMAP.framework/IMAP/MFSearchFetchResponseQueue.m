@interface MFSearchFetchResponseQueue
- (MFSearchFetchResponseQueue)init;
@end

@implementation MFSearchFetchResponseQueue

- (MFSearchFetchResponseQueue)init
{
  v6.receiver = self;
  v6.super_class = MFSearchFetchResponseQueue;
  v2 = [(MFFetchResponseQueue *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._isSearching = 1;
    v4 = v2;
  }

  return v3;
}

@end