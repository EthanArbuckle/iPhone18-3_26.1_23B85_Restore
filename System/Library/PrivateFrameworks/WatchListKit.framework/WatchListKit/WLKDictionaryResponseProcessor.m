@interface WLKDictionaryResponseProcessor
- (id)processResponseData:(id)a3 options:(unint64_t)a4 error:(id *)a5;
@end

@implementation WLKDictionaryResponseProcessor

- (id)processResponseData:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (v8)
  {
    v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v8 options:a4 error:a5];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(WLKDictionaryResponseProcessor *)self dictionaryKeyPath];
  v11 = [v10 componentsSeparatedByString:@"."];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = [(WLKDictionaryResponseProcessor *)self objectClass];
    v12 = 0;
    v21 = 0;
    if (v20)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v28 = v8;
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

  v22 = [(WLKDictionaryResponseProcessor *)self objectClass];
  if (!v22)
  {
    v11 = v27;
    v8 = v28;
LABEL_23:
    v24 = v12;
    v12 = v24;
    goto LABEL_24;
  }

  v11 = v27;
  v8 = v28;
  if (!v12 || (v23 = v22, ![(objc_class *)v22 instancesRespondToSelector:sel_initWithDictionary_]))
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