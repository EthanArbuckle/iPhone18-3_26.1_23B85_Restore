@interface STKStickerKeyboardRecentCollectionViewController
- (BOOL)collectionView:(id)view canMoveItemAtIndexPath:(id)path;
- (STKStickerKeyboardRecentCollectionViewController)init;
- (STKStickerKeyboardRecentCollectionViewController)initWithCoder:(id)coder;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation STKStickerKeyboardRecentCollectionViewController

- (STKStickerKeyboardRecentCollectionViewController)init
{
  v2 = sub_26BA9B42C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  (*(v3 + 104))(v5, *MEMORY[0x277D681A0], v2);
  v7 = (*(ObjectType + 1096))(v5, 0.0, 0.0, 0.0, 0.0);
  swift_deallocPartialClassInstance();
  return v7;
}

- (STKStickerKeyboardRecentCollectionViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  sub_26BA9AD4C();
  v5 = MEMORY[0x277D84FA0];
  *&self->_anon_0[OBJC_IVAR___STKStickerKeyboardRecentCollectionViewController_blankCellUUIDs] = MEMORY[0x277D84FA0];
  *&self->_anon_0[OBJC_IVAR___STKStickerKeyboardRecentCollectionViewController_blankCellIndexPaths] = v5;
  v6 = &self->_anon_0[OBJC_IVAR___STKStickerKeyboardRecentCollectionViewController_previousContainerSize];
  *v6 = 0;
  *(v6 + 1) = 0;
  result = sub_26BA9BD9C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for StickerKeyboardRecentCollectionViewController();
  v2 = v6.receiver;
  [(StickerCollectionViewController *)&v6 viewDidLoad];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    clearColor = [objc_opt_self() clearColor];
    [v4 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_26BA89764();
}

- (BOOL)collectionView:(id)view canMoveItemAtIndexPath:(id)path
{
  v4 = sub_26BA9AE2C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BA9ADDC();
  (*(v5 + 8))(v7, v4);
  return 0;
}

@end