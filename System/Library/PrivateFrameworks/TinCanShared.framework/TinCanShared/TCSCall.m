@interface TCSCall
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCall:(id)a3;
- (TCSCall)initWithCall:(id)a3;
- (TCSCall)initWithCoder:(id)a3;
- (TCSCall)initWithURL:(id)a3;
- (id)URL;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TCSCall

- (TCSCall)initWithCall:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = TCSCall;
  v5 = [(TCSCall *)&v21 init];
  v6 = v5;
  if (v5)
  {
    v5->_isNilCall = v4 == 0;
    v5->_isConnected = [v4 isConnected];
    v6->_isOutgoing = [v4 isOutgoing];
    if ([v4 tc_useUnderlyingRemoteUplinkMuted])
    {
      v7 = [v4 isRemoteUplinkMuted];
    }

    else
    {
      v7 = 1;
    }

    v6->_isRemoteUplinkMuted = v7;
    v8 = [v4 contactIdentifiers];
    v9 = [v8 firstObject];
    contactIdentifier = v6->_contactIdentifier;
    v6->_contactIdentifier = v9;

    v11 = [v4 handle];
    v12 = [v11 value];
    handleValue = v6->_handleValue;
    v6->_handleValue = v12;

    v6->_status = [v4 status];
    v14 = [v4 uniqueProxyIdentifier];
    uniqueProxyIdentifier = v6->_uniqueProxyIdentifier;
    v6->_uniqueProxyIdentifier = v14;

    v6->_disconnectedReason = [v4 disconnectedReason];
    v16 = [v4 dateAnsweredOrDialed];
    dateAnsweredOrDialed = v6->_dateAnsweredOrDialed;
    v6->_dateAnsweredOrDialed = v16;

    v18 = [v4 dateConnected];
    dateConnected = v6->_dateConnected;
    v6->_dateConnected = v18;
  }

  return v6;
}

- (TCSCall)initWithURL:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v56.receiver = self;
  v56.super_class = TCSCall;
  v5 = [(TCSCall *)&v56 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v4 resolvingAgainstBaseURL:0];
    v7 = [v6 scheme];
    if ([v7 isEqualToString:@"tincan"])
    {
      v8 = [v6 host];
      v9 = [v8 isEqualToString:@"tcsCall"];

      if (v9)
      {
        v51 = v4;
        v10 = objc_opt_new();
        [v10 setNumberStyle:1];
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v11 = [v6 queryItems];
        v12 = [v11 countByEnumeratingWithState:&v52 objects:v57 count:16];
        if (!v12)
        {
          goto LABEL_51;
        }

        v13 = v12;
        v14 = *v53;
        while (1)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v53 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v52 + 1) + 8 * i);
            v17 = [v16 name];
            v18 = [@"conn" isEqualToString:v17];

            if (v18)
            {
              v19 = [v16 value];
              v20 = [v10 numberFromString:v19];

              if (v20)
              {
                v21 = [v20 BOOLValue];
              }

              else
              {
                v21 = 0;
              }

              v5->_isConnected = v21;
            }

            else
            {
              v22 = [v16 name];
              v23 = [@"out" isEqualToString:v22];

              if (v23)
              {
                v24 = [v16 value];
                v20 = [v10 numberFromString:v24];

                if (v20)
                {
                  v25 = [v20 BOOLValue];
                }

                else
                {
                  v25 = 0;
                }

                v5->_isOutgoing = v25;
              }

              else
              {
                v26 = [v16 name];
                v27 = [@"rUM" isEqualToString:v26];

                if (v27)
                {
                  v28 = [v16 value];
                  v20 = [v10 numberFromString:v28];

                  if (v20)
                  {
                    v29 = [v20 BOOLValue];
                  }

                  else
                  {
                    v29 = 0;
                  }

                  v5->_isRemoteUplinkMuted = v29;
                }

                else
                {
                  v30 = [v16 name];
                  v31 = [@"stat" isEqualToString:v30];

                  if (v31)
                  {
                    v32 = [v16 value];
                    v20 = [v10 numberFromString:v32];

                    if (v20)
                    {
                      v33 = [v20 intValue];
                    }

                    else
                    {
                      v33 = 0;
                    }

                    v5->_status = v33;
                  }

                  else
                  {
                    v34 = [v16 name];
                    v35 = [@"dR" isEqualToString:v34];

                    if (v35)
                    {
                      v36 = [v16 value];
                      v20 = [v10 numberFromString:v36];

                      if (v20)
                      {
                        v37 = [v20 intValue];
                      }

                      else
                      {
                        v37 = 0;
                      }

                      v5->_disconnectedReason = v37;
                    }

                    else
                    {
                      v38 = [v16 name];
                      v39 = [@"cID" isEqualToString:v38];

                      if (v39)
                      {
                        v20 = [v16 value];
                        v40 = [v20 length];
                        if (v40)
                        {
                          v40 = [v16 value];
                        }

                        contactIdentifier = v5->_contactIdentifier;
                        v5->_contactIdentifier = v40;
                      }

                      else
                      {
                        v42 = [v16 name];
                        v43 = [@"hdl" isEqualToString:v42];

                        if (v43)
                        {
                          v20 = [v16 value];
                          v44 = [v20 length];
                          if (v44)
                          {
                            v44 = [v16 value];
                          }

                          contactIdentifier = v5->_handleValue;
                          v5->_handleValue = v44;
                        }

                        else
                        {
                          v45 = [v16 name];
                          v46 = [@"uPI" isEqualToString:v45];

                          if (!v46)
                          {
                            continue;
                          }

                          v20 = [v16 value];
                          if ([v20 length])
                          {
                            v47 = [v16 value];
                          }

                          else
                          {
                            v47 = &stru_287F22AC0;
                          }

                          contactIdentifier = v5->_uniqueProxyIdentifier;
                          v5->_uniqueProxyIdentifier = &v47->isa;
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v52 objects:v57 count:16];
          if (!v13)
          {
LABEL_51:

            v4 = v51;
            goto LABEL_56;
          }
        }
      }
    }

    else
    {
    }

    _TCSInitializeLogging();
    v48 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
    {
      [(TCSCall *)v4 initWithURL:v48];
    }

    v5->_isNilCall = 1;
LABEL_56:
  }

  v49 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqualToCall:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    v11 = 0;
    goto LABEL_36;
  }

  v39 = [(TCSCall *)self isConnected];
  v38 = [v7 isConnected];
  v37 = [(TCSCall *)self isOutgoing];
  v36 = [v7 isOutgoing];
  v35 = [(TCSCall *)self isRemoteUplinkMuted];
  v34 = [v7 isRemoteUplinkMuted];
  v8 = [(TCSCall *)self contactIdentifier];
  if (!v8)
  {
    v3 = [v7 contactIdentifier];
    if (!v3)
    {
      v40 = 1;
LABEL_8:

      goto LABEL_9;
    }
  }

  v9 = [(TCSCall *)self contactIdentifier];
  v10 = [v7 contactIdentifier];
  v40 = [v9 isEqualToString:v10];

  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_9:

  v12 = [(TCSCall *)self handleValue];
  if (!v12)
  {
    v3 = [v7 handleValue];
    if (!v3)
    {
      v33 = 1;
LABEL_14:

      goto LABEL_15;
    }
  }

  v13 = [(TCSCall *)self handleValue];
  v14 = [v7 handleValue];
  v33 = [v13 isEqualToString:v14];

  if (!v12)
  {
    goto LABEL_14;
  }

LABEL_15:

  v32 = [(TCSCall *)self status];
  v31 = [v7 status];
  v15 = [(TCSCall *)self uniqueProxyIdentifier];
  if (!v15)
  {
    v4 = [v7 uniqueProxyIdentifier];
    if (!v4)
    {
      v30 = 1;
LABEL_20:

      goto LABEL_21;
    }
  }

  v16 = [(TCSCall *)self uniqueProxyIdentifier];
  v17 = [v7 uniqueProxyIdentifier];
  v30 = [v16 isEqualToString:v17];

  if (!v15)
  {
    goto LABEL_20;
  }

LABEL_21:

  v29 = [(TCSCall *)self disconnectedReason];
  v28 = [v7 disconnectedReason];
  v18 = [(TCSCall *)self dateAnsweredOrDialed];
  if (!v18)
  {
    v5 = [v7 dateAnsweredOrDialed];
    if (!v5)
    {
      v21 = 1;
LABEL_26:

      goto LABEL_27;
    }
  }

  v19 = [(TCSCall *)self dateAnsweredOrDialed];
  v20 = [v7 dateAnsweredOrDialed];
  v21 = [v19 isEqualToDate:v20];

  if (!v18)
  {
    goto LABEL_26;
  }

LABEL_27:

  v22 = [(TCSCall *)self dateConnected];
  if (!v22)
  {
    v5 = [v7 dateConnected];
    if (!v5)
    {
      v25 = 1;
LABEL_32:

      goto LABEL_33;
    }
  }

  v23 = [(TCSCall *)self dateConnected];
  v24 = [v7 dateConnected];
  v25 = [v23 isEqualToDate:v24];

  if (!v22)
  {
    goto LABEL_32;
  }

LABEL_33:

  v26 = v40 & ~(v39 ^ v38 | v37 ^ v36 | v35 ^ v34) & v33 & (v32 == v31) & v30;
  if (v29 != v28)
  {
    v26 = 0;
  }

  v11 = v26 & v21 & v25;
LABEL_36:

  return v11;
}

- (id)URL
{
  v44[8] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [v3 setNumberStyle:1];
  v4 = objc_opt_new();
  [v4 setScheme:@"tincan"];
  [v4 setHost:@"tcsCall"];
  v5 = MEMORY[0x277CCAD18];
  v43 = [MEMORY[0x277CCABB0] numberWithBool:{-[TCSCall isConnected](self, "isConnected")}];
  v42 = [v3 stringFromNumber:v43];
  v41 = [v5 queryItemWithName:@"conn" value:v42];
  v44[0] = v41;
  v6 = MEMORY[0x277CCAD18];
  v40 = [MEMORY[0x277CCABB0] numberWithBool:{-[TCSCall isOutgoing](self, "isOutgoing")}];
  v39 = [v3 stringFromNumber:v40];
  v38 = [v6 queryItemWithName:@"out" value:v39];
  v44[1] = v38;
  v7 = MEMORY[0x277CCAD18];
  v37 = [MEMORY[0x277CCABB0] numberWithBool:{-[TCSCall isRemoteUplinkMuted](self, "isRemoteUplinkMuted")}];
  v36 = [v3 stringFromNumber:v37];
  v35 = [v7 queryItemWithName:@"rUM" value:v36];
  v44[2] = v35;
  v8 = MEMORY[0x277CCAD18];
  v34 = [MEMORY[0x277CCABB0] numberWithInt:{-[TCSCall status](self, "status")}];
  v33 = [v3 stringFromNumber:v34];
  v32 = [v8 queryItemWithName:@"stat" value:v33];
  v44[3] = v32;
  v9 = MEMORY[0x277CCAD18];
  v31 = [MEMORY[0x277CCABB0] numberWithInt:{-[TCSCall disconnectedReason](self, "disconnectedReason")}];
  v30 = [v3 stringFromNumber:v31];
  v10 = [v9 queryItemWithName:@"dR" value:v30];
  v44[4] = v10;
  v11 = MEMORY[0x277CCAD18];
  v12 = [(TCSCall *)self contactIdentifier];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = &stru_287F22AC0;
  }

  v15 = [v11 queryItemWithName:@"cID" value:v14];
  v44[5] = v15;
  v16 = MEMORY[0x277CCAD18];
  v17 = [(TCSCall *)self handleValue];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = &stru_287F22AC0;
  }

  v20 = [v16 queryItemWithName:@"hdl" value:v19];
  v44[6] = v20;
  v21 = MEMORY[0x277CCAD18];
  v22 = [(TCSCall *)self uniqueProxyIdentifier];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = &stru_287F22AC0;
  }

  v25 = [v21 queryItemWithName:@"uPI" value:v24];
  v44[7] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:8];
  [v4 setQueryItems:v26];

  v27 = [v4 URL];

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  if (self->_isNilCall)
  {
    v4 = @" (no call)>";
  }

  else
  {
    v5 = [(TCSCall *)self handleValue];
    [v3 appendFormat:@" hdl=%@", v5];

    [(TCSCall *)self status];
    v6 = TUStringForCallStatus();
    [v3 appendFormat:@" stat=%@", v6];

    [v3 appendFormat:@" dR=%d", -[TCSCall disconnectedReason](self, "disconnectedReason")];
    if ([(TCSCall *)self status]== 5 || [(TCSCall *)self status]== 6)
    {
      v7 = NSStringFromTUCallDisconnectedReason([(TCSCall *)self disconnectedReason]);
      [v3 appendFormat:@":'%@'", v7];
    }

    v8 = [(TCSCall *)self uniqueProxyIdentifier];
    [v3 appendFormat:@" uPI=%@", v8];

    [(TCSCall *)self isConnected];
    v9 = NSStringFromBOOL();
    [v3 appendFormat:@" conn=%@", v9];

    v10 = [(TCSCall *)self isOutgoing];
    v11 = @"in";
    if (v10)
    {
      v11 = @"out";
    }

    [v3 appendFormat:@" dir=%@", v11];
    v12 = [(TCSCall *)self contactIdentifier];
    [v3 appendFormat:@" cID=%@", v12];

    [v3 appendFormat:@" rUM=%d", -[TCSCall isRemoteUplinkMuted](self, "isRemoteUplinkMuted")];
    v4 = @">";
  }

  [v3 appendString:v4];
  v13 = [v3 copy];

  return v13;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TCSCall *)self isEqualToCall:v4];
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(TCSCall *)self isConnected];
  v4 = v3 ^ [(TCSCall *)self isOutgoing];
  v5 = v4 ^ [(TCSCall *)self isRemoteUplinkMuted];
  v6 = [(TCSCall *)self contactIdentifier];
  v7 = [v6 hash];
  v8 = [(TCSCall *)self handleValue];
  v9 = v7 ^ [v8 hash];
  v10 = v9 ^ [(TCSCall *)self status];
  v11 = [(TCSCall *)self uniqueProxyIdentifier];
  v12 = v10 ^ [v11 hash] ^ v5;
  v13 = [(TCSCall *)self disconnectedReason];
  v14 = [(TCSCall *)self dateAnsweredOrDialed];
  v15 = v13 ^ [v14 hash];
  v16 = [(TCSCall *)self dateConnected];
  v17 = v15 ^ [v16 hash];

  return v12 ^ v17;
}

- (TCSCall)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TCSCall *)self init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_isConnected);
    v5->_isConnected = [v4 decodeBoolForKey:v6];

    v7 = NSStringFromSelector(sel_isOutgoing);
    v5->_isOutgoing = [v4 decodeBoolForKey:v7];

    v8 = NSStringFromSelector(sel_isRemoteUplinkMuted);
    v5->_isRemoteUplinkMuted = [v4 decodeBoolForKey:v8];

    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_contactIdentifier);
    v11 = [v4 decodeObjectOfClass:v9 forKey:v10];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v11;

    v13 = objc_opt_class();
    v14 = NSStringFromSelector(sel_handleValue);
    v15 = [v4 decodeObjectOfClass:v13 forKey:v14];
    handleValue = v5->_handleValue;
    v5->_handleValue = v15;

    v17 = NSStringFromSelector(sel_status);
    v5->_status = [v4 decodeIntForKey:v17];

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_uniqueProxyIdentifier);
    v20 = [v4 decodeObjectOfClass:v18 forKey:v19];
    uniqueProxyIdentifier = v5->_uniqueProxyIdentifier;
    v5->_uniqueProxyIdentifier = v20;

    v22 = NSStringFromSelector(sel_disconnectedReason);
    v5->_disconnectedReason = [v4 decodeIntForKey:v22];

    v23 = objc_opt_class();
    v24 = NSStringFromSelector(sel_dateAnsweredOrDialed);
    v25 = [v4 decodeObjectOfClass:v23 forKey:v24];
    dateAnsweredOrDialed = v5->_dateAnsweredOrDialed;
    v5->_dateAnsweredOrDialed = v25;

    v27 = objc_opt_class();
    v28 = NSStringFromSelector(sel_dateConnected);
    v29 = [v4 decodeObjectOfClass:v27 forKey:v28];
    dateConnected = v5->_dateConnected;
    v5->_dateConnected = v29;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  isConnected = self->_isConnected;
  v5 = a3;
  v6 = NSStringFromSelector(sel_isConnected);
  [v5 encodeBool:isConnected forKey:v6];

  isOutgoing = self->_isOutgoing;
  v8 = NSStringFromSelector(sel_isOutgoing);
  [v5 encodeBool:isOutgoing forKey:v8];

  isRemoteUplinkMuted = self->_isRemoteUplinkMuted;
  v10 = NSStringFromSelector(sel_isRemoteUplinkMuted);
  [v5 encodeBool:isRemoteUplinkMuted forKey:v10];

  contactIdentifier = self->_contactIdentifier;
  v12 = NSStringFromSelector(sel_contactIdentifier);
  [v5 encodeObject:contactIdentifier forKey:v12];

  handleValue = self->_handleValue;
  v14 = NSStringFromSelector(sel_handleValue);
  [v5 encodeObject:handleValue forKey:v14];

  status = self->_status;
  v16 = NSStringFromSelector(sel_status);
  [v5 encodeInt:status forKey:v16];

  uniqueProxyIdentifier = self->_uniqueProxyIdentifier;
  v18 = NSStringFromSelector(sel_uniqueProxyIdentifier);
  [v5 encodeObject:uniqueProxyIdentifier forKey:v18];

  disconnectedReason = self->_disconnectedReason;
  v20 = NSStringFromSelector(sel_disconnectedReason);
  [v5 encodeInt:disconnectedReason forKey:v20];

  dateAnsweredOrDialed = self->_dateAnsweredOrDialed;
  v22 = NSStringFromSelector(sel_dateAnsweredOrDialed);
  [v5 encodeObject:dateAnsweredOrDialed forKey:v22];

  dateConnected = self->_dateConnected;
  v24 = NSStringFromSelector(sel_dateConnected);
  [v5 encodeObject:dateConnected forKey:v24];
}

- (void)initWithURL:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138477827;
  v4 = a1;
  _os_log_error_impl(&dword_26F110000, a2, OS_LOG_TYPE_ERROR, "Failed to parse URL %{private}@ into a TCSCall.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end