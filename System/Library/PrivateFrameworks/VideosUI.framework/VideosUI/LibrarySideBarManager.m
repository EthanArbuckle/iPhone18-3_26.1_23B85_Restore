@interface LibrarySideBarManager
- (void)deviceMediaLibraryUpdateStateDidChange;
- (void)isLibraryOnlyCountryChanged:(id)a3;
@end

@implementation LibrarySideBarManager

- (void)deviceMediaLibraryUpdateStateDidChange
{
  v2 = self;
  sub_1E3EC0328();
}

- (void)isLibraryOnlyCountryChanged:(id)a3
{
  sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E41FDEE4();
  v5 = self;
  sub_1E3EC057C();

  v6 = OUTLINED_FUNCTION_74();
  v7(v6);
}

@end