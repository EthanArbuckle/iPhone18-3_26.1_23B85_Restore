@interface PBRepresentationToObjectCoercion
- (BOOL)canCoerceFromType:(id)type;
- (PBRepresentationToObjectCoercion)initWithClass:(Class)class;
- (id)createObjectFromRepresentationConformingToType:(id)type data:(id)data URL:(id)l outError:(id *)error;
- (void)addCoercionFromType:(id)type block:(id)block;
@end

@implementation PBRepresentationToObjectCoercion

- (PBRepresentationToObjectCoercion)initWithClass:(Class)class
{
  v11.receiver = self;
  v11.super_class = PBRepresentationToObjectCoercion;
  v4 = [(PBRepresentationToObjectCoercion *)&v11 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_theClass, class);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    blockByType = v5->_blockByType;
    v5->_blockByType = dictionary;

    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    typeOrder = v5->_typeOrder;
    v5->_typeOrder = orderedSet;
  }

  return v5;
}

- (void)addCoercionFromType:(id)type block:(id)block
{
  typeCopy = type;
  v6 = MEMORY[0x25F8AC430](block);
  [(NSMutableDictionary *)self->_blockByType setObject:v6 forKeyedSubscript:typeCopy];

  [(NSMutableOrderedSet *)self->_typeOrder addObject:typeCopy];
}

- (BOOL)canCoerceFromType:(id)type
{
  v16 = *MEMORY[0x277D85DE8];
  typeCopy = type;
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

        if (UTTypeConformsTo(typeCopy, *(*(&v11 + 1) + 8 * i)))
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

- (id)createObjectFromRepresentationConformingToType:(id)type data:(id)data URL:(id)l outError:(id *)error
{
  typeCopy = type;
  dataCopy = data;
  lCopy = l;
  array = [(NSMutableOrderedSet *)self->_typeOrder array];
  v14 = _bestMatchType(typeCopy, array, &__block_literal_global_15);

  if (!v14 || ([(NSMutableDictionary *)self->_blockByType objectForKeyedSubscript:v14], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v20 = PBCannotInstantiateObjectOfClassError(self->_theClass, typeCopy, 0);
    v16 = 0;
LABEL_9:
    v18 = 0;
    goto LABEL_10;
  }

  v16 = v15;
  theClass = self->_theClass;
  v26 = 0;
  v18 = (*(v15 + 16))(v15, theClass, v14, dataCopy, lCopy, &v26);
  v19 = v26;
  if (!(v18 | v19))
  {
    v20 = PBCannotInstantiateObjectOfClassError(self->_theClass, typeCopy, 0);
    goto LABEL_9;
  }

  v20 = v19;
  if (!v19)
  {
    goto LABEL_13;
  }

  domain = [v19 domain];
  v25 = [domain isEqualToString:@"PBErrorDomain"];

  if ((v25 & 1) == 0)
  {
    v22 = PBCannotInstantiateObjectOfClassError(self->_theClass, typeCopy, v20);

    v20 = v22;
  }

LABEL_10:
  if (error && v20)
  {
    v23 = v20;
    *error = v20;
  }

LABEL_13:

  return v18;
}

@end