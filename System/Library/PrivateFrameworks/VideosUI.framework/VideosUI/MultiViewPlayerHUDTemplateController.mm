@interface MultiViewPlayerHUDTemplateController
- (VUIMultiPlayerDetailsViewControllerDelegate)detailDelegate;
- (double)contentsHeight;
- (id)contentsDidLoad;
- (id)didInteract;
- (int64_t)itemCount;
- (void)setContentsDidLoad:(id)load;
- (void)setDetailDelegate:(id)delegate;
- (void)setDidInteract:(id)interact;
- (void)updateVisibleCellsWithPlaybackIdentifiers:(id)identifiers;
- (void)updateWithSelectedPlaybackIdentifiers:(id)identifiers reloadingData:(BOOL)data;
- (void)vuiScrollViewDidScroll:(id)scroll;
- (void)vui_viewDidLoad;
- (void)vui_viewWillAppear:(BOOL)appear;
@end

@implementation MultiViewPlayerHUDTemplateController

- (int64_t)itemCount
{
  selfCopy = self;
  sub_1E3FF8928();
  v4 = v3;

  return v4;
}

- (double)contentsHeight
{
  selfCopy = self;
  v3 = sub_1E3FF8B3C();

  return v3;
}

- (id)contentsDidLoad
{
  OUTLINED_FUNCTION_11_176();
  if (sub_1E3FF8D64(v3, v2))
  {
    OUTLINED_FUNCTION_3_242();
    v6[1] = 1107296256;
    v6[2] = sub_1E378AEA4;
    v6[3] = &block_descriptor_20_2;
    v4 = _Block_copy(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setContentsDidLoad:(id)load
{
  v4 = _Block_copy(load);
  if (v4)
  {
    OUTLINED_FUNCTION_4_0();
    *(swift_allocObject() + 16) = v4;
  }

  selfCopy = self;
  OUTLINED_FUNCTION_14_170();
  v5 = OUTLINED_FUNCTION_67_0();
  sub_1E3FF8E60(v5, v6, v7, v8);
}

- (id)didInteract
{
  OUTLINED_FUNCTION_13_174();
  if (sub_1E3FF8D64(v3, v2))
  {
    OUTLINED_FUNCTION_3_242();
    v6[1] = 1107296256;
    v6[2] = sub_1E3DD28DC;
    v6[3] = &block_descriptor_14_1;
    v4 = _Block_copy(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDidInteract:(id)interact
{
  v4 = _Block_copy(interact);
  if (v4)
  {
    OUTLINED_FUNCTION_4_0();
    *(swift_allocObject() + 16) = v4;
  }

  selfCopy = self;
  OUTLINED_FUNCTION_12_160();
  v5 = OUTLINED_FUNCTION_67_0();
  sub_1E3FF8E60(v5, v6, v7, v8);
}

- (VUIMultiPlayerDetailsViewControllerDelegate)detailDelegate
{
  v2 = sub_1E3FF9220();

  return v2;
}

- (void)setDetailDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1E3FF92C0();
}

- (void)vui_viewDidLoad
{
  selfCopy = self;
  sub_1E3FF9320();
}

- (void)vui_viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1E3FFA260(appear);
}

- (void)vuiScrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_1E3FFA950(scrollCopy);
}

- (void)updateWithSelectedPlaybackIdentifiers:(id)identifiers reloadingData:(BOOL)data
{
  sub_1E42062B4();
  selfCopy = self;
  sub_1E3FFC288(selfCopy, data);
}

- (void)updateVisibleCellsWithPlaybackIdentifiers:(id)identifiers
{
  sub_1E42062B4();
  selfCopy = self;
  sub_1E3FFC9A4();
}

@end