@interface PUIMaterialTreatment
- (BOOL)commitToRenderingTree:(id)a3 options:(id)a4 error:(id *)a5;
- (PUIMaterialTreatment)initWithCoder:(id)a3;
- (PUIMaterialTreatment)initWithRecipeName:(id)a3 fromBundle:(id)a4;
- (double)resolvedBackdropScale;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)encodeWithCoder:(id)a3;
- (void)layoutSublayersOfLayer:(id)a3;
@end

@implementation PUIMaterialTreatment

- (double)resolvedBackdropScale
{
  v3 = [(PUIMaterialTreatment *)self backdropScaleAdjustment];

  if (!v3)
  {
    return -1.0;
  }

  v4 = [(PUIMaterialTreatment *)self backdropScaleAdjustment];
  [(PUIMaterialTreatment *)self weighting];
  v5 = v4[2](v4);

  return v5;
}

- (PUIMaterialTreatment)initWithRecipeName:(id)a3 fromBundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUIMaterialTreatment *)self init];
  if (v8)
  {
    v9 = [v6 copy];
    recipeName = v8->_recipeName;
    v8->_recipeName = v9;

    objc_storeStrong(&v8->_recipeBundle, a4);
    v8->_weighting = 1.0;
    v8->_usesStaticBackdropScaleFactor = 0;
  }

  return v8;
}

- (BOOL)commitToRenderingTree:(id)a3 options:(id)a4 error:(id *)a5
{
  v33[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
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
      v27 = MEMORY[0x1AC5769F0]();
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __60__PUIMaterialTreatment_commitToRenderingTree_options_error___block_invoke;
      v19[3] = &unk_1E7856858;
      v21 = &v22;
      v20 = v9;
      [v12 setBackdropScaleAdjustment:v19];

      _Block_object_dispose(&v22, 8);
    }

    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__9;
    v26 = __Block_byref_object_dispose__9;
    v27 = [v12 blurRadiusTransformer];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __60__PUIMaterialTreatment_commitToRenderingTree_options_error___block_invoke_2;
    v16[3] = &unk_1E7856880;
    v18 = &v22;
    v17 = v9;
    [v12 setBlurRadiusTransformer:v16];
    [v8 bounds];
    [v12 setFrame:?];
    [v8 addSublayer:v12];

    _Block_object_dispose(&v22, 8);
    goto LABEL_9;
  }

  if (a5)
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A588];
    v32[0] = *MEMORY[0x1E696A580];
    v32[1] = v14;
    v33[0] = @"MTMaterialLayer could not be loaded.";
    v33[1] = @"Check that the current process is able to link CoreMaterial and MaterialKit.";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
    *a5 = [v13 errorWithDomain:@"com.apple.PosterUIFoundation.PUIRenderer" code:1 userInfo:v12];
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

- (void)layoutSublayersOfLayer:(id)a3
{
  v5 = a3;
  v3 = [v5 superlayer];
  v4 = v3;
  if (v3)
  {
    [v3 bounds];
    [v5 setFrame:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setWeighting:self->_weighting];
  [v4 setBackdropScaleAdjustment:self->_backdropScaleAdjustment];
  [v4 setRecipeBundle:self->_recipeBundle];
  [v4 setRecipeName:self->_recipeName];
  return v4;
}

- (PUIMaterialTreatment)initWithCoder:(id)a3
{
  v23[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PUIMaterialTreatment *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RecipeName"];
    recipeName = v5->_recipeName;
    v5->_recipeName = v6;

    [v4 decodeDoubleForKey:@"Weighting"];
    v5->_weighting = v8;
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RecipeBundle_URL"];
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

        [v4 failWithError:v20];
        v15 = 0;
        goto LABEL_8;
      }
    }

    [v4 decodeDoubleForKey:@"ResolvedBackdropScaleAdjustment"];
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

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [v8 encodeObject:self->_recipeName forKey:@"RecipeName"];
  recipeBundle = self->_recipeBundle;
  if (recipeBundle)
  {
    v5 = [(NSBundle *)recipeBundle bundleURL];
    [v8 encodeObject:v5 forKey:@"RecipeBundle_URL"];
  }

  else
  {
    [v8 encodeObject:0 forKey:@"RecipeBundle_URL"];
  }

  [v8 encodeDouble:@"Weighting" forKey:self->_weighting];
  backdropScaleAdjustment = self->_backdropScaleAdjustment;
  if (backdropScaleAdjustment)
  {
    backdropScaleAdjustment[2](self->_weighting);
  }

  else
  {
    v7 = -1.0;
  }

  [v8 encodeDouble:@"ResolvedBackdropScaleAdjustment" forKey:v7];
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(PUIMaterialTreatment *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
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
    v11 = [(PUIMaterialTreatment *)self usesStaticBackdropScaleFactor];
    v12 = @"depends-on-weight";
    if (v11)
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
  v2 = [(PUIMaterialTreatment *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

@end