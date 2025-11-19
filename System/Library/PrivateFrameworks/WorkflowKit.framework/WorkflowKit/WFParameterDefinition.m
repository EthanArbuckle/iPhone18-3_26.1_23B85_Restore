@interface WFParameterDefinition
- (WFParameterDefinition)initWithDictionary:(id)a3;
- (id)definitionByAddingEntriesInDictionary:(id)a3;
- (id)definitionByMergingWithDefinition:(id)a3;
- (id)definitionByRemovingKey:(id)a3;
- (id)objectForKey:(id)a3;
@end

@implementation WFParameterDefinition

- (id)objectForKey:(id)a3
{
  if (self)
  {
    self = self->_definition;
  }

  return [(WFParameterDefinition *)self objectForKey:a3];
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

  v6 = [[WFParameterDefinition alloc] initWithDictionary:v5];

  return v6;
}

- (id)definitionByAddingEntriesInDictionary:(id)a3
{
  v4 = a3;
  v5 = [WFParameterDefinition alloc];
  if (self)
  {
    definition = self->_definition;
  }

  else
  {
    definition = 0;
  }

  v7 = [(NSDictionary *)definition if_dictionaryByAddingEntriesFromDictionary:v4];

  v8 = [(WFParameterDefinition *)v5 initWithDictionary:v7];

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
    [v7 handleFailureInMethod:a2 object:self file:@"WFParameterDefinition.m" lineNumber:160 description:{@"Invalid parameter not satisfying: %@", @"definition"}];

    v4 = 0;
  }

  return [(WFParameterDefinition *)self definitionByAddingEntriesInDictionary:v4];
}

- (WFParameterDefinition)initWithDictionary:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFParameterDefinition.m" lineNumber:148 description:{@"Invalid parameter not satisfying: %@", @"dictionary"}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"WFParameterDefinition.m" lineNumber:149 description:{@"Invalid parameter not satisfying: %@", @"[dictionary isKindOfClass:[NSDictionary class]]"}];
  }

  v13.receiver = self;
  v13.super_class = WFParameterDefinition;
  v6 = [(WFParameterDefinition *)&v13 init];
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