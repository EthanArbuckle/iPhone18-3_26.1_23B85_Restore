@interface WFActionDescriptionDefinition
- (WFActionDescriptionDefinition)initWithDictionary:(id)dictionary;
- (id)definitionByAddingEntriesInDictionary:(id)dictionary;
- (id)objectForKey:(id)key;
@end

@implementation WFActionDescriptionDefinition

- (id)objectForKey:(id)key
{
  if (self)
  {
    self = self->_definition;
  }

  return [(WFActionDescriptionDefinition *)self objectForKey:key];
}

- (id)definitionByAddingEntriesInDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [WFActionDescriptionDefinition alloc];
  if (self)
  {
    definition = self->_definition;
  }

  else
  {
    definition = 0;
  }

  v7 = [(NSDictionary *)definition if_dictionaryByAddingEntriesFromDictionary:dictionaryCopy];

  v8 = [(WFActionDescriptionDefinition *)v5 initWithDictionary:v7];

  return v8;
}

- (WFActionDescriptionDefinition)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFActionDefinition.m" lineNumber:183 description:{@"Invalid parameter not satisfying: %@", @"dictionary"}];
  }

  v12.receiver = self;
  v12.super_class = WFActionDescriptionDefinition;
  v6 = [(WFActionDescriptionDefinition *)&v12 init];
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