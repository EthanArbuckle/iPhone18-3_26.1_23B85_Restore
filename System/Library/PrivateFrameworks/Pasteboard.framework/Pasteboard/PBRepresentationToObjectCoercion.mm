@interface PBRepresentationToObjectCoercion
- (BOOL)canCoerceFromType:(id)a3;
- (PBRepresentationToObjectCoercion)initWithClass:(Class)a3;
- (id)createObjectFromRepresentationConformingToType:(id)a3 data:(id)a4 URL:(id)a5 outError:(id *)a6;
- (void)addCoercionFromType:(id)a3 block:(id)a4;
@end

@implementation PBRepresentationToObjectCoercion

- (PBRepresentationToObjectCoercion)initWithClass:(Class)a3
{
  v11.receiver = self;
  v11.super_class = PBRepresentationToObjectCoercion;
  v4 = [(PBRepresentationToObjectCoercion *)&v11 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_theClass, a3);
    v6 = [MEMORY[0x277CBEB38] dictionary];
    blockByType = v5->_blockByType;
    v5->_blockByType = v6;

    v8 = [MEMORY[0x277CBEB40] orderedSet];
    typeOrder = v5->_typeOrder;
    v5->_typeOrder = v8;
  }

  return v5;
}

- (void)addCoercionFromType:(id)a3 block:(id)a4
{
  v7 = a3;
  v6 = MEMORY[0x25F8AC430](a4);
  [(NSMutableDictionary *)self->_blockByType setObject:v6 forKeyedSubscript:v7];

  [(NSMutableOrderedSet *)self->_typeOrder addObject:v7];
}

- (BOOL)canCoerceFromType:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_typeOrder;
  v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if (UTTypeConformsTo(v4, *(*(&v11 + 1) + 8 * i)))
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)createObjectFromRepresentationConformingToType:(id)a3 data:(id)a4 URL:(id)a5 outError:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(NSMutableOrderedSet *)self->_typeOrder array];
  v14 = _bestMatchType(v10, v13, &__block_literal_global_15);

  if (!v14 || ([(NSMutableDictionary *)self->_blockByType objectForKeyedSubscript:v14], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v20 = PBCannotInstantiateObjectOfClassError(self->_theClass, v10, 0);
    v16 = 0;
LABEL_9:
    v18 = 0;
    goto LABEL_10;
  }

  v16 = v15;
  theClass = self->_theClass;
  v26 = 0;
  v18 = (*(v15 + 16))(v15, theClass, v14, v11, v12, &v26);
  v19 = v26;
  if (!(v18 | v19))
  {
    v20 = PBCannotInstantiateObjectOfClassError(self->_theClass, v10, 0);
    goto LABEL_9;
  }

  v20 = v19;
  if (!v19)
  {
    goto LABEL_13;
  }

  v21 = [v19 domain];
  v25 = [v21 isEqualToString:@"PBErrorDomain"];

  if ((v25 & 1) == 0)
  {
    v22 = PBCannotInstantiateObjectOfClassError(self->_theClass, v10, v20);

    v20 = v22;
  }

LABEL_10:
  if (a6 && v20)
  {
    v23 = v20;
    *a6 = v20;
  }

LABEL_13:

  return v18;
}

@end