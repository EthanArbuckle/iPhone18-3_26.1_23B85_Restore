@interface BMSyncPolicy
+ (double)minimumTimeBetweenSyncsAttemptsForTransport:(unint64_t)transport;
+ (double)minimumTimeBetweenSyncsForTransport:(unint64_t)transport;
@end

@implementation BMSyncPolicy

+ (double)minimumTimeBetweenSyncsForTransport:(unint64_t)transport
{
  result = dbl_10005A470[transport == 3];
  if (transport == 2)
  {
    return 3600.0;
  }

  return result;
}

+ (double)minimumTimeBetweenSyncsAttemptsForTransport:(unint64_t)transport
{
  result = dbl_10005A470[transport == 3];
  if (transport == 2)
  {
    return 3600.0;
  }

  return result;
}

@end