@interface WFDialogResponse
- (NSString)description;
- (WFDialogResponse)initWithBSXPCCoder:(id)coder;
- (WFDialogResponse)initWithCancelled:(BOOL)cancelled;
- (WFDialogResponse)initWithCoder:(id)coder;
- (WFDialogResponse)initWithResponseCode:(int64_t)code;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFDialogResponse

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[WFDialogResponse responseCode](self forKey:{"responseCode"), @"responseCode"}];
  context = [(WFDialogResponse *)self context];
  [coderCopy encodeObject:context forKey:@"context"];
}

- (WFDialogResponse)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFDialogResponse;
  v5 = [(WFDialogResponse *)&v10 init];
  if (v5)
  {
    v5->_responseCode = [coderCopy decodeInt64ForKey:@"responseCode"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    context = v5->_context;
    v5->_context = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[WFDialogResponse responseCode](self forKey:{"responseCode"), @"responseCode"}];
  context = [(WFDialogResponse *)self context];
  [coderCopy encodeObject:context forKey:@"context"];
}

- (WFDialogResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFDialogResponse;
  v5 = [(WFDialogResponse *)&v10 init];
  if (v5)
  {
    v5->_responseCode = [coderCopy decodeIntegerForKey:@"responseCode"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"context"];
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
  responseCode = [(WFDialogResponse *)self responseCode];
  if ((responseCode - 1) > 5)
  {
    v7 = @"Success";
  }

  else
  {
    v7 = off_1E7B016B8[responseCode - 1];
  }

  v8 = [v3 stringWithFormat:@"<%@: %p, responseCode: %@>", v5, self, v7];

  return v8;
}

- (WFDialogResponse)initWithResponseCode:(int64_t)code
{
  v8.receiver = self;
  v8.super_class = WFDialogResponse;
  v4 = [(WFDialogResponse *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_responseCode = code;
    v6 = v4;
  }

  return v5;
}

- (WFDialogResponse)initWithCancelled:(BOOL)cancelled
{
  cancelledCopy = cancelled;
  v9.receiver = self;
  v9.super_class = WFDialogResponse;
  v4 = [(WFDialogResponse *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v6 = 2;
    if (!cancelledCopy)
    {
      v6 = 0;
    }

    v4->_responseCode = v6;
    v7 = v4;
  }

  return v5;
}

@end