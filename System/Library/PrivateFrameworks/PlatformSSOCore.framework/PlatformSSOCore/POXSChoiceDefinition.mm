@interface POXSChoiceDefinition
- (NSArray)elements;
- (POXSChoiceDefinition)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)elementForValue:(id)a3;
- (void)setName:(id)a3 namespaceURI:(id)a4 forType:(Class)a5;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = POXSChoiceDefinition;
  v5 = [(POXSDefinition *)&v9 copyWithZone:?];
  v6 = [(NSMapTable *)self->_elements copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  return v5;
}

- (id)elementForValue:(id)a3
{
  v4 = a3;
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
  v2 = [(NSMapTable *)self->_elements objectEnumerator];
  v3 = [v2 allObjects];

  return v3;
}

- (void)setName:(id)a3 namespaceURI:(id)a4 forType:(Class)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[POXSElement alloc] initWithElementName:v9 namespaceURI:v8 type:a5];

  [(NSMapTable *)self->_elements setObject:v10 forKey:a5];
  [(POXSDefinition *)self setType:a5 forName:v9];
}

@end