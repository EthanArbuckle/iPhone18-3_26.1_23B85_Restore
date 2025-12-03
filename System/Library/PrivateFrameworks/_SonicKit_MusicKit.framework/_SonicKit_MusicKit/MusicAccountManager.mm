@interface MusicAccountManager
- (void)userStateDidChange:(id)change;
@end

@implementation MusicAccountManager

- (void)userStateDidChange:(id)change
{
  v3 = sub_2753B6058();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2753B6038();

  sub_2752E4E74();

  (*(v4 + 8))(v7, v3);
}

@end