@interface TipEventProxySwift
+ (void)donateWithEventIdentifier:(NSString *)a3 for:(NSString *)a4 completionHandler:(id)a5;
@end

@implementation TipEventProxySwift

+ (void)donateWithEventIdentifier:(NSString *)a3 for:(NSString *)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = a1;
  v10 = a3;
  v11 = a4;

  sub_26F1319A4(&unk_26F135390, v9);
}

@end