@interface WFColorPickerParameter
- (id)defaultSerializedRepresentation;
@end

@implementation WFColorPickerParameter

- (id)defaultSerializedRepresentation
{
  definition = [(WFParameter *)self definition];
  serializedRepresentation = [definition objectForKey:@"DefaultValue"];

  if (!serializedRepresentation || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v4 = [objc_alloc(MEMORY[0x1E69E09E0]) initWithSystemColor:22];
    serializedRepresentation = [v4 serializedRepresentation];
  }

  return serializedRepresentation;
}

@end