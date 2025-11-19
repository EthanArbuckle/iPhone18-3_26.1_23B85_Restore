@interface SBFolder.FolderTransactionAssertion
- (_TtCE15SpringBoardHomeCSo8SBFolderP33_32AF87134CCDD853A8EC04404E04D5EB26FolderTransactionAssertion)init;
- (void)invalidate;
@end

@implementation SBFolder.FolderTransactionAssertion

- (void)invalidate
{
  if ((*(&self->super.isa + OBJC_IVAR____TtCE15SpringBoardHomeCSo8SBFolderP33_32AF87134CCDD853A8EC04404E04D5EB26FolderTransactionAssertion_isInvalidated) & 1) == 0)
  {
    *(&self->super.isa + OBJC_IVAR____TtCE15SpringBoardHomeCSo8SBFolderP33_32AF87134CCDD853A8EC04404E04D5EB26FolderTransactionAssertion_isInvalidated) = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v4 = self;
      sub_1BEB4F128(v4);
    }
  }
}

- (_TtCE15SpringBoardHomeCSo8SBFolderP33_32AF87134CCDD853A8EC04404E04D5EB26FolderTransactionAssertion)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end