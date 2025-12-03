@interface ListCell
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation ListCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_27487CE80();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_27487CF8C();
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_2749FA594();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2749FA574();
  selfCopy = self;
  sub_27487D080(v7);

  (*(v5 + 8))(v7, v4);
}

@end