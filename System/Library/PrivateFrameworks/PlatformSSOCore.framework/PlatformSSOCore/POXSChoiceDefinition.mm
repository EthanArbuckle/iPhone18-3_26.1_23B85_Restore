@interface POXSChoiceDefinition
- (NSArray)elements;
- (POXSChoiceDefinition)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)elementForValue:(id)value;
- (void)setName:(id)name namespaceURI:(id)i forType:(Class)type;
@end

@implementation POXSChoiceDefinition

- (POXSChoiceDefinition)init
{
  v6.receiver = self;
  v6.super_class = POXSChoiceDefinition;
  v2 = [(POXSDefinition *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    elements = v2->_elements;
    v2->_elements = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = POXSChoiceDefinition;
  v5 = [(POXSDefinition *)&v9 copyWithZone:?];
  v6 = [(NSMapTable *)self->_elements copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  return v5;
}

- (id)elementForValue:(id)value
{
  valueCopy = value;
  v5 = [(NSMapTable *)self->_elements objectForKey:objc_opt_class()];
  if (!v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSMapTable *)self->_elements objectForKey:objc_opt_class()];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (NSArray)elements
{
  objectEnumerator = [(NSMapTable *)self->_elements objectEnumerator];
  allObjects = [objectEnumerator allObjects];

  return allObjects;
}

- (void)setName:(id)name namespaceURI:(id)i forType:(Class)type
{
  iCopy = i;
  nameCopy = name;
  v10 = [[POXSElement alloc] initWithElementName:nameCopy namespaceURI:iCopy type:type];

  [(NSMapTable *)self->_elements setObject:v10 forKey:type];
  [(POXSDefinition *)self setType:type forName:nameCopy];
}

@end