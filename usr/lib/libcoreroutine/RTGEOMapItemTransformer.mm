@interface RTGEOMapItemTransformer
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation RTGEOMapItemTransformer

- (id)transformedValue:(id)value
{
  valueCopy = value;
  if ([valueCopy conformsToProtocol:&unk_284649618])
  {
    v4 = [MEMORY[0x277D0EBC0] mapItemStorageForGEOMapItem:valueCopy];
    data = [v4 data];
  }

  else
  {
    data = 0;
  }

  return data;
}

- (id)reverseTransformedValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objc_alloc(MEMORY[0x277D0EBC0]) initWithData:valueCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end