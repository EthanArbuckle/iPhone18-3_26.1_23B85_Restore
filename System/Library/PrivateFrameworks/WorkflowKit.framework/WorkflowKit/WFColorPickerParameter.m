@interface WFColorPickerParameter
- (id)defaultSerializedRepresentation;
@end

@implementation WFColorPickerParameter

- (id)defaultSerializedRepresentation
{
  v2 = [(WFParameter *)self definition];
  v3 = [v2 objectForKey:@"DefaultValue"];

  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v4 = [objc_alloc(MEMORY[0x1E69E09E0]) initWithSystemColor:22];
    v3 = [v4 serializedRepresentation];
  }

  return v3;
}

@end