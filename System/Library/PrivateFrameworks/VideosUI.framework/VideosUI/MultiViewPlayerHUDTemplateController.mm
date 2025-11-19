@interface MultiViewPlayerHUDTemplateController
- (VUIMultiPlayerDetailsViewControllerDelegate)detailDelegate;
- (double)contentsHeight;
- (id)contentsDidLoad;
- (id)didInteract;
- (int64_t)itemCount;
- (void)setContentsDidLoad:(id)a3;
- (void)setDetailDelegate:(id)a3;
- (void)setDidInteract:(id)a3;
- (void)updateVisibleCellsWithPlaybackIdentifiers:(id)a3;
- (void)updateWithSelectedPlaybackIdentifiers:(id)a3 reloadingData:(BOOL)a4;
- (void)vuiScrollViewDidScroll:(id)a3;
- (void)vui_viewDidLoad;
- (void)vui_viewWillAppear:(BOOL)a3;
@end

@implementation MultiViewPlayerHUDTemplateController

- (int64_t)itemCount
{
  v2 = self;
  sub_1E3FF8928();
  v4 = v3;

  return v4;
}

- (double)contentsHeight
{
  v2 = self;
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

- (void)setContentsDidLoad:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    OUTLINED_FUNCTION_4_0();
    *(swift_allocObject() + 16) = v4;
  }

  v9 = self;
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

- (void)setDidInteract:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    OUTLINED_FUNCTION_4_0();
    *(swift_allocObject() + 16) = v4;
  }

  v9 = self;
  OUTLINED_FUNCTION_12_160();
  v5 = OUTLINED_FUNCTION_67_0();
  sub_1E3FF8E60(v5, v6, v7, v8);
}

- (VUIMultiPlayerDetailsViewControllerDelegate)detailDelegate
{
  v2 = sub_1E3FF9220();

  return v2;
}

- (void)setDetailDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1E3FF92C0();
}

- (void)vui_viewDidLoad
{
  v2 = self;
  sub_1E3FF9320();
}

- (void)vui_viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1E3FFA260(a3);
}

- (void)vuiScrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E3FFA950(v4);
}

- (void)updateWithSelectedPlaybackIdentifiers:(id)a3 reloadingData:(BOOL)a4
{
  sub_1E42062B4();
  v6 = self;
  sub_1E3FFC288(v6, a4);
}

- (void)updateVisibleCellsWithPlaybackIdentifiers:(id)a3
{
  sub_1E42062B4();
  v4 = self;
  sub_1E3FFC9A4();
}

@end