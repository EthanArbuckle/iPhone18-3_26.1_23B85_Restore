@interface PXPeopleDetailSettingsSectionTitle
- (PXPeopleDetailSettingsSectionTitle)initWithFrame:(CGRect)frame;
@end

@implementation PXPeopleDetailSettingsSectionTitle

- (PXPeopleDetailSettingsSectionTitle)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = PXPeopleDetailSettingsSectionTitle;
  v3 = [(PXPeopleDetailSettingsSectionTitle *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{10.0, 0.0, 300.0, 30.0}];
    textLabel = v3->_textLabel;
    v3->_textLabel = v4;

    contentView = [(PXPeopleDetailSettingsSectionTitle *)v3 contentView];
    [contentView addSubview:v3->_textLabel];
  }

  return v3;
}

@end