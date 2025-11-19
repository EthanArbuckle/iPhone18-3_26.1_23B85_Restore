@interface SBWindowingItemViewModel
+ (SBWindowingItemViewModel)viewModelWithItem:(id)a3 fromViewModel:(id)a4;
- (CGPoint)perspectiveAngle;
- (SBSwitcherWallpaperGradientAttributes)wallpaperGradientAttributes;
- (SBWindowingItemCorners)corners;
- (SBWindowingItemFrame)frame;
- (SBWindowingItemShadow)shadow;
- (SBWindowingItemTitleStyle)titleStyle;
- (SBWindowingItemViewModel)initWithItem:(id)a3 frame:(SBWindowingItemFrame *)a4 corners:(SBWindowingItemCorners *)a5 shadow:(SBWindowingItemShadow)a6 titleStyle:(SBWindowingItemTitleStyle *)a7 opacity:(double)a8 wallpaperGradientAttributes:(SBSwitcherWallpaperGradientAttributes)a9 perspectiveAngle:(CGPoint)a10 dimmingAlpha:(double)a11 animationAttributes:(id)a12 supportsHomeAffordance:(BOOL)a13 spaceAccessoryViewModel:(id)a14 personalityDebugColorStyle:(unint64_t)a15;
- (void)setCorners:(SBWindowingItemCorners *)a3;
- (void)setFrame:(SBWindowingItemFrame *)a3;
- (void)setTitleStyle:(SBWindowingItemTitleStyle *)a3;
@end

@implementation SBWindowingItemViewModel

- (SBWindowingItemViewModel)initWithItem:(id)a3 frame:(SBWindowingItemFrame *)a4 corners:(SBWindowingItemCorners *)a5 shadow:(SBWindowingItemShadow)a6 titleStyle:(SBWindowingItemTitleStyle *)a7 opacity:(double)a8 wallpaperGradientAttributes:(SBSwitcherWallpaperGradientAttributes)a9 perspectiveAngle:(CGPoint)a10 dimmingAlpha:(double)a11 animationAttributes:(id)a12 supportsHomeAffordance:(BOOL)a13 spaceAccessoryViewModel:(id)a14 personalityDebugColorStyle:(unint64_t)a15
{
  y = a10.y;
  x = a10.x;
  trailingAlpha = a9.trailingAlpha;
  leadingAlpha = a9.leadingAlpha;
  v27 = a3;
  v41 = a12;
  v28 = a14;
  if (!v27)
  {
    [SBWindowingItemViewModel initWithItem:a2 frame:self corners:? shadow:? titleStyle:? opacity:? wallpaperGradientAttributes:? perspectiveAngle:? dimmingAlpha:? animationAttributes:? supportsHomeAffordance:? spaceAccessoryViewModel:? personalityDebugColorStyle:?];
  }

  v42.receiver = self;
  v42.super_class = SBWindowingItemViewModel;
  v29 = [(SBWindowingItemViewModel *)&v42 init];
  v30 = v29;
  if (v29)
  {
    objc_storeStrong(&v29->_item, a3);
    size = a4->bounds.size;
    v30->_frame.bounds.origin = a4->bounds.origin;
    v30->_frame.bounds.size = size;
    position = a4->position;
    anchorPoint = a4->anchorPoint;
    translation = a4->translation;
    v30->_frame.scale = a4->scale;
    v30->_frame.translation = translation;
    v30->_frame.position = position;
    v30->_frame.anchorPoint = anchorPoint;
    v35 = *&a5->cornerRadii.topLeft;
    v36 = *&a5->cornerRadii.bottomRight;
    v30->_corners.cornerMask = a5->cornerMask;
    *&v30->_corners.cornerRadii.topLeft = v35;
    *&v30->_corners.cornerRadii.bottomRight = v36;
    v30->_shadow = a6;
    v37 = *&a7->titleAndIconOpacity;
    v38 = *&a7->iconOpacity;
    v30->_titleStyle.footerViewIconAlignment = a7->footerViewIconAlignment;
    *&v30->_titleStyle.iconOpacity = v38;
    *&v30->_titleStyle.titleAndIconOpacity = v37;
    v30->_wallpaperGradientAttributes.leadingAlpha = leadingAlpha;
    v30->_wallpaperGradientAttributes.trailingAlpha = trailingAlpha;
    v30->_perspectiveAngle.x = x;
    v30->_perspectiveAngle.y = y;
    v30->_opacity = a8;
    v30->_dimmingAlpha = a11;
    objc_storeStrong(&v30->_animationAttributes, a12);
    v30->_supportsHomeAffordance = a13;
    objc_storeStrong(&v30->_spaceAccessoryViewModel, a14);
    v30->_personalityDebugColorStyle = a15;
  }

  return v30;
}

+ (SBWindowingItemViewModel)viewModelWithItem:(id)a3 fromViewModel:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc(objc_opt_class());
  if (v5)
  {
    [v5 frame];
    [v5 corners];
    v8 = [v5 shadow];
    v10 = v9;
    [v5 titleStyle];
  }

  else
  {
    memset(v34, 0, sizeof(v34));
    v33 = 0;
    memset(v32, 0, sizeof(v32));
    v8 = [0 shadow];
    v10 = v11;
    v31 = 0;
    memset(v30, 0, sizeof(v30));
  }

  [v5 opacity];
  v13 = v12;
  [v5 wallpaperGradientAttributes];
  v15 = v14;
  v17 = v16;
  [v5 perspectiveAngle];
  v19 = v18;
  v21 = v20;
  [v5 dimmingAlpha];
  v23 = v22;
  v24 = [v5 animationAttributes];
  v25 = [v5 supportsHomeAffordance];
  v26 = [v5 spaceAccessoryViewModel];
  LOBYTE(v29) = v25;
  v27 = [v7 initWithItem:v6 frame:v34 corners:v32 shadow:v8 titleStyle:v10 opacity:v30 wallpaperGradientAttributes:v13 perspectiveAngle:v15 dimmingAlpha:v17 animationAttributes:v19 supportsHomeAffordance:v21 spaceAccessoryViewModel:v23 personalityDebugColorStyle:{v24, v29, v26, objc_msgSend(v5, "personalityDebugColorStyle")}];

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

- (void)setFrame:(SBWindowingItemFrame *)a3
{
  size = a3->bounds.size;
  self->_frame.bounds.origin = a3->bounds.origin;
  self->_frame.bounds.size = size;
  position = a3->position;
  anchorPoint = a3->anchorPoint;
  translation = a3->translation;
  self->_frame.scale = a3->scale;
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

- (void)setCorners:(SBWindowingItemCorners *)a3
{
  v3 = *&a3->cornerRadii.topLeft;
  v4 = *&a3->cornerRadii.bottomRight;
  self->_corners.cornerMask = a3->cornerMask;
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

- (void)setTitleStyle:(SBWindowingItemTitleStyle *)a3
{
  v3 = *&a3->titleAndIconOpacity;
  v4 = *&a3->iconOpacity;
  self->_titleStyle.footerViewIconAlignment = a3->footerViewIconAlignment;
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