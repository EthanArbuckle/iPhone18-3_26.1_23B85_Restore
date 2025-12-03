@interface PGMusicBag
- (PGMusicBag)init;
- (PGMusicBag)initWithCache:(id)cache;
@end

@implementation PGMusicBag

- (PGMusicBag)initWithCache:(id)cache
{
  cacheCopy = cache;
  v5 = sub_22F1ED5B0(cache);

  return v5;
}

- (PGMusicBag)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end