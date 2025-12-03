@interface PUIMaterialTreatment
- (BOOL)commitToRenderingTree:(id)tree options:(id)options error:(id *)error;
- (PUIMaterialTreatment)initWithCoder:(id)coder;
- (PUIMaterialTreatment)initWithRecipeName:(id)name fromBundle:(id)bundle;
- (double)resolvedBackdropScale;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)encodeWithCoder:(id)coder;
- (void)layoutSublayersOfLayer:(id)layer;
@end

@implementation PUIMaterialTreatment

- (double)resolvedBackdropScale
{
  backdropScaleAdjustment = [(PUIMaterialTreatment *)self backdropScaleAdjustment];

  if (!backdropScaleAdjustment)
  {
    return -1.0;
  }

  backdropScaleAdjustment2 = [(PUIMaterialTreatment *)self backdropScaleAdjustment];
  [(PUIMaterialTreatment *)self weighting];
  v5 = backdropScaleAdjustment2[2](backdropScaleAdjustment2);

  return v5;
}

- (PUIMaterialTreatment)initWithRecipeName:(id)name fromBundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v8 = [(PUIMaterialTreatment *)self init];
  if (v8)
  {
    v9 = [nameCopy copy];
    recipeName = v8->_recipeName;
    v8->_recipeName = v9;

    objc_storeStrong(&v8->_recipeBundle, bundle);
    v8->_weighting = 1.0;
    v8->_usesStaticBackdropScaleFactor = 0;
  }

  return v8;
}

- (BOOL)commitToRenderingTree:(id)tree options:(id)options error:(id *)error
{
  v33[2] = *MEMORY[0x1E69E9840];
  treeCopy = tree;
  optionsCopy = options;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v10 = getMTMaterialLayerClass_softClass;
  v31 = getMTMaterialLayerClass_softClass;
  if (!getMTMaterialLayerClass_softClass)
  {
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __getMTMaterialLayerClass_block_invoke;
    v25 = &unk_1E7854348;
    v26 = &v28;
    __getMTMaterialLayerClass_block_invoke(&v22);
    v10 = v29[3];
  }

  v11 = v10;
  _Block_object_dispose(&v28, 8);
  if (v10)
  {
    v12 = objc_alloc_init(v10);
    [v12 setDelegate:self];
    [v12 setRecipeName:self->_recipeName fromBundle:self->_recipeBundle];
    [v12 setWeighting:self->_weighting];
    if (self->_backdropScaleAdjustment)
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x3032000000;
      v25 = __Block_byref_object_copy__9;
      v26 = __Block_byref_object_dispose__9;
      blurRadiusTransformer = MEMORY[0x1AC5769F0]();
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __60__PUIMaterialTreatment_commitToRenderingTree_options_error___block_invoke;
      v19[3] = &unk_1E7856858;
      v21 = &v22;
      v20 = optionsCopy;
      [v12 setBackdropScaleAdjustment:v19];

      _Block_object_dispose(&v22, 8);
    }

    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__9;
    v26 = __Block_byref_object_dispose__9;
    blurRadiusTransformer = [v12 blurRadiusTransformer];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __60__PUIMaterialTreatment_commitToRenderingTree_options_error___block_invoke_2;
    v16[3] = &unk_1E7856880;
    v18 = &v22;
    v17 = optionsCopy;
    [v12 setBlurRadiusTransformer:v16];
    [treeCopy bounds];
    [v12 setFrame:?];
    [treeCopy addSublayer:v12];

    _Block_object_dispose(&v22, 8);
    goto LABEL_9;
  }

  if (error)
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A588];
    v32[0] = *MEMORY[0x1E696A580];
    v32[1] = v14;
    v33[0] = @"MTMaterialLayer could not be loaded.";
    v33[1] = @"Check that the current process is able to link CoreMaterial and MaterialKit.";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
    *error = [v13 errorWithDomain:@"com.apple.PosterUIFoundation.PUIRenderer" code:1 userInfo:v12];
LABEL_9:
  }

  return v10 != 0;
}

double __60__PUIMaterialTreatment_commitToRenderingTree_options_error___block_invoke(uint64_t a1)
{
  v2 = (*(*(*(*(a1 + 40) + 8) + 40) + 16))();
  [*(a1 + 32) scaleReductionFactor];
  return v2 / v3;
}

double __60__PUIMaterialTreatment_commitToRenderingTree_options_error___block_invoke_2(uint64_t a1)
{
  v2 = (*(*(*(*(a1 + 40) + 8) + 40) + 16))();
  [*(a1 + 32) scaleReductionFactor];
  return v2 / v3;
}

- (void)layoutSublayersOfLayer:(id)layer
{
  layerCopy = layer;
  superlayer = [layerCopy superlayer];
  v4 = superlayer;
  if (superlayer)
  {
    [superlayer bounds];
    [layerCopy setFrame:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setWeighting:self->_weighting];
  [v4 setBackdropScaleAdjustment:self->_backdropScaleAdjustment];
  [v4 setRecipeBundle:self->_recipeBundle];
  [v4 setRecipeName:self->_recipeName];
  return v4;
}

- (PUIMaterialTreatment)initWithCoder:(id)coder
{
  v23[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [(PUIMaterialTreatment *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RecipeName"];
    recipeName = v5->_recipeName;
    v5->_recipeName = v6;

    [coderCopy decodeDoubleForKey:@"Weighting"];
    v5->_weighting = v8;
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RecipeBundle_URL"];
    if (v9)
    {
      v10 = [MEMORY[0x1E696AAE8] bundleWithURL:v9];
      recipeBundle = v5->_recipeBundle;
      v5->_recipeBundle = v10;

      if (!v5->_recipeBundle)
      {
        v17 = MEMORY[0x1E696ABC0];
        v18 = *MEMORY[0x1E696A250];
        v22 = *MEMORY[0x1E696A998];
        v23[0] = v9;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
        v20 = [v17 errorWithDomain:v18 code:260 userInfo:v19];

        [coderCopy failWithError:v20];
        v15 = 0;
        goto LABEL_8;
      }
    }

    [coderCopy decodeDoubleForKey:@"ResolvedBackdropScaleAdjustment"];
    if (v12 != -1.0)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __38__PUIMaterialTreatment_initWithCoder___block_invoke;
      v21[3] = &__block_descriptor_40_e8_d16__0d8l;
      *&v21[4] = v12;
      v13 = MEMORY[0x1AC5769F0](v21);
      backdropScaleAdjustment = v5->_backdropScaleAdjustment;
      v5->_backdropScaleAdjustment = v13;
    }
  }

  v15 = v5;
LABEL_8:

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_recipeName forKey:@"RecipeName"];
  recipeBundle = self->_recipeBundle;
  if (recipeBundle)
  {
    bundleURL = [(NSBundle *)recipeBundle bundleURL];
    [coderCopy encodeObject:bundleURL forKey:@"RecipeBundle_URL"];
  }

  else
  {
    [coderCopy encodeObject:0 forKey:@"RecipeBundle_URL"];
  }

  [coderCopy encodeDouble:@"Weighting" forKey:self->_weighting];
  backdropScaleAdjustment = self->_backdropScaleAdjustment;
  if (backdropScaleAdjustment)
  {
    backdropScaleAdjustment[2](self->_weighting);
  }

  else
  {
    v7 = -1.0;
  }

  [coderCopy encodeDouble:@"ResolvedBackdropScaleAdjustment" forKey:v7];
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(PUIMaterialTreatment *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v4 appendString:self->_recipeName withName:@"recipe"];
  v5 = [v4 appendDouble:@"weighting" withName:3 decimalPrecision:self->_weighting];
  v6 = [v4 appendObject:self->_recipeBundle withName:@"bundle" skipIfNil:1];
  [(PUIMaterialTreatment *)self resolvedBackdropScale];
  if (v7 >= 0.0)
  {
    v8 = MEMORY[0x1E696AEC0];
    [(PUIMaterialTreatment *)self resolvedBackdropScale];
    v10 = v9;
    usesStaticBackdropScaleFactor = [(PUIMaterialTreatment *)self usesStaticBackdropScaleFactor];
    v12 = @"depends-on-weight";
    if (usesStaticBackdropScaleFactor)
    {
      v12 = @"fixed";
    }

    v13 = [v8 stringWithFormat:@"%f (%@)", v10, v12];
    [v4 appendString:v13 withName:@"backdropScale"];
  }

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(PUIMaterialTreatment *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

@end