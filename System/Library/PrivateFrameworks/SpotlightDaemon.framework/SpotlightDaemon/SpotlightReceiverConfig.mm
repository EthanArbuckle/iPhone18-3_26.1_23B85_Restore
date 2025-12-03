@interface SpotlightReceiverConfig
- (BOOL)wantsBundleID:(id)d;
- (BOOL)wantsContentType:(id)type;
- (BOOL)wantsDomainID:(id)d;
- (BOOL)wantsINIntentClassNames:(id)names;
- (id)initForClient:(int64_t)client;
@end

@implementation SpotlightReceiverConfig

- (id)initForClient:(int64_t)client
{
  v5.receiver = self;
  v5.super_class = SpotlightReceiverConfig;
  result = [(SpotlightReceiverConfig *)&v5 init];
  if (result)
  {
    *(result + 4) = client;
  }

  return result;
}

- (BOOL)wantsBundleID:(id)d
{
  dCopy = d;
  if (!-[NSArray count](self->_bundleIDs, "count") || [dCopy length] && -[NSArray containsObject:](self->_bundleIDs, "containsObject:", dCopy))
  {
    if (-[NSArray count](self->_disableBundleIDs, "count") && [dCopy length])
    {
      v5 = ![(NSArray *)self->_disableBundleIDs containsObject:dCopy];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)wantsDomainID:(id)d
{
  dCopy = d;
  if (!-[NSArray count](self->_domainIDs, "count") || [dCopy length] && -[NSArray containsObject:](self->_domainIDs, "containsObject:", dCopy))
  {
    if (-[NSArray count](self->_disableDomainIDs, "count") && [dCopy length])
    {
      v5 = ![(NSArray *)self->_disableDomainIDs containsObject:dCopy];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)wantsContentType:(id)type
{
  v35 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  if ([(NSArray *)self->_contentTypes count])
  {
    if (!typeCopy)
    {
LABEL_30:
      v6 = 1;
      goto LABEL_31;
    }
  }

  else
  {
    v5 = [(NSArray *)self->_disableContentTypes count];
    v6 = 1;
    if (!typeCopy || !v5)
    {
      goto LABEL_31;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([(NSMutableSet *)self->_positiveSet containsObject:typeCopy]& 1) != 0)
  {
    goto LABEL_30;
  }

  if (([(NSMutableSet *)self->_negativeSet containsObject:typeCopy]& 1) == 0)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = self->_contentTypes;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v30;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if (UTTypeConformsTo(typeCopy, *(*(&v29 + 1) + 8 * i)))
          {
            positiveSet = self->_positiveSet;
            if (!positiveSet)
            {
              v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
              v19 = self->_positiveSet;
              self->_positiveSet = v18;

              positiveSet = self->_positiveSet;
            }

            [(NSMutableSet *)positiveSet addObject:typeCopy];

            goto LABEL_30;
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = self->_disableContentTypes;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      while (2)
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          if (UTTypeConformsTo(typeCopy, *(*(&v25 + 1) + 8 * j)))
          {
            negativeSet = self->_negativeSet;
            if (!negativeSet)
            {
              v23 = objc_alloc_init(MEMORY[0x277CBEB58]);
              v24 = self->_negativeSet;
              self->_negativeSet = v23;

              negativeSet = self->_negativeSet;
            }

            [(NSMutableSet *)negativeSet addObject:typeCopy, v25];

            goto LABEL_9;
          }
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    [(NSMutableSet *)self->_negativeSet addObject:typeCopy, v25];
  }

LABEL_9:
  v6 = 0;
LABEL_31:

  v20 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)wantsINIntentClassNames:(id)names
{
  namesCopy = names;
  if ([namesCopy length])
  {
    if ([(NSSet *)self->_INIntentClassNames count])
    {
      v5 = [(NSSet *)self->_INIntentClassNames containsObject:namesCopy];
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end