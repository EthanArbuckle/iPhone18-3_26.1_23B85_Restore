@interface _UIInputViewControllerState
+ (id)stateForKeyboardState:(id)a3;
- (BOOL)isEqual:(id)a3;
- (_UIInputViewControllerState)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)createDocumentStateIfNecessary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIInputViewControllerState

+ (id)stateForKeyboardState:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_UIInputViewControllerState);
  v5 = [v3 documentState];
  [(_UIInputViewControllerState *)v4 setDocumentState:v5];

  v6 = [v3 textInputTraits];
  [(_UIInputViewControllerState *)v4 setTextInputTraits:v6];

  v7 = +[UIKeyboardInputModeController sharedInputModeController];
  v8 = [v7 documentInputMode];
  [(_UIInputViewControllerState *)v4 setDocumentInputMode:v8];

  v9 = [v3 documentIdentifier];

  [(_UIInputViewControllerState *)v4 setDocumentIdentifier:v9];
  [(_UIInputViewControllerState *)v4 setNeedsInputModeSwitchKey:UIInputViewControllerRequiresInputModeSwitchKey()];

  return v4;
}

- (void)createDocumentStateIfNecessary
{
  v3 = [(_UIInputViewControllerState *)self documentState];

  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69D9590]) initWithContextBefore:&stru_1EFB14550 markedText:0 selectedText:&stru_1EFB14550 contextAfter:&stru_1EFB14550 selectedRangeInMarkedText:{0x7FFFFFFFFFFFFFFFLL, 0}];
    [(_UIInputViewControllerState *)self setDocumentState:v4];

    v5 = UIInputViewControllerRequiresInputModeSwitchKey();

    [(_UIInputViewControllerState *)self setNeedsInputModeSwitchKey:v5];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(_UIInputViewControllerState);
  if (v4)
  {
    v5 = [(TIDocumentState *)self->_documentState copy];
    documentState = v4->_documentState;
    v4->_documentState = v5;

    v7 = [(TITextInputTraits *)self->_textInputTraits copy];
    textInputTraits = v4->_textInputTraits;
    v4->_textInputTraits = v7;

    v9 = [(UITextInputMode *)self->_documentInputMode copy];
    documentInputMode = v4->_documentInputMode;
    v4->_documentInputMode = v9;

    v11 = [(NSUUID *)self->_documentIdentifier copy];
    documentIdentifier = v4->_documentIdentifier;
    v4->_documentIdentifier = v11;

    v4->_needsInputModeSwitchKey = self->_needsInputModeSwitchKey;
  }

  return v4;
}

- (_UIInputViewControllerState)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _UIInputViewControllerState;
  v5 = [(_UIInputViewControllerState *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"documentState"];
    documentState = v5->_documentState;
    v5->_documentState = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textInputTraits"];
    textInputTraits = v5->_textInputTraits;
    v5->_textInputTraits = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"documentInputMode"];
    documentInputMode = v5->_documentInputMode;
    v5->_documentInputMode = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"documentIdentifier"];
    documentIdentifier = v5->_documentIdentifier;
    v5->_documentIdentifier = v12;

    v5->_needsInputModeSwitchKey = [v4 decodeBoolForKey:@"needsInputModeSwitchKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  documentState = self->_documentState;
  v9 = v4;
  if (documentState)
  {
    [v4 encodeObject:documentState forKey:@"documentState"];
    v4 = v9;
  }

  textInputTraits = self->_textInputTraits;
  if (textInputTraits)
  {
    [v9 encodeObject:textInputTraits forKey:@"textInputTraits"];
    v4 = v9;
  }

  documentInputMode = self->_documentInputMode;
  if (documentInputMode)
  {
    [v9 encodeObject:documentInputMode forKey:@"documentInputMode"];
    v4 = v9;
  }

  documentIdentifier = self->_documentIdentifier;
  if (documentIdentifier)
  {
    [v9 encodeObject:documentIdentifier forKey:@"documentIdentifier"];
    v4 = v9;
  }

  if (self->_needsInputModeSwitchKey)
  {
    [v9 encodeBool:1 forKey:@"needsInputModeSwitchKey"];
    v4 = v9;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(_UIInputViewControllerState *)self documentState];
    v7 = [v5 documentState];
    v8 = [v6 isEqual:v7];

    if (v8 && (-[_UIInputViewControllerState textInputTraits](self, "textInputTraits"), v9 = objc_claimAutoreleasedReturnValue(), [v5 textInputTraits], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqual:", v10), v10, v9, v11) && (-[_UIInputViewControllerState documentInputMode](self, "documentInputMode"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "documentInputMode"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "isEqual:", v13), v13, v12, v14) && (-[_UIInputViewControllerState documentIdentifier](self, "documentIdentifier"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "documentIdentifier"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isEqual:", v16), v16, v15, v17))
    {
      v18 = [(_UIInputViewControllerState *)self needsInputModeSwitchKey];
      v19 = v18 ^ [v5 needsInputModeSwitchKey] ^ 1;
    }

    else
    {
      LOBYTE(v19) = 0;
    }
  }

  else
  {
    LOBYTE(v19) = 0;
  }

  return v19;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  v4 = [(_UIInputViewControllerState *)self documentState];
  [v3 appendFormat:@"; documentState = %@", v4];

  v5 = [(_UIInputViewControllerState *)self textInputTraits];
  [v3 appendFormat:@"; textInputTraits = %@", v5];

  v6 = [(_UIInputViewControllerState *)self documentInputMode];
  [v3 appendFormat:@"; documentInputMode = %@", v6];

  v7 = [(_UIInputViewControllerState *)self documentIdentifier];
  [v3 appendFormat:@"; documentIdentifier = %@", v7];

  v8 = [(_UIInputViewControllerState *)self needsInputModeSwitchKey];
  v9 = @"NO";
  if (v8)
  {
    v9 = @"YES";
  }

  [v3 appendFormat:@"; needsInputModeSwitchKey = %@", v9];
  [v3 appendString:@">"];

  return v3;
}

@end