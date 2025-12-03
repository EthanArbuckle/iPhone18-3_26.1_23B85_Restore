@interface PRUISModalEntryPointResponse
+ (id)cancel;
+ (id)done;
- (PRUISModalEntryPointResponse)initWithBSXPCCoder:(id)coder;
- (PRUISModalEntryPointResponse)initWithEntryPointResult:(int64_t)result;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PRUISModalEntryPointResponse

+ (id)cancel
{
  v2 = [[self alloc] initWithEntryPointResult:0];

  return v2;
}

+ (id)done
{
  v2 = [[self alloc] initWithEntryPointResult:1];

  return v2;
}

- (PRUISModalEntryPointResponse)initWithEntryPointResult:(int64_t)result
{
  v8.receiver = self;
  v8.super_class = PRUISModalEntryPointResponse;
  v4 = [(PRUISModalEntryPointResponse *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_result = result == 1;
    v4->_entryPointResult = result;
    v6 = v4;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  entryPointResult = self->_entryPointResult;

  return [v4 initWithEntryPointResult:entryPointResult];
}

- (PRUISModalEntryPointResponse)initWithBSXPCCoder:(id)coder
{
  v4 = [coder decodeInt64ForKey:@"result"];

  return [(PRUISModalEntryPointResponse *)self initWithResult:v4];
}

@end