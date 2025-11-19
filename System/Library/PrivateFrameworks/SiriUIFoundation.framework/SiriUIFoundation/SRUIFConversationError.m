@interface SRUIFConversationError
+ (id)errorWithCode:(int64_t)a3 localizedFailureReason:(id)a4;
+ (id)errorWithCode:(int64_t)a3 userInfo:(id)a4;
- (SRUIFConversationError)initWithCode:(int64_t)a3 localizedFailureReason:(id)a4;
@end

@implementation SRUIFConversationError

+ (id)errorWithCode:(int64_t)a3 userInfo:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithCode:a3 userInfo:v6];

  return v7;
}

+ (id)errorWithCode:(int64_t)a3 localizedFailureReason:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithCode:a3 localizedFailureReason:v6];

  return v7;
}

- (SRUIFConversationError)initWithCode:(int64_t)a3 localizedFailureReason:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = *MEMORY[0x277CCA470];
  v13[0] = a4;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v9 = [(SRUIFConversationError *)self initWithCode:a3 userInfo:v8];
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

@end