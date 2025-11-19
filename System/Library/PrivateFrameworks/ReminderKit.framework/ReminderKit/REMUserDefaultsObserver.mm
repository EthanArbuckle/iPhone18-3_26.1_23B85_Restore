@interface REMUserDefaultsObserver
- (REMUserDefaultsObserver)initWithUserDefaults:(id)a3 key:(id)a4 block:(id)a5;
- (void)dealloc;
- (void)stopObserving;
@end

@implementation REMUserDefaultsObserver

- (REMUserDefaultsObserver)initWithUserDefaults:(id)a3 key:(id)a4 block:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = REMUserDefaultsObserver;
  v12 = [(REMUserDefaultsObserver *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_userDefaults, a3);
    objc_storeStrong(&v13->_userDefaultsKey, a4);
    v14 = MEMORY[0x19A8FD720](v11);
    block = v13->_block;
    v13->_block = v14;
  }

  return v13;
}

- (void)stopObserving
{
  if (![(REMUserDefaultsObserver *)self removed])
  {
    v3 = [(REMUserDefaultsObserver *)self userDefaults];
    [v3 _removeObserver:self];

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