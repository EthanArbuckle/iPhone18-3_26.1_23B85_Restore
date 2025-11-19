@interface _SKUIInspectableProperty
- (NSString)valueString;
@end

@implementation _SKUIInspectableProperty

- (NSString)valueString
{
  v3 = [(_SKUIInspectableProperty *)self value];

  if (v3)
  {
    v4 = [(_SKUIInspectableProperty *)self value];
    v5 = [v4 debugDescription];
  }

  else
  {
    v5 = @"<nil>";
  }

  return v5;
}

@end