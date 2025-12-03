@interface TIKeyboardConfiguration
- (TIKeyboardConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TIKeyboardConfiguration

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  inputManagerState = self->_inputManagerState;
  v12 = coderCopy;
  if (inputManagerState)
  {
    [coderCopy encodeObject:inputManagerState forKey:@"inputManagerState"];
    coderCopy = v12;
  }

  intermediateText = self->_intermediateText;
  if (intermediateText)
  {
    [v12 encodeObject:intermediateText forKey:@"intermediateText"];
    coderCopy = v12;
  }

  layoutTag = self->_layoutTag;
  if (layoutTag)
  {
    [v12 encodeObject:layoutTag forKey:@"layoutTag"];
    coderCopy = v12;
  }

  accentKeyString = self->_accentKeyString;
  if (accentKeyString)
  {
    [v12 encodeObject:accentKeyString forKey:@"accentKeyString"];
    coderCopy = v12;
  }

  if (self->_assertDefaultKeyPlane)
  {
    [v12 encodeBool:1 forKey:@"assertDefaultKeyPlane"];
    coderCopy = v12;
  }

  multilingualLanguages = self->_multilingualLanguages;
  if (multilingualLanguages)
  {
    [v12 encodeObject:multilingualLanguages forKey:@"multilingualLanguages"];
    coderCopy = v12;
  }

  trialParameters = self->_trialParameters;
  if (trialParameters)
  {
    [v12 encodeObject:trialParameters forKey:@"trialParameters"];
    coderCopy = v12;
  }

  contextualDisplayKeys = self->_contextualDisplayKeys;
  if (contextualDisplayKeys)
  {
    [v12 encodeObject:contextualDisplayKeys forKey:@"contextualDisplayKeys"];
    coderCopy = v12;
  }
}

- (TIKeyboardConfiguration)initWithCoder:(id)coder
{
  v33[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = TIKeyboardConfiguration;
  v5 = [(TIKeyboardConfiguration *)&v32 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputManagerState"];
    inputManagerState = v5->_inputManagerState;
    v5->_inputManagerState = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intermediateText"];
    intermediateText = v5->_intermediateText;
    v5->_intermediateText = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"layoutTag"];
    v11 = [v10 copy];
    layoutTag = v5->_layoutTag;
    v5->_layoutTag = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accentKeyString"];
    v14 = [v13 copy];
    accentKeyString = v5->_accentKeyString;
    v5->_accentKeyString = v14;

    v5->_assertDefaultKeyPlane = [coderCopy decodeBoolForKey:@"assertDefaultKeyPlane"];
    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"multilingualLanguages"];
    multilingualLanguages = v5->_multilingualLanguages;
    v5->_multilingualLanguages = v19;

    v21 = MEMORY[0x1E695DFD8];
    v33[0] = objc_opt_class();
    v33[1] = objc_opt_class();
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
    v23 = [v21 setWithArray:v22];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"trialParameters"];
    v25 = [v24 copy];
    trialParameters = v5->_trialParameters;
    v5->_trialParameters = v25;

    v27 = objc_opt_class();
    v28 = [coderCopy decodeDictionaryWithKeysOfClass:v27 objectsOfClass:objc_opt_class() forKey:@"contextualDisplayKeys"];
    v29 = [v28 copy];
    contextualDisplayKeys = v5->_contextualDisplayKeys;
    v5->_contextualDisplayKeys = v29;
  }

  return v5;
}

@end