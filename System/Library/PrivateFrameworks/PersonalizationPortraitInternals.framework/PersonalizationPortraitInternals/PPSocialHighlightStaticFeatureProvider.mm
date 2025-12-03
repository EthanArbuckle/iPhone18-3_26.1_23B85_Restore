@interface PPSocialHighlightStaticFeatureProvider
- (id)valueForHighlight:(id)highlight;
- (void)initWithComputedFeatures:(void *)features highlightKeyBlock:;
@end

@implementation PPSocialHighlightStaticFeatureProvider

- (id)valueForHighlight:(id)highlight
{
  v4 = (*(self->_keyBlock + 2))();
  if (v4)
  {
    v5 = [(NSDictionary *)self->_computedFeatures objectForKeyedSubscript:v4];
  }

  else
  {
    v5 = &unk_284786100;
  }

  return v5;
}

- (void)initWithComputedFeatures:(void *)features highlightKeyBlock:
{
  v6 = a2;
  featuresCopy = features;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = PPSocialHighlightStaticFeatureProvider;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    self = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      v9 = [featuresCopy copy];
      v10 = self[2];
      self[2] = v9;
    }
  }

  return self;
}

@end