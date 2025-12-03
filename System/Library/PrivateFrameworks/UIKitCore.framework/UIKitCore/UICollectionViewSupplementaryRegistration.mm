@interface UICollectionViewSupplementaryRegistration
+ (UICollectionViewSupplementaryRegistration)registrationWithSupplementaryClass:(Class)supplementaryClass elementKind:(NSString *)elementKind configurationHandler:(UICollectionViewSupplementaryRegistrationConfigurationHandler)configurationHandler;
+ (UICollectionViewSupplementaryRegistration)registrationWithSupplementaryNib:(UINib *)supplementaryNib elementKind:(NSString *)elementKind configurationHandler:(UICollectionViewSupplementaryRegistrationConfigurationHandler)configurationHandler;
- (UICollectionView)_collectionViewRequestingViewWhenCreated;
- (UICollectionViewSupplementaryRegistration)initWithSupplementaryClass:(Class)class supplementaryNib:(id)nib elementKind:(id)kind configurationHandler:(id)handler reuseIdentifier:(id)identifier;
@end

@implementation UICollectionViewSupplementaryRegistration

- (UICollectionView)_collectionViewRequestingViewWhenCreated
{
  WeakRetained = objc_loadWeakRetained(&self->__collectionViewRequestingViewWhenCreated);

  return WeakRetained;
}

- (UICollectionViewSupplementaryRegistration)initWithSupplementaryClass:(Class)class supplementaryNib:(id)nib elementKind:(id)kind configurationHandler:(id)handler reuseIdentifier:(id)identifier
{
  nibCopy = nib;
  kindCopy = kind;
  handlerCopy = handler;
  identifierCopy = identifier;
  v22.receiver = self;
  v22.super_class = UICollectionViewSupplementaryRegistration;
  v17 = [(UICollectionViewSupplementaryRegistration *)&v22 init];
  if (v17)
  {
    v18 = _UICollectionViewRequestingCellOrSupplementaryView();
    objc_storeWeak(&v17->__collectionViewRequestingViewWhenCreated, v18);

    objc_storeStrong(&v17->_supplementaryClass, class);
    objc_storeStrong(&v17->_supplementaryNib, nib);
    objc_storeStrong(&v17->_elementKind, kind);
    v19 = _Block_copy(handlerCopy);
    configurationHandler = v17->_configurationHandler;
    v17->_configurationHandler = v19;

    objc_storeStrong(&v17->_reuseIdentifier, identifier);
  }

  return v17;
}

+ (UICollectionViewSupplementaryRegistration)registrationWithSupplementaryClass:(Class)supplementaryClass elementKind:(NSString *)elementKind configurationHandler:(UICollectionViewSupplementaryRegistrationConfigurationHandler)configurationHandler
{
  v7 = configurationHandler;
  v8 = elementKind;
  v9 = objc_alloc(objc_opt_class());
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v12 = [v9 initWithSupplementaryClass:supplementaryClass supplementaryNib:0 elementKind:v8 configurationHandler:v7 reuseIdentifier:uUIDString];

  return v12;
}

+ (UICollectionViewSupplementaryRegistration)registrationWithSupplementaryNib:(UINib *)supplementaryNib elementKind:(NSString *)elementKind configurationHandler:(UICollectionViewSupplementaryRegistrationConfigurationHandler)configurationHandler
{
  v7 = configurationHandler;
  v8 = elementKind;
  v9 = supplementaryNib;
  v10 = objc_alloc(objc_opt_class());
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v13 = [v10 initWithSupplementaryClass:0 supplementaryNib:v9 elementKind:v8 configurationHandler:v7 reuseIdentifier:uUIDString];

  return v13;
}

@end