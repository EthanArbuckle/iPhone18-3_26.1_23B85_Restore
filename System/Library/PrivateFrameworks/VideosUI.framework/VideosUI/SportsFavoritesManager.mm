@interface SportsFavoritesManager
- (void)handleFavoriteRequestDidFinish:(id)finish;
@end

@implementation SportsFavoritesManager

- (void)handleFavoriteRequestDidFinish:(id)finish
{
  v3 = sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  sub_1E41FDEE4();

  sub_1E3CFF428();

  (*(v5 + 8))(v9, v3);
}

@end