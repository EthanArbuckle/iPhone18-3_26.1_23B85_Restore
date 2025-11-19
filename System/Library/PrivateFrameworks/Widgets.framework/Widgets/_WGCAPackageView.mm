@interface _WGCAPackageView
+ (void)loadPackageViewWithContentsOfURL:(id)a3 publishedObjectViewClassMap:(id)a4 completion:(id)a5;
- (BOOL)_supportsPushingBottomCornerRadiusToSubviews:(double)a3;
- (NSString)snapshotIdentifier;
- (id)description;
- (void)_setContinuousCornerRadius:(double)a3;
@end

@implementation _WGCAPackageView

+ (void)loadPackageViewWithContentsOfURL:(id)a3 publishedObjectViewClassMap:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __92___WGCAPackageView_loadPackageViewWithContentsOfURL_publishedObjectViewClassMap_completion___block_invoke;
  v13[3] = &unk_279ED16A0;
  v14 = v8;
  v15 = v9;
  v12.receiver = a1;
  v12.super_class = &OBJC_METACLASS____WGCAPackageView;
  v10 = v9;
  v11 = v8;
  objc_msgSendSuper2(&v12, sel_loadPackageViewWithContentsOfURL_publishedObjectViewClassMap_completion_, v11, a4, v13);
}

- (NSString)snapshotIdentifier
{
  v2 = [(NSURL *)self->_archiveURL lastPathComponent];
  v3 = [v2 stringByDeletingPathExtension];

  return v3;
}

- (BOOL)_supportsPushingBottomCornerRadiusToSubviews:(double)a3
{
  v4 = self;
  objc_initWeak(&location, self);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65___WGCAPackageView__supportsPushingBottomCornerRadiusToSubviews___block_invoke;
  v6[3] = &unk_279ED16C8;
  v6[4] = &v8;
  objc_copyWeak(v7, &location);
  v7[1] = *&a3;
  [(UIView *)v4 wg_walkSubviewTreeWithBlock:v6];
  LOBYTE(v4) = *(v9 + 24);
  objc_destroyWeak(v7);
  _Block_object_dispose(&v8, 8);
  objc_destroyWeak(&location);
  return v4;
}

- (void)_setContinuousCornerRadius:(double)a3
{
  if ((_WGSupportsMetal() & 1) != 0 || ![(_WGCAPackageView *)self _supportsPushingBottomCornerRadiusToSubviews:a3])
  {
    v5.receiver = self;
    v5.super_class = _WGCAPackageView;
    [(_WGCAPackageView *)&v5 _setContinuousCornerRadius:a3];
  }

  else
  {
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __47___WGCAPackageView__setContinuousCornerRadius___block_invoke;
    v6[3] = &unk_279ED16F0;
    objc_copyWeak(v7, &location);
    v7[1] = *&a3;
    [(UIView *)self wg_walkSubviewTreeWithBlock:v6];
    objc_destroyWeak(v7);
    objc_destroyWeak(&location);
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(_WGCAPackageView *)self archiveURL];
  v6 = [v3 stringWithFormat:@"<%@: %p archiveURL = %@>", v4, self, v5];;

  return v6;
}

@end