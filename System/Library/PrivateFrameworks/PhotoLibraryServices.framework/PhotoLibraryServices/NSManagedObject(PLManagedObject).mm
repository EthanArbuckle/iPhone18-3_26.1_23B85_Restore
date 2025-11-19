@interface NSManagedObject(PLManagedObject)
- (id)pl_shortDescription;
- (id)pointerDescription;
- (id)truncatedDescriptionWithPropertyKeys:()PLManagedObject;
@end

@implementation NSManagedObject(PLManagedObject)

- (id)truncatedDescriptionWithPropertyKeys:()PLManagedObject
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [[PLDescriptionBuilder alloc] initWithObject:a1 style:3 indent:0];
  v6 = [a1 entity];
  v7 = [v6 propertiesByName];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v4;
  v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    v24 = a1;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v13 = [v7 objectForKey:v12];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_36;
          }

          v18 = [v13 isToMany];
          v19 = [a1 valueForKey:v12];
          v14 = v19;
          if (v18)
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu objects", objc_msgSend(v19, "count")];
          }

          else
          {
            [v19 pl_shortDescription];
          }
          v15 = ;
LABEL_25:
          [(PLDescriptionBuilder *)v5 appendName:v12 object:v15];
          goto LABEL_35;
        }

        v14 = v13;
        v15 = [a1 valueForKey:v12];
        v16 = [v14 attributeType];
        if (v16 > 699)
        {
          if (v16 > 899)
          {
            if (v16 != 900 && v16 != 1000)
            {
              if (v16 != 1800)
              {
                goto LABEL_34;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
              {
                v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu objects", objc_msgSend(v15, "count")];

                v15 = v20;
                a1 = v24;
              }
            }

            goto LABEL_25;
          }

          if (v16 == 700)
          {
            goto LABEL_25;
          }

          if (v16 != 800)
          {
            goto LABEL_34;
          }

          -[PLDescriptionBuilder appendName:BOOLValue:](v5, "appendName:BOOLValue:", v12, [v15 BOOLValue]);
        }

        else
        {
          if (v16 <= 299)
          {
            if (v16 != 100 && v16 != 200)
            {
LABEL_34:
              v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unsupported attribute type %ld", objc_msgSend(v14, "attributeType")];
              [(PLDescriptionBuilder *)v5 appendName:v12 object:v21];

              a1 = v24;
              goto LABEL_35;
            }

LABEL_28:
            -[PLDescriptionBuilder appendName:integerValue:](v5, "appendName:integerValue:", v12, [v15 integerValue]);
            goto LABEL_35;
          }

          switch(v16)
          {
            case 300:
              goto LABEL_28;
            case 500:
              [v15 doubleValue];
              *&v17 = v17;
              break;
            case 600:
              [v15 floatValue];
              break;
            default:
              goto LABEL_34;
          }

          [(PLDescriptionBuilder *)v5 appendName:v12 floatValue:v17];
        }

LABEL_35:

LABEL_36:
      }

      v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  v22 = [(PLDescriptionBuilder *)v5 build];

  return v22;
}

- (id)pointerDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"<%@: %p>", v4, a1];

  return v5;
}

- (id)pl_shortDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [a1 objectID];
  v4 = [v3 pl_shortURI];
  v5 = [v2 stringWithFormat:@"<%p> %@", a1, v4];

  return v5;
}

@end