@interface CSHWProtoMessageHeader
+ (id)descriptor;
@end

@implementation CSHWProtoMessageHeader

+ (id)descriptor
{
  v2 = qword_1004588C0;
  if (!qword_1004588C0)
  {
    v3 = objc_opt_class();
    v4 = objc_opt_class();
    LODWORD(v6) = 12;
    v2 = [GPBDescriptor allocDescriptorForClass:v3 rootClass:v4 file:sub_10031B67C() fields:&off_1004581D0 fieldCount:10 storageSize:72 flags:v6];
    [v2 setupExtraTextInfo:&unk_1003BFFFC];
    qword_1004588C0 = v2;
  }

  return v2;
}

@end