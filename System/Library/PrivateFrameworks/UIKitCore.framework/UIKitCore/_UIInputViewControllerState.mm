@interface _UIInputViewControllerState
+ (id)stateForKeyboardState:(id)state;
- (BOOL)isEqual:(id)equal;
- (_UIInputViewControllerState)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)createDocumentStateIfNecessary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIInputViewControllerState

+ (id)stateForKeyboardState:(id)state
{
  stateCopy = state;
  v4 = objc_alloc_init(_UIInputViewControllerState);
  documentState = [stateCopy documentState];
  [(_UIInputViewControllerState *)v4 setDocumentState:documentState];

  textInputTraits = [stateCopy textInputTraits];
  [(_UIInputViewControllerState *)v4 setTextInputTraits:textInputTraits];

  v7 = +[UIKeyboardInputModeController sharedInputModeController];
  documentInputMode = [v7 documentInputMode];
  [(_UIInputViewControllerState *)v4 setDocumentInputMode:documentInputMode];

  documentIdentifier = [stateCopy documentIdentifier];

  [(_UIInputViewControllerState *)v4 setDocumentIdentifier:documentIdentifier];
  [(_UIInputViewControllerState *)v4 setNeedsInputModeSwitchKey:UIInputViewControllerRequiresInputModeSwitchKey()];

  return v4;
}

- (void)createDocumentStateIfNecessary
{
  documentState = [(_UIInputViewControllerState *)self documentState];

  if (!documentState)
  {
    v4 = [objc_alloc(MEMORY[0x1E69D9590]) initWithContextBefore:&stru_1EFB14550 markedText:0 selectedText:&stru_1EFB14550 contextAfter:&stru_1EFB14550 selectedRangeInMarkedText:{0x7FFFFFFFFFFFFFFFLL, 0}];
    [(_UIInputViewControllerState *)self setDocumentState:v4];

    v5 = UIInputViewControllerRequiresInputModeSwitchKey();

    [(_UIInputViewControllerState *)self setNeedsInputModeSwitchKey:v5];
  }
}

- (id)copyWithZone:(_NSZone *)zone
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

- (_UIInputViewControllerState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = _UIInputViewControllerState;
  v5 = [(_UIInputViewControllerState *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"documentState"];
    documentState = v5->_documentState;
    v5->_documentState = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textInputTraits"];
    textInputTraits = v5->_textInputTraits;
    v5->_textInputTraits = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"documentInputMode"];
    documentInputMode = v5->_documentInputMode;
    v5->_documentInputMode = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"documentIdentifier"];
    documentIdentifier = v5->_documentIdentifier;
    v5->_documentIdentifier = v12;

    v5->_needsInputModeSwitchKey = [coderCopy decodeBoolForKey:@"needsInputModeSwitchKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  documentState = self->_documentState;
  v9 = coderCopy;
  if (documentState)
  {
    [coderCopy encodeObject:documentState forKey:@"documentState"];
    coderCopy = v9;
  }

  textInputTraits = self->_textInputTraits;
  if (textInputTraits)
  {
    [v9 encodeObject:textInputTraits forKey:@"textInputTraits"];
    coderCopy = v9;
  }

  documentInputMode = self->_documentInputMode;
  if (documentInputMode)
  {
    [v9 encodeObject:documentInputMode forKey:@"documentInputMode"];
    coderCopy = v9;
  }

  documentIdentifier = self->_documentIdentifier;
  if (documentIdentifier)
  {
    [v9 encodeObject:documentIdentifier forKey:@"documentIdentifier"];
    coderCopy = v9;
  }

  if (self->_needsInputModeSwitchKey)
  {
    [v9 encodeBool:1 forKey:@"needsInputModeSwitchKey"];
    coderCopy = v9;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    documentState = [(_UIInputViewControllerState *)self documentState];
    documentState2 = [v5 documentState];
    v8 = [documentState isEqual:documentState2];

    if (v8 && (-[_UIInputViewControllerState textInputTraits](self, "textInputTraits"), v9 = objc_claimAutoreleasedReturnValue(), [v5 textInputTraits], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqual:", v10), v10, v9, v11) && (-[_UIInputViewControllerState documentInputMode](self, "documentInputMode"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "documentInputMode"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "isEqual:", v13), v13, v12, v14) && (-[_UIInputViewControllerState documentIdentifier](self, "documentIdentifier"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "documentIdentifier"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isEqual:", v16), v16, v15, v17))
    {
      needsInputModeSwitchKey = [(_UIInputViewControllerState *)self needsInputModeSwitchKey];
      v19 = needsInputModeSwitchKey ^ [v5 needsInputModeSwitchKey] ^ 1;
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
  documentState = [(_UIInputViewControllerState *)self documentState];
  [v3 appendFormat:@"; documentState = %@", documentState];

  textInputTraits = [(_UIInputViewControllerState *)self textInputTraits];
  [v3 appendFormat:@"; textInputTraits = %@", textInputTraits];

  documentInputMode = [(_UIInputViewControllerState *)self documentInputMode];
  [v3 appendFormat:@"; documentInputMode = %@", documentInputMode];

  documentIdentifier = [(_UIInputViewControllerState *)self documentIdentifier];
  [v3 appendFormat:@"; documentIdentifier = %@", documentIdentifier];

  needsInputModeSwitchKey = [(_UIInputViewControllerState *)self needsInputModeSwitchKey];
  v9 = @"NO";
  if (needsInputModeSwitchKey)
  {
    v9 = @"YES";
  }

  [v3 appendFormat:@"; needsInputModeSwitchKey = %@", v9];
  [v3 appendString:@">"];

  return v3;
}

@end