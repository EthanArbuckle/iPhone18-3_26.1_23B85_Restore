@interface SBHardwareButtonDropletActionResponse
- (SBHardwareButtonDropletActionResponse)initWithPreludeToken:(id)token zoomUpToken:(id)upToken appLayout:(id)layout action:(unint64_t)action;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation SBHardwareButtonDropletActionResponse

- (SBHardwareButtonDropletActionResponse)initWithPreludeToken:(id)token zoomUpToken:(id)upToken appLayout:(id)layout action:(unint64_t)action
{
  tokenCopy = token;
  upTokenCopy = upToken;
  layoutCopy = layout;
  v18.receiver = self;
  v18.super_class = SBHardwareButtonDropletActionResponse;
  v15 = [(SBChainableModifierEventResponse *)&v18 init];
  if (v15)
  {
    if (action != 1)
    {
      if (!action)
      {
        if (tokenCopy)
        {
          if (!layoutCopy)
          {
LABEL_6:
            v16 = 34;
LABEL_15:
            [SBHardwareButtonDropletActionResponse initWithPreludeToken:a2 zoomUpToken:v15 appLayout:v16 action:?];
          }
        }

        else
        {
          [SBHardwareButtonDropletActionResponse initWithPreludeToken:a2 zoomUpToken:v15 appLayout:? action:?];
          if (!layoutCopy)
          {
            goto LABEL_6;
          }
        }
      }

LABEL_9:
      v15->_action = action;
      objc_storeStrong(&v15->_preludeToken, token);
      objc_storeStrong(&v15->_zoomUpToken, upToken);
      objc_storeStrong(&v15->_appLayout, layout);
      goto LABEL_10;
    }

    if (tokenCopy | upTokenCopy)
    {
      if (layoutCopy)
      {
        goto LABEL_9;
      }
    }

    else
    {
      [SBHardwareButtonDropletActionResponse initWithPreludeToken:a2 zoomUpToken:v15 appLayout:? action:?];
      if (layoutCopy)
      {
        goto LABEL_9;
      }
    }

    v16 = 39;
    goto LABEL_15;
  }

LABEL_10:

  return v15;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v10.receiver = self;
  v10.super_class = SBHardwareButtonDropletActionResponse;
  v4 = [(SBChainableModifierEventResponse *)&v10 descriptionBuilderWithMultilinePrefix:prefix];
  v5 = [v4 appendObject:self->_preludeToken withName:@"preludeToken"];
  v6 = [v4 appendObject:self->_zoomUpToken withName:@"zoomUpToken"];
  v7 = [v4 appendObject:self->_appLayout withName:@"appLayout"];
  v8 = [v4 appendInteger:self->_action withName:@"action"];

  return v4;
}

- (void)initWithPreludeToken:(uint64_t)a1 zoomUpToken:(uint64_t)a2 appLayout:action:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBHardwareButtonDropletActionResponse.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"zoomUpToken != nil || preludeToken != nil"}];
}

- (void)initWithPreludeToken:(uint64_t)a1 zoomUpToken:(uint64_t)a2 appLayout:action:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBHardwareButtonDropletActionResponse.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"preludeToken != nil"}];
}

- (void)initWithPreludeToken:(uint64_t)a3 zoomUpToken:appLayout:action:.cold.3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBHardwareButtonDropletActionResponse.m" lineNumber:a3 description:{@"Invalid parameter not satisfying: %@", @"appLayout != nil"}];
}

@end