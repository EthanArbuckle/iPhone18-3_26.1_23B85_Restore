@interface WFRecommendationCell
- (UILabel)descriptionLabel;
- (UILabel)titleLabel;
@end

@implementation WFRecommendationCell

- (UILabel)titleLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_titleLabel);

  return WeakRetained;
}

- (UILabel)descriptionLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_descriptionLabel);

  return WeakRetained;
}

@end