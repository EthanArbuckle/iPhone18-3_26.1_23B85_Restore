@interface AlertTemplateView
- (void)imageDidLoad:(id)load;
- (void)layoutSubviews;
@end

@implementation AlertTemplateView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1E3A9A4F8();
}

- (void)imageDidLoad:(id)load
{
  v4 = sub_1E41FDF34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E41FDEE4();
  selfCopy = self;
  sub_1E3A9B3B0();

  (*(v5 + 8))(v7, v4);
}

@end