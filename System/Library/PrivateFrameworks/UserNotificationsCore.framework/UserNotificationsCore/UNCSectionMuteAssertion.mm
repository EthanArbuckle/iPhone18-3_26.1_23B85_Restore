@interface UNCSectionMuteAssertion
+ (id)sectionMuteAssertionUntilDate:(id)a3;
- (BOOL)isActiveForThreadIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (UNCSectionMuteAssertion)initWithCoder:(id)a3;
- (id)_initWithExpirationDate:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)getNextExpirationDate:(id *)a3 wasPurged:(BOOL *)a4;
@end

@implementation UNCSectionMuteAssertion

+ (id)sectionMuteAssertionUntilDate:(id)a3
{
  v3 = a3;
  v4 = [[UNCSectionMuteAssertion alloc] _initWithExpirationDate:v3];

  return v4;
}

- (id)_initWithExpirationDate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UNCSectionMuteAssertion;
  v5 = [(UNCMuteAssertion *)&v9 _init];
  if (v5)
  {
    v6 = [v4 copy];
    v7 = v5[1];
    v5[1] = v6;
  }

  return v5;
}

- (BOOL)isActiveForThreadIdentifier:(id)a3
{
  v4 = [MEMORY[0x1E695DF00] now];
  LOBYTE(self) = [(NSDate *)self->_expirationDate compare:v4]== NSOrderedDescending;

  return self;
}

- (void)getNextExpirationDate:(id *)a3 wasPurged:(BOOL *)a4
{
  v7 = [(UNCSectionMuteAssertion *)self isActiveForThreadIdentifier:0];
  expirationDate = 0;
  if (v7)
  {
    expirationDate = self->_expirationDate;
  }

  *a3 = expirationDate;
  *a4 = 0;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass())) && (v5 = v4) != 0)
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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = UNCSectionMuteAssertion;
  v4 = a3;
  [(UNCMuteAssertion *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_expirationDate forKey:{@"expirationDate", v5.receiver, v5.super_class}];
}

- (UNCSectionMuteAssertion)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UNCSectionMuteAssertion;
  v5 = [(UNCMuteAssertion *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v6;
  }

  return v5;
}

@end