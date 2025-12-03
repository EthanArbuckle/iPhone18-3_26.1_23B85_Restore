@interface PFVideoMetadataBuilder
- (NSArray)metadataItems;
- (id)accessibilityDescriptionItem;
- (id)captionItem;
- (id)commonItemForKey:(id)key string:(id)string;
- (id)creationDateItem;
- (id)keywordsItem;
- (id)locationItem;
- (id)titleItem;
- (id)videoDateFormatter;
@end

@implementation PFVideoMetadataBuilder

- (NSArray)metadataItems
{
  array = [MEMORY[0x1E695DF70] array];
  titleItem = [(PFVideoMetadataBuilder *)self titleItem];
  if (titleItem)
  {
    [array addObject:titleItem];
  }

  captionItem = [(PFVideoMetadataBuilder *)self captionItem];
  if (captionItem)
  {
    [array addObject:captionItem];
  }

  locationItem = [(PFVideoMetadataBuilder *)self locationItem];
  if (locationItem)
  {
    [array addObject:locationItem];
  }

  creationDateItem = [(PFVideoMetadataBuilder *)self creationDateItem];
  if (creationDateItem)
  {
    [array addObject:creationDateItem];
  }

  keywordsItem = [(PFVideoMetadataBuilder *)self keywordsItem];
  if (keywordsItem)
  {
    [array addObject:keywordsItem];
  }

  accessibilityDescriptionItem = [(PFVideoMetadataBuilder *)self accessibilityDescriptionItem];
  if (accessibilityDescriptionItem)
  {
    [array addObject:accessibilityDescriptionItem];
  }

  v10 = [array copy];

  return v10;
}

- (id)keywordsItem
{
  combinedKeywordsAndPeople = [(PFMetadataBuilder *)self combinedKeywordsAndPeople];
  if ([combinedKeywordsAndPeople count])
  {
    v3 = objc_alloc_init(MEMORY[0x1E6988050]);
    [v3 setKeySpace:*MEMORY[0x1E6987850]];
    [v3 setKey:*MEMORY[0x1E69878C8]];
    v4 = [combinedKeywordsAndPeople copy];
    [v3 setValue:v4];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)videoDateFormatter
{
  if (videoDateFormatter_onceToken != -1)
  {
    dispatch_once(&videoDateFormatter_onceToken, &__block_literal_global_198);
  }

  v3 = videoDateFormatter_dateFormatter;

  return v3;
}

uint64_t __44__PFVideoMetadataBuilder_videoDateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v1 = videoDateFormatter_dateFormatter;
  videoDateFormatter_dateFormatter = v0;

  v2 = videoDateFormatter_dateFormatter;

  return [v2 setFormatOptions:1907];
}

- (id)creationDateItem
{
  creationDate = [(PFMetadataBuilder *)self creationDate];
  if (creationDate)
  {
    videoDateFormatter = [(PFVideoMetadataBuilder *)self videoDateFormatter];
    creationTimeZone = [(PFMetadataBuilder *)self creationTimeZone];
    [videoDateFormatter setTimeZone:creationTimeZone];

    v6 = [videoDateFormatter stringFromDate:creationDate];
    v7 = [(PFVideoMetadataBuilder *)self commonItemForKey:*MEMORY[0x1E6987688] string:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)locationItem
{
  v3 = *MEMORY[0x1E6987698];
  location = [(PFMetadataBuilder *)self location];
  iso6709Notation = [location iso6709Notation];
  v6 = [(PFVideoMetadataBuilder *)self commonItemForKey:v3 string:iso6709Notation];

  return v6;
}

- (id)accessibilityDescriptionItem
{
  v3 = *MEMORY[0x1E6987670];
  accessibilityDescription = [(PFMetadataBuilder *)self accessibilityDescription];
  v5 = [(PFVideoMetadataBuilder *)self commonItemForKey:v3 string:accessibilityDescription];

  return v5;
}

- (id)captionItem
{
  v3 = *MEMORY[0x1E6987690];
  caption = [(PFMetadataBuilder *)self caption];
  v5 = [(PFVideoMetadataBuilder *)self commonItemForKey:v3 string:caption];

  return v5;
}

- (id)titleItem
{
  v3 = *MEMORY[0x1E69876B8];
  title = [(PFMetadataBuilder *)self title];
  v5 = [(PFVideoMetadataBuilder *)self commonItemForKey:v3 string:title];

  return v5;
}

- (id)commonItemForKey:(id)key string:(id)string
{
  keyCopy = key;
  stringCopy = string;
  if ([stringCopy length])
  {
    v7 = objc_alloc_init(MEMORY[0x1E6988050]);
    [v7 setKeySpace:*MEMORY[0x1E6987838]];
    [v7 setKey:keyCopy];
    [v7 setValue:stringCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end