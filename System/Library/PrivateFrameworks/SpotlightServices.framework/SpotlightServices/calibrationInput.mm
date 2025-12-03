@interface calibrationInput
- (calibrationInput)initWithQuery_embedding:(id)query_embedding document_embedding:(id)document_embedding;
- (id)featureValueForName:(id)name;
@end

@implementation calibrationInput

- (calibrationInput)initWithQuery_embedding:(id)query_embedding document_embedding:(id)document_embedding
{
  query_embeddingCopy = query_embedding;
  document_embeddingCopy = document_embedding;
  v12.receiver = self;
  v12.super_class = calibrationInput;
  v9 = [(calibrationInput *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_query_embedding, query_embedding);
    objc_storeStrong(&v10->_document_embedding, document_embedding);
  }

  return v10;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"query_embedding"])
  {
    v5 = MEMORY[0x1E695FE60];
    query_embedding = [(calibrationInput *)self query_embedding];
LABEL_5:
    v7 = query_embedding;
    v8 = [v5 featureValueWithMultiArray:query_embedding];

    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"document_embedding"])
  {
    v5 = MEMORY[0x1E695FE60];
    query_embedding = [(calibrationInput *)self document_embedding];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

@end