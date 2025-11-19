@interface TIKeyboardConfiguration
- (TIKeyboardConfiguration)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TIKeyboardConfiguration

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  inputManagerState = self->_inputManagerState;
  v12 = v4;
  if (inputManagerState)
  {
    [v4 encodeObject:inputManagerState forKey:@"inputManagerState"];
    v4 = v12;
  }

  intermediateText = self->_intermediateText;
  if (intermediateText)
  {
    [v12 encodeObject:intermediateText forKey:@"intermediateText"];
    v4 = v12;
  }

  layoutTag = self->_layoutTag;
  if (layoutTag)
  {
    [v12 encodeObject:layoutTag forKey:@"layoutTag"];
    v4 = v12;
  }

  accentKeyString = self->_accentKeyString;
  if (accentKeyString)
  {
    [v12 encodeObject:accentKeyString forKey:@"accentKeyString"];
    v4 = v12;
  }

  if (self->_assertDefaultKeyPlane)
  {
    [v12 encodeBool:1 forKey:@"assertDefaultKeyPlane"];
    v4 = v12;
  }

  multilingualLanguages = self->_multilingualLanguages;
  if (multilingualLanguages)
  {
    [v12 encodeObject:multilingualLanguages forKey:@"multilingualLanguages"];
    v4 = v12;
  }

  trialParameters = self->_trialParameters;
  if (trialParameters)
  {
    [v12 encodeObject:trialParameters forKey:@"trialParameters"];
    v4 = v12;
  }

  contextualDisplayKeys = self->_contextualDisplayKeys;
  if (contextualDisplayKeys)
  {
    [v12 encodeObject:contextualDisplayKeys forKey:@"contextualDisplayKeys"];
    v4 = v12;
  }
}

- (TIKeyboardConfiguration)initWithCoder:(id)a3
{
  v33[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v32.receiver = self;
  v32.super_class = TIKeyboardConfiguration;
  v5 = [(TIKeyboardConfiguration *)&v32 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inputManagerState"];
    inputManagerState = v5->_inputManagerState;
    v5->_inputManagerState = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"intermediateText"];
    intermediateText = v5->_intermediateText;
    v5->_intermediateText = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"layoutTag"];
    v11 = [v10 copy];
    layoutTag = v5->_layoutTag;
    v5->_layoutTag = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accentKeyString"];
    v14 = [v13 copy];
    accentKeyString = v5->_accentKeyString;
    v5->_accentKeyString = v14;

    v5->_assertDefaultKeyPlane = [v4 decodeBoolForKey:@"assertDefaultKeyPlane"];
    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"multilingualLanguages"];
    multilingualLanguages = v5->_multilingualLanguages;
    v5->_multilingualLanguages = v19;

    v21 = MEMORY[0x1E695DFD8];
    v33[0] = objc_opt_class();
    v33[1] = objc_opt_class();
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
    v23 = [v21 setWithArray:v22];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"trialParameters"];
    v25 = [v24 copy];
    trialParameters = v5->_trialParameters;
    v5->_trialParameters = v25;

    v27 = objc_opt_class();
    v28 = [v4 decodeDictionaryWithKeysOfClass:v27 objectsOfClass:objc_opt_class() forKey:@"contextualDisplayKeys"];
    v29 = [v28 copy];
    contextualDisplayKeys = v5->_contextualDisplayKeys;
    v5->_contextualDisplayKeys = v29;
  }

  return v5;
}

@end