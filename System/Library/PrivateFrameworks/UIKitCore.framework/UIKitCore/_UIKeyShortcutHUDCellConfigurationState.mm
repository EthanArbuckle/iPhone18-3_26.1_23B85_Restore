@interface _UIKeyShortcutHUDCellConfigurationState
- (BOOL)drawsBackground;
- (BOOL)isCategoryVisible;
- (BOOL)isFlashing;
- (_UIKeyShortcutHUDCellConfigurationState)initWithCellConfigurationState:(id)state;
- (void)setCategoryVisible:(BOOL)visible;
- (void)setDrawsBackground:(BOOL)background;
- (void)setFlashing:(BOOL)flashing;
@end

@implementation _UIKeyShortcutHUDCellConfigurationState

- (_UIKeyShortcutHUDCellConfigurationState)initWithCellConfigurationState:(id)state
{
  v4.receiver = self;
  v4.super_class = _UIKeyShortcutHUDCellConfigurationState;
  return [(UICellConfigurationState *)&v4 _initWithState:state];
}

- (BOOL)isFlashing
{
  v2 = [(UIViewConfigurationState *)self objectForKeyedSubscript:@"com.apple.uikit.key-shortcut-hud.flashing-configuration-state"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setFlashing:(BOOL)flashing
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:flashing];
  [(UIViewConfigurationState *)self setObject:v4 forKeyedSubscript:@"com.apple.uikit.key-shortcut-hud.flashing-configuration-state"];
}

- (BOOL)isCategoryVisible
{
  v2 = [(UIViewConfigurationState *)self objectForKeyedSubscript:@"com.apple.uikit.key-shortcut-hud.category-visible-configuration-state"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setCategoryVisible:(BOOL)visible
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:visible];
  [(UIViewConfigurationState *)self setObject:v4 forKeyedSubscript:@"com.apple.uikit.key-shortcut-hud.category-visible-configuration-state"];
}

- (BOOL)drawsBackground
{
  v2 = [(UIViewConfigurationState *)self objectForKeyedSubscript:@"com.apple.uikit.key-shortcut-hud.draws-background-configuration-state"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setDrawsBackground:(BOOL)background
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:background];
  [(UIViewConfigurationState *)self setObject:v4 forKeyedSubscript:@"com.apple.uikit.key-shortcut-hud.draws-background-configuration-state"];
}

@end