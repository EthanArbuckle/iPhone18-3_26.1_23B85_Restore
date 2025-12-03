@interface SHSheetCollaborationOptions
+ (BOOL)supportsBSXPCSecureCoding;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation SHSheetCollaborationOptions

- (void)encodeWithBSXPCCoder:(id)coder
{
  swift_unknownObjectRetain();
  MEMORY[0x1E69E5928](self);
  sub_1B9ECE6E0(coder);
  MEMORY[0x1E69E5920](self);
  swift_unknownObjectRelease();
}

+ (BOOL)supportsBSXPCSecureCoding
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  static SHSheetCollaborationOptions.supportsBSXPCSecureCoding()();
  return sub_1B9ED848C() & 1;
}

@end