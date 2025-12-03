@interface SiriTargetMatchTypeResolutionResult
+ (id)confirmationRequiredWithSiriTargetMatchTypeToConfirm:(int64_t)confirm;
+ (id)successWithResolvedSiriTargetMatchType:(int64_t)type;
- (SiriTargetMatchTypeResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation SiriTargetMatchTypeResolutionResult

+ (id)successWithResolvedSiriTargetMatchType:(int64_t)type
{
  swift_getObjCClassMetadata();
  v4 = sub_2693B0080(type);

  return v4;
}

+ (id)confirmationRequiredWithSiriTargetMatchTypeToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = sub_2693B010C(confirm);

  return v4;
}

- (SiriTargetMatchTypeResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_2693B3720();
  intentCopy = intent;
  v7 = sub_2693B3710();

  v10.receiver = self;
  v10.super_class = type metadata accessor for SiriTargetMatchTypeResolutionResult();
  v8 = [(SiriTargetMatchTypeResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end