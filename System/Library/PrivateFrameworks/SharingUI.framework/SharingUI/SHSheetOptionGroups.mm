@interface SHSheetOptionGroups
+ (BOOL)supportsBSXPCSecureCoding;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation SHSheetOptionGroups

- (void)encodeWithBSXPCCoder:(id)coder
{
  swift_unknownObjectRetain();
  MEMORY[0x1E69E5928](self);
  sub_1B9ECEDF4(coder);
  MEMORY[0x1E69E5920](self);
  swift_unknownObjectRelease();
}

+ (BOOL)supportsBSXPCSecureCoding
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  static SHSheetOptionGroups.supportsBSXPCSecureCoding()();
  return sub_1B9ED848C() & 1;
}

@end