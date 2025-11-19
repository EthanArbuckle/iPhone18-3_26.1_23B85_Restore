@interface UILexiconEntry
+ (id)_entryWithTILexiconEntry:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation UILexiconEntry

- (id)copyWithZone:(_NSZone *)a3
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(UILexiconEntry *)self userInput];
    v7 = [v5 userInput];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(UILexiconEntry *)self userInput];
      v10 = [v5 userInput];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        v12 = 0;
LABEL_11:

        goto LABEL_12;
      }
    }

    v13 = [(UILexiconEntry *)self documentText];
    v14 = [v5 documentText];
    if (v13 == v14)
    {
      v12 = 1;
    }

    else
    {
      v15 = [(UILexiconEntry *)self documentText];
      v16 = [v5 documentText];
      v12 = [v15 isEqual:v16];
    }

    goto LABEL_11;
  }

  v12 = 0;
LABEL_12:

  return v12;
}

+ (id)_entryWithTILexiconEntry:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(UILexiconEntry);
  v5 = [v3 documentText];
  v6 = [v5 copy];
  documentText = v4->_documentText;
  v4->_documentText = v6;

  v8 = [v3 userInput];

  v9 = [v8 copy];
  userInput = v4->_userInput;
  v4->_userInput = v9;

  if (!v4->_userInput)
  {
    objc_storeStrong(&v4->_userInput, v4->_documentText);
  }

  return v4;
}

@end