@interface PKDiscoveryShelfView
+ (id)viewForShelf:(id)shelf discoveryCardViewDelegate:(id)delegate itemIdentifier:(id)identifier;
- (PKDiscoveryShelfView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)contentInsets;
@end

@implementation PKDiscoveryShelfView

+ (id)viewForShelf:(id)shelf discoveryCardViewDelegate:(id)delegate itemIdentifier:(id)identifier
{
  shelfCopy = shelf;
  delegateCopy = delegate;
  identifierCopy = identifier;
  type = [shelfCopy type];
  v11 = 0;
  if (type <= 2)
  {
    if (type != 1)
    {
      if (type != 2)
      {
        goto LABEL_16;
      }

      v12 = shelfCopy;
      media = [v12 media];
      type2 = [media type];

      v15 = off_1E8004F60;
      if (type2 != 2)
      {
        v15 = off_1E8004F50;
      }

      v11 = [objc_alloc(*v15) initWithShelf:v12];

      goto LABEL_13;
    }

    v16 = PKDiscoveryTextBlockShelfView;
    goto LABEL_12;
  }

  if (type == 3)
  {
    v16 = PKDiscoverySpacerShelfView;
LABEL_12:
    v11 = [[v16 alloc] initWithShelf:shelfCopy];
    goto LABEL_13;
  }

  if (type != 4)
  {
    goto LABEL_16;
  }

  v11 = [[PKDiscoveryCallToActionShelfView alloc] initWithShelf:shelfCopy];
  [(PKDiscoveryCallToActionShelfView *)v11 setDelegate:delegateCopy];
LABEL_13:
  if (identifierCopy && v11)
  {
    [(PKDiscoveryShelfView *)v11 setItemIdentifier:identifierCopy];
  }

LABEL_16:

  return v11;
}

- (PKDiscoveryShelfView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PKDiscoveryShelfView;
  v3 = [(PKDiscoveryShelfView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(PKDiscoveryShelfView *)v3 setBackgroundColor:systemBackgroundColor];
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