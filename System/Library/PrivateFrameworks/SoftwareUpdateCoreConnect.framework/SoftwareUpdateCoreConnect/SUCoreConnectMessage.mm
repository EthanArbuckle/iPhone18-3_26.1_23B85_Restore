@interface SUCoreConnectMessage
+ (id)nameForMessageType:(int64_t)a3;
- ($115C4C562B26FF47E01F9F4EA65B5887)clientConnectionAuditToken;
- (BOOL)isBoostable;
- (SUCoreConnectMessage)initWithCoder:(id)a3;
- (SUCoreConnectMessage)initWithType:(int64_t)a3 messageName:(id)a4 clientID:(id)a5 version:(id)a6 message:(id)a7;
- (id)description;
- (id)summary;
- (id)xpcBoost;
- (void)encodeWithCoder:(id)a3;
- (void)setBoostable:(BOOL)a3;
- (void)setClientConnectionAuditToken:(id *)a3;
@end

@implementation SUCoreConnectMessage

- (id)description
{
  v2 = self;
  v52 = *MEMORY[0x277D85DE8];
  v3 = [(SUCoreConnectMessage *)self message];
  v4 = @"[>>>\n";
  if (!v3)
  {
    v4 = 0;
  }

  v5 = v4;

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = [(SUCoreConnectMessage *)v2 message];
  v40 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v40)
  {
    v6 = 0x277CBE000uLL;
    v7 = *v47;
    v36 = *v47;
    v37 = v2;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v47 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v46 + 1) + 8 * i);
        v10 = [(SUCoreConnectMessage *)v2 message];
        v11 = [v10 objectForKey:v9];

        v12 = *(v6 + 2752);
        objc_opt_class();
        v41 = v11;
        if (objc_opt_isKindOfClass())
        {
          v39 = v5;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v13 = v11;
          v14 = [v13 countByEnumeratingWithState:&v42 objects:v50 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v43;
            v17 = @"{\n";
            do
            {
              v18 = 0;
              v19 = v17;
              do
              {
                if (*v43 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v20 = *(*(&v42 + 1) + 8 * v18);
                v21 = [v13 objectForKey:v20];
                v17 = [(__CFString *)v19 stringByAppendingFormat:@"\t\t%@: %@\n", v20, v21];

                ++v18;
                v19 = v17;
              }

              while (v15 != v18);
              v15 = [v13 countByEnumeratingWithState:&v42 objects:v50 count:16];
            }

            while (v15);
          }

          else
          {
            v17 = @"{\n";
          }

          v22 = v39;
          v5 = [(__CFString *)v39 stringByAppendingFormat:@"\t%@: %@\n\t}\n", v9, v17];
          v7 = v36;
          v2 = v37;
          v6 = 0x277CBE000;
        }

        else
        {
          v17 = [(SUCoreConnectMessage *)v2 message];
          v22 = [(__CFString *)v17 objectForKey:v9];
          v23 = [(__CFString *)v5 stringByAppendingFormat:@"\t%@: %@\n", v9, v22];

          v5 = v23;
        }
      }

      v40 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v40);
  }

  if (v5)
  {
    v24 = [(__CFString *)v5 stringByAppendingString:@"<<<]"];
  }

  else
  {
    v24 = 0;
  }

  v25 = MEMORY[0x277CCACA8];
  v26 = [SUCoreConnectMessage nameForMessageType:[(SUCoreConnectMessage *)v2 messageType]];
  v27 = [(SUCoreConnectMessage *)v2 messageName];
  v28 = [(SUCoreConnectMessage *)v2 clientID];
  v29 = [(SUCoreConnectMessage *)v2 clientIDRaw];
  v30 = [(SUCoreConnectMessage *)v2 clientProcessIdentifier];
  v31 = [(SUCoreConnectMessage *)v2 version];
  v32 = [(SUCoreConnectMessage *)v2 error];
  v33 = [v25 stringWithFormat:@"SUCoreConnectMessage(type:%@|name:%@|clientID:%@|clientIDRaw:%@|clientProcessIdentifier:%d|version:%@|error:%@|message:%@)", v26, v27, v28, v29, v30, v31, v32, v24];

  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

- (id)summary
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SUCoreConnectMessage *)self clientID];
  v5 = [SUCoreConnectMessage nameForMessageType:[(SUCoreConnectMessage *)self messageType]];
  v6 = [(SUCoreConnectMessage *)self messageName];
  v7 = [v3 stringWithFormat:@"SUCoreConnectMessage(clientID:%@|type:%@|name:%@)", v4, v5, v6];

  return v7;
}

- (SUCoreConnectMessage)initWithType:(int64_t)a3 messageName:(id)a4 clientID:(id)a5 version:(id)a6 message:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v13)
  {
    v26 = [MEMORY[0x277D64428] sharedDiag];
    v27 = v26;
    v28 = @"SUCoreConnectMessage requires a non-nil messageName";
LABEL_10:
    [v26 trackAnomaly:@"SUCoreConnectMessage" forReason:v28 withResult:8102 withError:0];

    v25 = 0;
    goto LABEL_11;
  }

  if (!v14)
  {
    v26 = [MEMORY[0x277D64428] sharedDiag];
    v27 = v26;
    v28 = @"SUCoreConnectMessage requires a non-nil clientID";
    goto LABEL_10;
  }

  if (![SUCoreConnectMessage validateMessageDictionary:v16])
  {
    v26 = [MEMORY[0x277D64428] sharedDiag];
    v27 = v26;
    v28 = @"SUCoreConnectMessage requires a valid message dictionary";
    goto LABEL_10;
  }

  v30.receiver = self;
  v30.super_class = SUCoreConnectMessage;
  v17 = [(SUCoreConnectMessage *)&v30 init];
  v18 = v17;
  if (v17)
  {
    v17->_stateLock._os_unfair_lock_opaque = 0;
    v17->_messageType = a3;
    objc_storeStrong(&v17->_messageName, a4);
    v19 = MEMORY[0x277CCACA8];
    v20 = [MEMORY[0x277CCAC38] processInfo];
    v21 = [v19 stringWithFormat:@"%@.<%d>", v14, objc_msgSend(v20, "processIdentifier")];
    clientID = v18->_clientID;
    v18->_clientID = v21;

    objc_storeStrong(&v18->_clientIDRaw, a5);
    v23 = [MEMORY[0x277CCAC38] processInfo];
    v18->_clientProcessIdentifier = [v23 processIdentifier];

    objc_storeStrong(&v18->_version, a6);
    error = v18->_error;
    v18->_error = 0;

    objc_storeStrong(&v18->_message, a7);
  }

  self = v18;
  v25 = self;
LABEL_11:

  return v25;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[SUCoreConnectMessage messageType](self forKey:{"messageType"), @"MessageType"}];
  v5 = [(SUCoreConnectMessage *)self messageName];
  [v4 encodeObject:v5 forKey:@"MessageName"];

  v6 = [(SUCoreConnectMessage *)self clientID];
  [v4 encodeObject:v6 forKey:@"ClientID"];

  v7 = [(SUCoreConnectMessage *)self clientIDRaw];
  [v4 encodeObject:v7 forKey:@"ClientIDRaw"];

  [v4 encodeInt:-[SUCoreConnectMessage clientProcessIdentifier](self forKey:{"clientProcessIdentifier"), @"ClientProcessIdentifier"}];
  v8 = [(SUCoreConnectMessage *)self version];
  [v4 encodeObject:v8 forKey:@"Version"];

  v9 = [(SUCoreConnectMessage *)self error];
  [v4 encodeObject:v9 forKey:@"Error"];

  v10 = [(SUCoreConnectMessage *)self message];
  [v4 encodeObject:v10 forKey:@"Message"];
}

- (SUCoreConnectMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v40.receiver = self;
  v40.super_class = SUCoreConnectMessage;
  v5 = [(SUCoreConnectMessage *)&v40 init];
  v6 = v5;
  if (v5)
  {
    v5->_stateLock._os_unfair_lock_opaque = 0;
    v5->_messageType = [v4 decodeIntegerForKey:@"MessageType"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MessageName"];
    messageName = v6->_messageName;
    v6->_messageName = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ClientID"];
    clientID = v6->_clientID;
    v6->_clientID = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ClientIDRaw"];
    clientIDRaw = v6->_clientIDRaw;
    v6->_clientIDRaw = v11;

    v6->_clientProcessIdentifier = [v4 decodeIntForKey:@"ClientProcessIdentifier"];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Version"];
    version = v6->_version;
    v6->_version = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Error"];
    error = v6->_error;
    v6->_error = v15;

    messageType = v6->_messageType;
    if (messageType == 2)
    {
      v18 = [SUCoreConnectClientPolicy getAllowlistedClassesForKey:v6->_messageName];
      if (v18)
      {
LABEL_7:
        v19 = [v4 decodeObjectOfClasses:v18 forKey:@"Message"];
        message = v6->_message;
        v6->_message = v19;

LABEL_13:
        goto LABEL_14;
      }

      v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"client policy does not define allowlisted classes for key: %@", v6->_messageName];
      v35 = [MEMORY[0x277D643F8] sharedCore];
      v36 = [v35 buildError:8902 underlying:v6->_error description:v25];
      v37 = v6->_error;
      v6->_error = v36;

      v38 = v6->_message;
      v6->_message = 0;

      v30 = [MEMORY[0x277D64428] sharedDiag];
      v31 = v30;
      v32 = v6->_error;
      v33 = v25;
      v34 = 8902;
    }

    else
    {
      if (messageType != 1)
      {
        v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"no connect policy type could be determined for message with type: %ld", v6->_messageType];
        v21 = [MEMORY[0x277D643F8] sharedCore];
        v22 = [v21 buildError:8901 underlying:v6->_error description:v18];
        v23 = v6->_error;
        v6->_error = v22;

        v24 = v6->_message;
        v6->_message = 0;

        v25 = [MEMORY[0x277D64428] sharedDiag];
        [v25 trackError:@"SUCoreConnectMessageDecode" forReason:v18 withResult:8901 withError:v6->_error];
LABEL_12:

        goto LABEL_13;
      }

      v18 = [SUCoreConnectServerPolicy getAllowlistedClassesForKey:v6->_messageName];
      if (v18)
      {
        goto LABEL_7;
      }

      v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"server policy does not define allowlisted classes for key: %@", v6->_messageName];
      v26 = [MEMORY[0x277D643F8] sharedCore];
      v27 = [v26 buildError:8904 underlying:v6->_error description:v25];
      v28 = v6->_error;
      v6->_error = v27;

      v29 = v6->_message;
      v6->_message = 0;

      v30 = [MEMORY[0x277D64428] sharedDiag];
      v31 = v30;
      v32 = v6->_error;
      v33 = v25;
      v34 = 8904;
    }

    [v30 trackError:@"SUCoreConnectMessageDecode" forReason:v33 withResult:v34 withError:v32];

    goto LABEL_12;
  }

LABEL_14:

  return v6;
}

+ (id)nameForMessageType:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = @"CLIENT_MESSAGE";
  }

  else if (a3 == 2)
  {
    v4 = @"SERVER_MESSAGE";
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"UNKNOWN_TYPE(%lu)", a3];
  }

  return v4;
}

- (BOOL)isBoostable
{
  os_unfair_lock_lock(&self->_stateLock);
  boostable = self->_boostable;
  os_unfair_lock_unlock(&self->_stateLock);
  return boostable;
}

- (void)setBoostable:(BOOL)a3
{
  os_unfair_lock_lock(&self->_stateLock);
  self->_boostable = a3;

  os_unfair_lock_unlock(&self->_stateLock);
}

- (id)xpcBoost
{
  os_unfair_lock_lock(&self->_stateLock);
  if (self->_boostable)
  {
    v3 = [[SUCoreConnectBoost alloc] initWithMessage:self];
    self->_boostable = 0;
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&self->_stateLock);

  return v3;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)clientConnectionAuditToken
{
  v3 = *&self[3].var0[2];
  *retstr->var0 = *&self[2].var0[6];
  *&retstr->var0[4] = v3;
  return self;
}

- (void)setClientConnectionAuditToken:(id *)a3
{
  v3 = *a3->var0;
  *&self->_clientConnectionAuditToken.val[4] = *&a3->var0[4];
  *self->_clientConnectionAuditToken.val = v3;
}

@end