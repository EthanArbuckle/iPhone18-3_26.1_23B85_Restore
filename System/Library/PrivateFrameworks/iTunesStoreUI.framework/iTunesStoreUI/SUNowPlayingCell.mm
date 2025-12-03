@interface SUNowPlayingCell
- (void)layoutSubviews;
- (void)setAccessoryType:(int64_t)type;
- (void)setAccessoryView:(id)view;
- (void)setHighlightsOnlyContentView:(BOOL)view;
@end

@implementation SUNowPlayingCell

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SUNowPlayingCell;
  [(SUTableCell *)&v4 layoutSubviews];
  if ([(SUItemOfferButton *)self->super._itemOfferButton superview]== self)
  {
    itemOfferButton = self->super._itemOfferButton;
    if (itemOfferButton != [(SUNowPlayingCell *)self accessoryView])
    {
      [(SUItemOfferButton *)self->super._itemOfferButton frame];
      [(SUItemOfferButton *)self->super._itemOfferButton setFrame:112.0, 72.0];
    }
  }
}

- (void)setAccessoryType:(int64_t)type
{
  v3.receiver = self;
  v3.super_class = SUNowPlayingCell;
  [(SUNowPlayingCell *)&v3 setAccessoryType:1];
}

- (void)setAccessoryView:(id)view
{
  itemOfferButton = self->super._itemOfferButton;
  if (itemOfferButton == view)
  {
    [(SUItemOfferButton *)itemOfferButton setAnimationHorizontalAlignment:1];
    v6.receiver = self;
    v6.super_class = SUNowPlayingCell;
    [(SUNowPlayingCell *)&v6 setAccessoryView:0];
    [(SUNowPlayingCell *)self addSubview:view];
  }

  else
  {
    [(SUItemOfferButton *)itemOfferButton removeFromSuperview];
    v7.receiver = self;
    v7.super_class = SUNowPlayingCell;
    [(SUNowPlayingCell *)&v7 setAccessoryView:view];
  }
}

- (void)setHighlightsOnlyContentView:(BOOL)view
{
  v3.receiver = self;
  v3.super_class = SUNowPlayingCell;
  [(SUTableCell *)&v3 setHighlightsOnlyContentView:0];
}

@end