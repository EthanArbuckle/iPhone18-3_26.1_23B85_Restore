@interface _ICQFlowSpecification
- (_ICQFlowSpecification)initWithPages:(id)a3;
@end

@implementation _ICQFlowSpecification

- (_ICQFlowSpecification)initWithPages:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = _ICQFlowSpecification;
  v5 = [(_ICQFlowSpecification *)&v24 init];
  if (v5)
  {
    v6 = [v4 count];
    if (v6)
    {
      v6 = [v4 objectAtIndexedSubscript:0];
    }

    startPage = v5->_startPage;
    v5->_startPage = v6;

    v8 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = [v14 pageIdentifier];
          [v8 setObject:v14 forKey:v15];
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v11);
    }

    v16 = [v8 copy];
    pagesByIdentifier = v5->_pagesByIdentifier;
    v5->_pagesByIdentifier = v16;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

@end