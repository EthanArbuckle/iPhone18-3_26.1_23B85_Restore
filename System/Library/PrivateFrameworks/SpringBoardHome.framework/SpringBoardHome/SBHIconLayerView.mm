@interface SBHIconLayerView
- (BOOL)canAcceptIconContentInLayerView:(id)view;
- (BOOL)canUpdateIconTintColorFromImageAppearance:(id)appearance;
- (BOOL)canUpdateIconTintColorFromImageIdentity:(id)identity;
- (BOOL)isDisplayingRealIconContent;
- (BOOL)matchesIconContentInLayerView:(id)view;
- (BOOL)takeIconContentInLayerView:(id)view animated:(BOOL)animated;
- (CALayer)iconContentLayer;
- (CGSize)intrinsicContentSize;
- (NSString)backdropGroupName;
- (NSString)iconIdentifier;
- (SBHIconImageIdentity)iconImageIdentity;
- (SBHIconLayerView)initWithCoder:(id)coder;
- (SBHIconLayerView)initWithFrame:(CGRect)frame;
- (SBHIconLayerView)initWithIcon:(id)icon iconImageInfo:(SBIconImageInfo *)info iconImageStyleConfiguration:(id)configuration iconImageAppearance:(id)appearance iconImageOptions:(unint64_t)options;
- (SBIconImageInfo)iconImageInfo;
- (void)addObserver:(id)observer;
- (void)layoutSubviews;
- (void)removeObserver:(id)observer;
- (void)setAllowsGlassGrouping:(BOOL)grouping;
- (void)setBackdropGroupName:(id)name;
- (void)setGlassIdentifier:(int64_t)identifier;
- (void)setIconContentLayer:(id)layer;
- (void)setIconContentLayer:(id)layer animated:(BOOL)animated;
- (void)setIconContentLayer:(id)layer generation:(int64_t)generation type:(int64_t)type animated:(BOOL)animated;
- (void)setIconContentType:(int64_t)type;
- (void)setIconTintColor:(id)color;
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

- (SBHIconLayerView)initWithIcon:(id)icon iconImageInfo:(SBIconImageInfo *)info iconImageStyleConfiguration:(id)configuration iconImageAppearance:(id)appearance iconImageOptions:(unint64_t)options
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

  iconCopy = icon;
  infoCopy = info;
  configurationCopy = configuration;
  v22 = sub_1BEE04CD4(iconCopy, infoCopy, configurationCopy, appearance, v17, v16, v15, v14);

  return v22;
}

- (SBHIconLayerView)initWithFrame:(CGRect)frame
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [objc_allocWithZone(SBIcon) init];
  defaultStyleConfiguration = [objc_opt_self() defaultStyleConfiguration];
  defaultAppearance = [objc_opt_self() defaultAppearance];
  v7 = [(SBHIconLayerView *)self initWithIcon:v4 iconImageInfo:defaultStyleConfiguration iconImageStyleConfiguration:defaultAppearance iconImageAppearance:0 iconImageOptions:0.0, 0.0, 1.0, 0.0];

  return v7;
}

- (SBHIconLayerView)initWithCoder:(id)coder
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

  selfCopy = self;
  icon = [(SBHIconLayerView *)selfCopy icon];
  uniqueIdentifier = [(SBIcon *)icon uniqueIdentifier];

  if (uniqueIdentifier)
  {
  }

  else
  {
    sub_1BEE4708C();
    uniqueIdentifier = sub_1BEE4705C();
  }

  return uniqueIdentifier;
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

- (void)setIconContentLayer:(id)layer
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  layerCopy = layer;
  selfCopy = self;
  sub_1BEE021DC(layer);
}

- (void)setIconContentLayer:(id)layer animated:(BOOL)animated
{
  animatedCopy = animated;
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  v10 = selfCopy;
  if (layer)
  {
    layerCopy = layer;
    iconContentType = [(SBHIconLayerView *)v10 iconContentType];
    selfCopy = v10;
  }

  else
  {
    iconContentType = 0;
  }

  [(SBHIconLayerView *)v10 setIconContentLayer:layer generation:[(SBHIconLayerView *)selfCopy iconContentGeneration] type:iconContentType animated:animatedCopy];
}

- (void)setIconContentLayer:(id)layer generation:(int64_t)generation type:(int64_t)type animated:(BOOL)animated
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  layerCopy = layer;
  selfCopy = self;
  sub_1BEE02538(layer, generation, type, animated);
}

- (BOOL)matchesIconContentInLayerView:(id)view
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  viewCopy = view;
  selfCopy = self;
  iconContentGeneration = [(SBHIconLayerView *)selfCopy iconContentGeneration];
  if (iconContentGeneration == [viewCopy iconContentGeneration] && (v8 = -[SBHIconLayerView iconContentType](selfCopy, sel_iconContentType), v8 == objc_msgSend(viewCopy, sel_iconContentType)))
  {
    v9 = sub_1BEE02E60(viewCopy);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (BOOL)canAcceptIconContentInLayerView:(id)view
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  viewCopy = view;
  selfCopy = self;
  iconContentGeneration = [(SBHIconLayerView *)selfCopy iconContentGeneration];
  if ([viewCopy iconContentGeneration] >= iconContentGeneration && objc_msgSend(viewCopy, sel_iconContentType) == 2)
  {
    v8 = sub_1BEE02E60(viewCopy);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (BOOL)takeIconContentInLayerView:(id)view animated:(BOOL)animated
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  viewCopy = view;
  selfCopy = self;
  v9 = sub_1BEE03254(viewCopy, animated);

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
  selfCopy = self;
  [(SBHIconLayerView *)&v15 layoutSubviews];
  v4 = [(SBHIconLayerView *)selfCopy iconContentLayer:v15.receiver];
  if (v4)
  {
    v5 = v4;
    [(SBHIconLayerView *)selfCopy bounds];
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

- (void)setIconContentType:(int64_t)type
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *(self + OBJC_IVAR___SBHIconLayerView_iconContentType);
  *(self + OBJC_IVAR___SBHIconLayerView_iconContentType) = type;
  if (v5 == type)
  {
  }

  else
  {
    selfCopy = self;
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

  iconContentType = [(SBHIconLayerView *)self iconContentType];
  if (iconContentType >= 3)
  {
    result = sub_1BEE4764C();
    __break(1u);
  }

  else
  {
    v4 = 4u >> (iconContentType & 7);

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

  selfCopy = self;
  iconIdentifier = [(SBHIconLayerView *)selfCopy iconIdentifier];
  if (!iconIdentifier)
  {
    sub_1BEE4708C();
    iconIdentifier = sub_1BEE4705C();
  }

  [(SBHIconLayerView *)selfCopy iconImageInfo];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  iconContentGeneration = [(SBHIconLayerView *)selfCopy iconContentGeneration];
  iconImageAppearance = [(SBHIconLayerView *)selfCopy iconImageAppearance];
  v15 = [objc_allocWithZone(SBHIconImageIdentity) initWithIconIdentifier:iconIdentifier iconImageInfo:iconContentGeneration imageGeneration:iconImageAppearance imageAppearance:{v6, v8, v10, v12}];

  return v15;
}

- (void)addObserver:(id)observer
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BEE03C74(observer);

  swift_unknownObjectRelease();
}

- (void)removeObserver:(id)observer
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

- (void)setIconTintColor:(id)color
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  colorCopy = color;
  selfCopy = self;
  sub_1BEE03EA8(colorCopy);
}

- (BOOL)canUpdateIconTintColorFromImageIdentity:(id)identity
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  identityCopy = identity;
  selfCopy = self;
  v7 = sub_1BEE04120(identityCopy);

  return v7;
}

- (BOOL)canUpdateIconTintColorFromImageAppearance:(id)appearance
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  appearanceCopy = appearance;
  selfCopy = self;
  iconImageAppearance = [(SBHIconLayerView *)selfCopy iconImageAppearance];
  if ([(SBHIconImageAppearance *)iconImageAppearance hasTintColor])
  {
    appearanceType = [(SBHIconImageAppearance *)iconImageAppearance appearanceType];
    appearanceType2 = [appearanceCopy appearanceType];

    return appearanceType == appearanceType2;
  }

  else
  {

    return 0;
  }
}

- (void)setAllowsGlassGrouping:(BOOL)grouping
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(self + OBJC_IVAR___SBHIconLayerView_allowsGlassGrouping) = grouping;
  selfCopy = self;
  sub_1BEE01464();
}

- (void)setGlassIdentifier:(int64_t)identifier
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(self + OBJC_IVAR___SBHIconLayerView_glassIdentifier) = identifier;
  selfCopy = self;
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

- (void)setBackdropGroupName:(id)name
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (name)
  {
    v5 = sub_1BEE4708C();
    name = v6;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  sub_1BEE04928(v5, name);
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