@interface WFFileAccessDialogResponse
- (WFFileAccessDialogResponse)initWithBSXPCCoder:(id)coder;
- (WFFileAccessDialogResponse)initWithCoder:(id)coder;
- (WFFileAccessDialogResponse)initWithFileResponseCode:(unint64_t)code error:(id)error;
- (id)description;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFFileAccessDialogResponse

- (void)encodeWithBSXPCCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = WFFileAccessDialogResponse;
  coderCopy = coder;
  [(WFDialogResponse *)&v7 encodeWithBSXPCCoder:coderCopy];
  [coderCopy encodeInt64:-[WFFileAccessDialogResponse fileResponseCode](self forKey:{"fileResponseCode", v7.receiver, v7.super_class), @"fileResponseCode"}];
  error = [(WFFileAccessDialogResponse *)self error];
  v6 = WFEncodableError();
  [coderCopy encodeObject:v6 forKey:@"error"];
}

- (WFFileAccessDialogResponse)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFFileAccessDialogResponse;
  v5 = [(WFDialogResponse *)&v10 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v5->_fileResponseCode = [coderCopy decodeInt64ForKey:@"fileResponseCode"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = WFFileAccessDialogResponse;
  coderCopy = coder;
  [(WFDialogResponse *)&v7 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[WFFileAccessDialogResponse fileResponseCode](self forKey:{"fileResponseCode", v7.receiver, v7.super_class), @"fileResponseCode"}];
  error = [(WFFileAccessDialogResponse *)self error];
  v6 = WFEncodableError();
  [coderCopy encodeObject:v6 forKey:@"error"];
}

- (WFFileAccessDialogResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFFileAccessDialogResponse;
  v5 = [(WFDialogResponse *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_fileResponseCode = [coderCopy decodeIntegerForKey:@"fileResponseCode"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v6;

    v8 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p, responseCode: %tu>", v5, self, -[WFFileAccessDialogResponse fileResponseCode](self, "fileResponseCode")];

  return v6;
}

- (WFFileAccessDialogResponse)initWithFileResponseCode:(unint64_t)code error:(id)error
{
  errorCopy = error;
  v12.receiver = self;
  v12.super_class = WFFileAccessDialogResponse;
  v8 = [(WFDialogResponse *)&v12 initWithCancelled:code == 0];
  v9 = v8;
  if (v8)
  {
    v8->_fileResponseCode = code;
    objc_storeStrong(&v8->_error, error);
    v10 = v9;
  }

  return v9;
}

@end