@interface SBInvalidationDodgingModifierEventResponse
+ (id)responseWithOptions:(unint64_t)options;
- (SBInvalidationDodgingModifierEventResponse)initWithOptions:(unint64_t)options;
- (id)description;
@end

@implementation SBInvalidationDodgingModifierEventResponse

+ (id)responseWithOptions:(unint64_t)options
{
  v3 = [[SBInvalidationDodgingModifierEventResponse alloc] initWithOptions:options];

  return v3;
}

- (SBInvalidationDodgingModifierEventResponse)initWithOptions:(unint64_t)options
{
  v5.receiver = self;
  v5.super_class = SBInvalidationDodgingModifierEventResponse;
  result = [(SBChainableModifierEventResponse *)&v5 init];
  if (result)
  {
    result->_options = options;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SBInvalidationDodgingModifierEventResponse;
  v4 = [(SBDodgingModifierEventResponse *)&v8 description];
  v5 = SBStringFromInvalidationEventResponseOptions(self->_options);
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end