@interface SBWindowingItemViewModel
+ (SBWindowingItemViewModel)viewModelWithItem:(id)item fromViewModel:(id)model;
- (CGPoint)perspectiveAngle;
- (SBSwitcherWallpaperGradientAttributes)wallpaperGradientAttributes;
- (SBWindowingItemCorners)corners;
- (SBWindowingItemFrame)frame;
- (SBWindowingItemShadow)shadow;
- (SBWindowingItemTitleStyle)titleStyle;
- (SBWindowingItemViewModel)initWithItem:(id)item frame:(SBWindowingItemFrame *)frame corners:(SBWindowingItemCorners *)corners shadow:(SBWindowingItemShadow)shadow titleStyle:(SBWindowingItemTitleStyle *)style opacity:(double)opacity wallpaperGradientAttributes:(SBSwitcherWallpaperGradientAttributes)attributes perspectiveAngle:(CGPoint)self0 dimmingAlpha:(double)self1 animationAttributes:(id)self2 supportsHomeAffordance:(BOOL)self3 spaceAccessoryViewModel:(id)self4 personalityDebugColorStyle:(unint64_t)self5;
- (void)setCorners:(SBWindowingItemCorners *)corners;
- (void)setFrame:(SBWindowingItemFrame *)frame;
- (void)setTitleStyle:(SBWindowingItemTitleStyle *)style;
@end

@implementation SBWindowingItemViewModel

- (SBWindowingItemViewModel)initWithItem:(id)item frame:(SBWindowingItemFrame *)frame corners:(SBWindowingItemCorners *)corners shadow:(SBWindowingItemShadow)shadow titleStyle:(SBWindowingItemTitleStyle *)style opacity:(double)opacity wallpaperGradientAttributes:(SBSwitcherWallpaperGradientAttributes)attributes perspectiveAngle:(CGPoint)self0 dimmingAlpha:(double)self1 animationAttributes:(id)self2 supportsHomeAffordance:(BOOL)self3 spaceAccessoryViewModel:(id)self4 personalityDebugColorStyle:(unint64_t)self5
{
  y = angle.y;
  x = angle.x;
  trailingAlpha = attributes.trailingAlpha;
  leadingAlpha = attributes.leadingAlpha;
  itemCopy = item;
  animationAttributesCopy = animationAttributes;
  modelCopy = model;
  if (!itemCopy)
  {
    [SBWindowingItemViewModel initWithItem:a2 frame:self corners:? shadow:? titleStyle:? opacity:? wallpaperGradientAttributes:? perspectiveAngle:? dimmingAlpha:? animationAttributes:? supportsHomeAffordance:? spaceAccessoryViewModel:? personalityDebugColorStyle:?];
  }

  v42.receiver = self;
  v42.super_class = SBWindowingItemViewModel;
  v29 = [(SBWindowingItemViewModel *)&v42 init];
  v30 = v29;
  if (v29)
  {
    objc_storeStrong(&v29->_item, item);
    size = frame->bounds.size;
    v30->_frame.bounds.origin = frame->bounds.origin;
    v30->_frame.bounds.size = size;
    position = frame->position;
    anchorPoint = frame->anchorPoint;
    translation = frame->translation;
    v30->_frame.scale = frame->scale;
    v30->_frame.translation = translation;
    v30->_frame.position = position;
    v30->_frame.anchorPoint = anchorPoint;
    v35 = *&corners->cornerRadii.topLeft;
    v36 = *&corners->cornerRadii.bottomRight;
    v30->_corners.cornerMask = corners->cornerMask;
    *&v30->_corners.cornerRadii.topLeft = v35;
    *&v30->_corners.cornerRadii.bottomRight = v36;
    v30->_shadow = shadow;
    v37 = *&style->titleAndIconOpacity;
    v38 = *&style->iconOpacity;
    v30->_titleStyle.footerViewIconAlignment = style->footerViewIconAlignment;
    *&v30->_titleStyle.iconOpacity = v38;
    *&v30->_titleStyle.titleAndIconOpacity = v37;
    v30->_wallpaperGradientAttributes.leadingAlpha = leadingAlpha;
    v30->_wallpaperGradientAttributes.trailingAlpha = trailingAlpha;
    v30->_perspectiveAngle.x = x;
    v30->_perspectiveAngle.y = y;
    v30->_opacity = opacity;
    v30->_dimmingAlpha = alpha;
    objc_storeStrong(&v30->_animationAttributes, animationAttributes);
    v30->_supportsHomeAffordance = affordance;
    objc_storeStrong(&v30->_spaceAccessoryViewModel, model);
    v30->_personalityDebugColorStyle = colorStyle;
  }

  return v30;
}

+ (SBWindowingItemViewModel)viewModelWithItem:(id)item fromViewModel:(id)model
{
  modelCopy = model;
  itemCopy = item;
  v7 = objc_alloc(objc_opt_class());
  if (modelCopy)
  {
    [modelCopy frame];
    [modelCopy corners];
    shadow = [modelCopy shadow];
    v10 = v9;
    [modelCopy titleStyle];
  }

  else
  {
    memset(v34, 0, sizeof(v34));
    v33 = 0;
    memset(v32, 0, sizeof(v32));
    shadow = [0 shadow];
    v10 = v11;
    v31 = 0;
    memset(v30, 0, sizeof(v30));
  }

  [modelCopy opacity];
  v13 = v12;
  [modelCopy wallpaperGradientAttributes];
  v15 = v14;
  v17 = v16;
  [modelCopy perspectiveAngle];
  v19 = v18;
  v21 = v20;
  [modelCopy dimmingAlpha];
  v23 = v22;
  animationAttributes = [modelCopy animationAttributes];
  supportsHomeAffordance = [modelCopy supportsHomeAffordance];
  spaceAccessoryViewModel = [modelCopy spaceAccessoryViewModel];
  LOBYTE(v29) = supportsHomeAffordance;
  v27 = [v7 initWithItem:itemCopy frame:v34 corners:v32 shadow:shadow titleStyle:v10 opacity:v30 wallpaperGradientAttributes:v13 perspectiveAngle:v15 dimmingAlpha:v17 animationAttributes:v19 supportsHomeAffordance:v21 spaceAccessoryViewModel:v23 personalityDebugColorStyle:{animationAttributes, v29, spaceAccessoryViewModel, objc_msgSend(modelCopy, "personalityDebugColorStyle")}];

  return v27;
}

- (SBWindowingItemFrame)frame
{
  anchorPoint = self[2].anchorPoint;
  retstr->position = self[2].position;
  retstr->anchorPoint = anchorPoint;
  translation = self[2].translation;
  retstr->scale = self[2].scale;
  retstr->translation = translation;
  size = self[2].bounds.size;
  retstr->bounds.origin = self[2].bounds.origin;
  retstr->bounds.size = size;
  return self;
}

- (void)setFrame:(SBWindowingItemFrame *)frame
{
  size = frame->bounds.size;
  self->_frame.bounds.origin = frame->bounds.origin;
  self->_frame.bounds.size = size;
  position = frame->position;
  anchorPoint = frame->anchorPoint;
  translation = frame->translation;
  self->_frame.scale = frame->scale;
  self->_frame.translation = translation;
  self->_frame.position = position;
  self->_frame.anchorPoint = anchorPoint;
}

- (SBWindowingItemCorners)corners
{
  v3 = *&self[3].cornerRadii.bottomLeft;
  *&retstr->cornerRadii.topLeft = *&self[2].cornerMask;
  *&retstr->cornerRadii.bottomRight = v3;
  retstr->cornerMask = *&self[3].cornerRadii.topRight;
  return self;
}

- (void)setCorners:(SBWindowingItemCorners *)corners
{
  v3 = *&corners->cornerRadii.topLeft;
  v4 = *&corners->cornerRadii.bottomRight;
  self->_corners.cornerMask = corners->cornerMask;
  *&self->_corners.cornerRadii.topLeft = v3;
  *&self->_corners.cornerRadii.bottomRight = v4;
}

- (SBWindowingItemShadow)shadow
{
  shadowStyle = self->_shadow.shadowStyle;
  shadowOpacity = self->_shadow.shadowOpacity;
  result.shadowStyle = shadowStyle;
  result.shadowOpacity = shadowOpacity;
  return result;
}

- (SBWindowingItemTitleStyle)titleStyle
{
  v3 = *&self[4].titleOpacity;
  *&retstr->titleAndIconOpacity = *&self[3].footerViewIconAlignment;
  *&retstr->iconOpacity = v3;
  retstr->footerViewIconAlignment = self[4].headerStyle;
  return self;
}

- (void)setTitleStyle:(SBWindowingItemTitleStyle *)style
{
  v3 = *&style->titleAndIconOpacity;
  v4 = *&style->iconOpacity;
  self->_titleStyle.footerViewIconAlignment = style->footerViewIconAlignment;
  *&self->_titleStyle.iconOpacity = v4;
  *&self->_titleStyle.titleAndIconOpacity = v3;
}

- (SBSwitcherWallpaperGradientAttributes)wallpaperGradientAttributes
{
  leadingAlpha = self->_wallpaperGradientAttributes.leadingAlpha;
  trailingAlpha = self->_wallpaperGradientAttributes.trailingAlpha;
  result.trailingAlpha = trailingAlpha;
  result.leadingAlpha = leadingAlpha;
  return result;
}

- (CGPoint)perspectiveAngle
{
  x = self->_perspectiveAngle.x;
  y = self->_perspectiveAngle.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)initWithItem:(uint64_t)a1 frame:(uint64_t)a2 corners:shadow:titleStyle:opacity:wallpaperGradientAttributes:perspectiveAngle:dimmingAlpha:animationAttributes:supportsHomeAffordance:spaceAccessoryViewModel:personalityDebugColorStyle:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBWindowingItemViewModel.m" lineNumber:108 description:{@"Invalid parameter not satisfying: %@", @"item"}];
}

@end