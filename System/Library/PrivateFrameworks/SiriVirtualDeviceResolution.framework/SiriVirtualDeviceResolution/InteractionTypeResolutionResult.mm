@interface InteractionTypeResolutionResult
+ (id)confirmationRequiredWithInteractionTypeToConfirm:(int64_t)confirm;
+ (id)successWithResolvedInteractionType:(int64_t)type;
@end

@implementation InteractionTypeResolutionResult

+ (id)confirmationRequiredWithInteractionTypeToConfirm:(int64_t)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___InteractionTypeResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_confirmationRequiredWithValueToConfirm_, confirm);

  return v3;
}

+ (id)successWithResolvedInteractionType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___InteractionTypeResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_successWithResolvedValue_, type);

  return v3;
}

@end