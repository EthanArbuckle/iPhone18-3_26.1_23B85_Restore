@interface PLDayPhotosHighlightTitleGenerator
+ (id)assetsToUseForDayHighlight:(id)a3 withFilter:(unsigned __int16)a4;
+ (id)titleForHighlight:(id)a3 filter:(unsigned __int16)a4 dateRangeTitleGenerator:(id)a5 options:(unint64_t)a6;
@end

@implementation PLDayPhotosHighlightTitleGenerator

+ (id)assetsToUseForDayHighlight:(id)a3 withFilter:(unsigned __int16)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  switch(v4)
  {
    case 2:
      v7 = [v5 extendedAssetsShared];
      if ([v7 count])
      {
        goto LABEL_12;
      }

      v8 = [v6 assetsShared];
      goto LABEL_10;
    case 1:
      v7 = [v5 extendedAssetsPrivate];
      if ([v7 count])
      {
        goto LABEL_12;
      }

      v8 = [v6 assetsPrivate];
      goto LABEL_10;
    case 0:
      v7 = [v5 extendedAssets];
      if ([v7 count])
      {
        goto LABEL_12;
      }

      v8 = [v6 assets];
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
  v25 = a5;
  v8 = a3;
  v24 = [PLDayPhotosHighlightTitleGenerator assetsToUseForDayHighlight:v8 withFilter:v6];
  v9 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:1];
  v27[0] = v9;
  v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
  v27[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v12 = [v24 sortedArrayUsingDescriptors:v11];

  v13 = [v12 firstObject];
  v14 = [v12 lastObject];
  v15 = [v13 dateCreated];
  v16 = [v15 dateByAddingTimeInterval:{objc_msgSend(v8, "startTimeZoneOffset")}];

  v17 = [v14 dateCreated];
  v18 = [v17 dateByAddingTimeInterval:{objc_msgSend(v8, "endTimeZoneOffset")}];

  v19 = [v8 category];
  v20 = [v8 kind];
  v21 = [v8 type];

  v22 = [v25 dateRangeTitleWithStartDate:v16 endDate:v18 category:v19 kind:v20 type:v21 options:a6 | 0x28];

  return v22;
}

@end