@interface TUIInputAccessoryViewDefaultTraits
- (id)inputAccessoryViewBackdropEffects;
@end

@implementation TUIInputAccessoryViewDefaultTraits

- (id)inputAccessoryViewBackdropEffects
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DC730] effectWithStyle:9];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

@end