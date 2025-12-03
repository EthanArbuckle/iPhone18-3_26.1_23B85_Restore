@interface SBHIconLayer
- (BOOL)isDisplayingRealIconContent;
- (NSString)iconIdentifier;
- (SBHIconImageIdentity)iconImageIdentity;
- (SBHIconLayer)initWithIconIdentifier:(id)identifier iconImageInfo:(SBIconImageInfo *)info iconImageAppearance:(id)appearance;
- (SBHIconLayer)initWithLayer:(id)layer;
- (double)contentsScale;
- (void)addObserver:(id)observer;
- (void)layoutSublayers;
- (void)removeObserver:(id)observer;
- (void)setContentsScale:(double)scale;
- (void)setIconContentLayer:(id)layer;
- (void)setIconContentLayer:(id)layer animated:(BOOL)animated;
- (void)setIconContentLayer:(id)layer generation:(int64_t)generation imageAppearance:(id)appearance type:(int64_t)type animated:(BOOL)animated;
- (void)setIconContentLayer:(id)layer generation:(int64_t)generation type:(int64_t)type animated:(BOOL)animated;
- (void)setIconContentType:(int64_t)type;
- (void)setIconIdentifier:(id)identifier;
- (void)setIconImageAppearance:(id)appearance;
- (void)setIconImageInfo:(SBIconImageInfo *)info;
@end

@implementation SBHIconLayer

- (SBHIconLayer)initWithIconIdentifier:(id)identifier iconImageInfo:(SBIconImageInfo *)info iconImageAppearance:(id)appearance
{
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  v15 = sub_1BEE4708C();
  v17 = v16;
  infoCopy = info;
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
  *(v21 + OBJC_IVAR___SBHIconLayer_iconImageAppearance) = infoCopy;

  return v21;
}

- (void)setIconImageAppearance:(id)appearance
{
  appearanceCopy = appearance;
  selfCopy = self;
  [appearanceCopy copyWithZone_];
  sub_1BEE4741C();

  swift_unknownObjectRelease();
  sub_1BEB20D28(0, &unk_1EBDBFEE0);
  swift_dynamicCast();
  v6 = *(selfCopy + OBJC_IVAR___SBHIconLayer_iconImageAppearance);
  *(selfCopy + OBJC_IVAR___SBHIconLayer_iconImageAppearance) = v7;
}

- (void)setIconContentType:(int64_t)type
{
  selfCopy = self;
  sub_1BEB22794(type);
}

- (void)addObserver:(id)observer
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BEB261C0(observer);
  swift_unknownObjectRelease();
}

- (void)setContentsScale:(double)scale
{
  v7.receiver = self;
  v7.super_class = SBHIconLayer;
  selfCopy = self;
  [(SBHIconLayer *)&v7 setContentsScale:scale];
  v5 = [(SBHIconLayer *)selfCopy iconContentLayer:v7.receiver];
  if (v5)
  {
    v6 = v5;
    [(SBHIconLayer *)selfCopy contentsScale];
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

- (void)setIconContentLayer:(id)layer
{
  layerCopy = layer;
  selfCopy = self;
  sub_1BEB27090(layer);
}

- (void)layoutSublayers
{
  v14.receiver = self;
  v14.super_class = SBHIconLayer;
  selfCopy = self;
  [(SBHIconLayer *)&v14 layoutSublayers];
  v3 = [(SBHIconLayer *)selfCopy iconContentLayer:v14.receiver];
  if (v3)
  {
    v4 = v3;
    [(SBHIconLayer *)selfCopy bounds];
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
  selfCopy = self;
  iconIdentifier = [(SBHIconLayer *)selfCopy iconIdentifier];
  if (!iconIdentifier)
  {
    sub_1BEE4708C();
    iconIdentifier = sub_1BEE4705C();
  }

  [(SBHIconLayer *)selfCopy iconImageInfo];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  iconContentGeneration = [(SBHIconLayer *)selfCopy iconContentGeneration];
  iconImageAppearance = [(SBHIconLayer *)selfCopy iconImageAppearance];
  v14 = [objc_allocWithZone(SBHIconImageIdentity) initWithIconIdentifier:iconIdentifier iconImageInfo:iconContentGeneration imageGeneration:iconImageAppearance imageAppearance:{v5, v7, v9, v11}];

  return v14;
}

- (NSString)iconIdentifier
{

  v2 = sub_1BEE4705C();

  return v2;
}

- (BOOL)isDisplayingRealIconContent
{
  iconContentType = [(SBHIconLayer *)self iconContentType];
  if (iconContentType >= 3)
  {
    LOBYTE(v3) = sub_1BEE4764C();
    __break(1u);
  }

  else
  {
    return (4u >> (iconContentType & 7)) & 1;
  }

  return v3;
}

- (void)setIconIdentifier:(id)identifier
{
  v4 = sub_1BEE4708C();
  v5 = (self + OBJC_IVAR___SBHIconLayer_iconIdentifier);
  *v5 = v4;
  v5[1] = v6;
}

- (void)setIconImageInfo:(SBIconImageInfo *)info
{
  v7 = (self + OBJC_IVAR___SBHIconLayer_iconImageInfo);
  *v7 = v3;
  v7[1] = v4;
  v7[2] = v5;
  v7[3] = v6;
}

- (SBHIconLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  sub_1BEE4741C();
  swift_unknownObjectRelease();
  return sub_1BEDFC008(v4);
}

- (void)setIconContentLayer:(id)layer animated:(BOOL)animated
{
  animatedCopy = animated;
  selfCopy = self;
  v9 = selfCopy;
  if (layer)
  {
    layerCopy = layer;
    iconContentType = [(SBHIconLayer *)v9 iconContentType];
    selfCopy = v9;
  }

  else
  {
    iconContentType = 0;
  }

  [(SBHIconLayer *)v9 setIconContentLayer:layer generation:[(SBHIconLayer *)selfCopy iconContentGeneration] type:iconContentType animated:animatedCopy];
}

- (void)setIconContentLayer:(id)layer generation:(int64_t)generation type:(int64_t)type animated:(BOOL)animated
{
  animatedCopy = animated;
  layerCopy = layer;
  selfCopy = self;
  iconImageAppearance = [(SBHIconLayer *)selfCopy iconImageAppearance];
  [(SBHIconLayer *)selfCopy setIconContentLayer:layerCopy generation:generation imageAppearance:iconImageAppearance type:type animated:animatedCopy];
}

- (void)setIconContentLayer:(id)layer generation:(int64_t)generation imageAppearance:(id)appearance type:(int64_t)type animated:(BOOL)animated
{
  layerCopy = layer;
  appearanceCopy = appearance;
  selfCopy = self;
  sub_1BEDFCA3C(layer, generation, appearanceCopy, type, animated);
}

- (void)removeObserver:(id)observer
{
  v3 = *(self + OBJC_IVAR___SBHIconLayer_observers);
  if (v3)
  {
    [v3 removeObject_];
  }
}

@end