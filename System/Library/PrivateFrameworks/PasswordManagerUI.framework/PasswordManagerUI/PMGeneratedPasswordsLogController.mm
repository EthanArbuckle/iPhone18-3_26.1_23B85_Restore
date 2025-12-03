@interface PMGeneratedPasswordsLogController
+ (id)viewControllerWithDelegate:(id)delegate searchTerm:(id)term alwaysShowSearchBar:(BOOL)bar;
- (_TtC17PasswordManagerUI33PMGeneratedPasswordsLogController)init;
@end

@implementation PMGeneratedPasswordsLogController

+ (id)viewControllerWithDelegate:(id)delegate searchTerm:(id)term alwaysShowSearchBar:(BOOL)bar
{
  barCopy = bar;
  v6 = sub_21CB855C4();
  v8 = v7;
  v9 = swift_unknownObjectRetain();
  v10 = _s17PasswordManagerUI33PMGeneratedPasswordsLogControllerC04viewG04with10searchTerm19alwaysShowSearchBarSo06UIViewG0CSo0deF8Delegate_p_SSSbtFZ_0(v9, v6, v8, barCopy);
  swift_unknownObjectRelease();

  return v10;
}

- (_TtC17PasswordManagerUI33PMGeneratedPasswordsLogController)init
{
  result = sub_21CB861C4();
  __break(1u);
  return result;
}

@end