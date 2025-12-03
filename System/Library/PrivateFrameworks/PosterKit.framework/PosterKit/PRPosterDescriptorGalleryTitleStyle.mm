@interface PRPosterDescriptorGalleryTitleStyle
- (PRPosterDescriptorGalleryTitleStyle)initWithCoder:(id)coder;
- (PRPosterDescriptorGalleryTitleStyle)initWithPreferredTimeMaxYPortrait:(double)portrait preferredTimeMaxYLandscape:(double)landscape;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRPosterDescriptorGalleryTitleStyle

- (PRPosterDescriptorGalleryTitleStyle)initWithPreferredTimeMaxYPortrait:(double)portrait preferredTimeMaxYLandscape:(double)landscape
{
  v7.receiver = self;
  v7.super_class = PRPosterDescriptorGalleryTitleStyle;
  result = [(PRPosterDescriptorGalleryTitleStyle *)&v7 init];
  if (result)
  {
    result->_preferredTimeMaxYPortrait = portrait;
    result->_preferredTimeMaxYLandscape = landscape;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  preferredTimeMaxYPortrait = self->_preferredTimeMaxYPortrait;
  coderCopy = coder;
  *&v5 = preferredTimeMaxYPortrait;
  [coderCopy encodeFloat:@"_preferredTimeMaxYPortrait" forKey:v5];
  preferredTimeMaxYLandscape = self->_preferredTimeMaxYLandscape;
  *&preferredTimeMaxYLandscape = preferredTimeMaxYLandscape;
  [coderCopy encodeFloat:@"_preferredTimeMaxYLandscape" forKey:preferredTimeMaxYLandscape];
}

- (PRPosterDescriptorGalleryTitleStyle)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeFloatForKey:@"_preferredTimeMaxYPortrait"];
  v6 = v5;
  [coderCopy decodeFloatForKey:@"_preferredTimeMaxYLandscape"];
  v8 = v7;

  return [(PRPosterDescriptorGalleryTitleStyle *)self initWithPreferredTimeMaxYPortrait:v6 preferredTimeMaxYLandscape:v8];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  preferredTimeMaxYPortrait = self->_preferredTimeMaxYPortrait;
  preferredTimeMaxYLandscape = self->_preferredTimeMaxYLandscape;

  return [v4 initWithPreferredTimeMaxYPortrait:preferredTimeMaxYPortrait preferredTimeMaxYLandscape:preferredTimeMaxYLandscape];
}

@end