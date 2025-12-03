@interface TCSCall
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCall:(id)call;
- (TCSCall)initWithCall:(id)call;
- (TCSCall)initWithCoder:(id)coder;
- (TCSCall)initWithURL:(id)l;
- (id)URL;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TCSCall

- (TCSCall)initWithCall:(id)call
{
  callCopy = call;
  v21.receiver = self;
  v21.super_class = TCSCall;
  v5 = [(TCSCall *)&v21 init];
  v6 = v5;
  if (v5)
  {
    v5->_isNilCall = callCopy == 0;
    v5->_isConnected = [callCopy isConnected];
    v6->_isOutgoing = [callCopy isOutgoing];
    if ([callCopy tc_useUnderlyingRemoteUplinkMuted])
    {
      isRemoteUplinkMuted = [callCopy isRemoteUplinkMuted];
    }

    else
    {
      isRemoteUplinkMuted = 1;
    }

    v6->_isRemoteUplinkMuted = isRemoteUplinkMuted;
    contactIdentifiers = [callCopy contactIdentifiers];
    firstObject = [contactIdentifiers firstObject];
    contactIdentifier = v6->_contactIdentifier;
    v6->_contactIdentifier = firstObject;

    handle = [callCopy handle];
    value = [handle value];
    handleValue = v6->_handleValue;
    v6->_handleValue = value;

    v6->_status = [callCopy status];
    uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
    uniqueProxyIdentifier = v6->_uniqueProxyIdentifier;
    v6->_uniqueProxyIdentifier = uniqueProxyIdentifier;

    v6->_disconnectedReason = [callCopy disconnectedReason];
    dateAnsweredOrDialed = [callCopy dateAnsweredOrDialed];
    dateAnsweredOrDialed = v6->_dateAnsweredOrDialed;
    v6->_dateAnsweredOrDialed = dateAnsweredOrDialed;

    dateConnected = [callCopy dateConnected];
    dateConnected = v6->_dateConnected;
    v6->_dateConnected = dateConnected;
  }

  return v6;
}

- (TCSCall)initWithURL:(id)l
{
  v58 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v56.receiver = self;
  v56.super_class = TCSCall;
  v5 = [(TCSCall *)&v56 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:lCopy resolvingAgainstBaseURL:0];
    scheme = [v6 scheme];
    if ([scheme isEqualToString:@"tincan"])
    {
      host = [v6 host];
      v9 = [host isEqualToString:@"tcsCall"];

      if (v9)
      {
        v51 = lCopy;
        v10 = objc_opt_new();
        [v10 setNumberStyle:1];
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        queryItems = [v6 queryItems];
        v12 = [queryItems countByEnumeratingWithState:&v52 objects:v57 count:16];
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
              objc_enumerationMutation(queryItems);
            }

            v16 = *(*(&v52 + 1) + 8 * i);
            name = [v16 name];
            v18 = [@"conn" isEqualToString:name];

            if (v18)
            {
              value = [v16 value];
              value6 = [v10 numberFromString:value];

              if (value6)
              {
                bOOLValue = [value6 BOOLValue];
              }

              else
              {
                bOOLValue = 0;
              }

              v5->_isConnected = bOOLValue;
            }

            else
            {
              name2 = [v16 name];
              v23 = [@"out" isEqualToString:name2];

              if (v23)
              {
                value2 = [v16 value];
                value6 = [v10 numberFromString:value2];

                if (value6)
                {
                  bOOLValue2 = [value6 BOOLValue];
                }

                else
                {
                  bOOLValue2 = 0;
                }

                v5->_isOutgoing = bOOLValue2;
              }

              else
              {
                name3 = [v16 name];
                v27 = [@"rUM" isEqualToString:name3];

                if (v27)
                {
                  value3 = [v16 value];
                  value6 = [v10 numberFromString:value3];

                  if (value6)
                  {
                    bOOLValue3 = [value6 BOOLValue];
                  }

                  else
                  {
                    bOOLValue3 = 0;
                  }

                  v5->_isRemoteUplinkMuted = bOOLValue3;
                }

                else
                {
                  name4 = [v16 name];
                  v31 = [@"stat" isEqualToString:name4];

                  if (v31)
                  {
                    value4 = [v16 value];
                    value6 = [v10 numberFromString:value4];

                    if (value6)
                    {
                      intValue = [value6 intValue];
                    }

                    else
                    {
                      intValue = 0;
                    }

                    v5->_status = intValue;
                  }

                  else
                  {
                    name5 = [v16 name];
                    v35 = [@"dR" isEqualToString:name5];

                    if (v35)
                    {
                      value5 = [v16 value];
                      value6 = [v10 numberFromString:value5];

                      if (value6)
                      {
                        intValue2 = [value6 intValue];
                      }

                      else
                      {
                        intValue2 = 0;
                      }

                      v5->_disconnectedReason = intValue2;
                    }

                    else
                    {
                      name6 = [v16 name];
                      v39 = [@"cID" isEqualToString:name6];

                      if (v39)
                      {
                        value6 = [v16 value];
                        value7 = [value6 length];
                        if (value7)
                        {
                          value7 = [v16 value];
                        }

                        contactIdentifier = v5->_contactIdentifier;
                        v5->_contactIdentifier = value7;
                      }

                      else
                      {
                        name7 = [v16 name];
                        v43 = [@"hdl" isEqualToString:name7];

                        if (v43)
                        {
                          value6 = [v16 value];
                          value8 = [value6 length];
                          if (value8)
                          {
                            value8 = [v16 value];
                          }

                          contactIdentifier = v5->_handleValue;
                          v5->_handleValue = value8;
                        }

                        else
                        {
                          name8 = [v16 name];
                          v46 = [@"uPI" isEqualToString:name8];

                          if (!v46)
                          {
                            continue;
                          }

                          value6 = [v16 value];
                          if ([value6 length])
                          {
                            value9 = [v16 value];
                          }

                          else
                          {
                            value9 = &stru_287F22AC0;
                          }

                          contactIdentifier = v5->_uniqueProxyIdentifier;
                          v5->_uniqueProxyIdentifier = &value9->isa;
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          v13 = [queryItems countByEnumeratingWithState:&v52 objects:v57 count:16];
          if (!v13)
          {
LABEL_51:

            lCopy = v51;
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
      [(TCSCall *)lCopy initWithURL:v48];
    }

    v5->_isNilCall = 1;
LABEL_56:
  }

  v49 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqualToCall:(id)call
{
  callCopy = call;
  if (!callCopy)
  {
    v11 = 0;
    goto LABEL_36;
  }

  isConnected = [(TCSCall *)self isConnected];
  isConnected2 = [callCopy isConnected];
  isOutgoing = [(TCSCall *)self isOutgoing];
  isOutgoing2 = [callCopy isOutgoing];
  isRemoteUplinkMuted = [(TCSCall *)self isRemoteUplinkMuted];
  isRemoteUplinkMuted2 = [callCopy isRemoteUplinkMuted];
  contactIdentifier = [(TCSCall *)self contactIdentifier];
  if (!contactIdentifier)
  {
    contactIdentifier2 = [callCopy contactIdentifier];
    if (!contactIdentifier2)
    {
      v40 = 1;
LABEL_8:

      goto LABEL_9;
    }
  }

  contactIdentifier3 = [(TCSCall *)self contactIdentifier];
  contactIdentifier4 = [callCopy contactIdentifier];
  v40 = [contactIdentifier3 isEqualToString:contactIdentifier4];

  if (!contactIdentifier)
  {
    goto LABEL_8;
  }

LABEL_9:

  handleValue = [(TCSCall *)self handleValue];
  if (!handleValue)
  {
    contactIdentifier2 = [callCopy handleValue];
    if (!contactIdentifier2)
    {
      v33 = 1;
LABEL_14:

      goto LABEL_15;
    }
  }

  handleValue2 = [(TCSCall *)self handleValue];
  handleValue3 = [callCopy handleValue];
  v33 = [handleValue2 isEqualToString:handleValue3];

  if (!handleValue)
  {
    goto LABEL_14;
  }

LABEL_15:

  status = [(TCSCall *)self status];
  status2 = [callCopy status];
  uniqueProxyIdentifier = [(TCSCall *)self uniqueProxyIdentifier];
  if (!uniqueProxyIdentifier)
  {
    uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
    if (!uniqueProxyIdentifier2)
    {
      v30 = 1;
LABEL_20:

      goto LABEL_21;
    }
  }

  uniqueProxyIdentifier3 = [(TCSCall *)self uniqueProxyIdentifier];
  uniqueProxyIdentifier4 = [callCopy uniqueProxyIdentifier];
  v30 = [uniqueProxyIdentifier3 isEqualToString:uniqueProxyIdentifier4];

  if (!uniqueProxyIdentifier)
  {
    goto LABEL_20;
  }

LABEL_21:

  disconnectedReason = [(TCSCall *)self disconnectedReason];
  disconnectedReason2 = [callCopy disconnectedReason];
  dateAnsweredOrDialed = [(TCSCall *)self dateAnsweredOrDialed];
  if (!dateAnsweredOrDialed)
  {
    dateAnsweredOrDialed2 = [callCopy dateAnsweredOrDialed];
    if (!dateAnsweredOrDialed2)
    {
      v21 = 1;
LABEL_26:

      goto LABEL_27;
    }
  }

  dateAnsweredOrDialed3 = [(TCSCall *)self dateAnsweredOrDialed];
  dateAnsweredOrDialed4 = [callCopy dateAnsweredOrDialed];
  v21 = [dateAnsweredOrDialed3 isEqualToDate:dateAnsweredOrDialed4];

  if (!dateAnsweredOrDialed)
  {
    goto LABEL_26;
  }

LABEL_27:

  dateConnected = [(TCSCall *)self dateConnected];
  if (!dateConnected)
  {
    dateAnsweredOrDialed2 = [callCopy dateConnected];
    if (!dateAnsweredOrDialed2)
    {
      v25 = 1;
LABEL_32:

      goto LABEL_33;
    }
  }

  dateConnected2 = [(TCSCall *)self dateConnected];
  dateConnected3 = [callCopy dateConnected];
  v25 = [dateConnected2 isEqualToDate:dateConnected3];

  if (!dateConnected)
  {
    goto LABEL_32;
  }

LABEL_33:

  v26 = v40 & ~(isConnected ^ isConnected2 | isOutgoing ^ isOutgoing2 | isRemoteUplinkMuted ^ isRemoteUplinkMuted2) & v33 & (status == status2) & v30;
  if (disconnectedReason != disconnectedReason2)
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
  contactIdentifier = [(TCSCall *)self contactIdentifier];
  v13 = contactIdentifier;
  if (contactIdentifier)
  {
    v14 = contactIdentifier;
  }

  else
  {
    v14 = &stru_287F22AC0;
  }

  v15 = [v11 queryItemWithName:@"cID" value:v14];
  v44[5] = v15;
  v16 = MEMORY[0x277CCAD18];
  handleValue = [(TCSCall *)self handleValue];
  v18 = handleValue;
  if (handleValue)
  {
    v19 = handleValue;
  }

  else
  {
    v19 = &stru_287F22AC0;
  }

  v20 = [v16 queryItemWithName:@"hdl" value:v19];
  v44[6] = v20;
  v21 = MEMORY[0x277CCAD18];
  uniqueProxyIdentifier = [(TCSCall *)self uniqueProxyIdentifier];
  v23 = uniqueProxyIdentifier;
  if (uniqueProxyIdentifier)
  {
    v24 = uniqueProxyIdentifier;
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
    handleValue = [(TCSCall *)self handleValue];
    [v3 appendFormat:@" hdl=%@", handleValue];

    [(TCSCall *)self status];
    v6 = TUStringForCallStatus();
    [v3 appendFormat:@" stat=%@", v6];

    [v3 appendFormat:@" dR=%d", -[TCSCall disconnectedReason](self, "disconnectedReason")];
    if ([(TCSCall *)self status]== 5 || [(TCSCall *)self status]== 6)
    {
      v7 = NSStringFromTUCallDisconnectedReason([(TCSCall *)self disconnectedReason]);
      [v3 appendFormat:@":'%@'", v7];
    }

    uniqueProxyIdentifier = [(TCSCall *)self uniqueProxyIdentifier];
    [v3 appendFormat:@" uPI=%@", uniqueProxyIdentifier];

    [(TCSCall *)self isConnected];
    v9 = NSStringFromBOOL();
    [v3 appendFormat:@" conn=%@", v9];

    isOutgoing = [(TCSCall *)self isOutgoing];
    v11 = @"in";
    if (isOutgoing)
    {
      v11 = @"out";
    }

    [v3 appendFormat:@" dir=%@", v11];
    contactIdentifier = [(TCSCall *)self contactIdentifier];
    [v3 appendFormat:@" cID=%@", contactIdentifier];

    [v3 appendFormat:@" rUM=%d", -[TCSCall isRemoteUplinkMuted](self, "isRemoteUplinkMuted")];
    v4 = @">";
  }

  [v3 appendString:v4];
  v13 = [v3 copy];

  return v13;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TCSCall *)self isEqualToCall:equalCopy];
  }

  return v5;
}

- (unint64_t)hash
{
  isConnected = [(TCSCall *)self isConnected];
  v4 = isConnected ^ [(TCSCall *)self isOutgoing];
  v5 = v4 ^ [(TCSCall *)self isRemoteUplinkMuted];
  contactIdentifier = [(TCSCall *)self contactIdentifier];
  v7 = [contactIdentifier hash];
  handleValue = [(TCSCall *)self handleValue];
  v9 = v7 ^ [handleValue hash];
  v10 = v9 ^ [(TCSCall *)self status];
  uniqueProxyIdentifier = [(TCSCall *)self uniqueProxyIdentifier];
  v12 = v10 ^ [uniqueProxyIdentifier hash] ^ v5;
  disconnectedReason = [(TCSCall *)self disconnectedReason];
  dateAnsweredOrDialed = [(TCSCall *)self dateAnsweredOrDialed];
  v15 = disconnectedReason ^ [dateAnsweredOrDialed hash];
  dateConnected = [(TCSCall *)self dateConnected];
  v17 = v15 ^ [dateConnected hash];

  return v12 ^ v17;
}

- (TCSCall)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(TCSCall *)self init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_isConnected);
    v5->_isConnected = [coderCopy decodeBoolForKey:v6];

    v7 = NSStringFromSelector(sel_isOutgoing);
    v5->_isOutgoing = [coderCopy decodeBoolForKey:v7];

    v8 = NSStringFromSelector(sel_isRemoteUplinkMuted);
    v5->_isRemoteUplinkMuted = [coderCopy decodeBoolForKey:v8];

    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_contactIdentifier);
    v11 = [coderCopy decodeObjectOfClass:v9 forKey:v10];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v11;

    v13 = objc_opt_class();
    v14 = NSStringFromSelector(sel_handleValue);
    v15 = [coderCopy decodeObjectOfClass:v13 forKey:v14];
    handleValue = v5->_handleValue;
    v5->_handleValue = v15;

    v17 = NSStringFromSelector(sel_status);
    v5->_status = [coderCopy decodeIntForKey:v17];

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_uniqueProxyIdentifier);
    v20 = [coderCopy decodeObjectOfClass:v18 forKey:v19];
    uniqueProxyIdentifier = v5->_uniqueProxyIdentifier;
    v5->_uniqueProxyIdentifier = v20;

    v22 = NSStringFromSelector(sel_disconnectedReason);
    v5->_disconnectedReason = [coderCopy decodeIntForKey:v22];

    v23 = objc_opt_class();
    v24 = NSStringFromSelector(sel_dateAnsweredOrDialed);
    v25 = [coderCopy decodeObjectOfClass:v23 forKey:v24];
    dateAnsweredOrDialed = v5->_dateAnsweredOrDialed;
    v5->_dateAnsweredOrDialed = v25;

    v27 = objc_opt_class();
    v28 = NSStringFromSelector(sel_dateConnected);
    v29 = [coderCopy decodeObjectOfClass:v27 forKey:v28];
    dateConnected = v5->_dateConnected;
    v5->_dateConnected = v29;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  isConnected = self->_isConnected;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_isConnected);
  [coderCopy encodeBool:isConnected forKey:v6];

  isOutgoing = self->_isOutgoing;
  v8 = NSStringFromSelector(sel_isOutgoing);
  [coderCopy encodeBool:isOutgoing forKey:v8];

  isRemoteUplinkMuted = self->_isRemoteUplinkMuted;
  v10 = NSStringFromSelector(sel_isRemoteUplinkMuted);
  [coderCopy encodeBool:isRemoteUplinkMuted forKey:v10];

  contactIdentifier = self->_contactIdentifier;
  v12 = NSStringFromSelector(sel_contactIdentifier);
  [coderCopy encodeObject:contactIdentifier forKey:v12];

  handleValue = self->_handleValue;
  v14 = NSStringFromSelector(sel_handleValue);
  [coderCopy encodeObject:handleValue forKey:v14];

  status = self->_status;
  v16 = NSStringFromSelector(sel_status);
  [coderCopy encodeInt:status forKey:v16];

  uniqueProxyIdentifier = self->_uniqueProxyIdentifier;
  v18 = NSStringFromSelector(sel_uniqueProxyIdentifier);
  [coderCopy encodeObject:uniqueProxyIdentifier forKey:v18];

  disconnectedReason = self->_disconnectedReason;
  v20 = NSStringFromSelector(sel_disconnectedReason);
  [coderCopy encodeInt:disconnectedReason forKey:v20];

  dateAnsweredOrDialed = self->_dateAnsweredOrDialed;
  v22 = NSStringFromSelector(sel_dateAnsweredOrDialed);
  [coderCopy encodeObject:dateAnsweredOrDialed forKey:v22];

  dateConnected = self->_dateConnected;
  v24 = NSStringFromSelector(sel_dateConnected);
  [coderCopy encodeObject:dateConnected forKey:v24];
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