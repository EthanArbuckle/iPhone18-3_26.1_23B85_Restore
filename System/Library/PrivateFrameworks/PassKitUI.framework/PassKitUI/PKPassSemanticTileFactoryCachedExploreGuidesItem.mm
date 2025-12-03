@interface PKPassSemanticTileFactoryCachedExploreGuidesItem
- (BOOL)beginContentAccess;
- (PKPassSemanticTileFactoryCachedExploreGuidesItem)initWithResponse:(id)response;
- (void)discardContentIfPossible;
- (void)endContentAccess;
@end

@implementation PKPassSemanticTileFactoryCachedExploreGuidesItem

- (PKPassSemanticTileFactoryCachedExploreGuidesItem)initWithResponse:(id)response
{
  responseCopy = response;
  if (responseCopy)
  {
    v10.receiver = self;
    v10.super_class = PKPassSemanticTileFactoryCachedExploreGuidesItem;
    v6 = [(PKPassSemanticTileFactoryCachedExploreGuidesItem *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_response, response);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)beginContentAccess
{
  response = self->_response;
  if (response)
  {
    ++self->_counter;
  }

  return response != 0;
}

- (void)endContentAccess
{
  counter = self->_counter;
  if (counter)
  {
    self->_counter = counter - 1;
  }
}

- (void)discardContentIfPossible
{
  if (!self->_counter)
  {
    response = self->_response;
    self->_response = 0;
  }
}

@end