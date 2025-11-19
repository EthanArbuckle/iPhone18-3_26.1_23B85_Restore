@interface WFActionDefinition
- (WFActionDefinition)initWithDictionary:(id)a3;
- (WFActionDescriptionDefinition)descriptionDefinition;
- (_NSLocalizedStringResource)name;
- (id)definitionByAddingEntriesInDictionary:(id)a3;
- (id)definitionByMergingWithDefinition:(id)a3;
- (id)definitionByRemovingKey:(id)a3;
- (id)objectForKey:(id)a3;
@end

@implementation WFActionDefinition

- (WFActionDescriptionDefinition)descriptionDefinition
{
  v2 = [(WFActionDefinition *)self objectForKey:@"Description"];
  if (!v2 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v3 = [WFActionDescriptionDefinition alloc];
    v2 = [(WFActionDescriptionDefinition *)v3 initWithDictionary:MEMORY[0x1E695E0F8]];
  }

  return v2;
}

- (_NSLocalizedStringResource)name
{
  v2 = [(WFActionDefinition *)self objectForKey:@"Name"];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)definitionByRemovingKey:(id)a3
{
  if (self)
  {
    definition = self->_definition;
  }

  else
  {
    definition = 0;
  }

  v4 = a3;
  v5 = [(NSDictionary *)definition mutableCopy];
  [v5 removeObjectForKey:v4];

  v6 = [[WFActionDefinition alloc] initWithDictionary:v5];

  return v6;
}

- (id)definitionByAddingEntriesInDictionary:(id)a3
{
  v4 = a3;
  v5 = [WFActionDefinition alloc];
  if (self)
  {
    definition = self->_definition;
  }

  else
  {
    definition = 0;
  }

  v7 = [(NSDictionary *)definition if_dictionaryByAddingEntriesFromDictionary:v4];

  v8 = [(WFActionDefinition *)v5 initWithDictionary:v7];

  return v8;
}

- (id)definitionByMergingWithDefinition:(id)a3
{
  if (a3)
  {
    v4 = *(a3 + 1);
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"WFActionDefinition.m" lineNumber:148 description:{@"Invalid parameter not satisfying: %@", @"definition"}];

    v4 = 0;
  }

  return [(WFActionDefinition *)self definitionByAddingEntriesInDictionary:v4];
}

- (id)objectForKey:(id)a3
{
  if (self)
  {
    self = self->_definition;
  }

  return [(WFActionDefinition *)self objectForKey:a3];
}

- (WFActionDefinition)initWithDictionary:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFActionDefinition.m" lineNumber:133 description:{@"Invalid parameter not satisfying: %@", @"dictionary"}];
  }

  v12.receiver = self;
  v12.super_class = WFActionDefinition;
  v6 = [(WFActionDefinition *)&v12 init];
  if (v6)
  {
    v7 = [v5 copy];
    definition = v6->_definition;
    v6->_definition = v7;

    v9 = v6;
  }

  return v6;
}

@end