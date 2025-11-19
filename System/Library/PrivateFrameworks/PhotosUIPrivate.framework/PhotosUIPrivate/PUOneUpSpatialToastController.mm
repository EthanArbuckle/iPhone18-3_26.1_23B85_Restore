@interface PUOneUpSpatialToastController
+ (NSString)downloadErrorDomain;
+ (NSString)statusManagerItemIdentifier;
- (void)createAndStartToast;
- (void)threeDToggleDidChange;
@end

@implementation PUOneUpSpatialToastController

- (void)threeDToggleDidChange
{
  v2 = self;
  sub_1B3730F18();
}

- (void)createAndStartToast
{
  v2 = self;
  sub_1B373124C();
}

+ (NSString)statusManagerItemIdentifier
{
  static PUOneUpSpatialToastController.statusManagerItemIdentifier.getter();
  v2 = sub_1B3C9C5A8();

  return v2;
}

+ (NSString)downloadErrorDomain
{
  static PUOneUpSpatialToastController.downloadErrorDomain.getter();
  v2 = sub_1B3C9C5A8();

  return v2;
}

@end