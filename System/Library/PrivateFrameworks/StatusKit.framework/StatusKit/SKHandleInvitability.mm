@interface SKHandleInvitability
+ (id)logger;
- (SKHandleInvitability)initWithCoder:(id)coder;
- (SKHandleInvitability)initWithIsInvitable:(BOOL)invitable wasRemoved:(BOOL)removed;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKHandleInvitability

- (SKHandleInvitability)initWithIsInvitable:(BOOL)invitable wasRemoved:(BOOL)removed
{
  v7.receiver = self;
  v7.super_class = SKHandleInvitability;
  result = [(SKHandleInvitability *)&v7 init];
  if (result)
  {
    result->_isInvitable = invitable;
    result->_wasRemoved = removed;
  }

  return result;
}

+ (id)logger
{
  if (logger_onceToken_3 != -1)
  {
    +[SKHandleInvitability logger];
  }

  v3 = logger__logger_3;

  return v3;
}

uint64_t __30__SKHandleInvitability_logger__block_invoke()
{
  logger__logger_3 = os_log_create("com.apple.StatusKit", "SKHandleInvitability");

  return MEMORY[0x2821F96F8]();
}

- (void)encodeWithCoder:(id)coder
{
  isInvitable = self->_isInvitable;
  coderCopy = coder;
  [coderCopy encodeBool:isInvitable forKey:@"IsInvitable"];
  [coderCopy encodeBool:self->_wasRemoved forKey:@"WasRemoved"];
}

- (SKHandleInvitability)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"IsInvitable"];
  v6 = [coderCopy decodeBoolForKey:@"WasRemoved"];

  return [(SKHandleInvitability *)self initWithIsInvitable:v5 wasRemoved:v6];
}

@end