@interface StoryExportActivityViewController
- (_TtC15PhotosUIPrivate33StoryExportActivityViewController)initWithActivityItems:(id)items applicationActivities:(id)activities;
- (id)_customizationGroupsForActivityViewController:(id)controller;
- (id)completionWithItemsHandler;
- (int64_t)modalPresentationStyle;
- (void)activityViewControllerDidFinishAirdropTransfer:(id)transfer;
- (void)setCompletionWithItemsHandler:(id)handler;
- (void)setModalPresentationStyle:(int64_t)style;
@end

@implementation StoryExportActivityViewController

- (_TtC15PhotosUIPrivate33StoryExportActivityViewController)initWithActivityItems:(id)items applicationActivities:(id)activities
{
  sub_1B3C9C788();
  if (activities)
  {
    sub_1B3710718(0, &unk_1EB854EC0);
    sub_1B3C9C788();
  }

  sub_1B37D0D64();
}

- (int64_t)modalPresentationStyle
{
  selfCopy = self;
  v3 = sub_1B37D0E74();

  return v3;
}

- (void)setModalPresentationStyle:(int64_t)style
{
  selfCopy = self;
  sub_1B37D0EFC(style);
}

- (id)completionWithItemsHandler
{
  selfCopy = self;
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

- (void)setCompletionWithItemsHandler:(id)handler
{
  v4 = _Block_copy(handler);
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

  selfCopy = self;
  sub_1B37D1EC8(v4, v5);
}

- (id)_customizationGroupsForActivityViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1B37D2428();

  sub_1B3710718(0, &qword_1EB854E30);
  v6 = sub_1B3C9C778();

  return v6;
}

- (void)activityViewControllerDidFinishAirdropTransfer:(id)transfer
{
  transferCopy = transfer;
  selfCopy = self;
  sub_1B37D3414();
}

@end