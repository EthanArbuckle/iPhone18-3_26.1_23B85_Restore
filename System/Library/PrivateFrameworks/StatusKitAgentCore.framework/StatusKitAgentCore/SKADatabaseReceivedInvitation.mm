@interface SKADatabaseReceivedInvitation
+ (id)logger;
- (BOOL)isEqual:(id)equal;
- (MPStatusKitIncomingRatchet)incomingRatchet;
- (SKADatabaseReceivedInvitation)initWithCoreDataReceivedInvitation:(id)invitation;
- (SKADatabaseReceivedInvitation)initWithInvitationIdentifier:(id)identifier senderHandle:(id)handle invitedHandle:(id)invitedHandle statusTypeIdentifier:(id)typeIdentifier dateInvitationCreated:(id)created incomingRatchetState:(id)state presenceIdentifier:(id)presenceIdentifier channelToken:(id)self0 serverKey:(id)self1 peerKey:(id)self2 invitationPayload:(id)self3;
- (SKHandle)invitedSKHandle;
- (SKHandle)senderSKHandle;
- (SKInvitationPayload)skInvitationPayload;
- (id)description;
- (unint64_t)hash;
@end

@implementation SKADatabaseReceivedInvitation

- (SKADatabaseReceivedInvitation)initWithCoreDataReceivedInvitation:(id)invitation
{
  invitationCopy = invitation;
  invitationIdentifier = [invitationCopy invitationIdentifier];
  senderHandle = [invitationCopy senderHandle];
  invitedHandle = [invitationCopy invitedHandle];
  statusTypeIdentifier = [invitationCopy statusTypeIdentifier];
  dateInvitationCreated = [invitationCopy dateInvitationCreated];
  incomingRatchetState = [invitationCopy incomingRatchetState];
  presenceIdentifier = [invitationCopy presenceIdentifier];
  channelToken = [invitationCopy channelToken];
  serverKey = [invitationCopy serverKey];
  peerKey = [invitationCopy peerKey];
  invitationPayload = [invitationCopy invitationPayload];

  v17 = [(SKADatabaseReceivedInvitation *)self initWithInvitationIdentifier:invitationIdentifier senderHandle:senderHandle invitedHandle:invitedHandle statusTypeIdentifier:statusTypeIdentifier dateInvitationCreated:dateInvitationCreated incomingRatchetState:incomingRatchetState presenceIdentifier:presenceIdentifier channelToken:channelToken serverKey:serverKey peerKey:peerKey invitationPayload:invitationPayload];
  return v17;
}

- (SKADatabaseReceivedInvitation)initWithInvitationIdentifier:(id)identifier senderHandle:(id)handle invitedHandle:(id)invitedHandle statusTypeIdentifier:(id)typeIdentifier dateInvitationCreated:(id)created incomingRatchetState:(id)state presenceIdentifier:(id)presenceIdentifier channelToken:(id)self0 serverKey:(id)self1 peerKey:(id)self2 invitationPayload:(id)self3
{
  identifierCopy = identifier;
  handleCopy = handle;
  invitedHandleCopy = invitedHandle;
  typeIdentifierCopy = typeIdentifier;
  createdCopy = created;
  stateCopy = state;
  presenceIdentifierCopy = presenceIdentifier;
  tokenCopy = token;
  keyCopy = key;
  peerKeyCopy = peerKey;
  v22 = invitedHandleCopy;
  payloadCopy = payload;
  v45.receiver = self;
  v45.super_class = SKADatabaseReceivedInvitation;
  v24 = [(SKADatabaseReceivedInvitation *)&v45 init];
  if (v24)
  {
    v25 = [identifierCopy copy];
    invitationIdentifier = v24->_invitationIdentifier;
    v24->_invitationIdentifier = v25;

    v27 = [typeIdentifierCopy copy];
    statusTypeIdentifier = v24->_statusTypeIdentifier;
    v24->_statusTypeIdentifier = v27;

    v29 = [presenceIdentifierCopy copy];
    presenceIdentifier = v24->_presenceIdentifier;
    v24->_presenceIdentifier = v29;

    objc_storeStrong(&v24->_channelToken, token);
    objc_storeStrong(&v24->_serverKey, key);
    objc_storeStrong(&v24->_peerKey, peerKey);
    v31 = [handleCopy copy];
    senderHandle = v24->_senderHandle;
    v24->_senderHandle = v31;

    v33 = [v22 copy];
    invitedHandle = v24->_invitedHandle;
    v24->_invitedHandle = v33;

    objc_storeStrong(&v24->_dateInvitationCreated, created);
    objc_storeStrong(&v24->_incomingRatchetState, state);
    v35 = [payloadCopy copy];
    invitationPayload = v24->_invitationPayload;
    v24->_invitationPayload = v35;

    v24->_invitationType = typeIdentifierCopy == 0;
  }

  return v24;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (equalCopy)
  {
    if (self == equalCopy)
    {
      LOBYTE(v10) = 1;
      goto LABEL_106;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      invitationType = [(SKADatabaseReceivedInvitation *)self invitationType];
      invitationType2 = [(SKADatabaseReceivedInvitation *)v7 invitationType];
      v10 = invitationType == invitationType2;
      invitationIdentifier = [(SKADatabaseReceivedInvitation *)self invitationIdentifier];
      if (!invitationIdentifier)
      {
        invitationIdentifier2 = [(SKADatabaseReceivedInvitation *)v7 invitationIdentifier];
        if (!invitationIdentifier2)
        {
          goto LABEL_14;
        }
      }

      invitationIdentifier3 = [(SKADatabaseReceivedInvitation *)self invitationIdentifier];
      if (invitationIdentifier3)
      {
        v13 = invitationIdentifier3;
        invitationIdentifier4 = [(SKADatabaseReceivedInvitation *)v7 invitationIdentifier];
        if (invitationIdentifier4)
        {
          v15 = invitationIdentifier4;
          v16 = invitationType == invitationType2;
          invitationIdentifier5 = [(SKADatabaseReceivedInvitation *)self invitationIdentifier];
          invitationIdentifier6 = [(SKADatabaseReceivedInvitation *)v7 invitationIdentifier];
          v10 = v16 & [invitationIdentifier5 isEqualToString:invitationIdentifier6];

          if (!invitationIdentifier)
          {
            goto LABEL_14;
          }

          goto LABEL_15;
        }
      }

      v10 = 0;
      if (!invitationIdentifier)
      {
LABEL_14:
      }

LABEL_15:

      senderHandle = [(SKADatabaseReceivedInvitation *)self senderHandle];
      if (!senderHandle)
      {
        invitationIdentifier2 = [(SKADatabaseReceivedInvitation *)v7 senderHandle];
        if (!invitationIdentifier2)
        {
          goto LABEL_23;
        }
      }

      senderHandle2 = [(SKADatabaseReceivedInvitation *)self senderHandle];
      if (senderHandle2)
      {
        v21 = senderHandle2;
        senderHandle3 = [(SKADatabaseReceivedInvitation *)v7 senderHandle];
        if (senderHandle3)
        {
          v23 = senderHandle3;
          senderHandle4 = [(SKADatabaseReceivedInvitation *)self senderHandle];
          senderHandle5 = [(SKADatabaseReceivedInvitation *)v7 senderHandle];
          v10 &= [senderHandle4 isEqualToString:senderHandle5];

          if (!senderHandle)
          {
            goto LABEL_23;
          }

          goto LABEL_24;
        }
      }

      v10 = 0;
      if (!senderHandle)
      {
LABEL_23:
      }

LABEL_24:

      invitedHandle = [(SKADatabaseReceivedInvitation *)self invitedHandle];
      if (!invitedHandle)
      {
        invitationIdentifier2 = [(SKADatabaseReceivedInvitation *)v7 invitedHandle];
        if (!invitationIdentifier2)
        {
          goto LABEL_32;
        }
      }

      invitedHandle2 = [(SKADatabaseReceivedInvitation *)self invitedHandle];
      if (invitedHandle2)
      {
        v28 = invitedHandle2;
        invitedHandle3 = [(SKADatabaseReceivedInvitation *)v7 invitedHandle];
        if (invitedHandle3)
        {
          v30 = invitedHandle3;
          invitedHandle4 = [(SKADatabaseReceivedInvitation *)self invitedHandle];
          invitedHandle5 = [(SKADatabaseReceivedInvitation *)v7 invitedHandle];
          v10 &= [invitedHandle4 isEqualToString:invitedHandle5];

          if (!invitedHandle)
          {
            goto LABEL_32;
          }

          goto LABEL_33;
        }
      }

      v10 = 0;
      if (!invitedHandle)
      {
LABEL_32:
      }

LABEL_33:

      statusTypeIdentifier = [(SKADatabaseReceivedInvitation *)self statusTypeIdentifier];
      if (!statusTypeIdentifier)
      {
        invitationIdentifier2 = [(SKADatabaseReceivedInvitation *)v7 statusTypeIdentifier];
        if (!invitationIdentifier2)
        {
          goto LABEL_41;
        }
      }

      statusTypeIdentifier2 = [(SKADatabaseReceivedInvitation *)self statusTypeIdentifier];
      if (statusTypeIdentifier2)
      {
        v35 = statusTypeIdentifier2;
        statusTypeIdentifier3 = [(SKADatabaseReceivedInvitation *)v7 statusTypeIdentifier];
        if (statusTypeIdentifier3)
        {
          v37 = statusTypeIdentifier3;
          statusTypeIdentifier4 = [(SKADatabaseReceivedInvitation *)self statusTypeIdentifier];
          statusTypeIdentifier5 = [(SKADatabaseReceivedInvitation *)v7 statusTypeIdentifier];
          v10 &= [statusTypeIdentifier4 isEqualToString:statusTypeIdentifier5];

          if (!statusTypeIdentifier)
          {
            goto LABEL_41;
          }

          goto LABEL_42;
        }
      }

      v10 = 0;
      if (!statusTypeIdentifier)
      {
LABEL_41:
      }

LABEL_42:

      dateInvitationCreated = [(SKADatabaseReceivedInvitation *)self dateInvitationCreated];
      if (!dateInvitationCreated)
      {
        invitationIdentifier2 = [(SKADatabaseReceivedInvitation *)v7 dateInvitationCreated];
        if (!invitationIdentifier2)
        {
          goto LABEL_50;
        }
      }

      dateInvitationCreated2 = [(SKADatabaseReceivedInvitation *)self dateInvitationCreated];
      if (dateInvitationCreated2)
      {
        v42 = dateInvitationCreated2;
        dateInvitationCreated3 = [(SKADatabaseReceivedInvitation *)v7 dateInvitationCreated];
        if (dateInvitationCreated3)
        {
          v44 = dateInvitationCreated3;
          dateInvitationCreated4 = [(SKADatabaseReceivedInvitation *)self dateInvitationCreated];
          dateInvitationCreated5 = [(SKADatabaseReceivedInvitation *)v7 dateInvitationCreated];
          v10 &= [dateInvitationCreated4 isEqualToDate:dateInvitationCreated5];

          if (!dateInvitationCreated)
          {
            goto LABEL_50;
          }

          goto LABEL_51;
        }
      }

      v10 = 0;
      if (!dateInvitationCreated)
      {
LABEL_50:
      }

LABEL_51:

      incomingRatchetState = [(SKADatabaseReceivedInvitation *)self incomingRatchetState];
      if (!incomingRatchetState)
      {
        invitationIdentifier2 = [(SKADatabaseReceivedInvitation *)v7 incomingRatchetState];
        if (!invitationIdentifier2)
        {
          goto LABEL_59;
        }
      }

      incomingRatchetState2 = [(SKADatabaseReceivedInvitation *)self incomingRatchetState];
      if (incomingRatchetState2)
      {
        v49 = incomingRatchetState2;
        incomingRatchetState3 = [(SKADatabaseReceivedInvitation *)v7 incomingRatchetState];
        if (incomingRatchetState3)
        {
          v51 = incomingRatchetState3;
          incomingRatchetState4 = [(SKADatabaseReceivedInvitation *)self incomingRatchetState];
          incomingRatchetState5 = [(SKADatabaseReceivedInvitation *)v7 incomingRatchetState];
          v10 &= [incomingRatchetState4 isEqualToData:incomingRatchetState5];

          if (!incomingRatchetState)
          {
            goto LABEL_59;
          }

          goto LABEL_60;
        }
      }

      v10 = 0;
      if (!incomingRatchetState)
      {
LABEL_59:
      }

LABEL_60:

      presenceIdentifier = [(SKADatabaseReceivedInvitation *)self presenceIdentifier];
      if (!presenceIdentifier)
      {
        invitationIdentifier2 = [(SKADatabaseReceivedInvitation *)v7 presenceIdentifier];
        if (!invitationIdentifier2)
        {
          goto LABEL_68;
        }
      }

      presenceIdentifier2 = [(SKADatabaseReceivedInvitation *)self presenceIdentifier];
      if (presenceIdentifier2)
      {
        v56 = presenceIdentifier2;
        presenceIdentifier3 = [(SKADatabaseReceivedInvitation *)v7 presenceIdentifier];
        if (presenceIdentifier3)
        {
          v58 = presenceIdentifier3;
          presenceIdentifier4 = [(SKADatabaseReceivedInvitation *)self presenceIdentifier];
          presenceIdentifier5 = [(SKADatabaseReceivedInvitation *)v7 presenceIdentifier];
          v10 &= [presenceIdentifier4 isEqualToString:presenceIdentifier5];

          if (!presenceIdentifier)
          {
            goto LABEL_68;
          }

          goto LABEL_69;
        }
      }

      v10 = 0;
      if (!presenceIdentifier)
      {
LABEL_68:
      }

LABEL_69:

      channelToken = [(SKADatabaseReceivedInvitation *)self channelToken];
      if (!channelToken)
      {
        invitationIdentifier2 = [(SKADatabaseReceivedInvitation *)v7 channelToken];
        if (!invitationIdentifier2)
        {
          goto LABEL_77;
        }
      }

      channelToken2 = [(SKADatabaseReceivedInvitation *)self channelToken];
      if (channelToken2)
      {
        v63 = channelToken2;
        channelToken3 = [(SKADatabaseReceivedInvitation *)v7 channelToken];
        if (channelToken3)
        {
          v65 = channelToken3;
          channelToken4 = [(SKADatabaseReceivedInvitation *)self channelToken];
          channelToken5 = [(SKADatabaseReceivedInvitation *)v7 channelToken];
          v10 &= [channelToken4 isEqualToData:channelToken5];

          if (!channelToken)
          {
            goto LABEL_77;
          }

          goto LABEL_78;
        }
      }

      v10 = 0;
      if (!channelToken)
      {
LABEL_77:
      }

LABEL_78:

      serverKey = [(SKADatabaseReceivedInvitation *)self serverKey];
      if (!serverKey)
      {
        invitationIdentifier2 = [(SKADatabaseReceivedInvitation *)v7 serverKey];
        if (!invitationIdentifier2)
        {
          goto LABEL_86;
        }
      }

      serverKey2 = [(SKADatabaseReceivedInvitation *)self serverKey];
      if (serverKey2)
      {
        v70 = serverKey2;
        serverKey3 = [(SKADatabaseReceivedInvitation *)v7 serverKey];
        if (serverKey3)
        {
          v72 = serverKey3;
          serverKey4 = [(SKADatabaseReceivedInvitation *)self serverKey];
          serverKey5 = [(SKADatabaseReceivedInvitation *)v7 serverKey];
          v10 &= [serverKey4 isEqualToData:serverKey5];

          if (!serverKey)
          {
            goto LABEL_86;
          }

          goto LABEL_87;
        }
      }

      v10 = 0;
      if (!serverKey)
      {
LABEL_86:
      }

LABEL_87:

      peerKey = [(SKADatabaseReceivedInvitation *)self peerKey];
      if (!peerKey)
      {
        invitationIdentifier2 = [(SKADatabaseReceivedInvitation *)v7 peerKey];
        if (!invitationIdentifier2)
        {
          goto LABEL_95;
        }
      }

      peerKey2 = [(SKADatabaseReceivedInvitation *)self peerKey];
      if (peerKey2)
      {
        v77 = peerKey2;
        peerKey3 = [(SKADatabaseReceivedInvitation *)v7 peerKey];
        if (peerKey3)
        {
          v79 = peerKey3;
          peerKey4 = [(SKADatabaseReceivedInvitation *)self peerKey];
          peerKey5 = [(SKADatabaseReceivedInvitation *)v7 peerKey];
          v10 &= [peerKey4 isEqualToData:peerKey5];

          if (!peerKey)
          {
            goto LABEL_95;
          }

          goto LABEL_96;
        }
      }

      v10 = 0;
      if (!peerKey)
      {
LABEL_95:
      }

LABEL_96:

      invitationPayload = [(SKADatabaseReceivedInvitation *)self invitationPayload];
      if (!invitationPayload)
      {
        invitationIdentifier2 = [(SKADatabaseReceivedInvitation *)v7 invitationPayload];
        if (!invitationIdentifier2)
        {
          goto LABEL_104;
        }
      }

      invitationPayload2 = [(SKADatabaseReceivedInvitation *)self invitationPayload];
      if (invitationPayload2)
      {
        v84 = invitationPayload2;
        invitationPayload3 = [(SKADatabaseReceivedInvitation *)v7 invitationPayload];
        if (invitationPayload3)
        {
          v86 = invitationPayload3;
          invitationPayload4 = [(SKADatabaseReceivedInvitation *)self invitationPayload];
          invitationPayload5 = [(SKADatabaseReceivedInvitation *)v7 invitationPayload];
          v10 &= [invitationPayload4 isEqualToData:invitationPayload5];

          if (!invitationPayload)
          {
            goto LABEL_104;
          }

          goto LABEL_105;
        }
      }

      LOBYTE(v10) = 0;
      if (!invitationPayload)
      {
LABEL_104:
      }

LABEL_105:

      goto LABEL_106;
    }
  }

  LOBYTE(v10) = 0;
LABEL_106:

  return v10;
}

- (unint64_t)hash
{
  invitationType = [(SKADatabaseReceivedInvitation *)self invitationType];
  invitationPayload = [(SKADatabaseReceivedInvitation *)self invitationPayload];
  v5 = [invitationPayload hash] ^ invitationType;

  dateInvitationCreated = [(SKADatabaseReceivedInvitation *)self dateInvitationCreated];
  v7 = [dateInvitationCreated hash];

  invitedHandle = [(SKADatabaseReceivedInvitation *)self invitedHandle];
  v9 = v5 ^ v7 ^ [invitedHandle hash];

  senderHandle = [(SKADatabaseReceivedInvitation *)self senderHandle];
  v11 = [senderHandle hash];

  invitationIdentifier = [(SKADatabaseReceivedInvitation *)self invitationIdentifier];
  v13 = v11 ^ [invitationIdentifier hash];

  statusTypeIdentifier = [(SKADatabaseReceivedInvitation *)self statusTypeIdentifier];
  v15 = v9 ^ v13 ^ [statusTypeIdentifier hash];

  presenceIdentifier = [(SKADatabaseReceivedInvitation *)self presenceIdentifier];
  v17 = [presenceIdentifier hash];

  channelToken = [(SKADatabaseReceivedInvitation *)self channelToken];
  v19 = v17 ^ [channelToken hash];

  serverKey = [(SKADatabaseReceivedInvitation *)self serverKey];
  v21 = v19 ^ [serverKey hash];

  peerKey = [(SKADatabaseReceivedInvitation *)self peerKey];
  v23 = v15 ^ v21 ^ [peerKey hash];

  incomingRatchetState = [(SKADatabaseReceivedInvitation *)self incomingRatchetState];
  v25 = [incomingRatchetState hash];

  return v23 ^ v25;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  invitationIdentifier = [(SKADatabaseReceivedInvitation *)self invitationIdentifier];
  dateInvitationCreated = [(SKADatabaseReceivedInvitation *)self dateInvitationCreated];
  skInvitationPayload = [(SKADatabaseReceivedInvitation *)self skInvitationPayload];
  v8 = [v3 stringWithFormat:@"<%@: %p identifier = %@; dateCreated = %@; invitationPayload: %@>", v4, self, invitationIdentifier, dateInvitationCreated, skInvitationPayload];;

  return v8;
}

+ (id)logger
{
  if (logger_onceToken_10 != -1)
  {
    +[SKADatabaseReceivedInvitation logger];
  }

  v3 = logger__logger_10;

  return v3;
}

uint64_t __39__SKADatabaseReceivedInvitation_logger__block_invoke()
{
  logger__logger_10 = os_log_create("com.apple.StatusKit", "SKADatabaseReceivedInvitation");

  return MEMORY[0x2821F96F8]();
}

- (SKHandle)invitedSKHandle
{
  v2 = self->_invitedHandle;
  if ([(NSString *)v2 length])
  {
    v3 = [objc_alloc(MEMORY[0x277D680C0]) initWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SKHandle)senderSKHandle
{
  v2 = self->_senderHandle;
  if ([(NSString *)v2 length])
  {
    v3 = [objc_alloc(MEMORY[0x277D680C0]) initWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MPStatusKitIncomingRatchet)incomingRatchet
{
  v2 = self->_incomingRatchetState;
  if (v2)
  {
    v7 = 0;
    v3 = [objc_alloc(MEMORY[0x277D28548]) initWithData:v2 error:&v7];
    v4 = v7;
    if (!v3)
    {
      v5 = +[SKADatabaseReceivedInvitation logger];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [(SKADatabaseReceivedInvitation(IncomingRatchet) *)v4 incomingRatchet];
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SKInvitationPayload)skInvitationPayload
{
  invitationPayload = self->_invitationPayload;
  if (invitationPayload)
  {
    v3 = MEMORY[0x277D680D0];
    v4 = invitationPayload;
    v5 = [[v3 alloc] initWithData:v4 dateCreated:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end