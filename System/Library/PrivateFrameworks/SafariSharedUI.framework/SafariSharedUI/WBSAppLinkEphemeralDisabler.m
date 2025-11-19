@interface WBSAppLinkEphemeralDisabler
+ (id)defaultDisabler;
- (BOOL)shouldDisableAppLink:(id)a3;
- (WBSAppLinkEphemeralDisabler)init;
- (void)disableAppLink:(id)a3;
@end

@implementation WBSAppLinkEphemeralDisabler

- (WBSAppLinkEphemeralDisabler)init
{
  v7.receiver = self;
  v7.super_class = WBSAppLinkEphemeralDisabler;
  v2 = [(WBSAppLinkEphemeralDisabler *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    appLinks = v2->_appLinks;
    v2->_appLinks = v3;

    v5 = v2;
  }

  return v2;
}

+ (id)defaultDisabler
{
  if (defaultDisabler_onceToken != -1)
  {
    +[WBSAppLinkEphemeralDisabler defaultDisabler];
  }

  v3 = defaultDisabler_defaultDisabler;

  return v3;
}

void __46__WBSAppLinkEphemeralDisabler_defaultDisabler__block_invoke()
{
  v0 = objc_alloc_init(WBSAppLinkEphemeralDisabler);
  v1 = defaultDisabler_defaultDisabler;
  defaultDisabler_defaultDisabler = v0;
}

- (void)disableAppLink:(id)a3
{
  if (a3)
  {
    v4 = [a3 targetApplicationRecord];
    if (v4)
    {
      v6 = v4;
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
      [(NSMutableDictionary *)self->_appLinks setObject:v5 forKeyedSubscript:v6];

      v4 = v6;
    }
  }
}

- (BOOL)shouldDisableAppLink:(id)a3
{
  if (a3)
  {
    v4 = [a3 targetApplicationRecord];
    if (!v4)
    {
      v10 = 0;
LABEL_11:

      return v10;
    }

    v5 = [(NSMutableDictionary *)self->_appLinks objectForKey:v4];
    v6 = v5;
    if (v5)
    {
      [v5 doubleValue];
      v8 = v7;
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      if (v9 - v8 < 480.0)
      {
        v10 = 1;
LABEL_10:

        goto LABEL_11;
      }

      [(NSMutableDictionary *)self->_appLinks removeObjectForKey:v4];
    }

    v10 = 0;
    goto LABEL_10;
  }

  return 0;
}

@end