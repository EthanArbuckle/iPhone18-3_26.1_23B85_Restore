@interface _UIDefinitionValue
- (_UIDefinitionValue)initWithLocalizedDictionaryName:(id)a3 term:(id)a4 definition:(id)a5 longDefinition:(id)a6;
- (id)description;
@end

@implementation _UIDefinitionValue

- (_UIDefinitionValue)initWithLocalizedDictionaryName:(id)a3 term:(id)a4 definition:(id)a5 longDefinition:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = _UIDefinitionValue;
  v14 = [(_UIDefinitionValue *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    localizedDictionaryName = v14->_localizedDictionaryName;
    v14->_localizedDictionaryName = v15;

    v17 = [v11 copy];
    term = v14->_term;
    v14->_term = v17;

    v19 = [v12 copy];
    definition = v14->_definition;
    v14->_definition = v19;

    v21 = [v13 copy];
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