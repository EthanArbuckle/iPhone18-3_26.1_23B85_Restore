@interface LibrarySideBarManager
- (void)deviceMediaLibraryUpdateStateDidChange;
- (void)isLibraryOnlyCountryChanged:(id)changed;
@end

@implementation LibrarySideBarManager

- (void)deviceMediaLibraryUpdateStateDidChange
{
  selfCopy = self;
  sub_1E3EC0328();
}

- (void)isLibraryOnlyCountryChanged:(id)changed
{
  sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E41FDEE4();
  selfCopy = self;
  sub_1E3EC057C();

  v6 = OUTLINED_FUNCTION_74();
  v7(v6);
}

@end