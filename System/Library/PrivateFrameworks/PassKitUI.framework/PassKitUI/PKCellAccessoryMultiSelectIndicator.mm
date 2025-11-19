@interface PKCellAccessoryMultiSelectIndicator
- (PKCellAccessoryMultiSelectIndicator)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PKCellAccessoryMultiSelectIndicator

- (PKCellAccessoryMultiSelectIndicator)init
{
  v3 = objc_alloc_init(PKMultiSelectIndicatorView);
  content = self->_content;
  self->_content = v3;

  v5 = self->_content;
  v7.receiver = self;
  v7.super_class = PKCellAccessoryMultiSelectIndicator;
  return [(PKCellAccessoryMultiSelectIndicator *)&v7 initWithCustomView:v5 placement:0];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = PKCellAccessoryMultiSelectIndicator;
  v4 = [(UICellAccessory *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 11, self->_content);
  return v4;
}

@end