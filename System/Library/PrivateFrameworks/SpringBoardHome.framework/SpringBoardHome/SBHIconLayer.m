@interface SBHIconLayer
- (BOOL)isDisplayingRealIconContent;
- (NSString)iconIdentifier;
- (SBHIconImageIdentity)iconImageIdentity;
- (SBHIconLayer)initWithIconIdentifier:(id)a3 iconImageInfo:(SBIconImageInfo *)a4 iconImageAppearance:(id)a5;
- (SBHIconLayer)initWithLayer:(id)a3;
- (double)contentsScale;
- (void)addObserver:(id)a3;
- (void)layoutSublayers;
- (void)removeObserver:(id)a3;
- (void)setContentsScale:(double)a3;
- (void)setIconContentLayer:(id)a3;
- (void)setIconContentLayer:(id)a3 animated:(BOOL)a4;
- (void)setIconContentLayer:(id)a3 generation:(int64_t)a4 imageAppearance:(id)a5 type:(int64_t)a6 animated:(BOOL)a7;
- (void)setIconContentLayer:(id)a3 generation:(int64_t)a4 type:(int64_t)a5 animated:(BOOL)a6;
- (void)setIconContentType:(int64_t)a3;
- (void)setIconIdentifier:(id)a3;
- (void)setIconImageAppearance:(id)a3;
- (void)setIconImageInfo:(SBIconImageInfo *)a3;
@end

@implementation SBHIconLayer

- (SBHIconLayer)initWithIconIdentifier:(id)a3 iconImageInfo:(SBIconImageInfo *)a4 iconImageAppearance:(id)a5
{
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  v15 = sub_1BEE4708C();
  v17 = v16;
  v18 = a4;
  v19 = [(SBHIconLayer *)self init];
  v20 = (v19 + OBJC_IVAR___SBHIconLayer_iconIdentifier);
  *v20 = v15;
  v20[1] = v17;
  v21 = v19;

  v22 = (v21 + OBJC_IVAR___SBHIconLayer_iconImageInfo);
  *v22 = v13;
  v22[1] = v12;
  v22[2] = v11;
  v22[3] = v10;
  v23 = *(v21 + OBJC_IVAR___SBHIconLayer_iconImageAppearance);
  *(v21 + OBJC_IVAR___SBHIconLayer_iconImageAppearance) = v18;

  return v21;
}

- (void)setIconImageAppearance:(id)a3
{
  v4 = a3;
  v5 = self;
  [v4 copyWithZone_];
  sub_1BEE4741C();

  swift_unknownObjectRelease();
  sub_1BEB20D28(0, &unk_1EBDBFEE0);
  swift_dynamicCast();
  v6 = *(v5 + OBJC_IVAR___SBHIconLayer_iconImageAppearance);
  *(v5 + OBJC_IVAR___SBHIconLayer_iconImageAppearance) = v7;
}

- (void)setIconContentType:(int64_t)a3
{
  v4 = self;
  sub_1BEB22794(a3);
}

- (void)addObserver:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1BEB261C0(a3);
  swift_unknownObjectRelease();
}

- (void)setContentsScale:(double)a3
{
  v7.receiver = self;
  v7.super_class = SBHIconLayer;
  v4 = self;
  [(SBHIconLayer *)&v7 setContentsScale:a3];
  v5 = [(SBHIconLayer *)v4 iconContentLayer:v7.receiver];
  if (v5)
  {
    v6 = v5;
    [(SBHIconLayer *)v4 contentsScale];
    [(CALayer *)v6 setContentsScale:?];
  }
}

- (double)contentsScale
{
  v3.receiver = self;
  v3.super_class = SBHIconLayer;
  [(SBHIconLayer *)&v3 contentsScale];
  return result;
}

- (void)setIconContentLayer:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1BEB27090(a3);
}

- (void)layoutSublayers
{
  v14.receiver = self;
  v14.super_class = SBHIconLayer;
  v2 = self;
  [(SBHIconLayer *)&v14 layoutSublayers];
  v3 = [(SBHIconLayer *)v2 iconContentLayer:v14.receiver];
  if (v3)
  {
    v4 = v3;
    [(SBHIconLayer *)v2 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(CALayer *)v4 setBounds:?];
    v15.origin.x = v6;
    v15.origin.y = v8;
    v15.size.width = v10;
    v15.size.height = v12;
    MidX = CGRectGetMidX(v15);
    v16.origin.x = v6;
    v16.origin.y = v8;
    v16.size.width = v10;
    v16.size.height = v12;
    [(CALayer *)v4 setPosition:MidX, CGRectGetMidY(v16)];
  }
}

- (SBHIconImageIdentity)iconImageIdentity
{
  v2 = self;
  v3 = [(SBHIconLayer *)v2 iconIdentifier];
  if (!v3)
  {
    sub_1BEE4708C();
    v3 = sub_1BEE4705C();
  }

  [(SBHIconLayer *)v2 iconImageInfo];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(SBHIconLayer *)v2 iconContentGeneration];
  v13 = [(SBHIconLayer *)v2 iconImageAppearance];
  v14 = [objc_allocWithZone(SBHIconImageIdentity) initWithIconIdentifier:v3 iconImageInfo:v12 imageGeneration:v13 imageAppearance:{v5, v7, v9, v11}];

  return v14;
}

- (NSString)iconIdentifier
{

  v2 = sub_1BEE4705C();

  return v2;
}

- (BOOL)isDisplayingRealIconContent
{
  v2 = [(SBHIconLayer *)self iconContentType];
  if (v2 >= 3)
  {
    LOBYTE(v3) = sub_1BEE4764C();
    __break(1u);
  }

  else
  {
    return (4u >> (v2 & 7)) & 1;
  }

  return v3;
}

- (void)setIconIdentifier:(id)a3
{
  v4 = sub_1BEE4708C();
  v5 = (self + OBJC_IVAR___SBHIconLayer_iconIdentifier);
  *v5 = v4;
  v5[1] = v6;
}

- (void)setIconImageInfo:(SBIconImageInfo *)a3
{
  v7 = (self + OBJC_IVAR___SBHIconLayer_iconImageInfo);
  *v7 = v3;
  v7[1] = v4;
  v7[2] = v5;
  v7[3] = v6;
}

- (SBHIconLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  sub_1BEE4741C();
  swift_unknownObjectRelease();
  return sub_1BEDFC008(v4);
}

- (void)setIconContentLayer:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = self;
  v9 = v6;
  if (a3)
  {
    v7 = a3;
    v8 = [(SBHIconLayer *)v9 iconContentType];
    v6 = v9;
  }

  else
  {
    v8 = 0;
  }

  [(SBHIconLayer *)v9 setIconContentLayer:a3 generation:[(SBHIconLayer *)v6 iconContentGeneration] type:v8 animated:v4];
}

- (void)setIconContentLayer:(id)a3 generation:(int64_t)a4 type:(int64_t)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v12 = self;
  v11 = [(SBHIconLayer *)v12 iconImageAppearance];
  [(SBHIconLayer *)v12 setIconContentLayer:v10 generation:a4 imageAppearance:v11 type:a5 animated:v6];
}

- (void)setIconContentLayer:(id)a3 generation:(int64_t)a4 imageAppearance:(id)a5 type:(int64_t)a6 animated:(BOOL)a7
{
  v13 = a3;
  v14 = a5;
  v15 = self;
  sub_1BEDFCA3C(a3, a4, v14, a6, a7);
}

- (void)removeObserver:(id)a3
{
  v3 = *(self + OBJC_IVAR___SBHIconLayer_observers);
  if (v3)
  {
    [v3 removeObject_];
  }
}

@end