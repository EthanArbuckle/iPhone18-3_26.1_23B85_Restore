@interface PGMusicBag
- (PGMusicBag)init;
- (PGMusicBag)initWithCache:(id)a3;
@end

@implementation PGMusicBag

- (PGMusicBag)initWithCache:(id)a3
{
  v4 = a3;
  v5 = sub_22F1ED5B0(a3);

  return v5;
}

- (PGMusicBag)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end