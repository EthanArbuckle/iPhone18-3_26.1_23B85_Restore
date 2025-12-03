@interface TTRIOutlineDisclosureButton
- (BOOL)isSelected;
- (void)buttonShapesSettingDidChange;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)selected;
@end

@implementation TTRIOutlineDisclosureButton

- (void)layoutSubviews
{
  selfCopy = self;
  TTRIOutlineDisclosureButton.layoutSubviews()();
}

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(TTRIOutlineDisclosureButton *)&v3 isSelected];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  ObjectType = swift_getObjectType();
  v12.receiver = self;
  v12.super_class = ObjectType;
  selfCopy = self;
  isSelected = [(TTRIOutlineDisclosureButton *)&v12 isSelected];
  v11.receiver = selfCopy;
  v11.super_class = ObjectType;
  [(TTRIOutlineDisclosureButton *)&v11 setSelected:selectedCopy];
  v10.receiver = selfCopy;
  v10.super_class = ObjectType;
  if (isSelected != [(TTRIOutlineDisclosureButton *)&v10 isSelected])
  {
    v9.receiver = selfCopy;
    v9.super_class = ObjectType;
    isSelected2 = [(TTRIOutlineDisclosureButton *)&v9 isSelected];
    sub_21D30281C(isSelected2);
  }
}

- (void)buttonShapesSettingDidChange
{
  selfCopy = self;
  sub_21D302BE4();
}

@end