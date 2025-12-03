@interface WFNetworkListRow
- (WFNetworkListRow)initWithCoder:(id)coder;
- (WFNetworkListRow)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (WFNetworkRowConfig)config;
- (void)configure:(id)configure;
- (void)prepareForReuse;
- (void)setConfig:(id)config;
@end

@implementation WFNetworkListRow

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for NetworkListRow();
  v2 = v5.receiver;
  [(WFNetworkListRow *)&v5 prepareForReuse];
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  MEMORY[0x2743E36F0](v3);
}

- (WFNetworkRowConfig)config
{
  v3 = OBJC_IVAR___WFNetworkListRow_config;
  swift_beginAccess();
  return *(&self->super.super.super.super.isa + v3);
}

- (void)setConfig:(id)config
{
  v5 = OBJC_IVAR___WFNetworkListRow_config;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.isa + v5);
  *(&self->super.super.super.super.isa + v5) = config;
  configCopy = config;
  selfCopy = self;

  if (configCopy)
  {
    sub_27401F4EC(configCopy);
  }
}

- (WFNetworkListRow)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    sub_2740517D8();
    *(&self->super.super.super.super.isa + OBJC_IVAR___WFNetworkListRow_config) = 0;
    v5 = sub_2740517C8();
  }

  else
  {
    v5 = 0;
    *(&self->super.super.super.super.isa + OBJC_IVAR___WFNetworkListRow_config) = 0;
  }

  v8.receiver = self;
  v8.super_class = type metadata accessor for NetworkListRow();
  v6 = [(WFNetworkListRow *)&v8 initWithStyle:0 reuseIdentifier:v5];

  return v6;
}

- (WFNetworkListRow)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___WFNetworkListRow_config) = 0;
  result = sub_274051A88();
  __break(1u);
  return result;
}

- (void)configure:(id)configure
{
  v5 = OBJC_IVAR___WFNetworkListRow_config;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.isa + v5);
  *(&self->super.super.super.super.isa + v5) = configure;
  configureCopy = configure;
  selfCopy = self;

  sub_27401F4EC(configureCopy);
  sub_27401F4EC(configureCopy);
}

@end