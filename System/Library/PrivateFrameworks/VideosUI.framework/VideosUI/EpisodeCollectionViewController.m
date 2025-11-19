@interface EpisodeCollectionViewController
- (_TtC8VideosUI31EpisodeCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)contextMenuInteraction:(id)a3 previewForDismissingMenuWithConfiguration:(id)a4;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)vuiCollectionView:(id)a3 didEndDisplaying:(id)a4 for:(id)a5;
- (void)vuiCollectionView:(id)a3 didSelectItemAt:(id)a4;
- (void)vuiCollectionView:(id)a3 willDisplay:(id)a4 for:(id)a5;
- (void)vuiCollectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 at:(id)a6;
- (void)vuiScrollViewDidEndDecelerating:(id)a3;
- (void)vuiScrollViewDidScroll:(id)a3;
- (void)vuiScrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)vui_loadView;
- (void)vui_viewDidLayoutSubviews;
@end

@implementation EpisodeCollectionViewController

- (void)vui_loadView
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E389147C();
}

- (void)vui_viewDidLayoutSubviews
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E38917C0();
}

- (_TtC8VideosUI31EpisodeCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_1E4205F14();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1E3892D50(v5, v7, a4);
}

- (void)vuiCollectionView:(id)a3 didSelectItemAt:(id)a4
{
  sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  sub_1E41FE804();
  v7 = a3;
  v8 = self;
  OUTLINED_FUNCTION_50();
  sub_1E3893ED0();

  v9 = OUTLINED_FUNCTION_53();
  v10(v9);
}

- (void)vuiCollectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 at:(id)a6
{
  sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E4205F14();
  sub_1E41FE804();

  v7 = OUTLINED_FUNCTION_74();
  v8(v7);
}

- (void)vuiCollectionView:(id)a3 willDisplay:(id)a4 for:(id)a5
{
  OUTLINED_FUNCTION_11_14();
  v9 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  sub_1E41FE804();
  v13 = a3;
  v14 = a4;
  v15 = v5;
  sub_1E3894404();

  (*(v11 + 8))(v6, v9);
}

- (void)vuiCollectionView:(id)a3 didEndDisplaying:(id)a4 for:(id)a5
{
  OUTLINED_FUNCTION_11_14();
  v9 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  sub_1E41FE804();
  v13 = a3;
  v14 = a4;
  v15 = v5;
  sub_1E38947C0();

  (*(v11 + 8))(v6, v9);
}

- (void)vuiScrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E3894A54(v4);
}

- (void)vuiScrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  v5 = self;
  OUTLINED_FUNCTION_51();
  sub_1E3894C1C();
}

- (void)vuiScrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  v7 = a3;
  v8 = self;
  sub_1E3894C80(v7, &a5->x);
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = self;
  v9 = sub_1E3896BAC(x, y);

  return v9;
}

- (id)contextMenuInteraction:(id)a3 previewForDismissingMenuWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1E3896E28(v8, v7);

  return v9;
}

- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  OUTLINED_FUNCTION_51();
  sub_1E3896EF0();

  swift_unknownObjectRelease();
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v12 = self;
  OUTLINED_FUNCTION_15_45();
  sub_1E3896FA4(v9, v10, v11);

  swift_unknownObjectRelease();
}

@end