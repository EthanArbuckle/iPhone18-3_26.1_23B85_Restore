@interface SLFetchShareableContentActionResponse
+ (id)responseWithResult:(id)result;
- (SLFetchShareableContentActionResponse)initWithBSXPCCoder:(id)coder;
- (SLFetchShareableContentActionResponse)initWithCoder:(id)coder;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SLFetchShareableContentActionResponse

+ (id)responseWithResult:(id)result
{
  resultCopy = result;
  response = [self response];
  [response setResult:resultCopy];

  return response;
}

- (SLFetchShareableContentActionResponse)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SLFetchShareableContentActionResponse;
  v5 = [(SLShareableContentActionResponse *)&v11 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_result);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    v9 = v5->_result;
    v5->_result = v8;
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  result = [(SLFetchShareableContentActionResponse *)self result];
  v6 = NSStringFromSelector(sel_result);
  [coderCopy encodeObject:result forKey:v6];

  v7.receiver = self;
  v7.super_class = SLFetchShareableContentActionResponse;
  [(SLShareableContentActionResponse *)&v7 encodeWithBSXPCCoder:coderCopy];
}

- (SLFetchShareableContentActionResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SLFetchShareableContentActionResponse;
  v5 = [(SLShareableContentActionResponse *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_result);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    v9 = v5->_result;
    v5->_result = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  result = [(SLFetchShareableContentActionResponse *)self result];
  v6 = NSStringFromSelector(sel_result);
  [coderCopy encodeObject:result forKey:v6];

  v7.receiver = self;
  v7.super_class = SLFetchShareableContentActionResponse;
  [(SLShareableContentActionResponse *)&v7 encodeWithCoder:coderCopy];
}

@end