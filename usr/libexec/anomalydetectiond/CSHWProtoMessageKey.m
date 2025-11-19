@interface CSHWProtoMessageKey
+ (id)descriptor;
@end

@implementation CSHWProtoMessageKey

+ (id)descriptor
{
  result = qword_1004588E8;
  if (!qword_1004588E8)
  {
    v3 = objc_opt_class();
    v4 = objc_opt_class();
    LODWORD(v5) = 12;
    result = [GPBDescriptor allocDescriptorForClass:v3 rootClass:v4 file:sub_10031B67C() fields:&off_1004584F0 fieldCount:2 storageSize:24 flags:v5];
    qword_1004588E8 = result;
  }

  return result;
}

@end