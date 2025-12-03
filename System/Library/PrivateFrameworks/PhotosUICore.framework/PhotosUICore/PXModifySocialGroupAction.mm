@interface PXModifySocialGroupAction
- (PXModifySocialGroupAction)initWithOriginalSocialGroup:(id)group newKeyAsset:(id)asset newCustomTitle:(id)title customTitleWasDeleted:(BOOL)deleted peopleToBeAdded:(id)added peopleToBeRemoved:(id)removed;
- (PXModifySocialGroupAction)initWithPhotoLibrary:(id)library;
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
@end

@implementation PXModifySocialGroupAction

- (PXModifySocialGroupAction)initWithOriginalSocialGroup:(id)group newKeyAsset:(id)asset newCustomTitle:(id)title customTitleWasDeleted:(BOOL)deleted peopleToBeAdded:(id)added peopleToBeRemoved:(id)removed
{
  addedCopy = added;
  if (title)
  {
    v13 = sub_1A524C674();
    v15 = v14;
    if (!addedCopy)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (!added)
    {
LABEL_4:
      if (removed)
      {
        sub_1A3C52C70(0, &qword_1EB1265C0);
        removed = sub_1A524CA34();
      }

      sub_1A42F5D00(group, asset, v13, v15, deleted, addedCopy, removed);
    }
  }

  sub_1A3C52C70(0, &qword_1EB1265C0);
  addedCopy = sub_1A524CA34();
  goto LABEL_4;
}

- (void)performAction:(id)action
{
  v4 = _Block_copy(action);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1A42F6520(sub_1A3FABAE4, v5, &unk_1F1705260, sub_1A42F5F6C, &block_descriptor_155, &block_descriptor_6_6);
}

- (void)performUndo:(id)undo
{
  v4 = _Block_copy(undo);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1A42F6520(sub_1A3D7A9AC, v5, &unk_1F17052D8, sub_1A42F6694, &block_descriptor_13_5, &block_descriptor_16_5);
}

- (PXModifySocialGroupAction)initWithPhotoLibrary:(id)library
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end