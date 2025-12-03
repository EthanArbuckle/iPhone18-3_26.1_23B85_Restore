@interface TFFeedbackEntryTypeCellProvider
+ (CGSize)cellSizeForEntry:(id)entry dataSource:(id)source fittingSize:(CGSize)size inTraitEnvironment:(id)environment;
+ (Class)cellClassForEntryType:(unint64_t)type;
+ (id)reuseIdentifierForEntryType:(unint64_t)type;
@end

@implementation TFFeedbackEntryTypeCellProvider

+ (id)reuseIdentifierForEntryType:(unint64_t)type
{
  if (type - 1 > 2)
  {
    return @"SHORT_TEXT";
  }

  else
  {
    return off_279D97F80[type - 1];
  }
}

+ (Class)cellClassForEntryType:(unint64_t)type
{
  if (type <= 3)
  {
    self = objc_opt_class();
  }

  return self;
}

+ (CGSize)cellSizeForEntry:(id)entry dataSource:(id)source fittingSize:(CGSize)size inTraitEnvironment:(id)environment
{
  height = size.height;
  width = size.width;
  entryCopy = entry;
  sourceCopy = source;
  environmentCopy = environment;
  type = [entryCopy type];
  if (type <= 3)
  {
    [(__objc2_class *)*off_279D97F98[type] sizeForEntry:entryCopy dataSource:sourceCopy fittingSize:environmentCopy inTraitEnvironment:width, height];
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