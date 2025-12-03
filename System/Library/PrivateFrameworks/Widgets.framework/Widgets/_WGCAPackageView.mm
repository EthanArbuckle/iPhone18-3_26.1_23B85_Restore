@interface _WGCAPackageView
+ (void)loadPackageViewWithContentsOfURL:(id)l publishedObjectViewClassMap:(id)map completion:(id)completion;
- (BOOL)_supportsPushingBottomCornerRadiusToSubviews:(double)subviews;
- (NSString)snapshotIdentifier;
- (id)description;
- (void)_setContinuousCornerRadius:(double)radius;
@end

@implementation _WGCAPackageView

+ (void)loadPackageViewWithContentsOfURL:(id)l publishedObjectViewClassMap:(id)map completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __92___WGCAPackageView_loadPackageViewWithContentsOfURL_publishedObjectViewClassMap_completion___block_invoke;
  v13[3] = &unk_279ED16A0;
  v14 = lCopy;
  v15 = completionCopy;
  v12.receiver = self;
  v12.super_class = &OBJC_METACLASS____WGCAPackageView;
  v10 = completionCopy;
  v11 = lCopy;
  objc_msgSendSuper2(&v12, sel_loadPackageViewWithContentsOfURL_publishedObjectViewClassMap_completion_, v11, map, v13);
}

- (NSString)snapshotIdentifier
{
  lastPathComponent = [(NSURL *)self->_archiveURL lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

  return stringByDeletingPathExtension;
}

- (BOOL)_supportsPushingBottomCornerRadiusToSubviews:(double)subviews
{
  selfCopy = self;
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
  v7[1] = *&subviews;
  [(UIView *)selfCopy wg_walkSubviewTreeWithBlock:v6];
  LOBYTE(selfCopy) = *(v9 + 24);
  objc_destroyWeak(v7);
  _Block_object_dispose(&v8, 8);
  objc_destroyWeak(&location);
  return selfCopy;
}

- (void)_setContinuousCornerRadius:(double)radius
{
  if ((_WGSupportsMetal() & 1) != 0 || ![(_WGCAPackageView *)self _supportsPushingBottomCornerRadiusToSubviews:radius])
  {
    v5.receiver = self;
    v5.super_class = _WGCAPackageView;
    [(_WGCAPackageView *)&v5 _setContinuousCornerRadius:radius];
  }

  else
  {
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __47___WGCAPackageView__setContinuousCornerRadius___block_invoke;
    v6[3] = &unk_279ED16F0;
    objc_copyWeak(v7, &location);
    v7[1] = *&radius;
    [(UIView *)self wg_walkSubviewTreeWithBlock:v6];
    objc_destroyWeak(v7);
    objc_destroyWeak(&location);
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  archiveURL = [(_WGCAPackageView *)self archiveURL];
  v6 = [v3 stringWithFormat:@"<%@: %p archiveURL = %@>", v4, self, archiveURL];;

  return v6;
}

@end