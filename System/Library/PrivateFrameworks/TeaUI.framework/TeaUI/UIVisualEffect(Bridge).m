@interface UIVisualEffect(Bridge)
+ (id)ts_floatingTabBarEffect;
+ (id)ts_visualEffectsForBarWithBackgroundColor:()Bridge;
+ (id)ts_visualEffectsForBlackBackgroundBarAppearance;
+ (id)ts_visualEffectsForWhiteBackgroundBarAppearance;
@end

@implementation UIVisualEffect(Bridge)

+ (id)ts_visualEffectsForBarWithBackgroundColor:()Bridge
{
  v3[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DD290] effectCompositingColor:?];
  v3[0] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];

  return v1;
}

+ (id)ts_visualEffectsForWhiteBackgroundBarAppearance
{
  v22[4] = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = 0;
  v17 = 0;
  v18 = 0;
  v6 = 0x3FE0000000000000;
  v7 = 0;
  v10 = 0;
  v11 = 0x3FE0000000000000;
  v12 = 0u;
  v13 = 0u;
  v15 = 0;
  v16 = 0;
  v14 = 0x3FE0000000000000;
  v19 = xmmword_1D819CE40;
  v20 = vdupq_n_s64(0x3FDF0A3D70A3D70AuLL);
  v21 = 0x3FE0000000000000;
  v0 = [MEMORY[0x1E69DC898] colorEffectMatrix:&v6];
  v8 = 0;
  v9 = 0;
  v17 = 0;
  v18 = 0;
  v6 = 0x3FC3333333333333;
  v7 = 0;
  v10 = 0;
  v11 = 0x3FC3333333333333;
  v12 = 0u;
  v13 = 0u;
  v15 = 0;
  v16 = 0;
  v14 = 0x3FC3333333333333;
  v19 = xmmword_1D819CE50;
  v20 = vdupq_n_s64(0x3FEB333333333333uLL);
  v21 = 0x3FEB333333333333;
  v1 = [MEMORY[0x1E69DC898] colorEffectMatrix:&v6];
  v2 = [MEMORY[0x1E69DC730] effectWithBlurRadius:20.0];
  v22[0] = v2;
  v3 = [MEMORY[0x1E69DC898] colorEffectSaturate:0.0];
  v22[1] = v3;
  v22[2] = v0;
  v22[3] = v1;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];

  return v4;
}

+ (id)ts_visualEffectsForBlackBackgroundBarAppearance
{
  v22[4] = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = 0;
  v17 = 0;
  v18 = 0;
  v6 = 0x3FE0000000000000;
  v7 = 0;
  v10 = 0;
  v11 = 0x3FE0000000000000;
  v12 = 0u;
  v13 = 0u;
  v15 = 0;
  v16 = 0;
  v14 = 0x3FE0000000000000;
  v19 = xmmword_1D819CE40;
  v20 = vdupq_n_s64(0x3FDF0A3D70A3D70AuLL);
  v21 = 0x3FE0000000000000;
  v0 = [MEMORY[0x1E69DC898] colorEffectMatrix:&v6];
  v8 = 0;
  v9 = 0;
  v17 = 0;
  v18 = 0;
  v6 = 0x3FC3333333333333;
  v7 = 0;
  v10 = 0;
  v11 = 0x3FC3333333333333;
  v12 = 0u;
  v13 = 0u;
  v15 = 0;
  v16 = 0;
  v14 = 0x3FC3333333333333;
  v19 = vdupq_n_s64(0x3FC3333333333333uLL);
  v20 = v19;
  v21 = 0x3FEB333333333333;
  v1 = [MEMORY[0x1E69DC898] colorEffectMatrix:&v6];
  v2 = [MEMORY[0x1E69DC730] effectWithBlurRadius:20.0];
  v22[0] = v2;
  v3 = [MEMORY[0x1E69DC898] colorEffectSaturate:0.0];
  v22[1] = v3;
  v22[2] = v0;
  v22[3] = v1;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];

  return v4;
}

+ (id)ts_floatingTabBarEffect
{
  v15[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:0.25 alpha:0.06];
  v1 = [MEMORY[0x1E69DC888] colorWithRed:0.75 green:0.75 blue:1.0 alpha:0.06];
  v2 = MEMORY[0x1E69DC888];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__UIVisualEffect_Bridge__ts_floatingTabBarEffect__block_invoke;
  v12[3] = &unk_1E84F3EA0;
  v13 = v1;
  v14 = v0;
  v3 = v0;
  v4 = v1;
  v5 = [v2 colorWithDynamicProvider:v12];
  v6 = MEMORY[0x1E69DD290];
  v7 = [MEMORY[0x1E69DC730] effectWithStyle:8];
  v15[0] = v7;
  v8 = [MEMORY[0x1E69DD290] effectCompositingColor:v5];
  v15[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v10 = [v6 effectCombiningEffects:v9];

  return v10;
}

@end