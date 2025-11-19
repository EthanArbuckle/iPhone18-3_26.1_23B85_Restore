@interface UICollectionViewCellRegistration
+ (UICollectionViewCellRegistration)registrationWithCellClass:(Class)cellClass configurationHandler:(UICollectionViewCellRegistrationConfigurationHandler)configurationHandler;
+ (UICollectionViewCellRegistration)registrationWithCellNib:(UINib *)cellNib configurationHandler:(UICollectionViewCellRegistrationConfigurationHandler)configurationHandler;
- (UICollectionView)_collectionViewRequestingViewWhenCreated;
- (UICollectionViewCellRegistration)initWithCellClass:(Class)a3 cellNib:(id)a4 configurationHandler:(id)a5 reuseIdentifier:(id)a6;
@end

@implementation UICollectionViewCellRegistration

- (UICollectionView)_collectionViewRequestingViewWhenCreated
{
  WeakRetained = objc_loadWeakRetained(&self->__collectionViewRequestingViewWhenCreated);

  return WeakRetained;
}

- (UICollectionViewCellRegistration)initWithCellClass:(Class)a3 cellNib:(id)a4 configurationHandler:(id)a5 reuseIdentifier:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = UICollectionViewCellRegistration;
  v14 = [(UICollectionViewCellRegistration *)&v19 init];
  if (v14)
  {
    v15 = _UICollectionViewRequestingCellOrSupplementaryView();
    objc_storeWeak(&v14->__collectionViewRequestingViewWhenCreated, v15);

    objc_storeStrong(&v14->_cellClass, a3);
    objc_storeStrong(&v14->_cellNib, a4);
    v16 = _Block_copy(v12);
    configurationHandler = v14->_configurationHandler;
    v14->_configurationHandler = v16;

    objc_storeStrong(&v14->_reuseIdentifier, a6);
  }

  return v14;
}

+ (UICollectionViewCellRegistration)registrationWithCellClass:(Class)cellClass configurationHandler:(UICollectionViewCellRegistrationConfigurationHandler)configurationHandler
{
  v5 = configurationHandler;
  v6 = objc_alloc(objc_opt_class());
  v7 = [MEMORY[0x1E696AFB0] UUID];
  v8 = [v7 UUIDString];
  v9 = [v6 initWithCellClass:cellClass cellNib:0 configurationHandler:v5 reuseIdentifier:v8];

  return v9;
}

+ (UICollectionViewCellRegistration)registrationWithCellNib:(UINib *)cellNib configurationHandler:(UICollectionViewCellRegistrationConfigurationHandler)configurationHandler
{
  v5 = configurationHandler;
  v6 = cellNib;
  v7 = objc_alloc(objc_opt_class());
  v8 = [MEMORY[0x1E696AFB0] UUID];
  v9 = [v8 UUIDString];
  v10 = [v7 initWithCellClass:0 cellNib:v6 configurationHandler:v5 reuseIdentifier:v9];

  return v10;
}

@end