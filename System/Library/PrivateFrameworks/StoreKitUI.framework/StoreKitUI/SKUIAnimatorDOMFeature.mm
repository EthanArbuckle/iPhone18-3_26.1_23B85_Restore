@interface SKUIAnimatorDOMFeature
+ (id)featureName;
+ (id)makeFeatureJSObjectForFeature:(id)feature;
+ (void)featureName;
- (IKAppContext)appContext;
- (SKUIAnimatorDOMFeature)initWithDOMNode:(id)node featureName:(id)name;
- (SKUIAnimatorDOMFeatureDelegate)delegate;
@end

@implementation SKUIAnimatorDOMFeature

- (SKUIAnimatorDOMFeature)initWithDOMNode:(id)node featureName:(id)name
{
  nodeCopy = node;
  nameCopy = name;
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
    appContext = [nodeCopy appContext];
    objc_storeWeak(&v16->_appContext, appContext);

    v18 = [nameCopy copy];
    featureName = v16->_featureName;
    v16->_featureName = v18;
  }

  return v16;
}

+ (id)makeFeatureJSObjectForFeature:(id)feature
{
  featureCopy = feature;
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
  appContext = [featureCopy appContext];
  v14 = [(SKJSUIAnimatorDOMFeature *)v12 initWithAppContext:appContext DOMFeature:featureCopy];

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