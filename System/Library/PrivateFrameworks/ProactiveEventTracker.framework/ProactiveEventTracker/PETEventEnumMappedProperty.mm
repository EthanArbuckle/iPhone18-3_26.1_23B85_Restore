@interface PETEventEnumMappedProperty
- (BOOL)isValidValue:(id)value;
- (PETEventEnumMappedProperty)initWithName:(id)name enumMapping:(id)mapping autoSanitizeValues:(BOOL)values;
- (_NSRange)validRange;
- (id)_loggingKeyStringRepresentationForValue:(id)value;
- (id)description;
- (id)longestValueString;
- (id)possibleValues;
@end

@implementation PETEventEnumMappedProperty

- (id)longestValueString
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allValues = [(NSDictionary *)self->_enumMap allValues];
  v3 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    v6 = &stru_1F5AB0768;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 length];
        if (v9 > [(__CFString *)v6 length])
        {
          v10 = v8;

          v6 = v10;
        }
      }

      v4 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = &stru_1F5AB0768;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)possibleValues
{
  v3 = objc_alloc(MEMORY[0x1E695DFD8]);
  allKeys = [(NSDictionary *)self->_enumMap allKeys];
  v5 = [v3 initWithArray:allKeys];

  return v5;
}

- (id)_loggingKeyStringRepresentationForValue:(id)value
{
  valueCopy = value;
  if ([(PETEventEnumMappedProperty *)self isValidValue:valueCopy])
  {
    if (self->_autoSanitizeValues)
    {
      v5 = [(NSDictionary *)self->_enumMap objectForKeyedSubscript:valueCopy];
      v6 = [PETEventStringValidator sanitizedString:v5];
    }

    else
    {
      v6 = [(NSDictionary *)self->_enumMap objectForKeyedSubscript:valueCopy];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isValidValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSDictionary *)self->_enumMap objectForKeyedSubscript:valueCopy];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (_NSRange)validRange
{
  v2 = 0;
  v3 = 0;
  result.length = v3;
  result.location = v2;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  name = [(PETEventProperty *)self name];
  v5 = [v3 stringWithFormat:@"EnumMapped: Name=%@ Mapping=%@", name, self->_enumMap];

  return v5;
}

- (PETEventEnumMappedProperty)initWithName:(id)name enumMapping:(id)mapping autoSanitizeValues:(BOOL)values
{
  mappingCopy = mapping;
  v16.receiver = self;
  v16.super_class = PETEventEnumMappedProperty;
  v9 = [(PETEventProperty *)&v16 initWithName:name];
  if (v9)
  {
    if (!values && ![PETEventStringValidator dictionaryContainsValidStrings:mappingCopy])
    {
      v10 = MEMORY[0x1E695DF30];
      mappingCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"mapping keys/values may only contain [a-zA-Z0-9_] and may not be prefixed with _: %@", mappingCopy];
      v12 = [v10 exceptionWithName:@"PETEventTrackingException" reason:mappingCopy userInfo:0];

      [v12 raise];
    }

    v13 = [mappingCopy copy];
    enumMap = v9->_enumMap;
    v9->_enumMap = v13;

    v9->_autoSanitizeValues = values;
  }

  return v9;
}

@end