@interface SXInstagramEmbedComponent
- (id)classification;
@end

@implementation SXInstagramEmbedComponent

- (id)classification
{
  v3 = [(SXInstagramEmbedComponent *)self type];
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
    v10.super_class = SXInstagramEmbedComponent;
    v7 = [(SXComponent *)&v10 classification];
  }

  v8 = v7;

  return v8;
}

@end