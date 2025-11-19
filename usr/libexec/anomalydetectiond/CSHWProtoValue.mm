@interface CSHWProtoValue
+ (id)descriptor;
@end

@implementation CSHWProtoValue

+ (id)descriptor
{
  result = qword_1004588C8;
  if (!qword_1004588C8)
  {
    v3 = objc_opt_class();
    v4 = objc_opt_class();
    LODWORD(v5) = 13;
    result = [GPBDescriptor allocDescriptorForClass:v3 rootClass:v4 file:sub_10031B67C() fields:&unk_100458310 fieldCount:4 storageSize:32 flags:v5];
    qword_1004588C8 = result;
  }

  return result;
}

@end