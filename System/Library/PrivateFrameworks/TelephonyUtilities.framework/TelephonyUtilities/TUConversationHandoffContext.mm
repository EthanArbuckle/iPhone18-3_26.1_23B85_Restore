@interface TUConversationHandoffContext
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToHandoffContext:(id)a3;
- (TUConversationHandoffContext)init;
- (TUConversationHandoffContext)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUConversationHandoffContext

- (TUConversationHandoffContext)init
{
  v8.receiver = self;
  v8.super_class = TUConversationHandoffContext;
  v2 = [(TUConversationHandoffContext *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_prefersToPlayDuringWombat = 1;
    v4 = +[TUConversationInvitationPreference noNotificationInvitationPreferences];
    invitationPreferences = v3->_invitationPreferences;
    v3->_invitationPreferences = v4;

    presentationContext = v3->_presentationContext;
    v3->_presentationContext = 0;

    v3->_setUplinkMuted = 0;
  }

  return v3;
}

- (TUConversationHandoffContext)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = TUConversationHandoffContext;
  v5 = [(TUConversationHandoffContext *)&v19 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_prefersToPlayDuringWombat);
    v5->_prefersToPlayDuringWombat = [v4 decodeBoolForKey:v6];

    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = NSStringFromSelector(sel_invitationPreferences);
    v11 = [v4 decodeObjectOfClasses:v9 forKey:v10];
    invitationPreferences = v5->_invitationPreferences;
    v5->_invitationPreferences = v11;

    v13 = objc_opt_class();
    v14 = NSStringFromSelector(sel_presentationContext);
    v15 = [v4 decodeObjectOfClass:v13 forKey:v14];
    presentationContext = v5->_presentationContext;
    v5->_presentationContext = v15;

    v17 = NSStringFromSelector(sel_setUplinkMuted);
    v5->_setUplinkMuted = [v4 decodeBoolForKey:v17];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationHandoffContext *)self prefersToPlayDuringWombat];
  v6 = NSStringFromSelector(sel_prefersToPlayDuringWombat);
  [v4 encodeBool:v5 forKey:v6];

  v7 = [(TUConversationHandoffContext *)self invitationPreferences];
  v8 = NSStringFromSelector(sel_invitationPreferences);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(TUConversationHandoffContext *)self presentationContext];
  v10 = NSStringFromSelector(sel_presentationContext);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(TUConversationHandoffContext *)self setUplinkMuted];
  v12 = NSStringFromSelector(sel_setUplinkMuted);
  [v4 encodeBool:v11 forKey:v12];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setPrefersToPlayDuringWombat:{-[TUConversationHandoffContext prefersToPlayDuringWombat](self, "prefersToPlayDuringWombat")}];
  v5 = [(TUConversationHandoffContext *)self invitationPreferences];
  [v4 setInvitationPreferences:v5];

  v6 = [(TUConversationHandoffContext *)self presentationContext];
  [v4 setPresentationContext:v6];

  [v4 setSetUplinkMuted:{-[TUConversationHandoffContext setUplinkMuted](self, "setUplinkMuted")}];
  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" prefersToPlayDuringWombat=%d", -[TUConversationHandoffContext prefersToPlayDuringWombat](self, "prefersToPlayDuringWombat")];
  v4 = [(TUConversationHandoffContext *)self invitationPreferences];

  if (v4)
  {
    v5 = [(TUConversationHandoffContext *)self invitationPreferences];
    [v3 appendFormat:@" invitationPreferences=%@", v5];
  }

  v6 = [(TUConversationHandoffContext *)self presentationContext];

  if (v6)
  {
    v7 = [(TUConversationHandoffContext *)self presentationContext];
    [v3 appendFormat:@" presentationContext=%@", v7];
  }

  [v3 appendFormat:@" setUplinkMuted=%d", -[TUConversationHandoffContext setUplinkMuted](self, "setUplinkMuted")];
  [v3 appendString:@">"];
  v8 = [v3 copy];

  return v8;
}

- (unint64_t)hash
{
  if ([(TUConversationHandoffContext *)self prefersToPlayDuringWombat])
  {
    v3 = 1231;
  }

  else
  {
    v3 = 1237;
  }

  v4 = [(TUConversationHandoffContext *)self invitationPreferences];
  v5 = [v4 hash];
  v6 = [(TUConversationHandoffContext *)self presentationContext];
  v7 = v5 ^ [v6 hash] ^ v3;
  if ([(TUConversationHandoffContext *)self setUplinkMuted])
  {
    v8 = 1231;
  }

  else
  {
    v8 = 1237;
  }

  return v7 ^ v8;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationHandoffContext *)self isEqualToHandoffContext:v4];
  }

  return v5;
}

- (BOOL)isEqualToHandoffContext:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationHandoffContext *)self prefersToPlayDuringWombat];
  if (v5 == [v4 prefersToPlayDuringWombat])
  {
    v7 = [(TUConversationHandoffContext *)self invitationPreferences];
    v8 = [v4 invitationPreferences];
    if (TUObjectsAreEqualOrNil(v7, v8))
    {
      v9 = [(TUConversationHandoffContext *)self presentationContext];
      v10 = [v4 presentationContext];
      if (TUObjectsAreEqualOrNil(v9, v10))
      {
        v11 = [(TUConversationHandoffContext *)self setUplinkMuted];
        v6 = v11 ^ [v4 setUplinkMuted] ^ 1;
      }

      else
      {
        LOBYTE(v6) = 0;
      }
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

@end