@interface PKAMSPaymentSheetSoftLinking
+ (void)softLink;
@end

@implementation PKAMSPaymentSheetSoftLinking

+ (void)softLink
{
  if (LoadAppleMediaServicesUIPaymentSheets_loadPredicate != -1)
  {
    dispatch_once(&LoadAppleMediaServicesUIPaymentSheets_loadPredicate, &__block_literal_global_30);
  }
}

@end