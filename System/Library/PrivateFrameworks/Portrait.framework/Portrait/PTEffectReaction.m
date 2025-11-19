@interface PTEffectReaction
- (PTEffectReaction)init;
- (id)emoji;
- (void)emoji;
@end

@implementation PTEffectReaction

- (PTEffectReaction)init
{
  v8.receiver = self;
  v8.super_class = PTEffectReaction;
  v2 = [(PTEffectReaction *)&v8 init];
  v3 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v6 = 0;
  if ([v3 count])
  {
    v4 = MEMORY[0x277CBEAF8];
    v5 = [v3 firstObject];
    LOBYTE(v4) = [v4 characterDirectionForLanguage:v5];

    if ((v4 & 2) != 0)
    {
      v6 = 1;
    }
  }

  v2->_orientation = v6;
  v2->_startTimeSeconds = -1.0;

  return v2;
}

- (id)emoji
{
  v3 = objc_opt_new();
  v4 = v3;
  effectType = self->_effectType;
  p_effectType = &self->_effectType;
  v5 = effectType;
  if (effectType >= 8)
  {
    v9 = _PTLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(PTEffectReaction *)p_effectType emoji];
    }

    v8 = 0;
  }

  else
  {
    [v3 appendString:off_2785232F0[v5]];
    v8 = v4;
  }

  return v8;
}

- (void)emoji
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&dword_2243FB000, a2, OS_LOG_TYPE_ERROR, "Invalid type %i", v3, 8u);
}

@end