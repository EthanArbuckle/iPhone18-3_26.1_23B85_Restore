@interface PKCellAccessoryLoadingIndicator
+ (id)accessory;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKCellAccessoryLoadingIndicator)initWithFrame:(CGRect)a3;
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

- (PKCellAccessoryLoadingIndicator)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = PKCellAccessoryLoadingIndicator;
  v3 = [(PKCellAccessoryLoadingIndicator *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UIActivityIndicatorView *)self->_loadingIndicator sizeThatFits:a3.width, a3.height];
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