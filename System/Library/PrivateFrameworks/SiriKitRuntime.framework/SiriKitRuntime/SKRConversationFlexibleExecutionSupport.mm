@interface SKRConversationFlexibleExecutionSupport
- (SKRConversationFlexibleExecutionSupport)init;
- (SKRConversationFlexibleExecutionSupport)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKRConversationFlexibleExecutionSupport

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___SKRConversationFlexibleExecutionSupport_rawValue);
  v5 = a3;
  v7 = self;
  v6 = MEMORY[0x1E12A1410](0x6E6F6974706FLL, 0xE600000000000000);
  [v5 encodeInteger:v4 forKey:v6];
}

- (SKRConversationFlexibleExecutionSupport)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E12A1410](0x6E6F6974706FLL, 0xE600000000000000);
  v6 = [v4 decodeIntegerForKey_];

  *(&self->super.isa + OBJC_IVAR___SKRConversationFlexibleExecutionSupport_rawValue) = v6;
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