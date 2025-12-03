@interface SFMapCardSectionEngagementFeedback
- (SFMapCardSectionEngagementFeedback)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFMapCardSectionEngagementFeedback

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = SFMapCardSectionEngagementFeedback;
  coderCopy = coder;
  [(SFCardSectionEngagementFeedback *)&v7 encodeWithCoder:coderCopy];
  modifiedPlacemarkData = self->_modifiedPlacemarkData;
  v6 = NSStringFromSelector(sel_modifiedPlacemarkData);
  [coderCopy encodeObject:modifiedPlacemarkData forKey:{v6, v7.receiver, v7.super_class}];
}

- (SFMapCardSectionEngagementFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SFMapCardSectionEngagementFeedback;
  v5 = [(SFCardSectionEngagementFeedback *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_modifiedPlacemarkData);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    modifiedPlacemarkData = v5->_modifiedPlacemarkData;
    v5->_modifiedPlacemarkData = v8;
  }

  return v5;
}

@end