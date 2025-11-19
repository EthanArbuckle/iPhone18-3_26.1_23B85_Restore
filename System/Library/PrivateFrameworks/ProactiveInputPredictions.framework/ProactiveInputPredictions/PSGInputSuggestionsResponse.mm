@interface PSGInputSuggestionsResponse
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToResponse:(id)a3;
- (PSGInputSuggestionsResponse)initWithCoder:(id)a3;
- (PSGInputSuggestionsResponse)initWithResponseItems:(id)a3 explanationSet:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PSGInputSuggestionsResponse

- (id)description
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithString:", @"<PSGInputSuggestionsResponse ris:(");
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_responseItems;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) description];
        [v3 appendString:v9];

        [v3 appendString:@"; "];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" eps:%@>"], self->_explanationSet);
  [v3 appendString:v10];

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PSGInputSuggestionsResponse *)self isEqualToResponse:v5];
  }

  return v6;
}

- (BOOL)isEqualToResponse:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = self->_responseItems;
  v6 = v5;
  if (v5 == v4[2])
  {
  }

  else
  {
    v7 = [(NSArray *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
LABEL_4:
      v8 = 0;
      goto LABEL_10;
    }
  }

  v9 = self->_explanationSet;
  v10 = v9;
  if (v9 == v4[3])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(PSGInputSuggestionsExplanationSet *)v9 isEqual:?];
  }

LABEL_10:
  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v5 = objc_opt_new();
  if (v5)
  {
    v6 = [(NSArray *)self->_responseItems copyWithZone:a3];
    v7 = v5[2];
    v5[2] = v6;

    v8 = [(PSGInputSuggestionsExplanationSet *)self->_explanationSet copyWithZone:a3];
    v9 = v5[3];
    v5[3] = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  responseItems = self->_responseItems;
  v5 = a3;
  [v5 encodeObject:responseItems forKey:@"ris"];
  [v5 encodeObject:self->_explanationSet forKey:@"eps"];
}

- (PSGInputSuggestionsResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x277CBEB98]);
  v7 = objc_opt_class();
  v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v5);
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"ris"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eps"];
  v11 = [(PSGInputSuggestionsResponse *)self initWithResponseItems:v9 explanationSet:v10];

  return v11;
}

- (PSGInputSuggestionsResponse)initWithResponseItems:(id)a3 explanationSet:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PSGInputSuggestionsResponse;
  v9 = [(PSGInputSuggestionsResponse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_responseItems, a3);
    objc_storeStrong(&v10->_explanationSet, a4);
  }

  return v10;
}

@end