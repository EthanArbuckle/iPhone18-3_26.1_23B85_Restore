@interface SXTwitterEmbedComponent
- (id)classification;
@end

@implementation SXTwitterEmbedComponent

- (id)classification
{
  type = [(SXTwitterEmbedComponent *)self type];
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
    v10.super_class = SXTwitterEmbedComponent;
    caption2 = [(SXComponent *)&v10 classification];
  }

  v8 = caption2;

  return v8;
}

@end