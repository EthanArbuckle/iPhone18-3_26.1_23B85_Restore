@interface PXMapOptionsChooseMapSheetController
- (PXMapOptionsChooseMapSheetController)initWithNibName:(id)name bundle:(id)bundle;
- (PXMapOptionsChooseMapViewDelegate)delegate;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection;
- (unint64_t)mapStyle;
- (void)handleCloseAction;
- (void)setDelegate:(id)delegate;
- (void)setMapStyle:(unint64_t)style;
- (void)viewDidLoad;
@end

@implementation PXMapOptionsChooseMapSheetController

- (PXMapOptionsChooseMapViewDelegate)delegate
{
  v2 = *((*MEMORY[0x1E69E7D40] & **(&self->super.super.super.isa + OBJC_IVAR___PXMapOptionsChooseMapSheetController_contentViewController)) + 0xC8);
  selfCopy = self;
  v4 = v2();

  return v4;
}

- (void)setDelegate:(id)delegate
{
  v5 = *((*MEMORY[0x1E69E7D40] & **(&self->super.super.super.isa + OBJC_IVAR___PXMapOptionsChooseMapSheetController_contentViewController)) + 0xD0);
  swift_unknownObjectRetain();
  selfCopy = self;
  v5(delegate);
}

- (unint64_t)mapStyle
{
  v2 = *((*MEMORY[0x1E69E7D40] & **(&self->super.super.super.isa + OBJC_IVAR___PXMapOptionsChooseMapSheetController_contentViewController)) + 0xE0);
  selfCopy = self;
  v4 = v2();

  return v4;
}

- (void)setMapStyle:(unint64_t)style
{
  v4 = *((*MEMORY[0x1E69E7D40] & **(&self->super.super.super.isa + OBJC_IVAR___PXMapOptionsChooseMapSheetController_contentViewController)) + 0xE8);
  selfCopy = self;
  v4(style);
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
  selfCopy = self;
  if (v2())
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(selfCopy, ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

- (PXMapOptionsChooseMapSheetController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection
{
  if ([collection horizontalSizeClass] == 1)
  {
    return -1;
  }

  else
  {
    return 2;
  }
}

@end