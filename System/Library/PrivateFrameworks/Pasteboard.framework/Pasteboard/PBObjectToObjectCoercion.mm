@interface PBObjectToObjectCoercion
- (BOOL)canCoerceToObjectOfClass:(Class)class;
- (PBObjectToObjectCoercion)initWithClass:(Class)class;
- (id)coerceObject:(id)object toObjectOfClass:(Class)class outError:(id *)error;
- (void)addCoercionToClass:(Class)class block:(id)block;
@end

@implementation PBObjectToObjectCoercion

- (PBObjectToObjectCoercion)initWithClass:(Class)class
{
  v11.receiver = self;
  v11.super_class = PBObjectToObjectCoercion;
  v4 = [(PBObjectToObjectCoercion *)&v11 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_theClass, class);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    blockByClass = v5->_blockByClass;
    v5->_blockByClass = dictionary;

    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    orderedClassNames = v5->_orderedClassNames;
    v5->_orderedClassNames = orderedSet;
  }

  return v5;
}

- (void)addCoercionToClass:(Class)class block:(id)block
{
  blockCopy = block;
  v8 = NSStringFromClass(class);
  v7 = MEMORY[0x25F8AC430](blockCopy);

  [(NSMutableDictionary *)self->_blockByClass setObject:v7 forKeyedSubscript:v8];
  [(NSMutableOrderedSet *)self->_orderedClassNames addObject:v8];
}

- (BOOL)canCoerceToObjectOfClass:(Class)class
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_orderedClassNames;
  v5 = [(NSMutableOrderedSet *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = NSClassFromString(*(*(&v13 + 1) + 8 * i));
        if (([(objc_class *)v9 isSubclassOfClass:class, v13]& 1) != 0)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableOrderedSet *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)coerceObject:(id)object toObjectOfClass:(Class)class outError:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = self->_orderedClassNames;
  v10 = [(NSMutableOrderedSet *)v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        v15 = NSClassFromString(v14);
        if ([(objc_class *)v15 isSubclassOfClass:class])
        {
          v16 = [(NSMutableDictionary *)self->_blockByClass objectForKeyedSubscript:v14];
          if (v16)
          {
            v19 = v16;
            v29 = 0;
            v18 = (*(v16 + 16))(v16, v15, objectCopy, &v29);
            v20 = v29;
            v21 = v20;
            if (error)
            {
              if (v20)
              {
                domain = [v20 domain];
                v23 = [domain isEqualToString:@"PBErrorDomain"];

                if ((v23 & 1) == 0)
                {
                  v24 = objc_opt_class();
                  v25 = PBCannotCoerceObjectOfClassToObjectOfClassError(v24, class, v21);

                  v21 = v25;
                }
              }

              v26 = v21;
              *error = v21;
            }

            goto LABEL_19;
          }
        }
      }

      v11 = [(NSMutableOrderedSet *)v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  if (error)
  {
    v17 = objc_opt_class();
    PBCannotCoerceObjectOfClassToObjectOfClassError(v17, class, 0);
    *error = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

LABEL_19:

  v27 = *MEMORY[0x277D85DE8];

  return v18;
}

@end