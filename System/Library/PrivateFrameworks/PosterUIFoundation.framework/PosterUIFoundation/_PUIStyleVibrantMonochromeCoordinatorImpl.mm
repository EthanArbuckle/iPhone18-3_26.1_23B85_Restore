@interface _PUIStyleVibrantMonochromeCoordinatorImpl
- (double)itemViewLuminance;
- (id)itemView;
- (void)setContentsLuminance:(double)luminance;
@end

@implementation _PUIStyleVibrantMonochromeCoordinatorImpl

- (void)setContentsLuminance:(double)luminance
{
  v8.receiver = self;
  v8.super_class = _PUIStyleVibrantMonochromeCoordinatorImpl;
  [(PUIStyleUICoordinatorImpl *)&v8 setContentsLuminance:?];
  v5 = [[PUIStyleVibrantMonochrome alloc] initWithBackgroundType:luminance <= 0.9];
  [(PUIStyleUICoordinatorImpl *)self setStyle:v5];
  itemView = self->_itemView;
  effectiveColor = [(PUIStyleVibrantMonochrome *)v5 effectiveColor];
  [(UIView *)itemView setBackgroundColor:effectiveColor];
}

- (double)itemViewLuminance
{
  style = [(PUIStyleUICoordinatorImpl *)self style];
  if ([style backgroundType])
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  return v3;
}

- (id)itemView
{
  itemView = self->_itemView;
  if (!itemView)
  {
    style = [(PUIStyleUICoordinatorImpl *)self style];
    v5 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 50.0, 50.0}];
    effectiveColor = [style effectiveColor];
    [(UIView *)v5 setBackgroundColor:effectiveColor];
    v7 = self->_itemView;
    self->_itemView = v5;

    itemView = self->_itemView;
  }

  return itemView;
}

@end