@interface SXLegacyEmbedComponentView
- (SXEmbedResource)embedResource;
@end

@implementation SXLegacyEmbedComponentView

- (SXEmbedResource)embedResource
{
  embedResource = self->_embedResource;
  if (!embedResource)
  {
    v4 = objc_alloc_init(SXLegacyEmbedResource);
    component = [(SXComponentView *)self component];
    v6 = [component valueForLookupKey:@"URL"];

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v8 = dictionary;
    if (v6)
    {
      [dictionary setObject:v6 forKey:@"URL"];
    }

    v9 = [SXEmbedResource alloc];
    component2 = [(SXComponentView *)self component];
    specificationVersion = [component2 specificationVersion];
    v12 = [(SXJSONObject *)v9 initWithJSONObject:v8 andVersion:specificationVersion];
    v13 = self->_embedResource;
    self->_embedResource = v12;

    embedResource = self->_embedResource;
  }

  return embedResource;
}

@end