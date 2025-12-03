@interface _SKUIInspectableProperty
- (NSString)valueString;
@end

@implementation _SKUIInspectableProperty

- (NSString)valueString
{
  value = [(_SKUIInspectableProperty *)self value];

  if (value)
  {
    value2 = [(_SKUIInspectableProperty *)self value];
    v5 = [value2 debugDescription];
  }

  else
  {
    v5 = @"<nil>";
  }

  return v5;
}

@end