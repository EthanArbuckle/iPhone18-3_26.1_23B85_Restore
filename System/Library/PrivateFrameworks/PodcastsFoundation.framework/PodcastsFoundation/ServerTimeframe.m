@interface ServerTimeframe
- (NSString)id;
- (NSString)type;
@end

@implementation ServerTimeframe

- (NSString)id
{
  v2 = *(self + 2);
  v3 = *(self + 3);

  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v4;
}

- (NSString)type
{
  v2 = *(self + 4);
  v3 = *(self + 5);

  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v4;
}

@end