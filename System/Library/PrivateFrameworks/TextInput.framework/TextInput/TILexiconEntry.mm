@interface TILexiconEntry
+ (id)entryWithDocumentText:(id)text userInput:(id)input;
- (BOOL)isEqual:(id)equal;
- (TILexiconEntry)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TILexiconEntry

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  userInput = self->_userInput;
  v7 = coderCopy;
  if (userInput)
  {
    [coderCopy encodeObject:userInput forKey:@"userInput"];
    coderCopy = v7;
  }

  documentText = self->_documentText;
  if (documentText)
  {
    [v7 encodeObject:documentText forKey:@"documentText"];
    coderCopy = v7;
  }
}

- (TILexiconEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = TILexiconEntry;
  v5 = [(TILexiconEntry *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userInput"];
    userInput = v5->_userInput;
    v5->_userInput = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"documentText"];
    documentText = v5->_documentText;
    v5->_documentText = v8;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    userInput = [(TILexiconEntry *)self userInput];
    userInput2 = [v5 userInput];
    v8 = userInput2;
    if (userInput == userInput2)
    {
    }

    else
    {
      userInput3 = [(TILexiconEntry *)self userInput];
      userInput4 = [v5 userInput];
      v11 = [userInput3 isEqual:userInput4];

      if (!v11)
      {
        v12 = 0;
LABEL_11:

        goto LABEL_12;
      }
    }

    documentText = [(TILexiconEntry *)self documentText];
    documentText2 = [v5 documentText];
    if (documentText == documentText2)
    {
      v12 = 1;
    }

    else
    {
      documentText3 = [(TILexiconEntry *)self documentText];
      documentText4 = [v5 documentText];
      v12 = [documentText3 isEqual:documentText4];
    }

    goto LABEL_11;
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(TILexiconEntry);
  v5 = [(NSString *)self->_userInput copy];
  userInput = v4->_userInput;
  v4->_userInput = v5;

  v7 = [(NSString *)self->_documentText copy];
  documentText = v4->_documentText;
  v4->_documentText = v7;

  return v4;
}

+ (id)entryWithDocumentText:(id)text userInput:(id)input
{
  inputCopy = input;
  textCopy = text;
  v7 = objc_alloc_init(TILexiconEntry);
  v8 = [textCopy copy];

  documentText = v7->_documentText;
  v7->_documentText = v8;

  v10 = [inputCopy copy];
  userInput = v7->_userInput;
  v7->_userInput = v10;

  return v7;
}

@end