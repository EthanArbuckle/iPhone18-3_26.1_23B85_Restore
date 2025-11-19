@interface REHTMLContainerElement
- (REHTMLContainerElement)initWithElements:(id)a3;
- (id)_encodedData;
- (id)append:(id)a3;
- (id)attributes;
- (id)classes;
- (id)copyWithZone:(_NSZone *)a3;
- (id)elementBySettingAtttibutes:(id)a3;
- (id)elementBySettingClasses:(id)a3;
@end

@implementation REHTMLContainerElement

- (REHTMLContainerElement)initWithElements:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v32.receiver = self;
  v32.super_class = REHTMLContainerElement;
  v5 = [(REHTMLElement *)&v32 init];
  if (v5)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v29;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v28 + 1) + 8 * v10);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {

            v13 = [MEMORY[0x277CBEB18] array];
            v24 = 0u;
            v25 = 0u;
            v26 = 0u;
            v27 = 0u;
            v14 = v6;
            v15 = [v14 countByEnumeratingWithState:&v24 objects:v33 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v25;
              do
              {
                v18 = 0;
                do
                {
                  if (*v25 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v19 = *(*(&v24 + 1) + 8 * v18);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [v13 addObjectsFromArray:*(v19 + 16)];
                  }

                  else
                  {
                    [v13 addObject:{v19, v24}];
                  }

                  ++v18;
                }

                while (v16 != v18);
                v16 = [v14 countByEnumeratingWithState:&v24 objects:v33 count:16];
              }

              while (v16);
            }

            v20 = [v13 copy];
            elements = v5->_elements;
            v5->_elements = v20;

            goto LABEL_22;
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v28 objects:v34 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v12 = [v6 copy];
    v13 = v5->_elements;
    v5->_elements = v12;
LABEL_22:
  }

  v22 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)_encodedData
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB28] data];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = self->_elements;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = objc_alloc(MEMORY[0x277CCACA8]);
        v11 = [v9 encodedData];
        v12 = [v10 initWithData:v11 encoding:4];

        [v12 length];
        v13 = [v9 encodedData];
        [v3 appendData:v13];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v3 encoding:4];
  [v14 length];
  v15 = [v3 copy];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)classes
{
  v2 = [(NSArray *)self->_elements firstObject];
  v3 = [v2 classes];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = v5;

  return v5;
}

- (id)elementBySettingClasses:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(NSArray *)self->_elements count])
  {
    v5 = [(NSArray *)self->_elements firstObject];
    v6 = [v5 elementBySettingClasses:v4];

    v13[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v8 = [(NSArray *)self->_elements subarrayWithRange:1, [(NSArray *)self->_elements count]- 1];
    v9 = [v7 arrayByAddingObjectsFromArray:v8];

    v10 = [objc_alloc(objc_opt_class()) initWithElements:v9];
  }

  else
  {
    v10 = self;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)attributes
{
  v2 = [(NSArray *)self->_elements firstObject];
  v3 = [v2 attributes];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEC10];
  }

  v6 = v5;

  return v5;
}

- (id)elementBySettingAtttibutes:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(NSArray *)self->_elements count])
  {
    v5 = [(NSArray *)self->_elements firstObject];
    v6 = [v5 elementBySettingAtttibutes:v4];

    v13[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v8 = [(NSArray *)self->_elements subarrayWithRange:1, [(NSArray *)self->_elements count]- 1];
    v9 = [v7 arrayByAddingObjectsFromArray:v8];

    v10 = [objc_alloc(objc_opt_class()) initWithElements:v9];
  }

  else
  {
    v10 = self;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)append:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(NSArray *)self->_elements arrayByAddingObject:v4];

  v7 = [v5 initWithElements:v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = REHTMLContainerElement;
  v4 = [(REHTMLElement *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 2, self->_elements);
  return v4;
}

@end