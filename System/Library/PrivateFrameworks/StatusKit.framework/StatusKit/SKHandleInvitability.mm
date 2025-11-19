@interface SKHandleInvitability
+ (id)logger;
- (SKHandleInvitability)initWithCoder:(id)a3;
- (SKHandleInvitability)initWithIsInvitable:(BOOL)a3 wasRemoved:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKHandleInvitability

- (SKHandleInvitability)initWithIsInvitable:(BOOL)a3 wasRemoved:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = SKHandleInvitability;
  result = [(SKHandleInvitability *)&v7 init];
  if (result)
  {
    result->_isInvitable = a3;
    result->_wasRemoved = a4;
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

- (void)encodeWithCoder:(id)a3
{
  isInvitable = self->_isInvitable;
  v5 = a3;
  [v5 encodeBool:isInvitable forKey:@"IsInvitable"];
  [v5 encodeBool:self->_wasRemoved forKey:@"WasRemoved"];
}

- (SKHandleInvitability)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"IsInvitable"];
  v6 = [v4 decodeBoolForKey:@"WasRemoved"];

  return [(SKHandleInvitability *)self initWithIsInvitable:v5 wasRemoved:v6];
}

@end