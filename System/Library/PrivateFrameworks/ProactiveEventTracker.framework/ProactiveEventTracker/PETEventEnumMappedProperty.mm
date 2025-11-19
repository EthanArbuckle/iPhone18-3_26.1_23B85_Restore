@interface PETEventEnumMappedProperty
- (BOOL)isValidValue:(id)a3;
- (PETEventEnumMappedProperty)initWithName:(id)a3 enumMapping:(id)a4 autoSanitizeValues:(BOOL)a5;
- (_NSRange)validRange;
- (id)_loggingKeyStringRepresentationForValue:(id)a3;
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
  v2 = [(NSDictionary *)self->_enumMap allValues];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 length];
        if (v9 > [(__CFString *)v6 length])
        {
          v10 = v8;

          v6 = v10;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  v4 = [(NSDictionary *)self->_enumMap allKeys];
  v5 = [v3 initWithArray:v4];

  return v5;
}

- (id)_loggingKeyStringRepresentationForValue:(id)a3
{
  v4 = a3;
  if ([(PETEventEnumMappedProperty *)self isValidValue:v4])
  {
    if (self->_autoSanitizeValues)
    {
      v5 = [(NSDictionary *)self->_enumMap objectForKeyedSubscript:v4];
      v6 = [PETEventStringValidator sanitizedString:v5];
    }

    else
    {
      v6 = [(NSDictionary *)self->_enumMap objectForKeyedSubscript:v4];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isValidValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSDictionary *)self->_enumMap objectForKeyedSubscript:v4];
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
  v4 = [(PETEventProperty *)self name];
  v5 = [v3 stringWithFormat:@"EnumMapped: Name=%@ Mapping=%@", v4, self->_enumMap];

  return v5;
}

- (PETEventEnumMappedProperty)initWithName:(id)a3 enumMapping:(id)a4 autoSanitizeValues:(BOOL)a5
{
  v8 = a4;
  v16.receiver = self;
  v16.super_class = PETEventEnumMappedProperty;
  v9 = [(PETEventProperty *)&v16 initWithName:a3];
  if (v9)
  {
    if (!a5 && ![PETEventStringValidator dictionaryContainsValidStrings:v8])
    {
      v10 = MEMORY[0x1E695DF30];
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mapping keys/values may only contain [a-zA-Z0-9_] and may not be prefixed with _: %@", v8];
      v12 = [v10 exceptionWithName:@"PETEventTrackingException" reason:v11 userInfo:0];

      [v12 raise];
    }

    v13 = [v8 copy];
    enumMap = v9->_enumMap;
    v9->_enumMap = v13;

    v9->_autoSanitizeValues = a5;
  }

  return v9;
}

@end