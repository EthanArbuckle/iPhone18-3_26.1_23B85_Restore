@interface PXMapOptionsChooseMapSheetController
- (PXMapOptionsChooseMapSheetController)initWithNibName:(id)a3 bundle:(id)a4;
- (PXMapOptionsChooseMapViewDelegate)delegate;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4;
- (unint64_t)mapStyle;
- (void)handleCloseAction;
- (void)setDelegate:(id)a3;
- (void)setMapStyle:(unint64_t)a3;
- (void)viewDidLoad;
@end

@implementation PXMapOptionsChooseMapSheetController

- (PXMapOptionsChooseMapViewDelegate)delegate
{
  v2 = *((*MEMORY[0x1E69E7D40] & **(&self->super.super.super.isa + OBJC_IVAR___PXMapOptionsChooseMapSheetController_contentViewController)) + 0xC8);
  v3 = self;
  v4 = v2();

  return v4;
}

- (void)setDelegate:(id)a3
{
  v5 = *((*MEMORY[0x1E69E7D40] & **(&self->super.super.super.isa + OBJC_IVAR___PXMapOptionsChooseMapSheetController_contentViewController)) + 0xD0);
  swift_unknownObjectRetain();
  v6 = self;
  v5(a3);
}

- (unint64_t)mapStyle
{
  v2 = *((*MEMORY[0x1E69E7D40] & **(&self->super.super.super.isa + OBJC_IVAR___PXMapOptionsChooseMapSheetController_contentViewController)) + 0xE0);
  v3 = self;
  v4 = v2();

  return v4;
}

- (void)setMapStyle:(unint64_t)a3
{
  v4 = *((*MEMORY[0x1E69E7D40] & **(&self->super.super.super.isa + OBJC_IVAR___PXMapOptionsChooseMapSheetController_contentViewController)) + 0xE8);
  v5 = self;
  v4(a3);
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MapOptionsChooseMapSheetController();
  v2 = v3.receiver;
  [(PXMapOptionsChooseMapSheetController *)&v3 viewDidLoad];
  sub_1A42A67D8();
  sub_1A42A6938();
}

- (void)handleCloseAction
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0x70);
  v6 = self;
  if (v2())
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(v6, ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

- (PXMapOptionsChooseMapSheetController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4
{
  if ([a4 horizontalSizeClass] == 1)
  {
    return -1;
  }

  else
  {
    return 2;
  }
}

@end