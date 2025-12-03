@interface REHTMLParentElement
- (REHTMLParentElement)initWithParents:(id)parents children:(id)children;
- (id)_encodedData;
- (id)addChildren:(id)children;
- (id)attributes;
- (id)classes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)elementBySettingAtttibutes:(id)atttibutes;
- (id)elementBySettingClasses:(id)classes;
@end

@implementation REHTMLParentElement

- (REHTMLParentElement)initWithParents:(id)parents children:(id)children
{
  parentsCopy = parents;
  childrenCopy = children;
  v14.receiver = self;
  v14.super_class = REHTMLParentElement;
  v9 = [(REHTMLElement *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_parent, parents);
    v11 = [childrenCopy copy];
    children = v10->_children;
    v10->_children = v11;
  }

  return v10;
}

- (id)_encodedData
{
  v24 = *MEMORY[0x277D85DE8];
  data = [MEMORY[0x277CBEB28] data];
  _prefixContentString = [(REHTMLElement *)self->_parent _prefixContentString];
  v5 = [(REHTMLElement *)self _encodeString:_prefixContentString];

  if (v5)
  {
    [data appendData:v5];
  }

  _contentString = [(REHTMLElement *)self->_parent _contentString];
  v7 = [(REHTMLElement *)self _encodeString:_contentString];

  if (v7)
  {
    [data appendData:v7];
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

        encodedData = [*(*(&v19 + 1) + 8 * i) encodedData];
        [data appendData:encodedData];
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  _suffixContentString = [(REHTMLElement *)self->_parent _suffixContentString];
  v15 = [(REHTMLElement *)self _encodeString:_suffixContentString];

  if (v15)
  {
    [data appendData:v15];
  }

  v16 = [data copy];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)classes
{
  classes = [(REHTMLElement *)self->_parent classes];
  v3 = classes;
  if (classes)
  {
    v4 = classes;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

- (id)elementBySettingClasses:(id)classes
{
  v4 = [(REHTMLElement *)self->_parent elementBySettingClasses:classes];
  v5 = [objc_alloc(objc_opt_class()) initWithParents:v4 children:self->_children];

  return v5;
}

- (id)attributes
{
  attributes = [(REHTMLElement *)self->_parent attributes];
  v3 = attributes;
  if (attributes)
  {
    v4 = attributes;
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  v5 = v4;

  return v4;
}

- (id)elementBySettingAtttibutes:(id)atttibutes
{
  v4 = [(REHTMLElement *)self->_parent elementBySettingAtttibutes:atttibutes];
  v5 = [objc_alloc(objc_opt_class()) initWithParents:v4 children:self->_children];

  return v5;
}

- (id)addChildren:(id)children
{
  childrenCopy = children;
  if ([childrenCopy count])
  {
    v5 = objc_alloc(objc_opt_class());
    parent = self->_parent;
    v7 = [(NSArray *)self->_children arrayByAddingObjectsFromArray:childrenCopy];
    selfCopy = [v5 initWithParents:parent children:v7];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = REHTMLParentElement;
  v4 = [(REHTMLElement *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 2, self->_parent);
  objc_storeStrong(v4 + 3, self->_children);
  return v4;
}

@end