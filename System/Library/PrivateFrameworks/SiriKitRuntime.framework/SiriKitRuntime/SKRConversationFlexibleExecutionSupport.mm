@interface SKRConversationFlexibleExecutionSupport
- (SKRConversationFlexibleExecutionSupport)init;
- (SKRConversationFlexibleExecutionSupport)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKRConversationFlexibleExecutionSupport

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR___SKRConversationFlexibleExecutionSupport_rawValue);
  coderCopy = coder;
  selfCopy = self;
  v6 = MEMORY[0x1E12A1410](0x6E6F6974706FLL, 0xE600000000000000);
  [coderCopy encodeInteger:v4 forKey:v6];
}

- (SKRConversationFlexibleExecutionSupport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E12A1410](0x6E6F6974706FLL, 0xE600000000000000);
  decodeIntegerForKey_ = [coderCopy decodeIntegerForKey_];

  *(&self->super.isa + OBJC_IVAR___SKRConversationFlexibleExecutionSupport_rawValue) = decodeIntegerForKey_;
  v9.receiver = self;
  v9.super_class = type metadata accessor for ConversationFlexibleExecutionSupportXPC();
  v7 = [(SKRConversationFlexibleExecutionSupport *)&v9 init];

  return v7;
}

- (SKRConversationFlexibleExecutionSupport)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end