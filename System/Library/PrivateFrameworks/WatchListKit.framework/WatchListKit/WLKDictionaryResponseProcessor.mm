@interface WLKDictionaryResponseProcessor
- (id)processResponseData:(id)data options:(unint64_t)options error:(id *)error;
@end

@implementation WLKDictionaryResponseProcessor

- (id)processResponseData:(id)data options:(unint64_t)options error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (dataCopy)
  {
    v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:dataCopy options:options error:error];
  }

  else
  {
    v9 = 0;
  }

  dictionaryKeyPath = [(WLKDictionaryResponseProcessor *)self dictionaryKeyPath];
  v11 = [dictionaryKeyPath componentsSeparatedByString:@"."];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objectClass = [(WLKDictionaryResponseProcessor *)self objectClass];
    v12 = 0;
    v21 = 0;
    if (objectClass)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v28 = dataCopy;
  v12 = v9;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v27 = v11;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    while (2)
    {
      v17 = 0;
      v18 = v12;
      do
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v12 = [v18 objectForKey:{*(*(&v29 + 1) + 8 * v17), v27}];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {

          v12 = 0;
          goto LABEL_17;
        }

        ++v17;
        v18 = v12;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  objectClass2 = [(WLKDictionaryResponseProcessor *)self objectClass];
  if (!objectClass2)
  {
    v11 = v27;
    dataCopy = v28;
LABEL_23:
    v24 = v12;
    v12 = v24;
    goto LABEL_24;
  }

  v11 = v27;
  dataCopy = v28;
  if (!v12 || (v23 = objectClass2, ![(objc_class *)objectClass2 instancesRespondToSelector:sel_initWithDictionary_]))
  {
    v21 = 0;
    goto LABEL_25;
  }

  v24 = [[v23 alloc] initWithDictionary:v12];
LABEL_24:
  v21 = v24;
LABEL_25:

  v25 = *MEMORY[0x277D85DE8];

  return v21;
}

@end