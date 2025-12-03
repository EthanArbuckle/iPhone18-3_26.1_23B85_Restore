@interface PKHostDefaults
- (PKHostDefaults)initWithPlugIn:(id)in;
- (PKHostPlugIn)plugin;
- (id)objectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation PKHostDefaults

- (PKHostDefaults)initWithPlugIn:(id)in
{
  inCopy = in;
  v8.receiver = self;
  v8.super_class = PKHostDefaults;
  v5 = [(PKHostDefaults *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PKHostDefaults *)v5 setPlugin:inCopy];
  }

  return v6;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1C68936C4;
  v16 = sub_1C6894564;
  v17 = 0;
  plugin = [(PKHostDefaults *)self plugin];
  syncService = [plugin syncService];
  plugin2 = [(PKHostDefaults *)self plugin];
  identifier = [plugin2 identifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1C68ACA5C;
  v11[3] = &unk_1E827F9C8;
  v11[4] = &v12;
  [syncService prefsObjectForKey:keyCopy inPlugIn:identifier result:v11];

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (void)setObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  plugin = [(PKHostDefaults *)self plugin];
  syncService = [plugin syncService];
  plugin2 = [(PKHostDefaults *)self plugin];
  identifier = [plugin2 identifier];
  [syncService prefsSetObject:objectCopy forKey:keyCopy inPlugIn:identifier result:&unk_1F4639308];
}

- (PKHostPlugIn)plugin
{
  WeakRetained = objc_loadWeakRetained(&self->_plugin);

  return WeakRetained;
}

@end