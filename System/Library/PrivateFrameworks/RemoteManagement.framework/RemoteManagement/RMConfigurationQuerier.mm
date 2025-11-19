@interface RMConfigurationQuerier
- (RMConfigurationQuerier)initWithPersistentContainer:(id)a3;
- (id)_activeConfigurationsByTypeForTypes:(id)a3 managementSourceIdentifier:(id)a4 error:(id *)a5;
- (id)activeConfigurationsForManagementSourceIdentifier:(id)a3 error:(id *)a4;
- (id)configurationUIsByTypeForTypes:(id)a3 managementSourceIdentifier:(id)a4 error:(id *)a5;
@end

@implementation RMConfigurationQuerier

- (RMConfigurationQuerier)initWithPersistentContainer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RMConfigurationQuerier;
  v6 = [(RMConfigurationQuerier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_persistentContainer, a3);
  }

  return v7;
}

- (id)_activeConfigurationsByTypeForTypes:(id)a3 managementSourceIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
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
  if ([v8 count])
  {
    v10 = [(RMConfigurationQuerier *)self persistentContainer];
    v11 = [v10 newBackgroundContext];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100022FB4;
    v15[3] = &unk_1000D15B0;
    v16 = v9;
    v17 = v8;
    v18 = &v20;
    v19 = &v26;
    [v11 performBlockAndWait:v15];
    if (a5)
    {
      v12 = v21[5];
      if (v12)
      {
        *a5 = v12;
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

- (id)activeConfigurationsForManagementSourceIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
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
  v7 = [(RMConfigurationQuerier *)self persistentContainer];
  v8 = [v7 newBackgroundContext];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100023734;
  v13[3] = &unk_1000D18B8;
  v9 = v6;
  v14 = v9;
  v15 = &v17;
  v16 = &v23;
  [v8 performBlockAndWait:v13];
  if (a4)
  {
    v10 = v18[5];
    if (v10)
    {
      *a4 = v10;
    }
  }

  v11 = v24[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v11;
}

- (id)configurationUIsByTypeForTypes:(id)a3 managementSourceIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
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
  if ([v8 count])
  {
    v10 = [(RMConfigurationQuerier *)self persistentContainer];
    v11 = [v10 newBackgroundContext];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100023E64;
    v15[3] = &unk_1000D15B0;
    v16 = v9;
    v17 = v8;
    v18 = &v20;
    v19 = &v26;
    [v11 performBlockAndWait:v15];
    if (a5)
    {
      v12 = v21[5];
      if (v12)
      {
        *a5 = v12;
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