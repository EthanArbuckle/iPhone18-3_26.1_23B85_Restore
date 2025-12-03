@interface ACMToken
+ (id)tokenWithPrincipal:(id)principal creationDate:(id)date tokenData:(id)data;
+ (id)tokenWithPrincipal:(id)principal creationDate:(id)date tokenString:(id)string;
- (NSDate)expirationDate;
- (NSString)tokenString;
- (void)dealloc;
- (void)setExpirationDate:(id)date;
- (void)setTokenString:(id)string;
@end

@implementation ACMToken

+ (id)tokenWithPrincipal:(id)principal creationDate:(id)date tokenData:(id)data
{
  v8 = objc_opt_new();
  [v8 setPrincipal:principal];
  [v8 setCreationDate:date];
  [v8 setTokenData:data];

  return v8;
}

+ (id)tokenWithPrincipal:(id)principal creationDate:(id)date tokenString:(id)string
{
  v8 = objc_opt_new();
  [v8 setPrincipal:principal];
  [v8 setCreationDate:date];
  [v8 setTokenString:string];

  return v8;
}

- (void)dealloc
{
  [(ACMToken *)self setTokenData:0];
  [(ACMToken *)self setPrincipal:0];
  [(ACMToken *)self setCreationDate:0];
  [(ACMToken *)self setExpirationDate:0];
  [(ACMToken *)self setNonce:0];
  [(ACMToken *)self setUserPreferences:0];
  [(ACMToken *)self setPersonID:0];
  [(ACMToken *)self setIsTwoStepVerificationRequired:0];
  v3.receiver = self;
  v3.super_class = ACMToken;
  [(ACMToken *)&v3 dealloc];
}

- (NSDate)expirationDate
{
  if (self->_expirationDate)
  {
    return self->_expirationDate;
  }

  creationDate = [(ACMToken *)self creationDate];

  return [(NSDate *)creationDate dateByAddingTimeInterval:300.0];
}

- (void)setExpirationDate:(id)date
{
  expirationDate = self->_expirationDate;
  if (expirationDate != date)
  {
    v6 = expirationDate;
    self->_expirationDate = date;
  }
}

- (NSString)tokenString
{
  tokenData = [(ACMToken *)self tokenData];

  return ACFEncodeBase64(tokenData);
}

- (void)setTokenString:(id)string
{
  v4 = ACFDecodeBase64(string);

  [(ACMToken *)self setTokenData:v4];
}

@end