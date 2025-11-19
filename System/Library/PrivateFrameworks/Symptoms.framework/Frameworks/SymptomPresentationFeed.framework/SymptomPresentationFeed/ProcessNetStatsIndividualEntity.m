@interface ProcessNetStatsIndividualEntity
+ (BOOL)rawCounts:(id)a3 forType:(id)a4 txBytes:(unint64_t *)a5 rxBytes:(unint64_t *)a6;
@end

@implementation ProcessNetStatsIndividualEntity

+ (BOOL)rawCounts:(id)a3 forType:(id)a4 txBytes:(unint64_t *)a5 rxBytes:(unint64_t *)a6
{
  v9 = a4;
  v10 = [a3 objectForKeyedSubscript:@"data"];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_11;
  }

  v12 = [v10 bytes];
  if (([v9 isEqualToString:@"wifi"] & 1) == 0)
  {
    if (([v9 isEqualToString:@"wwan"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"expensive"))
    {
      v14 = (v12 + 16);
      v13 = 24;
      goto LABEL_7;
    }

    if (([v9 isEqualToString:@"wired"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"awdl"))
    {
      v14 = (v12 + 32);
      v13 = 40;
      goto LABEL_7;
    }

LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  v13 = 8;
  v14 = v12;
LABEL_7:
  *a6 = *v14;
  *a5 = *(v12 + v13);
  v15 = 1;
LABEL_12:

  return v15;
}

@end