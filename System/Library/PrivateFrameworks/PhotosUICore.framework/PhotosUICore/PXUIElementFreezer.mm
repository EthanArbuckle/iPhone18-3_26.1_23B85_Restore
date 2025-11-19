@interface PXUIElementFreezer
+ (PXUIElementFreezer)defaultFreezer;
- (PXUIElementFreezer)init;
- (id)freezeContentOfViewController:(id)a3 timeout:(double)a4;
- (id)freezeMainWindowWithTimeout:(double)a3;
- (id)freezeView:(id)a3 timeout:(double)a4;
- (id)freezeWindowContainingViewController:(id)a3 timeout:(double)a4;
@end

@implementation PXUIElementFreezer

+ (PXUIElementFreezer)defaultFreezer
{
  v2 = [objc_allocWithZone(PXUIElementFreezer) init];

  return v2;
}

- (id)freezeView:(id)a3 timeout:(double)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_1A45FEE18(a3);

  return v8;
}

- (id)freezeContentOfViewController:(id)a3 timeout:(double)a4
{
  v6 = a3;
  v7 = self;
  v8 = [v6 viewIfLoaded];
  v9 = [(PXUIElementFreezer *)v7 freezeView:v8 timeout:a4];

  return v9;
}

- (id)freezeWindowContainingViewController:(id)a3 timeout:(double)a4
{
  v7 = objc_opt_self();
  v8 = a3;
  v9 = self;
  v10 = [v7 px:v8 windowContainingViewController:?];
  v11 = [(PXUIElementFreezer *)v9 freezeView:v10 timeout:a4];

  return v11;
}

- (id)freezeMainWindowWithTimeout:(double)a3
{
  v5 = objc_opt_self();
  v6 = self;
  v7 = [v5 px:0 windowContainingViewController:?];
  v8 = [(PXUIElementFreezer *)v6 freezeView:v7 timeout:a3];

  return v8;
}

- (PXUIElementFreezer)init
{
  v3.receiver = self;
  v3.super_class = PXUIElementFreezer;
  return [(PXUIElementFreezer *)&v3 init];
}

@end