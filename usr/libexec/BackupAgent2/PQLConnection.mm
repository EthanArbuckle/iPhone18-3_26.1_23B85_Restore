@interface PQLConnection
- (BOOL)executeStatements:(id)a3 error:(id *)a4;
- (BOOL)executeWithError:(id *)a3 sql:(id)a4;
- (BOOL)fetchObjectOfClass:(Class)a3 outObject:(id *)a4 error:(id *)a5 sql:(id)a6;
- (BOOL)groupInTransaction:(id *)a3 transaction:(id)a4;
- (BOOL)performSchemaUpgrades:(id)a3 isReadOnly:(BOOL)a4 error:(id *)a5;
- (id)fetchObjectOfClass:(Class)a3 error:(id *)a4 sql:(id)a5;
- (unint64_t)fetchCountWithError:(id *)a3 sql:(id)a4;
@end

@implementation PQLConnection

- (BOOL)executeWithError:(id *)a3 sql:(id)a4
{
  v6 = [(PQLConnection *)self execute:a4 args:&v9];
  v7 = v6;
  if (a3 && (v6 & 1) == 0)
  {
    *a3 = [(PQLConnection *)self lastError];
  }

  return v7;
}

- (BOOL)executeStatements:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!a4)
  {
    sub_10009FD8C();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v6;
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

    v15 = [(PQLConnection *)self lastError];
    objc_autoreleasePoolPop(v13);

    if (v15)
    {
      v16 = v15;
      v14 = 0;
      *a4 = v15;
      goto LABEL_13;
    }

    v14 = 1;
  }

  else
  {
LABEL_10:
    v14 = 1;
    v15 = v7;
LABEL_13:
  }

  return v14;
}

- (id)fetchObjectOfClass:(Class)a3 error:(id *)a4 sql:(id)a5
{
  v7 = [(PQLConnection *)self fetchObjectOfClass:a3 sql:a5 args:&v12];
  v8 = v7;
  if (a4 && !v7)
  {
    v9 = [(PQLConnection *)self lastError];
    *a4 = [v9 excludingNotFound];
  }

  return v8;
}

- (BOOL)fetchObjectOfClass:(Class)a3 outObject:(id *)a4 error:(id *)a5 sql:(id)a6
{
  v9 = [(PQLConnection *)self fetchObjectOfClass:a3 sql:a6 args:&v14];
  v10 = [(PQLConnection *)self lastError];
  v11 = [v10 excludingNotFound];

  if (!v11)
  {
    v12 = v9;
    a5 = a4;
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = v11;
  if (a5)
  {
LABEL_3:
    *a5 = v12;
  }

LABEL_4:

  return v11 == 0;
}

- (unint64_t)fetchCountWithError:(id *)a3 sql:(id)a4
{
  v5 = a4;
  v6 = [(PQLConnection *)self fetchObjectOfClass:objc_opt_class() sql:v5 args:&v9];

  if (v6)
  {
    v7 = [v6 unsignedIntegerValue];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (BOOL)performSchemaUpgrades:(id)a3 isReadOnly:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v9 = a3;
  if (!v9)
  {
    sub_10009FE48();
  }

  if (!a5)
  {
    sub_10009FE1C();
  }

  v10 = v9;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = [v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
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
        if ([v16 version] <= v13)
        {
          sub_10009FDB8(a2, self);
        }

        v13 = [v16 version];
      }

      v12 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  v17 = [(PQLConnection *)self userVersion];
  v18 = [v17 unsignedIntValue];

  if (v18 >= v13)
  {
LABEL_26:
    v19 = 1;
    goto LABEL_28;
  }

  if (!v6)
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

          if (![(PQLConnection *)self _performSchemaUpgrade:*(*(&v27 + 1) + 8 * j) fromDatabaseVersion:v18 error:a5, v27])
          {
            [(PQLConnection *)self close:0];

            v19 = 0;
            goto LABEL_28;
          }

          v25 = [(PQLConnection *)self userVersion];
          v18 = [v25 unsignedIntValue];
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
  *a5 = v19 = 0;
LABEL_28:

  return v19;
}

- (BOOL)groupInTransaction:(id *)a3 transaction:(id)a4
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
  if (a3)
  {
    *a3 = v13[5];
  }

  _Block_object_dispose(&v12, 8);
  return v7;
}

@end