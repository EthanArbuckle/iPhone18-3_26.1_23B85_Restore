@interface PMMTypes
+ (id)consumerToString:(unint64_t)string;
+ (id)predictedAnchorTypeToString:(int64_t)string;
+ (id)predictionSourceToString:(unint64_t)string;
@end

@implementation PMMTypes

+ (id)consumerToString:(unint64_t)string
{
  if (string > 5)
  {
    return 0;
  }

  else
  {
    return off_278592478[string];
  }
}

+ (id)predictionSourceToString:(unint64_t)string
{
  if (string > 2)
  {
    return 0;
  }

  else
  {
    return off_2785924A8[string];
  }
}

+ (id)predictedAnchorTypeToString:(int64_t)string
{
  if ((string - 1) > 0x12)
  {
    return @"Unknown";
  }

  else
  {
    return off_2785924C0[string - 1];
  }
}

@end