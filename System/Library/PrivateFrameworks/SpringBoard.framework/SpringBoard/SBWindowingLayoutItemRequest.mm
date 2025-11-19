@interface SBWindowingLayoutItemRequest
- (SBWindowingLayoutItemRequest)init;
- (id)debugDescription;
@end

@implementation SBWindowingLayoutItemRequest

- (SBWindowingLayoutItemRequest)init
{
  v3.receiver = self;
  v3.super_class = SBWindowingLayoutItemRequest;
  result = [(SBWindowingLayoutItemRequest *)&v3 init];
  if (result)
  {
    result->_layoutRole = 0;
    *&result->_size = xmmword_21F8A6190;
    result->_tileRole = 0;
    result->_wantsFocus = 0;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SBWindowingLayoutItemRequest *)self bundleID];
  v6 = SBStringFromDisplayItemPreferredTileRole(self->_tileRole);
  v7 = NSStringFromBOOL();
  v8 = [v3 stringWithFormat:@"<%@: %p> bundleIdentifier:%@ tileRole:%@ wantsFocus:%@", v4, self, v5, v6, v7];

  return v8;
}

@end