@interface PKCellAccessoryLoadingIndicator
+ (id)accessory;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKCellAccessoryLoadingIndicator)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation PKCellAccessoryLoadingIndicator

+ (id)accessory
{
  v2 = [PKCellAccessoryLoadingIndicator alloc];
  v3 = [(PKCellAccessoryLoadingIndicator *)v2 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v4 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v3 placement:1];

  return v4;
}

- (PKCellAccessoryLoadingIndicator)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = PKCellAccessoryLoadingIndicator;
  v3 = [(PKCellAccessoryLoadingIndicator *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    loadingIndicator = v3->_loadingIndicator;
    v3->_loadingIndicator = v4;

    [(UIActivityIndicatorView *)v3->_loadingIndicator startAnimating];
    [(PKCellAccessoryLoadingIndicator *)v3 addSubview:v3->_loadingIndicator];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UIActivityIndicatorView *)self->_loadingIndicator sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  [(PKCellAccessoryLoadingIndicator *)self bounds];
  v4 = v3;
  v6 = v5;
  [(UIActivityIndicatorView *)self->_loadingIndicator sizeToFit];
  [(UIActivityIndicatorView *)self->_loadingIndicator frame];
  loadingIndicator = self->_loadingIndicator;

  [(UIActivityIndicatorView *)loadingIndicator setFrame:v4 - v7, (v6 - v8) * 0.5];
}

@end