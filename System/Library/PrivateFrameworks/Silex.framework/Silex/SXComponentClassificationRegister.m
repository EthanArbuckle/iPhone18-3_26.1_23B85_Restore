@interface SXComponentClassificationRegister
+ (id)classifications;
+ (void)registerClasses;
@end

@implementation SXComponentClassificationRegister

+ (void)registerClasses
{
  v2 = [a1 classifications];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_74];
}

+ (id)classifications
{
  v4[61] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v4[6] = objc_opt_class();
  v4[7] = objc_opt_class();
  v4[8] = objc_opt_class();
  v4[9] = objc_opt_class();
  v4[10] = objc_opt_class();
  v4[11] = objc_opt_class();
  v4[12] = objc_opt_class();
  v4[13] = objc_opt_class();
  v4[14] = objc_opt_class();
  v4[15] = objc_opt_class();
  v4[16] = objc_opt_class();
  v4[17] = objc_opt_class();
  v4[18] = objc_opt_class();
  v4[19] = objc_opt_class();
  v4[20] = objc_opt_class();
  v4[21] = objc_opt_class();
  v4[22] = objc_opt_class();
  v4[23] = objc_opt_class();
  v4[24] = objc_opt_class();
  v4[25] = objc_opt_class();
  v4[26] = objc_opt_class();
  v4[27] = objc_opt_class();
  v4[28] = objc_opt_class();
  v4[29] = objc_opt_class();
  v4[30] = objc_opt_class();
  v4[31] = objc_opt_class();
  v4[32] = objc_opt_class();
  v4[33] = objc_opt_class();
  v4[34] = objc_opt_class();
  v4[35] = objc_opt_class();
  v4[36] = objc_opt_class();
  v4[37] = objc_opt_class();
  v4[38] = objc_opt_class();
  v4[39] = objc_opt_class();
  v4[40] = objc_opt_class();
  v4[41] = objc_opt_class();
  v4[42] = objc_opt_class();
  v4[43] = objc_opt_class();
  v4[44] = objc_opt_class();
  v4[45] = objc_opt_class();
  v4[46] = objc_opt_class();
  v4[47] = objc_opt_class();
  v4[48] = objc_opt_class();
  v4[49] = objc_opt_class();
  v4[50] = objc_opt_class();
  v4[51] = objc_opt_class();
  v4[52] = objc_opt_class();
  v4[53] = objc_opt_class();
  v4[54] = objc_opt_class();
  v4[55] = objc_opt_class();
  v4[56] = objc_opt_class();
  v4[57] = objc_opt_class();
  v4[58] = objc_opt_class();
  v4[59] = objc_opt_class();
  v4[60] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:61];

  return v2;
}

@end