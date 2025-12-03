@interface TUConversationHandoffContext
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToHandoffContext:(id)context;
- (TUConversationHandoffContext)init;
- (TUConversationHandoffContext)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (TUConversationHandoffContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = TUConversationHandoffContext;
  v5 = [(TUConversationHandoffContext *)&v19 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_prefersToPlayDuringWombat);
    v5->_prefersToPlayDuringWombat = [coderCopy decodeBoolForKey:v6];

    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = NSStringFromSelector(sel_invitationPreferences);
    v11 = [coderCopy decodeObjectOfClasses:v9 forKey:v10];
    invitationPreferences = v5->_invitationPreferences;
    v5->_invitationPreferences = v11;

    v13 = objc_opt_class();
    v14 = NSStringFromSelector(sel_presentationContext);
    v15 = [coderCopy decodeObjectOfClass:v13 forKey:v14];
    presentationContext = v5->_presentationContext;
    v5->_presentationContext = v15;

    v17 = NSStringFromSelector(sel_setUplinkMuted);
    v5->_setUplinkMuted = [coderCopy decodeBoolForKey:v17];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  prefersToPlayDuringWombat = [(TUConversationHandoffContext *)self prefersToPlayDuringWombat];
  v6 = NSStringFromSelector(sel_prefersToPlayDuringWombat);
  [coderCopy encodeBool:prefersToPlayDuringWombat forKey:v6];

  invitationPreferences = [(TUConversationHandoffContext *)self invitationPreferences];
  v8 = NSStringFromSelector(sel_invitationPreferences);
  [coderCopy encodeObject:invitationPreferences forKey:v8];

  presentationContext = [(TUConversationHandoffContext *)self presentationContext];
  v10 = NSStringFromSelector(sel_presentationContext);
  [coderCopy encodeObject:presentationContext forKey:v10];

  setUplinkMuted = [(TUConversationHandoffContext *)self setUplinkMuted];
  v12 = NSStringFromSelector(sel_setUplinkMuted);
  [coderCopy encodeBool:setUplinkMuted forKey:v12];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setPrefersToPlayDuringWombat:{-[TUConversationHandoffContext prefersToPlayDuringWombat](self, "prefersToPlayDuringWombat")}];
  invitationPreferences = [(TUConversationHandoffContext *)self invitationPreferences];
  [v4 setInvitationPreferences:invitationPreferences];

  presentationContext = [(TUConversationHandoffContext *)self presentationContext];
  [v4 setPresentationContext:presentationContext];

  [v4 setSetUplinkMuted:{-[TUConversationHandoffContext setUplinkMuted](self, "setUplinkMuted")}];
  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" prefersToPlayDuringWombat=%d", -[TUConversationHandoffContext prefersToPlayDuringWombat](self, "prefersToPlayDuringWombat")];
  invitationPreferences = [(TUConversationHandoffContext *)self invitationPreferences];

  if (invitationPreferences)
  {
    invitationPreferences2 = [(TUConversationHandoffContext *)self invitationPreferences];
    [v3 appendFormat:@" invitationPreferences=%@", invitationPreferences2];
  }

  presentationContext = [(TUConversationHandoffContext *)self presentationContext];

  if (presentationContext)
  {
    presentationContext2 = [(TUConversationHandoffContext *)self presentationContext];
    [v3 appendFormat:@" presentationContext=%@", presentationContext2];
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

  invitationPreferences = [(TUConversationHandoffContext *)self invitationPreferences];
  v5 = [invitationPreferences hash];
  presentationContext = [(TUConversationHandoffContext *)self presentationContext];
  v7 = v5 ^ [presentationContext hash] ^ v3;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationHandoffContext *)self isEqualToHandoffContext:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToHandoffContext:(id)context
{
  contextCopy = context;
  prefersToPlayDuringWombat = [(TUConversationHandoffContext *)self prefersToPlayDuringWombat];
  if (prefersToPlayDuringWombat == [contextCopy prefersToPlayDuringWombat])
  {
    invitationPreferences = [(TUConversationHandoffContext *)self invitationPreferences];
    invitationPreferences2 = [contextCopy invitationPreferences];
    if (TUObjectsAreEqualOrNil(invitationPreferences, invitationPreferences2))
    {
      presentationContext = [(TUConversationHandoffContext *)self presentationContext];
      presentationContext2 = [contextCopy presentationContext];
      if (TUObjectsAreEqualOrNil(presentationContext, presentationContext2))
      {
        setUplinkMuted = [(TUConversationHandoffContext *)self setUplinkMuted];
        v6 = setUplinkMuted ^ [contextCopy setUplinkMuted] ^ 1;
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