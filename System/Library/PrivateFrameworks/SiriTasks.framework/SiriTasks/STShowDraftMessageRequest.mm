@interface STShowDraftMessageRequest
- (STShowDraftMessageRequest)initWithCoder:(id)coder;
- (id)_initWithDraftMessageIdentifier:(id)identifier;
- (id)createResponse;
- (id)createUsageResult;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STShowDraftMessageRequest

- (STShowDraftMessageRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = STShowDraftMessageRequest;
  v5 = [(AFSiriRequest *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_draftMessageIdentifier"];
    draftMessageIdentifier = v5->_draftMessageIdentifier;
    v5->_draftMessageIdentifier = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STShowDraftMessageRequest;
  coderCopy = coder;
  [(AFSiriRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_draftMessageIdentifier forKey:{@"_draftMessageIdentifier", v5.receiver, v5.super_class}];
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<%@ %p: draftMessageIdentifier=%@>", objc_opt_class(), self, self->_draftMessageIdentifier];

  return v2;
}

- (id)createUsageResult
{
  v3 = [STShowDraftMessageUsageResult alloc];
  _originatingAceID = [(AFSiriRequest *)self _originatingAceID];
  v5 = [(AFSiriTaskUsageResult *)v3 _initWithOriginatingAceID:_originatingAceID];

  return v5;
}

- (id)createResponse
{
  v2 = [objc_alloc(MEMORY[0x277CEF3F8]) _initWithRequest:self];

  return v2;
}

- (id)_initWithDraftMessageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = STShowDraftMessageRequest;
  v5 = [(AFSiriRequest *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    draftMessageIdentifier = v5->_draftMessageIdentifier;
    v5->_draftMessageIdentifier = v6;
  }

  return v5;
}

@end