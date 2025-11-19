@interface VariablePillDrawer
+ (id)drawVariableNamed:(id)a3 icon:(id)a4 font:(id)a5 tint:(id)a6 size:(CGSize)a7 state:(unint64_t)a8 isAvailable:(BOOL)a9;
+ (void)drawVariableForAppIconNamed:(id)a3 appIcon:(id)a4 font:(id)a5 tint:(id)a6 size:(CGSize)a7 state:(unint64_t)a8 isAvailable:(BOOL)a9 completionBlock:(id)aBlock;
@end

@implementation VariablePillDrawer

+ (id)drawVariableNamed:(id)a3 icon:(id)a4 font:(id)a5 tint:(id)a6 size:(CGSize)a7 state:(unint64_t)a8 isAvailable:(BOOL)a9
{
  height = a7.height;
  width = a7.width;
  v16 = sub_1C840CDDC();
  v18 = v17;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = static VariablePillDrawer.draw(name:icon:font:tint:size:state:isAvailable:)(width, height, v16, v18, a4, v20, v21, a8, a9);

  return v22;
}

+ (void)drawVariableForAppIconNamed:(id)a3 appIcon:(id)a4 font:(id)a5 tint:(id)a6 size:(CGSize)a7 state:(unint64_t)a8 isAvailable:(BOOL)a9 completionBlock:(id)aBlock
{
  height = a7.height;
  width = a7.width;
  v17 = _Block_copy(aBlock);
  v18 = sub_1C840CDDC();
  v20 = v19;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  _Block_copy(v17);
  v22 = a4;
  v23 = a5;
  v24 = a6;
  sub_1C83CADE0(v18, v20, v22, v23, v24, a8, a9, ObjCClassMetadata, width, height, v17);
  _Block_release(v17);
}

@end