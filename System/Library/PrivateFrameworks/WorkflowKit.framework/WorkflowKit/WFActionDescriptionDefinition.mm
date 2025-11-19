@interface WFActionDescriptionDefinition
- (WFActionDescriptionDefinition)initWithDictionary:(id)a3;
- (id)definitionByAddingEntriesInDictionary:(id)a3;
- (id)objectForKey:(id)a3;
@end

@implementation WFActionDescriptionDefinition

- (id)objectForKey:(id)a3
{
  if (self)
  {
    self = self->_definition;
  }

  return [(WFActionDescriptionDefinition *)self objectForKey:a3];
}

- (id)definitionByAddingEntriesInDictionary:(id)a3
{
  v4 = a3;
  v5 = [WFActionDescriptionDefinition alloc];
  if (self)
  {
    definition = self->_definition;
  }

  else
  {
    definition = 0;
  }

  v7 = [(NSDictionary *)definition if_dictionaryByAddingEntriesFromDictionary:v4];

  v8 = [(WFActionDescriptionDefinition *)v5 initWithDictionary:v7];

  return v8;
}

- (WFActionDescriptionDefinition)initWithDictionary:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFActionDefinition.m" lineNumber:183 description:{@"Invalid parameter not satisfying: %@", @"dictionary"}];
  }

  v12.receiver = self;
  v12.super_class = WFActionDescriptionDefinition;
  v6 = [(WFActionDescriptionDefinition *)&v12 init];
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