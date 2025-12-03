@interface SKUIAttributedStringWrapperView
- (CGSize)sizeThatFits:(CGSize)fits;
- (SKUIAttributedStringWrapperView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation SKUIAttributedStringWrapperView

- (SKUIAttributedStringWrapperView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v13.receiver = self;
  v13.super_class = SKUIAttributedStringWrapperView;
  v7 = [(SKUIAttributedStringView *)&v13 initWithFrame:?];
  if (v7)
  {
    height = [[SKUIAttributedStringView alloc] initWithFrame:x, y, width, height];
    delegateView = v7->_delegateView;
    v7->_delegateView = height;

    v10 = v7->_delegateView;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SKUIAttributedStringView *)v10 setBackgroundColor:clearColor];

    [(SKUIAttributedStringWrapperView *)v7 addSubview:v7->_delegateView];
  }

  return v7;
}

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = SKUIAttributedStringWrapperView;
  [(SKUIAttributedStringWrapperView *)&v25 layoutSubviews];
  layout = [(SKUIAttributedStringWrapperView *)self layout];
  [layout edgeInsetsForShadow];
  v5 = -v4;

  layout2 = [(SKUIAttributedStringWrapperView *)self layout];
  [layout2 edgeInsetsForShadow];
  v8 = -v7;

  layout3 = [(SKUIAttributedStringWrapperView *)self layout];
  [layout3 edgeInsetsForShadow];
  v11 = v10;
  [(SKUIAttributedStringWrapperView *)self bounds];
  v13 = v11 + v12;
  layout4 = [(SKUIAttributedStringWrapperView *)self layout];
  [layout4 edgeInsetsForShadow];
  v16 = v13 + v15;

  layout5 = [(SKUIAttributedStringWrapperView *)self layout];
  [layout5 edgeInsetsForShadow];
  v19 = v18;
  [(SKUIAttributedStringWrapperView *)self bounds];
  v21 = v19 + v20;
  layout6 = [(SKUIAttributedStringWrapperView *)self layout];
  [layout6 edgeInsetsForShadow];
  v24 = v21 + v23;

  [(SKUIAttributedStringWrapperView *)self sendSubviewToBack:self->_delegateView];
  [(SKUIAttributedStringView *)self->_delegateView setFrame:v5, v8, v16, v24];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(SKUIAttributedStringView *)self->_delegateView sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

@end