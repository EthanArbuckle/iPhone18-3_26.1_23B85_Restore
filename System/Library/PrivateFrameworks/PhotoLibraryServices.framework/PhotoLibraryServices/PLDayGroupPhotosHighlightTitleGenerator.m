@interface PLDayGroupPhotosHighlightTitleGenerator
+ (id)assetsToUseForDayGroupHighlight:(id)a3 withFilter:(unsigned __int16)a4;
+ (id)titleForHighlight:(id)a3 filter:(unsigned __int16)a4 dateRangeTitleGenerator:(id)a5 options:(unint64_t)a6;
@end

@implementation PLDayGroupPhotosHighlightTitleGenerator

+ (id)assetsToUseForDayGroupHighlight:(id)a3 withFilter:(unsigned __int16)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  switch(v4)
  {
    case 2:
      v7 = [v5 dayGroupExtendedAssetsShared];
      if ([v7 count])
      {
        goto LABEL_12;
      }

      v8 = [v6 dayGroupAssetsShared];
      goto LABEL_10;
    case 1:
      v7 = [v5 dayGroupExtendedAssetsPrivate];
      if ([v7 count])
      {
        goto LABEL_12;
      }

      v8 = [v6 dayGroupAssetsPrivate];
      goto LABEL_10;
    case 0:
      v7 = [v5 dayGroupExtendedAssets];
      if ([v7 count])
      {
        goto LABEL_12;
      }

      v8 = [v6 dayGroupAssets];
LABEL_10:
      v9 = v8;

      v7 = v9;
      goto LABEL_12;
  }

  v7 = 0;
LABEL_12:

  return v7;
}

+ (id)titleForHighlight:(id)a3 filter:(unsigned __int16)a4 dateRangeTitleGenerator:(id)a5 options:(unint64_t)a6
{
  v6 = a4;
  v27[2] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a3;
  v25 = [PLDayGroupPhotosHighlightTitleGenerator assetsToUseForDayGroupHighlight:v9 withFilter:v6];
  v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:1];
  v27[0] = v10;
  v11 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
  v27[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v13 = [v25 sortedArrayUsingDescriptors:v12];

  v14 = [v13 firstObject];
  v15 = [v13 lastObject];
  v16 = [v14 dateCreated];
  v17 = [v16 dateByAddingTimeInterval:{objc_msgSend(v9, "startTimeZoneOffset")}];

  v18 = [v15 dateCreated];
  v19 = [v18 dateByAddingTimeInterval:{objc_msgSend(v9, "endTimeZoneOffset")}];

  v20 = [v9 category];
  v21 = [v9 kind];
  v22 = [v9 type];

  v23 = [v8 dateRangeTitleWithStartDate:v17 endDate:v19 category:v20 kind:v21 type:v22 options:a6];

  return v23;
}

@end