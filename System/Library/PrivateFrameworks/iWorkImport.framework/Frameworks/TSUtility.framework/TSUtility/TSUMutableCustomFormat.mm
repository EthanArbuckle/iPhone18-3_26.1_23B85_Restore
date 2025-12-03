@interface TSUMutableCustomFormat
- (id)copyWithZone:(_NSZone *)zone;
- (void)setFormatType:(unsigned int)type;
@end

@implementation TSUMutableCustomFormat

- (id)copyWithZone:(_NSZone *)zone
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = [TSUCustomFormat allocWithZone:zone];
  formatName = [(TSUCustomFormat *)self formatName];
  formatType = [(TSUCustomFormat *)self formatType];
  defaultFormatData = [(TSUCustomFormat *)self defaultFormatData];
  v8 = [(TSUCustomFormat *)v4 initWithName:formatName formatType:formatType data:defaultFormatData];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  conditionList = [(TSUCustomFormat *)self conditionList];
  v10 = [conditionList countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(conditionList);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        conditionType = [v14 conditionType];
        [v14 conditionValue];
        v17 = v16;
        data = [v14 data];
        [(TSUCustomFormat *)v8 p_addConditionOfType:conditionType value:data data:v17];
      }

      v11 = [conditionList countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  return v8;
}

- (void)setFormatType:(unsigned int)type
{
  v3.receiver = self;
  v3.super_class = TSUMutableCustomFormat;
  [(TSUCustomFormat *)&v3 p_setFormatType:*&type];
}

@end