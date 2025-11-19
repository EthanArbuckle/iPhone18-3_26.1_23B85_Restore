@interface SFMapCardSectionEngagementFeedback
- (SFMapCardSectionEngagementFeedback)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFMapCardSectionEngagementFeedback

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = SFMapCardSectionEngagementFeedback;
  v4 = a3;
  [(SFCardSectionEngagementFeedback *)&v7 encodeWithCoder:v4];
  modifiedPlacemarkData = self->_modifiedPlacemarkData;
  v6 = NSStringFromSelector(sel_modifiedPlacemarkData);
  [v4 encodeObject:modifiedPlacemarkData forKey:{v6, v7.receiver, v7.super_class}];
}

- (SFMapCardSectionEngagementFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SFMapCardSectionEngagementFeedback;
  v5 = [(SFCardSectionEngagementFeedback *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_modifiedPlacemarkData);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    modifiedPlacemarkData = v5->_modifiedPlacemarkData;
    v5->_modifiedPlacemarkData = v8;
  }

  return v5;
}

@end