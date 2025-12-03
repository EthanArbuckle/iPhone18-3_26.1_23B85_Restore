@interface REMUserDefaultsObserver
- (REMUserDefaultsObserver)initWithUserDefaults:(id)defaults key:(id)key block:(id)block;
- (void)dealloc;
- (void)stopObserving;
@end

@implementation REMUserDefaultsObserver

- (REMUserDefaultsObserver)initWithUserDefaults:(id)defaults key:(id)key block:(id)block
{
  defaultsCopy = defaults;
  keyCopy = key;
  blockCopy = block;
  v17.receiver = self;
  v17.super_class = REMUserDefaultsObserver;
  v12 = [(REMUserDefaultsObserver *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_userDefaults, defaults);
    objc_storeStrong(&v13->_userDefaultsKey, key);
    v14 = MEMORY[0x19A8FD720](blockCopy);
    block = v13->_block;
    v13->_block = v14;
  }

  return v13;
}

- (void)stopObserving
{
  if (![(REMUserDefaultsObserver *)self removed])
  {
    userDefaults = [(REMUserDefaultsObserver *)self userDefaults];
    [userDefaults _removeObserver:self];

    [(REMUserDefaultsObserver *)self setRemoved:1];
  }
}

- (void)dealloc
{
  [(REMUserDefaultsObserver *)self stopObserving];
  v3.receiver = self;
  v3.super_class = REMUserDefaultsObserver;
  [(REMUserDefaultsObserver *)&v3 dealloc];
}

@end