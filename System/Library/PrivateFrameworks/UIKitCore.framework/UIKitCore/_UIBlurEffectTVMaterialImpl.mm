@interface _UIBlurEffectTVMaterialImpl
- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)a3 toEnvironment:(id)a4 usage:(int64_t)a5;
- (BOOL)isEqual:(id)a3;
- (_UIBlurEffectTVMaterialImpl)initWithRecipe:(id)a3;
- (_UIBlurEffectTVMaterialImpl)initWithStyle:(int64_t)a3;
- (id)implementationForUserInterfaceStyle:(int64_t)a3;
- (void)_updateEffectDescriptor:(id)a3 forEnvironment:(id)a4 usage:(int64_t)a5;
- (void)appendDescriptionTo:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIBlurEffectTVMaterialImpl

- (_UIBlurEffectTVMaterialImpl)initWithStyle:(int64_t)a3
{
  v4 = [_UIBlurEffectTVRecipe recipeForStyle:a3];
  if (v4)
  {
    self = [(_UIBlurEffectTVMaterialImpl *)self initWithRecipe:v4];
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_UIBlurEffectTVMaterialImpl)initWithRecipe:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _UIBlurEffectTVMaterialImpl;
  v6 = [(_UIBlurEffectTVMaterialImpl *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recipe, a3);
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  recipe = self->_recipe;
  v4 = a3;
  _UIBlurEffectEncodeModernStyleWithCoder(v4, [(_UIBlurEffectTVRecipe *)recipe style]);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    recipe = self->_recipe;
    v6 = v4;
    v7 = [(_UIBlurEffectTVRecipe *)recipe style];
    v8 = v6[1];

    v9 = v7 == [v8 style];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)implementationForUserInterfaceStyle:(int64_t)a3
{
  v4 = [(_UIBlurEffectTVRecipe *)self->_recipe recipeForUserInterfaceStyle:a3];
  v5 = [v4 style];
  if (v5 == [(_UIBlurEffectTVRecipe *)self->_recipe style])
  {
    v6 = self;
  }

  else
  {
    v6 = [objc_alloc(objc_opt_class()) initWithRecipe:v4];
  }

  v7 = v6;

  return v7;
}

- (void)_updateEffectDescriptor:(id)a3 forEnvironment:(id)a4 usage:(int64_t)a5
{
  v52[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [(_UIBlurEffectTVRecipe *)self->_recipe preBackdropTint];

  if (v9)
  {
    v45 = 0;
    v46 = 0;
    v44 = 0;
    [(_UIBlurEffectTVRecipe *)self->_recipe preBackdropTintAlpha];
    v10 = [(_UIBlurEffectTVRecipe *)self->_recipe preBackdropTint];
    [v10 getRed:&v46 green:&v45 blue:&v44 alpha:0];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    v11 = [(_UIBlurEffectTVRecipe *)self->_recipe preBackdropBlendMode];
    v12 = *MEMORY[0x1E6979CF8];

    v35 = v8;
    v36 = v7;
    if (v11 == v12)
    {
      CAColorMatrixMakePlusL();
    }

    else
    {
      v13 = [(_UIBlurEffectTVRecipe *)self->_recipe preBackdropBlendMode];
      v14 = *MEMORY[0x1E6979CE8];

      if (v13 == v14)
      {
        CAColorMatrixMakePlusD();
      }

      else
      {
        CAColorMatrixMakeColorSourceOver();
      }
    }

    v34 = [_UIVisualEffectFilterEntry alloc];
    v15 = *MEMORY[0x1E6979880];
    v51 = *MEMORY[0x1E6979BA0];
    v52[0] = @"default";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
    v49 = *MEMORY[0x1E6979AC0];
    v17 = v49;
    v38[2] = v41;
    v38[3] = v42;
    v38[4] = v43;
    v38[0] = v39;
    v38[1] = v40;
    v18 = [MEMORY[0x1E696B098] valueWithBytes:v38 objCType:"{CAColorMatrix=ffffffffffffffffffff}"];
    v50 = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v47 = v17;
    v20 = *(MEMORY[0x1E6979280] + 48);
    v37[2] = *(MEMORY[0x1E6979280] + 32);
    v37[3] = v20;
    v37[4] = *(MEMORY[0x1E6979280] + 64);
    v21 = *(MEMORY[0x1E6979280] + 16);
    v37[0] = *MEMORY[0x1E6979280];
    v37[1] = v21;
    v22 = [MEMORY[0x1E696B098] valueWithBytes:v37 objCType:"{CAColorMatrix=ffffffffffffffffffff}"];
    v48 = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v24 = [(_UIVisualEffectFilterEntry *)v34 initWithFilterType:v15 configurationValues:v16 requestedValues:v19 identityValues:v23];

    v7 = v36;
    [v36 addFilterEntry:v24];

    v8 = v35;
  }

  [(_UIBlurEffectTVRecipe *)self->_recipe blurRadius];
  if (v25 != 0.0 && [v8 allowsBlurring])
  {
    if ([v8 reducedTransperancy])
    {
      _UIBlurEffectAddAverageColorFilterEntry(v7, v8, 0.625);
    }

    else
    {
      [(_UIBlurEffectTVRecipe *)self->_recipe blurRadius];
      _UIBlurEffectAddBlurFilterEntry(v7, v8, v26, 0.625);
    }
  }

  [(_UIBlurEffectTVRecipe *)self->_recipe backdropTintAlpha];
  if (v27 > 0.0)
  {
    v28 = *MEMORY[0x1E6979D40];
    v29 = [(_UIBlurEffectTVRecipe *)self->_recipe backdropTint];
    [(_UIBlurEffectTVRecipe *)self->_recipe backdropTintAlpha];
    v30 = [_UIOverlayEffectViewEntry newEntryWithFilterType:v28 color:v29 alpha:?];
    [v7 addOverlay:v30];
  }

  [(_UIBlurEffectTVRecipe *)self->_recipe saturation];
  if (v31 != 1.0)
  {
    [(_UIBlurEffectTVRecipe *)self->_recipe saturation];
    v32 = [UIColorEffect colorEffectSaturate:?];
    v33 = [v32 _filterEntry];
    [v7 addFilterEntry:v33];
  }
}

- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)a3 toEnvironment:(id)a4 usage:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (_UICoreMaterialStyleNeedsUpdateForEnvironmentChange([(_UIBlurEffectTVRecipe *)self->_recipe style], v8, v9))
  {
    v10 = 1;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = _UIBlurEffectTVMaterialImpl;
    v10 = [(_UIBlurEffectImpl *)&v12 _needsUpdateForTransitionFromEnvironment:v8 toEnvironment:v9 usage:a5];
  }

  return v10;
}

- (void)appendDescriptionTo:(id)a3
{
  recipe = self->_recipe;
  v4 = a3;
  v5 = _UIStyledEffectConvertToString([(_UIBlurEffectTVRecipe *)recipe style]);
  [v4 appendFormat:@" style=%@", v5];
}

@end