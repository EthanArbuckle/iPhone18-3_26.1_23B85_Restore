@interface ProductKitCatalog
- (ProductKitCatalog)init;
- (void)updateCatalogWithCompletionHandler:(id)a3;
- (void)watchBandFilesForFeatureWithURL:(id)a3 featureString:(id)a4 completionHandler:(id)a5;
- (void)watchBandFilesForFeatureWithURL:(id)a3 featureString:(id)a4 variant:(id)a5 completionHandler:(id)a6;
- (void)watchBandImageForFeatureWithURL:(id)a3 featureString:(id)a4 completionHandler:(id)a5;
- (void)watchBandImageForFeatureWithURL:(id)a3 featureString:(id)a4 variant:(id)a5 completionHandler:(id)a6;
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

- (void)updateCatalogWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(ProductKitCatalog *)self underlyingObject];
  [v5 updateCatalogWithCompletionHandler:v4];
}

- (void)watchBandFilesForFeatureWithURL:(id)a3 featureString:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(ProductKitCatalog *)self underlyingObject];
  [v11 watchBandFilesForFeatureWithURL:v10 featureString:v9 variant:0 completionHandler:v8];
}

- (void)watchBandImageForFeatureWithURL:(id)a3 featureString:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(ProductKitCatalog *)self underlyingObject];
  [v11 watchBandImageForFeatureWithURL:v10 featureString:v9 variant:0 completionHandler:v8];
}

- (void)watchBandFilesForFeatureWithURL:(id)a3 featureString:(id)a4 variant:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(ProductKitCatalog *)self underlyingObject];
  [v14 watchBandFilesForFeatureWithURL:v13 featureString:v12 variant:v11 completionHandler:v10];
}

- (void)watchBandImageForFeatureWithURL:(id)a3 featureString:(id)a4 variant:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(ProductKitCatalog *)self underlyingObject];
  [v14 watchBandImageForFeatureWithURL:v13 featureString:v12 variant:v11 completionHandler:v10];
}

@end