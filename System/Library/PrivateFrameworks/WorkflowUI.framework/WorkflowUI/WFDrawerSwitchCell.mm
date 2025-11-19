@interface WFDrawerSwitchCell
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)switchValueChanged;
@end

@implementation WFDrawerSwitchCell

- (void)layoutSubviews
{
  v2 = self;
  sub_27484BA18();
}

- (void)switchValueChanged
{
  v2 = self;
  sub_27484BD14();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_27484BDF0();
}

@end