@interface PKDailyCashSelectionItem
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation PKDailyCashSelectionItem

- (unint64_t)hash
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(PKDailyCashSelectionItem *)self identifier];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v4 = PKCombinedHash();

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && self->_redemptionType == v4[1] && self->_hasAccount == *(v4 + 24) && self->_hasPendingApplication == *(v4 + 25) && self->_loading == *(v4 + 26) && self->_selected == *(v4 + 27) && self->_hasRedeemed == *(v4 + 28) && self->_accountState == v4[4])
  {
    v5 = PKEqualObjects();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end