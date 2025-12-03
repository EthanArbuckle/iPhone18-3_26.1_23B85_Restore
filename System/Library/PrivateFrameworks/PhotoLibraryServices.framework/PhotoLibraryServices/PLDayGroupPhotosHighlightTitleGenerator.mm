@interface PLDayGroupPhotosHighlightTitleGenerator
+ (id)assetsToUseForDayGroupHighlight:(id)highlight withFilter:(unsigned __int16)filter;
+ (id)titleForHighlight:(id)highlight filter:(unsigned __int16)filter dateRangeTitleGenerator:(id)generator options:(unint64_t)options;
@end

@implementation PLDayGroupPhotosHighlightTitleGenerator

+ (id)assetsToUseForDayGroupHighlight:(id)highlight withFilter:(unsigned __int16)filter
{
  filterCopy = filter;
  highlightCopy = highlight;
  v6 = highlightCopy;
  switch(filterCopy)
  {
    case 2:
      dayGroupExtendedAssetsShared = [highlightCopy dayGroupExtendedAssetsShared];
      if ([dayGroupExtendedAssetsShared count])
      {
        goto LABEL_12;
      }

      dayGroupAssetsShared = [v6 dayGroupAssetsShared];
      goto LABEL_10;
    case 1:
      dayGroupExtendedAssetsShared = [highlightCopy dayGroupExtendedAssetsPrivate];
      if ([dayGroupExtendedAssetsShared count])
      {
        goto LABEL_12;
      }

      dayGroupAssetsShared = [v6 dayGroupAssetsPrivate];
      goto LABEL_10;
    case 0:
      dayGroupExtendedAssetsShared = [highlightCopy dayGroupExtendedAssets];
      if ([dayGroupExtendedAssetsShared count])
      {
        goto LABEL_12;
      }

      dayGroupAssetsShared = [v6 dayGroupAssets];
LABEL_10:
      v9 = dayGroupAssetsShared;

      dayGroupExtendedAssetsShared = v9;
      goto LABEL_12;
  }

  dayGroupExtendedAssetsShared = 0;
LABEL_12:

  return dayGroupExtendedAssetsShared;
}

+ (id)titleForHighlight:(id)highlight filter:(unsigned __int16)filter dateRangeTitleGenerator:(id)generator options:(unint64_t)options
{
  filterCopy = filter;
  v27[2] = *MEMORY[0x1E69E9840];
  generatorCopy = generator;
  highlightCopy = highlight;
  v25 = [PLDayGroupPhotosHighlightTitleGenerator assetsToUseForDayGroupHighlight:highlightCopy withFilter:filterCopy];
  v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:1];
  v27[0] = v10;
  v11 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
  v27[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v13 = [v25 sortedArrayUsingDescriptors:v12];

  firstObject = [v13 firstObject];
  lastObject = [v13 lastObject];
  dateCreated = [firstObject dateCreated];
  v17 = [dateCreated dateByAddingTimeInterval:{objc_msgSend(highlightCopy, "startTimeZoneOffset")}];

  dateCreated2 = [lastObject dateCreated];
  v19 = [dateCreated2 dateByAddingTimeInterval:{objc_msgSend(highlightCopy, "endTimeZoneOffset")}];

  category = [highlightCopy category];
  kind = [highlightCopy kind];
  type = [highlightCopy type];

  v23 = [generatorCopy dateRangeTitleWithStartDate:v17 endDate:v19 category:category kind:kind type:type options:options];

  return v23;
}

@end