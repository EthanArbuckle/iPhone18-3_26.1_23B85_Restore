@interface PXModifySocialGroupAction
- (PXModifySocialGroupAction)initWithOriginalSocialGroup:(id)a3 newKeyAsset:(id)a4 newCustomTitle:(id)a5 customTitleWasDeleted:(BOOL)a6 peopleToBeAdded:(id)a7 peopleToBeRemoved:(id)a8;
- (PXModifySocialGroupAction)initWithPhotoLibrary:(id)a3;
- (void)performAction:(id)a3;
- (void)performUndo:(id)a3;
@end

@implementation PXModifySocialGroupAction

- (PXModifySocialGroupAction)initWithOriginalSocialGroup:(id)a3 newKeyAsset:(id)a4 newCustomTitle:(id)a5 customTitleWasDeleted:(BOOL)a6 peopleToBeAdded:(id)a7 peopleToBeRemoved:(id)a8
{
  v9 = a7;
  if (a5)
  {
    v13 = sub_1A524C674();
    v15 = v14;
    if (!v9)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (!a7)
    {
LABEL_4:
      if (a8)
      {
        sub_1A3C52C70(0, &qword_1EB1265C0);
        a8 = sub_1A524CA34();
      }

      sub_1A42F5D00(a3, a4, v13, v15, a6, v9, a8);
    }
  }

  sub_1A3C52C70(0, &qword_1EB1265C0);
  v9 = sub_1A524CA34();
  goto LABEL_4;
}

- (void)performAction:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1A42F6520(sub_1A3FABAE4, v5, &unk_1F1705260, sub_1A42F5F6C, &block_descriptor_155, &block_descriptor_6_6);
}

- (void)performUndo:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1A42F6520(sub_1A3D7A9AC, v5, &unk_1F17052D8, sub_1A42F6694, &block_descriptor_13_5, &block_descriptor_16_5);
}

- (PXModifySocialGroupAction)initWithPhotoLibrary:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end