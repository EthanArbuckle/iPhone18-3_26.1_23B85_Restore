@interface WFSymbolAlignment
+ (CGSize)absoluteOffsetFor:(id)for fontSize:(double)size;
+ (double)fontSizeFor:(id)for containerDimension:(double)dimension scale:(double)scale circularContainer:(BOOL)container;
@end

@implementation WFSymbolAlignment

+ (CGSize)absoluteOffsetFor:(id)for fontSize:(double)size
{
  v4 = sub_1C840CDDC();
  static SymbolAlignment.absoluteOffset(for:fontSize:)(v4, v5);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

+ (double)fontSizeFor:(id)for containerDimension:(double)dimension scale:(double)scale circularContainer:(BOOL)container
{
  v9 = sub_1C840CDDC();
  static SymbolAlignment.fontSize(for:containerDimension:scale:circularContainer:)(v9, v10, container, dimension, scale);
  v12 = v11;

  return v12;
}

@end