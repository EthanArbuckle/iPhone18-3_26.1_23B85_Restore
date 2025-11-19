@interface StoryExportActivityViewController
- (_TtC15PhotosUIPrivate33StoryExportActivityViewController)initWithActivityItems:(id)a3 applicationActivities:(id)a4;
- (id)_customizationGroupsForActivityViewController:(id)a3;
- (id)completionWithItemsHandler;
- (int64_t)modalPresentationStyle;
- (void)activityViewControllerDidFinishAirdropTransfer:(id)a3;
- (void)setCompletionWithItemsHandler:(id)a3;
- (void)setModalPresentationStyle:(int64_t)a3;
@end

@implementation StoryExportActivityViewController

- (_TtC15PhotosUIPrivate33StoryExportActivityViewController)initWithActivityItems:(id)a3 applicationActivities:(id)a4
{
  sub_1B3C9C788();
  if (a4)
  {
    sub_1B3710718(0, &unk_1EB854EC0);
    sub_1B3C9C788();
  }

  sub_1B37D0D64();
}

- (int64_t)modalPresentationStyle
{
  v2 = self;
  v3 = sub_1B37D0E74();

  return v3;
}

- (void)setModalPresentationStyle:(int64_t)a3
{
  v4 = self;
  sub_1B37D0EFC(a3);
}

- (id)completionWithItemsHandler
{
  v2 = self;
  v3 = sub_1B37D1DA0();
  v5 = v4;

  if (v3)
  {
    v7[4] = v3;
    v7[5] = v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1B37D2298;
    v7[3] = &block_descriptor_59;
    v3 = _Block_copy(v7);
  }

  return v3;
}

- (void)setCompletionWithItemsHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1B37D34F4;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  sub_1B37D1EC8(v4, v5);
}

- (id)_customizationGroupsForActivityViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B37D2428();

  sub_1B3710718(0, &qword_1EB854E30);
  v6 = sub_1B3C9C778();

  return v6;
}

- (void)activityViewControllerDidFinishAirdropTransfer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B37D3414();
}

@end