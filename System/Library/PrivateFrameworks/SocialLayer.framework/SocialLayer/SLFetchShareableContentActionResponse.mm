@interface SLFetchShareableContentActionResponse
+ (id)responseWithResult:(id)a3;
- (SLFetchShareableContentActionResponse)initWithBSXPCCoder:(id)a3;
- (SLFetchShareableContentActionResponse)initWithCoder:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SLFetchShareableContentActionResponse

+ (id)responseWithResult:(id)a3
{
  v4 = a3;
  v5 = [a1 response];
  [v5 setResult:v4];

  return v5;
}

- (SLFetchShareableContentActionResponse)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SLFetchShareableContentActionResponse;
  v5 = [(SLShareableContentActionResponse *)&v11 initWithBSXPCCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_result);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    v9 = v5->_result;
    v5->_result = v8;
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(SLFetchShareableContentActionResponse *)self result];
  v6 = NSStringFromSelector(sel_result);
  [v4 encodeObject:v5 forKey:v6];

  v7.receiver = self;
  v7.super_class = SLFetchShareableContentActionResponse;
  [(SLShareableContentActionResponse *)&v7 encodeWithBSXPCCoder:v4];
}

- (SLFetchShareableContentActionResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SLFetchShareableContentActionResponse;
  v5 = [(SLShareableContentActionResponse *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_result);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    v9 = v5->_result;
    v5->_result = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SLFetchShareableContentActionResponse *)self result];
  v6 = NSStringFromSelector(sel_result);
  [v4 encodeObject:v5 forKey:v6];

  v7.receiver = self;
  v7.super_class = SLFetchShareableContentActionResponse;
  [(SLShareableContentActionResponse *)&v7 encodeWithCoder:v4];
}

@end