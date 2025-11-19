@interface PPSocialHighlightStaticFeatureProvider
- (id)valueForHighlight:(id)a3;
- (void)initWithComputedFeatures:(void *)a3 highlightKeyBlock:;
@end

@implementation PPSocialHighlightStaticFeatureProvider

- (id)valueForHighlight:(id)a3
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

- (void)initWithComputedFeatures:(void *)a3 highlightKeyBlock:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = PPSocialHighlightStaticFeatureProvider;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      v9 = [v7 copy];
      v10 = a1[2];
      a1[2] = v9;
    }
  }

  return a1;
}

@end