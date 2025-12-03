@interface StickerCollectionViewController
- (BOOL)collectionView:(id)view canMoveItemAtIndexPath:(id)path;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CGRect)editMenuInteraction:(id)interaction targetRectForConfiguration:(id)configuration;
- (_TtC10StickersUI31StickerCollectionViewController)initWithCollectionViewLayout:(id)layout;
- (_TtC10StickersUI31StickerCollectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtP10StickersUI38StickerProvidingViewControllerDelegate_)delegate;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath;
- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions;
- (void)avtStickerRecentRenderedWithIdentifier:(id)identifier localizedDescription:(id)description image:(id)image url:(id)url avatarRecordIdentifier:(id)recordIdentifier stickerConfigurationIdentifier:(id)configurationIdentifier;
- (void)avtStickerRecentStoreDidChange;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view prefetchItemsAtIndexPaths:(id)paths;
- (void)dealloc;
- (void)editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)handleLongPress:(id)press;
- (void)handleTap:(id)tap;
- (void)makeStickerFromPhotoPicker;
- (void)photoPickerDidDismiss;
- (void)setDelegate:(id)delegate;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation StickerCollectionViewController

- (_TtP10StickersUI38StickerProvidingViewControllerDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_26BA55294();
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for StickerCollectionViewController(0);
  v2 = v11.receiver;
  viewDidLoad = [(StickerCollectionViewController *)&v11 viewDidLoad];
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v2) + 0x470))(viewDidLoad);
  (*((*v4 & *v2) + 0x490))(v5);
  sub_26BA586CC();
  (*((*v4 & *v2) + 0x478))(v6, v7);
  view = [v2 view];
  if (view)
  {
    v9 = view;
    type metadata accessor for KeylineView();
    v10 = sub_26BA84138(v9);
    (*((*v4 & *v2) + 0x438))(v10);
  }

  else
  {
    __break(1u);
  }
}

- (void)dealloc
{
  v2 = *((*MEMORY[0x277D85000] & *self) + 0x480);
  selfCopy = self;
  v2();
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for StickerCollectionViewController(0);
  [(StickerCollectionViewController *)&v4 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v10.receiver = self;
  v10.super_class = type metadata accessor for StickerCollectionViewController(0);
  v4 = v10.receiver;
  v5 = [(StickerCollectionViewController *)&v10 viewWillAppear:appearCopy];
  v6 = MEMORY[0x277D85000];
  v7 = *(*((*MEMORY[0x277D85000] & *v4) + 0x398))(v5);
  (*(v7 + 416))(v4, &off_287C6F538);

  collectionView = [v4 collectionView];
  if (collectionView)
  {
    v9 = collectionView;
    [collectionView reloadData];

    (*((*v6 & *v4) + 0x220))(1);
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_26BA591F4(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v4.receiver = self;
  v4.super_class = type metadata accessor for StickerCollectionViewController(0);
  [(StickerCollectionViewController *)&v4 viewDidDisappear:disappearCopy];
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_26BA595EC();
}

- (void)photoPickerDidDismiss
{
  selfCopy = self;
  sub_26BA5A478();
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_26BA9AE2C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BA9ADDC();
  viewCopy = view;
  selfCopy = self;
  sub_26BA5F41C(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = sub_26BA9AE2C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BA9ADDC();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_26BA5FAEC(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath
{
  v7 = sub_26BA9AE2C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v26 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v26 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - v18;
  sub_26BA9ADDC();
  sub_26BA9ADDC();
  sub_26BA9ADDC();
  v20 = *((*MEMORY[0x277D85000] & *self) + 0x3D0);
  selfCopy = self;
  if (v20())
  {
    v22 = sub_26BA9ADFC();

    v23 = *(v8 + 8);
    v23(v17, v7);
    if (v22)
    {
      v23(v14, v7);
    }

    else
    {
      v23(v11, v7);
      v11 = v14;
    }
  }

  else
  {

    v23 = *(v8 + 8);
    v23(v14, v7);
    v23(v17, v7);
  }

  (*(v8 + 32))(v19, v11, v7);
  v24 = sub_26BA9ADCC();
  v23(v19, v7);

  return v24;
}

- (void)makeStickerFromPhotoPicker
{
  selfCopy = self;
  sub_26BA617A8();
}

- (_TtC10StickersUI31StickerCollectionViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10StickersUI31StickerCollectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)avtStickerRecentRenderedWithIdentifier:(id)identifier localizedDescription:(id)description image:(id)image url:(id)url avatarRecordIdentifier:(id)recordIdentifier stickerConfigurationIdentifier:(id)configurationIdentifier
{
  v10 = sub_26BA9ACCC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26BA9AD5C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BA9AD3C();
  sub_26BA9AC7C();
  imageCopy = image;
  selfCopy = self;
  sub_26BA726A0(v17);

  (*(v11 + 8))(v13, v10);
  (*(v15 + 8))(v17, v14);
}

- (void)avtStickerRecentStoreDidChange
{
  selfCopy = self;
  StickerCollectionViewController.avtStickerRecentStoreDidChange()();
}

- (void)collectionView:(id)view prefetchItemsAtIndexPaths:(id)paths
{
  sub_26BA9AE2C();
  v5 = sub_26BA9B7FC();
  v6 = *((*MEMORY[0x277D85000] & *self) + 0x398);
  selfCopy = self;
  v8 = *v6();
  (*(v8 + 504))(v5);
}

- (void)handleLongPress:(id)press
{
  pressCopy = press;
  selfCopy = self;
  sub_26BA6ECE4(pressCopy);
}

- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  selfCopy = self;
  v10 = sub_26BA73284(configurationCopy);

  return v10;
}

- (CGRect)editMenuInteraction:(id)interaction targetRectForConfiguration:(id)configuration
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  selfCopy = self;
  sub_26BA750D4(configurationCopy);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  _s10StickersUI31StickerCollectionViewControllerC19editMenuInteraction_011willDismissH3For8animatorySo06UIEdithI0C_So0nH13ConfigurationCSo0nhI9Animating_ptF_0();

  swift_unknownObjectRelease();
}

- (void)handleTap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  sub_26BA6F520(tapCopy);
}

- (BOOL)collectionView:(id)view canMoveItemAtIndexPath:(id)path
{
  v5 = sub_26BA9AE2C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BA9ADDC();
  v9 = *((*MEMORY[0x277D85000] & *self) + 0x4A8);
  selfCopy = self;
  v11 = v9(v8);

  (*(v6 + 8))(v8, v5);
  return (v11 & 1) == 0;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = _s10StickersUI31StickerCollectionViewControllerC17gestureRecognizer_13shouldReceiveSbSo09UIGestureH0C_So7UITouchCtF_0(recognizerCopy);

  return v9 & 1;
}

@end