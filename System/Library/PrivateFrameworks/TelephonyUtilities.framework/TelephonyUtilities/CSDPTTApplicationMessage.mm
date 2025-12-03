@interface CSDPTTApplicationMessage
- (id)description;
@end

@implementation CSDPTTApplicationMessage

- (id)description
{
  v11.receiver = self;
  v11.super_class = CSDPTTApplicationMessage;
  v3 = [(CSDVoIPApplicationMessage *)&v11 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@"<(PTT message), "];
  v5 = NSStringFromSelector("channelUUID");
  channelUUID = [(CSDPTTApplicationMessage *)self channelUUID];
  [v4 appendFormat:@"%@=%@", v5, channelUUID];

  [v4 appendFormat:@", "];
  v7 = NSStringFromSelector("isServiceUpdateMessage");
  [v4 appendFormat:@"%@=%d", v7, -[CSDPTTApplicationMessage isServiceUpdateMessage](self, "isServiceUpdateMessage")];

  [v4 appendFormat:@", "];
  v8 = NSStringFromSelector("isWakingMessage");
  [v4 appendFormat:@"%@=%d", v8, -[CSDPTTApplicationMessage isWakingMessage](self, "isWakingMessage")];

  [v4 appendFormat:@", "];
  v9 = NSStringFromSelector("remainingHighPriorityServiceUpdateBudget");
  [v4 appendFormat:@"%@=%zd", v9, -[CSDPTTApplicationMessage remainingHighPriorityServiceUpdateBudget](self, "remainingHighPriorityServiceUpdateBudget")];

  [v4 appendFormat:@">"];

  return v4;
}

@end