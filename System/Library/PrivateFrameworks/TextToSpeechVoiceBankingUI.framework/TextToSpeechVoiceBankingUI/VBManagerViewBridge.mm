@interface VBManagerViewBridge
+ (id)makeVBManagerViewControllerWithAuthenticationCallback:(id)callback;
- (VBManagerViewBridge)init;
@end

@implementation VBManagerViewBridge

+ (id)makeVBManagerViewControllerWithAuthenticationCallback:(id)callback
{
  v3 = _Block_copy(callback);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = _s26TextToSpeechVoiceBankingUI19VBManagerViewBridgeC04makegH10Controller22authenticationCallbackSo06UIViewK0Cy10Foundation4UUIDV_SStc_tFZ_0(sub_26EE96820, v4);

  return v5;
}

- (VBManagerViewBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for VBManagerViewBridge();
  return [(VBManagerViewBridge *)&v3 init];
}

@end