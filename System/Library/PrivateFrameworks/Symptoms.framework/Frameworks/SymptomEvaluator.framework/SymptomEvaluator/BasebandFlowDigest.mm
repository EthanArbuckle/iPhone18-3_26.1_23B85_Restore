@interface BasebandFlowDigest
- (BOOL)_initSockaddr:(id *)sockaddr fromDict:(id)dict;
- (BOOL)_primeFromLocalAddress:(id)address remoteAddress:(id)remoteAddress;
- (BOOL)primeFromQUICLocalAddress:(id)address remoteAddress:(id)remoteAddress;
- (BOOL)primeFromSnapshot:(id)snapshot;
- (BasebandFlowDigest)initWithDictionary:(id)dictionary;
- (NSData)encodedData;
- (NSDictionary)dictionaryForm;
- (id)_addrDictFromStruct:(id *)struct;
- (id)description;
- (void)setActive:(BOOL)active;
- (void)setIsBalanced:(BOOL)balanced;
- (void)setIsDownload:(BOOL)download;
- (void)setIsElephant:(BOOL)elephant;
- (void)setIsForeground:(BOOL)foreground;
- (void)setIsQUIC:(BOOL)c;
- (void)setIsUpload:(BOOL)upload;
- (void)setWasStartedInForeground:(BOOL)foreground;
@end

@implementation BasebandFlowDigest

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&self->_infoBlock length:self->_infoBlock.local.sa.sa_len];
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&self->_infoBlock.remote length:self->_infoBlock.remote.sa.sa_len];
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  if (self->_infoBlock.flow_state)
  {
    v6 = @"start";
  }

  else
  {
    self->_infoBlock.flow_state = 2;
    v6 = @"stop";
  }

  flow_type = self->_infoBlock.flow_type;
  flow_flags = self->_infoBlock.flow_flags;
  v9 = sockAddrToString(v3);
  v10 = sockAddrToString(v4);
  v11 = v10;
  protocol = self->_infoBlock.protocol;
  v13 = "unknown";
  if (protocol == 6)
  {
    v14 = "TCP";
  }

  else if (protocol == 17)
  {
    if ((self->_infoBlock.flow_flags & 0x20) != 0)
    {
      v14 = "QUIC";
    }

    else
    {
      v14 = "UDP";
    }
  }

  else if (protocol)
  {
    v14 = "unknown";
  }

  else
  {
    v14 = "not-set";
  }

  v15 = "fg";
  if ((flow_flags & 8) != 0)
  {
    v16 = "fg";
  }

  else
  {
    v16 = "bg";
  }

  if ((flow_flags & 0x10) == 0)
  {
    v15 = "bg";
  }

  v17 = "bal";
  v18 = "";
  if ((flow_flags & 4) == 0)
  {
    v17 = "";
  }

  v19 = "u/l";
  if ((flow_flags & 2) == 0)
  {
    v19 = "";
  }

  if (flow_flags)
  {
    v18 = "d/l";
  }

  if (!flow_type)
  {
    v13 = "not-set";
  }

  if (flow_type == 2)
  {
    v13 = "Elephant";
  }

  v20 = [v5 initWithFormat:@"BasebandFlowDigest type %s flags %s%s%s %s %s state %@ src %@ dest %@ protocol %s", v13, v18, v19, v17, v15, v16, v6, v9, v10, v14];

  return v20;
}

- (NSData)encodedData
{
  encodedData = self->_encodedData;
  if (!encodedData)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&self->_infoBlock length:76];
    v5 = self->_encodedData;
    self->_encodedData = v4;

    encodedData = self->_encodedData;
  }

  return encodedData;
}

- (void)setActive:(BOOL)active
{
  if (active)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  self->_infoBlock.flow_state = v3;
  encodedData = self->_encodedData;
  self->_encodedData = 0;
  MEMORY[0x2821F96F8]();
}

- (void)setIsElephant:(BOOL)elephant
{
  if (elephant)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_infoBlock.flow_type = v3;
  encodedData = self->_encodedData;
  self->_encodedData = 0;
  MEMORY[0x2821F96F8]();
}

- (void)setIsUpload:(BOOL)upload
{
  flow_flags = self->_infoBlock.flow_flags;
  v4 = flow_flags & 0xFFFFFFFD;
  v5 = flow_flags & 0xFFFFFFF8 | 2;
  if (!upload)
  {
    v5 = v4;
  }

  self->_infoBlock.flow_flags = v5;
  encodedData = self->_encodedData;
  self->_encodedData = 0;
  MEMORY[0x2821F96F8]();
}

- (void)setIsDownload:(BOOL)download
{
  flow_flags = self->_infoBlock.flow_flags;
  v4 = flow_flags & 0xFFFFFFFE;
  v5 = flow_flags & 0xFFFFFFF8;
  if (download)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = v4;
  }

  self->_infoBlock.flow_flags = v6;
  encodedData = self->_encodedData;
  self->_encodedData = 0;
  MEMORY[0x2821F96F8]();
}

- (void)setIsBalanced:(BOOL)balanced
{
  flow_flags = self->_infoBlock.flow_flags;
  v4 = flow_flags & 0xFFFFFFFB;
  v5 = flow_flags & 0xFFFFFFF8 | 4;
  if (!balanced)
  {
    v5 = v4;
  }

  self->_infoBlock.flow_flags = v5;
  encodedData = self->_encodedData;
  self->_encodedData = 0;
  MEMORY[0x2821F96F8]();
}

- (void)setIsForeground:(BOOL)foreground
{
  if (foreground)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_infoBlock.flow_flags = self->_infoBlock.flow_flags & 0xFFFFFFF7 | v3;
  encodedData = self->_encodedData;
  self->_encodedData = 0;
  MEMORY[0x2821F96F8]();
}

- (void)setWasStartedInForeground:(BOOL)foreground
{
  if (foreground)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_infoBlock.flow_flags = self->_infoBlock.flow_flags & 0xFFFFFFEF | v3;
  encodedData = self->_encodedData;
  self->_encodedData = 0;
  MEMORY[0x2821F96F8]();
}

- (void)setIsQUIC:(BOOL)c
{
  if (c)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_infoBlock.flow_flags = self->_infoBlock.flow_flags & 0xFFFFFFDF | v3;
  encodedData = self->_encodedData;
  self->_encodedData = 0;
  MEMORY[0x2821F96F8]();
}

- (BOOL)_primeFromLocalAddress:(id)address remoteAddress:(id)remoteAddress
{
  addressCopy = address;
  remoteAddressCopy = remoteAddress;
  if (addressCopy && [addressCopy length] <= 0x1C)
  {
    memcpy(&self->_infoBlock, [addressCopy bytes], objc_msgSend(addressCopy, "length"));
    v8 = 1;
    if (!remoteAddressCopy)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = 0;
    if (!remoteAddressCopy)
    {
LABEL_8:
      v8 = 0;
      goto LABEL_9;
    }
  }

  if ([remoteAddressCopy length] > 0x1C)
  {
    goto LABEL_8;
  }

  memcpy(&self->_infoBlock.remote, [remoteAddressCopy bytes], objc_msgSend(remoteAddressCopy, "length"));
LABEL_9:

  return v8;
}

- (BOOL)primeFromQUICLocalAddress:(id)address remoteAddress:(id)remoteAddress
{
  self->_infoBlock.protocol = 17;
  self->_infoBlock.flow_flags |= 0x20u;
  return [(BasebandFlowDigest *)self _primeFromLocalAddress:address remoteAddress:remoteAddress];
}

- (BOOL)primeFromSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  if ([snapshotCopy startAppStateIsForeground])
  {
    self->_infoBlock.flow_flags |= 0x10u;
  }

  if ([snapshotCopy snapshotAppStateIsForeground])
  {
    self->_infoBlock.flow_flags |= 8u;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    localAddress = [snapshotCopy localAddress];
    remoteAddress = [snapshotCopy remoteAddress];
    v7 = [(BasebandFlowDigest *)self primeFromTCPLocalAddress:localAddress remoteAddress:remoteAddress];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      localAddress = [snapshotCopy localAddress];
      remoteAddress = [snapshotCopy remoteAddress];
      v7 = [(BasebandFlowDigest *)self primeFromUDPLocalAddress:localAddress remoteAddress:remoteAddress];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = 0;
        goto LABEL_12;
      }

      localAddress = [snapshotCopy localAddress];
      remoteAddress = [snapshotCopy remoteAddress];
      v7 = [(BasebandFlowDigest *)self primeFromQUICLocalAddress:localAddress remoteAddress:remoteAddress];
    }
  }

  v8 = v7;

LABEL_12:
  return v8;
}

- (id)_addrDictFromStruct:(id *)struct
{
  structCopy = struct;
  v20 = *MEMORY[0x277D85DE8];
  if (struct)
  {
    sa_family = struct->var0.sa_family;
    if (sa_family == 30)
    {
      if (struct->var0.sa_len == 28)
      {
        v9 = inet_ntop(30, &struct->var2.sin6_addr, v19, 0x2Eu);
        if (v9)
        {
          v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v9];
          if (v10)
          {
            v7 = v10;
            v16[0] = v10;
            v15[0] = @"addr";
            v15[1] = @"port";
            v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(structCopy + 2)];
            v16[1] = v8;
            v16[2] = &unk_2847EF6B0;
            v15[2] = @"family";
            v15[3] = @"flowInfo";
            v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(structCopy + 4)];
            v16[3] = v11;
            v15[4] = @"scopeId";
            v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(structCopy + 24)];
            v16[4] = v12;
            structCopy = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:5];

            goto LABEL_12;
          }
        }
      }
    }

    else if (sa_family == 2 && struct->var0.sa_len == 16)
    {
      v5 = inet_ntop(2, &struct->var2.sin6_flowinfo, v19, 0x2Eu);
      if (v5)
      {
        v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v5];
        if (v6)
        {
          v7 = v6;
          v18[0] = v6;
          v17[0] = @"addr";
          v17[1] = @"port";
          v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(structCopy + 2)];
          v17[2] = @"family";
          v18[1] = v8;
          v18[2] = &unk_2847EF698;
          structCopy = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
LABEL_12:

          goto LABEL_14;
        }
      }
    }

    structCopy = 0;
  }

LABEL_14:
  v13 = *MEMORY[0x277D85DE8];

  return structCopy;
}

- (BOOL)_initSockaddr:(id *)sockaddr fromDict:(id)dict
{
  v24 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v6 = dictCopy;
  if (!sockaddr)
  {
    v13 = @"No dest to init";
    goto LABEL_21;
  }

  if (!dictCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v13 = @"No valid dictionary";
    goto LABEL_21;
  }

  v7 = [v6 objectForKeyedSubscript:@"family"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v13 = @"No valid family";
LABEL_20:

    goto LABEL_21;
  }

  v8 = [v6 objectForKeyedSubscript:@"port"];
  if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v13 = @"No valid portnum";
    goto LABEL_20;
  }

  v9 = [v6 objectForKeyedSubscript:@"addr"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    uTF8String = [v9 UTF8String];
    if (uTF8String)
    {
      v11 = uTF8String;
      intValue = [v7 intValue];
      sockaddr->var0.sa_family = intValue;
      if (intValue == 30)
      {
        v18 = [v6 objectForKeyedSubscript:@"flowInfo"];
        if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v19 = [v6 objectForKeyedSubscript:@"scopeId"];
          if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            sockaddr->var0.sa_len = 28;
            sockaddr->var1.sin_port = [v8 intValue];
            sockaddr->var1.sin_addr.s_addr = [v18 intValue];
            sockaddr->var2.sin6_scope_id = [v19 intValue];
            if (inet_pton(30, v11, &sockaddr->var2.sin6_addr))
            {
              v13 = 0;
            }

            else
            {
              v13 = @"IPv6 address string format";
            }
          }

          else
          {
            v13 = @"No valid scopeId";
          }
        }

        else
        {
          v13 = @"No valid flowInfo";
        }
      }

      else if (intValue == 2)
      {
        sockaddr->var0.sa_len = 16;
        sockaddr->var1.sin_port = [v8 intValue];
        if (inet_pton(2, v11, &sockaddr->var2.sin6_flowinfo))
        {
          v13 = 0;
        }

        else
        {
          v13 = @"IPv4 address string format";
        }
      }

      else
      {
        v13 = @"Unknown family";
      }
    }

    else
    {
      v13 = @"No valid address string";
    }
  }

  else
  {
    v13 = @"No valid address";
  }

  if (!v13)
  {
    v15 = 1;
    goto LABEL_24;
  }

LABEL_21:
  v14 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_ERROR))
  {
    v20 = 138412546;
    v21 = v13;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "BasebandFlowDigest sockaddr init from dictionary fails: %@ input %@", &v20, 0x16u);
  }

  v15 = 0;
LABEL_24:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (NSDictionary)dictionaryForm
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v3)
  {
    v4 = [(BasebandFlowDigest *)self _addrDictFromStruct:&self->_infoBlock];
    if (!v4)
    {
      goto LABEL_14;
    }

    [v3 setObject:v4 forKeyedSubscript:@"local"];
    v5 = [(BasebandFlowDigest *)self _addrDictFromStruct:&self->_infoBlock.remote];
    if (v5)
    {
      v6 = v5;
      [v3 setObject:v5 forKeyedSubscript:@"remote"];
      v7 = [MEMORY[0x277CCABB0] numberWithInt:self->_infoBlock.protocol];
      [v3 setObject:v7 forKeyedSubscript:@"protocol"];

      v8 = [MEMORY[0x277CCABB0] numberWithInt:self->_infoBlock.flow_type];
      [v3 setObject:v8 forKeyedSubscript:@"flowType"];

      v9 = [MEMORY[0x277CCABB0] numberWithInt:self->_infoBlock.flow_flags];
      [v3 setObject:v9 forKeyedSubscript:@"flowFlags"];

      v10 = [MEMORY[0x277CCABB0] numberWithInt:self->_infoBlock.flow_state];
      [v3 setObject:v10 forKeyedSubscript:@"flowState"];

      if ([(BasebandFlowDigest *)self isUpload])
      {
        v11 = @"UL";
      }

      else if ([(BasebandFlowDigest *)self isDownload])
      {
        v11 = @"DL";
      }

      else if ([(BasebandFlowDigest *)self isBalanced])
      {
        v11 = @"bal";
      }

      else
      {
        v11 = @"no-direction";
      }

      [v3 setObject:v11 forKeyedSubscript:@"direction"];
      v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[BasebandFlowDigest isForeground](self, "isForeground")}];
      [v3 setObject:v12 forKeyedSubscript:@"foreground"];

      v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[BasebandFlowDigest wasStartedInForeground](self, "wasStartedInForeground")}];
      [v3 setObject:v13 forKeyedSubscript:@"startedForeground"];

      v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[BasebandFlowDigest isQUIC](self, "isQUIC")}];
      [v3 setObject:v14 forKeyedSubscript:@"quic"];

      v4 = v3;
      goto LABEL_14;
    }
  }

  v4 = 0;
LABEL_14:

  return v4;
}

- (BasebandFlowDigest)initWithDictionary:(id)dictionary
{
  v26 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  if (!dictionaryCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v14 = @"No valid dictionary";
    goto LABEL_34;
  }

  v5 = [dictionaryCopy objectForKeyedSubscript:@"local"];
  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v14 = @"No valid local address";
LABEL_33:

    goto LABEL_34;
  }

  v6 = [dictionaryCopy objectForKeyedSubscript:@"remote"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v14 = @"No valid remote address";
    goto LABEL_33;
  }

  v7 = [dictionaryCopy objectForKeyedSubscript:@"protocol"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v14 = @"No valid protocol";
    goto LABEL_58;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"flowType"];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [dictionaryCopy objectForKeyedSubscript:@"flowFlags"];
      if (v9)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v14 = @"Invalid flow flags";
LABEL_56:

          goto LABEL_57;
        }
      }

      v10 = [dictionaryCopy objectForKeyedSubscript:@"foreground"];
      if (v10)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v14 = @"Invalid foregroundBool";
LABEL_55:

          goto LABEL_56;
        }
      }

      v11 = [dictionaryCopy objectForKeyedSubscript:@"startedForeground"];
      if (v11)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v14 = @"Invalid wasForegroundBool";
LABEL_54:

          goto LABEL_55;
        }
      }

      v21 = [dictionaryCopy objectForKeyedSubscript:@"quic"];
      if (v21)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v14 = @"Invalid isQUICBool";
LABEL_53:

          goto LABEL_54;
        }
      }

      v20 = [dictionaryCopy objectForKeyedSubscript:@"direction"];
      if (v20)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v14 = @"Invalid direction string";
LABEL_52:

          goto LABEL_53;
        }
      }

      v12 = [dictionaryCopy objectForKeyedSubscript:@"flowState"];
      if (!v12)
      {
        v14 = @"No valid flow state";
LABEL_51:

        goto LABEL_52;
      }

      v19 = v10;
      v13 = v12;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([(BasebandFlowDigest *)self _initSockaddr:&self->_infoBlock fromDict:v5])
        {
          if ([(BasebandFlowDigest *)self _initSockaddr:&self->_infoBlock.remote fromDict:v6])
          {
            self->_infoBlock.protocol = [v7 intValue];
            self->_infoBlock.flow_type = [v8 intValue];
            if (v9)
            {
              self->_infoBlock.flow_flags = [v9 intValue];
            }

            if (v20)
            {
              if ([v20 isEqualToString:@"UL"])
              {
                [(BasebandFlowDigest *)self setIsUpload:1];
              }

              else if ([v20 isEqualToString:@"DL"])
              {
                [(BasebandFlowDigest *)self setIsDownload:1];
              }

              else if ([v20 isEqualToString:@"bal"])
              {
                [(BasebandFlowDigest *)self setIsBalanced:1];
              }
            }

            if (v19)
            {
              -[BasebandFlowDigest setIsForeground:](self, "setIsForeground:", [v19 BOOLValue]);
            }

            if (v11)
            {
              -[BasebandFlowDigest setWasStartedInForeground:](self, "setWasStartedInForeground:", [v11 BOOLValue]);
            }

            if (v21)
            {
              -[BasebandFlowDigest setIsQUIC:](self, "setIsQUIC:", [v21 BOOLValue]);
            }

            v14 = 0;
            self->_infoBlock.flow_state = [v13 intValue];
            v12 = v13;
            goto LABEL_50;
          }

          v14 = @"Can't use remote addr";
        }

        else
        {
          v14 = @"Can't use local addr";
        }
      }

      else
      {
        v14 = @"No valid flow state";
      }

      v12 = v13;
LABEL_50:
      v10 = v19;
      goto LABEL_51;
    }
  }

  v14 = @"No valid flow type";
LABEL_57:

LABEL_58:
  if (!v14)
  {
    selfCopy = self;
    goto LABEL_37;
  }

LABEL_34:
  v15 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v23 = v14;
    v24 = 2114;
    v25 = dictionaryCopy;
    _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "BasebandFlowDigest initWithDictionary failure: %@ with input %{public}@", buf, 0x16u);
  }

  selfCopy = 0;
LABEL_37:

  v17 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

@end