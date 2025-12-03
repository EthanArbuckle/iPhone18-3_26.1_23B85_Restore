@interface RemoteBrowsingAccountProvider
- (void)handleSelectedUserProfileChanged:(id)changed;
@end

@implementation RemoteBrowsingAccountProvider

- (void)handleSelectedUserProfileChanged:(id)changed
{
  v3 = sub_20C132614();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C1325E4();

  sub_20BA19DA8();

  (*(v4 + 8))(v6, v3);
}

@end