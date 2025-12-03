@interface SBTemplateAndMorph
- (SBTemplateAndMorph)initWithTemplate:(id)template morph:(id)morph;
@end

@implementation SBTemplateAndMorph

- (SBTemplateAndMorph)initWithTemplate:(id)template morph:(id)morph
{
  templateCopy = template;
  morphCopy = morph;
  v12.receiver = self;
  v12.super_class = SBTemplateAndMorph;
  v9 = [(SBTemplateAndMorph *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_morphedCandidate, morph);
    objc_storeStrong(&v10->_touchTemplate, template);
  }

  return v10;
}

@end