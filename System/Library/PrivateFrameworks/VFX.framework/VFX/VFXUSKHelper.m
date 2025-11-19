@interface VFXUSKHelper
+ (id)node:(id)a3 propertyWithName:(id)a4 type:(id)a5 role:(id)a6;
+ (id)world:(id)a3 nodeAtPath:(id)a4 type:(id)a5;
@end

@implementation VFXUSKHelper

+ (id)world:(id)a3 nodeAtPath:(id)a4 type:(id)a5
{
  v5 = objc_msgSend_newNodeAtPath_type_(a3, a2, a4, a5);

  return v5;
}

+ (id)node:(id)a3 propertyWithName:(id)a4 type:(id)a5 role:(id)a6
{
  v6 = objc_msgSend_newPropertyWithName_type_role_(a3, a2, a4, a5, a6);

  return v6;
}

@end