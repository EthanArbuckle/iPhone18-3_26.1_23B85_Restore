@interface SHSheetCloudSharingRequest
+ (BOOL)supportsBSXPCSecureCoding;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation SHSheetCloudSharingRequest

- (void)encodeWithBSXPCCoder:(id)coder
{
  swift_unknownObjectRetain();
  MEMORY[0x1E69E5928](self);
  sub_1B9ECF658(coder);
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