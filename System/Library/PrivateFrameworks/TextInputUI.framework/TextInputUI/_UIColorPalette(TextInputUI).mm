@interface _UIColorPalette(TextInputUI)
+ (id)_tui_coolColors:()TextInputUI;
+ (id)_tui_intelligenceAmbientPaletteWithStartColor:()TextInputUI endColor:;
+ (id)_tui_warmColors:()TextInputUI;
- (id)_tui_scaledColorSpaceForAmbientText;
@end

@implementation _UIColorPalette(TextInputUI)

- (id)_tui_scaledColorSpaceForAmbientText
{
  v2 = objc_alloc(MEMORY[0x1E69DD400]);
  colors = [self colors];
  colorSpaceName = [self colorSpaceName];
  v5 = [v2 initWithColors:colors locations:&unk_1F03D8ED0 colorSpaceName:colorSpaceName];

  return v5;
}

+ (id)_tui_intelligenceAmbientPaletteWithStartColor:()TextInputUI endColor:
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:6];
  v9 = v8;
  if (v6)
  {
    [v8 addObject:v6];
  }

  v10 = [self _tui_warmColors:1];
  [v9 addObjectsFromArray:v10];

  v11 = [self _tui_coolColors:1];
  [v9 addObjectsFromArray:v11];

  if (v7)
  {
    [v9 addObject:v7];
  }

  v12 = [[self alloc] initWithColors:v9];

  return v12;
}

+ (id)_tui_coolColors:()TextInputUI
{
  v9[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = [MEMORY[0x1E69DC888] colorWithRed:0.821 green:0.606 blue:0.98 alpha:1.0];
    v9[0] = v3;
    v4 = [MEMORY[0x1E69DC888] colorWithRed:0.371 green:0.738 blue:0.987 alpha:1.0];
    v9[1] = v4;
    v5 = v9;
  }

  else
  {
    v3 = [MEMORY[0x1E69DC888] colorWithRed:0.768 green:0.364 blue:0.909 alpha:1.0];
    v8[0] = v3;
    v4 = [MEMORY[0x1E69DC888] colorWithRed:0.337 green:0.756 blue:1.0 alpha:1.0];
    v8[1] = v4;
    v5 = v8;
  }

  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];

  return v6;
}

+ (id)_tui_warmColors:()TextInputUI
{
  v9[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = [MEMORY[0x1E69DC888] colorWithRed:0.928 green:0.672 blue:0.319 alpha:1.0];
    v9[0] = v3;
    v4 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.537 blue:0.637 alpha:1.0];
    v9[1] = v4;
    v5 = v9;
  }

  else
  {
    v3 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.56 blue:0.011 alpha:1.0];
    v8[0] = v3;
    v4 = [MEMORY[0x1E69DC888] colorWithRed:0.933 green:0.227 blue:0.498 alpha:1.0];
    v8[1] = v4;
    v5 = v8;
  }

  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];

  return v6;
}

@end