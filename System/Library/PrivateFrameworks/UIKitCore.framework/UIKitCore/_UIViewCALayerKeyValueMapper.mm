@interface _UIViewCALayerKeyValueMapper
+ (id)CALayerKeyPathForUIViewKeyPath:(id)path;
+ (id)CALayerValueForUIViewValue:(id)value forUIViewKey:(id)key;
@end

@implementation _UIViewCALayerKeyValueMapper

+ (id)CALayerKeyPathForUIViewKeyPath:(id)path
{
  pathCopy = path;
  if (!pathCopy)
  {
    v4 = 0;
    goto LABEL_15;
  }

  if (qword_1ED4A2C90 != -1)
  {
    dispatch_once(&qword_1ED4A2C90, &__block_literal_global_712);
  }

  v4 = [_MergedGlobals_1392 objectForKeyedSubscript:pathCopy];
  if (!v4)
  {
    v5 = [pathCopy componentsSeparatedByString:@"."];
    v6 = qword_1ED4A2C88;
    v7 = [v5 objectAtIndexedSubscript:0];
    v8 = [v6 objectForKeyedSubscript:v7];

    v9 = pathCopy;
    v10 = v9;
    if (v8)
    {
      if ([v5 count] != 1)
      {
        v12 = [v5 subarrayWithRange:{1, objc_msgSend(v5, "count") - 1}];
        v13 = MEMORY[0x1E696AEC0];
        v14 = [v12 componentsJoinedByString:@"."];
        v4 = [v13 stringWithFormat:@"%@.%@", v8, v14];

        goto LABEL_13;
      }

      v11 = v8;
    }

    else
    {
      v4 = v9;
      if (![v9 hasPrefix:@"layer."])
      {
LABEL_14:
        [_MergedGlobals_1392 setObject:v4 forKeyedSubscript:v10];

        goto LABEL_15;
      }

      v11 = [v10 substringFromIndex:6];
    }

    v4 = v11;
    v12 = v10;
LABEL_13:

    goto LABEL_14;
  }

LABEL_15:

  return v4;
}

+ (id)CALayerValueForUIViewValue:(id)value forUIViewKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if (qword_1ED4A2CA0 != -1)
  {
    dispatch_once(&qword_1ED4A2CA0, &__block_literal_global_35_2);
  }

  v7 = [qword_1ED4A2C98 objectForKeyedSubscript:keyCopy];
  v8 = v7;
  if (v7)
  {
    v9 = (*(v7 + 16))(v7, valueCopy);
  }

  else
  {
    v9 = valueCopy;
  }

  v10 = v9;

  return v10;
}

@end