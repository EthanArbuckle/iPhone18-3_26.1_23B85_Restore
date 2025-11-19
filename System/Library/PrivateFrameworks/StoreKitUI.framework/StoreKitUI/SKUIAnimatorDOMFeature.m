@interface SKUIAnimatorDOMFeature
+ (id)featureName;
+ (id)makeFeatureJSObjectForFeature:(id)a3;
+ (void)featureName;
- (IKAppContext)appContext;
- (SKUIAnimatorDOMFeature)initWithDOMNode:(id)a3 featureName:(id)a4;
- (SKUIAnimatorDOMFeatureDelegate)delegate;
@end

@implementation SKUIAnimatorDOMFeature

- (SKUIAnimatorDOMFeature)initWithDOMNode:(id)a3 featureName:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIAnimatorDOMFeature *)v8 initWithDOMNode:v9 featureName:v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v21.receiver = self;
  v21.super_class = SKUIAnimatorDOMFeature;
  v16 = [(SKUIAnimatorDOMFeature *)&v21 init];
  if (v16)
  {
    v17 = [v6 appContext];
    objc_storeWeak(&v16->_appContext, v17);

    v18 = [v7 copy];
    featureName = v16->_featureName;
    v16->_featureName = v18;
  }

  return v16;
}

+ (id)makeFeatureJSObjectForFeature:(id)a3
{
  v3 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIAnimatorDOMFeature *)v4 makeFeatureJSObjectForFeature:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = [SKJSUIAnimatorDOMFeature alloc];
  v13 = [v3 appContext];
  v14 = [(SKJSUIAnimatorDOMFeature *)v12 initWithAppContext:v13 DOMFeature:v3];

  return v14;
}

+ (id)featureName
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    +[SKUIAnimatorDOMFeature featureName];
  }

  return @"animator";
}

- (IKAppContext)appContext
{
  WeakRetained = objc_loadWeakRetained(&self->_appContext);

  return WeakRetained;
}

- (SKUIAnimatorDOMFeatureDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (void)featureName
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIAnimatorDOMFeature featureName]";
}

@end