@interface UILexiconEntry
+ (id)_entryWithTILexiconEntry:(id)entry;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation UILexiconEntry

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(UILexiconEntry);
  v5 = [(NSString *)self->_userInput copy];
  userInput = v4->_userInput;
  v4->_userInput = v5;

  v7 = [(NSString *)self->_documentText copy];
  documentText = v4->_documentText;
  v4->_documentText = v7;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    userInput = [(UILexiconEntry *)self userInput];
    userInput2 = [v5 userInput];
    v8 = userInput2;
    if (userInput == userInput2)
    {
    }

    else
    {
      userInput3 = [(UILexiconEntry *)self userInput];
      userInput4 = [v5 userInput];
      v11 = [userInput3 isEqual:userInput4];

      if (!v11)
      {
        v12 = 0;
LABEL_11:

        goto LABEL_12;
      }
    }

    documentText = [(UILexiconEntry *)self documentText];
    documentText2 = [v5 documentText];
    if (documentText == documentText2)
    {
      v12 = 1;
    }

    else
    {
      documentText3 = [(UILexiconEntry *)self documentText];
      documentText4 = [v5 documentText];
      v12 = [documentText3 isEqual:documentText4];
    }

    goto LABEL_11;
  }

  v12 = 0;
LABEL_12:

  return v12;
}

+ (id)_entryWithTILexiconEntry:(id)entry
{
  entryCopy = entry;
  v4 = objc_alloc_init(UILexiconEntry);
  documentText = [entryCopy documentText];
  v6 = [documentText copy];
  documentText = v4->_documentText;
  v4->_documentText = v6;

  userInput = [entryCopy userInput];

  v9 = [userInput copy];
  userInput = v4->_userInput;
  v4->_userInput = v9;

  if (!v4->_userInput)
  {
    objc_storeStrong(&v4->_userInput, v4->_documentText);
  }

  return v4;
}

@end