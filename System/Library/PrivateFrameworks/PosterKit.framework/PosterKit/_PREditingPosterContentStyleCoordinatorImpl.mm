@interface _PREditingPosterContentStyleCoordinatorImpl
- (_PREditingPosterContentStyleCoordinatorImpl)initWithStyle:(id)style;
- (id)itemViewWithGlassStyleApplied:(BOOL)applied;
- (id)variationSupportingStyle;
- (void)setVariation:(double)variation glassStyleApplied:(BOOL)applied;
@end

@implementation _PREditingPosterContentStyleCoordinatorImpl

- (_PREditingPosterContentStyleCoordinatorImpl)initWithStyle:(id)style
{
  styleCopy = style;
  v10.receiver = self;
  v10.super_class = _PREditingPosterContentStyleCoordinatorImpl;
  v6 = [(_PREditingPosterContentStyleCoordinatorImpl *)&v10 init];
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
  style = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
  allowsVariation = [style allowsVariation];

  if (allowsVariation)
  {
    style2 = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
  }

  else
  {
    style2 = 0;
  }

  return style2;
}

- (void)setVariation:(double)variation glassStyleApplied:(BOOL)applied
{
  style = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
  allowsVariation = [style allowsVariation];

  if (allowsVariation && self->_variation != variation)
  {
    self->_variation = variation;
    style2 = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
    v8 = [style2 copyWithVariation:variation];
    [(_PREditingPosterContentStyleCoordinatorImpl *)self setStyle:v8];
  }
}

- (id)itemViewWithGlassStyleApplied:(BOOL)applied
{
  itemView = self->_itemView;
  if (!itemView)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 50.0, 50.0}];
    v6 = self->_itemView;
    self->_itemView = v5;

    itemView = self->_itemView;
  }

  return itemView;
}

@end