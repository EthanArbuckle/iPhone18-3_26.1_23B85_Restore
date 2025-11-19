@interface PKWebServiceStaticContentDataSourceFeature
- (PKWebServiceStaticContentDataSourceFeature)initWithDictionary:(id)a3 region:(id)a4;
- (id)createProductsRequestWithIsFetchBlocked:(BOOL *)a3;
@end

@implementation PKWebServiceStaticContentDataSourceFeature

- (PKWebServiceStaticContentDataSourceFeature)initWithDictionary:(id)a3 region:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = PKWebServiceStaticContentDataSourceFeature;
  v7 = [(PKWebServiceRegionFeature *)&v11 initWithFeatureType:14 dictionary:v6 region:a4];
  if (v7)
  {
    v7->_enabled = [v6 PKBoolForKey:@"enabled"];
    v7->_blockStaticContentFetching = [v6 PKBoolForKey:@"blockStaticContentFetching"];
    v8 = [v6 PKURLForKey:@"staticContentURL"];
    contentURL = v7->_contentURL;
    v7->_contentURL = v8;
  }

  return v7;
}

- (id)createProductsRequestWithIsFetchBlocked:(BOOL *)a3
{
  blockStaticContentFetching = self->_blockStaticContentFetching;
  if (a3)
  {
    *a3 = blockStaticContentFetching;
  }

  v5 = 0;
  if (self->_contentURL && !blockStaticContentFetching)
  {
    v5 = [[PKPaymentCommonAvailableProductsRequest alloc] initWithContentURL:self->_contentURL];
  }

  return v5;
}

@end