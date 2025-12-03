@interface _UICopyEffect
+ (id)copyEffectWithCaptureGroup:(id)group;
- (id)description;
- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UICopyEffect

+ (id)copyEffectWithCaptureGroup:(id)group
{
  groupCopy = group;
  if (groupCopy)
  {
    v5 = objc_opt_new();
    [groupCopy setDisableInPlaceFiltering:1];
    objc_storeStrong(v5 + 1, group);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UICopyEffect.m" lineNumber:38 description:@"_UICopyEffect is not codable"];
}

- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage
{
  descriptorCopy = descriptor;
  v7 = objc_opt_new();
  [v7 setRequirements:2];
  [v7 setCaptureGroup:self->_captureGroup];
  [descriptorCopy addUnderlay:v7];
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