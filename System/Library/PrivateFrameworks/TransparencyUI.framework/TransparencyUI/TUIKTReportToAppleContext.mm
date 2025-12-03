@interface TUIKTReportToAppleContext
- (TUIKTReportToAppleContext)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TUIKTReportToAppleContext

- (TUIKTReportToAppleContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TUIKTReportToAppleContext;
  v5 = [(TUIKTReportToAppleContext *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_failingValidation"];
    failingValidation = v5->_failingValidation;
    v5->_failingValidation = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[TUIKTReportToAppleContext allocWithZone:?]];
  v5 = [(NSUUID *)self->_failingValidation copy];
  failingValidation = v4->_failingValidation;
  v4->_failingValidation = v5;

  return v4;
}

@end