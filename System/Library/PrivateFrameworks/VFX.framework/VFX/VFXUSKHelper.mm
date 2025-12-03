@interface VFXUSKHelper
+ (id)node:(id)node propertyWithName:(id)name type:(id)type role:(id)role;
+ (id)world:(id)world nodeAtPath:(id)path type:(id)type;
@end

@implementation VFXUSKHelper

+ (id)world:(id)world nodeAtPath:(id)path type:(id)type
{
  v5 = objc_msgSend_newNodeAtPath_type_(world, a2, path, type);

  return v5;
}

+ (id)node:(id)node propertyWithName:(id)name type:(id)type role:(id)role
{
  v6 = objc_msgSend_newPropertyWithName_type_role_(node, a2, name, type, role);

  return v6;
}

@end