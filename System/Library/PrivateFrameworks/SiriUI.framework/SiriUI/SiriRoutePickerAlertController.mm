@interface SiriRoutePickerAlertController
- (unint64_t)supportedInterfaceOrientations;
@end

@implementation SiriRoutePickerAlertController

- (unint64_t)supportedInterfaceOrientations
{
  if (SiriUIIsAllOrientationsSupported())
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

@end