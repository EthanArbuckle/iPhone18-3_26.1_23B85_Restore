@interface PRUISPosterLayoutUtilities
+ (id)titleBoundsForLayout:(unint64_t)layout orientation:(int64_t)orientation role:(id)role error:(id *)error;
+ (id)titleBoundsForLayout:(unint64_t)layout orientation:(int64_t)orientation traitCollection:(id)collection role:(id)role error:(id *)error;
@end

@implementation PRUISPosterLayoutUtilities

+ (id)titleBoundsForLayout:(unint64_t)layout orientation:(int64_t)orientation role:(id)role error:(id *)error
{
  roleCopy = role;
  v11 = objc_opt_new();
  v12 = [self titleBoundsForLayout:layout orientation:orientation traitCollection:v11 role:roleCopy error:error];

  return v12;
}

+ (id)titleBoundsForLayout:(unint64_t)layout orientation:(int64_t)orientation traitCollection:(id)collection role:(id)role error:(id *)error
{
  v44[1] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  roleCopy = role;
  if (error)
  {
    if (layout)
    {
LABEL_3:
      v14 = MEMORY[0x1E696ABC0];
      v43 = *MEMORY[0x1E696A588];
      v44[0] = @"Unsupported layout, must be HorizontalTopCentered.";
      v15 = MEMORY[0x1E695DF20];
      v16 = v44;
      v17 = &v43;
LABEL_23:
      mainConfiguration = [v15 dictionaryWithObjects:v16 forKeys:v17 count:1];
      [v14 pr_errorWithCode:2 userInfo:mainConfiguration];
      *error = v37 = 0;
      goto LABEL_24;
    }
  }

  else
  {
    [PRUISPosterLayoutUtilities titleBoundsForLayout:a2 orientation:self traitCollection:? role:? error:?];
    if (layout)
    {
      goto LABEL_3;
    }
  }

  if (([roleCopy isEqualToString:*MEMORY[0x1E69C53C0]] & 1) == 0)
  {
    v14 = MEMORY[0x1E696ABC0];
    v41 = *MEMORY[0x1E696A588];
    v42 = @"Unsupported role, must be LockScreen.";
    v15 = MEMORY[0x1E695DF20];
    v16 = &v42;
    v17 = &v41;
    goto LABEL_23;
  }

  pui_sharedDisplayMonitor = [MEMORY[0x1E699FB10] pui_sharedDisplayMonitor];
  mainConfiguration = [pui_sharedDisplayMonitor mainConfiguration];

  [mainConfiguration bounds];
  if (v20 >= v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = v20;
  }

  if (v20 >= v21)
  {
    v23 = v20;
  }

  else
  {
    v23 = v21;
  }

  IsLandscape = BSInterfaceOrientationIsLandscape();
  if (IsLandscape)
  {
    v25 = v23;
  }

  else
  {
    v25 = v22;
  }

  if (!IsLandscape)
  {
    v22 = v23;
  }

  if (!collectionCopy)
  {
    collectionCopy = [MEMORY[0x1E69DD1B8] traitCollectionWithTraits:&__block_literal_global_15];
  }

  [collectionCopy displayScale];
  if (v26 == 0.0)
  {
    v27 = MEMORY[0x1E69DD1B8];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __90__PRUISPosterLayoutUtilities_titleBoundsForLayout_orientation_traitCollection_role_error___block_invoke_2;
    v39[3] = &unk_1E83A77D8;
    v40 = mainConfiguration;
    v28 = [v27 traitCollectionWithTraits:v39];

    collectionCopy = v28;
  }

  v29 = objc_alloc(MEMORY[0x1E69C52A8]);
  v30 = [[_PRUISFakeTraitEnvironment alloc] initWithTraitCollection:collectionCopy];
  v31 = [v29 initWithTraitEnvironment:v30];

  v32 = [v31 frameAttributesForElements:1 variant:1 titleLayout:0 withBoundingRect:{0.0, 0.0, v25, v22}];
  [v32 rect];
  v37 = [MEMORY[0x1E696B098] valueWithRect:{v33 / v25, v34 / v22, v35 / v25, v36 / v22}];

LABEL_24:

  return v37;
}

void __90__PRUISPosterLayoutUtilities_titleBoundsForLayout_orientation_traitCollection_role_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 pointScale];
  [v3 setDisplayScale:?];
}

+ (void)titleBoundsForLayout:(uint64_t)a1 orientation:(uint64_t)a2 traitCollection:role:error:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PRUISPosterLayoutUtilities.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"outError != nil"}];
}

@end