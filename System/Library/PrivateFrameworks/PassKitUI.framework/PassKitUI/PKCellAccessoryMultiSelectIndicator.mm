@interface PKCellAccessoryMultiSelectIndicator
- (PKCellAccessoryMultiSelectIndicator)init;
- (id)copyWithZone:(_NSZone *)zone;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = PKCellAccessoryMultiSelectIndicator;
  v4 = [(UICellAccessory *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 11, self->_content);
  return v4;
}

@end