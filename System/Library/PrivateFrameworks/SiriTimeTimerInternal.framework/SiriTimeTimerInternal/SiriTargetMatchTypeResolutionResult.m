@interface SiriTargetMatchTypeResolutionResult
+ (id)confirmationRequiredWithSiriTargetMatchTypeToConfirm:(int64_t)a3;
+ (id)successWithResolvedSiriTargetMatchType:(int64_t)a3;
- (SiriTargetMatchTypeResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation SiriTargetMatchTypeResolutionResult

+ (id)successWithResolvedSiriTargetMatchType:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_2693B0080(a3);

  return v4;
}

+ (id)confirmationRequiredWithSiriTargetMatchTypeToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_2693B010C(a3);

  return v4;
}

- (SiriTargetMatchTypeResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  sub_2693B3720();
  v6 = a4;
  v7 = sub_2693B3710();

  v10.receiver = self;
  v10.super_class = type metadata accessor for SiriTargetMatchTypeResolutionResult();
  v8 = [(SiriTargetMatchTypeResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:v6];

  if (v8)
  {
  }

  return v8;
}

@end