@interface UICollectionViewSupplementaryRegistration
+ (UICollectionViewSupplementaryRegistration)registrationWithSupplementaryClass:(Class)supplementaryClass elementKind:(NSString *)elementKind configurationHandler:(UICollectionViewSupplementaryRegistrationConfigurationHandler)configurationHandler;
+ (UICollectionViewSupplementaryRegistration)registrationWithSupplementaryNib:(UINib *)supplementaryNib elementKind:(NSString *)elementKind configurationHandler:(UICollectionViewSupplementaryRegistrationConfigurationHandler)configurationHandler;
- (UICollectionView)_collectionViewRequestingViewWhenCreated;
- (UICollectionViewSupplementaryRegistration)initWithSupplementaryClass:(Class)a3 supplementaryNib:(id)a4 elementKind:(id)a5 configurationHandler:(id)a6 reuseIdentifier:(id)a7;
@end

@implementation UICollectionViewSupplementaryRegistration

- (UICollectionView)_collectionViewRequestingViewWhenCreated
{
  WeakRetained = objc_loadWeakRetained(&self->__collectionViewRequestingViewWhenCreated);

  return WeakRetained;
}

- (UICollectionViewSupplementaryRegistration)initWithSupplementaryClass:(Class)a3 supplementaryNib:(id)a4 elementKind:(id)a5 configurationHandler:(id)a6 reuseIdentifier:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = UICollectionViewSupplementaryRegistration;
  v17 = [(UICollectionViewSupplementaryRegistration *)&v22 init];
  if (v17)
  {
    v18 = _UICollectionViewRequestingCellOrSupplementaryView();
    objc_storeWeak(&v17->__collectionViewRequestingViewWhenCreated, v18);

    objc_storeStrong(&v17->_supplementaryClass, a3);
    objc_storeStrong(&v17->_supplementaryNib, a4);
    objc_storeStrong(&v17->_elementKind, a5);
    v19 = _Block_copy(v15);
    configurationHandler = v17->_configurationHandler;
    v17->_configurationHandler = v19;

    objc_storeStrong(&v17->_reuseIdentifier, a7);
  }

  return v17;
}

+ (UICollectionViewSupplementaryRegistration)registrationWithSupplementaryClass:(Class)supplementaryClass elementKind:(NSString *)elementKind configurationHandler:(UICollectionViewSupplementaryRegistrationConfigurationHandler)configurationHandler
{
  v7 = configurationHandler;
  v8 = elementKind;
  v9 = objc_alloc(objc_opt_class());
  v10 = [MEMORY[0x1E696AFB0] UUID];
  v11 = [v10 UUIDString];
  v12 = [v9 initWithSupplementaryClass:supplementaryClass supplementaryNib:0 elementKind:v8 configurationHandler:v7 reuseIdentifier:v11];

  return v12;
}

+ (UICollectionViewSupplementaryRegistration)registrationWithSupplementaryNib:(UINib *)supplementaryNib elementKind:(NSString *)elementKind configurationHandler:(UICollectionViewSupplementaryRegistrationConfigurationHandler)configurationHandler
{
  v7 = configurationHandler;
  v8 = elementKind;
  v9 = supplementaryNib;
  v10 = objc_alloc(objc_opt_class());
  v11 = [MEMORY[0x1E696AFB0] UUID];
  v12 = [v11 UUIDString];
  v13 = [v10 initWithSupplementaryClass:0 supplementaryNib:v9 elementKind:v8 configurationHandler:v7 reuseIdentifier:v12];

  return v13;
}

@end