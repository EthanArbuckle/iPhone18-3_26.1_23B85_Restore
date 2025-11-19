@interface SFMoreResults
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFMoreResults)initWithCoder:(id)a3;
- (SFMoreResults)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)loadSearchResultsWithCompletionAndErrorHandler:(id)a3;
- (void)loadSearchResultsWithCompletionHandler:(id)a3;
@end

@implementation SFMoreResults

- (unint64_t)hash
{
  v2 = [(SFMoreResults *)self label];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else if ([(SFMoreResults *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(SFMoreResults *)self label];
    v7 = [(SFMoreResults *)v5 label];
    if ((v6 != 0) == (v7 == 0))
    {
      v11 = 0;
    }

    else
    {
      v8 = [(SFMoreResults *)self label];
      if (v8)
      {
        v9 = [(SFMoreResults *)self label];
        v10 = [(SFMoreResults *)v5 label];
        v11 = [v9 isEqual:v10];
      }

      else
      {
        v11 = 1;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFMoreResults *)self label];
  v6 = [v5 copy];
  [v4 setLabel:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBMoreResults alloc] initWithFacade:self];
  v3 = [(_SFPBMoreResults *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBMoreResults alloc] initWithFacade:self];
  v3 = [(_SFPBMoreResults *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBMoreResults alloc] initWithFacade:self];
  v5 = [(_SFPBMoreResults *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFMoreResults)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBMoreResults alloc] initWithData:v5];
  v7 = [(SFMoreResults *)self initWithProtobuf:v6];

  return v7;
}

- (SFMoreResults)initWithProtobuf:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SFMoreResults;
  v5 = [(SFMoreResults *)&v10 init];
  if (v5)
  {
    v6 = [v4 label];

    if (v6)
    {
      v7 = [v4 label];
      [(SFMoreResults *)v5 setLabel:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (void)loadSearchResultsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__SFMoreResults_Handwritten__loadSearchResultsWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E7ACDBB8;
  v7 = v4;
  v5 = v4;
  [(SFMoreResults *)self loadSearchResultsWithCompletionAndErrorHandler:v6];
}

- (void)loadSearchResultsWithCompletionAndErrorHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77__SFMoreResults_Handwritten__loadSearchResultsWithCompletionAndErrorHandler___block_invoke;
  v6[3] = &unk_1E7ACDBB8;
  v7 = v4;
  v5 = v4;
  SFResourceLoaderLoadMoreResults(self, v6);
}

@end