@interface NSCoder(UIKitAdditions)
- (id)_ui_decodeTextAttributesForKey:()UIKitAdditions;
- (uint64_t)_ui_decodeBoolForKey:()UIKitAdditions defaultValue:;
- (void)_ui_encodeTextAttributes:()UIKitAdditions forKey:;
@end

@implementation NSCoder(UIKitAdditions)

- (uint64_t)_ui_decodeBoolForKey:()UIKitAdditions defaultValue:
{
  v6 = a3;
  if ([self containsValueForKey:v6])
  {
    a4 = [self decodeBoolForKey:v6];
  }

  return a4;
}

- (void)_ui_encodeTextAttributes:()UIKitAdditions forKey:
{
  if (a3)
  {
    v6 = MEMORY[0x1E696AAB0];
    v7 = a4;
    v8 = a3;
    v9 = [[v6 alloc] initWithString:@" " attributes:v8];

    [self encodeObject:v9 forKey:v7];
  }
}

- (id)_ui_decodeTextAttributesForKey:()UIKitAdditions
{
  v4 = a3;
  v5 = [self decodeObjectOfClass:objc_opt_class() forKey:v4];

  v6 = [v5 attributesAtIndex:0 effectiveRange:0];

  return v6;
}

@end