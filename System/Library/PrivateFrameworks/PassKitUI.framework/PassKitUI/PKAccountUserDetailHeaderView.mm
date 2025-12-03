@interface PKAccountUserDetailHeaderView
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKAccountUserDetailHeaderView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setContactForActions:(id)actions;
- (void)setContactForDisplay:(id)display;
@end

@implementation PKAccountUserDetailHeaderView

- (PKAccountUserDetailHeaderView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = PKAccountUserDetailHeaderView;
  v3 = [(PKAccountUserDetailHeaderView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[PKAvatarHeaderView alloc] initWithContact:0 counterpartHandle:0];
    avatarHeaderView = v3->_avatarHeaderView;
    v3->_avatarHeaderView = v4;

    [(PKAccountUserDetailHeaderView *)v3 addSubview:v3->_avatarHeaderView];
    v6 = objc_alloc_init(getCNContactInlineActionsViewControllerClass());
    actionsViewController = v3->_actionsViewController;
    v3->_actionsViewController = v6;

    [(CNContactInlineActionsViewController *)v3->_actionsViewController setDisplaysTitles:1];
    [(CNContactInlineActionsViewController *)v3->_actionsViewController setDisplaysUnavailableActionTypes:1];
    [(CNContactInlineActionsViewController *)v3->_actionsViewController setViewStyle:7];
    view = [(CNContactInlineActionsViewController *)v3->_actionsViewController view];
    [view setAccessibilityIdentifier:*MEMORY[0x1E69B93D0]];
    [(PKAccountUserDetailHeaderView *)v3 addSubview:view];
    [(PKAccountUserDetailHeaderView *)v3 setAccessibilityIdentifier:*MEMORY[0x1E69B9840]];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v6 = PKUserInterfaceIdiomSupportsLargeLayouts();
  v7 = -20.0;
  if (v6)
  {
    v7 = -28.0;
  }

  v8 = width + v7 * 2.0;
  [(PKAvatarHeaderView *)self->_avatarHeaderView sizeThatFits:v8, height];
  v10 = v9;
  view = [(CNContactInlineActionsViewController *)self->_actionsViewController view];
  [view sizeThatFits:{v8, height}];
  v13 = v12;

  v14 = v10 + v13 + 15.0;
  v15 = width;
  result.height = v14;
  result.width = v15;
  return result;
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = PKAccountUserDetailHeaderView;
  [(PKAccountUserDetailHeaderView *)&v17 layoutSubviews];
  [(PKAccountUserDetailHeaderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  remainder.origin.x = v3;
  remainder.origin.y = v5;
  remainder.size.width = v7;
  remainder.size.height = v9;
  memset(&v15, 0, sizeof(v15));
  if (PKUserInterfaceIdiomSupportsLargeLayouts())
  {
    v11 = 28.0;
  }

  else
  {
    v11 = 20.0;
  }

  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  CGRectDivide(v18, &v15, &remainder, v11, CGRectMinXEdge);
  CGRectDivide(remainder, &v15, &remainder, v11, CGRectMaxXEdge);
  [(PKAvatarHeaderView *)self->_avatarHeaderView sizeThatFits:remainder.size.width, remainder.size.height];
  CGRectDivide(remainder, &v15, &remainder, v12, CGRectMinYEdge);
  [(PKAvatarHeaderView *)self->_avatarHeaderView setFrame:*&v15.origin, *&v15.size];
  CGRectDivide(remainder, &v15, &remainder, 15.0, CGRectMinYEdge);
  view = [(CNContactInlineActionsViewController *)self->_actionsViewController view];
  [view sizeThatFits:{remainder.size.width, remainder.size.height}];
  CGRectDivide(remainder, &v15, &remainder, v14, CGRectMinYEdge);
  [view setFrame:{*&v15.origin, *&v15.size}];
}

- (void)setContactForDisplay:(id)display
{
  displayCopy = display;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_contactForDisplay, display);
    [(PKAvatarHeaderView *)self->_avatarHeaderView setContact:self->_contactForDisplay];
    [(PKAccountUserDetailHeaderView *)self setNeedsLayout];
  }
}

- (void)setContactForActions:(id)actions
{
  actionsCopy = actions;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_contactForActions, actions);
    [(CNContactInlineActionsViewController *)self->_actionsViewController setContact:self->_contactForActions];
    [(PKAccountUserDetailHeaderView *)self setNeedsLayout];
  }
}

@end