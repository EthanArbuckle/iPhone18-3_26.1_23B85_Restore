@interface RMConfigurationQuerier
- (RMConfigurationQuerier)initWithPersistentContainer:(id)container;
- (id)_activeConfigurationsByTypeForTypes:(id)types managementSourceIdentifier:(id)identifier error:(id *)error;
- (id)activeConfigurationsForManagementSourceIdentifier:(id)identifier error:(id *)error;
- (id)configurationUIsByTypeForTypes:(id)types managementSourceIdentifier:(id)identifier error:(id *)error;
@end

@implementation RMConfigurationQuerier

- (RMConfigurationQuerier)initWithPersistentContainer:(id)container
{
  containerCopy = container;
  v9.receiver = self;
  v9.super_class = RMConfigurationQuerier;
  v6 = [(RMConfigurationQuerier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_persistentContainer, container);
  }

  return v7;
}

- (id)_activeConfigurationsByTypeForTypes:(id)types managementSourceIdentifier:(id)identifier error:(id *)error
{
  typesCopy = types;
  identifierCopy = identifier;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100022F9C;
  v30 = sub_100022FAC;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100022F9C;
  v24 = sub_100022FAC;
  v25 = 0;
  if ([typesCopy count])
  {
    persistentContainer = [(RMConfigurationQuerier *)self persistentContainer];
    newBackgroundContext = [persistentContainer newBackgroundContext];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100022FB4;
    v15[3] = &unk_1000D15B0;
    v16 = identifierCopy;
    v17 = typesCopy;
    v18 = &v20;
    v19 = &v26;
    [newBackgroundContext performBlockAndWait:v15];
    if (error)
    {
      v12 = v21[5];
      if (v12)
      {
        *error = v12;
      }
    }

    v13 = v27[5];
  }

  else
  {
    v13 = &__NSDictionary0__struct;
  }

  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);

  return v13;
}

- (id)activeConfigurationsForManagementSourceIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100022F9C;
  v27 = sub_100022FAC;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100022F9C;
  v21 = sub_100022FAC;
  v22 = 0;
  persistentContainer = [(RMConfigurationQuerier *)self persistentContainer];
  newBackgroundContext = [persistentContainer newBackgroundContext];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100023734;
  v13[3] = &unk_1000D18B8;
  v9 = identifierCopy;
  v14 = v9;
  v15 = &v17;
  v16 = &v23;
  [newBackgroundContext performBlockAndWait:v13];
  if (error)
  {
    v10 = v18[5];
    if (v10)
    {
      *error = v10;
    }
  }

  v11 = v24[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v11;
}

- (id)configurationUIsByTypeForTypes:(id)types managementSourceIdentifier:(id)identifier error:(id *)error
{
  typesCopy = types;
  identifierCopy = identifier;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100022F9C;
  v30 = sub_100022FAC;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100022F9C;
  v24 = sub_100022FAC;
  v25 = 0;
  if ([typesCopy count])
  {
    persistentContainer = [(RMConfigurationQuerier *)self persistentContainer];
    newBackgroundContext = [persistentContainer newBackgroundContext];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100023E64;
    v15[3] = &unk_1000D15B0;
    v16 = identifierCopy;
    v17 = typesCopy;
    v18 = &v20;
    v19 = &v26;
    [newBackgroundContext performBlockAndWait:v15];
    if (error)
    {
      v12 = v21[5];
      if (v12)
      {
        *error = v12;
      }
    }

    v13 = v27[5];
  }

  else
  {
    v13 = &__NSDictionary0__struct;
  }

  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);

  return v13;
}

@end