@interface PETEventStringValuedProperty
- (BOOL)isValidValue:(id)a3;
- (PETEventStringValuedProperty)initWithName:(id)a3 possibleValues:(id)a4 autoSanitizeValues:(BOOL)a5;
- (id)_loggingKeyStringRepresentationForValue:(id)a3;
- (id)description;
- (id)longestValueString;
@end

@implementation PETEventStringValuedProperty

- (id)longestValueString
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = self->_possibleValues;
  v3 = [(NSSet *)v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

      v4 = [(NSSet *)v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)_loggingKeyStringRepresentationForValue:(id)a3
{
  v4 = a3;
  if ([(PETEventStringValuedProperty *)self isValidValue:v4])
  {
    if (self->_autoSanitizeValues)
    {
      v5 = [PETEventStringValidator sanitizedString:v4];
    }

    else
    {
      v5 = v4;
    }

    v6 = v5;
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
    autoSanitizeValues = self->_autoSanitizeValues;
    possibleValues = self->_possibleValues;
    if (autoSanitizeValues)
    {
      v7 = [PETEventStringValidator sanitizedString:v4];
      v8 = [(NSSet *)possibleValues containsObject:v7];
    }

    else
    {
      v8 = [(NSSet *)possibleValues containsObject:v4];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PETEventProperty *)self name];
  v5 = [v3 stringWithFormat:@"StringValued: Name=%@ Values=%@", v4, self->_possibleValues];

  return v5;
}

- (PETEventStringValuedProperty)initWithName:(id)a3 possibleValues:(id)a4 autoSanitizeValues:(BOOL)a5
{
  v8 = a4;
  v16.receiver = self;
  v16.super_class = PETEventStringValuedProperty;
  v9 = [(PETEventProperty *)&v16 initWithName:a3];
  if (v9)
  {
    if (a5)
    {
      v10 = [PETEventStringValidator sanitizedSet:v8];
    }

    else
    {
      if (![PETEventStringValidator setContainsValidStrings:v8])
      {
        v11 = MEMORY[0x1E695DF30];
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"possibleValues may only contain [a-zA-Z0-9_] and may not be prefixed with _ -- possibleValues was: %@", v8];
        v13 = [v11 exceptionWithName:@"PETEventTrackingException" reason:v12 userInfo:0];

        [v13 raise];
      }

      v10 = [v8 copy];
    }

    possibleValues = v9->_possibleValues;
    v9->_possibleValues = v10;

    v9->_autoSanitizeValues = a5;
  }

  return v9;
}

@end