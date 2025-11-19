@interface SGWarning
- (NSString)message;
- (SGWarning)init;
@end

@implementation SGWarning

- (NSString)message
{
  v2 = *(self + OBJC_IVAR___SGWarning_message);
  v3 = *(self + OBJC_IVAR___SGWarning_message + 8);

  v4 = MEMORY[0x266771450](v2, v3);

  return v4;
}

- (SGWarning)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end