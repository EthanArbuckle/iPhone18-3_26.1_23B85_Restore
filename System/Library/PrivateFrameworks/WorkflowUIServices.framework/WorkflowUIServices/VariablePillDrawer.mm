@interface VariablePillDrawer
+ (id)drawVariableNamed:(id)named icon:(id)icon font:(id)font tint:(id)tint size:(CGSize)size state:(unint64_t)state isAvailable:(BOOL)available;
+ (void)drawVariableForAppIconNamed:(id)named appIcon:(id)icon font:(id)font tint:(id)tint size:(CGSize)size state:(unint64_t)state isAvailable:(BOOL)available completionBlock:(id)aBlock;
@end

@implementation VariablePillDrawer

+ (id)drawVariableNamed:(id)named icon:(id)icon font:(id)font tint:(id)tint size:(CGSize)size state:(unint64_t)state isAvailable:(BOOL)available
{
  height = size.height;
  width = size.width;
  v16 = sub_1C840CDDC();
  v18 = v17;
  iconCopy = icon;
  fontCopy = font;
  tintCopy = tint;
  v22 = static VariablePillDrawer.draw(name:icon:font:tint:size:state:isAvailable:)(width, height, v16, v18, icon, fontCopy, tintCopy, state, available);

  return v22;
}

+ (void)drawVariableForAppIconNamed:(id)named appIcon:(id)icon font:(id)font tint:(id)tint size:(CGSize)size state:(unint64_t)state isAvailable:(BOOL)available completionBlock:(id)aBlock
{
  height = size.height;
  width = size.width;
  v17 = _Block_copy(aBlock);
  v18 = sub_1C840CDDC();
  v20 = v19;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  _Block_copy(v17);
  iconCopy = icon;
  fontCopy = font;
  tintCopy = tint;
  sub_1C83CADE0(v18, v20, iconCopy, fontCopy, tintCopy, state, available, ObjCClassMetadata, width, height, v17);
  _Block_release(v17);
}

@end