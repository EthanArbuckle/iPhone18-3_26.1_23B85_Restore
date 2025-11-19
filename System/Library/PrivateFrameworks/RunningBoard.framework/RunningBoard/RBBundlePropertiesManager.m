@interface RBBundlePropertiesManager
- (NSString)debugDescription;
- (NSString)stateCaptureTitle;
- (RBBundlePropertiesManager)init;
- (RBBundlePropertiesManagerDelegate)delegate;
- (id)propertiesForIdentity:(id)a3 identifier:(id)a4;
- (void)addProcess:(id)a3;
- (void)removeProcess:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation RBBundlePropertiesManager

- (RBBundlePropertiesManager)init
{
  v11.receiver = self;
  v11.super_class = RBBundlePropertiesManager;
  v2 = [(RBBundlePropertiesManager *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(RBBundlePropertiesLSProvider);
    lsProvider = v3->_lsProvider;
    v3->_lsProvider = v4;

    [(RBBundlePropertiesLSProvider *)v3->_lsProvider setDelegate:v3];
    v6 = objc_alloc_init(RBProcessIndex);
    processIndex = v3->_processIndex;
    v3->_processIndex = v6;

    v8 = objc_alloc_init(RBBundlePropertiesBSXPCProvider);
    xpcProvider = v3->_xpcProvider;
    v3->_xpcProvider = v8;
  }

  return v3;
}

- (RBBundlePropertiesManagerDelegate)delegate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_delegate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  delegate = self->_delegate;
  self->_delegate = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [objc_opt_class() description];
  v5 = [(RBBundlePropertiesLSProvider *)self->_lsProvider debugDescription];
  v6 = [(RBBundlePropertiesBSXPCProvider *)self->_xpcProvider debugDescription];
  v7 = [v3 initWithFormat:@"<%@| lsProvider:%@\n\txpcProvider:%@>", v4, v5, v6];

  return v7;
}

- (id)propertiesForIdentity:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(RBProcessIndex *)self->_processIndex processForIdentifier:v7];
  if (!v8)
  {
    v8 = [(RBProcessIndex *)self->_processIndex processForIdentity:v6];
  }

  v9 = [v8 bundleProperties];
  os_unfair_lock_unlock(&self->_lock);
  if (!v9)
  {
    v9 = [[RBBundleProperties alloc] initWithLSProvider:self->_lsProvider xpcProvider:self->_xpcProvider processIdentity:v6 processIdentifier:v7];
  }

  return v9;
}

- (void)addProcess:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(RBProcessIndex *)self->_processIndex addProcess:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeProcess:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(RBProcessIndex *)self->_processIndex removeProcess:v4];
  xpcProvider = self->_xpcProvider;
  v6 = [v4 identifier];

  [(RBBundlePropertiesBSXPCProvider *)xpcProvider removePropertiesForIdentifier:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)stateCaptureTitle
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end