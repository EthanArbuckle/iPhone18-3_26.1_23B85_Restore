@interface WFParameterDefinition
- (WFParameterDefinition)initWithDictionary:(id)dictionary;
- (id)definitionByAddingEntriesInDictionary:(id)dictionary;
- (id)definitionByMergingWithDefinition:(id)definition;
- (id)definitionByRemovingKey:(id)key;
- (id)objectForKey:(id)key;
@end

@implementation WFParameterDefinition

- (id)objectForKey:(id)key
{
  if (self)
  {
    self = self->_definition;
  }

  return [(WFParameterDefinition *)self objectForKey:key];
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

  v6 = [[WFParameterDefinition alloc] initWithDictionary:v5];

  return v6;
}

- (id)definitionByAddingEntriesInDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [WFParameterDefinition alloc];
  if (self)
  {
    definition = self->_definition;
  }

  else
  {
    definition = 0;
  }

  v7 = [(NSDictionary *)definition if_dictionaryByAddingEntriesFromDictionary:dictionaryCopy];

  v8 = [(WFParameterDefinition *)v5 initWithDictionary:v7];

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
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFParameterDefinition.m" lineNumber:160 description:{@"Invalid parameter not satisfying: %@", @"definition"}];

    v4 = 0;
  }

  return [(WFParameterDefinition *)self definitionByAddingEntriesInDictionary:v4];
}

- (WFParameterDefinition)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFParameterDefinition.m" lineNumber:148 description:{@"Invalid parameter not satisfying: %@", @"dictionary"}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFParameterDefinition.m" lineNumber:149 description:{@"Invalid parameter not satisfying: %@", @"[dictionary isKindOfClass:[NSDictionary class]]"}];
  }

  v13.receiver = self;
  v13.super_class = WFParameterDefinition;
  v6 = [(WFParameterDefinition *)&v13 init];
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