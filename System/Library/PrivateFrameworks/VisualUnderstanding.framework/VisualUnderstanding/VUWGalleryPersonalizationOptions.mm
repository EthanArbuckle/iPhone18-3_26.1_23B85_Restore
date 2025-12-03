@interface VUWGalleryPersonalizationOptions
- (NSArray)boundingBox;
- (NSString)adapterIdentifier;
- (VUWGalleryPersonalizationOptions)init;
- (VUWGalleryPersonalizationOptions)initWithCoder:(id)coder;
- (void)setAdapterIdentifier:(id)identifier;
- (void)setBoundingBox:(id)box;
- (void)setKeyObservation:(id)observation;
- (void)setSeed:(id)seed;
@end

@implementation VUWGalleryPersonalizationOptions

- (void)setSeed:(id)seed
{
  v4 = *(self + OBJC_IVAR___VUWGalleryPersonalizationOptions_seed);
  *(self + OBJC_IVAR___VUWGalleryPersonalizationOptions_seed) = seed;
  seedCopy = seed;
}

- (NSArray)boundingBox
{
  if (*(self + OBJC_IVAR___VUWGalleryPersonalizationOptions_boundingBox))
  {
    sub_1D2174E10(0, &qword_1EDC876F8);

    v2 = sub_1D2250AEC();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setBoundingBox:(id)box
{
  if (box)
  {
    sub_1D2174E10(0, &qword_1EDC876F8);
    v4 = sub_1D2250AFC();
  }

  else
  {
    v4 = 0;
  }

  *(self + OBJC_IVAR___VUWGalleryPersonalizationOptions_boundingBox) = v4;
}

- (NSString)adapterIdentifier
{
  if (*(self + OBJC_IVAR___VUWGalleryPersonalizationOptions_adapterIdentifier + 8))
  {

    v2 = sub_1D225092C();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setAdapterIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = sub_1D225095C();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___VUWGalleryPersonalizationOptions_adapterIdentifier);
  *v6 = v4;
  v6[1] = v5;
}

- (void)setKeyObservation:(id)observation
{
  v4 = *(self + OBJC_IVAR___VUWGalleryPersonalizationOptions_keyObservation);
  *(self + OBJC_IVAR___VUWGalleryPersonalizationOptions_keyObservation) = observation;
  observationCopy = observation;
}

- (VUWGalleryPersonalizationOptions)init
{
  *(self + OBJC_IVAR___VUWGalleryPersonalizationOptions_seed) = 0;
  *(self + OBJC_IVAR___VUWGalleryPersonalizationOptions_boundingBox) = 0;
  v2 = (self + OBJC_IVAR___VUWGalleryPersonalizationOptions_adapterIdentifier);
  *v2 = 0;
  v2[1] = 0;
  *(self + OBJC_IVAR___VUWGalleryPersonalizationOptions_keyObservation) = 0;
  v4.receiver = self;
  v4.super_class = VUWGalleryPersonalizationOptions;
  return [(VUWGalleryPersonalizationOptions *)&v4 init];
}

- (VUWGalleryPersonalizationOptions)initWithCoder:(id)coder
{
  *(self + OBJC_IVAR___VUWGalleryPersonalizationOptions_seed) = 0;
  *(self + OBJC_IVAR___VUWGalleryPersonalizationOptions_boundingBox) = 0;
  v3 = (self + OBJC_IVAR___VUWGalleryPersonalizationOptions_adapterIdentifier);
  *v3 = 0;
  v3[1] = 0;
  *(self + OBJC_IVAR___VUWGalleryPersonalizationOptions_keyObservation) = 0;
  v5.receiver = self;
  v5.super_class = VUWGalleryPersonalizationOptions;
  return [(VUWGalleryPersonalizationOptions *)&v5 init];
}

@end