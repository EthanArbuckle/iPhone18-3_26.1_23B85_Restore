@interface JSAccount
- (BOOL)hasFamilySharingEnabled;
- (BOOL)hasiCloudFamily;
- (BOOL)isHSA2;
- (NSString)dsid;
@end

@implementation JSAccount

- (NSString)dsid
{
  selfCopy = self;
  sub_27057F96C();
  v4 = v3;

  if (v4)
  {
    v5 = sub_2705D7534();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasFamilySharingEnabled
{
  selfCopy = self;
  v3 = sub_27057FB40(MEMORY[0x277CEE138]);

  return v3 & 1;
}

- (BOOL)hasiCloudFamily
{
  selfCopy = self;
  v3 = sub_27057FB40(MEMORY[0x277CEE140]);

  return v3 & 1;
}

- (BOOL)isHSA2
{
  selfCopy = self;
  v3 = sub_27057FC50();

  return v3 & 1;
}

@end