@interface ChevronButton
- (void)contentSizeCategoryChanged;
- (void)layoutSubviews;
- (void)tintColorDidChange;
@end

@implementation ChevronButton

- (void)tintColorDidChange
{
  v2 = self;
  sub_20B823318();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_20B823454();
}

- (void)contentSizeCategoryChanged
{
  v3 = self;
  v2 = [(ChevronButton *)v3 traitCollection];
  sub_20B8236EC(v2);
}

@end