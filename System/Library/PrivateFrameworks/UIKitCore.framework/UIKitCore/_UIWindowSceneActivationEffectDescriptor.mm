@interface _UIWindowSceneActivationEffectDescriptor
+ (id)descriptorWithPreview:(id)preview;
- (BOOL)canTransitionInPlaceToEffectWithDescriptor:(id)descriptor;
- (NSArray)compatibleDescriptors;
@end

@implementation _UIWindowSceneActivationEffectDescriptor

+ (id)descriptorWithPreview:(id)preview
{
  previewCopy = preview;
  v4 = objc_opt_new();
  parameters = [previewCopy parameters];
  [parameters setAppliesShadow:1];

  v6 = v4[1];
  v4[1] = previewCopy;

  return v4;
}

- (NSArray)compatibleDescriptors
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (BOOL)canTransitionInPlaceToEffectWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  targetedPreview = [(_UIWindowSceneActivationEffectDescriptor *)self targetedPreview];
  view = [targetedPreview view];
  targetedPreview2 = [descriptorCopy targetedPreview];

  view2 = [targetedPreview2 view];
  v9 = [view isEqual:view2];

  return v9;
}

@end