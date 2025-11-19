@interface _UICopyEffect
+ (id)copyEffectWithCaptureGroup:(id)a3;
- (id)description;
- (void)_updateEffectDescriptor:(id)a3 forEnvironment:(id)a4 usage:(int64_t)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UICopyEffect

+ (id)copyEffectWithCaptureGroup:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_opt_new();
    [v4 setDisableInPlaceFiltering:1];
    objc_storeStrong(v5 + 1, a3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"_UICopyEffect.m" lineNumber:38 description:@"_UICopyEffect is not codable"];
}

- (void)_updateEffectDescriptor:(id)a3 forEnvironment:(id)a4 usage:(int64_t)a5
{
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setRequirements:2];
  [v7 setCaptureGroup:self->_captureGroup];
  [v6 addUnderlay:v7];
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = _UICopyEffect;
  v3 = [(_UICopyEffect *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" captureGroup=%@", self->_captureGroup];

  return v4;
}

@end