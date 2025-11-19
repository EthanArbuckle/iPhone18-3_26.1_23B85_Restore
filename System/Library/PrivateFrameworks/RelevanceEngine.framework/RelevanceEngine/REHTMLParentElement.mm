@interface REHTMLParentElement
- (REHTMLParentElement)initWithParents:(id)a3 children:(id)a4;
- (id)_encodedData;
- (id)addChildren:(id)a3;
- (id)attributes;
- (id)classes;
- (id)copyWithZone:(_NSZone *)a3;
- (id)elementBySettingAtttibutes:(id)a3;
- (id)elementBySettingClasses:(id)a3;
@end

@implementation REHTMLParentElement

- (REHTMLParentElement)initWithParents:(id)a3 children:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = REHTMLParentElement;
  v9 = [(REHTMLElement *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_parent, a3);
    v11 = [v8 copy];
    children = v10->_children;
    v10->_children = v11;
  }

  return v10;
}

- (id)_encodedData
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB28] data];
  v4 = [(REHTMLElement *)self->_parent _prefixContentString];
  v5 = [(REHTMLElement *)self _encodeString:v4];

  if (v5)
  {
    [v3 appendData:v5];
  }

  v6 = [(REHTMLElement *)self->_parent _contentString];
  v7 = [(REHTMLElement *)self _encodeString:v6];

  if (v7)
  {
    [v3 appendData:v7];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = self->_children;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v19 + 1) + 8 * i) encodedData];
        [v3 appendData:v13];
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v14 = [(REHTMLElement *)self->_parent _suffixContentString];
  v15 = [(REHTMLElement *)self _encodeString:v14];

  if (v15)
  {
    [v3 appendData:v15];
  }

  v16 = [v3 copy];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)classes
{
  v2 = [(REHTMLElement *)self->_parent classes];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

- (id)elementBySettingClasses:(id)a3
{
  v4 = [(REHTMLElement *)self->_parent elementBySettingClasses:a3];
  v5 = [objc_alloc(objc_opt_class()) initWithParents:v4 children:self->_children];

  return v5;
}

- (id)attributes
{
  v2 = [(REHTMLElement *)self->_parent attributes];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  v5 = v4;

  return v4;
}

- (id)elementBySettingAtttibutes:(id)a3
{
  v4 = [(REHTMLElement *)self->_parent elementBySettingAtttibutes:a3];
  v5 = [objc_alloc(objc_opt_class()) initWithParents:v4 children:self->_children];

  return v5;
}

- (id)addChildren:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = objc_alloc(objc_opt_class());
    parent = self->_parent;
    v7 = [(NSArray *)self->_children arrayByAddingObjectsFromArray:v4];
    v8 = [v5 initWithParents:parent children:v7];
  }

  else
  {
    v8 = self;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = REHTMLParentElement;
  v4 = [(REHTMLElement *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 2, self->_parent);
  objc_storeStrong(v4 + 3, self->_children);
  return v4;
}

@end