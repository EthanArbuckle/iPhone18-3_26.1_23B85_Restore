@interface WFDrawerSwitchCell
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)switchValueChanged;
@end

@implementation WFDrawerSwitchCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_27484BA18();
}

- (void)switchValueChanged
{
  selfCopy = self;
  sub_27484BD14();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_27484BDF0();
}

@end