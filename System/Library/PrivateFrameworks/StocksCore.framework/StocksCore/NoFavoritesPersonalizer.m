@interface NoFavoritesPersonalizer
- (void)prepareFavorites:(id)a3;
@end

@implementation NoFavoritesPersonalizer

- (void)prepareFavorites:(id)a3
{
  v3 = _Block_copy(a3);
  v3[2]();

  _Block_release(v3);
}

@end