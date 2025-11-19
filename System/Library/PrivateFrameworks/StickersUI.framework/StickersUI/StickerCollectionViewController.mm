@interface StickerCollectionViewController
- (BOOL)collectionView:(id)a3 canMoveItemAtIndexPath:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (CGRect)editMenuInteraction:(id)a3 targetRectForConfiguration:(id)a4;
- (_TtC10StickersUI31StickerCollectionViewController)initWithCollectionViewLayout:(id)a3;
- (_TtC10StickersUI31StickerCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtP10StickersUI38StickerProvidingViewControllerDelegate_)delegate;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)a4 atCurrentIndexPath:(id)a5 toProposedIndexPath:(id)a6;
- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5;
- (void)avtStickerRecentRenderedWithIdentifier:(id)a3 localizedDescription:(id)a4 image:(id)a5 url:(id)a6 avatarRecordIdentifier:(id)a7 stickerConfigurationIdentifier:(id)a8;
- (void)avtStickerRecentStoreDidChange;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 prefetchItemsAtIndexPaths:(id)a4;
- (void)dealloc;
- (void)editMenuInteraction:(id)a3 willDismissMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)handleLongPress:(id)a3;
- (void)handleTap:(id)a3;
- (void)makeStickerFromPhotoPicker;
- (void)photoPickerDidDismiss;
- (void)setDelegate:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation StickerCollectionViewController

- (_TtP10StickersUI38StickerProvidingViewControllerDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_26BA55294();
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for StickerCollectionViewController(0);
  v2 = v11.receiver;
  v3 = [(StickerCollectionViewController *)&v11 viewDidLoad];
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v2) + 0x470))(v3);
  (*((*v4 & *v2) + 0x490))(v5);
  sub_26BA586CC();
  (*((*v4 & *v2) + 0x478))(v6, v7);
  v8 = [v2 view];
  if (v8)
  {
    v9 = v8;
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
  v3 = self;
  v2();
  v4.receiver = v3;
  v4.super_class = type metadata accessor for StickerCollectionViewController(0);
  [(StickerCollectionViewController *)&v4 dealloc];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v10.receiver = self;
  v10.super_class = type metadata accessor for StickerCollectionViewController(0);
  v4 = v10.receiver;
  v5 = [(StickerCollectionViewController *)&v10 viewWillAppear:v3];
  v6 = MEMORY[0x277D85000];
  v7 = *(*((*MEMORY[0x277D85000] & *v4) + 0x398))(v5);
  (*(v7 + 416))(v4, &off_287C6F538);

  v8 = [v4 collectionView];
  if (v8)
  {
    v9 = v8;
    [v8 reloadData];

    (*((*v6 & *v4) + 0x220))(1);
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_26BA591F4(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for StickerCollectionViewController(0);
  [(StickerCollectionViewController *)&v4 viewDidDisappear:v3];
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_26BA595EC();
}

- (void)photoPickerDidDismiss
{
  v2 = self;
  sub_26BA5A478();
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_26BA9AE2C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BA9ADDC();
  v10 = a3;
  v11 = self;
  sub_26BA5F41C(v10, v9);

  (*(v7 + 8))(v9, v6);
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = sub_26BA9AE2C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BA9ADDC();
  v10 = a3;
  v11 = self;
  v12 = sub_26BA5FAEC(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)collectionView:(id)a3 targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)a4 atCurrentIndexPath:(id)a5 toProposedIndexPath:(id)a6
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
  v21 = self;
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
  v2 = self;
  sub_26BA617A8();
}

- (_TtC10StickersUI31StickerCollectionViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10StickersUI31StickerCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)avtStickerRecentRenderedWithIdentifier:(id)a3 localizedDescription:(id)a4 image:(id)a5 url:(id)a6 avatarRecordIdentifier:(id)a7 stickerConfigurationIdentifier:(id)a8
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
  v18 = a5;
  v19 = self;
  sub_26BA726A0(v17);

  (*(v11 + 8))(v13, v10);
  (*(v15 + 8))(v17, v14);
}

- (void)avtStickerRecentStoreDidChange
{
  v2 = self;
  StickerCollectionViewController.avtStickerRecentStoreDidChange()();
}

- (void)collectionView:(id)a3 prefetchItemsAtIndexPaths:(id)a4
{
  sub_26BA9AE2C();
  v5 = sub_26BA9B7FC();
  v6 = *((*MEMORY[0x277D85000] & *self) + 0x398);
  v7 = self;
  v8 = *v6();
  (*(v8 + 504))(v5);
}

- (void)handleLongPress:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_26BA6ECE4(v4);
}

- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = sub_26BA73284(v8);

  return v10;
}

- (CGRect)editMenuInteraction:(id)a3 targetRectForConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_26BA750D4(v7);
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

- (void)editMenuInteraction:(id)a3 willDismissMenuForConfiguration:(id)a4 animator:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  _s10StickersUI31StickerCollectionViewControllerC19editMenuInteraction_011willDismissH3For8animatorySo06UIEdithI0C_So0nH13ConfigurationCSo0nhI9Animating_ptF_0();

  swift_unknownObjectRelease();
}

- (void)handleTap:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_26BA6F520(v4);
}

- (BOOL)collectionView:(id)a3 canMoveItemAtIndexPath:(id)a4
{
  v5 = sub_26BA9AE2C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BA9ADDC();
  v9 = *((*MEMORY[0x277D85000] & *self) + 0x4A8);
  v10 = self;
  v11 = v9(v8);

  (*(v6 + 8))(v8, v5);
  return (v11 & 1) == 0;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = _s10StickersUI31StickerCollectionViewControllerC17gestureRecognizer_13shouldReceiveSbSo09UIGestureH0C_So7UITouchCtF_0(v6);

  return v9 & 1;
}

@end