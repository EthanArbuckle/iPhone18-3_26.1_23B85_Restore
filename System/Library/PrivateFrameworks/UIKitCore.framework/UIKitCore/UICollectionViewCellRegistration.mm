@interface UICollectionViewCellRegistration
+ (UICollectionViewCellRegistration)registrationWithCellClass:(Class)cellClass configurationHandler:(UICollectionViewCellRegistrationConfigurationHandler)configurationHandler;
+ (UICollectionViewCellRegistration)registrationWithCellNib:(UINib *)cellNib configurationHandler:(UICollectionViewCellRegistrationConfigurationHandler)configurationHandler;
- (UICollectionView)_collectionViewRequestingViewWhenCreated;
- (UICollectionViewCellRegistration)initWithCellClass:(Class)class cellNib:(id)nib configurationHandler:(id)handler reuseIdentifier:(id)identifier;
@end

@implementation UICollectionViewCellRegistration

- (UICollectionView)_collectionViewRequestingViewWhenCreated
{
  WeakRetained = objc_loadWeakRetained(&self->__collectionViewRequestingViewWhenCreated);

  return WeakRetained;
}

- (UICollectionViewCellRegistration)initWithCellClass:(Class)class cellNib:(id)nib configurationHandler:(id)handler reuseIdentifier:(id)identifier
{
  nibCopy = nib;
  handlerCopy = handler;
  identifierCopy = identifier;
  v19.receiver = self;
  v19.super_class = UICollectionViewCellRegistration;
  v14 = [(UICollectionViewCellRegistration *)&v19 init];
  if (v14)
  {
    v15 = _UICollectionViewRequestingCellOrSupplementaryView();
    objc_storeWeak(&v14->__collectionViewRequestingViewWhenCreated, v15);

    objc_storeStrong(&v14->_cellClass, class);
    objc_storeStrong(&v14->_cellNib, nib);
    v16 = _Block_copy(handlerCopy);
    configurationHandler = v14->_configurationHandler;
    v14->_configurationHandler = v16;

    objc_storeStrong(&v14->_reuseIdentifier, identifier);
  }

  return v14;
}

+ (UICollectionViewCellRegistration)registrationWithCellClass:(Class)cellClass configurationHandler:(UICollectionViewCellRegistrationConfigurationHandler)configurationHandler
{
  v5 = configurationHandler;
  v6 = objc_alloc(objc_opt_class());
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v9 = [v6 initWithCellClass:cellClass cellNib:0 configurationHandler:v5 reuseIdentifier:uUIDString];

  return v9;
}

+ (UICollectionViewCellRegistration)registrationWithCellNib:(UINib *)cellNib configurationHandler:(UICollectionViewCellRegistrationConfigurationHandler)configurationHandler
{
  v5 = configurationHandler;
  v6 = cellNib;
  v7 = objc_alloc(objc_opt_class());
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v10 = [v7 initWithCellClass:0 cellNib:v6 configurationHandler:v5 reuseIdentifier:uUIDString];

  return v10;
}

@end