@interface UNCSectionMuteAssertion
+ (id)sectionMuteAssertionUntilDate:(id)date;
- (BOOL)isActiveForThreadIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (UNCSectionMuteAssertion)initWithCoder:(id)coder;
- (id)_initWithExpirationDate:(id)date;
- (void)encodeWithCoder:(id)coder;
- (void)getNextExpirationDate:(id *)date wasPurged:(BOOL *)purged;
@end

@implementation UNCSectionMuteAssertion

+ (id)sectionMuteAssertionUntilDate:(id)date
{
  dateCopy = date;
  v4 = [[UNCSectionMuteAssertion alloc] _initWithExpirationDate:dateCopy];

  return v4;
}

- (id)_initWithExpirationDate:(id)date
{
  dateCopy = date;
  v9.receiver = self;
  v9.super_class = UNCSectionMuteAssertion;
  _init = [(UNCMuteAssertion *)&v9 _init];
  if (_init)
  {
    v6 = [dateCopy copy];
    v7 = _init[1];
    _init[1] = v6;
  }

  return _init;
}

- (BOOL)isActiveForThreadIdentifier:(id)identifier
{
  v4 = [MEMORY[0x1E695DF00] now];
  LOBYTE(self) = [(NSDate *)self->_expirationDate compare:v4]== NSOrderedDescending;

  return self;
}

- (void)getNextExpirationDate:(id *)date wasPurged:(BOOL *)purged
{
  v7 = [(UNCSectionMuteAssertion *)self isActiveForThreadIdentifier:0];
  expirationDate = 0;
  if (v7)
  {
    expirationDate = self->_expirationDate;
  }

  *date = expirationDate;
  *purged = 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass())) && (v5 = equalCopy) != 0)
  {
    v6 = v5;
    expirationDate = self->_expirationDate;
    v8 = v6[1];
    v9 = BSEqualObjects();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = UNCSectionMuteAssertion;
  coderCopy = coder;
  [(UNCMuteAssertion *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_expirationDate forKey:{@"expirationDate", v5.receiver, v5.super_class}];
}

- (UNCSectionMuteAssertion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = UNCSectionMuteAssertion;
  v5 = [(UNCMuteAssertion *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v6;
  }

  return v5;
}

@end