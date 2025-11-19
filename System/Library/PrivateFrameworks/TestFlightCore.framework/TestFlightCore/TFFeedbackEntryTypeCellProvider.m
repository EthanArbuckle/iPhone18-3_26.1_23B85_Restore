@interface TFFeedbackEntryTypeCellProvider
+ (CGSize)cellSizeForEntry:(id)a3 dataSource:(id)a4 fittingSize:(CGSize)a5 inTraitEnvironment:(id)a6;
+ (Class)cellClassForEntryType:(unint64_t)a3;
+ (id)reuseIdentifierForEntryType:(unint64_t)a3;
@end

@implementation TFFeedbackEntryTypeCellProvider

+ (id)reuseIdentifierForEntryType:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return @"SHORT_TEXT";
  }

  else
  {
    return off_279D97F80[a3 - 1];
  }
}

+ (Class)cellClassForEntryType:(unint64_t)a3
{
  if (a3 <= 3)
  {
    a1 = objc_opt_class();
  }

  return a1;
}

+ (CGSize)cellSizeForEntry:(id)a3 dataSource:(id)a4 fittingSize:(CGSize)a5 inTraitEnvironment:(id)a6
{
  height = a5.height;
  width = a5.width;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = [v12 type];
  if (v15 <= 3)
  {
    [(__objc2_class *)*off_279D97F98[v15] sizeForEntry:v12 dataSource:v13 fittingSize:v14 inTraitEnvironment:width, height];
    v6 = v16;
    v7 = v17;
  }

  v18 = v6;
  v19 = v7;
  result.height = v19;
  result.width = v18;
  return result;
}

@end