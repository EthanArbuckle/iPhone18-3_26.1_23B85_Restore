@interface PUIStyleUICoordinatorImpl
- (PUIStyleUICoordinatorImpl)initWithStyle:(id)a3;
- (UIView)itemView;
- (id)variationSupportingStyle;
- (void)setVariation:(double)a3 updateStyle:(BOOL)a4;
@end

@implementation PUIStyleUICoordinatorImpl

- (PUIStyleUICoordinatorImpl)initWithStyle:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PUIStyleUICoordinatorImpl;
  v6 = [(PUIStyleUICoordinatorImpl *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_style, a3);
    if ([v5 allowsVariation])
    {
      [v5 variation];
      v7->_variation = v8;
    }
  }

  return v7;
}

- (id)variationSupportingStyle
{
  v3 = [(PUIStyleUICoordinatorImpl *)self style];
  v4 = [v3 allowsVariation];

  if (v4)
  {
    v5 = [(PUIStyleUICoordinatorImpl *)self style];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setVariation:(double)a3 updateStyle:(BOOL)a4
{
  v4 = a4;
  v7 = [(PUIStyleUICoordinatorImpl *)self style];
  v8 = [v7 allowsVariation];

  if (v8)
  {
    if (self->_variation != a3)
    {
      self->_variation = a3;
      if (v4)
      {
        v10 = [(PUIStyleUICoordinatorImpl *)self style];
        v9 = [v10 copyWithVariation:a3];
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