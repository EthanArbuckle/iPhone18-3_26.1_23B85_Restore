@interface SXInstagramEmbedComponent
- (id)classification;
@end

@implementation SXInstagramEmbedComponent

- (id)classification
{
  type = [(SXInstagramEmbedComponent *)self type];
  specificationVersion = [(SXJSONObject *)self specificationVersion];
  v5 = [SXLegacySupport deprecatedComponentForType:type andVersion:specificationVersion];

  caption = [(SXFullscreenCaption *)v5 caption];

  if (caption)
  {
    caption2 = [(SXFullscreenCaption *)v5 caption];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SXInstagramEmbedComponent;
    caption2 = [(SXComponent *)&v10 classification];
  }

  v8 = caption2;

  return v8;
}

@end