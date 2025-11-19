@interface PBCoercionRegistry(UIKit)
- (void)uikit_registerExtraCoercions;
@end

@implementation PBCoercionRegistry(UIKit)

- (void)uikit_registerExtraCoercions
{
  [a1 registerCoercionFromObjectOfClass:objc_opt_class() toRepresentationOfType:@"com.apple.uikit.image" coercionBlock:&__block_literal_global_272];
  v2 = objc_opt_class();
  v3 = *MEMORY[0x1E6982F28];
  v4 = [*MEMORY[0x1E6982F28] identifier];
  [a1 registerCoercionFromObjectOfClass:v2 toRepresentationOfType:v4 coercionBlock:&__block_literal_global_275_1];

  v5 = objc_opt_class();
  v6 = *MEMORY[0x1E6982E58];
  v7 = [*MEMORY[0x1E6982E58] identifier];
  [a1 registerCoercionFromObjectOfClass:v5 toRepresentationOfType:v7 coercionBlock:&__block_literal_global_277_3];

  [a1 registerCoercionFromRepresentationConformingToType:@"com.apple.uikit.image" toObjectOfClass:objc_opt_class() coercionBlock:&__block_literal_global_280_0];
  v8 = [v3 identifier];
  v9 = objc_opt_class();
  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = __57__PBCoercionRegistry_UIKit__uikit_registerExtraCoercions__block_invoke_6;
  v74[3] = &unk_1E711A900;
  v75 = &__block_literal_global_283_0;
  [a1 registerCoercionFromRepresentationConformingToType:v8 toObjectOfClass:v9 coercionBlock:v74];

  v10 = [v6 identifier];
  v11 = objc_opt_class();
  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = __57__PBCoercionRegistry_UIKit__uikit_registerExtraCoercions__block_invoke_7;
  v72[3] = &unk_1E711A900;
  v73 = &__block_literal_global_283_0;
  [a1 registerCoercionFromRepresentationConformingToType:v10 toObjectOfClass:v11 coercionBlock:v72];

  v12 = [*MEMORY[0x1E6983008] identifier];
  v13 = objc_opt_class();
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __57__PBCoercionRegistry_UIKit__uikit_registerExtraCoercions__block_invoke_8;
  v70[3] = &unk_1E711A900;
  v71 = &__block_literal_global_283_0;
  [a1 registerCoercionFromRepresentationConformingToType:v12 toObjectOfClass:v13 coercionBlock:v70];

  v14 = [*MEMORY[0x1E6982DE8] identifier];
  v15 = objc_opt_class();
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __57__PBCoercionRegistry_UIKit__uikit_registerExtraCoercions__block_invoke_9;
  v68[3] = &unk_1E711A900;
  v69 = &__block_literal_global_283_0;
  [a1 registerCoercionFromRepresentationConformingToType:v14 toObjectOfClass:v15 coercionBlock:v68];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__PBCoercionRegistry_UIKit__uikit_registerExtraCoercions__block_invoke_14;
  aBlock[3] = &unk_1E711AA08;
  v66 = &__block_literal_global_293;
  v67 = &__block_literal_global_289_1;
  v61 = _Block_copy(aBlock);
  [a1 registerCoercionFromObjectOfClass:objc_opt_class() toRepresentationOfType:@"com.apple.uikit.attributedstring" coercionBlock:&__block_literal_global_299_1];
  v16 = objc_opt_class();
  v17 = *MEMORY[0x1E6982F98];
  v18 = [*MEMORY[0x1E6982F98] identifier];
  v62 = *off_1E70EC998;
  v19 = __57__PBCoercionRegistry_UIKit__uikit_registerExtraCoercions__block_invoke_10(v18, *off_1E70EC998);
  [a1 registerCoercionFromObjectOfClass:v16 toRepresentationOfType:v18 coercionBlock:v19];

  v20 = objc_opt_class();
  v21 = *MEMORY[0x1E6982F40];
  v22 = [*MEMORY[0x1E6982F40] identifier];
  v23 = *off_1E70EC990;
  v60 = *off_1E70EC990;
  v24 = __57__PBCoercionRegistry_UIKit__uikit_registerExtraCoercions__block_invoke_10(v22, *off_1E70EC990);
  [a1 registerCoercionFromObjectOfClass:v20 toRepresentationOfType:v22 coercionBlock:v24];

  v25 = objc_opt_class();
  [a1 registerCoercionFromObjectOfClass:v25 toObjectOfClass:objc_opt_class() coercionBlock:&__block_literal_global_303_2];
  [a1 registerCoercionFromRepresentationConformingToType:@"com.apple.uikit.attributedstring" toObjectOfClass:objc_opt_class() coercionBlock:&__block_literal_global_305_1];
  v26 = [v17 identifier];
  v27 = objc_opt_class();
  v28 = __57__PBCoercionRegistry_UIKit__uikit_registerExtraCoercions__block_invoke_12(v27, v62);
  [a1 registerCoercionFromRepresentationConformingToType:v26 toObjectOfClass:v27 coercionBlock:v28];

  v29 = *MEMORY[0x1E6982F90];
  v59 = *MEMORY[0x1E6982F90];
  v30 = [*MEMORY[0x1E6982F90] identifier];
  v31 = objc_opt_class();
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __57__PBCoercionRegistry_UIKit__uikit_registerExtraCoercions__block_invoke_20;
  v63[3] = &unk_1E711A900;
  v64 = &__block_literal_global_293;
  [a1 registerCoercionFromRepresentationConformingToType:v30 toObjectOfClass:v31 coercionBlock:v63];

  v32 = [v21 identifier];
  v33 = objc_opt_class();
  v34 = __57__PBCoercionRegistry_UIKit__uikit_registerExtraCoercions__block_invoke_12(v33, v23);
  [a1 registerCoercionFromRepresentationConformingToType:v32 toObjectOfClass:v33 coercionBlock:v34];

  [a1 registerCoercionFromObjectOfClass:objc_opt_class() toRepresentationOfType:@"com.apple.uikit.color" coercionBlock:&__block_literal_global_310];
  [a1 registerCoercionFromRepresentationConformingToType:@"com.apple.uikit.color" toObjectOfClass:objc_opt_class() coercionBlock:&__block_literal_global_312];
  v35 = *MEMORY[0x1E6983098];
  v36 = [*MEMORY[0x1E6983098] identifier];
  v37 = *MEMORY[0x1E6982DC0];
  v38 = [*MEMORY[0x1E6982DC0] identifier];
  v39 = v61[2](v61, *off_1E70ECAE8, v62);
  [a1 registerCoercionFromRepresentationConformingToType:v36 toRepresentationOfType:v38 coercionBlock:v39];

  v40 = [v35 identifier];
  v41 = [v29 identifier];
  v58 = *off_1E70EC9A0;
  v42 = (v61[2])(v61, *off_1E70ECAE8);
  [a1 registerCoercionFromRepresentationConformingToType:v40 toRepresentationOfType:v41 coercionBlock:v42];

  v43 = [v35 identifier];
  v44 = *MEMORY[0x1E6983060];
  v45 = [*MEMORY[0x1E6983060] identifier];
  v46 = v61[2](v61, *off_1E70ECAE8, v60);
  [a1 registerCoercionFromRepresentationConformingToType:v43 toRepresentationOfType:v45 coercionBlock:v46];

  v47 = *MEMORY[0x1E6982E18];
  v48 = [*MEMORY[0x1E6982E18] identifier];
  v49 = [v37 identifier];
  v50 = *off_1E70EC940;
  v51 = v61[2](v61, *off_1E70EC940, v62);
  [a1 registerCoercionFromRepresentationConformingToType:v48 toRepresentationOfType:v49 coercionBlock:v51];

  v52 = [v47 identifier];
  v53 = [v59 identifier];
  v54 = v61[2](v61, v50, v58);
  [a1 registerCoercionFromRepresentationConformingToType:v52 toRepresentationOfType:v53 coercionBlock:v54];

  v55 = [v47 identifier];
  v56 = [v44 identifier];
  v57 = v61[2](v61, v50, v60);
  [a1 registerCoercionFromRepresentationConformingToType:v55 toRepresentationOfType:v56 coercionBlock:v57];
}

@end