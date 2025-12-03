@interface ShareMenuItemManager
- (void)didBecomeKeyWindowScene:(id)scene;
@end

@implementation ShareMenuItemManager

- (void)didBecomeKeyWindowScene:(id)scene
{
  v3 = sub_220884A6C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220884A5C();

  sub_220661CD4();

  (*(v4 + 8))(v7, v3);
}

@end