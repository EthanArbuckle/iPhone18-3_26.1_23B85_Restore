@interface TVFocusableCollectionViewCell
- (_TtC9SeymourUI29TVFocusableCollectionViewCell)initWithCoder:(id)coder;
- (_TtC9SeymourUI29TVFocusableCollectionViewCell)initWithFrame:(CGRect)frame;
- (id)_preferredConfigurationForFocusAnimation:(int64_t)animation inContext:(id)context;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)prepareForReuse;
- (void)pressesBegan:(id)began withEvent:(id)event;
@end

@implementation TVFocusableCollectionViewCell

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TVFocusableCollectionViewCell();
  v2 = v3.receiver;
  [(TVFocusableCollectionViewCell *)&v3 prepareForReuse];
  (*((*MEMORY[0x277D85000] & *v2) + 0x78))(0, 0);
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  sub_20B51C88C(0, &qword_27C764588);
  sub_20B9E0F28();
  v6 = sub_20C13CF74();
  eventCopy = event;
  selfCopy = self;
  if ((sub_20B9E0E84(v6) & 1) != 0 && (v8 = *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState), (v8 & 8) != 0))
  {

    (*((*MEMORY[0x277D85000] & selfCopy->super.super.super.super.super.isa) + 0x78))(v8 | 1, 1);
  }

  else
  {
    v9 = sub_20C13CF64();

    v11.receiver = selfCopy;
    v11.super_class = type metadata accessor for TVFocusableCollectionViewCell();
    [(TVFocusableCollectionViewCell *)&v11 pressesBegan:v9 withEvent:eventCopy];
  }
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  sub_20BBAFCC8(contextCopy, coordinatorCopy);
}

- (id)_preferredConfigurationForFocusAnimation:(int64_t)animation inContext:(id)context
{
  v7 = (*((*MEMORY[0x277D85000] & self->super.super.super.super.super.isa) + 0x70))();
  contextCopy = context;
  selfCopy = self;
  _preferredConfigurationForFocusAnimation_inContext_ = [v7 _preferredConfigurationForFocusAnimation_inContext_];

  return _preferredConfigurationForFocusAnimation_inContext_;
}

- (_TtC9SeymourUI29TVFocusableCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TVFocusableCollectionViewCell();
  return [(TVFocusableCollectionViewCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC9SeymourUI29TVFocusableCollectionViewCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for TVFocusableCollectionViewCell();
  coderCopy = coder;
  v5 = [(TVFocusableCollectionViewCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end