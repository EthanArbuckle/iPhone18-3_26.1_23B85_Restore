@interface VUIListFloatingCollectionViewCell
- (id)vuiContentView;
- (void)setBackgroundColor:(id)color;
- (void)setHighlightedBackgroundColor:(id)color;
@end

@implementation VUIListFloatingCollectionViewCell

- (id)vuiContentView
{
  v4.receiver = self;
  v4.super_class = VUIListFloatingCollectionViewCell;
  vuiContentView = [(VUIBaseCollectionViewCell *)&v4 vuiContentView];

  return vuiContentView;
}

- (void)setBackgroundColor:(id)color
{
  v8.receiver = self;
  v8.super_class = VUIListFloatingCollectionViewCell;
  colorCopy = color;
  [(VUIBaseCollectionViewCell *)&v8 setBackgroundColor:colorCopy];
  v5 = [(VUIListFloatingCollectionViewCell *)self backgroundView:v8.receiver];

  if (!v5)
  {
    v6 = objc_opt_new();
    [(VUIListFloatingCollectionViewCell *)self setBackgroundView:v6];
  }

  backgroundView = [(VUIListFloatingCollectionViewCell *)self backgroundView];
  [backgroundView setBackgroundColor:colorCopy];
}

- (void)setHighlightedBackgroundColor:(id)color
{
  v8.receiver = self;
  v8.super_class = VUIListFloatingCollectionViewCell;
  colorCopy = color;
  [(VUIBaseCollectionViewCell *)&v8 setHighlightedBackgroundColor:colorCopy];
  v5 = [(VUIListFloatingCollectionViewCell *)self selectedBackgroundView:v8.receiver];

  if (!v5)
  {
    v6 = objc_opt_new();
    [(VUIListFloatingCollectionViewCell *)self setSelectedBackgroundView:v6];
  }

  selectedBackgroundView = [(VUIListFloatingCollectionViewCell *)self selectedBackgroundView];
  [selectedBackgroundView setBackgroundColor:colorCopy];
}

@end