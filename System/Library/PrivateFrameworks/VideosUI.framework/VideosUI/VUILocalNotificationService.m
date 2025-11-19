@interface VUILocalNotificationService
+ (void)authorizationStatusWithCompletionHandler:(id)a3;
+ (void)deliverNotificationWithIdentifier:(NSString *)a3 title:(NSString *)a4 body:(NSString *)a5 options:(NSDictionary *)a6 completionHandler:(id)a7;
@end

@implementation VUILocalNotificationService

+ (void)authorizationStatusWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;

  sub_1E38364EC(&unk_1E42BDFB8, v5);
}

+ (void)deliverNotificationWithIdentifier:(NSString *)a3 title:(NSString *)a4 body:(NSString *)a5 options:(NSDictionary *)a6 completionHandler:(id)a7
{
  v12 = _Block_copy(a7);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = v12;
  v13[7] = a1;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;

  sub_1E38364EC(&unk_1E42BDFA8, v13);
}

@end