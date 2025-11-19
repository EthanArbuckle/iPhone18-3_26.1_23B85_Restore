@interface SKADatabaseReceivedInvitation
+ (id)logger;
- (BOOL)isEqual:(id)a3;
- (MPStatusKitIncomingRatchet)incomingRatchet;
- (SKADatabaseReceivedInvitation)initWithCoreDataReceivedInvitation:(id)a3;
- (SKADatabaseReceivedInvitation)initWithInvitationIdentifier:(id)a3 senderHandle:(id)a4 invitedHandle:(id)a5 statusTypeIdentifier:(id)a6 dateInvitationCreated:(id)a7 incomingRatchetState:(id)a8 presenceIdentifier:(id)a9 channelToken:(id)a10 serverKey:(id)a11 peerKey:(id)a12 invitationPayload:(id)a13;
- (SKHandle)invitedSKHandle;
- (SKHandle)senderSKHandle;
- (SKInvitationPayload)skInvitationPayload;
- (id)description;
- (unint64_t)hash;
@end

@implementation SKADatabaseReceivedInvitation

- (SKADatabaseReceivedInvitation)initWithCoreDataReceivedInvitation:(id)a3
{
  v3 = a3;
  v4 = [v3 invitationIdentifier];
  v15 = [v3 senderHandle];
  v14 = [v3 invitedHandle];
  v5 = [v3 statusTypeIdentifier];
  v6 = [v3 dateInvitationCreated];
  v7 = [v3 incomingRatchetState];
  v13 = [v3 presenceIdentifier];
  v8 = [v3 channelToken];
  v9 = [v3 serverKey];
  v10 = [v3 peerKey];
  v11 = [v3 invitationPayload];

  v17 = [(SKADatabaseReceivedInvitation *)self initWithInvitationIdentifier:v4 senderHandle:v15 invitedHandle:v14 statusTypeIdentifier:v5 dateInvitationCreated:v6 incomingRatchetState:v7 presenceIdentifier:v13 channelToken:v8 serverKey:v9 peerKey:v10 invitationPayload:v11];
  return v17;
}

- (SKADatabaseReceivedInvitation)initWithInvitationIdentifier:(id)a3 senderHandle:(id)a4 invitedHandle:(id)a5 statusTypeIdentifier:(id)a6 dateInvitationCreated:(id)a7 incomingRatchetState:(id)a8 presenceIdentifier:(id)a9 channelToken:(id)a10 serverKey:(id)a11 peerKey:(id)a12 invitationPayload:(id)a13
{
  v44 = a3;
  v43 = a4;
  v18 = a5;
  v19 = a6;
  v42 = a7;
  v40 = a8;
  v20 = a9;
  v39 = a10;
  v41 = a11;
  v21 = a12;
  v22 = v18;
  v23 = a13;
  v45.receiver = self;
  v45.super_class = SKADatabaseReceivedInvitation;
  v24 = [(SKADatabaseReceivedInvitation *)&v45 init];
  if (v24)
  {
    v25 = [v44 copy];
    invitationIdentifier = v24->_invitationIdentifier;
    v24->_invitationIdentifier = v25;

    v27 = [v19 copy];
    statusTypeIdentifier = v24->_statusTypeIdentifier;
    v24->_statusTypeIdentifier = v27;

    v29 = [v20 copy];
    presenceIdentifier = v24->_presenceIdentifier;
    v24->_presenceIdentifier = v29;

    objc_storeStrong(&v24->_channelToken, a10);
    objc_storeStrong(&v24->_serverKey, a11);
    objc_storeStrong(&v24->_peerKey, a12);
    v31 = [v43 copy];
    senderHandle = v24->_senderHandle;
    v24->_senderHandle = v31;

    v33 = [v22 copy];
    invitedHandle = v24->_invitedHandle;
    v24->_invitedHandle = v33;

    objc_storeStrong(&v24->_dateInvitationCreated, a7);
    objc_storeStrong(&v24->_incomingRatchetState, a8);
    v35 = [v23 copy];
    invitationPayload = v24->_invitationPayload;
    v24->_invitationPayload = v35;

    v24->_invitationType = v19 == 0;
  }

  return v24;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if (self == v5)
    {
      LOBYTE(v10) = 1;
      goto LABEL_106;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [(SKADatabaseReceivedInvitation *)self invitationType];
      v9 = [(SKADatabaseReceivedInvitation *)v7 invitationType];
      v10 = v8 == v9;
      v11 = [(SKADatabaseReceivedInvitation *)self invitationIdentifier];
      if (!v11)
      {
        v3 = [(SKADatabaseReceivedInvitation *)v7 invitationIdentifier];
        if (!v3)
        {
          goto LABEL_14;
        }
      }

      v12 = [(SKADatabaseReceivedInvitation *)self invitationIdentifier];
      if (v12)
      {
        v13 = v12;
        v14 = [(SKADatabaseReceivedInvitation *)v7 invitationIdentifier];
        if (v14)
        {
          v15 = v14;
          v16 = v8 == v9;
          v17 = [(SKADatabaseReceivedInvitation *)self invitationIdentifier];
          v18 = [(SKADatabaseReceivedInvitation *)v7 invitationIdentifier];
          v10 = v16 & [v17 isEqualToString:v18];

          if (!v11)
          {
            goto LABEL_14;
          }

          goto LABEL_15;
        }
      }

      v10 = 0;
      if (!v11)
      {
LABEL_14:
      }

LABEL_15:

      v19 = [(SKADatabaseReceivedInvitation *)self senderHandle];
      if (!v19)
      {
        v3 = [(SKADatabaseReceivedInvitation *)v7 senderHandle];
        if (!v3)
        {
          goto LABEL_23;
        }
      }

      v20 = [(SKADatabaseReceivedInvitation *)self senderHandle];
      if (v20)
      {
        v21 = v20;
        v22 = [(SKADatabaseReceivedInvitation *)v7 senderHandle];
        if (v22)
        {
          v23 = v22;
          v24 = [(SKADatabaseReceivedInvitation *)self senderHandle];
          v25 = [(SKADatabaseReceivedInvitation *)v7 senderHandle];
          v10 &= [v24 isEqualToString:v25];

          if (!v19)
          {
            goto LABEL_23;
          }

          goto LABEL_24;
        }
      }

      v10 = 0;
      if (!v19)
      {
LABEL_23:
      }

LABEL_24:

      v26 = [(SKADatabaseReceivedInvitation *)self invitedHandle];
      if (!v26)
      {
        v3 = [(SKADatabaseReceivedInvitation *)v7 invitedHandle];
        if (!v3)
        {
          goto LABEL_32;
        }
      }

      v27 = [(SKADatabaseReceivedInvitation *)self invitedHandle];
      if (v27)
      {
        v28 = v27;
        v29 = [(SKADatabaseReceivedInvitation *)v7 invitedHandle];
        if (v29)
        {
          v30 = v29;
          v31 = [(SKADatabaseReceivedInvitation *)self invitedHandle];
          v32 = [(SKADatabaseReceivedInvitation *)v7 invitedHandle];
          v10 &= [v31 isEqualToString:v32];

          if (!v26)
          {
            goto LABEL_32;
          }

          goto LABEL_33;
        }
      }

      v10 = 0;
      if (!v26)
      {
LABEL_32:
      }

LABEL_33:

      v33 = [(SKADatabaseReceivedInvitation *)self statusTypeIdentifier];
      if (!v33)
      {
        v3 = [(SKADatabaseReceivedInvitation *)v7 statusTypeIdentifier];
        if (!v3)
        {
          goto LABEL_41;
        }
      }

      v34 = [(SKADatabaseReceivedInvitation *)self statusTypeIdentifier];
      if (v34)
      {
        v35 = v34;
        v36 = [(SKADatabaseReceivedInvitation *)v7 statusTypeIdentifier];
        if (v36)
        {
          v37 = v36;
          v38 = [(SKADatabaseReceivedInvitation *)self statusTypeIdentifier];
          v39 = [(SKADatabaseReceivedInvitation *)v7 statusTypeIdentifier];
          v10 &= [v38 isEqualToString:v39];

          if (!v33)
          {
            goto LABEL_41;
          }

          goto LABEL_42;
        }
      }

      v10 = 0;
      if (!v33)
      {
LABEL_41:
      }

LABEL_42:

      v40 = [(SKADatabaseReceivedInvitation *)self dateInvitationCreated];
      if (!v40)
      {
        v3 = [(SKADatabaseReceivedInvitation *)v7 dateInvitationCreated];
        if (!v3)
        {
          goto LABEL_50;
        }
      }

      v41 = [(SKADatabaseReceivedInvitation *)self dateInvitationCreated];
      if (v41)
      {
        v42 = v41;
        v43 = [(SKADatabaseReceivedInvitation *)v7 dateInvitationCreated];
        if (v43)
        {
          v44 = v43;
          v45 = [(SKADatabaseReceivedInvitation *)self dateInvitationCreated];
          v46 = [(SKADatabaseReceivedInvitation *)v7 dateInvitationCreated];
          v10 &= [v45 isEqualToDate:v46];

          if (!v40)
          {
            goto LABEL_50;
          }

          goto LABEL_51;
        }
      }

      v10 = 0;
      if (!v40)
      {
LABEL_50:
      }

LABEL_51:

      v47 = [(SKADatabaseReceivedInvitation *)self incomingRatchetState];
      if (!v47)
      {
        v3 = [(SKADatabaseReceivedInvitation *)v7 incomingRatchetState];
        if (!v3)
        {
          goto LABEL_59;
        }
      }

      v48 = [(SKADatabaseReceivedInvitation *)self incomingRatchetState];
      if (v48)
      {
        v49 = v48;
        v50 = [(SKADatabaseReceivedInvitation *)v7 incomingRatchetState];
        if (v50)
        {
          v51 = v50;
          v52 = [(SKADatabaseReceivedInvitation *)self incomingRatchetState];
          v53 = [(SKADatabaseReceivedInvitation *)v7 incomingRatchetState];
          v10 &= [v52 isEqualToData:v53];

          if (!v47)
          {
            goto LABEL_59;
          }

          goto LABEL_60;
        }
      }

      v10 = 0;
      if (!v47)
      {
LABEL_59:
      }

LABEL_60:

      v54 = [(SKADatabaseReceivedInvitation *)self presenceIdentifier];
      if (!v54)
      {
        v3 = [(SKADatabaseReceivedInvitation *)v7 presenceIdentifier];
        if (!v3)
        {
          goto LABEL_68;
        }
      }

      v55 = [(SKADatabaseReceivedInvitation *)self presenceIdentifier];
      if (v55)
      {
        v56 = v55;
        v57 = [(SKADatabaseReceivedInvitation *)v7 presenceIdentifier];
        if (v57)
        {
          v58 = v57;
          v59 = [(SKADatabaseReceivedInvitation *)self presenceIdentifier];
          v60 = [(SKADatabaseReceivedInvitation *)v7 presenceIdentifier];
          v10 &= [v59 isEqualToString:v60];

          if (!v54)
          {
            goto LABEL_68;
          }

          goto LABEL_69;
        }
      }

      v10 = 0;
      if (!v54)
      {
LABEL_68:
      }

LABEL_69:

      v61 = [(SKADatabaseReceivedInvitation *)self channelToken];
      if (!v61)
      {
        v3 = [(SKADatabaseReceivedInvitation *)v7 channelToken];
        if (!v3)
        {
          goto LABEL_77;
        }
      }

      v62 = [(SKADatabaseReceivedInvitation *)self channelToken];
      if (v62)
      {
        v63 = v62;
        v64 = [(SKADatabaseReceivedInvitation *)v7 channelToken];
        if (v64)
        {
          v65 = v64;
          v66 = [(SKADatabaseReceivedInvitation *)self channelToken];
          v67 = [(SKADatabaseReceivedInvitation *)v7 channelToken];
          v10 &= [v66 isEqualToData:v67];

          if (!v61)
          {
            goto LABEL_77;
          }

          goto LABEL_78;
        }
      }

      v10 = 0;
      if (!v61)
      {
LABEL_77:
      }

LABEL_78:

      v68 = [(SKADatabaseReceivedInvitation *)self serverKey];
      if (!v68)
      {
        v3 = [(SKADatabaseReceivedInvitation *)v7 serverKey];
        if (!v3)
        {
          goto LABEL_86;
        }
      }

      v69 = [(SKADatabaseReceivedInvitation *)self serverKey];
      if (v69)
      {
        v70 = v69;
        v71 = [(SKADatabaseReceivedInvitation *)v7 serverKey];
        if (v71)
        {
          v72 = v71;
          v73 = [(SKADatabaseReceivedInvitation *)self serverKey];
          v74 = [(SKADatabaseReceivedInvitation *)v7 serverKey];
          v10 &= [v73 isEqualToData:v74];

          if (!v68)
          {
            goto LABEL_86;
          }

          goto LABEL_87;
        }
      }

      v10 = 0;
      if (!v68)
      {
LABEL_86:
      }

LABEL_87:

      v75 = [(SKADatabaseReceivedInvitation *)self peerKey];
      if (!v75)
      {
        v3 = [(SKADatabaseReceivedInvitation *)v7 peerKey];
        if (!v3)
        {
          goto LABEL_95;
        }
      }

      v76 = [(SKADatabaseReceivedInvitation *)self peerKey];
      if (v76)
      {
        v77 = v76;
        v78 = [(SKADatabaseReceivedInvitation *)v7 peerKey];
        if (v78)
        {
          v79 = v78;
          v80 = [(SKADatabaseReceivedInvitation *)self peerKey];
          v81 = [(SKADatabaseReceivedInvitation *)v7 peerKey];
          v10 &= [v80 isEqualToData:v81];

          if (!v75)
          {
            goto LABEL_95;
          }

          goto LABEL_96;
        }
      }

      v10 = 0;
      if (!v75)
      {
LABEL_95:
      }

LABEL_96:

      v82 = [(SKADatabaseReceivedInvitation *)self invitationPayload];
      if (!v82)
      {
        v3 = [(SKADatabaseReceivedInvitation *)v7 invitationPayload];
        if (!v3)
        {
          goto LABEL_104;
        }
      }

      v83 = [(SKADatabaseReceivedInvitation *)self invitationPayload];
      if (v83)
      {
        v84 = v83;
        v85 = [(SKADatabaseReceivedInvitation *)v7 invitationPayload];
        if (v85)
        {
          v86 = v85;
          v87 = [(SKADatabaseReceivedInvitation *)self invitationPayload];
          v88 = [(SKADatabaseReceivedInvitation *)v7 invitationPayload];
          v10 &= [v87 isEqualToData:v88];

          if (!v82)
          {
            goto LABEL_104;
          }

          goto LABEL_105;
        }
      }

      LOBYTE(v10) = 0;
      if (!v82)
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
  v3 = [(SKADatabaseReceivedInvitation *)self invitationType];
  v4 = [(SKADatabaseReceivedInvitation *)self invitationPayload];
  v5 = [v4 hash] ^ v3;

  v6 = [(SKADatabaseReceivedInvitation *)self dateInvitationCreated];
  v7 = [v6 hash];

  v8 = [(SKADatabaseReceivedInvitation *)self invitedHandle];
  v9 = v5 ^ v7 ^ [v8 hash];

  v10 = [(SKADatabaseReceivedInvitation *)self senderHandle];
  v11 = [v10 hash];

  v12 = [(SKADatabaseReceivedInvitation *)self invitationIdentifier];
  v13 = v11 ^ [v12 hash];

  v14 = [(SKADatabaseReceivedInvitation *)self statusTypeIdentifier];
  v15 = v9 ^ v13 ^ [v14 hash];

  v16 = [(SKADatabaseReceivedInvitation *)self presenceIdentifier];
  v17 = [v16 hash];

  v18 = [(SKADatabaseReceivedInvitation *)self channelToken];
  v19 = v17 ^ [v18 hash];

  v20 = [(SKADatabaseReceivedInvitation *)self serverKey];
  v21 = v19 ^ [v20 hash];

  v22 = [(SKADatabaseReceivedInvitation *)self peerKey];
  v23 = v15 ^ v21 ^ [v22 hash];

  v24 = [(SKADatabaseReceivedInvitation *)self incomingRatchetState];
  v25 = [v24 hash];

  return v23 ^ v25;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SKADatabaseReceivedInvitation *)self invitationIdentifier];
  v6 = [(SKADatabaseReceivedInvitation *)self dateInvitationCreated];
  v7 = [(SKADatabaseReceivedInvitation *)self skInvitationPayload];
  v8 = [v3 stringWithFormat:@"<%@: %p identifier = %@; dateCreated = %@; invitationPayload: %@>", v4, self, v5, v6, v7];;

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