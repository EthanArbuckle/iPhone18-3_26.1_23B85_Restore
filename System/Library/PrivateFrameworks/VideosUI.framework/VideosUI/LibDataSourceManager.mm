@interface LibDataSourceManager
- (void)appDidEnterBackground;
- (void)isLibraryOnlyCountryChanged:(id)changed;
@end

@implementation LibDataSourceManager

- (void)appDidEnterBackground
{

  sub_1E3B879F8();
}

- (void)isLibraryOnlyCountryChanged:(id)changed
{
  OUTLINED_FUNCTION_106();
  v4 = sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E41FDEE4();

  sub_1E3B88C54();

  (*(v6 + 8))(v3, v4);
}

@end