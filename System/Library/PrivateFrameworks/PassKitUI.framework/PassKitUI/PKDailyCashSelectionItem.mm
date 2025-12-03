@interface PKDailyCashSelectionItem
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation PKDailyCashSelectionItem

- (unint64_t)hash
{
  v6[1] = *MEMORY[0x1E69E9840];
  identifier = [(PKDailyCashSelectionItem *)self identifier];
  v6[0] = identifier;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v4 = PKCombinedHash();

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && self->_redemptionType == equalCopy[1] && self->_hasAccount == *(equalCopy + 24) && self->_hasPendingApplication == *(equalCopy + 25) && self->_loading == *(equalCopy + 26) && self->_selected == *(equalCopy + 27) && self->_hasRedeemed == *(equalCopy + 28) && self->_accountState == equalCopy[4])
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