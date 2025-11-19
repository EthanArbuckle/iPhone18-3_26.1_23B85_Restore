@interface RMJSONSerialization
+ (NSDateFormatter)dateFormatter;
+ (id)serializeValue:(id)a3;
@end

@implementation RMJSONSerialization

+ (NSDateFormatter)dateFormatter
{
  if (qword_1000E68F0 != -1)
  {
    sub_100049438();
  }

  v3 = qword_1000E68E8;

  return v3;
}

+ (id)serializeValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = v4;
LABEL_4:
    v6 = v5;
    goto LABEL_5;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (!v4 || (isKindOfClass & 1) != 0)
  {
    v5 = +[NSNull null];
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [a1 dateFormatter];
    v6 = [v9 stringFromDate:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 UUIDString];
      goto LABEL_4;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 absoluteString];
      goto LABEL_4;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 base64EncodedStringWithOptions:0];
      goto LABEL_4;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = 0;
      v31 = &v30;
      v32 = 0x3032000000;
      v33 = sub_100049348;
      v34 = sub_100049358;
      v35 = objc_opt_new();
      v10 = v4;
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100049360;
      v29[3] = &unk_1000D2238;
      v29[4] = &v30;
      v29[5] = a1;
      [v10 enumerateKeysAndObjectsUsingBlock:v29];
      v6 = v31[5];

      _Block_object_dispose(&v30, 8);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = objc_opt_new();
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v11 = v4;
        v12 = [v11 countByEnumeratingWithState:&v25 objects:v37 count:16];
        if (v12)
        {
          v13 = *v26;
          while (2)
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v26 != v13)
              {
                objc_enumerationMutation(v11);
              }

              v15 = [a1 serializeValue:*(*(&v25 + 1) + 8 * i)];
              if (!v15)
              {

                v6 = 0;
                goto LABEL_42;
              }

              [v6 addObject:v15];
            }

            v12 = [v11 countByEnumeratingWithState:&v25 objects:v37 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

LABEL_42:
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = objc_opt_new();
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v16 = v4;
          v17 = [v16 countByEnumeratingWithState:&v21 objects:v36 count:16];
          if (v17)
          {
            v18 = *v22;
            while (2)
            {
              for (j = 0; j != v17; j = j + 1)
              {
                if (*v22 != v18)
                {
                  objc_enumerationMutation(v16);
                }

                v20 = [a1 serializeValue:{*(*(&v21 + 1) + 8 * j), v21}];
                if (!v20)
                {

                  v6 = 0;
                  goto LABEL_45;
                }

                [v6 addObject:v20];
              }

              v17 = [v16 countByEnumeratingWithState:&v21 objects:v36 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

LABEL_45:
        }

        else
        {
          v6 = 0;
        }
      }
    }
  }

LABEL_5:

  return v6;
}

@end