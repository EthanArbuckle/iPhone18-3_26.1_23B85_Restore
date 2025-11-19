@interface RUIDecodingUserInfo
- (RUIDecodingUserInfo)init;
@end

@implementation RUIDecodingUserInfo

- (RUIDecodingUserInfo)init
{
  *(&self->super.isa + OBJC_IVAR___RUIDecodingUserInfo_values) = MEMORY[0x277D84F98];
  v3.receiver = self;
  v3.super_class = RUIDecodingUserInfo;
  return [(RUIDecodingUserInfo *)&v3 init];
}

@end