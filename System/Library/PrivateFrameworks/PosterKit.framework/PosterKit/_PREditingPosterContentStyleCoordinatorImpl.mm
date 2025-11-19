@interface _PREditingPosterContentStyleCoordinatorImpl
- (_PREditingPosterContentStyleCoordinatorImpl)initWithStyle:(id)a3;
- (id)itemViewWithGlassStyleApplied:(BOOL)a3;
- (id)variationSupportingStyle;
- (void)setVariation:(double)a3 glassStyleApplied:(BOOL)a4;
@end

@implementation _PREditingPosterContentStyleCoordinatorImpl

- (_PREditingPosterContentStyleCoordinatorImpl)initWithStyle:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _PREditingPosterContentStyleCoordinatorImpl;
  v6 = [(_PREditingPosterContentStyleCoordinatorImpl *)&v10 init];
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
  v3 = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
  v4 = [v3 allowsVariation];

  if (v4)
  {
    v5 = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setVariation:(double)a3 glassStyleApplied:(BOOL)a4
{
  v6 = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
  v7 = [v6 allowsVariation];

  if (v7 && self->_variation != a3)
  {
    self->_variation = a3;
    v9 = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
    v8 = [v9 copyWithVariation:a3];
    [(_PREditingPosterContentStyleCoordinatorImpl *)self setStyle:v8];
  }
}

- (id)itemViewWithGlassStyleApplied:(BOOL)a3
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