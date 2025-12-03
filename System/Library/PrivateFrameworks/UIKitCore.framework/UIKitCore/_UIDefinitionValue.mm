@interface _UIDefinitionValue
- (_UIDefinitionValue)initWithLocalizedDictionaryName:(id)name term:(id)term definition:(id)definition longDefinition:(id)longDefinition;
- (id)description;
@end

@implementation _UIDefinitionValue

- (_UIDefinitionValue)initWithLocalizedDictionaryName:(id)name term:(id)term definition:(id)definition longDefinition:(id)longDefinition
{
  nameCopy = name;
  termCopy = term;
  definitionCopy = definition;
  longDefinitionCopy = longDefinition;
  v24.receiver = self;
  v24.super_class = _UIDefinitionValue;
  v14 = [(_UIDefinitionValue *)&v24 init];
  if (v14)
  {
    v15 = [nameCopy copy];
    localizedDictionaryName = v14->_localizedDictionaryName;
    v14->_localizedDictionaryName = v15;

    v17 = [termCopy copy];
    term = v14->_term;
    v14->_term = v17;

    v19 = [definitionCopy copy];
    definition = v14->_definition;
    v14->_definition = v19;

    v21 = [longDefinitionCopy copy];
    longDefinition = v14->_longDefinition;
    v14->_longDefinition = v21;
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@<%p>: localizedDictionaryName: %@, term: %@, definition: %@", v5, self, self->_localizedDictionaryName, self->_term, self->_definition];

  return v6;
}

@end