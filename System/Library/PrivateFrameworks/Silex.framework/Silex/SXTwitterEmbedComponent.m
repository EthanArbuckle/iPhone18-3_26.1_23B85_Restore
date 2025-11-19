@interface SXTwitterEmbedComponent
- (id)classification;
@end

@implementation SXTwitterEmbedComponent

- (id)classification
{
  v3 = [(SXTwitterEmbedComponent *)self type];
  v4 = [(SXJSONObject *)self specificationVersion];
  v5 = [SXLegacySupport deprecatedComponentForType:v3 andVersion:v4];

  v6 = [(SXFullscreenCaption *)v5 caption];

  if (v6)
  {
    v7 = [(SXFullscreenCaption *)v5 caption];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SXTwitterEmbedComponent;
    v7 = [(SXComponent *)&v10 classification];
  }

  v8 = v7;

  return v8;
}

@end