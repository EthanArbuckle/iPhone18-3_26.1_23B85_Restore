@interface VUILocalNotificationService
+ (void)authorizationStatusWithCompletionHandler:(id)handler;
+ (void)deliverNotificationWithIdentifier:(NSString *)identifier title:(NSString *)title body:(NSString *)body options:(NSDictionary *)options completionHandler:(id)handler;
@end

@implementation VUILocalNotificationService

+ (void)authorizationStatusWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;

  sub_1E38364EC(&unk_1E42BDFB8, v5);
}

+ (void)deliverNotificationWithIdentifier:(NSString *)identifier title:(NSString *)title body:(NSString *)body options:(NSDictionary *)options completionHandler:(id)handler
{
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = identifier;
  v13[3] = title;
  v13[4] = body;
  v13[5] = options;
  v13[6] = v12;
  v13[7] = self;
  identifierCopy = identifier;
  titleCopy = title;
  bodyCopy = body;
  optionsCopy = options;

  sub_1E38364EC(&unk_1E42BDFA8, v13);
}

@end