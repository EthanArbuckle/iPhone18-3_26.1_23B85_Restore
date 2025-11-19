@interface SKUIAttributedStringWrapperView
- (CGSize)sizeThatFits:(CGSize)a3;
- (SKUIAttributedStringWrapperView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation SKUIAttributedStringWrapperView

- (SKUIAttributedStringWrapperView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13.receiver = self;
  v13.super_class = SKUIAttributedStringWrapperView;
  v7 = [(SKUIAttributedStringView *)&v13 initWithFrame:?];
  if (v7)
  {
    v8 = [[SKUIAttributedStringView alloc] initWithFrame:x, y, width, height];
    delegateView = v7->_delegateView;
    v7->_delegateView = v8;

    v10 = v7->_delegateView;
    v11 = [MEMORY[0x277D75348] clearColor];
    [(SKUIAttributedStringView *)v10 setBackgroundColor:v11];

    [(SKUIAttributedStringWrapperView *)v7 addSubview:v7->_delegateView];
  }

  return v7;
}

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = SKUIAttributedStringWrapperView;
  [(SKUIAttributedStringWrapperView *)&v25 layoutSubviews];
  v3 = [(SKUIAttributedStringWrapperView *)self layout];
  [v3 edgeInsetsForShadow];
  v5 = -v4;

  v6 = [(SKUIAttributedStringWrapperView *)self layout];
  [v6 edgeInsetsForShadow];
  v8 = -v7;

  v9 = [(SKUIAttributedStringWrapperView *)self layout];
  [v9 edgeInsetsForShadow];
  v11 = v10;
  [(SKUIAttributedStringWrapperView *)self bounds];
  v13 = v11 + v12;
  v14 = [(SKUIAttributedStringWrapperView *)self layout];
  [v14 edgeInsetsForShadow];
  v16 = v13 + v15;

  v17 = [(SKUIAttributedStringWrapperView *)self layout];
  [v17 edgeInsetsForShadow];
  v19 = v18;
  [(SKUIAttributedStringWrapperView *)self bounds];
  v21 = v19 + v20;
  v22 = [(SKUIAttributedStringWrapperView *)self layout];
  [v22 edgeInsetsForShadow];
  v24 = v21 + v23;

  [(SKUIAttributedStringWrapperView *)self sendSubviewToBack:self->_delegateView];
  [(SKUIAttributedStringView *)self->_delegateView setFrame:v5, v8, v16, v24];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(SKUIAttributedStringView *)self->_delegateView sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

@end