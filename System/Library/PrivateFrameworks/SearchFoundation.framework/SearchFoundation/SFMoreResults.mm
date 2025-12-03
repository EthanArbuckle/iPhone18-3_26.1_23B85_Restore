@interface SFMoreResults
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFMoreResults)initWithCoder:(id)coder;
- (SFMoreResults)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)loadSearchResultsWithCompletionAndErrorHandler:(id)handler;
- (void)loadSearchResultsWithCompletionHandler:(id)handler;
@end

@implementation SFMoreResults

- (unint64_t)hash
{
  label = [(SFMoreResults *)self label];
  v3 = [label hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(SFMoreResults *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    label = [(SFMoreResults *)self label];
    label2 = [(SFMoreResults *)v5 label];
    if ((label != 0) == (label2 == 0))
    {
      v11 = 0;
    }

    else
    {
      label3 = [(SFMoreResults *)self label];
      if (label3)
      {
        label4 = [(SFMoreResults *)self label];
        label5 = [(SFMoreResults *)v5 label];
        v11 = [label4 isEqual:label5];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  label = [(SFMoreResults *)self label];
  v6 = [label copy];
  [v4 setLabel:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBMoreResults alloc] initWithFacade:self];
  jsonData = [(_SFPBMoreResults *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBMoreResults alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBMoreResults *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBMoreResults alloc] initWithFacade:self];
  data = [(_SFPBMoreResults *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFMoreResults)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBMoreResults alloc] initWithData:v5];
  v7 = [(SFMoreResults *)self initWithProtobuf:v6];

  return v7;
}

- (SFMoreResults)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v10.receiver = self;
  v10.super_class = SFMoreResults;
  v5 = [(SFMoreResults *)&v10 init];
  if (v5)
  {
    label = [protobufCopy label];

    if (label)
    {
      label2 = [protobufCopy label];
      [(SFMoreResults *)v5 setLabel:label2];
    }

    v8 = v5;
  }

  return v5;
}

- (void)loadSearchResultsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__SFMoreResults_Handwritten__loadSearchResultsWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E7ACDBB8;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(SFMoreResults *)self loadSearchResultsWithCompletionAndErrorHandler:v6];
}

- (void)loadSearchResultsWithCompletionAndErrorHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77__SFMoreResults_Handwritten__loadSearchResultsWithCompletionAndErrorHandler___block_invoke;
  v6[3] = &unk_1E7ACDBB8;
  v7 = handlerCopy;
  v5 = handlerCopy;
  SFResourceLoaderLoadMoreResults(self, v6);
}

@end