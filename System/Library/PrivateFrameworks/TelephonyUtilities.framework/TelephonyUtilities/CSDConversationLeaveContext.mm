@interface CSDConversationLeaveContext
+ (id)greenTeaLeaveContext;
- (CSDConversationLeaveContext)initWithLeaveReason:(unint64_t)reason;
- (id)description;
@end

@implementation CSDConversationLeaveContext

- (CSDConversationLeaveContext)initWithLeaveReason:(unint64_t)reason
{
  v5.receiver = self;
  v5.super_class = CSDConversationLeaveContext;
  result = [(CSDConversationLeaveContext *)&v5 init];
  if (result)
  {
    result->_leaveReason = reason;
  }

  return result;
}

+ (id)greenTeaLeaveContext
{
  v2 = [[CSDConversationLeaveContext alloc] initWithLeaveReason:2];

  return v2;
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v4 = NSStringFromSelector("leaveReason");
  [v3 appendFormat:@"%@=%lu", v4, -[CSDConversationLeaveContext leaveReason](self, "leaveReason")];

  [v3 appendFormat:@">"];
  v5 = [v3 copy];

  return v5;
}

@end