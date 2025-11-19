@interface SBHIconLayerView
- (BOOL)canAcceptIconContentInLayerView:(id)a3;
- (BOOL)canUpdateIconTintColorFromImageAppearance:(id)a3;
- (BOOL)canUpdateIconTintColorFromImageIdentity:(id)a3;
- (BOOL)isDisplayingRealIconContent;
- (BOOL)matchesIconContentInLayerView:(id)a3;
- (BOOL)takeIconContentInLayerView:(id)a3 animated:(BOOL)a4;
- (CALayer)iconContentLayer;
- (CGSize)intrinsicContentSize;
- (NSString)backdropGroupName;
- (NSString)iconIdentifier;
- (SBHIconImageIdentity)iconImageIdentity;
- (SBHIconLayerView)initWithCoder:(id)a3;
- (SBHIconLayerView)initWithFrame:(CGRect)a3;
- (SBHIconLayerView)initWithIcon:(id)a3 iconImageInfo:(SBIconImageInfo *)a4 iconImageStyleConfiguration:(id)a5 iconImageAppearance:(id)a6 iconImageOptions:(unint64_t)a7;
- (SBIconImageInfo)iconImageInfo;
- (void)addObserver:(id)a3;
- (void)layoutSubviews;
- (void)removeObserver:(id)a3;
- (void)setAllowsGlassGrouping:(BOOL)a3;
- (void)setBackdropGroupName:(id)a3;
- (void)setGlassIdentifier:(int64_t)a3;
- (void)setIconContentLayer:(id)a3;
- (void)setIconContentLayer:(id)a3 animated:(BOOL)a4;
- (void)setIconContentLayer:(id)a3 generation:(int64_t)a4 type:(int64_t)a5 animated:(BOOL)a6;
- (void)setIconContentType:(int64_t)a3;
- (void)setIconTintColor:(id)a3;
@end

@implementation SBHIconLayerView

- (SBIconImageInfo)iconImageInfo
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

- (SBHIconLayerView)initWithIcon:(id)a3 iconImageInfo:(SBIconImageInfo *)a4 iconImageStyleConfiguration:(id)a5 iconImageAppearance:(id)a6 iconImageOptions:(unint64_t)a7
{
  v14 = v10;
  v15 = v9;
  v16 = v8;
  v17 = v7;
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = sub_1BEE04CD4(v19, v20, v21, a6, v17, v16, v15, v14);

  return v22;
}

- (SBHIconLayerView)initWithFrame:(CGRect)a3
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [objc_allocWithZone(SBIcon) init];
  v5 = [objc_opt_self() defaultStyleConfiguration];
  v6 = [objc_opt_self() defaultAppearance];
  v7 = [(SBHIconLayerView *)self initWithIcon:v4 iconImageInfo:v5 iconImageStyleConfiguration:v6 iconImageAppearance:0 iconImageOptions:0.0, 0.0, 1.0, 0.0];

  return v7;
}

- (SBHIconLayerView)initWithCoder:(id)a3
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  _sSo16SBHIconLayerViewC15SpringBoardHomeE5coderABSgSo7NSCoderC_tcfc_0();
}

- (NSString)iconIdentifier
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  v4 = [(SBHIconLayerView *)v3 icon];
  v5 = [(SBIcon *)v4 uniqueIdentifier];

  if (v5)
  {
  }

  else
  {
    sub_1BEE4708C();
    v5 = sub_1BEE4705C();
  }

  return v5;
}

- (CALayer)iconContentLayer
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(self + OBJC_IVAR___SBHIconLayerView__iconContentLayer);

  return v3;
}

- (void)setIconContentLayer:(id)a3
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  sub_1BEE021DC(a3);
}

- (void)setIconContentLayer:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = self;
  v10 = v7;
  if (a3)
  {
    v8 = a3;
    v9 = [(SBHIconLayerView *)v10 iconContentType];
    v7 = v10;
  }

  else
  {
    v9 = 0;
  }

  [(SBHIconLayerView *)v10 setIconContentLayer:a3 generation:[(SBHIconLayerView *)v7 iconContentGeneration] type:v9 animated:v4];
}

- (void)setIconContentLayer:(id)a3 generation:(int64_t)a4 type:(int64_t)a5 animated:(BOOL)a6
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = a3;
  v12 = self;
  sub_1BEE02538(a3, a4, a5, a6);
}

- (BOOL)matchesIconContentInLayerView:(id)a3
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  v7 = [(SBHIconLayerView *)v6 iconContentGeneration];
  if (v7 == [v5 iconContentGeneration] && (v8 = -[SBHIconLayerView iconContentType](v6, sel_iconContentType), v8 == objc_msgSend(v5, sel_iconContentType)))
  {
    v9 = sub_1BEE02E60(v5);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (BOOL)canAcceptIconContentInLayerView:(id)a3
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  v7 = [(SBHIconLayerView *)v6 iconContentGeneration];
  if ([v5 iconContentGeneration] >= v7 && objc_msgSend(v5, sel_iconContentType) == 2)
  {
    v8 = sub_1BEE02E60(v5);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (BOOL)takeIconContentInLayerView:(id)a3 animated:(BOOL)a4
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a3;
  v8 = self;
  v9 = sub_1BEE03254(v7, a4);

  return v9 & 1;
}

- (void)layoutSubviews
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15.receiver = self;
  v15.super_class = SBHIconLayerView;
  v3 = self;
  [(SBHIconLayerView *)&v15 layoutSubviews];
  v4 = [(SBHIconLayerView *)v3 iconContentLayer:v15.receiver];
  if (v4)
  {
    v5 = v4;
    [(SBHIconLayerView *)v3 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [(CALayer *)v5 setBounds:?];
    v16.origin.x = v7;
    v16.origin.y = v9;
    v16.size.width = v11;
    v16.size.height = v13;
    MidX = CGRectGetMidX(v16);
    v17.origin.x = v7;
    v17.origin.y = v9;
    v17.size.width = v11;
    v17.size.height = v13;
    [(CALayer *)v5 setPosition:MidX, CGRectGetMidY(v17)];
  }

  else
  {
  }
}

- (void)setIconContentType:(int64_t)a3
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *(self + OBJC_IVAR___SBHIconLayerView_iconContentType);
  *(self + OBJC_IVAR___SBHIconLayerView_iconContentType) = a3;
  if (v5 == a3)
  {
  }

  else
  {
    v6 = self;
    sub_1BEE0378C(&selRef_iconLayerViewContentTypeDidChange_);
    sub_1BEE01464();
  }
}

- (BOOL)isDisplayingRealIconContent
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = [(SBHIconLayerView *)self iconContentType];
  if (v3 >= 3)
  {
    result = sub_1BEE4764C();
    __break(1u);
  }

  else
  {
    v4 = 4u >> (v3 & 7);

    return v4 & 1;
  }

  return result;
}

- (SBHIconImageIdentity)iconImageIdentity
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  v4 = [(SBHIconLayerView *)v3 iconIdentifier];
  if (!v4)
  {
    sub_1BEE4708C();
    v4 = sub_1BEE4705C();
  }

  [(SBHIconLayerView *)v3 iconImageInfo];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(SBHIconLayerView *)v3 iconContentGeneration];
  v14 = [(SBHIconLayerView *)v3 iconImageAppearance];
  v15 = [objc_allocWithZone(SBHIconImageIdentity) initWithIconIdentifier:v4 iconImageInfo:v13 imageGeneration:v14 imageAppearance:{v6, v8, v10, v12}];

  return v15;
}

- (void)addObserver:(id)a3
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  v5 = self;
  sub_1BEE03C74(a3);

  swift_unknownObjectRelease();
}

- (void)removeObserver:(id)a3
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *(self + OBJC_IVAR___SBHIconLayerView_observers);
  if (v5)
  {
    [v5 removeObject_];
  }
}

- (void)setIconTintColor:(id)a3
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  sub_1BEE03EA8(v5);
}

- (BOOL)canUpdateIconTintColorFromImageIdentity:(id)a3
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  v7 = sub_1BEE04120(v5);

  return v7;
}

- (BOOL)canUpdateIconTintColorFromImageAppearance:(id)a3
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  v7 = [(SBHIconLayerView *)v6 iconImageAppearance];
  if ([(SBHIconImageAppearance *)v7 hasTintColor])
  {
    v8 = [(SBHIconImageAppearance *)v7 appearanceType];
    v9 = [v5 appearanceType];

    return v8 == v9;
  }

  else
  {

    return 0;
  }
}

- (void)setAllowsGlassGrouping:(BOOL)a3
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(self + OBJC_IVAR___SBHIconLayerView_allowsGlassGrouping) = a3;
  v5 = self;
  sub_1BEE01464();
}

- (void)setGlassIdentifier:(int64_t)a3
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(self + OBJC_IVAR___SBHIconLayerView_glassIdentifier) = a3;
  v5 = self;
  sub_1BEE01464();
}

- (NSString)backdropGroupName
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(self + OBJC_IVAR___SBHIconLayerView_backdropGroupName + 8))
  {

    v3 = sub_1BEE4705C();
  }

  else
  {

    v3 = 0;
  }

  return v3;
}

- (void)setBackdropGroupName:(id)a3
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    v5 = sub_1BEE4708C();
    a3 = v6;
  }

  else
  {
    v5 = 0;
  }

  v7 = self;
  sub_1BEE04928(v5, a3);
}

- (CGSize)intrinsicContentSize
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [(SBHIconLayerView *)self iconImageInfo];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end