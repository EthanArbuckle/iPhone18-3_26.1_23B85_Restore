@interface SBHIconGridSizeClassDomain
@end

@implementation SBHIconGridSizeClassDomain

void __68__SBHIconGridSizeClassDomain_PRWidgetGridUtilities__pr_widgetDomain__block_invoke()
{
  v20[3] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E69D4088]);
  v19[0] = @"PRIconGridSizeClassCircular";
  v2 = *MEMORY[0x1E69D4140];
  v15[0] = *MEMORY[0x1E69D4138];
  v1 = v15[0];
  v15[1] = v2;
  v18[0] = @"circular";
  v18[1] = @"C";
  v4 = *MEMORY[0x1E69D4130];
  v16 = *MEMORY[0x1E69D4128];
  v3 = v16;
  v17 = v4;
  v18[2] = @"small";
  v18[3] = &unk_1F1C6BB90;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v15 count:4];
  v20[0] = v5;
  v19[1] = @"PRIconGridSizeClassRectangular";
  v13[0] = v1;
  v13[1] = v2;
  v14[0] = @"rectangular";
  v14[1] = @"R";
  v13[2] = v3;
  v13[3] = v4;
  v14[2] = @"medium";
  v14[3] = &unk_1F1C6BBA8;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];
  v20[1] = v6;
  v19[2] = @"PRIconGridSizeClassSystemSmall";
  v11[0] = v1;
  v11[1] = v2;
  v12[0] = @"system small";
  v12[1] = @"S";
  v11[2] = v3;
  v11[3] = v4;
  v12[2] = @"large";
  v12[3] = &unk_1F1C6BBC0;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v20[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

  v9 = [v0 initWithGridSizeClasses:v8];
  v10 = pr_widgetDomain_domain;
  pr_widgetDomain_domain = v9;
}

@end