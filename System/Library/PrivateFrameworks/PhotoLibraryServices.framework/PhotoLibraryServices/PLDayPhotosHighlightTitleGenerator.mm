@interface PLDayPhotosHighlightTitleGenerator
+ (id)assetsToUseForDayHighlight:(id)highlight withFilter:(unsigned __int16)filter;
+ (id)titleForHighlight:(id)highlight filter:(unsigned __int16)filter dateRangeTitleGenerator:(id)generator options:(unint64_t)options;
@end

@implementation PLDayPhotosHighlightTitleGenerator

+ (id)assetsToUseForDayHighlight:(id)highlight withFilter:(unsigned __int16)filter
{
  filterCopy = filter;
  highlightCopy = highlight;
  v6 = highlightCopy;
  switch(filterCopy)
  {
    case 2:
      extendedAssetsShared = [highlightCopy extendedAssetsShared];
      if ([extendedAssetsShared count])
      {
        goto LABEL_12;
      }

      assetsShared = [v6 assetsShared];
      goto LABEL_10;
    case 1:
      extendedAssetsShared = [highlightCopy extendedAssetsPrivate];
      if ([extendedAssetsShared count])
      {
        goto LABEL_12;
      }

      assetsShared = [v6 assetsPrivate];
      goto LABEL_10;
    case 0:
      extendedAssetsShared = [highlightCopy extendedAssets];
      if ([extendedAssetsShared count])
      {
        goto LABEL_12;
      }

      assetsShared = [v6 assets];
LABEL_10:
      v9 = assetsShared;

      extendedAssetsShared = v9;
      goto LABEL_12;
  }

  extendedAssetsShared = 0;
LABEL_12:

  return extendedAssetsShared;
}

+ (id)titleForHighlight:(id)highlight filter:(unsigned __int16)filter dateRangeTitleGenerator:(id)generator options:(unint64_t)options
{
  filterCopy = filter;
  v27[2] = *MEMORY[0x1E69E9840];
  generatorCopy = generator;
  highlightCopy = highlight;
  v24 = [PLDayPhotosHighlightTitleGenerator assetsToUseForDayHighlight:highlightCopy withFilter:filterCopy];
  v9 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:1];
  v27[0] = v9;
  v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
  v27[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v12 = [v24 sortedArrayUsingDescriptors:v11];

  firstObject = [v12 firstObject];
  lastObject = [v12 lastObject];
  dateCreated = [firstObject dateCreated];
  v16 = [dateCreated dateByAddingTimeInterval:{objc_msgSend(highlightCopy, "startTimeZoneOffset")}];

  dateCreated2 = [lastObject dateCreated];
  v18 = [dateCreated2 dateByAddingTimeInterval:{objc_msgSend(highlightCopy, "endTimeZoneOffset")}];

  category = [highlightCopy category];
  kind = [highlightCopy kind];
  type = [highlightCopy type];

  0x28 = [generatorCopy dateRangeTitleWithStartDate:v16 endDate:v18 category:category kind:kind type:type options:options | 0x28];

  return 0x28;
}

@end