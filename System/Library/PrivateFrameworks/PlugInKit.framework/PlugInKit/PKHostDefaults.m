@interface PKHostDefaults
- (PKHostDefaults)initWithPlugIn:(id)a3;
- (PKHostPlugIn)plugin;
- (id)objectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation PKHostDefaults

- (PKHostDefaults)initWithPlugIn:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKHostDefaults;
  v5 = [(PKHostDefaults *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PKHostDefaults *)v5 setPlugin:v4];
  }

  return v6;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1C68936C4;
  v16 = sub_1C6894564;
  v17 = 0;
  v5 = [(PKHostDefaults *)self plugin];
  v6 = [v5 syncService];
  v7 = [(PKHostDefaults *)self plugin];
  v8 = [v7 identifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1C68ACA5C;
  v11[3] = &unk_1E827F9C8;
  v11[4] = &v12;
  [v6 prefsObjectForKey:v4 inPlugIn:v8 result:v11];

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = [(PKHostDefaults *)self plugin];
  v8 = [v11 syncService];
  v9 = [(PKHostDefaults *)self plugin];
  v10 = [v9 identifier];
  [v8 prefsSetObject:v7 forKey:v6 inPlugIn:v10 result:&unk_1F4639308];
}

- (PKHostPlugIn)plugin
{
  WeakRetained = objc_loadWeakRetained(&self->_plugin);

  return WeakRetained;
}

@end