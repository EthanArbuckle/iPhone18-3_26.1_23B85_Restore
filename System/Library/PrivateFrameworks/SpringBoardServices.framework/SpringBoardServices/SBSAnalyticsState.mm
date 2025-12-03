@interface SBSAnalyticsState
+ (id)withTimestamp:(double)timestamp payload:(id)payload;
- (SBSAnalyticsState)initWithTimestamp:(double)timestamp payload:(id)payload;
- (id)coreAnalyticsRepresentation;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation SBSAnalyticsState

+ (id)withTimestamp:(double)timestamp payload:(id)payload
{
  payloadCopy = payload;
  v7 = [[self alloc] initWithTimestamp:payloadCopy payload:timestamp];

  return v7;
}

- (SBSAnalyticsState)initWithTimestamp:(double)timestamp payload:(id)payload
{
  payloadCopy = payload;
  v8 = payloadCopy;
  if (payloadCopy && (_SBSupportedType(payloadCopy) & 1) == 0)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"payload must contain only NSDictionary userInfo:{NSArray, NSNumber, NSData, NString, NSNull objects", 0}];
    objc_exception_throw(v12);
  }

  v13.receiver = self;
  v13.super_class = SBSAnalyticsState;
  v9 = [(SBSAnalyticsState *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_timestamp = timestamp;
    objc_storeStrong(&v9->_payload, payload);
  }

  return v10;
}

- (id)coreAnalyticsRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:self->_payload];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timestamp];
  [v3 setObject:v4 forKeyedSubscript:@"kSBSAnalyticsTimestamp"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBSAnalyticsState *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x1E698E680];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__SBSAnalyticsState_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E735F7F0;
  v7 = v6;
  v11 = v7;
  selfCopy = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];

  v8 = v7;
  return v7;
}

uint64_t __59__SBSAnalyticsState_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendTimeInterval:@"timestamp" withName:0 decomposeUnits:*(*(a1 + 40) + 8)];
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 16);

  return [v3 appendDictionarySection:v4 withName:@"payload" skipIfEmpty:1];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBSAnalyticsState *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendTimeInterval:@"timestamp" withName:0 decomposeUnits:self->_timestamp];

  return v3;
}

@end