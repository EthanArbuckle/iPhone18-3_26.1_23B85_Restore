@interface TUCallUpdate
- (BOOL)isEligibleForScreening;
- (BOOL)isHostEligibleForScreening;
- (TUCallUpdate)init;
- (TUCallUpdate)initWithCoder:(id)coder;
- (TUCallUpdate)initWithProvider:(id)provider;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUCallUpdate

- (TUCallUpdate)init
{
  v10.receiver = self;
  v10.super_class = TUCallUpdate;
  v2 = [(TUCallUpdate *)&v10 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __20__TUCallUpdate_init__block_invoke;
    v7[3] = &unk_1E7424E50;
    objc_copyWeak(&v8, &location);
    v3 = _Block_copy(v7);
    contactsCountBlock = v2->_contactsCountBlock;
    v2->_contactsCountBlock = v3;

    clarityEnabledBlock = v2->_clarityEnabledBlock;
    v2->_clarityEnabledBlock = &__block_literal_global_2;

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  return v2;
}

uint64_t __20__TUCallUpdate_init__block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [MEMORY[0x1E695CE18] tu_contactStore];
  v3 = [WeakRetained handle];
  v9[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v5 = [v2 tu_contactsForHandles:v4 keyDescriptors:MEMORY[0x1E695E0F0] error:0];

  v6 = [v5 count];
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (TUCallUpdate)initWithProvider:(id)provider
{
  providerCopy = provider;
  v5 = [(TUCallUpdate *)self init];
  if (v5)
  {
    v6 = [providerCopy copy];
    provider = v5->_provider;
    v5->_provider = v6;

    v8 = +[TUCallCenter sharedInstance];
    callServicesInterface = [v8 callServicesInterface];
    callServicesInterface = v5->_callServicesInterface;
    v5->_callServicesInterface = callServicesInterface;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  uUID = [(TUCallUpdate *)self UUID];
  [v3 appendFormat:@" UUID=%@", uUID];

  callUUID = [(TUCallUpdate *)self callUUID];
  [v3 appendFormat:@" callUUID=%@", callUUID];

  provider = [(TUCallUpdate *)self provider];
  identifier = [provider identifier];
  [v3 appendFormat:@" provider=%@", identifier];

  handle = [(TUCallUpdate *)self handle];
  [v3 appendFormat:@" handle=%@", handle];

  [v3 appendFormat:@" priority=%ld", -[TUCallUpdate priority](self, "priority")];
  [v3 appendFormat:@" junkConfidence=%ld", -[TUCallUpdate junkConfidence](self, "junkConfidence")];
  [v3 appendFormat:@" remoteParticipantCount=%ld", -[TUCallUpdate remoteParticipantCount](self, "remoteParticipantCount")];
  [v3 appendFormat:@" hasVideo=%d", -[TUCallUpdate hasVideo](self, "hasVideo")];
  [v3 appendFormat:@" isConversation=%d", -[TUCallUpdate isConversation](self, "isConversation")];
  [v3 appendFormat:@" isAnsweringMachineAvailable=%d", -[TUCallUpdate isAnsweringMachineAvailable](self, "isAnsweringMachineAvailable")];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isHostEligibleForScreening
{
  v23 = *MEMORY[0x1E69E9840];
  clarityEnabledBlock = [(TUCallUpdate *)self clarityEnabledBlock];
  v4 = clarityEnabledBlock[2]();

  if (v4)
  {
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "isEligibleForScreening: NO because ClarityUI is enabled", &v19, 2u);
    }

    LOBYTE(v6) = 0;
    goto LABEL_28;
  }

  if ([(TUCallUpdate *)self priority]== 2)
  {
    v7 = TUDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "isEligibleForScreening: High Priority call, not screenable", &v19, 2u);
    }

LABEL_20:
    v14 = TUDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      v15 = "isEligibleForScreening: NO, either telephony Junk Call or Emergency or not a U+1 audio call from a contact";
LABEL_22:
      _os_log_impl(&dword_1956FD000, v14, OS_LOG_TYPE_DEFAULT, v15, &v19, 2u);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  provider = [(TUCallUpdate *)self provider];
  if ([provider isTelephonyProvider])
  {
    junkConfidence = [(TUCallUpdate *)self junkConfidence];

    if (junkConfidence < 2)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  provider2 = [(TUCallUpdate *)self provider];
  isFaceTimeProvider = [provider2 isFaceTimeProvider];

  if (!isFaceTimeProvider)
  {
    goto LABEL_20;
  }

  handle = [(TUCallUpdate *)self handle];
  normalizedValue = [handle normalizedValue];

  if (!normalizedValue || [(TUCallUpdate *)self remoteParticipantCount]> 1 || [(TUCallUpdate *)self hasVideo]|| ![(TUCallUpdate *)self isConversation]|| !(*(self->_contactsCountBlock + 2))())
  {
    goto LABEL_20;
  }

LABEL_11:
  if ([(TUCallUpdate *)self isAnsweringMachineAvailable])
  {
    v6 = 1;
    goto LABEL_24;
  }

  v14 = TUDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    v15 = "isEligibleForScreening: NO, Answering Machine is not currently available";
    goto LABEL_22;
  }

LABEL_23:

  v6 = 0;
LABEL_24:
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = @"NO";
    if (v6)
    {
      v16 = @"YES";
    }

    v19 = 138412546;
    v20 = v16;
    v21 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "isEligibleForScreening: %@ for call: %@", &v19, 0x16u);
  }

LABEL_28:

  v17 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEligibleForScreening
{
  featureFlags = [(TUCallUpdate *)self featureFlags];
  v4 = TUCallScreeningEnabled(featureFlags, 0, 0);

  if (!v4)
  {
    return 0;
  }

  return [(TUCallUpdate *)self isHostEligibleForScreening];
}

- (void)encodeWithCoder:(id)coder
{
  UUID = self->_UUID;
  coderCopy = coder;
  [coderCopy encodeObject:UUID forKey:@"UUID"];
  [coderCopy encodeObject:self->_callUUID forKey:@"callUUID"];
  [coderCopy encodeObject:self->_provider forKey:@"provider"];
  [coderCopy encodeObject:self->_handle forKey:@"handle"];
  [coderCopy encodeInteger:self->_priority forKey:@"priority"];
  [coderCopy encodeInteger:self->_junkConfidence forKey:@"junkConfidence"];
  [coderCopy encodeInteger:self->_remoteParticipantCount forKey:@"remoteParticipantCount"];
  [coderCopy encodeBool:self->_conversation forKey:@"conversation"];
  [coderCopy encodeBool:self->_hasVideo forKey:@"hasVideo"];
  [coderCopy encodeBool:self->_answeringMachineAvailable forKey:@"answeringMachineAvailable"];
}

- (TUCallUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"provider"];
  v6 = [v5 copy];

  v7 = [(TUCallUpdate *)self initWithProvider:v6];
  if (v7)
  {
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    v9 = [v8 copy];
    UUID = v7->_UUID;
    v7->_UUID = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"callUUID"];
    v12 = [v11 copy];
    callUUID = v7->_callUUID;
    v7->_callUUID = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"handle"];
    v15 = [v14 copy];
    handle = v7->_handle;
    v7->_handle = v15;

    v7->_priority = [coderCopy decodeInt32ForKey:@"priority"];
    v7->_junkConfidence = [coderCopy decodeInt32ForKey:@"junkConfidence"];
    v7->_remoteParticipantCount = [coderCopy decodeInt32ForKey:@"remoteParticipantCount"];
    v7->_conversation = [coderCopy decodeBoolForKey:@"conversation"];
    v7->_hasVideo = [coderCopy decodeBoolForKey:@"hasVideo"];
    v7->_answeringMachineAvailable = [coderCopy decodeBoolForKey:@"answeringMachineAvailable"];
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TUCallUpdate allocWithZone:zone];
  provider = [(TUCallUpdate *)self provider];
  v6 = [(TUCallUpdate *)v4 initWithProvider:provider];

  uUID = [(TUCallUpdate *)self UUID];
  v8 = [uUID copy];
  [(TUCallUpdate *)v6 setUUID:v8];

  callUUID = [(TUCallUpdate *)self callUUID];
  v10 = [callUUID copy];
  [(TUCallUpdate *)v6 setCallUUID:v10];

  handle = [(TUCallUpdate *)self handle];
  v12 = [handle copy];
  [(TUCallUpdate *)v6 setHandle:v12];

  [(TUCallUpdate *)v6 setPriority:[(TUCallUpdate *)self priority]];
  [(TUCallUpdate *)v6 setJunkConfidence:[(TUCallUpdate *)self junkConfidence]];
  [(TUCallUpdate *)v6 setRemoteParticipantCount:[(TUCallUpdate *)self remoteParticipantCount]];
  [(TUCallUpdate *)v6 setConversation:[(TUCallUpdate *)self isConversation]];
  [(TUCallUpdate *)v6 setHasVideo:[(TUCallUpdate *)self hasVideo]];
  [(TUCallUpdate *)v6 setAnsweringMachineAvailable:[(TUCallUpdate *)self isAnsweringMachineAvailable]];
  return v6;
}

@end