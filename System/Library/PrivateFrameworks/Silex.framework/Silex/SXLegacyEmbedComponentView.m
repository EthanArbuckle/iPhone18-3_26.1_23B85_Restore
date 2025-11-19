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
    v5 = [(SXComponentView *)self component];
    v6 = [v5 valueForLookupKey:@"URL"];

    v7 = [MEMORY[0x1E695DF90] dictionary];
    v8 = v7;
    if (v6)
    {
      [v7 setObject:v6 forKey:@"URL"];
    }

    v9 = [SXEmbedResource alloc];
    v10 = [(SXComponentView *)self component];
    v11 = [v10 specificationVersion];
    v12 = [(SXJSONObject *)v9 initWithJSONObject:v8 andVersion:v11];
    v13 = self->_embedResource;
    self->_embedResource = v12;

    embedResource = self->_embedResource;
  }

  return embedResource;
}

@end