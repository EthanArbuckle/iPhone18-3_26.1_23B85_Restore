@interface SKUIInlineFlipContainerView
- (SKUIInlineFlipContainerView)initWithFrontView:(id)a3 backView:(id)a4;
- (void)flipToBackViewWithDuration:(double)a3 options:(unint64_t)a4 completionBlock:(id)a5;
@end

@implementation SKUIInlineFlipContainerView

- (SKUIInlineFlipContainerView)initWithFrontView:(id)a3 backView:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIInlineFlipContainerView initWithFrontView:backView:];
  }

  [v6 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [v7 bounds];
  v36.origin.x = v16;
  v36.origin.y = v17;
  v36.size.width = v18;
  v36.size.height = v19;
  v34.origin.x = v9;
  v34.origin.y = v11;
  v34.size.width = v13;
  v34.size.height = v15;
  v35 = CGRectUnion(v34, v36);
  x = v35.origin.x;
  y = v35.origin.y;
  width = v35.size.width;
  height = v35.size.height;
  v33.receiver = self;
  v33.super_class = SKUIInlineFlipContainerView;
  v24 = [(SKUIInlineFlipContainerView *)&v33 initWithFrame:?];
  if (v24)
  {
    v25 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{x, y, width, height}];
    v26 = [v6 backgroundColor];
    [(UIView *)v25 setBackgroundColor:v26];

    [v6 frame];
    v28 = (width - v27) * 0.5;
    v30 = (height - v29) * 0.5;
    [v6 setFrame:{floorf(v28), floorf(v30)}];
    [(UIView *)v25 addSubview:v6];
    [(SKUIInlineFlipContainerView *)v24 addSubview:v25];
    objc_storeStrong(&v24->_backView, a4);
    frontView = v24->_frontView;
    v24->_frontView = v25;
  }

  return v24;
}

- (void)flipToBackViewWithDuration:(double)a3 options:(unint64_t)a4 completionBlock:(id)a5
{
  v8 = a5;
  [(SKUIInlineFlipContainerView *)self bounds];
  v10 = v9;
  v12 = v11;
  v15 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v13, v14, v9, v11}];
  v16 = [(UIView *)self->_backView backgroundColor];
  [v15 setBackgroundColor:v16];

  [(UIView *)self->_backView frame];
  v18 = (v10 - v17) * 0.5;
  v20 = (v12 - v19) * 0.5;
  [(UIView *)self->_backView setFrame:floorf(v18), floorf(v20)];
  [v15 addSubview:self->_backView];
  v21 = MEMORY[0x277D75D18];
  frontView = self->_frontView;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __82__SKUIInlineFlipContainerView_flipToBackViewWithDuration_options_completionBlock___block_invoke;
  v24[3] = &unk_2781F85B8;
  v25 = v8;
  v23 = v8;
  [v21 transitionFromView:frontView toView:v15 duration:a4 options:v24 completion:a3];
}

uint64_t __82__SKUIInlineFlipContainerView_flipToBackViewWithDuration_options_completionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)initWithFrontView:backView:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIInlineFlipContainerView initWithFrontView:backView:]";
}

@end