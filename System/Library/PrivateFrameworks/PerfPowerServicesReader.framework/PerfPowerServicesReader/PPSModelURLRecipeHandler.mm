@interface PPSModelURLRecipeHandler
+ (id)metricRecipes;
@end

@implementation PPSModelURLRecipeHandler

+ (id)metricRecipes
{
  v13[6] = *MEMORY[0x277D85DE8];
  v12[0] = @"ANE::modelCompilation::modelURL";
  v3 = [a1 modelURLRecipe];
  v13[0] = v3;
  v12[1] = @"ANE::modelLoad::modelURL";
  v4 = [a1 modelURLRecipe];
  v13[1] = v4;
  v12[2] = @"ANE::modelUnload::modelURL";
  v5 = [a1 modelURLRecipe];
  v13[2] = v5;
  v12[3] = @"ANE::modelInference::modelURL";
  v6 = [a1 modelURLRecipe];
  v13[3] = v6;
  v12[4] = @"ANE::newInstanceModelLoad::modelURL";
  v7 = [a1 modelURLRecipe];
  v13[4] = v7;
  v12[5] = @"ANE::newInstanceModelUnload::modelURL";
  v8 = [a1 modelURLRecipe];
  v13[5] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:6];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

id __42__PPSModelURLRecipeHandler_modelURLRecipe__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [PPSModelURLDecoder decodeValue:v5 withMetric:0];

    *a4 = 0;
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = objc_opt_class();

    v9 = [v7 stringWithFormat:@"Recipe supports NSString, value sent %@", v8];
    v10 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA450];
    v15[0] = v9;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *a4 = [v10 errorWithDomain:@"com.apple.PPSRecipeEngine" code:4 userInfo:v11];

    v6 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

@end