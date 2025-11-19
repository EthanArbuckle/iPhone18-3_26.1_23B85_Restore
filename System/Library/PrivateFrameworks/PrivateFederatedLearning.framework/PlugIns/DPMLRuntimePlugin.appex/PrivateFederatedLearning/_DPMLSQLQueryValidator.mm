@interface _DPMLSQLQueryValidator
+ (id)isValidSQLQuery:(id)a3 forNamespaceID:(id)a4 possibleError:(id *)a5;
+ (id)parseQueryPermissionList:(id)a3 error:(id *)a4;
+ (id)sharedInstanceWithError:(id *)a3;
- (_DPMLSQLQueryValidator)initWithAllowList:(id)a3 blockList:(id)a4;
@end

@implementation _DPMLSQLQueryValidator

- (_DPMLSQLQueryValidator)initWithAllowList:(id)a3 blockList:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _DPMLSQLQueryValidator;
  v9 = [(_DPMLSQLQueryValidator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_allowList, a3);
    objc_storeStrong(&v10->_blockList, a4);
  }

  return v10;
}

+ (id)parseQueryPermissionList:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [NSDictionary dictionaryWithContentsOfURL:v5];
  v7 = v6;
  if (!v6)
  {
    if (a4)
    {
      v28 = [_DPMLRuntimeError errorWithCode:300 description:@"Cannot load allow-list from class bundle file"];
      v29 = *a4;
      *a4 = v28;
    }

    v13 = 0;
    v14 = 0;
    v30 = 0;
    goto LABEL_36;
  }

  v8 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v6 count]);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v9 = [v7 allKeys];
  v10 = [v9 countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (!v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_24;
  }

  v38 = a4;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = *v51;
  v44 = v9;
  v36 = *v51;
LABEL_4:
  v16 = 0;
  v17 = v12;
  v37 = v10;
LABEL_5:
  if (*v51 != v15)
  {
    v18 = v16;
    objc_enumerationMutation(v9);
    v16 = v18;
  }

  v40 = v16;
  v19 = *(*(&v50 + 1) + 8 * v16);
  v20 = [v7 objectForKey:{v19, v36}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39 = v19;
    v12 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v20 count]);

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v11 = v20;
    v21 = [v11 countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (!v21)
    {
      goto LABEL_17;
    }

    v22 = v21;
    v23 = *v47;
    v42 = v7;
    v43 = v5;
    v41 = v8;
LABEL_10:
    v24 = 0;
    v25 = v13;
    v26 = v14;
    while (1)
    {
      if (*v47 != v23)
      {
        objc_enumerationMutation(v11);
      }

      v27 = *(*(&v46 + 1) + 8 * v24);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v45 = v26;
      v13 = [NSRegularExpression regularExpressionWithPattern:v27 options:16 error:&v45];
      v14 = v45;

      if (!v13)
      {
        v31 = v38;
        if (v38)
        {
          v32 = [_DPMLRuntimeError errorWithCode:300 underlyingError:v14 description:@"Permission list has a malformed regex value"];
          v25 = 0;
          goto LABEL_29;
        }

        v13 = 0;
        goto LABEL_32;
      }

      [v12 addObject:v13];
      v24 = v24 + 1;
      v25 = v13;
      v26 = v14;
      if (v22 == v24)
      {
        v22 = [v11 countByEnumeratingWithState:&v46 objects:v54 count:16];
        v7 = v42;
        v5 = v43;
        v8 = v41;
        if (v22)
        {
          goto LABEL_10;
        }

LABEL_17:

        [v8 setObject:v12 forKey:v39];
        v16 = v40 + 1;
        v17 = v12;
        v15 = v36;
        v9 = v44;
        if ((v40 + 1) == v37)
        {
          v10 = [v44 countByEnumeratingWithState:&v50 objects:v55 count:16];
          if (!v10)
          {
LABEL_24:

            v30 = v8;
            v17 = v12;
            v20 = v11;
            goto LABEL_35;
          }

          goto LABEL_4;
        }

        goto LABEL_5;
      }
    }

    v31 = v38;
    if (v38)
    {
      v32 = [_DPMLRuntimeError errorWithCode:300 description:@"Permission list value has a non-string item"];
      v14 = v26;
LABEL_29:
      v7 = v42;
      v9 = v44;
      v33 = *v31;
      *v31 = v32;

      v13 = v25;
      v5 = v43;
      v8 = v41;
      goto LABEL_33;
    }

    v13 = v25;
    v14 = v26;
LABEL_32:
    v7 = v42;
    v5 = v43;
    v8 = v41;
    v9 = v44;
    goto LABEL_33;
  }

  if (v38)
  {
    v35 = [_DPMLRuntimeError errorWithCode:300 description:@"Permission list has a non-list value"];
    v11 = *v38;
    *v38 = v35;
    v12 = v17;
LABEL_33:

    v17 = v12;
  }

  v30 = 0;
LABEL_35:

LABEL_36:

  return v30;
}

+ (id)sharedInstanceWithError:(id *)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000187A0;
  block[3] = &unk_10002C6E8;
  block[4] = a1;
  if (qword_1000395C0 == -1)
  {
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  dispatch_once(&qword_1000395C0, block);
  if (a3)
  {
LABEL_3:
    objc_storeStrong(a3, qword_1000395B8);
  }

LABEL_4:
  v4 = qword_1000395B0;

  return v4;
}

+ (id)isValidSQLQuery:(id)a3 forNamespaceID:(id)a4 possibleError:(id *)a5
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v7 length])
  {
    if (!a5)
    {
LABEL_29:
      v25 = 0;
      goto LABEL_30;
    }

    v26 = @"SQL query needs to be a non-empty string";
LABEL_28:
    v27 = [_DPMLRuntimeError errorWithCode:300 description:v26];
    v28 = *a5;
    *a5 = v27;

    goto LABEL_29;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!a5)
    {
      goto LABEL_29;
    }

    v26 = @"Namespace Identifier needs to be a string";
    goto LABEL_28;
  }

  v39 = 0;
  v9 = [_DPMLSQLQueryValidator sharedInstanceWithError:&v39];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 blockList];
    v12 = [v11 objectForKey:v8];

    if (v12)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v35 objects:v41 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v36;
        while (2)
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v36 != v16)
            {
              objc_enumerationMutation(v13);
            }

            if ([*(*(&v35 + 1) + 8 * i) numberOfMatchesInString:v7 options:4 range:{0, objc_msgSend(v7, "length")}])
            {
              v25 = [NSNumber numberWithBool:0];

              v12 = v13;
              goto LABEL_40;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v35 objects:v41 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }
    }

    v18 = [v10 allowList];
    v19 = [v18 objectForKey:v8];

    if (v19)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v20 = v19;
      v21 = [v20 countByEnumeratingWithState:&v31 objects:v40 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v32;
        while (2)
        {
          for (j = 0; j != v22; j = j + 1)
          {
            if (*v32 != v23)
            {
              objc_enumerationMutation(v20);
            }

            if ([*(*(&v31 + 1) + 8 * j) numberOfMatchesInString:v7 options:4 range:{0, objc_msgSend(v7, "length", v31)}])
            {
              v25 = [NSNumber numberWithBool:1];

              goto LABEL_39;
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v31 objects:v40 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }
    }

    v25 = [NSNumber numberWithBool:0, v31];
LABEL_39:
  }

  else
  {
    if (!a5)
    {
      v25 = 0;
      goto LABEL_41;
    }

    v30 = [_DPMLRuntimeError errorWithCode:300 underlyingError:v39 description:@"Cannot create SQL query validator"];
    v25 = 0;
    v12 = *a5;
    *a5 = v30;
  }

LABEL_40:

LABEL_41:
LABEL_30:

  return v25;
}

@end