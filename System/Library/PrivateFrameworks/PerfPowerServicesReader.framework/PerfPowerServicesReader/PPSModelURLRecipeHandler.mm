@interface PPSModelURLRecipeHandler
+ (id)metricRecipes;
@end

@implementation PPSModelURLRecipeHandler

+ (id)metricRecipes
{
  v13[6] = *MEMORY[0x277D85DE8];
  v12[0] = @"ANE::modelCompilation::modelURL";
  modelURLRecipe = [self modelURLRecipe];
  v13[0] = modelURLRecipe;
  v12[1] = @"ANE::modelLoad::modelURL";
  modelURLRecipe2 = [self modelURLRecipe];
  v13[1] = modelURLRecipe2;
  v12[2] = @"ANE::modelUnload::modelURL";
  modelURLRecipe3 = [self modelURLRecipe];
  v13[2] = modelURLRecipe3;
  v12[3] = @"ANE::modelInference::modelURL";
  modelURLRecipe4 = [self modelURLRecipe];
  v13[3] = modelURLRecipe4;
  v12[4] = @"ANE::newInstanceModelLoad::modelURL";
  modelURLRecipe5 = [self modelURLRecipe];
  v13[4] = modelURLRecipe5;
  v12[5] = @"ANE::newInstanceModelUnload::modelURL";
  modelURLRecipe6 = [self modelURLRecipe];
  v13[5] = modelURLRecipe6;
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