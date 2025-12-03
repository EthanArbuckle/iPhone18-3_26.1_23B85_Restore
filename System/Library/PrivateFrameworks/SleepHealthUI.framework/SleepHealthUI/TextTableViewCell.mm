@interface TextTableViewCell
- (_TtC13SleepHealthUI17TextTableViewCell)initWithCoder:(id)coder;
- (_TtC13SleepHealthUI17TextTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)tintColorDidChange;
@end

@implementation TextTableViewCell

- (_TtC13SleepHealthUI17TextTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (identifier)
  {
    v5 = sub_269D9A630();
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = sub_269D432A8(v5, v6);

  return v7;
}

- (_TtC13SleepHealthUI17TextTableViewCell)initWithCoder:(id)coder
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = self + OBJC_IVAR____TtC13SleepHealthUI17TextTableViewCell_model;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  result = sub_269D9B100();
  __break(1u);
  return result;
}

- (void)tintColorDidChange
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4.receiver = self;
  v4.super_class = type metadata accessor for TextTableViewCell();
  selfCopy = self;
  [(TextTableViewCell *)&v4 tintColorDidChange];
  sub_269D42E3C();
}

@end