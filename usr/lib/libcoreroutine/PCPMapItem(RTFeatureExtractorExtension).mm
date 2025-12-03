@interface PCPMapItem(RTFeatureExtractorExtension)
- (id)initWithRTMapItem:()RTFeatureExtractorExtension;
@end

@implementation PCPMapItem(RTFeatureExtractorExtension)

- (id)initWithRTMapItem:()RTFeatureExtractorExtension
{
  v4 = MEMORY[0x277D3F8A8];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  name = [v5 name];
  [v6 setPlaceName:name];

  category = [v5 category];
  [v6 setCategory:category];

  [v6 setPlaceType:{objc_msgSend(v5, "mapItemPlaceType")}];
  [v6 setPlaceSource:{objc_msgSend(v5, "source")}];
  muid = [v5 muid];

  [v6 setMapItemMUID:muid];
  return v6;
}

@end