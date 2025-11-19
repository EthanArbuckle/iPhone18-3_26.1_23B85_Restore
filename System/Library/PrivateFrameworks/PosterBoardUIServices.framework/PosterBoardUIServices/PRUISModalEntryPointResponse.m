@interface PRUISModalEntryPointResponse
+ (id)cancel;
+ (id)done;
- (PRUISModalEntryPointResponse)initWithBSXPCCoder:(id)a3;
- (PRUISModalEntryPointResponse)initWithEntryPointResult:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PRUISModalEntryPointResponse

+ (id)cancel
{
  v2 = [[a1 alloc] initWithEntryPointResult:0];

  return v2;
}

+ (id)done
{
  v2 = [[a1 alloc] initWithEntryPointResult:1];

  return v2;
}

- (PRUISModalEntryPointResponse)initWithEntryPointResult:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = PRUISModalEntryPointResponse;
  v4 = [(PRUISModalEntryPointResponse *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_result = a3 == 1;
    v4->_entryPointResult = a3;
    v6 = v4;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  entryPointResult = self->_entryPointResult;

  return [v4 initWithEntryPointResult:entryPointResult];
}

- (PRUISModalEntryPointResponse)initWithBSXPCCoder:(id)a3
{
  v4 = [a3 decodeInt64ForKey:@"result"];

  return [(PRUISModalEntryPointResponse *)self initWithResult:v4];
}

@end