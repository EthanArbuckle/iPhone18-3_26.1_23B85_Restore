@interface _UICellAccessoryConfigurationSeparator
- (_UICellAccessoryConfigurationSeparator)init;
@end

@implementation _UICellAccessoryConfigurationSeparator

- (_UICellAccessoryConfigurationSeparator)init
{
  v5.receiver = self;
  v5.super_class = _UICellAccessoryConfigurationSeparator;
  v2 = [(_UICellAccessoryConfiguration *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_UICellAccessoryConfiguration *)v2 setUsesDefaultLayoutWidth:0];
  }

  return v3;
}

@end