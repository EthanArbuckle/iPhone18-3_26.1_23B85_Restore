@interface PRPosterDescriptorGalleryTitleStyle
- (PRPosterDescriptorGalleryTitleStyle)initWithCoder:(id)a3;
- (PRPosterDescriptorGalleryTitleStyle)initWithPreferredTimeMaxYPortrait:(double)a3 preferredTimeMaxYLandscape:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRPosterDescriptorGalleryTitleStyle

- (PRPosterDescriptorGalleryTitleStyle)initWithPreferredTimeMaxYPortrait:(double)a3 preferredTimeMaxYLandscape:(double)a4
{
  v7.receiver = self;
  v7.super_class = PRPosterDescriptorGalleryTitleStyle;
  result = [(PRPosterDescriptorGalleryTitleStyle *)&v7 init];
  if (result)
  {
    result->_preferredTimeMaxYPortrait = a3;
    result->_preferredTimeMaxYLandscape = a4;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  preferredTimeMaxYPortrait = self->_preferredTimeMaxYPortrait;
  v7 = a3;
  *&v5 = preferredTimeMaxYPortrait;
  [v7 encodeFloat:@"_preferredTimeMaxYPortrait" forKey:v5];
  preferredTimeMaxYLandscape = self->_preferredTimeMaxYLandscape;
  *&preferredTimeMaxYLandscape = preferredTimeMaxYLandscape;
  [v7 encodeFloat:@"_preferredTimeMaxYLandscape" forKey:preferredTimeMaxYLandscape];
}

- (PRPosterDescriptorGalleryTitleStyle)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeFloatForKey:@"_preferredTimeMaxYPortrait"];
  v6 = v5;
  [v4 decodeFloatForKey:@"_preferredTimeMaxYLandscape"];
  v8 = v7;

  return [(PRPosterDescriptorGalleryTitleStyle *)self initWithPreferredTimeMaxYPortrait:v6 preferredTimeMaxYLandscape:v8];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  preferredTimeMaxYPortrait = self->_preferredTimeMaxYPortrait;
  preferredTimeMaxYLandscape = self->_preferredTimeMaxYLandscape;

  return [v4 initWithPreferredTimeMaxYPortrait:preferredTimeMaxYPortrait preferredTimeMaxYLandscape:preferredTimeMaxYLandscape];
}

@end