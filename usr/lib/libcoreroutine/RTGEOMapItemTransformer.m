@interface RTGEOMapItemTransformer
- (id)reverseTransformedValue:(id)a3;
- (id)transformedValue:(id)a3;
@end

@implementation RTGEOMapItemTransformer

- (id)transformedValue:(id)a3
{
  v3 = a3;
  if ([v3 conformsToProtocol:&unk_284649618])
  {
    v4 = [MEMORY[0x277D0EBC0] mapItemStorageForGEOMapItem:v3];
    v5 = [v4 data];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)reverseTransformedValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objc_alloc(MEMORY[0x277D0EBC0]) initWithData:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end