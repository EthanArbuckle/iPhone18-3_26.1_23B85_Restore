@interface TSWPPadding
+ (TSWPPadding)paddingWithTopInset:(double)a3 leftInset:(double)a4 bottomInset:(double)a5 rightInset:(double)a6;
+ (id)padding;
- (BOOL)isEqual:(id)a3;
- (TSWPPadding)initWithTopInset:(double)a3 leftInset:(double)a4 bottomInset:(double)a5 rightInset:(double)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)transform:(CGAffineTransform *)a3;
@end

@implementation TSWPPadding

+ (id)padding
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

+ (TSWPPadding)paddingWithTopInset:(double)a3 leftInset:(double)a4 bottomInset:(double)a5 rightInset:(double)a6
{
  v6 = [[a1 alloc] initWithTopInset:a3 leftInset:a4 bottomInset:a5 rightInset:a6];

  return v6;
}

- (TSWPPadding)initWithTopInset:(double)a3 leftInset:(double)a4 bottomInset:(double)a5 rightInset:(double)a6
{
  v20.receiver = self;
  v20.super_class = TSWPPadding;
  v6 = [(TSWPPadding *)&v20 init];
  if (v6)
  {
    v8 = a3;
    if (a3 > 50000000.0 || (v7.f64[0] = a3, v8 = a4, a4 > 50000000.0) || (v8 = a5, a5 > 50000000.0) || (v8 = a6, a6 > 50000000.0))
    {
      v9 = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPPadding initWithTopInset:leftInset:bottomInset:rightInset:]"];
      [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPPadding.mm"), 68, @"Illegal huge padding value"}];
      v7.f64[0] = a3;
    }

    v7.f64[1] = a4;
    v11 = vmaxnmq_f64(v7, 0);
    v12 = vdupq_n_s64(0x4187D78400000000uLL);
    *(v6 + 8) = vbslq_s8(vcgtq_f64(v11, v12), v12, v11);
    v13.f64[0] = a5;
    v13.f64[1] = a6;
    v14 = vmaxnmq_f64(v13, 0);
    *(v6 + 24) = vbslq_s8(vcgtq_f64(v14, v12), v12, v14);
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  topInset = self->_topInset;
  leftInset = self->_leftInset;
  bottomInset = self->_bottomInset;
  rightInset = self->_rightInset;

  return [v4 initWithTopInset:topInset leftInset:leftInset bottomInset:bottomInset rightInset:rightInset];
}

- (void)transform:(CGAffineTransform *)a3
{
  a = a3->a;
  if (a3->a >= a3->d)
  {
    a = a3->d;
  }

  *&self->_topInset = vmulq_n_f64(*&self->_topInset, a);
  *&self->_bottomInset = vmulq_n_f64(*&self->_bottomInset, a);
}

- (BOOL)isEqual:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && *(a3 + 1) == self->_topInset && *(a3 + 2) == self->_leftInset && *(a3 + 3) == self->_bottomInset && *(a3 + 4) == self->_rightInset;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"(%@*)%p { topInset=%f; leftInset=%f; bottomInset=%f; rightInset=%f }", NSStringFromClass(v4), self, *&self->_topInset, *&self->_leftInset, *&self->_bottomInset, *&self->_rightInset];
}

@end