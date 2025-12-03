@interface SBIdleTimerRequestConfiguration
+ (id)configurationWithIdleEventHandler:(id)handler;
+ (id)configurationWithMaximumExpirationTimeout:(double)timeout;
+ (id)configurationWithMinimumExpirationTimeout:(double)timeout;
+ (id)configurationWithMinimumExpirationTimeout:(double)timeout maximumExpirationTimeout:(double)expirationTimeout;
- (SBIdleTimerRequestConfiguration)init;
- (SBIdleTimerRequestConfiguration)initWithBSXPCCoder:(id)coder;
- (SBIdleTimerRequestConfiguration)initWithConfiguration:(id)configuration;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_setIdleEventHandler:(id)handler;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)setMaxExpirationTimeout:(double)timeout;
- (void)setMinExpirationTimeout:(double)timeout;
@end

@implementation SBIdleTimerRequestConfiguration

- (SBIdleTimerRequestConfiguration)init
{
  v3.receiver = self;
  v3.super_class = SBIdleTimerRequestConfiguration;
  result = [(SBIdleTimerRequestConfiguration *)&v3 init];
  if (result)
  {
    result->_precedence = 0;
  }

  return result;
}

- (SBIdleTimerRequestConfiguration)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = SBIdleTimerRequestConfiguration;
  v5 = [(ITIdleTimerConfiguration *)&v11 initWithConfiguration:configurationCopy];
  if (v5)
  {
    _boxed_minExpirationTimeout = [configurationCopy _boxed_minExpirationTimeout];
    boxed_minExpirationTimeout = v5->_boxed_minExpirationTimeout;
    v5->_boxed_minExpirationTimeout = _boxed_minExpirationTimeout;

    _boxed_maxExpirationTimeout = [configurationCopy _boxed_maxExpirationTimeout];
    boxed_maxExpirationTimeout = v5->_boxed_maxExpirationTimeout;
    v5->_boxed_maxExpirationTimeout = _boxed_maxExpirationTimeout;

    v5->_precedence = [configurationCopy precedence];
  }

  return v5;
}

+ (id)configurationWithMinimumExpirationTimeout:(double)timeout
{
  if ((BSFloatGreaterThanFloat() & 1) == 0)
  {
    [(SBIdleTimerRequestConfiguration *)a2 configurationWithMinimumExpirationTimeout:self, timeout];
  }

  v6 = objc_alloc_init(self);
  [v6 setMinExpirationTimeout:timeout];

  return v6;
}

+ (id)configurationWithMaximumExpirationTimeout:(double)timeout
{
  if ((BSFloatGreaterThanFloat() & 1) == 0)
  {
    [(SBIdleTimerRequestConfiguration *)a2 configurationWithMaximumExpirationTimeout:self, timeout];
  }

  v6 = objc_alloc_init(self);
  [v6 setMaxExpirationTimeout:timeout];

  return v6;
}

+ (id)configurationWithMinimumExpirationTimeout:(double)timeout maximumExpirationTimeout:(double)expirationTimeout
{
  if ((BSFloatGreaterThanFloat() & 1) == 0 && (BSFloatGreaterThanFloat() & 1) == 0)
  {
    [(SBIdleTimerRequestConfiguration *)a2 configurationWithMinimumExpirationTimeout:self maximumExpirationTimeout:timeout, expirationTimeout];
  }

  v8 = objc_alloc_init(self);
  if (BSFloatGreaterThanFloat())
  {
    [v8 setMinExpirationTimeout:timeout];
  }

  if (BSFloatGreaterThanFloat())
  {
    [v8 setMaxExpirationTimeout:expirationTimeout];
  }

  return v8;
}

+ (id)configurationWithIdleEventHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(self);
  [v5 _setIdleEventHandler:handlerCopy];

  return v5;
}

- (void)setMinExpirationTimeout:(double)timeout
{
  if (BSFloatGreaterThanFloat())
  {
    self->_boxed_minExpirationTimeout = [MEMORY[0x1E696AD98] numberWithDouble:timeout];
  }

  else if (BSFloatIsZero())
  {
    self->_boxed_minExpirationTimeout = 0;
  }

  else
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    [objc_claimAutoreleasedReturnValue() handleFailureInMethod:a2 object:self file:@"SBIdleTimerRequestConfiguration.m" lineNumber:100 description:{@"Min timeout: %g must be nonnegative", *&timeout}];
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)setMaxExpirationTimeout:(double)timeout
{
  if (BSFloatGreaterThanFloat())
  {
    self->_boxed_maxExpirationTimeout = [MEMORY[0x1E696AD98] numberWithDouble:timeout];
  }

  else if (BSFloatIsZero())
  {
    self->_boxed_maxExpirationTimeout = 0;
  }

  else
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    [objc_claimAutoreleasedReturnValue() handleFailureInMethod:a2 object:self file:@"SBIdleTimerRequestConfiguration.m" lineNumber:118 description:{@"Max timeout: %g must be nonnegative", *&timeout}];
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)_setIdleEventHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v6 = objc_opt_respondsToSelector();
    if (objc_opt_respondsToSelector())
    {
      v7 = v6 & 1 | 2;
    }

    else
    {
      v7 = v6 & 1;
    }

    if (objc_opt_respondsToSelector())
    {
      v7 |= 4uLL;
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__SBIdleTimerRequestConfiguration__setIdleEventHandler___block_invoke;
    v9[3] = &unk_1E735F7C8;
    selfCopy = self;
    v12 = a2;
    v10 = handlerCopy;
    v8 = MEMORY[0x193AFFB30](v9);
    [(ITIdleTimerConfiguration *)self _setIdleEventMask:v7];
    [(ITIdleTimerConfiguration *)self _setIdleEventHandlerBlock:v8];
  }

  else
  {
    [(ITIdleTimerConfiguration *)self _setIdleEventMask:0];
    [(ITIdleTimerConfiguration *)self _setIdleEventHandlerBlock:0];
  }
}

uint64_t __56__SBIdleTimerRequestConfiguration__setIdleEventHandler___block_invoke(void *a1, uint64_t a2)
{
  switch(a2)
  {
    case 4:
      v7 = a1[4];

      return [v7 handleIdleTimerUserAttentionDidReset];
    case 2:
      v6 = a1[4];

      return [v6 handleIdleTimerDidExpire];
    case 1:
      v4 = a1[4];

      return [v4 handleIdleTimerDidWarn];
    default:
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a1[6] object:a1[5] file:@"SBIdleTimerRequestConfiguration.m" lineNumber:144 description:{@"We received an idle eventType: <%lu> which doesn't match any known idle event.", a2}];

      return 1;
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBIdleTimerRequestConfiguration *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v11.receiver = self;
  v11.super_class = SBIdleTimerRequestConfiguration;
  succinctDescriptionBuilder = [(ITIdleTimerConfiguration *)&v11 succinctDescriptionBuilder];
  v4 = succinctDescriptionBuilder;
  precedence = self->_precedence;
  v6 = @"Normal";
  if (precedence == 1)
  {
    v6 = @"High";
  }

  if (precedence == 2)
  {
    v7 = @"Critical";
  }

  else
  {
    v7 = v6;
  }

  [succinctDescriptionBuilder appendString:v7 withName:@"precedence"];
  if ([(SBIdleTimerRequestConfiguration *)self hasMinExpirationTimeout])
  {
    [(SBIdleTimerRequestConfiguration *)self minExpirationTimeout];
    v8 = [v4 appendTimeInterval:@"minExpirationTimeout" withName:0 decomposeUnits:?];
  }

  if ([(SBIdleTimerRequestConfiguration *)self hasMaxExpirationTimeout])
  {
    [(SBIdleTimerRequestConfiguration *)self maxExpirationTimeout];
    v9 = [v4 appendTimeInterval:@"maxExpirationTimeout" withName:0 decomposeUnits:?];
  }

  return v4;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBIdleTimerRequestConfiguration *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (SBIdleTimerRequestConfiguration)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SBIdleTimerRequestConfiguration;
  v5 = [(ITIdleTimerConfiguration *)&v11 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minExpirationTimeout"];
    boxed_minExpirationTimeout = v5->_boxed_minExpirationTimeout;
    v5->_boxed_minExpirationTimeout = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maxExpirationTimeout"];
    boxed_maxExpirationTimeout = v5->_boxed_maxExpirationTimeout;
    v5->_boxed_maxExpirationTimeout = v8;

    v5->_precedence = [coderCopy decodeUInt64ForKey:@"precedence"];
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  if (coder)
  {
    v5.receiver = self;
    v5.super_class = SBIdleTimerRequestConfiguration;
    coderCopy = coder;
    [(ITIdleTimerConfiguration *)&v5 encodeWithBSXPCCoder:coderCopy];
    [coderCopy encodeObject:self->_boxed_minExpirationTimeout forKey:{@"minExpirationTimeout", v5.receiver, v5.super_class}];
    [coderCopy encodeObject:self->_boxed_maxExpirationTimeout forKey:@"maxExpirationTimeout"];
    [coderCopy encodeUInt64:self->_precedence forKey:@"precedence"];
  }
}

+ (void)configurationWithMinimumExpirationTimeout:(double)a3 .cold.1(uint64_t a1, uint64_t a2, double a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBIdleTimerRequestConfiguration.m" lineNumber:45 description:{@"Min timeout: %g must be nonnegative", *&a3}];
}

+ (void)configurationWithMaximumExpirationTimeout:(double)a3 .cold.1(uint64_t a1, uint64_t a2, double a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBIdleTimerRequestConfiguration.m" lineNumber:54 description:{@"Max timeout: %g must be nonnegative", *&a3}];
}

+ (void)configurationWithMinimumExpirationTimeout:(double)a3 maximumExpirationTimeout:(double)a4 .cold.1(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"SBIdleTimerRequestConfiguration.m" lineNumber:63 description:{@"At least either min timeout: %g or max timeout: %g must be nonzero", *&a3, *&a4}];
}

@end