@interface PKDashboardFinanceKitTransactionPresenter
+ (NSString)cellReuseIdentifier;
- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path;
- (Class)itemClass;
- (_TtC9PassKitUI41PKDashboardFinanceKitTransactionPresenter)init;
- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (id)collectionViewCellClasses;
- (void)didSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path navigationController:(id)controller canPresent:(id)present;
- (void)updateCell:(id)cell forItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
@end

@implementation PKDashboardFinanceKitTransactionPresenter

+ (NSString)cellReuseIdentifier
{
  v2 = sub_1BE052404();

  return v2;
}

- (_TtC9PassKitUI41PKDashboardFinanceKitTransactionPresenter)init
{
  *(&self->super.isa + OBJC_IVAR____TtC9PassKitUI41PKDashboardFinanceKitTransactionPresenter_sampleCell) = [objc_allocWithZone(type metadata accessor for PKDashboardFinanceKitTransactionCollectionViewCell()) initWithFrame_];
  v4.receiver = self;
  v4.super_class = type metadata accessor for PKDashboardFinanceKitTransactionPresenter();
  return [(PKDashboardFinanceKitTransactionPresenter *)&v4 init];
}

- (Class)itemClass
{
  type metadata accessor for PKDashboardFinanceKitTransactionItem();

  return swift_getObjCClassFromMetadata();
}

- (id)collectionViewCellClasses
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A5B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B69E0;
  *(inited + 32) = 0xD000000000000029;
  *(inited + 40) = 0x80000001BE109C00;
  *(inited + 48) = type metadata accessor for PKDashboardFinanceKitTransactionCollectionViewCell();
  sub_1BD1AE91C(inited);
  swift_setDeallocating();
  sub_1BD9A2954(inited + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A6A8);
  v3 = sub_1BE052224();

  return v3;
}

- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  v8 = sub_1BE04B414();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04B3D4();
  swift_unknownObjectRetain();
  viewCopy = view;
  selfCopy = self;
  v15 = sub_1BD9A29BC(item, viewCopy);
  swift_unknownObjectRelease();

  (*(v9 + 8))(v12, v8);

  return v15;
}

- (void)updateCell:(id)cell forItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  v6 = sub_1BE04B414();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04B3D4();
  (*(v7 + 8))(v10, v6);
}

- (void)didSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path navigationController:(id)controller canPresent:(id)present
{
  v12 = sub_1BE04B414();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(present);
  sub_1BE04B3D4();
  if (v17)
  {
    *(swift_allocObject() + 16) = v17;
    v17 = sub_1BD9A30F8;
  }

  swift_unknownObjectRetain();
  viewCopy = view;
  controllerCopy = controller;
  selfCopy = self;
  sub_1BD9A2AFC(item, v16, controllerCopy, v17);
  sub_1BD0D4744(v17);
  swift_unknownObjectRelease();

  (*(v13 + 8))(v16, v12);
}

- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path
{
  v6 = sub_1BE04B414();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04B3D4();
  (*(v7 + 8))(v10, v6);
  v11 = 0.0;
  v12 = 0.0;
  result.height = v12;
  result.width = v11;
  return result;
}

@end