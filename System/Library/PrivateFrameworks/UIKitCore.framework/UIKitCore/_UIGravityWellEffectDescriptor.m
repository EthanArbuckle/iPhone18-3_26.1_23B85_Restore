@interface _UIGravityWellEffectDescriptor
- (BOOL)canTransitionInPlaceToEffectWithDescriptor:(id)a3;
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

- (BOOL)canTransitionInPlaceToEffectWithDescriptor:(id)a3
{
  v4 = a3;
  v5 = [(_UIGravityWellEffectDescriptor *)self targetedPreview];
  v6 = [v5 view];
  v7 = [v4 targetedPreview];

  v8 = [v7 view];
  LOBYTE(v4) = v6 == v8;

  return v4;
}

@end