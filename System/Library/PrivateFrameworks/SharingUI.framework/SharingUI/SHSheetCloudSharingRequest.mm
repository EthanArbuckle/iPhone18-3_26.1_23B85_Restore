@interface SHSheetCloudSharingRequest
+ (BOOL)supportsBSXPCSecureCoding;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation SHSheetCloudSharingRequest

- (void)encodeWithBSXPCCoder:(id)a3
{
  swift_unknownObjectRetain();
  MEMORY[0x1E69E5928](self);
  sub_1B9ECF658(a3);
  MEMORY[0x1E69E5920](self);
  swift_unknownObjectRelease();
}

+ (BOOL)supportsBSXPCSecureCoding
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  static SHSheetCloudSharingRequest.supportsBSXPCSecureCoding()();
  return sub_1B9ED848C() & 1;
}

@end