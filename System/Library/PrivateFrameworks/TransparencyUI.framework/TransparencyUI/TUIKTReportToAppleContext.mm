@interface TUIKTReportToAppleContext
- (TUIKTReportToAppleContext)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TUIKTReportToAppleContext

- (TUIKTReportToAppleContext)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TUIKTReportToAppleContext;
  v5 = [(TUIKTReportToAppleContext *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_failingValidation"];
    failingValidation = v5->_failingValidation;
    v5->_failingValidation = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[TUIKTReportToAppleContext allocWithZone:?]];
  v5 = [(NSUUID *)self->_failingValidation copy];
  failingValidation = v4->_failingValidation;
  v4->_failingValidation = v5;

  return v4;
}

@end