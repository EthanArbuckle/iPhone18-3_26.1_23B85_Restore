@interface TILexiconEntry
+ (id)entryWithDocumentText:(id)a3 userInput:(id)a4;
- (BOOL)isEqual:(id)a3;
- (TILexiconEntry)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TILexiconEntry

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  userInput = self->_userInput;
  v7 = v4;
  if (userInput)
  {
    [v4 encodeObject:userInput forKey:@"userInput"];
    v4 = v7;
  }

  documentText = self->_documentText;
  if (documentText)
  {
    [v7 encodeObject:documentText forKey:@"documentText"];
    v4 = v7;
  }
}

- (TILexiconEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TILexiconEntry;
  v5 = [(TILexiconEntry *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userInput"];
    userInput = v5->_userInput;
    v5->_userInput = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"documentText"];
    documentText = v5->_documentText;
    v5->_documentText = v8;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(TILexiconEntry *)self userInput];
    v7 = [v5 userInput];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(TILexiconEntry *)self userInput];
      v10 = [v5 userInput];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        v12 = 0;
LABEL_11:

        goto LABEL_12;
      }
    }

    v13 = [(TILexiconEntry *)self documentText];
    v14 = [v5 documentText];
    if (v13 == v14)
    {
      v12 = 1;
    }

    else
    {
      v15 = [(TILexiconEntry *)self documentText];
      v16 = [v5 documentText];
      v12 = [v15 isEqual:v16];
    }

    goto LABEL_11;
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
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

+ (id)entryWithDocumentText:(id)a3 userInput:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(TILexiconEntry);
  v8 = [v6 copy];

  documentText = v7->_documentText;
  v7->_documentText = v8;

  v10 = [v5 copy];
  userInput = v7->_userInput;
  v7->_userInput = v10;

  return v7;
}

@end