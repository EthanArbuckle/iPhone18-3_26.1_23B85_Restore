@interface EpisodeCollectionViewController
- (_TtC8VideosUI31EpisodeCollectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)contextMenuInteraction:(id)interaction previewForDismissingMenuWithConfiguration:(id)configuration;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)vuiCollectionView:(id)view didEndDisplaying:(id)displaying for:(id)for;
- (void)vuiCollectionView:(id)view didSelectItemAt:(id)at;
- (void)vuiCollectionView:(id)view willDisplay:(id)display for:(id)for;
- (void)vuiCollectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind at:(id)at;
- (void)vuiScrollViewDidEndDecelerating:(id)decelerating;
- (void)vuiScrollViewDidScroll:(id)scroll;
- (void)vuiScrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)vui_loadView;
- (void)vui_viewDidLayoutSubviews;
@end

@implementation EpisodeCollectionViewController

- (void)vui_loadView
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E389147C();
}

- (void)vui_viewDidLayoutSubviews
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E38917C0();
}

- (_TtC8VideosUI31EpisodeCollectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1E4205F14();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1E3892D50(v5, v7, bundle);
}

- (void)vuiCollectionView:(id)view didSelectItemAt:(id)at
{
  sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  sub_1E41FE804();
  viewCopy = view;
  selfCopy = self;
  OUTLINED_FUNCTION_50();
  sub_1E3893ED0();

  v9 = OUTLINED_FUNCTION_53();
  v10(v9);
}

- (void)vuiCollectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind at:(id)at
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

- (void)vuiCollectionView:(id)view willDisplay:(id)display for:(id)for
{
  OUTLINED_FUNCTION_11_14();
  v9 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  sub_1E41FE804();
  viewCopy = view;
  displayCopy = display;
  v15 = v5;
  sub_1E3894404();

  (*(v11 + 8))(v6, v9);
}

- (void)vuiCollectionView:(id)view didEndDisplaying:(id)displaying for:(id)for
{
  OUTLINED_FUNCTION_11_14();
  v9 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  sub_1E41FE804();
  viewCopy = view;
  displayingCopy = displaying;
  v15 = v5;
  sub_1E38947C0();

  (*(v11 + 8))(v6, v9);
}

- (void)vuiScrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_1E3894A54(scrollCopy);
}

- (void)vuiScrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E3894C1C();
}

- (void)vuiScrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  draggingCopy = dragging;
  selfCopy = self;
  sub_1E3894C80(draggingCopy, &offset->x);
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  interactionCopy = interaction;
  selfCopy = self;
  v9 = sub_1E3896BAC(x, y);

  return v9;
}

- (id)contextMenuInteraction:(id)interaction previewForDismissingMenuWithConfiguration:(id)configuration
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  selfCopy = self;
  v9 = sub_1E3896E28(selfCopy, configurationCopy);

  return v9;
}

- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E3896EF0();

  swift_unknownObjectRelease();
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  OUTLINED_FUNCTION_15_45();
  sub_1E3896FA4(v9, v10, v11);

  swift_unknownObjectRelease();
}

@end