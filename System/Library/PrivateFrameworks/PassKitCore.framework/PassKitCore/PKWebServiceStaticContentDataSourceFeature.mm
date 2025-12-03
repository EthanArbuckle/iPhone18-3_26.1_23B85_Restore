@interface PKWebServiceStaticContentDataSourceFeature
- (PKWebServiceStaticContentDataSourceFeature)initWithDictionary:(id)dictionary region:(id)region;
- (id)createProductsRequestWithIsFetchBlocked:(BOOL *)blocked;
@end

@implementation PKWebServiceStaticContentDataSourceFeature

- (PKWebServiceStaticContentDataSourceFeature)initWithDictionary:(id)dictionary region:(id)region
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = PKWebServiceStaticContentDataSourceFeature;
  v7 = [(PKWebServiceRegionFeature *)&v11 initWithFeatureType:14 dictionary:dictionaryCopy region:region];
  if (v7)
  {
    v7->_enabled = [dictionaryCopy PKBoolForKey:@"enabled"];
    v7->_blockStaticContentFetching = [dictionaryCopy PKBoolForKey:@"blockStaticContentFetching"];
    v8 = [dictionaryCopy PKURLForKey:@"staticContentURL"];
    contentURL = v7->_contentURL;
    v7->_contentURL = v8;
  }

  return v7;
}

- (id)createProductsRequestWithIsFetchBlocked:(BOOL *)blocked
{
  blockStaticContentFetching = self->_blockStaticContentFetching;
  if (blocked)
  {
    *blocked = blockStaticContentFetching;
  }

  v5 = 0;
  if (self->_contentURL && !blockStaticContentFetching)
  {
    v5 = [[PKPaymentCommonAvailableProductsRequest alloc] initWithContentURL:self->_contentURL];
  }

  return v5;
}

@end