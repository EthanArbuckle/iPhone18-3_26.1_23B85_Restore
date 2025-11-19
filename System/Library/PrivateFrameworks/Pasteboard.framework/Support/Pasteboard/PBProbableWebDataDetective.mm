@interface PBProbableWebDataDetective
- (id)detectedPatternValuesInValue:(id)a3;
@end

@implementation PBProbableWebDataDetective

- (id)detectedPatternValuesInValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v5 = [v3 componentsSeparatedByCharactersInSet:v4];

  v6 = [v5 countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ((sub_1000189A8(v10) - 1) < 2)
        {
          v24 = @"com.apple.uikit.pasteboard-detection-pattern.probable-web-url";
          v25 = v10;
          v14 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];

          goto LABEL_18;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v26 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = sub_1000189A8(v3);
  if ((v11 - 1) < 2)
  {
    v22 = @"com.apple.uikit.pasteboard-detection-pattern.probable-web-url";
    v23 = v3;
    v12 = &v23;
    v13 = &v22;
    goto LABEL_17;
  }

  if (v11 && v11 != 3)
  {
LABEL_14:
    v14 = &__NSDictionary0__struct;
    goto LABEL_18;
  }

  v20 = @"com.apple.uikit.pasteboard-detection-pattern.probable-web-search";
  v21 = v3;
  v12 = &v21;
  v13 = &v20;
LABEL_17:
  v14 = [NSDictionary dictionaryWithObjects:v12 forKeys:v13 count:1];
LABEL_18:

  return v14;
}

@end