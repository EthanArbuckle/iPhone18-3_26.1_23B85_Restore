@interface TTRIOutlineDisclosureButton
- (BOOL)isSelected;
- (void)buttonShapesSettingDidChange;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)a3;
@end

@implementation TTRIOutlineDisclosureButton

- (void)layoutSubviews
{
  v2 = self;
  TTRIOutlineDisclosureButton.layoutSubviews()();
}

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(TTRIOutlineDisclosureButton *)&v3 isSelected];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  ObjectType = swift_getObjectType();
  v12.receiver = self;
  v12.super_class = ObjectType;
  v6 = self;
  v7 = [(TTRIOutlineDisclosureButton *)&v12 isSelected];
  v11.receiver = v6;
  v11.super_class = ObjectType;
  [(TTRIOutlineDisclosureButton *)&v11 setSelected:v3];
  v10.receiver = v6;
  v10.super_class = ObjectType;
  if (v7 != [(TTRIOutlineDisclosureButton *)&v10 isSelected])
  {
    v9.receiver = v6;
    v9.super_class = ObjectType;
    v8 = [(TTRIOutlineDisclosureButton *)&v9 isSelected];
    sub_21D30281C(v8);
  }
}

- (void)buttonShapesSettingDidChange
{
  v2 = self;
  sub_21D302BE4();
}

@end