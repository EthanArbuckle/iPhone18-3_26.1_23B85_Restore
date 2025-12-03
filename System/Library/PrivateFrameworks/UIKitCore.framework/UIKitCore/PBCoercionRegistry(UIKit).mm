@interface PBCoercionRegistry(UIKit)
- (void)uikit_registerExtraCoercions;
@end

@implementation PBCoercionRegistry(UIKit)

- (void)uikit_registerExtraCoercions
{
  [self registerCoercionFromObjectOfClass:objc_opt_class() toRepresentationOfType:@"com.apple.uikit.image" coercionBlock:&__block_literal_global_272];
  v2 = objc_opt_class();
  v3 = *MEMORY[0x1E6982F28];
  identifier = [*MEMORY[0x1E6982F28] identifier];
  [self registerCoercionFromObjectOfClass:v2 toRepresentationOfType:identifier coercionBlock:&__block_literal_global_275_1];

  v5 = objc_opt_class();
  v6 = *MEMORY[0x1E6982E58];
  identifier2 = [*MEMORY[0x1E6982E58] identifier];
  [self registerCoercionFromObjectOfClass:v5 toRepresentationOfType:identifier2 coercionBlock:&__block_literal_global_277_3];

  [self registerCoercionFromRepresentationConformingToType:@"com.apple.uikit.image" toObjectOfClass:objc_opt_class() coercionBlock:&__block_literal_global_280_0];
  identifier3 = [v3 identifier];
  v9 = objc_opt_class();
  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = __57__PBCoercionRegistry_UIKit__uikit_registerExtraCoercions__block_invoke_6;
  v74[3] = &unk_1E711A900;
  v75 = &__block_literal_global_283_0;
  [self registerCoercionFromRepresentationConformingToType:identifier3 toObjectOfClass:v9 coercionBlock:v74];

  identifier4 = [v6 identifier];
  v11 = objc_opt_class();
  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = __57__PBCoercionRegistry_UIKit__uikit_registerExtraCoercions__block_invoke_7;
  v72[3] = &unk_1E711A900;
  v73 = &__block_literal_global_283_0;
  [self registerCoercionFromRepresentationConformingToType:identifier4 toObjectOfClass:v11 coercionBlock:v72];

  identifier5 = [*MEMORY[0x1E6983008] identifier];
  v13 = objc_opt_class();
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __57__PBCoercionRegistry_UIKit__uikit_registerExtraCoercions__block_invoke_8;
  v70[3] = &unk_1E711A900;
  v71 = &__block_literal_global_283_0;
  [self registerCoercionFromRepresentationConformingToType:identifier5 toObjectOfClass:v13 coercionBlock:v70];

  identifier6 = [*MEMORY[0x1E6982DE8] identifier];
  v15 = objc_opt_class();
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __57__PBCoercionRegistry_UIKit__uikit_registerExtraCoercions__block_invoke_9;
  v68[3] = &unk_1E711A900;
  v69 = &__block_literal_global_283_0;
  [self registerCoercionFromRepresentationConformingToType:identifier6 toObjectOfClass:v15 coercionBlock:v68];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__PBCoercionRegistry_UIKit__uikit_registerExtraCoercions__block_invoke_14;
  aBlock[3] = &unk_1E711AA08;
  v66 = &__block_literal_global_293;
  v67 = &__block_literal_global_289_1;
  v61 = _Block_copy(aBlock);
  [self registerCoercionFromObjectOfClass:objc_opt_class() toRepresentationOfType:@"com.apple.uikit.attributedstring" coercionBlock:&__block_literal_global_299_1];
  v16 = objc_opt_class();
  v17 = *MEMORY[0x1E6982F98];
  identifier7 = [*MEMORY[0x1E6982F98] identifier];
  v62 = *off_1E70EC998;
  v19 = __57__PBCoercionRegistry_UIKit__uikit_registerExtraCoercions__block_invoke_10(identifier7, *off_1E70EC998);
  [self registerCoercionFromObjectOfClass:v16 toRepresentationOfType:identifier7 coercionBlock:v19];

  v20 = objc_opt_class();
  v21 = *MEMORY[0x1E6982F40];
  identifier8 = [*MEMORY[0x1E6982F40] identifier];
  v23 = *off_1E70EC990;
  v60 = *off_1E70EC990;
  v24 = __57__PBCoercionRegistry_UIKit__uikit_registerExtraCoercions__block_invoke_10(identifier8, *off_1E70EC990);
  [self registerCoercionFromObjectOfClass:v20 toRepresentationOfType:identifier8 coercionBlock:v24];

  v25 = objc_opt_class();
  [self registerCoercionFromObjectOfClass:v25 toObjectOfClass:objc_opt_class() coercionBlock:&__block_literal_global_303_2];
  [self registerCoercionFromRepresentationConformingToType:@"com.apple.uikit.attributedstring" toObjectOfClass:objc_opt_class() coercionBlock:&__block_literal_global_305_1];
  identifier9 = [v17 identifier];
  v27 = objc_opt_class();
  v28 = __57__PBCoercionRegistry_UIKit__uikit_registerExtraCoercions__block_invoke_12(v27, v62);
  [self registerCoercionFromRepresentationConformingToType:identifier9 toObjectOfClass:v27 coercionBlock:v28];

  v29 = *MEMORY[0x1E6982F90];
  v59 = *MEMORY[0x1E6982F90];
  identifier10 = [*MEMORY[0x1E6982F90] identifier];
  v31 = objc_opt_class();
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __57__PBCoercionRegistry_UIKit__uikit_registerExtraCoercions__block_invoke_20;
  v63[3] = &unk_1E711A900;
  v64 = &__block_literal_global_293;
  [self registerCoercionFromRepresentationConformingToType:identifier10 toObjectOfClass:v31 coercionBlock:v63];

  identifier11 = [v21 identifier];
  v33 = objc_opt_class();
  v34 = __57__PBCoercionRegistry_UIKit__uikit_registerExtraCoercions__block_invoke_12(v33, v23);
  [self registerCoercionFromRepresentationConformingToType:identifier11 toObjectOfClass:v33 coercionBlock:v34];

  [self registerCoercionFromObjectOfClass:objc_opt_class() toRepresentationOfType:@"com.apple.uikit.color" coercionBlock:&__block_literal_global_310];
  [self registerCoercionFromRepresentationConformingToType:@"com.apple.uikit.color" toObjectOfClass:objc_opt_class() coercionBlock:&__block_literal_global_312];
  v35 = *MEMORY[0x1E6983098];
  identifier12 = [*MEMORY[0x1E6983098] identifier];
  v37 = *MEMORY[0x1E6982DC0];
  identifier13 = [*MEMORY[0x1E6982DC0] identifier];
  v39 = v61[2](v61, *off_1E70ECAE8, v62);
  [self registerCoercionFromRepresentationConformingToType:identifier12 toRepresentationOfType:identifier13 coercionBlock:v39];

  identifier14 = [v35 identifier];
  identifier15 = [v29 identifier];
  v58 = *off_1E70EC9A0;
  v42 = (v61[2])(v61, *off_1E70ECAE8);
  [self registerCoercionFromRepresentationConformingToType:identifier14 toRepresentationOfType:identifier15 coercionBlock:v42];

  identifier16 = [v35 identifier];
  v44 = *MEMORY[0x1E6983060];
  identifier17 = [*MEMORY[0x1E6983060] identifier];
  v46 = v61[2](v61, *off_1E70ECAE8, v60);
  [self registerCoercionFromRepresentationConformingToType:identifier16 toRepresentationOfType:identifier17 coercionBlock:v46];

  v47 = *MEMORY[0x1E6982E18];
  identifier18 = [*MEMORY[0x1E6982E18] identifier];
  identifier19 = [v37 identifier];
  v50 = *off_1E70EC940;
  v51 = v61[2](v61, *off_1E70EC940, v62);
  [self registerCoercionFromRepresentationConformingToType:identifier18 toRepresentationOfType:identifier19 coercionBlock:v51];

  identifier20 = [v47 identifier];
  identifier21 = [v59 identifier];
  v54 = v61[2](v61, v50, v58);
  [self registerCoercionFromRepresentationConformingToType:identifier20 toRepresentationOfType:identifier21 coercionBlock:v54];

  identifier22 = [v47 identifier];
  identifier23 = [v44 identifier];
  v57 = v61[2](v61, v50, v60);
  [self registerCoercionFromRepresentationConformingToType:identifier22 toRepresentationOfType:identifier23 coercionBlock:v57];
}

@end