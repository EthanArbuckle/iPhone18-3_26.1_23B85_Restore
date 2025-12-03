@interface TPSResponse
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToResponse:(id)response;
- (NSString)debugDescription;
- (TPSResponse)init;
- (TPSResponse)initWithCoder:(id)coder;
- (TPSResponse)initWithSubscriptionContext:(id)context error:(id)error;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSResponse

- (TPSResponse)init
{
  [(TPSResponse *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TPSResponse)initWithSubscriptionContext:(id)context error:(id)error
{
  contextCopy = context;
  errorCopy = error;
  v12.receiver = self;
  v12.super_class = TPSResponse;
  v9 = [(TPSResponse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_error, error);
    objc_storeStrong(&v10->_subscriptionContext, context);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  error = self->_error;
  subscriptionContext = self->_subscriptionContext;

  return [v4 initWithSubscriptionContext:subscriptionContext error:error];
}

- (void)encodeWithCoder:(id)coder
{
  error = self->_error;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_error);
  [coderCopy encodeObject:error forKey:v6];

  subscriptionContext = self->_subscriptionContext;
  v8 = NSStringFromSelector(sel_subscriptionContext);
  [coderCopy encodeObject:subscriptionContext forKey:v8];
}

- (TPSResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = TPSResponse;
  v5 = [(TPSResponse *)&v15 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_error);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    error = v5->_error;
    v5->_error = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_subscriptionContext);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
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
  subscriptionContext = [(TPSResponse *)self subscriptionContext];
  [v3 appendFormat:@"%@=%@", v4, subscriptionContext];

  [v3 appendFormat:@", "];
  v6 = NSStringFromSelector(sel_error);
  error = [(TPSResponse *)self error];
  [v3 appendFormat:@"%@=%@", v6, error];

  [v3 appendFormat:@">"];
  v8 = [v3 copy];

  return v8;
}

- (unint64_t)hash
{
  error = [(TPSResponse *)self error];
  v4 = [error hash];
  subscriptionContext = [(TPSResponse *)self subscriptionContext];
  v6 = [subscriptionContext hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TPSResponse *)self isEqualToResponse:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToResponse:(id)response
{
  responseCopy = response;
  error = [(TPSResponse *)self error];
  error2 = [responseCopy error];
  v7 = error;
  v8 = error2;
  v9 = v8;
  if (!(v7 | v8))
  {
LABEL_4:
    subscriptionContext = [(TPSResponse *)self subscriptionContext];
    subscriptionContext2 = [responseCopy subscriptionContext];
    v13 = (subscriptionContext | subscriptionContext2) == 0;
    if (subscriptionContext2)
    {
      v13 = [subscriptionContext isEqual:subscriptionContext2];
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
  subscriptionContext = v7;
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

+ (id)unarchivedObjectFromData:(id)data error:(id *)error
{
  v6 = MEMORY[0x277CCAAC8];
  dataCopy = data;
  unarchivedObjectClasses = [self unarchivedObjectClasses];
  v9 = [v6 unarchivedObjectOfClasses:unarchivedObjectClasses fromData:dataCopy error:error];

  return v9;
}

@end