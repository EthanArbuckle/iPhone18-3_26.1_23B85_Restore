@interface PFVideoMetadataBuilder
- (NSArray)metadataItems;
- (id)accessibilityDescriptionItem;
- (id)captionItem;
- (id)commonItemForKey:(id)a3 string:(id)a4;
- (id)creationDateItem;
- (id)keywordsItem;
- (id)locationItem;
- (id)titleItem;
- (id)videoDateFormatter;
@end

@implementation PFVideoMetadataBuilder

- (NSArray)metadataItems
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(PFVideoMetadataBuilder *)self titleItem];
  if (v4)
  {
    [v3 addObject:v4];
  }

  v5 = [(PFVideoMetadataBuilder *)self captionItem];
  if (v5)
  {
    [v3 addObject:v5];
  }

  v6 = [(PFVideoMetadataBuilder *)self locationItem];
  if (v6)
  {
    [v3 addObject:v6];
  }

  v7 = [(PFVideoMetadataBuilder *)self creationDateItem];
  if (v7)
  {
    [v3 addObject:v7];
  }

  v8 = [(PFVideoMetadataBuilder *)self keywordsItem];
  if (v8)
  {
    [v3 addObject:v8];
  }

  v9 = [(PFVideoMetadataBuilder *)self accessibilityDescriptionItem];
  if (v9)
  {
    [v3 addObject:v9];
  }

  v10 = [v3 copy];

  return v10;
}

- (id)keywordsItem
{
  v2 = [(PFMetadataBuilder *)self combinedKeywordsAndPeople];
  if ([v2 count])
  {
    v3 = objc_alloc_init(MEMORY[0x1E6988050]);
    [v3 setKeySpace:*MEMORY[0x1E6987850]];
    [v3 setKey:*MEMORY[0x1E69878C8]];
    v4 = [v2 copy];
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
  v3 = [(PFMetadataBuilder *)self creationDate];
  if (v3)
  {
    v4 = [(PFVideoMetadataBuilder *)self videoDateFormatter];
    v5 = [(PFMetadataBuilder *)self creationTimeZone];
    [v4 setTimeZone:v5];

    v6 = [v4 stringFromDate:v3];
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
  v4 = [(PFMetadataBuilder *)self location];
  v5 = [v4 iso6709Notation];
  v6 = [(PFVideoMetadataBuilder *)self commonItemForKey:v3 string:v5];

  return v6;
}

- (id)accessibilityDescriptionItem
{
  v3 = *MEMORY[0x1E6987670];
  v4 = [(PFMetadataBuilder *)self accessibilityDescription];
  v5 = [(PFVideoMetadataBuilder *)self commonItemForKey:v3 string:v4];

  return v5;
}

- (id)captionItem
{
  v3 = *MEMORY[0x1E6987690];
  v4 = [(PFMetadataBuilder *)self caption];
  v5 = [(PFVideoMetadataBuilder *)self commonItemForKey:v3 string:v4];

  return v5;
}

- (id)titleItem
{
  v3 = *MEMORY[0x1E69876B8];
  v4 = [(PFMetadataBuilder *)self title];
  v5 = [(PFVideoMetadataBuilder *)self commonItemForKey:v3 string:v4];

  return v5;
}

- (id)commonItemForKey:(id)a3 string:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 length])
  {
    v7 = objc_alloc_init(MEMORY[0x1E6988050]);
    [v7 setKeySpace:*MEMORY[0x1E6987838]];
    [v7 setKey:v5];
    [v7 setValue:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end