@interface NoFavoritesPersonalizer
- (void)prepareFavorites:(id)favorites;
@end

@implementation NoFavoritesPersonalizer

- (void)prepareFavorites:(id)favorites
{
  v3 = _Block_copy(favorites);
  v3[2]();

  _Block_release(v3);
}

@end