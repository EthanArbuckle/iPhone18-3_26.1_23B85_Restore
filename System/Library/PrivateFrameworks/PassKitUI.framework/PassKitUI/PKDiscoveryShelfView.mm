@interface PKDiscoveryShelfView
+ (id)viewForShelf:(id)a3 discoveryCardViewDelegate:(id)a4 itemIdentifier:(id)a5;
- (PKDiscoveryShelfView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)contentInsets;
@end

@implementation PKDiscoveryShelfView

+ (id)viewForShelf:(id)a3 discoveryCardViewDelegate:(id)a4 itemIdentifier:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 type];
  v11 = 0;
  if (v10 <= 2)
  {
    if (v10 != 1)
    {
      if (v10 != 2)
      {
        goto LABEL_16;
      }

      v12 = v7;
      v13 = [v12 media];
      v14 = [v13 type];

      v15 = off_1E8004F60;
      if (v14 != 2)
      {
        v15 = off_1E8004F50;
      }

      v11 = [objc_alloc(*v15) initWithShelf:v12];

      goto LABEL_13;
    }

    v16 = PKDiscoveryTextBlockShelfView;
    goto LABEL_12;
  }

  if (v10 == 3)
  {
    v16 = PKDiscoverySpacerShelfView;
LABEL_12:
    v11 = [[v16 alloc] initWithShelf:v7];
    goto LABEL_13;
  }

  if (v10 != 4)
  {
    goto LABEL_16;
  }

  v11 = [[PKDiscoveryCallToActionShelfView alloc] initWithShelf:v7];
  [(PKDiscoveryCallToActionShelfView *)v11 setDelegate:v8];
LABEL_13:
  if (v9 && v11)
  {
    [(PKDiscoveryShelfView *)v11 setItemIdentifier:v9];
  }

LABEL_16:

  return v11;
}

- (PKDiscoveryShelfView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PKDiscoveryShelfView;
  v3 = [(PKDiscoveryShelfView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(PKDiscoveryShelfView *)v3 setBackgroundColor:v4];
  }

  return v3;
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end