@interface WFDialogResponse
- (NSString)description;
- (WFDialogResponse)initWithBSXPCCoder:(id)a3;
- (WFDialogResponse)initWithCancelled:(BOOL)a3;
- (WFDialogResponse)initWithCoder:(id)a3;
- (WFDialogResponse)initWithResponseCode:(int64_t)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFDialogResponse

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:-[WFDialogResponse responseCode](self forKey:{"responseCode"), @"responseCode"}];
  v5 = [(WFDialogResponse *)self context];
  [v4 encodeObject:v5 forKey:@"context"];
}

- (WFDialogResponse)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFDialogResponse;
  v5 = [(WFDialogResponse *)&v10 init];
  if (v5)
  {
    v5->_responseCode = [v4 decodeInt64ForKey:@"responseCode"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    context = v5->_context;
    v5->_context = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[WFDialogResponse responseCode](self forKey:{"responseCode"), @"responseCode"}];
  v5 = [(WFDialogResponse *)self context];
  [v4 encodeObject:v5 forKey:@"context"];
}

- (WFDialogResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFDialogResponse;
  v5 = [(WFDialogResponse *)&v10 init];
  if (v5)
  {
    v5->_responseCode = [v4 decodeIntegerForKey:@"responseCode"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    context = v5->_context;
    v5->_context = v6;

    v8 = v5;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFDialogResponse *)self responseCode];
  if ((v6 - 1) > 5)
  {
    v7 = @"Success";
  }

  else
  {
    v7 = off_1E7B016B8[v6 - 1];
  }

  v8 = [v3 stringWithFormat:@"<%@: %p, responseCode: %@>", v5, self, v7];

  return v8;
}

- (WFDialogResponse)initWithResponseCode:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = WFDialogResponse;
  v4 = [(WFDialogResponse *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_responseCode = a3;
    v6 = v4;
  }

  return v5;
}

- (WFDialogResponse)initWithCancelled:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = WFDialogResponse;
  v4 = [(WFDialogResponse *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v6 = 2;
    if (!v3)
    {
      v6 = 0;
    }

    v4->_responseCode = v6;
    v7 = v4;
  }

  return v5;
}

@end