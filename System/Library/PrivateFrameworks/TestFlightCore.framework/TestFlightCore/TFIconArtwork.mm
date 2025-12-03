@interface TFIconArtwork
- (TFIconArtwork)initWithUrlTemplate:(id)template;
@end

@implementation TFIconArtwork

- (TFIconArtwork)initWithUrlTemplate:(id)template
{
  templateCopy = template;
  v9.receiver = self;
  v9.super_class = TFIconArtwork;
  v6 = [(TFIconArtwork *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_urlTemplate, template);
  }

  return v7;
}

@end