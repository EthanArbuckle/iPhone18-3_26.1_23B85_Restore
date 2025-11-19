@interface TPSResponse
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToResponse:(id)a3;
- (NSString)debugDescription;
- (TPSResponse)init;
- (TPSResponse)initWithCoder:(id)a3;
- (TPSResponse)initWithSubscriptionContext:(id)a3 error:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSResponse

- (TPSResponse)init
{
  [(TPSResponse *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TPSResponse)initWithSubscriptionContext:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TPSResponse;
  v9 = [(TPSResponse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_error, a4);
    objc_storeStrong(&v10->_subscriptionContext, a3);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  error = self->_error;
  subscriptionContext = self->_subscriptionContext;

  return [v4 initWithSubscriptionContext:subscriptionContext error:error];
}

- (void)encodeWithCoder:(id)a3
{
  error = self->_error;
  v5 = a3;
  v6 = NSStringFromSelector(sel_error);
  [v5 encodeObject:error forKey:v6];

  subscriptionContext = self->_subscriptionContext;
  v8 = NSStringFromSelector(sel_subscriptionContext);
  [v5 encodeObject:subscriptionContext forKey:v8];
}

- (TPSResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = TPSResponse;
  v5 = [(TPSResponse *)&v15 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_error);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    error = v5->_error;
    v5->_error = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_subscriptionContext);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    subscriptionContext = v5->_subscriptionContext;
    v5->_subscriptionContext = v12;
  }

  return v5;
}

- (NSString)debugDescription
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v4 = NSStringFromSelector(sel_subscriptionContext);
  v5 = [(TPSResponse *)self subscriptionContext];
  [v3 appendFormat:@"%@=%@", v4, v5];

  [v3 appendFormat:@", "];
  v6 = NSStringFromSelector(sel_error);
  v7 = [(TPSResponse *)self error];
  [v3 appendFormat:@"%@=%@", v6, v7];

  [v3 appendFormat:@">"];
  v8 = [v3 copy];

  return v8;
}

- (unint64_t)hash
{
  v3 = [(TPSResponse *)self error];
  v4 = [v3 hash];
  v5 = [(TPSResponse *)self subscriptionContext];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TPSResponse *)self isEqualToResponse:v4];
  }

  return v5;
}

- (BOOL)isEqualToResponse:(id)a3
{
  v4 = a3;
  v5 = [(TPSResponse *)self error];
  v6 = [v4 error];
  v7 = v5;
  v8 = v6;
  v9 = v8;
  if (!(v7 | v8))
  {
LABEL_4:
    v11 = [(TPSResponse *)self subscriptionContext];
    v12 = [v4 subscriptionContext];
    v13 = (v11 | v12) == 0;
    if (v12)
    {
      v13 = [v11 isEqual:v12];
    }

    goto LABEL_8;
  }

  if (v8)
  {
    v10 = [v7 isEqual:v8];

    if (!v10)
    {
      v13 = 0;
      goto LABEL_9;
    }

    goto LABEL_4;
  }

  v13 = 0;
  v11 = v7;
LABEL_8:

LABEL_9:
  return v13;
}

+ (id)unarchivedObjectClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, objc_opt_class(), 0}];
}

+ (id)unarchivedObjectFromData:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCAAC8];
  v7 = a3;
  v8 = [a1 unarchivedObjectClasses];
  v9 = [v6 unarchivedObjectOfClasses:v8 fromData:v7 error:a4];

  return v9;
}

@end