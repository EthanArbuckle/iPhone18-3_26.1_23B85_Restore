@interface PQLConnection
- (BOOL)executeStatements:(id)statements error:(id *)error;
- (BOOL)executeWithError:(id *)error sql:(id)sql;
- (BOOL)fetchObjectOfClass:(Class)class outObject:(id *)object error:(id *)error sql:(id)sql;
- (BOOL)groupInTransaction:(id *)transaction transaction:(id)a4;
- (BOOL)performSchemaUpgrades:(id)upgrades isReadOnly:(BOOL)only error:(id *)error;
- (id)fetchObjectOfClass:(Class)class error:(id *)error sql:(id)sql;
- (unint64_t)fetchCountWithError:(id *)error sql:(id)sql;
@end

@implementation PQLConnection

- (BOOL)executeWithError:(id *)error sql:(id)sql
{
  v6 = [(PQLConnection *)self execute:sql args:&v9];
  v7 = v6;
  if (error && (v6 & 1) == 0)
  {
    *error = [(PQLConnection *)self lastError];
  }

  return v7;
}

- (BOOL)executeStatements:(id)statements error:(id *)error
{
  statementsCopy = statements;
  if (!error)
  {
    sub_10009FD8C();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = statementsCopy;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
LABEL_4:
    v11 = 0;
    while (1)
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v18 + 1) + 8 * v11);
      v13 = objc_autoreleasePoolPush();
      if (![(PQLConnection *)self executeRaw:v12, v18])
      {
        break;
      }

      objc_autoreleasePoolPop(v13);
      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }

    lastError = [(PQLConnection *)self lastError];
    objc_autoreleasePoolPop(v13);

    if (lastError)
    {
      v16 = lastError;
      v14 = 0;
      *error = lastError;
      goto LABEL_13;
    }

    v14 = 1;
  }

  else
  {
LABEL_10:
    v14 = 1;
    lastError = v7;
LABEL_13:
  }

  return v14;
}

- (id)fetchObjectOfClass:(Class)class error:(id *)error sql:(id)sql
{
  v7 = [(PQLConnection *)self fetchObjectOfClass:class sql:sql args:&v12];
  v8 = v7;
  if (error && !v7)
  {
    lastError = [(PQLConnection *)self lastError];
    *error = [lastError excludingNotFound];
  }

  return v8;
}

- (BOOL)fetchObjectOfClass:(Class)class outObject:(id *)object error:(id *)error sql:(id)sql
{
  v9 = [(PQLConnection *)self fetchObjectOfClass:class sql:sql args:&v14];
  lastError = [(PQLConnection *)self lastError];
  excludingNotFound = [lastError excludingNotFound];

  if (!excludingNotFound)
  {
    v12 = v9;
    error = object;
    if (!object)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = excludingNotFound;
  if (error)
  {
LABEL_3:
    *error = v12;
  }

LABEL_4:

  return excludingNotFound == 0;
}

- (unint64_t)fetchCountWithError:(id *)error sql:(id)sql
{
  sqlCopy = sql;
  v6 = [(PQLConnection *)self fetchObjectOfClass:objc_opt_class() sql:sqlCopy args:&v9];

  if (v6)
  {
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return unsignedIntegerValue;
}

- (BOOL)performSchemaUpgrades:(id)upgrades isReadOnly:(BOOL)only error:(id *)error
{
  onlyCopy = only;
  upgradesCopy = upgrades;
  if (!upgradesCopy)
  {
    sub_10009FE48();
  }

  if (!error)
  {
    sub_10009FE1C();
  }

  v10 = upgradesCopy;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = [upgradesCopy countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    version = 0;
    v14 = *v32;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v31 + 1) + 8 * i);
        if ([v16 version] <= version)
        {
          sub_10009FDB8(a2, self);
        }

        version = [v16 version];
      }

      v12 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v12);
  }

  else
  {
    version = 0;
  }

  userVersion = [(PQLConnection *)self userVersion];
  unsignedIntValue = [userVersion unsignedIntValue];

  if (unsignedIntValue >= version)
  {
LABEL_26:
    v19 = 1;
    goto LABEL_28;
  }

  if (!onlyCopy)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v20 = v10;
    v21 = [v20 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v28;
      while (2)
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v28 != v23)
          {
            objc_enumerationMutation(v20);
          }

          if (![(PQLConnection *)self _performSchemaUpgrade:*(*(&v27 + 1) + 8 * j) fromDatabaseVersion:unsignedIntValue error:error, v27])
          {
            [(PQLConnection *)self close:0];

            v19 = 0;
            goto LABEL_28;
          }

          userVersion2 = [(PQLConnection *)self userVersion];
          unsignedIntValue = [userVersion2 unsignedIntValue];
        }

        v22 = [v20 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_26;
  }

  [(PQLConnection *)self close:0];
  [MBError errorWithCode:1 format:@"Can't migrate RO database"];
  *error = v19 = 0;
LABEL_28:

  return v19;
}

- (BOOL)groupInTransaction:(id *)transaction transaction:(id)a4
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000795DC;
  v16 = sub_1000795EC;
  v17 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000798A0;
  v9[3] = &unk_1000FE530;
  v6 = a4;
  v10 = v6;
  v11 = &v12;
  v7 = [(PQLConnection *)self groupInTransaction:v9];
  if (transaction)
  {
    *transaction = v13[5];
  }

  _Block_object_dispose(&v12, 8);
  return v7;
}

@end