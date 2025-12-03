@interface TSWPPadding
+ (TSWPPadding)paddingWithTopInset:(double)inset leftInset:(double)leftInset bottomInset:(double)bottomInset rightInset:(double)rightInset;
+ (id)padding;
- (BOOL)isEqual:(id)equal;
- (TSWPPadding)initWithTopInset:(double)inset leftInset:(double)leftInset bottomInset:(double)bottomInset rightInset:(double)rightInset;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)transform:(CGAffineTransform *)transform;
@end

@implementation TSWPPadding

+ (id)padding
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

+ (TSWPPadding)paddingWithTopInset:(double)inset leftInset:(double)leftInset bottomInset:(double)bottomInset rightInset:(double)rightInset
{
  v6 = [[self alloc] initWithTopInset:inset leftInset:leftInset bottomInset:bottomInset rightInset:rightInset];

  return v6;
}

- (TSWPPadding)initWithTopInset:(double)inset leftInset:(double)leftInset bottomInset:(double)bottomInset rightInset:(double)rightInset
{
  v20.receiver = self;
  v20.super_class = TSWPPadding;
  v6 = [(TSWPPadding *)&v20 init];
  if (v6)
  {
    insetCopy = inset;
    if (inset > 50000000.0 || (v7.f64[0] = inset, insetCopy = leftInset, leftInset > 50000000.0) || (insetCopy = bottomInset, bottomInset > 50000000.0) || (insetCopy = rightInset, rightInset > 50000000.0))
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPPadding initWithTopInset:leftInset:bottomInset:rightInset:]"];
      [currentHandler handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPPadding.mm"), 68, @"Illegal huge padding value"}];
      v7.f64[0] = inset;
    }

    v7.f64[1] = leftInset;
    v11 = vmaxnmq_f64(v7, 0);
    v12 = vdupq_n_s64(0x4187D78400000000uLL);
    *(v6 + 8) = vbslq_s8(vcgtq_f64(v11, v12), v12, v11);
    v13.f64[0] = bottomInset;
    v13.f64[1] = rightInset;
    v14 = vmaxnmq_f64(v13, 0);
    *(v6 + 24) = vbslq_s8(vcgtq_f64(v14, v12), v12, v14);
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  topInset = self->_topInset;
  leftInset = self->_leftInset;
  bottomInset = self->_bottomInset;
  rightInset = self->_rightInset;

  return [v4 initWithTopInset:topInset leftInset:leftInset bottomInset:bottomInset rightInset:rightInset];
}

- (void)transform:(CGAffineTransform *)transform
{
  a = transform->a;
  if (transform->a >= transform->d)
  {
    a = transform->d;
  }

  *&self->_topInset = vmulq_n_f64(*&self->_topInset, a);
  *&self->_bottomInset = vmulq_n_f64(*&self->_bottomInset, a);
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && *(equal + 1) == self->_topInset && *(equal + 2) == self->_leftInset && *(equal + 3) == self->_bottomInset && *(equal + 4) == self->_rightInset;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"(%@*)%p { topInset=%f; leftInset=%f; bottomInset=%f; rightInset=%f }", NSStringFromClass(v4), self, *&self->_topInset, *&self->_leftInset, *&self->_bottomInset, *&self->_rightInset];
}

@end