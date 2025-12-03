@interface _UIBlurEffectTVMaterialImpl
- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)environment toEnvironment:(id)toEnvironment usage:(int64_t)usage;
- (BOOL)isEqual:(id)equal;
- (_UIBlurEffectTVMaterialImpl)initWithRecipe:(id)recipe;
- (_UIBlurEffectTVMaterialImpl)initWithStyle:(int64_t)style;
- (id)implementationForUserInterfaceStyle:(int64_t)style;
- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage;
- (void)appendDescriptionTo:(id)to;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIBlurEffectTVMaterialImpl

- (_UIBlurEffectTVMaterialImpl)initWithStyle:(int64_t)style
{
  v4 = [_UIBlurEffectTVRecipe recipeForStyle:style];
  if (v4)
  {
    self = [(_UIBlurEffectTVMaterialImpl *)self initWithRecipe:v4];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_UIBlurEffectTVMaterialImpl)initWithRecipe:(id)recipe
{
  recipeCopy = recipe;
  v9.receiver = self;
  v9.super_class = _UIBlurEffectTVMaterialImpl;
  v6 = [(_UIBlurEffectTVMaterialImpl *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recipe, recipe);
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  recipe = self->_recipe;
  coderCopy = coder;
  _UIBlurEffectEncodeModernStyleWithCoder(coderCopy, [(_UIBlurEffectTVRecipe *)recipe style]);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    recipe = self->_recipe;
    v6 = equalCopy;
    style = [(_UIBlurEffectTVRecipe *)recipe style];
    v8 = v6[1];

    v9 = style == [v8 style];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)implementationForUserInterfaceStyle:(int64_t)style
{
  v4 = [(_UIBlurEffectTVRecipe *)self->_recipe recipeForUserInterfaceStyle:style];
  style = [v4 style];
  if (style == [(_UIBlurEffectTVRecipe *)self->_recipe style])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [objc_alloc(objc_opt_class()) initWithRecipe:v4];
  }

  v7 = selfCopy;

  return v7;
}

- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage
{
  v52[1] = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  environmentCopy = environment;
  preBackdropTint = [(_UIBlurEffectTVRecipe *)self->_recipe preBackdropTint];

  if (preBackdropTint)
  {
    v45 = 0;
    v46 = 0;
    v44 = 0;
    [(_UIBlurEffectTVRecipe *)self->_recipe preBackdropTintAlpha];
    preBackdropTint2 = [(_UIBlurEffectTVRecipe *)self->_recipe preBackdropTint];
    [preBackdropTint2 getRed:&v46 green:&v45 blue:&v44 alpha:0];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    preBackdropBlendMode = [(_UIBlurEffectTVRecipe *)self->_recipe preBackdropBlendMode];
    v12 = *MEMORY[0x1E6979CF8];

    v35 = environmentCopy;
    v36 = descriptorCopy;
    if (preBackdropBlendMode == v12)
    {
      CAColorMatrixMakePlusL();
    }

    else
    {
      preBackdropBlendMode2 = [(_UIBlurEffectTVRecipe *)self->_recipe preBackdropBlendMode];
      v14 = *MEMORY[0x1E6979CE8];

      if (preBackdropBlendMode2 == v14)
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

    descriptorCopy = v36;
    [v36 addFilterEntry:v24];

    environmentCopy = v35;
  }

  [(_UIBlurEffectTVRecipe *)self->_recipe blurRadius];
  if (v25 != 0.0 && [environmentCopy allowsBlurring])
  {
    if ([environmentCopy reducedTransperancy])
    {
      _UIBlurEffectAddAverageColorFilterEntry(descriptorCopy, environmentCopy, 0.625);
    }

    else
    {
      [(_UIBlurEffectTVRecipe *)self->_recipe blurRadius];
      _UIBlurEffectAddBlurFilterEntry(descriptorCopy, environmentCopy, v26, 0.625);
    }
  }

  [(_UIBlurEffectTVRecipe *)self->_recipe backdropTintAlpha];
  if (v27 > 0.0)
  {
    v28 = *MEMORY[0x1E6979D40];
    backdropTint = [(_UIBlurEffectTVRecipe *)self->_recipe backdropTint];
    [(_UIBlurEffectTVRecipe *)self->_recipe backdropTintAlpha];
    v30 = [_UIOverlayEffectViewEntry newEntryWithFilterType:v28 color:backdropTint alpha:?];
    [descriptorCopy addOverlay:v30];
  }

  [(_UIBlurEffectTVRecipe *)self->_recipe saturation];
  if (v31 != 1.0)
  {
    [(_UIBlurEffectTVRecipe *)self->_recipe saturation];
    v32 = [UIColorEffect colorEffectSaturate:?];
    _filterEntry = [v32 _filterEntry];
    [descriptorCopy addFilterEntry:_filterEntry];
  }
}

- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)environment toEnvironment:(id)toEnvironment usage:(int64_t)usage
{
  environmentCopy = environment;
  toEnvironmentCopy = toEnvironment;
  if (_UICoreMaterialStyleNeedsUpdateForEnvironmentChange([(_UIBlurEffectTVRecipe *)self->_recipe style], environmentCopy, toEnvironmentCopy))
  {
    v10 = 1;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = _UIBlurEffectTVMaterialImpl;
    v10 = [(_UIBlurEffectImpl *)&v12 _needsUpdateForTransitionFromEnvironment:environmentCopy toEnvironment:toEnvironmentCopy usage:usage];
  }

  return v10;
}

- (void)appendDescriptionTo:(id)to
{
  recipe = self->_recipe;
  toCopy = to;
  v5 = _UIStyledEffectConvertToString([(_UIBlurEffectTVRecipe *)recipe style]);
  [toCopy appendFormat:@" style=%@", v5];
}

@end