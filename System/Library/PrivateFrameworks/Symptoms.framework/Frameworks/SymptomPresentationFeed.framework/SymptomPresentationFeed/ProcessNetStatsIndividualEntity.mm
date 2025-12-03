@interface ProcessNetStatsIndividualEntity
+ (BOOL)rawCounts:(id)counts forType:(id)type txBytes:(unint64_t *)bytes rxBytes:(unint64_t *)rxBytes;
@end

@implementation ProcessNetStatsIndividualEntity

+ (BOOL)rawCounts:(id)counts forType:(id)type txBytes:(unint64_t *)bytes rxBytes:(unint64_t *)rxBytes
{
  typeCopy = type;
  v10 = [counts objectForKeyedSubscript:@"data"];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_11;
  }

  bytes = [v10 bytes];
  if (([typeCopy isEqualToString:@"wifi"] & 1) == 0)
  {
    if (([typeCopy isEqualToString:@"wwan"] & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", @"expensive"))
    {
      v14 = (bytes + 16);
      v13 = 24;
      goto LABEL_7;
    }

    if (([typeCopy isEqualToString:@"wired"] & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", @"awdl"))
    {
      v14 = (bytes + 32);
      v13 = 40;
      goto LABEL_7;
    }

LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  v13 = 8;
  v14 = bytes;
LABEL_7:
  *rxBytes = *v14;
  *bytes = *(bytes + v13);
  v15 = 1;
LABEL_12:

  return v15;
}

@end