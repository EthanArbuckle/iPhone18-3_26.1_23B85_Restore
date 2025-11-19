@interface UIToolbar(Bridge)
- (id)ts_barButtonViews;
- (void)ts_setBlurthroughBackground;
- (void)ts_setTransparentBackground;
@end

@implementation UIToolbar(Bridge)

- (void)ts_setBlurthroughBackground
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DD290] ts_sideBarEffect];
  v4[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  [a1 setBackgroundEffects:v3];
}

- (id)ts_barButtonViews
{
  v2 = objc_opt_new();
  v3 = [a1 items];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__UIToolbar_Bridge__ts_barButtonViews__block_invoke;
  v6[3] = &unk_1E84F3F50;
  v4 = v2;
  v7 = v4;
  [v3 enumerateObjectsUsingBlock:v6];

  return v4;
}

- (void)ts_setTransparentBackground
{
  v2 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [a1 _setBackgroundView:v2];
}

@end