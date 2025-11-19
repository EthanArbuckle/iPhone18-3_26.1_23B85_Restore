@interface WFFileAccessDialogResponse
- (WFFileAccessDialogResponse)initWithBSXPCCoder:(id)a3;
- (WFFileAccessDialogResponse)initWithCoder:(id)a3;
- (WFFileAccessDialogResponse)initWithFileResponseCode:(unint64_t)a3 error:(id)a4;
- (id)description;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFFileAccessDialogResponse

- (void)encodeWithBSXPCCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFFileAccessDialogResponse;
  v4 = a3;
  [(WFDialogResponse *)&v7 encodeWithBSXPCCoder:v4];
  [v4 encodeInt64:-[WFFileAccessDialogResponse fileResponseCode](self forKey:{"fileResponseCode", v7.receiver, v7.super_class), @"fileResponseCode"}];
  v5 = [(WFFileAccessDialogResponse *)self error];
  v6 = WFEncodableError();
  [v4 encodeObject:v6 forKey:@"error"];
}

- (WFFileAccessDialogResponse)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFFileAccessDialogResponse;
  v5 = [(WFDialogResponse *)&v10 initWithBSXPCCoder:v4];
  if (v5)
  {
    v5->_fileResponseCode = [v4 decodeInt64ForKey:@"fileResponseCode"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFFileAccessDialogResponse;
  v4 = a3;
  [(WFDialogResponse *)&v7 encodeWithCoder:v4];
  [v4 encodeInteger:-[WFFileAccessDialogResponse fileResponseCode](self forKey:{"fileResponseCode", v7.receiver, v7.super_class), @"fileResponseCode"}];
  v5 = [(WFFileAccessDialogResponse *)self error];
  v6 = WFEncodableError();
  [v4 encodeObject:v6 forKey:@"error"];
}

- (WFFileAccessDialogResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFFileAccessDialogResponse;
  v5 = [(WFDialogResponse *)&v10 initWithCoder:v4];
  if (v5)
  {
    v5->_fileResponseCode = [v4 decodeIntegerForKey:@"fileResponseCode"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
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

- (WFFileAccessDialogResponse)initWithFileResponseCode:(unint64_t)a3 error:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = WFFileAccessDialogResponse;
  v8 = [(WFDialogResponse *)&v12 initWithCancelled:a3 == 0];
  v9 = v8;
  if (v8)
  {
    v8->_fileResponseCode = a3;
    objc_storeStrong(&v8->_error, a4);
    v10 = v9;
  }

  return v9;
}

@end