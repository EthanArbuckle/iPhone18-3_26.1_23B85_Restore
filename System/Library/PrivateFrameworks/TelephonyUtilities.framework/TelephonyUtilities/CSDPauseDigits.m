@interface CSDPauseDigits
- (CSDPauseDigits)init;
- (CSDPauseDigits)initWithDigits:(id)a3 isHardPause:(BOOL)a4;
- (id)description;
@end

@implementation CSDPauseDigits

- (CSDPauseDigits)init
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CSDPauseDigits.m" lineNumber:21 description:{@"%s is not available. Use a designated initializer instead.", "-[CSDPauseDigits init]"}];

  return 0;
}

- (CSDPauseDigits)initWithDigits:(id)a3 isHardPause:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CSDPauseDigits;
  v8 = [(CSDPauseDigits *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_digits, a3);
    v9->_hardPause = a4;
  }

  return v9;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(CSDPauseDigits *)self digits];
  v5 = [NSString stringWithFormat:@"<%@ %p digits=%@ isHardPause=%d>", v3, self, v4, [(CSDPauseDigits *)self isHardPause]];

  return v5;
}

@end