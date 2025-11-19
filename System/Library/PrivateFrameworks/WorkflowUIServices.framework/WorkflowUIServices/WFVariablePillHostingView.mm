@interface WFVariablePillHostingView
- (CGSize)intrinsicContentSize;
- (WFVariablePillHostingView)initWithName:(id)a3 icon:(id)a4 font:(id)a5 available:(BOOL)a6 height:(double)a7 controlState:(unint64_t)a8;
@end

@implementation WFVariablePillHostingView

- (WFVariablePillHostingView)initWithName:(id)a3 icon:(id)a4 font:(id)a5 available:(BOOL)a6 height:(double)a7 controlState:(unint64_t)a8
{
  v13 = sub_1C840CDDC();
  v15 = v14;
  v16 = a4;
  v17 = a5;
  return sub_1C8340218(v13, v15, a4, a5, a6, a8, a7);
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  sub_1C83405C0();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end