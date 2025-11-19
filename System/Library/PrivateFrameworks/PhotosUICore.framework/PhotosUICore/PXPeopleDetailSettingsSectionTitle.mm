@interface PXPeopleDetailSettingsSectionTitle
- (PXPeopleDetailSettingsSectionTitle)initWithFrame:(CGRect)a3;
@end

@implementation PXPeopleDetailSettingsSectionTitle

- (PXPeopleDetailSettingsSectionTitle)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = PXPeopleDetailSettingsSectionTitle;
  v3 = [(PXPeopleDetailSettingsSectionTitle *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{10.0, 0.0, 300.0, 30.0}];
    textLabel = v3->_textLabel;
    v3->_textLabel = v4;

    v6 = [(PXPeopleDetailSettingsSectionTitle *)v3 contentView];
    [v6 addSubview:v3->_textLabel];
  }

  return v3;
}

@end