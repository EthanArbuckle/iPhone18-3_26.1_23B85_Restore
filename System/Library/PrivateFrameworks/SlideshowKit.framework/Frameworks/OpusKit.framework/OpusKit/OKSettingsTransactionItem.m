@interface OKSettingsTransactionItem
- (OKSettingsTransactionItem)init;
- (void)dealloc;
@end

@implementation OKSettingsTransactionItem

- (OKSettingsTransactionItem)init
{
  v3.receiver = self;
  v3.super_class = OKSettingsTransactionItem;
  result = [(OKSettingsTransactionItem *)&v3 init];
  if (result)
  {
    result->_updateBlock = 0;
    result->_key = 0;
  }

  return result;
}

- (void)dealloc
{
  updateBlock = self->_updateBlock;
  if (updateBlock)
  {

    self->_updateBlock = 0;
  }

  key = self->_key;
  if (key)
  {

    self->_key = 0;
  }

  v5.receiver = self;
  v5.super_class = OKSettingsTransactionItem;
  [(OKSettingsTransactionItem *)&v5 dealloc];
}

@end