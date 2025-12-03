@interface GameServiceDelegateReference
- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info;
@end

@implementation GameServiceDelegateReference

- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info
{
  v6 = sub_266039884();
  selfCopy = self;
  sub_266006264(type, v6);
}

@end