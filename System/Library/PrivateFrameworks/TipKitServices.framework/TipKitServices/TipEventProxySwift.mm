@interface TipEventProxySwift
+ (void)donateWithEventIdentifier:(NSString *)identifier for:(NSString *)for completionHandler:(id)handler;
@end

@implementation TipEventProxySwift

+ (void)donateWithEventIdentifier:(NSString *)identifier for:(NSString *)for completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = identifier;
  v9[3] = for;
  v9[4] = v8;
  v9[5] = self;
  identifierCopy = identifier;
  forCopy = for;

  sub_26F1319A4(&unk_26F135390, v9);
}

@end