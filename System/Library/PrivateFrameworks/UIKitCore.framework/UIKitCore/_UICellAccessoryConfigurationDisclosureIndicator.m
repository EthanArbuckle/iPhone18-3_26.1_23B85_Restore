@interface _UICellAccessoryConfigurationDisclosureIndicator
- (_UICellAccessoryConfigurationDisclosureIndicator)init;
@end

@implementation _UICellAccessoryConfigurationDisclosureIndicator

- (_UICellAccessoryConfigurationDisclosureIndicator)init
{
  v5.receiver = self;
  v5.super_class = _UICellAccessoryConfigurationDisclosureIndicator;
  v2 = [(_UICellAccessoryConfiguration *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_UICellAccessoryConfiguration *)v2 setUsesDefaultLayoutWidth:0];
  }

  return v3;
}

@end