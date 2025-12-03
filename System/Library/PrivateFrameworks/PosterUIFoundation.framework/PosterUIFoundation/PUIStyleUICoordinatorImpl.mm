@interface PUIStyleUICoordinatorImpl
- (PUIStyleUICoordinatorImpl)initWithStyle:(id)style;
- (UIView)itemView;
- (id)variationSupportingStyle;
- (void)setVariation:(double)variation updateStyle:(BOOL)style;
@end

@implementation PUIStyleUICoordinatorImpl

- (PUIStyleUICoordinatorImpl)initWithStyle:(id)style
{
  styleCopy = style;
  v10.receiver = self;
  v10.super_class = PUIStyleUICoordinatorImpl;
  v6 = [(PUIStyleUICoordinatorImpl *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_style, style);
    if ([styleCopy allowsVariation])
    {
      [styleCopy variation];
      v7->_variation = v8;
    }
  }

  return v7;
}

- (id)variationSupportingStyle
{
  style = [(PUIStyleUICoordinatorImpl *)self style];
  allowsVariation = [style allowsVariation];

  if (allowsVariation)
  {
    style2 = [(PUIStyleUICoordinatorImpl *)self style];
  }

  else
  {
    style2 = 0;
  }

  return style2;
}

- (void)setVariation:(double)variation updateStyle:(BOOL)style
{
  styleCopy = style;
  style = [(PUIStyleUICoordinatorImpl *)self style];
  allowsVariation = [style allowsVariation];

  if (allowsVariation)
  {
    if (self->_variation != variation)
    {
      self->_variation = variation;
      if (styleCopy)
      {
        style2 = [(PUIStyleUICoordinatorImpl *)self style];
        v9 = [style2 copyWithVariation:variation];
        [(PUIStyleUICoordinatorImpl *)self setStyle:v9];
      }
    }
  }
}

- (UIView)itemView
{
  itemView = self->_itemView;
  if (!itemView)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 50.0, 50.0}];
    v5 = self->_itemView;
    self->_itemView = v4;

    itemView = self->_itemView;
  }

  return itemView;
}

@end