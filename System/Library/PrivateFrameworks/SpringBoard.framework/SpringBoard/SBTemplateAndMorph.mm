@interface SBTemplateAndMorph
- (SBTemplateAndMorph)initWithTemplate:(id)a3 morph:(id)a4;
@end

@implementation SBTemplateAndMorph

- (SBTemplateAndMorph)initWithTemplate:(id)a3 morph:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SBTemplateAndMorph;
  v9 = [(SBTemplateAndMorph *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_morphedCandidate, a4);
    objc_storeStrong(&v10->_touchTemplate, a3);
  }

  return v10;
}

@end