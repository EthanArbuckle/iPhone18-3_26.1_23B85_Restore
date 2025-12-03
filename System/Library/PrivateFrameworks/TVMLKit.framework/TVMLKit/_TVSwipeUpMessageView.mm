@interface _TVSwipeUpMessageView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TVSwipeUpMessageView)initWithFrame:(CGRect)frame;
- (void)_processSwipeUpMessageEvent:(int)event;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)enabled;
- (void)setMessage:(id)message;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation _TVSwipeUpMessageView

- (_TVSwipeUpMessageView)initWithFrame:(CGRect)frame
{
  v24.receiver = self;
  v24.super_class = _TVSwipeUpMessageView;
  v3 = [(_TVSwipeUpMessageView *)&v24 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    chevronView = v3->_chevronView;
    v3->_chevronView = v4;

    [(_TVImageView *)v3->_chevronView setAlpha:0.0];
    v6 = v3->_chevronView;
    v7 = +[TVInterfaceFactory sharedInterfaceFactory];
    v8 = [v7 _resourceImageNamed:@"icon_chevron_up"];
    [(_TVImageView *)v6 setImage:v8];

    layer = [(_TVImageView *)v3->_chevronView layer];
    blackColor = [MEMORY[0x277D75348] blackColor];
    v11 = [blackColor colorWithAlphaComponent:0.5];
    [layer setShadowColor:{objc_msgSend(v11, "CGColor")}];

    layer2 = [(_TVImageView *)v3->_chevronView layer];
    [layer2 setShadowOffset:{0.0, 2.0}];

    layer3 = [(_TVImageView *)v3->_chevronView layer];
    [layer3 setShadowRadius:4.0];

    layer4 = [(_TVImageView *)v3->_chevronView layer];
    LODWORD(v15) = 1.0;
    [layer4 setShadowOpacity:v15];

    [(_TVSwipeUpMessageView *)v3 addSubview:v3->_chevronView];
    v16 = objc_opt_new();
    messageView = v3->_messageView;
    v3->_messageView = v16;

    [(UILabel *)v3->_messageView setAlpha:0.0];
    [(UILabel *)v3->_messageView setNumberOfLines:2];
    [(UILabel *)v3->_messageView setTextAlignment:1];
    traitCollection = [(_TVSwipeUpMessageView *)v3 traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];
    v20 = MEMORY[0x277CDA5E8];
    if (userInterfaceStyle != 2)
    {
      v20 = MEMORY[0x277CDA5D8];
    }

    v21 = *v20;

    layer5 = [(UILabel *)v3->_messageView layer];
    [layer5 setCompositingFilter:v21];

    [(_TVSwipeUpMessageView *)v3 addSubview:v3->_messageView];
  }

  return v3;
}

- (void)setMessage:(id)message
{
  v14[2] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  message = self->_message;
  if (message != messageCopy || ![(NSString *)message isEqualToString:messageCopy])
  {
    if (setMessage__onceToken != -1)
    {
      [_TVSwipeUpMessageView setMessage:];
    }

    v6 = [TVMLUtilities fontFromTextStyle:@"caption2" fontWeight:@"semibold" fontSize:0 symbolicTraits:0.0];
    v7 = *MEMORY[0x277D74138];
    v13[0] = *MEMORY[0x277D740A8];
    v13[1] = v7;
    v14[0] = v6;
    v14[1] = setMessage__textShadow;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
    messageView = self->_messageView;
    v10 = objc_alloc(MEMORY[0x277CCA898]);
    v11 = [(NSString *)messageCopy copy];
    v12 = [v10 initWithString:v11 attributes:v8];
    [(UILabel *)messageView setAttributedText:v12];

    [(_TVSwipeUpMessageView *)self setNeedsLayout];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    if (self->_swipeUpMessageState)
    {
      [(_TVSwipeUpMessageView *)self _processSwipeUpMessageEvent:!enabled];
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v4 = [(_TVSwipeUpMessageView *)self chevronView:fits.width];
  v5 = *MEMORY[0x277CBF3A8];
  v6 = *(MEMORY[0x277CBF3A8] + 8);
  [v4 sizeThatFits:{*MEMORY[0x277CBF3A8], v6}];
  v8 = v7;
  v10 = v9;

  messageView = [(_TVSwipeUpMessageView *)self messageView];
  [messageView sizeThatFits:{v5, v6}];
  v13 = v12;
  v15 = v14;

  v16 = fmax(v8, v13);
  v17 = v10 + 6.0 + v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = _TVSwipeUpMessageView;
  [(_TVSwipeUpMessageView *)&v24 layoutSubviews];
  [(_TVSwipeUpMessageView *)self bounds];
  v4 = v3;
  chevronView = [(_TVSwipeUpMessageView *)self chevronView];
  [chevronView sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  v7 = v6;
  v9 = v8;

  chevronView2 = [(_TVSwipeUpMessageView *)self chevronView];
  v11 = v4 * 0.5;
  [chevronView2 setCenter:{v11, v9 * 0.5}];

  chevronView3 = [(_TVSwipeUpMessageView *)self chevronView];
  [chevronView3 setBounds:{0.0, 0.0, v7, v9}];

  messageView = [(_TVSwipeUpMessageView *)self messageView];
  [messageView sizeThatFits:{468.0, 0.0}];
  v15 = v14;
  v17 = v16;

  messageView2 = [(_TVSwipeUpMessageView *)self messageView];
  [messageView2 setCenter:{v11, v9 + 6.0 + v17 * 0.5}];

  messageView3 = [(_TVSwipeUpMessageView *)self messageView];
  [messageView3 setBounds:{0.0, 0.0, v15, v17}];

  chevronView = self->_chevronView;
  tintColor = [(_TVSwipeUpMessageView *)self tintColor];
  [(_TVImageView *)chevronView _setTintColor:tintColor];

  messageView = self->_messageView;
  tintColor2 = [(_TVSwipeUpMessageView *)self tintColor];
  [(UILabel *)messageView setTextColor:tintColor2];

  if (!self->_swipeUpMessageState)
  {
    [(_TVSwipeUpMessageView *)self _processSwipeUpMessageEvent:2];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v13.receiver = self;
  v13.super_class = _TVSwipeUpMessageView;
  [(_TVSwipeUpMessageView *)&v13 traitCollectionDidChange:changeCopy];
  traitCollection = [(_TVSwipeUpMessageView *)self traitCollection];
  if (![traitCollection userInterfaceStyle])
  {
LABEL_6:

    goto LABEL_7;
  }

  userInterfaceStyle = [changeCopy userInterfaceStyle];
  traitCollection2 = [(_TVSwipeUpMessageView *)self traitCollection];
  userInterfaceStyle2 = [traitCollection2 userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    traitCollection3 = [(_TVSwipeUpMessageView *)self traitCollection];
    userInterfaceStyle3 = [traitCollection3 userInterfaceStyle];
    v11 = MEMORY[0x277CDA5E8];
    if (userInterfaceStyle3 != 2)
    {
      v11 = MEMORY[0x277CDA5D8];
    }

    v12 = *v11;

    traitCollection = [(UILabel *)self->_messageView layer];
    [traitCollection setCompositingFilter:v12];

    goto LABEL_6;
  }

LABEL_7:
}

- (void)_processSwipeUpMessageEvent:(int)event
{
  swipeUpMessageState = self->_swipeUpMessageState;
  if (swipeUpMessageState <= 1)
  {
    if (swipeUpMessageState)
    {
      if (swipeUpMessageState != 1)
      {
        return;
      }

      if (event)
      {
        v5 = 1;
      }

      else
      {
        v5 = 3;
      }
    }

    else
    {
      if (event != 2)
      {
        return;
      }

      if ([(_TVSwipeUpMessageView *)self isEnabled])
      {
        v5 = 3;
      }

      else
      {
        v5 = 1;
      }
    }
  }

  else
  {
    switch(swipeUpMessageState)
    {
      case 2:
        v6 = event == 1;
        v5 = 2;
        v7 = 4;
        break;
      case 3:
        if (event == 1)
        {
          v5 = 4;
        }

        else
        {
          v5 = 3;
        }

        if (event == 2)
        {
          v5 = 2;
        }

        goto LABEL_28;
      case 4:
        if (event == 2)
        {
          v5 = 1;
        }

        else
        {
          v5 = 4;
        }

        v6 = event == 0;
        v7 = 3;
        break;
      default:
        return;
    }

    if (v6)
    {
      v5 = v7;
    }
  }

LABEL_28:
  if (swipeUpMessageState != v5)
  {
    self->_swipeUpMessageState = v5;
    if (v5 == 4)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __53___TVSwipeUpMessageView__processSwipeUpMessageEvent___block_invoke_4;
      v10[3] = &unk_279D6E7F8;
      v10[4] = self;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __53___TVSwipeUpMessageView__processSwipeUpMessageEvent___block_invoke_5;
      v9[3] = &unk_279D6EBD0;
      v9[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v10 animations:v9 completion:0.25];
    }

    else if (v5 == 3)
    {
      messageView = [(_TVSwipeUpMessageView *)self messageView];
      CGAffineTransformMakeTranslation(&v13, 0.0, 20.0);
      [messageView setTransform:&v13];

      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __53___TVSwipeUpMessageView__processSwipeUpMessageEvent___block_invoke;
      v12[3] = &unk_279D6E7F8;
      v12[4] = self;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __53___TVSwipeUpMessageView__processSwipeUpMessageEvent___block_invoke_3;
      v11[3] = &unk_279D6EBD0;
      v11[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:0 delay:v12 options:v11 animations:0.25 completion:0.25];
    }
  }
}

@end