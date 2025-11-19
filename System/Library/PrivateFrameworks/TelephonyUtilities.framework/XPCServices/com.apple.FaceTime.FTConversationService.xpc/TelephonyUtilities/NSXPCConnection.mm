@interface NSXPCConnection
- (NSSet)conversationServiceEntitlements;
@end

@implementation NSXPCConnection

- (NSSet)conversationServiceEntitlements
{
  v3 = +[NSSet set];
  v4 = [(NSXPCConnection *)self valueForEntitlement:@"com.apple.FaceTime.FTConversationService"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [NSSet setWithArray:v4];

    v3 = v5;
  }

  return v3;
}

@end