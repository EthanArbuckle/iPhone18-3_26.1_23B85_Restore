@interface PlayerHUDDocumentViewController
- (VUIMultiPlayerDetailsViewControllerDelegate)detailDelegate;
- (double)contentsHeight;
- (double)nowPlayingTabHeight;
- (id)contentsDidLoad;
- (id)didInteract;
- (id)getNowPlayingTabContextData;
- (int64_t)itemCount;
- (void)recordImpressionsHandler;
- (void)recordPageHandler;
- (void)setContentsDidLoad:(id)a3;
- (void)setDetailDelegate:(id)a3;
- (void)setDidInteract:(id)a3;
- (void)setNowPlayingTabContextData:(id)a3;
- (void)setNowPlayingTabDelegate:(id)a3;
- (void)setPlayerViewSize:(CGSize)a3;
- (void)updateVisibleCellsWithPlaybackIdentifiers:(id)a3;
- (void)updateWithSelectedPlaybackIdentifiers:(id)a3 reloadingData:(BOOL)a4;
- (void)vui_viewDidAppear:(BOOL)a3;
- (void)vui_viewDidDisappear:(BOOL)a3;
- (void)vui_viewDidLoad;
- (void)vui_viewWillAppear:(BOOL)a3;
- (void)vui_viewWillDisappear:(BOOL)a3;
@end

@implementation PlayerHUDDocumentViewController

- (double)contentsHeight
{
  v2 = self;
  v3 = sub_1E3DCF414();

  return v3;
}

- (id)contentsDidLoad
{
  v2 = sub_1E3DCF53C();
  if (v2)
  {
    v7[4] = v2;
    v7[5] = v3;
    OUTLINED_FUNCTION_3_4();
    v7[1] = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v7[2] = v4;
    v7[3] = &block_descriptor_49;
    v5 = _Block_copy(v7);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setContentsDidLoad:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    OUTLINED_FUNCTION_4_0();
    *(swift_allocObject() + 16) = v4;
  }

  v5 = self;
  v6 = OUTLINED_FUNCTION_14_131();
  sub_1E3DCF5F0(v6, v7);
}

- (id)didInteract
{
  v2 = sub_1E3DCF858();
  if (v2)
  {
    v6[4] = v2;
    v6[5] = v3;
    OUTLINED_FUNCTION_3_4();
    v6[1] = 1107296256;
    v6[2] = sub_1E3DD28DC;
    v6[3] = &block_descriptor_43_1;
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

  v5 = self;
  v6 = OUTLINED_FUNCTION_14_131();
  sub_1E3DCF96C(v6, v7);
}

- (int64_t)itemCount
{
  v2 = self;
  v3 = sub_1E3DCFC70();

  return v3;
}

- (VUIMultiPlayerDetailsViewControllerDelegate)detailDelegate
{
  v2 = sub_1E3DCFD40();

  return v2;
}

- (void)setDetailDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  OUTLINED_FUNCTION_10_0();
  sub_1E3DCFDD4();
}

- (void)vui_viewWillAppear:(BOOL)a3
{
  v3 = self;
  OUTLINED_FUNCTION_10_0();
  sub_1E3DD0008();
}

- (void)vui_viewWillDisappear:(BOOL)a3
{
  v3 = self;
  OUTLINED_FUNCTION_10_0();
  sub_1E3DD0120();
}

- (void)vui_viewDidAppear:(BOOL)a3
{
  v3 = self;
  OUTLINED_FUNCTION_10_0();
  sub_1E3DD045C();
}

- (void)vui_viewDidLoad
{
  v2 = self;
  sub_1E3DD04E4();
}

- (void)vui_viewDidDisappear:(BOOL)a3
{
  v3 = self;
  OUTLINED_FUNCTION_10_0();
  sub_1E3DD11C8();
}

- (void)updateWithSelectedPlaybackIdentifiers:(id)a3 reloadingData:(BOOL)a4
{
  sub_1E42062B4();
  v6 = self;
  v7 = OUTLINED_FUNCTION_38();
  sub_1E3DD17CC(v7, a4);
}

- (void)updateVisibleCellsWithPlaybackIdentifiers:(id)a3
{
  sub_1E42062B4();
  v5 = self;
  OUTLINED_FUNCTION_38();
  sub_1E3DD1970();
}

- (void)recordPageHandler
{
  v2 = self;
  sub_1E3DD1E78();
}

- (void)recordImpressionsHandler
{
  v2 = self;
  sub_1E3DD1F28();
}

- (void)setNowPlayingTabDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  OUTLINED_FUNCTION_10_0();
  sub_1E3DD1FAC();
  swift_unknownObjectRelease();
}

- (id)getNowPlayingTabContextData
{
  v2 = self;
  v3 = sub_1E3DD212C();

  if (v3)
  {
    v4 = sub_1E4205C44();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setNowPlayingTabContextData:(id)a3
{
  sub_1E4205C64();
  v5 = self;
  v6 = OUTLINED_FUNCTION_38();
  sub_1E3DD22B4(v6);
}

- (double)nowPlayingTabHeight
{
  v2 = self;
  v3 = sub_1E3DD24D8();

  return v3;
}

- (void)setPlayerViewSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_1E3DD2628(width, height);
}

@end