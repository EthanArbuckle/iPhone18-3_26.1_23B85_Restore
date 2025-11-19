@interface ICSDriveCellularViewPresenter
+ (void)presentFrom:(id)a3 accountManager:(id)a4;
- (ICSDriveCellularViewPresenter)init;
@end

@implementation ICSDriveCellularViewPresenter

+ (void)presentFrom:(id)a3 accountManager:(id)a4
{
  v5 = a3;
  v6 = a4;
  _s14iCloudSettings26DriveCellularViewPresenterC7present4from14accountManagerySo16UIViewControllerC_So011AIDAAccountJ0CtFZ_0(v5, v6);
}

- (ICSDriveCellularViewPresenter)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DriveCellularViewPresenter();
  return [(ICSDriveCellularViewPresenter *)&v3 init];
}

@end