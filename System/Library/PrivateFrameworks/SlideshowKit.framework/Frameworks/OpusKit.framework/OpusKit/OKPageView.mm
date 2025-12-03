@interface OKPageView
- (BOOL)_canRespondToEventWithPoint:(CGPoint)point;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (void)commonInit;
- (void)dealloc;
@end

@implementation OKPageView

- (void)commonInit
{
  v2.receiver = self;
  v2.super_class = OKPageView;
  [(OFUIView *)&v2 commonInit];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OKPageView;
  [(OFUIView *)&v2 dealloc];
}

- (BOOL)_canRespondToEventWithPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [-[OKPageView pageViewController](self "pageViewController")];
  v7.f64[1] = v6;
  v9.f64[1] = v8;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v7, *MEMORY[0x277D768C8]), vceqq_f64(v9, *(MEMORY[0x277D768C8] + 16))))) & 1) != 0 || (-[OKPageView frame](self, "frame"), v11 = v10, v13 = v12, v15 = v14, v17 = v16, [-[OKPageView pageViewController](self "pageViewController")], v19 = v13 + v18, v22 = v15 - (v20 + v21), v27.size.height = v17 - (v18 + v23), v27.origin.x = v11 + v20, v27.origin.y = v19, v27.size.width = v22, v26.x = x, v26.y = y, v24 = CGRectContainsPoint(v27, v26)))
  {
    LOBYTE(v24) = 1;
  }

  return v24;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v8 = [(OKPageView *)self _canRespondToEventWithPoint:?];
  if (v8)
  {
    v10.receiver = self;
    v10.super_class = OKPageView;
    LOBYTE(v8) = [(OKPageView *)&v10 pointInside:event withEvent:x, y];
  }

  return v8;
}

@end