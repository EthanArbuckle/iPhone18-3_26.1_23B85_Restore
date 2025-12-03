@interface WFActionDefinition
- (WFActionDefinition)initWithDictionary:(id)dictionary;
- (WFActionDescriptionDefinition)descriptionDefinition;
- (_NSLocalizedStringResource)name;
- (id)definitionByAddingEntriesInDictionary:(id)dictionary;
- (id)definitionByMergingWithDefinition:(id)definition;
- (id)definitionByRemovingKey:(id)key;
- (id)objectForKey:(id)key;
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

- (id)definitionByRemovingKey:(id)key
{
  if (self)
  {
    definition = self->_definition;
  }

  else
  {
    definition = 0;
  }

  keyCopy = key;
  v5 = [(NSDictionary *)definition mutableCopy];
  [v5 removeObjectForKey:keyCopy];

  v6 = [[WFActionDefinition alloc] initWithDictionary:v5];

  return v6;
}

- (id)definitionByAddingEntriesInDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [WFActionDefinition alloc];
  if (self)
  {
    definition = self->_definition;
  }

  else
  {
    definition = 0;
  }

  v7 = [(NSDictionary *)definition if_dictionaryByAddingEntriesFromDictionary:dictionaryCopy];

  v8 = [(WFActionDefinition *)v5 initWithDictionary:v7];

  return v8;
}

- (id)definitionByMergingWithDefinition:(id)definition
{
  if (definition)
  {
    v4 = *(definition + 1);
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFActionDefinition.m" lineNumber:148 description:{@"Invalid parameter not satisfying: %@", @"definition"}];

    v4 = 0;
  }

  return [(WFActionDefinition *)self definitionByAddingEntriesInDictionary:v4];
}

- (id)objectForKey:(id)key
{
  if (self)
  {
    self = self->_definition;
  }

  return [(WFActionDefinition *)self objectForKey:key];
}

- (WFActionDefinition)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFActionDefinition.m" lineNumber:133 description:{@"Invalid parameter not satisfying: %@", @"dictionary"}];
  }

  v12.receiver = self;
  v12.super_class = WFActionDefinition;
  v6 = [(WFActionDefinition *)&v12 init];
  if (v6)
  {
    v7 = [dictionaryCopy copy];
    definition = v6->_definition;
    v6->_definition = v7;

    v9 = v6;
  }

  return v6;
}

@end