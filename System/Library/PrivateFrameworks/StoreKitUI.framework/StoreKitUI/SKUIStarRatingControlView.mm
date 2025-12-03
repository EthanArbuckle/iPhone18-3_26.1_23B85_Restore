@interface SKUIStarRatingControlView
+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context;
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SKUIStarRatingControlView)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)didRating:(id)rating;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation SKUIStarRatingControlView

- (SKUIStarRatingControlView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIStarRatingControlView *)v8 initWithFrame:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v29.receiver = self;
  v29.super_class = SKUIStarRatingControlView;
  height = [(SKUIStarRatingControlView *)&v29 initWithFrame:x, y, width, height];
  v17 = height;
  if (height)
  {
    [(SKUIStarRatingControlView *)height setContentMode:3];
    v18 = objc_alloc_init(SKUIStarRatingControl);
    control = v17->_control;
    v17->_control = v18;

    [(SKUIStarRatingControlView *)v17 addSubview:v17->_control];
    v20 = MEMORY[0x277D755B8];
    v21 = SKUIBundle();
    v22 = [v20 imageNamed:@"LightRateControl" inBundle:v21];
    emptyStars = v17->_emptyStars;
    v17->_emptyStars = v22;

    [(SKUIStarRatingControl *)v17->_control setEmptyStarsImage:v17->_emptyStars];
    v24 = v17->_control;
    v25 = MEMORY[0x277D755B8];
    v26 = SKUIBundle();
    v27 = [v25 imageNamed:@"RateControlFilled" inBundle:v26];
    [(SKUIStarRatingControl *)v24 setFilledStarsImage:v27];

    [(SKUIStarRatingControl *)v17->_control sizeToFit];
    [(SKUIStarRatingControl *)v17->_control addTarget:v17 action:sel_didRating_ forControlEvents:64];
  }

  return v17;
}

- (void)dealloc
{
  [(SKUIStarRatingControl *)self->_control removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  v3.receiver = self;
  v3.super_class = SKUIStarRatingControlView;
  [(SKUIStarRatingControlView *)&v3 dealloc];
}

+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIStarRatingControlView *)v5 prefetchResourcesForViewElement:v6 reason:v7 context:v8, v9, v10, v11, v12];
      }
    }
  }

  return 0;
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIStarRatingControlView *)v4 preferredSizeForViewElement:v5 context:v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = *MEMORY[0x277CBF3A8];
  v13 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v13;
  result.width = v12;
  return result;
}

+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl())
  {
    v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v5)
    {
      [(SKUIStarRatingControlView *)v5 requestLayoutForViewElement:v6 width:v7 context:v8, v9, v10, v11, v12];
    }
  }
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIStarRatingControlView *)v5 sizeThatFitsWidth:v6 viewElement:v7 context:v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = MEMORY[0x277D755B8];
  v14 = SKUIBundle();
  v15 = [v13 imageNamed:@"StarRatingControlEmpty" inBundle:v14];

  [v15 size];
  v17 = v16;
  v19 = v18;

  v20 = v17;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  objc_storeStrong(&self->_viewElement, element);
  [elementCopy ratingValue];
  if (v7 <= 0.0)
  {
    v9 = 0;
  }

  else
  {
    [elementCopy ratingValue];
    v9 = (v8 * 5.0);
  }

  [(SKUIStarRatingControl *)self->_control setUserRating:v9];
  [(SKUIStarRatingControl *)self->_control setNeedsDisplay];
  [(SKUIStarRatingControlView *)self setNeedsDisplay];
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v3), vceqq_f64(*&self->_contentInset.bottom, v4)))) & 1) == 0)
  {
    self->_contentInset = inset;
    [(SKUIStarRatingControlView *)self setNeedsDisplay];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5.receiver = self;
  v5.super_class = SKUIStarRatingControlView;
  [(SKUIStarRatingControlView *)&v5 setEnabled:?];
  [(SKUIStarRatingControl *)self->_control setEnabled:enabledCopy];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(SKUIStarRatingControlView *)self bounds];
  v11 = CGRectInset(v10, -20.0, -20.0);
  v6 = x;
  v7 = y;

  return CGRectContainsPoint(v11, *&v6);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UIImage *)self->_emptyStars size:fits.width];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)didRating:(id)rating
{
  v7[1] = *MEMORY[0x277D85DE8];
  viewElement = self->_viewElement;
  if (viewElement)
  {
    v6 = @"value";
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SKUIStarRatingControl userRating](self->_control, "userRating", rating)}];
    v7[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    [(SKUIStarRatingViewElement *)viewElement dispatchEventOfType:15 canBubble:1 isCancelable:1 extraInfo:v5 completionBlock:0];
  }
}

@end