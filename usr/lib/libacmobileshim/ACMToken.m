@interface ACMToken
+ (id)tokenWithPrincipal:(id)a3 creationDate:(id)a4 tokenData:(id)a5;
+ (id)tokenWithPrincipal:(id)a3 creationDate:(id)a4 tokenString:(id)a5;
- (NSDate)expirationDate;
- (NSString)tokenString;
- (void)dealloc;
- (void)setExpirationDate:(id)a3;
- (void)setTokenString:(id)a3;
@end

@implementation ACMToken

+ (id)tokenWithPrincipal:(id)a3 creationDate:(id)a4 tokenData:(id)a5
{
  v8 = objc_opt_new();
  [v8 setPrincipal:a3];
  [v8 setCreationDate:a4];
  [v8 setTokenData:a5];

  return v8;
}

+ (id)tokenWithPrincipal:(id)a3 creationDate:(id)a4 tokenString:(id)a5
{
  v8 = objc_opt_new();
  [v8 setPrincipal:a3];
  [v8 setCreationDate:a4];
  [v8 setTokenString:a5];

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

  v5 = [(ACMToken *)self creationDate];

  return [(NSDate *)v5 dateByAddingTimeInterval:300.0];
}

- (void)setExpirationDate:(id)a3
{
  expirationDate = self->_expirationDate;
  if (expirationDate != a3)
  {
    v6 = expirationDate;
    self->_expirationDate = a3;
  }
}

- (NSString)tokenString
{
  v2 = [(ACMToken *)self tokenData];

  return ACFEncodeBase64(v2);
}

- (void)setTokenString:(id)a3
{
  v4 = ACFDecodeBase64(a3);

  [(ACMToken *)self setTokenData:v4];
}

@end