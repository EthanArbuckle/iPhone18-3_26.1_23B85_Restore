@interface ProductKitCatalog
- (ProductKitCatalog)init;
- (void)updateCatalogWithCompletionHandler:(id)handler;
- (void)watchBandFilesForFeatureWithURL:(id)l featureString:(id)string completionHandler:(id)handler;
- (void)watchBandFilesForFeatureWithURL:(id)l featureString:(id)string variant:(id)variant completionHandler:(id)handler;
- (void)watchBandImageForFeatureWithURL:(id)l featureString:(id)string completionHandler:(id)handler;
- (void)watchBandImageForFeatureWithURL:(id)l featureString:(id)string variant:(id)variant completionHandler:(id)handler;
@end

@implementation ProductKitCatalog

- (ProductKitCatalog)init
{
  v6.receiver = self;
  v6.super_class = ProductKitCatalog;
  v2 = [(ProductKitCatalog *)&v6 init];
  v3 = objc_alloc_init(ProductKitCatalogInternal);
  underlyingObject = v2->_underlyingObject;
  v2->_underlyingObject = v3;

  return v2;
}

- (void)updateCatalogWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  underlyingObject = [(ProductKitCatalog *)self underlyingObject];
  [underlyingObject updateCatalogWithCompletionHandler:handlerCopy];
}

- (void)watchBandFilesForFeatureWithURL:(id)l featureString:(id)string completionHandler:(id)handler
{
  handlerCopy = handler;
  stringCopy = string;
  lCopy = l;
  underlyingObject = [(ProductKitCatalog *)self underlyingObject];
  [underlyingObject watchBandFilesForFeatureWithURL:lCopy featureString:stringCopy variant:0 completionHandler:handlerCopy];
}

- (void)watchBandImageForFeatureWithURL:(id)l featureString:(id)string completionHandler:(id)handler
{
  handlerCopy = handler;
  stringCopy = string;
  lCopy = l;
  underlyingObject = [(ProductKitCatalog *)self underlyingObject];
  [underlyingObject watchBandImageForFeatureWithURL:lCopy featureString:stringCopy variant:0 completionHandler:handlerCopy];
}

- (void)watchBandFilesForFeatureWithURL:(id)l featureString:(id)string variant:(id)variant completionHandler:(id)handler
{
  handlerCopy = handler;
  variantCopy = variant;
  stringCopy = string;
  lCopy = l;
  underlyingObject = [(ProductKitCatalog *)self underlyingObject];
  [underlyingObject watchBandFilesForFeatureWithURL:lCopy featureString:stringCopy variant:variantCopy completionHandler:handlerCopy];
}

- (void)watchBandImageForFeatureWithURL:(id)l featureString:(id)string variant:(id)variant completionHandler:(id)handler
{
  handlerCopy = handler;
  variantCopy = variant;
  stringCopy = string;
  lCopy = l;
  underlyingObject = [(ProductKitCatalog *)self underlyingObject];
  [underlyingObject watchBandImageForFeatureWithURL:lCopy featureString:stringCopy variant:variantCopy completionHandler:handlerCopy];
}

@end