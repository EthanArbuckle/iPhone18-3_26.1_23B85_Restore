@interface ICSDriveCellularViewPresenter
+ (void)presentFrom:(id)from accountManager:(id)manager;
- (ICSDriveCellularViewPresenter)init;
@end

@implementation ICSDriveCellularViewPresenter

+ (void)presentFrom:(id)from accountManager:(id)manager
{
  fromCopy = from;
  managerCopy = manager;
  _s14iCloudSettings26DriveCellularViewPresenterC7present4from14accountManagerySo16UIViewControllerC_So011AIDAAccountJ0CtFZ_0(fromCopy, managerCopy);
}

- (ICSDriveCellularViewPresenter)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DriveCellularViewPresenter();
  return [(ICSDriveCellularViewPresenter *)&v3 init];
}

@end