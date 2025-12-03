@interface _UIGravityWellEffectDescriptor
- (BOOL)canTransitionInPlaceToEffectWithDescriptor:(id)descriptor;
- (NSArray)compatibleDescriptors;
@end

@implementation _UIGravityWellEffectDescriptor

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
  targetedPreview = [(_UIGravityWellEffectDescriptor *)self targetedPreview];
  view = [targetedPreview view];
  targetedPreview2 = [descriptorCopy targetedPreview];

  view2 = [targetedPreview2 view];
  LOBYTE(descriptorCopy) = view == view2;

  return descriptorCopy;
}

@end