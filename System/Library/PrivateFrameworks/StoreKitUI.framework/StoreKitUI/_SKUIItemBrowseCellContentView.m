@interface _SKUIItemBrowseCellContentView
- (_SKUIItemBrowseCellContentView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
- (void)setBackgroundColor:(id)a3;
@end

@implementation _SKUIItemBrowseCellContentView

- (_SKUIItemBrowseCellContentView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _SKUIItemBrowseCellContentView;
  v3 = [(_SKUIItemBrowseCellContentView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] clearColor];
    [(_SKUIItemBrowseCellContentView *)v3 setBackgroundColor:v4];

    [(_SKUIItemBrowseCellContentView *)v3 setContentMode:7];
  }

  return v3;
}

- (void)drawRect:(CGRect)a3
{
  subtitleLabel = self->_subtitleLabel;
  [(UILabel *)subtitleLabel frame:a3.origin.x];
  [(UILabel *)subtitleLabel drawTextInRect:?];
  indexNumberLabel = self->_indexNumberLabel;
  [(UILabel *)indexNumberLabel frame];
  [(UILabel *)indexNumberLabel drawTextInRect:?];
  titleLabel = self->_titleLabel;
  [(UILabel *)titleLabel frame];
  [(UILabel *)titleLabel drawTextInRect:?];
  userRatingLabel = self->_userRatingLabel;
  [(UILabel *)userRatingLabel frame];
  [(UILabel *)userRatingLabel drawTextInRect:?];
  if (([(SKUICellImageView *)self->_userRatingImageView isHidden]& 1) == 0)
  {
    v8 = [(SKUICellImageView *)self->_userRatingImageView image];
    [(SKUICellImageView *)self->_userRatingImageView frame];
    [v8 drawInRect:?];
  }
}

- (void)setBackgroundColor:(id)a3
{
  subtitleLabel = self->_subtitleLabel;
  v5 = a3;
  [(UILabel *)subtitleLabel setBackgroundColor:v5];
  [(UILabel *)self->_indexNumberLabel setBackgroundColor:v5];
  [(UILabel *)self->_titleLabel setBackgroundColor:v5];
  [(SKUICellImageView *)self->_userRatingImageView setBackgroundColor:v5];
  [(UILabel *)self->_userRatingLabel setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = _SKUIItemBrowseCellContentView;
  [(_SKUIItemBrowseCellContentView *)&v6 setBackgroundColor:v5];
}

@end