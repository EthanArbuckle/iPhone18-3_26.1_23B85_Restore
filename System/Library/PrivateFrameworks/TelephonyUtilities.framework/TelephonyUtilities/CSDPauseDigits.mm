@interface CSDPauseDigits
- (CSDPauseDigits)init;
- (CSDPauseDigits)initWithDigits:(id)digits isHardPause:(BOOL)pause;
- (id)description;
@end

@implementation CSDPauseDigits

- (CSDPauseDigits)init
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CSDPauseDigits.m" lineNumber:21 description:{@"%s is not available. Use a designated initializer instead.", "-[CSDPauseDigits init]"}];

  return 0;
}

- (CSDPauseDigits)initWithDigits:(id)digits isHardPause:(BOOL)pause
{
  digitsCopy = digits;
  v11.receiver = self;
  v11.super_class = CSDPauseDigits;
  v8 = [(CSDPauseDigits *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_digits, digits);
    v9->_hardPause = pause;
  }

  return v9;
}

- (id)description
{
  v3 = objc_opt_class();
  digits = [(CSDPauseDigits *)self digits];
  v5 = [NSString stringWithFormat:@"<%@ %p digits=%@ isHardPause=%d>", v3, self, digits, [(CSDPauseDigits *)self isHardPause]];

  return v5;
}

@end