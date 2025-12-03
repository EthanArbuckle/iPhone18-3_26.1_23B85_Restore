@interface REHTMLContainerElement
- (REHTMLContainerElement)initWithElements:(id)elements;
- (id)_encodedData;
- (id)append:(id)append;
- (id)attributes;
- (id)classes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)elementBySettingAtttibutes:(id)atttibutes;
- (id)elementBySettingClasses:(id)classes;
@end

@implementation REHTMLContainerElement

- (REHTMLContainerElement)initWithElements:(id)elements
{
  v35 = *MEMORY[0x277D85DE8];
  elementsCopy = elements;
  v32.receiver = self;
  v32.super_class = REHTMLContainerElement;
  v5 = [(REHTMLElement *)&v32 init];
  if (v5)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v6 = elementsCopy;
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

            array = [MEMORY[0x277CBEB18] array];
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
                    [array addObjectsFromArray:*(v19 + 16)];
                  }

                  else
                  {
                    [array addObject:{v19, v24}];
                  }

                  ++v18;
                }

                while (v16 != v18);
                v16 = [v14 countByEnumeratingWithState:&v24 objects:v33 count:16];
              }

              while (v16);
            }

            v20 = [array copy];
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
    array = v5->_elements;
    v5->_elements = v12;
LABEL_22:
  }

  v22 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)_encodedData
{
  v23 = *MEMORY[0x277D85DE8];
  data = [MEMORY[0x277CBEB28] data];
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
        encodedData = [v9 encodedData];
        v12 = [v10 initWithData:encodedData encoding:4];

        [v12 length];
        encodedData2 = [v9 encodedData];
        [data appendData:encodedData2];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:data encoding:4];
  [v14 length];
  v15 = [data copy];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)classes
{
  firstObject = [(NSArray *)self->_elements firstObject];
  classes = [firstObject classes];
  v4 = classes;
  if (classes)
  {
    v5 = classes;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = v5;

  return v5;
}

- (id)elementBySettingClasses:(id)classes
{
  v13[1] = *MEMORY[0x277D85DE8];
  classesCopy = classes;
  if ([(NSArray *)self->_elements count])
  {
    firstObject = [(NSArray *)self->_elements firstObject];
    v6 = [firstObject elementBySettingClasses:classesCopy];

    v13[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v8 = [(NSArray *)self->_elements subarrayWithRange:1, [(NSArray *)self->_elements count]- 1];
    v9 = [v7 arrayByAddingObjectsFromArray:v8];

    selfCopy = [objc_alloc(objc_opt_class()) initWithElements:v9];
  }

  else
  {
    selfCopy = self;
  }

  v11 = *MEMORY[0x277D85DE8];

  return selfCopy;
}

- (id)attributes
{
  firstObject = [(NSArray *)self->_elements firstObject];
  attributes = [firstObject attributes];
  v4 = attributes;
  if (attributes)
  {
    v5 = attributes;
  }

  else
  {
    v5 = MEMORY[0x277CBEC10];
  }

  v6 = v5;

  return v5;
}

- (id)elementBySettingAtttibutes:(id)atttibutes
{
  v13[1] = *MEMORY[0x277D85DE8];
  atttibutesCopy = atttibutes;
  if ([(NSArray *)self->_elements count])
  {
    firstObject = [(NSArray *)self->_elements firstObject];
    v6 = [firstObject elementBySettingAtttibutes:atttibutesCopy];

    v13[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v8 = [(NSArray *)self->_elements subarrayWithRange:1, [(NSArray *)self->_elements count]- 1];
    v9 = [v7 arrayByAddingObjectsFromArray:v8];

    selfCopy = [objc_alloc(objc_opt_class()) initWithElements:v9];
  }

  else
  {
    selfCopy = self;
  }

  v11 = *MEMORY[0x277D85DE8];

  return selfCopy;
}

- (id)append:(id)append
{
  appendCopy = append;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(NSArray *)self->_elements arrayByAddingObject:appendCopy];

  v7 = [v5 initWithElements:v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = REHTMLContainerElement;
  v4 = [(REHTMLElement *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 2, self->_elements);
  return v4;
}

@end