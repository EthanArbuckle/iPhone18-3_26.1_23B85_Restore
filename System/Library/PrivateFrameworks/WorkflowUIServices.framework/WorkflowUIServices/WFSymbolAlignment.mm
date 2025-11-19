@interface WFSymbolAlignment
+ (CGSize)absoluteOffsetFor:(id)a3 fontSize:(double)a4;
+ (double)fontSizeFor:(id)a3 containerDimension:(double)a4 scale:(double)a5 circularContainer:(BOOL)a6;
@end

@implementation WFSymbolAlignment

+ (CGSize)absoluteOffsetFor:(id)a3 fontSize:(double)a4
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

+ (double)fontSizeFor:(id)a3 containerDimension:(double)a4 scale:(double)a5 circularContainer:(BOOL)a6
{
  v9 = sub_1C840CDDC();
  static SymbolAlignment.fontSize(for:containerDimension:scale:circularContainer:)(v9, v10, a6, a4, a5);
  v12 = v11;

  return v12;
}

@end