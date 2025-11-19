@interface STShowDraftMessageRequest
- (STShowDraftMessageRequest)initWithCoder:(id)a3;
- (id)_initWithDraftMessageIdentifier:(id)a3;
- (id)createResponse;
- (id)createUsageResult;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STShowDraftMessageRequest

- (STShowDraftMessageRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STShowDraftMessageRequest;
  v5 = [(AFSiriRequest *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_draftMessageIdentifier"];
    draftMessageIdentifier = v5->_draftMessageIdentifier;
    v5->_draftMessageIdentifier = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STShowDraftMessageRequest;
  v4 = a3;
  [(AFSiriRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_draftMessageIdentifier forKey:{@"_draftMessageIdentifier", v5.receiver, v5.super_class}];
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<%@ %p: draftMessageIdentifier=%@>", objc_opt_class(), self, self->_draftMessageIdentifier];

  return v2;
}

- (id)createUsageResult
{
  v3 = [STShowDraftMessageUsageResult alloc];
  v4 = [(AFSiriRequest *)self _originatingAceID];
  v5 = [(AFSiriTaskUsageResult *)v3 _initWithOriginatingAceID:v4];

  return v5;
}

- (id)createResponse
{
  v2 = [objc_alloc(MEMORY[0x277CEF3F8]) _initWithRequest:self];

  return v2;
}

- (id)_initWithDraftMessageIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STShowDraftMessageRequest;
  v5 = [(AFSiriRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    draftMessageIdentifier = v5->_draftMessageIdentifier;
    v5->_draftMessageIdentifier = v6;
  }

  return v5;
}

@end