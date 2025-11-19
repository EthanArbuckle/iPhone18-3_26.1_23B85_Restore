@interface AWDMMCSHttpInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addHttpError:(id)a3;
- (void)addTcpInfo:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasAdaptiveTcpReadTimeout:(BOOL)a3;
- (void)setHasAdaptiveTcpWriteTimeout:(BOOL)a3;
- (void)setHasAllowsCellular:(BOOL)a3;
- (void)setHasAllowsPowerNapScheduling:(BOOL)a3;
- (void)setHasCancelled:(BOOL)a3;
- (void)setHasConnectionReused:(BOOL)a3;
- (void)setHasErrorCode:(BOOL)a3;
- (void)setHasFastFail:(BOOL)a3;
- (void)setHasFinalTryInRequest:(BOOL)a3;
- (void)setHasForceNondiscretionary:(BOOL)a3;
- (void)setHasHttpStatus:(BOOL)a3;
- (void)setHasInlineEdgeComplete:(BOOL)a3;
- (void)setHasLocatorPort:(BOOL)a3;
- (void)setHasNetworkServiceType:(BOOL)a3;
- (void)setHasPowerPluggedInAtEnd:(BOOL)a3;
- (void)setHasPowerPluggedInAtStart:(BOOL)a3;
- (void)setHasPowerPluggedInWhenQueued:(BOOL)a3;
- (void)setHasProxyUsed:(BOOL)a3;
- (void)setHasQualityOfService:(BOOL)a3;
- (void)setHasRequestSize:(BOOL)a3;
- (void)setHasRequiresPowerPluggedIn:(BOOL)a3;
- (void)setHasResponseReceivedDuration:(BOOL)a3;
- (void)setHasResponseSize:(BOOL)a3;
- (void)setHasStartTime:(BOOL)a3;
- (void)setHasTimedOut:(BOOL)a3;
- (void)setHasTransactionComplete:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMMCSHttpInfo

- (void)dealloc
{
  [(AWDMMCSHttpInfo *)self setLocatorScheme:0];
  [(AWDMMCSHttpInfo *)self setLocatorHostname:0];
  [(AWDMMCSHttpInfo *)self setErrorDomain:0];
  [(AWDMMCSHttpInfo *)self setTcpInfos:0];
  [(AWDMMCSHttpInfo *)self setHttpErrors:0];
  [(AWDMMCSHttpInfo *)self setInterfaceIdentifier:0];
  [(AWDMMCSHttpInfo *)self setLocatorPeerAddress:0];
  [(AWDMMCSHttpInfo *)self setNetworkUsed:0];
  v3.receiver = self;
  v3.super_class = AWDMMCSHttpInfo;
  [(AWDMMCSHttpInfo *)&v3 dealloc];
}

- (void)setHasLocatorPort:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasConnectionReused:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasStartTime:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasResponseReceivedDuration:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasHttpStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasErrorCode:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasRequestSize:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasResponseSize:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasTransactionComplete:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFBFFFFFF | v3);
}

- (void)setHasTimedOut:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFF | v3);
}

- (void)setHasCancelled:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)addTcpInfo:(id)a3
{
  tcpInfos = self->_tcpInfos;
  if (!tcpInfos)
  {
    tcpInfos = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_tcpInfos = tcpInfos;
  }

  [(NSMutableArray *)tcpInfos addObject:a3];
}

- (void)addHttpError:(id)a3
{
  httpErrors = self->_httpErrors;
  if (!httpErrors)
  {
    httpErrors = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_httpErrors = httpErrors;
  }

  [(NSMutableArray *)httpErrors addObject:a3];
}

- (void)setHasRequiresPowerPluggedIn:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)setHasAllowsPowerNapScheduling:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasAllowsCellular:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasForceNondiscretionary:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasFastFail:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasQualityOfService:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasProxyUsed:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasFinalTryInRequest:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasInlineEdgeComplete:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasAdaptiveTcpReadTimeout:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasAdaptiveTcpWriteTimeout:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasPowerPluggedInWhenQueued:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasPowerPluggedInAtStart:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasPowerPluggedInAtEnd:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasNetworkServiceType:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDMMCSHttpInfo;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDMMCSHttpInfo description](&v3, sel_description), -[AWDMMCSHttpInfo dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v38 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  v4 = v3;
  locatorScheme = self->_locatorScheme;
  if (locatorScheme)
  {
    [v3 setObject:locatorScheme forKey:@"locatorScheme"];
  }

  locatorHostname = self->_locatorHostname;
  if (locatorHostname)
  {
    [v4 setObject:locatorHostname forKey:@"locatorHostname"];
  }

  has = self->_has;
  if ((*&has & 0x100) != 0)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_locatorPort), @"locatorPort"}];
    has = self->_has;
    if ((*&has & 0x8000) == 0)
    {
LABEL_7:
      if ((*&has & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_65;
    }
  }

  else if ((*&has & 0x8000) == 0)
  {
    goto LABEL_7;
  }

  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_connectionReused), @"connectionReused"}];
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_8:
    if ((*&has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_66;
  }

LABEL_65:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_startTime), @"startTime"}];
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_9:
    if ((*&has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_67;
  }

LABEL_66:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_responseReceivedDuration), @"responseReceivedDuration"}];
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_10:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_67:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_duration), @"duration"}];
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_11:
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_httpStatus), @"httpStatus"}];
  }

LABEL_12:
  errorDomain = self->_errorDomain;
  if (errorDomain)
  {
    [v4 setObject:errorDomain forKey:@"errorDomain"];
  }

  v9 = self->_has;
  if ((*&v9 & 0x40) != 0)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_errorCode), @"errorCode"}];
    v9 = self->_has;
    if ((*&v9 & 0x400) == 0)
    {
LABEL_16:
      if ((*&v9 & 0x800) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_71;
    }
  }

  else if ((*&v9 & 0x400) == 0)
  {
    goto LABEL_16;
  }

  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_requestSize), @"requestSize"}];
  v9 = self->_has;
  if ((*&v9 & 0x800) == 0)
  {
LABEL_17:
    if ((*&v9 & 0x4000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_72;
  }

LABEL_71:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_responseSize), @"responseSize"}];
  v9 = self->_has;
  if ((*&v9 & 0x4000000) == 0)
  {
LABEL_18:
    if ((*&v9 & 0x2000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_73;
  }

LABEL_72:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_transactionComplete), @"transactionComplete"}];
  v9 = self->_has;
  if ((*&v9 & 0x2000000) == 0)
  {
LABEL_19:
    if ((*&v9 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_73:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_timedOut), @"timedOut"}];
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_20:
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_cancelled), @"cancelled"}];
  }

LABEL_21:
  if ([(NSMutableArray *)self->_tcpInfos count])
  {
    v10 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_tcpInfos, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    tcpInfos = self->_tcpInfos;
    v12 = [(NSMutableArray *)tcpInfos countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v33;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v33 != v14)
          {
            objc_enumerationMutation(tcpInfos);
          }

          [v10 addObject:{objc_msgSend(*(*(&v32 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v13 = [(NSMutableArray *)tcpInfos countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v13);
    }

    [v4 setObject:v10 forKey:@"tcpInfo"];
  }

  if ([(NSMutableArray *)self->_httpErrors count])
  {
    v16 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_httpErrors, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    httpErrors = self->_httpErrors;
    v18 = [(NSMutableArray *)httpErrors countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v29;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(httpErrors);
          }

          [v16 addObject:{objc_msgSend(*(*(&v28 + 1) + 8 * j), "dictionaryRepresentation")}];
        }

        v19 = [(NSMutableArray *)httpErrors countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v19);
    }

    [v4 setObject:v16 forKey:@"httpError"];
  }

  interfaceIdentifier = self->_interfaceIdentifier;
  if (interfaceIdentifier)
  {
    [v4 setObject:interfaceIdentifier forKey:@"interfaceIdentifier"];
  }

  locatorPeerAddress = self->_locatorPeerAddress;
  if (locatorPeerAddress)
  {
    [v4 setObject:locatorPeerAddress forKey:@"locatorPeerAddress"];
  }

  v24 = self->_has;
  if ((*&v24 & 0x1000000) != 0)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_requiresPowerPluggedIn), @"requiresPowerPluggedIn"}];
    v24 = self->_has;
    if ((*&v24 & 0x2000) == 0)
    {
LABEL_45:
      if ((*&v24 & 0x1000) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_77;
    }
  }

  else if ((*&v24 & 0x2000) == 0)
  {
    goto LABEL_45;
  }

  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_allowsPowerNapScheduling), @"allowsPowerNapScheduling"}];
  v24 = self->_has;
  if ((*&v24 & 0x1000) == 0)
  {
LABEL_46:
    if ((*&v24 & 0x40000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_78;
  }

LABEL_77:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_allowsCellular), @"allowsCellular"}];
  v24 = self->_has;
  if ((*&v24 & 0x40000) == 0)
  {
LABEL_47:
    if ((*&v24 & 0x10000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_79;
  }

LABEL_78:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_forceNondiscretionary), @"forceNondiscretionary"}];
  v24 = self->_has;
  if ((*&v24 & 0x10000) == 0)
  {
LABEL_48:
    if ((*&v24 & 0x200) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_80;
  }

LABEL_79:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_fastFail), @"fastFail"}];
  v24 = self->_has;
  if ((*&v24 & 0x200) == 0)
  {
LABEL_49:
    if ((*&v24 & 0x800000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_81;
  }

LABEL_80:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_qualityOfService), @"qualityOfService"}];
  v24 = self->_has;
  if ((*&v24 & 0x800000) == 0)
  {
LABEL_50:
    if ((*&v24 & 0x20000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_82;
  }

LABEL_81:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_proxyUsed), @"proxyUsed"}];
  v24 = self->_has;
  if ((*&v24 & 0x20000) == 0)
  {
LABEL_51:
    if ((*&v24 & 0x80000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_83;
  }

LABEL_82:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_finalTryInRequest), @"finalTryInRequest"}];
  v24 = self->_has;
  if ((*&v24 & 0x80000) == 0)
  {
LABEL_52:
    if ((*&v24 & 0x10) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_84;
  }

LABEL_83:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_inlineEdgeComplete), @"inlineEdgeComplete"}];
  v24 = self->_has;
  if ((*&v24 & 0x10) == 0)
  {
LABEL_53:
    if ((*&v24 & 0x20) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_85;
  }

LABEL_84:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_adaptiveTcpReadTimeout), @"adaptiveTcpReadTimeout"}];
  v24 = self->_has;
  if ((*&v24 & 0x20) == 0)
  {
LABEL_54:
    if ((*&v24 & 0x400000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_86;
  }

LABEL_85:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_adaptiveTcpWriteTimeout), @"adaptiveTcpWriteTimeout"}];
  v24 = self->_has;
  if ((*&v24 & 0x400000) == 0)
  {
LABEL_55:
    if ((*&v24 & 0x200000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_87;
  }

LABEL_86:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_powerPluggedInWhenQueued), @"powerPluggedInWhenQueued"}];
  v24 = self->_has;
  if ((*&v24 & 0x200000) == 0)
  {
LABEL_56:
    if ((*&v24 & 0x100000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

LABEL_87:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_powerPluggedInAtStart), @"powerPluggedInAtStart"}];
  if ((*&self->_has & 0x100000) != 0)
  {
LABEL_57:
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_powerPluggedInAtEnd), @"powerPluggedInAtEnd"}];
  }

LABEL_58:
  networkUsed = self->_networkUsed;
  if (networkUsed)
  {
    [v4 setObject:networkUsed forKey:@"networkUsed"];
  }

  if ((*&self->_has & 2) != 0)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_networkServiceType), @"networkServiceType"}];
  }

  v26 = *MEMORY[0x29EDCA608];
  return v4;
}

- (void)writeTo:(id)a3
{
  v57 = *MEMORY[0x29EDCA608];
  if (self->_locatorScheme)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_locatorHostname)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((*&has & 0x100) != 0)
  {
    locatorPort = self->_locatorPort;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((*&has & 0x8000) == 0)
    {
LABEL_7:
      if ((*&has & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_61;
    }
  }

  else if ((*&has & 0x8000) == 0)
  {
    goto LABEL_7;
  }

  connectionReused = self->_connectionReused;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_8:
    if ((*&has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_62;
  }

LABEL_61:
  startTime = self->_startTime;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_9:
    if ((*&has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_63;
  }

LABEL_62:
  responseReceivedDuration = self->_responseReceivedDuration;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_10:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_63:
  duration = self->_duration;
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_11:
    httpStatus = self->_httpStatus;
    PBDataWriterWriteInt32Field();
  }

LABEL_12:
  if (self->_errorDomain)
  {
    PBDataWriterWriteStringField();
  }

  v6 = self->_has;
  if ((*&v6 & 0x40) != 0)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteInt32Field();
    v6 = self->_has;
    if ((*&v6 & 0x400) == 0)
    {
LABEL_16:
      if ((*&v6 & 0x800) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_67;
    }
  }

  else if ((*&v6 & 0x400) == 0)
  {
    goto LABEL_16;
  }

  requestSize = self->_requestSize;
  PBDataWriterWriteInt32Field();
  v6 = self->_has;
  if ((*&v6 & 0x800) == 0)
  {
LABEL_17:
    if ((*&v6 & 0x4000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_68;
  }

LABEL_67:
  responseSize = self->_responseSize;
  PBDataWriterWriteInt32Field();
  v6 = self->_has;
  if ((*&v6 & 0x4000000) == 0)
  {
LABEL_18:
    if ((*&v6 & 0x2000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_69;
  }

LABEL_68:
  transactionComplete = self->_transactionComplete;
  PBDataWriterWriteBOOLField();
  v6 = self->_has;
  if ((*&v6 & 0x2000000) == 0)
  {
LABEL_19:
    if ((*&v6 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_69:
  timedOut = self->_timedOut;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_20:
    cancelled = self->_cancelled;
    PBDataWriterWriteBOOLField();
  }

LABEL_21:
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  tcpInfos = self->_tcpInfos;
  v9 = [(NSMutableArray *)tcpInfos countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v52;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v52 != v11)
        {
          objc_enumerationMutation(tcpInfos);
        }

        v13 = *(*(&v51 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSMutableArray *)tcpInfos countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v10);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  httpErrors = self->_httpErrors;
  v15 = [(NSMutableArray *)httpErrors countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v48;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v48 != v17)
        {
          objc_enumerationMutation(httpErrors);
        }

        v19 = *(*(&v47 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v16 = [(NSMutableArray *)httpErrors countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v16);
  }

  if (self->_interfaceIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_locatorPeerAddress)
  {
    PBDataWriterWriteStringField();
  }

  v20 = self->_has;
  if ((*&v20 & 0x1000000) != 0)
  {
    requiresPowerPluggedIn = self->_requiresPowerPluggedIn;
    PBDataWriterWriteBOOLField();
    v20 = self->_has;
    if ((*&v20 & 0x2000) == 0)
    {
LABEL_41:
      if ((*&v20 & 0x1000) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_73;
    }
  }

  else if ((*&v20 & 0x2000) == 0)
  {
    goto LABEL_41;
  }

  allowsPowerNapScheduling = self->_allowsPowerNapScheduling;
  PBDataWriterWriteBOOLField();
  v20 = self->_has;
  if ((*&v20 & 0x1000) == 0)
  {
LABEL_42:
    if ((*&v20 & 0x40000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_74;
  }

LABEL_73:
  allowsCellular = self->_allowsCellular;
  PBDataWriterWriteBOOLField();
  v20 = self->_has;
  if ((*&v20 & 0x40000) == 0)
  {
LABEL_43:
    if ((*&v20 & 0x10000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_75;
  }

LABEL_74:
  forceNondiscretionary = self->_forceNondiscretionary;
  PBDataWriterWriteBOOLField();
  v20 = self->_has;
  if ((*&v20 & 0x10000) == 0)
  {
LABEL_44:
    if ((*&v20 & 0x200) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_76;
  }

LABEL_75:
  fastFail = self->_fastFail;
  PBDataWriterWriteBOOLField();
  v20 = self->_has;
  if ((*&v20 & 0x200) == 0)
  {
LABEL_45:
    if ((*&v20 & 0x800000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_77;
  }

LABEL_76:
  qualityOfService = self->_qualityOfService;
  PBDataWriterWriteInt32Field();
  v20 = self->_has;
  if ((*&v20 & 0x800000) == 0)
  {
LABEL_46:
    if ((*&v20 & 0x20000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_78;
  }

LABEL_77:
  proxyUsed = self->_proxyUsed;
  PBDataWriterWriteBOOLField();
  v20 = self->_has;
  if ((*&v20 & 0x20000) == 0)
  {
LABEL_47:
    if ((*&v20 & 0x80000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_79;
  }

LABEL_78:
  finalTryInRequest = self->_finalTryInRequest;
  PBDataWriterWriteBOOLField();
  v20 = self->_has;
  if ((*&v20 & 0x80000) == 0)
  {
LABEL_48:
    if ((*&v20 & 0x10) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_80;
  }

LABEL_79:
  inlineEdgeComplete = self->_inlineEdgeComplete;
  PBDataWriterWriteBOOLField();
  v20 = self->_has;
  if ((*&v20 & 0x10) == 0)
  {
LABEL_49:
    if ((*&v20 & 0x20) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_81;
  }

LABEL_80:
  adaptiveTcpReadTimeout = self->_adaptiveTcpReadTimeout;
  PBDataWriterWriteInt32Field();
  v20 = self->_has;
  if ((*&v20 & 0x20) == 0)
  {
LABEL_50:
    if ((*&v20 & 0x400000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_82;
  }

LABEL_81:
  adaptiveTcpWriteTimeout = self->_adaptiveTcpWriteTimeout;
  PBDataWriterWriteInt32Field();
  v20 = self->_has;
  if ((*&v20 & 0x400000) == 0)
  {
LABEL_51:
    if ((*&v20 & 0x200000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_83;
  }

LABEL_82:
  powerPluggedInWhenQueued = self->_powerPluggedInWhenQueued;
  PBDataWriterWriteBOOLField();
  v20 = self->_has;
  if ((*&v20 & 0x200000) == 0)
  {
LABEL_52:
    if ((*&v20 & 0x100000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_83:
  powerPluggedInAtStart = self->_powerPluggedInAtStart;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x100000) != 0)
  {
LABEL_53:
    powerPluggedInAtEnd = self->_powerPluggedInAtEnd;
    PBDataWriterWriteBOOLField();
  }

LABEL_54:
  if (self->_networkUsed)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    networkServiceType = self->_networkServiceType;
    PBDataWriterWriteInt64Field();
  }

  v23 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)a3
{
  if (self->_locatorScheme)
  {
    [a3 setLocatorScheme:?];
  }

  if (self->_locatorHostname)
  {
    [a3 setLocatorHostname:?];
  }

  has = self->_has;
  if ((*&has & 0x100) != 0)
  {
    *(a3 + 26) = self->_locatorPort;
    *(a3 + 42) |= 0x100u;
    has = self->_has;
    if ((*&has & 0x8000) == 0)
    {
LABEL_7:
      if ((*&has & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_55;
    }
  }

  else if ((*&has & 0x8000) == 0)
  {
    goto LABEL_7;
  }

  *(a3 + 155) = self->_connectionReused;
  *(a3 + 42) |= 0x8000u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_8:
    if ((*&has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(a3 + 4) = self->_startTime;
  *(a3 + 42) |= 8u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_9:
    if ((*&has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(a3 + 3) = self->_responseReceivedDuration;
  *(a3 + 42) |= 4u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_10:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_57:
  *(a3 + 1) = self->_duration;
  *(a3 + 42) |= 1u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_11:
    *(a3 + 18) = self->_httpStatus;
    *(a3 + 42) |= 0x80u;
  }

LABEL_12:
  if (self->_errorDomain)
  {
    [a3 setErrorDomain:?];
  }

  v6 = self->_has;
  if ((*&v6 & 0x40) != 0)
  {
    *(a3 + 12) = self->_errorCode;
    *(a3 + 42) |= 0x40u;
    v6 = self->_has;
    if ((*&v6 & 0x400) == 0)
    {
LABEL_16:
      if ((*&v6 & 0x800) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_61;
    }
  }

  else if ((*&v6 & 0x400) == 0)
  {
    goto LABEL_16;
  }

  *(a3 + 33) = self->_requestSize;
  *(a3 + 42) |= 0x400u;
  v6 = self->_has;
  if ((*&v6 & 0x800) == 0)
  {
LABEL_17:
    if ((*&v6 & 0x4000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(a3 + 34) = self->_responseSize;
  *(a3 + 42) |= 0x800u;
  v6 = self->_has;
  if ((*&v6 & 0x4000000) == 0)
  {
LABEL_18:
    if ((*&v6 & 0x2000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_63:
    *(a3 + 165) = self->_timedOut;
    *(a3 + 42) |= 0x2000000u;
    if ((*&self->_has & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_62:
  *(a3 + 166) = self->_transactionComplete;
  *(a3 + 42) |= 0x4000000u;
  v6 = self->_has;
  if ((*&v6 & 0x2000000) != 0)
  {
    goto LABEL_63;
  }

LABEL_19:
  if ((*&v6 & 0x4000) != 0)
  {
LABEL_20:
    *(a3 + 154) = self->_cancelled;
    *(a3 + 42) |= 0x4000u;
  }

LABEL_21:
  if ([(AWDMMCSHttpInfo *)self tcpInfosCount])
  {
    [a3 clearTcpInfos];
    v7 = [(AWDMMCSHttpInfo *)self tcpInfosCount];
    if (v7)
    {
      v8 = v7;
      for (i = 0; i != v8; ++i)
      {
        [a3 addTcpInfo:{-[AWDMMCSHttpInfo tcpInfoAtIndex:](self, "tcpInfoAtIndex:", i)}];
      }
    }
  }

  if ([(AWDMMCSHttpInfo *)self httpErrorsCount])
  {
    [a3 clearHttpErrors];
    v10 = [(AWDMMCSHttpInfo *)self httpErrorsCount];
    if (v10)
    {
      v11 = v10;
      for (j = 0; j != v11; ++j)
      {
        [a3 addHttpError:{-[AWDMMCSHttpInfo httpErrorAtIndex:](self, "httpErrorAtIndex:", j)}];
      }
    }
  }

  if (self->_interfaceIdentifier)
  {
    [a3 setInterfaceIdentifier:?];
  }

  if (self->_locatorPeerAddress)
  {
    [a3 setLocatorPeerAddress:?];
  }

  v13 = self->_has;
  if ((*&v13 & 0x1000000) != 0)
  {
    *(a3 + 164) = self->_requiresPowerPluggedIn;
    *(a3 + 42) |= 0x1000000u;
    v13 = self->_has;
    if ((*&v13 & 0x2000) == 0)
    {
LABEL_35:
      if ((*&v13 & 0x1000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_67;
    }
  }

  else if ((*&v13 & 0x2000) == 0)
  {
    goto LABEL_35;
  }

  *(a3 + 153) = self->_allowsPowerNapScheduling;
  *(a3 + 42) |= 0x2000u;
  v13 = self->_has;
  if ((*&v13 & 0x1000) == 0)
  {
LABEL_36:
    if ((*&v13 & 0x40000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(a3 + 152) = self->_allowsCellular;
  *(a3 + 42) |= 0x1000u;
  v13 = self->_has;
  if ((*&v13 & 0x40000) == 0)
  {
LABEL_37:
    if ((*&v13 & 0x10000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(a3 + 158) = self->_forceNondiscretionary;
  *(a3 + 42) |= 0x40000u;
  v13 = self->_has;
  if ((*&v13 & 0x10000) == 0)
  {
LABEL_38:
    if ((*&v13 & 0x200) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(a3 + 156) = self->_fastFail;
  *(a3 + 42) |= 0x10000u;
  v13 = self->_has;
  if ((*&v13 & 0x200) == 0)
  {
LABEL_39:
    if ((*&v13 & 0x800000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(a3 + 32) = self->_qualityOfService;
  *(a3 + 42) |= 0x200u;
  v13 = self->_has;
  if ((*&v13 & 0x800000) == 0)
  {
LABEL_40:
    if ((*&v13 & 0x20000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(a3 + 163) = self->_proxyUsed;
  *(a3 + 42) |= 0x800000u;
  v13 = self->_has;
  if ((*&v13 & 0x20000) == 0)
  {
LABEL_41:
    if ((*&v13 & 0x80000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(a3 + 157) = self->_finalTryInRequest;
  *(a3 + 42) |= 0x20000u;
  v13 = self->_has;
  if ((*&v13 & 0x80000) == 0)
  {
LABEL_42:
    if ((*&v13 & 0x10) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(a3 + 159) = self->_inlineEdgeComplete;
  *(a3 + 42) |= 0x80000u;
  v13 = self->_has;
  if ((*&v13 & 0x10) == 0)
  {
LABEL_43:
    if ((*&v13 & 0x20) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(a3 + 10) = self->_adaptiveTcpReadTimeout;
  *(a3 + 42) |= 0x10u;
  v13 = self->_has;
  if ((*&v13 & 0x20) == 0)
  {
LABEL_44:
    if ((*&v13 & 0x400000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(a3 + 11) = self->_adaptiveTcpWriteTimeout;
  *(a3 + 42) |= 0x20u;
  v13 = self->_has;
  if ((*&v13 & 0x400000) == 0)
  {
LABEL_45:
    if ((*&v13 & 0x200000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(a3 + 162) = self->_powerPluggedInWhenQueued;
  *(a3 + 42) |= 0x400000u;
  v13 = self->_has;
  if ((*&v13 & 0x200000) == 0)
  {
LABEL_46:
    if ((*&v13 & 0x100000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_77:
  *(a3 + 161) = self->_powerPluggedInAtStart;
  *(a3 + 42) |= 0x200000u;
  if ((*&self->_has & 0x100000) != 0)
  {
LABEL_47:
    *(a3 + 160) = self->_powerPluggedInAtEnd;
    *(a3 + 42) |= 0x100000u;
  }

LABEL_48:
  if (self->_networkUsed)
  {
    [a3 setNetworkUsed:?];
  }

  if ((*&self->_has & 2) != 0)
  {
    *(a3 + 2) = self->_networkServiceType;
    *(a3 + 42) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v33 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];

  *(v5 + 112) = [(NSString *)self->_locatorScheme copyWithZone:a3];
  *(v5 + 88) = [(NSString *)self->_locatorHostname copyWithZone:a3];
  has = self->_has;
  if ((*&has & 0x100) != 0)
  {
    *(v5 + 104) = self->_locatorPort;
    *(v5 + 168) |= 0x100u;
    has = self->_has;
    if ((*&has & 0x8000) == 0)
    {
LABEL_3:
      if ((*&has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_49;
    }
  }

  else if ((*&has & 0x8000) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 155) = self->_connectionReused;
  *(v5 + 168) |= 0x8000u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_4:
    if ((*&has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v5 + 32) = self->_startTime;
  *(v5 + 168) |= 8u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_5:
    if ((*&has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v5 + 24) = self->_responseReceivedDuration;
  *(v5 + 168) |= 4u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_6:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_51:
  *(v5 + 8) = self->_duration;
  *(v5 + 168) |= 1u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_7:
    *(v5 + 72) = self->_httpStatus;
    *(v5 + 168) |= 0x80u;
  }

LABEL_8:

  *(v5 + 56) = [(NSString *)self->_errorDomain copyWithZone:a3];
  v7 = self->_has;
  if ((*&v7 & 0x40) != 0)
  {
    *(v5 + 48) = self->_errorCode;
    *(v5 + 168) |= 0x40u;
    v7 = self->_has;
    if ((*&v7 & 0x400) == 0)
    {
LABEL_10:
      if ((*&v7 & 0x800) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_55;
    }
  }

  else if ((*&v7 & 0x400) == 0)
  {
    goto LABEL_10;
  }

  *(v5 + 132) = self->_requestSize;
  *(v5 + 168) |= 0x400u;
  v7 = self->_has;
  if ((*&v7 & 0x800) == 0)
  {
LABEL_11:
    if ((*&v7 & 0x4000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(v5 + 136) = self->_responseSize;
  *(v5 + 168) |= 0x800u;
  v7 = self->_has;
  if ((*&v7 & 0x4000000) == 0)
  {
LABEL_12:
    if ((*&v7 & 0x2000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v5 + 166) = self->_transactionComplete;
  *(v5 + 168) |= 0x4000000u;
  v7 = self->_has;
  if ((*&v7 & 0x2000000) == 0)
  {
LABEL_13:
    if ((*&v7 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_57:
  *(v5 + 165) = self->_timedOut;
  *(v5 + 168) |= 0x2000000u;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_14:
    *(v5 + 154) = self->_cancelled;
    *(v5 + 168) |= 0x4000u;
  }

LABEL_15:
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  tcpInfos = self->_tcpInfos;
  v9 = [(NSMutableArray *)tcpInfos countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(tcpInfos);
        }

        v13 = [*(*(&v27 + 1) + 8 * i) copyWithZone:a3];
        [v5 addTcpInfo:v13];
      }

      v10 = [(NSMutableArray *)tcpInfos countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v10);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  httpErrors = self->_httpErrors;
  v15 = [(NSMutableArray *)httpErrors countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(httpErrors);
        }

        v19 = [*(*(&v23 + 1) + 8 * j) copyWithZone:a3];
        [v5 addHttpError:v19];
      }

      v16 = [(NSMutableArray *)httpErrors countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v16);
  }

  *(v5 + 80) = [(NSString *)self->_interfaceIdentifier copyWithZone:a3];
  *(v5 + 96) = [(NSString *)self->_locatorPeerAddress copyWithZone:a3];
  v20 = self->_has;
  if ((*&v20 & 0x1000000) != 0)
  {
    *(v5 + 164) = self->_requiresPowerPluggedIn;
    *(v5 + 168) |= 0x1000000u;
    v20 = self->_has;
    if ((*&v20 & 0x2000) == 0)
    {
LABEL_31:
      if ((*&v20 & 0x1000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_61;
    }
  }

  else if ((*&v20 & 0x2000) == 0)
  {
    goto LABEL_31;
  }

  *(v5 + 153) = self->_allowsPowerNapScheduling;
  *(v5 + 168) |= 0x2000u;
  v20 = self->_has;
  if ((*&v20 & 0x1000) == 0)
  {
LABEL_32:
    if ((*&v20 & 0x40000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(v5 + 152) = self->_allowsCellular;
  *(v5 + 168) |= 0x1000u;
  v20 = self->_has;
  if ((*&v20 & 0x40000) == 0)
  {
LABEL_33:
    if ((*&v20 & 0x10000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(v5 + 158) = self->_forceNondiscretionary;
  *(v5 + 168) |= 0x40000u;
  v20 = self->_has;
  if ((*&v20 & 0x10000) == 0)
  {
LABEL_34:
    if ((*&v20 & 0x200) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(v5 + 156) = self->_fastFail;
  *(v5 + 168) |= 0x10000u;
  v20 = self->_has;
  if ((*&v20 & 0x200) == 0)
  {
LABEL_35:
    if ((*&v20 & 0x800000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(v5 + 128) = self->_qualityOfService;
  *(v5 + 168) |= 0x200u;
  v20 = self->_has;
  if ((*&v20 & 0x800000) == 0)
  {
LABEL_36:
    if ((*&v20 & 0x20000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(v5 + 163) = self->_proxyUsed;
  *(v5 + 168) |= 0x800000u;
  v20 = self->_has;
  if ((*&v20 & 0x20000) == 0)
  {
LABEL_37:
    if ((*&v20 & 0x80000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(v5 + 157) = self->_finalTryInRequest;
  *(v5 + 168) |= 0x20000u;
  v20 = self->_has;
  if ((*&v20 & 0x80000) == 0)
  {
LABEL_38:
    if ((*&v20 & 0x10) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(v5 + 159) = self->_inlineEdgeComplete;
  *(v5 + 168) |= 0x80000u;
  v20 = self->_has;
  if ((*&v20 & 0x10) == 0)
  {
LABEL_39:
    if ((*&v20 & 0x20) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(v5 + 40) = self->_adaptiveTcpReadTimeout;
  *(v5 + 168) |= 0x10u;
  v20 = self->_has;
  if ((*&v20 & 0x20) == 0)
  {
LABEL_40:
    if ((*&v20 & 0x400000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(v5 + 44) = self->_adaptiveTcpWriteTimeout;
  *(v5 + 168) |= 0x20u;
  v20 = self->_has;
  if ((*&v20 & 0x400000) == 0)
  {
LABEL_41:
    if ((*&v20 & 0x200000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(v5 + 162) = self->_powerPluggedInWhenQueued;
  *(v5 + 168) |= 0x400000u;
  v20 = self->_has;
  if ((*&v20 & 0x200000) == 0)
  {
LABEL_42:
    if ((*&v20 & 0x100000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_71:
  *(v5 + 161) = self->_powerPluggedInAtStart;
  *(v5 + 168) |= 0x200000u;
  if ((*&self->_has & 0x100000) != 0)
  {
LABEL_43:
    *(v5 + 160) = self->_powerPluggedInAtEnd;
    *(v5 + 168) |= 0x100000u;
  }

LABEL_44:

  *(v5 + 120) = [(NSString *)self->_networkUsed copyWithZone:a3];
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_networkServiceType;
    *(v5 + 168) |= 2u;
  }

  v21 = *MEMORY[0x29EDCA608];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  locatorScheme = self->_locatorScheme;
  if (locatorScheme | *(a3 + 14))
  {
    v5 = [(NSString *)locatorScheme isEqual:?];
    if (!v5)
    {
      return v5;
    }
  }

  locatorHostname = self->_locatorHostname;
  if (locatorHostname | *(a3 + 11))
  {
    v5 = [(NSString *)locatorHostname isEqual:?];
    if (!v5)
    {
      return v5;
    }
  }

  has = self->_has;
  v9 = *(a3 + 42);
  if ((*&has & 0x100) != 0)
  {
    if ((v9 & 0x100) == 0 || self->_locatorPort != *(a3 + 26))
    {
      goto LABEL_194;
    }
  }

  else if ((v9 & 0x100) != 0)
  {
    goto LABEL_194;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_194;
    }

    v10 = *(a3 + 155);
    if (self->_connectionReused)
    {
      if ((*(a3 + 155) & 1) == 0)
      {
        goto LABEL_194;
      }
    }

    else if (*(a3 + 155))
    {
      goto LABEL_194;
    }
  }

  else if ((v9 & 0x8000) != 0)
  {
    goto LABEL_194;
  }

  if ((*&has & 8) != 0)
  {
    if ((v9 & 8) == 0 || self->_startTime != *(a3 + 4))
    {
      goto LABEL_194;
    }
  }

  else if ((v9 & 8) != 0)
  {
    goto LABEL_194;
  }

  if ((*&has & 4) != 0)
  {
    if ((v9 & 4) == 0 || self->_responseReceivedDuration != *(a3 + 3))
    {
      goto LABEL_194;
    }
  }

  else if ((v9 & 4) != 0)
  {
    goto LABEL_194;
  }

  if (*&has)
  {
    if ((v9 & 1) == 0 || self->_duration != *(a3 + 1))
    {
      goto LABEL_194;
    }
  }

  else if (v9)
  {
    goto LABEL_194;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v9 & 0x80) == 0 || self->_httpStatus != *(a3 + 18))
    {
      goto LABEL_194;
    }
  }

  else if ((v9 & 0x80) != 0)
  {
    goto LABEL_194;
  }

  errorDomain = self->_errorDomain;
  if (errorDomain | *(a3 + 7))
  {
    v5 = [(NSString *)errorDomain isEqual:?];
    if (!v5)
    {
      return v5;
    }

    has = self->_has;
  }

  v12 = *(a3 + 42);
  if ((*&has & 0x40) != 0)
  {
    if ((v12 & 0x40) == 0 || self->_errorCode != *(a3 + 12))
    {
      goto LABEL_194;
    }
  }

  else if ((v12 & 0x40) != 0)
  {
    goto LABEL_194;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v12 & 0x400) == 0 || self->_requestSize != *(a3 + 33))
    {
      goto LABEL_194;
    }
  }

  else if ((v12 & 0x400) != 0)
  {
    goto LABEL_194;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v12 & 0x800) == 0 || self->_responseSize != *(a3 + 34))
    {
      goto LABEL_194;
    }
  }

  else if ((v12 & 0x800) != 0)
  {
    goto LABEL_194;
  }

  if ((*&has & 0x4000000) != 0)
  {
    if ((v12 & 0x4000000) == 0)
    {
      goto LABEL_194;
    }

    v19 = *(a3 + 166);
    if (self->_transactionComplete)
    {
      if ((*(a3 + 166) & 1) == 0)
      {
        goto LABEL_194;
      }
    }

    else if (*(a3 + 166))
    {
      goto LABEL_194;
    }
  }

  else if ((v12 & 0x4000000) != 0)
  {
    goto LABEL_194;
  }

  if ((*&has & 0x2000000) != 0)
  {
    if ((v12 & 0x2000000) == 0)
    {
      goto LABEL_194;
    }

    v20 = *(a3 + 165);
    if (self->_timedOut)
    {
      if ((*(a3 + 165) & 1) == 0)
      {
        goto LABEL_194;
      }
    }

    else if (*(a3 + 165))
    {
      goto LABEL_194;
    }
  }

  else if ((v12 & 0x2000000) != 0)
  {
    goto LABEL_194;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v12 & 0x4000) == 0)
    {
      goto LABEL_194;
    }

    v21 = *(a3 + 154);
    if (self->_cancelled)
    {
      if ((*(a3 + 154) & 1) == 0)
      {
        goto LABEL_194;
      }
    }

    else if (*(a3 + 154))
    {
      goto LABEL_194;
    }
  }

  else if ((v12 & 0x4000) != 0)
  {
    goto LABEL_194;
  }

  tcpInfos = self->_tcpInfos;
  if (tcpInfos | *(a3 + 18))
  {
    v5 = [(NSMutableArray *)tcpInfos isEqual:?];
    if (!v5)
    {
      return v5;
    }
  }

  httpErrors = self->_httpErrors;
  if (httpErrors | *(a3 + 8))
  {
    v5 = [(NSMutableArray *)httpErrors isEqual:?];
    if (!v5)
    {
      return v5;
    }
  }

  interfaceIdentifier = self->_interfaceIdentifier;
  if (interfaceIdentifier | *(a3 + 10))
  {
    v5 = [(NSString *)interfaceIdentifier isEqual:?];
    if (!v5)
    {
      return v5;
    }
  }

  locatorPeerAddress = self->_locatorPeerAddress;
  if (locatorPeerAddress | *(a3 + 12))
  {
    v5 = [(NSString *)locatorPeerAddress isEqual:?];
    if (!v5)
    {
      return v5;
    }
  }

  v17 = self->_has;
  v18 = *(a3 + 42);
  if ((*&v17 & 0x1000000) != 0)
  {
    if ((v18 & 0x1000000) == 0)
    {
      goto LABEL_194;
    }

    v22 = *(a3 + 164);
    if (self->_requiresPowerPluggedIn)
    {
      if ((*(a3 + 164) & 1) == 0)
      {
        goto LABEL_194;
      }
    }

    else if (*(a3 + 164))
    {
      goto LABEL_194;
    }
  }

  else if ((v18 & 0x1000000) != 0)
  {
    goto LABEL_194;
  }

  if ((*&v17 & 0x2000) != 0)
  {
    if ((v18 & 0x2000) == 0)
    {
      goto LABEL_194;
    }

    v23 = *(a3 + 153);
    if (self->_allowsPowerNapScheduling)
    {
      if ((*(a3 + 153) & 1) == 0)
      {
        goto LABEL_194;
      }
    }

    else if (*(a3 + 153))
    {
      goto LABEL_194;
    }
  }

  else if ((v18 & 0x2000) != 0)
  {
    goto LABEL_194;
  }

  if ((*&v17 & 0x1000) != 0)
  {
    if ((v18 & 0x1000) == 0)
    {
      goto LABEL_194;
    }

    v24 = *(a3 + 152);
    if (self->_allowsCellular)
    {
      if ((*(a3 + 152) & 1) == 0)
      {
        goto LABEL_194;
      }
    }

    else if (*(a3 + 152))
    {
      goto LABEL_194;
    }
  }

  else if ((v18 & 0x1000) != 0)
  {
    goto LABEL_194;
  }

  if ((*&v17 & 0x40000) != 0)
  {
    if ((v18 & 0x40000) == 0)
    {
      goto LABEL_194;
    }

    v25 = *(a3 + 158);
    if (self->_forceNondiscretionary)
    {
      if ((*(a3 + 158) & 1) == 0)
      {
        goto LABEL_194;
      }
    }

    else if (*(a3 + 158))
    {
      goto LABEL_194;
    }
  }

  else if ((v18 & 0x40000) != 0)
  {
    goto LABEL_194;
  }

  if ((*&v17 & 0x10000) != 0)
  {
    if ((v18 & 0x10000) == 0)
    {
      goto LABEL_194;
    }

    v26 = *(a3 + 156);
    if (self->_fastFail)
    {
      if ((*(a3 + 156) & 1) == 0)
      {
        goto LABEL_194;
      }
    }

    else if (*(a3 + 156))
    {
      goto LABEL_194;
    }
  }

  else if ((v18 & 0x10000) != 0)
  {
    goto LABEL_194;
  }

  if ((*&v17 & 0x200) != 0)
  {
    if ((v18 & 0x200) == 0 || self->_qualityOfService != *(a3 + 32))
    {
      goto LABEL_194;
    }
  }

  else if ((v18 & 0x200) != 0)
  {
    goto LABEL_194;
  }

  if ((*&v17 & 0x800000) != 0)
  {
    if ((v18 & 0x800000) == 0)
    {
      goto LABEL_194;
    }

    v27 = *(a3 + 163);
    if (self->_proxyUsed)
    {
      if ((*(a3 + 163) & 1) == 0)
      {
        goto LABEL_194;
      }
    }

    else if (*(a3 + 163))
    {
      goto LABEL_194;
    }
  }

  else if ((v18 & 0x800000) != 0)
  {
    goto LABEL_194;
  }

  if ((*&v17 & 0x20000) != 0)
  {
    if ((v18 & 0x20000) == 0)
    {
      goto LABEL_194;
    }

    v28 = *(a3 + 157);
    if (self->_finalTryInRequest)
    {
      if ((*(a3 + 157) & 1) == 0)
      {
        goto LABEL_194;
      }
    }

    else if (*(a3 + 157))
    {
      goto LABEL_194;
    }
  }

  else if ((v18 & 0x20000) != 0)
  {
    goto LABEL_194;
  }

  if ((*&v17 & 0x80000) != 0)
  {
    if ((v18 & 0x80000) == 0)
    {
      goto LABEL_194;
    }

    v29 = *(a3 + 159);
    if (self->_inlineEdgeComplete)
    {
      if ((*(a3 + 159) & 1) == 0)
      {
        goto LABEL_194;
      }
    }

    else if (*(a3 + 159))
    {
      goto LABEL_194;
    }
  }

  else if ((v18 & 0x80000) != 0)
  {
    goto LABEL_194;
  }

  if ((*&v17 & 0x10) != 0)
  {
    if ((v18 & 0x10) == 0 || self->_adaptiveTcpReadTimeout != *(a3 + 10))
    {
      goto LABEL_194;
    }
  }

  else if ((v18 & 0x10) != 0)
  {
    goto LABEL_194;
  }

  if ((*&v17 & 0x20) != 0)
  {
    if ((v18 & 0x20) == 0 || self->_adaptiveTcpWriteTimeout != *(a3 + 11))
    {
      goto LABEL_194;
    }
  }

  else if ((v18 & 0x20) != 0)
  {
    goto LABEL_194;
  }

  if ((*&v17 & 0x400000) != 0)
  {
    if ((v18 & 0x400000) == 0)
    {
      goto LABEL_194;
    }

    v30 = *(a3 + 162);
    if (self->_powerPluggedInWhenQueued)
    {
      if ((*(a3 + 162) & 1) == 0)
      {
        goto LABEL_194;
      }
    }

    else if (*(a3 + 162))
    {
      goto LABEL_194;
    }
  }

  else if ((v18 & 0x400000) != 0)
  {
    goto LABEL_194;
  }

  if ((*&v17 & 0x200000) != 0)
  {
    if ((v18 & 0x200000) == 0)
    {
      goto LABEL_194;
    }

    v31 = *(a3 + 161);
    if (self->_powerPluggedInAtStart)
    {
      if ((*(a3 + 161) & 1) == 0)
      {
        goto LABEL_194;
      }
    }

    else if (*(a3 + 161))
    {
      goto LABEL_194;
    }
  }

  else if ((v18 & 0x200000) != 0)
  {
    goto LABEL_194;
  }

  if ((*&v17 & 0x100000) != 0)
  {
    if ((v18 & 0x100000) != 0)
    {
      v34 = *(a3 + 160);
      if (self->_powerPluggedInAtEnd)
      {
        if ((*(a3 + 160) & 1) == 0)
        {
          goto LABEL_194;
        }
      }

      else if (*(a3 + 160))
      {
        goto LABEL_194;
      }

      goto LABEL_186;
    }

LABEL_194:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((v18 & 0x100000) != 0)
  {
    goto LABEL_194;
  }

LABEL_186:
  networkUsed = self->_networkUsed;
  if (networkUsed | *(a3 + 15))
  {
    v5 = [(NSString *)networkUsed isEqual:?];
    if (!v5)
    {
      return v5;
    }

    v17 = self->_has;
  }

  v33 = *(a3 + 42);
  LOBYTE(v5) = (v33 & 2) == 0;
  if ((*&v17 & 2) != 0)
  {
    if ((v33 & 2) == 0 || self->_networkServiceType != *(a3 + 2))
    {
      goto LABEL_194;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  v41 = [(NSString *)self->_locatorScheme hash];
  v40 = [(NSString *)self->_locatorHostname hash];
  has = self->_has;
  if ((*&has & 0x100) != 0)
  {
    v39 = 2654435761 * self->_locatorPort;
    if ((*&has & 0x8000) != 0)
    {
LABEL_3:
      v38 = 2654435761 * self->_connectionReused;
      if ((*&has & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v39 = 0;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_3;
    }
  }

  v38 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_4:
    v37 = 2654435761 * self->_startTime;
    if ((*&has & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v37 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_5:
    v36 = 2654435761 * self->_responseReceivedDuration;
    if (*&has)
    {
      goto LABEL_6;
    }

LABEL_12:
    v35 = 0;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_11:
  v36 = 0;
  if ((*&has & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v35 = 2654435761 * self->_duration;
  if ((*&has & 0x80) != 0)
  {
LABEL_7:
    v34 = 2654435761 * self->_httpStatus;
    goto LABEL_14;
  }

LABEL_13:
  v34 = 0;
LABEL_14:
  v33 = [(NSString *)self->_errorDomain hash];
  v4 = self->_has;
  if ((*&v4 & 0x40) != 0)
  {
    v32 = 2654435761 * self->_errorCode;
    if ((*&v4 & 0x400) != 0)
    {
LABEL_16:
      v31 = 2654435761 * self->_requestSize;
      if ((*&v4 & 0x800) != 0)
      {
        goto LABEL_17;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v32 = 0;
    if ((*&v4 & 0x400) != 0)
    {
      goto LABEL_16;
    }
  }

  v31 = 0;
  if ((*&v4 & 0x800) != 0)
  {
LABEL_17:
    v30 = 2654435761 * self->_responseSize;
    if ((*&v4 & 0x4000000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_24;
  }

LABEL_23:
  v30 = 0;
  if ((*&v4 & 0x4000000) != 0)
  {
LABEL_18:
    v29 = 2654435761 * self->_transactionComplete;
    if ((*&v4 & 0x2000000) != 0)
    {
      goto LABEL_19;
    }

LABEL_25:
    v28 = 0;
    if ((*&v4 & 0x4000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_26;
  }

LABEL_24:
  v29 = 0;
  if ((*&v4 & 0x2000000) == 0)
  {
    goto LABEL_25;
  }

LABEL_19:
  v28 = 2654435761 * self->_timedOut;
  if ((*&v4 & 0x4000) != 0)
  {
LABEL_20:
    v27 = 2654435761 * self->_cancelled;
    goto LABEL_27;
  }

LABEL_26:
  v27 = 0;
LABEL_27:
  v26 = [(NSMutableArray *)self->_tcpInfos hash];
  v25 = [(NSMutableArray *)self->_httpErrors hash];
  v24 = [(NSString *)self->_interfaceIdentifier hash];
  v23 = [(NSString *)self->_locatorPeerAddress hash];
  v5 = self->_has;
  if ((*&v5 & 0x1000000) != 0)
  {
    v22 = 2654435761 * self->_requiresPowerPluggedIn;
    if ((*&v5 & 0x2000) != 0)
    {
LABEL_29:
      v21 = 2654435761 * self->_allowsPowerNapScheduling;
      if ((*&v5 & 0x1000) != 0)
      {
        goto LABEL_30;
      }

      goto LABEL_44;
    }
  }

  else
  {
    v22 = 0;
    if ((*&v5 & 0x2000) != 0)
    {
      goto LABEL_29;
    }
  }

  v21 = 0;
  if ((*&v5 & 0x1000) != 0)
  {
LABEL_30:
    v20 = 2654435761 * self->_allowsCellular;
    if ((*&v5 & 0x40000) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_45;
  }

LABEL_44:
  v20 = 0;
  if ((*&v5 & 0x40000) != 0)
  {
LABEL_31:
    v19 = 2654435761 * self->_forceNondiscretionary;
    if ((*&v5 & 0x10000) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_46;
  }

LABEL_45:
  v19 = 0;
  if ((*&v5 & 0x10000) != 0)
  {
LABEL_32:
    v18 = 2654435761 * self->_fastFail;
    if ((*&v5 & 0x200) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_47;
  }

LABEL_46:
  v18 = 0;
  if ((*&v5 & 0x200) != 0)
  {
LABEL_33:
    v17 = 2654435761 * self->_qualityOfService;
    if ((*&v5 & 0x800000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_48;
  }

LABEL_47:
  v17 = 0;
  if ((*&v5 & 0x800000) != 0)
  {
LABEL_34:
    v16 = 2654435761 * self->_proxyUsed;
    if ((*&v5 & 0x20000) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_49;
  }

LABEL_48:
  v16 = 0;
  if ((*&v5 & 0x20000) != 0)
  {
LABEL_35:
    v6 = 2654435761 * self->_finalTryInRequest;
    if ((*&v5 & 0x80000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_50;
  }

LABEL_49:
  v6 = 0;
  if ((*&v5 & 0x80000) != 0)
  {
LABEL_36:
    v7 = 2654435761 * self->_inlineEdgeComplete;
    if ((*&v5 & 0x10) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_51;
  }

LABEL_50:
  v7 = 0;
  if ((*&v5 & 0x10) != 0)
  {
LABEL_37:
    v8 = 2654435761 * self->_adaptiveTcpReadTimeout;
    if ((*&v5 & 0x20) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_52;
  }

LABEL_51:
  v8 = 0;
  if ((*&v5 & 0x20) != 0)
  {
LABEL_38:
    v9 = 2654435761 * self->_adaptiveTcpWriteTimeout;
    if ((*&v5 & 0x400000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_53;
  }

LABEL_52:
  v9 = 0;
  if ((*&v5 & 0x400000) != 0)
  {
LABEL_39:
    v10 = 2654435761 * self->_powerPluggedInWhenQueued;
    if ((*&v5 & 0x200000) != 0)
    {
      goto LABEL_40;
    }

LABEL_54:
    v11 = 0;
    if ((*&v5 & 0x100000) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_55;
  }

LABEL_53:
  v10 = 0;
  if ((*&v5 & 0x200000) == 0)
  {
    goto LABEL_54;
  }

LABEL_40:
  v11 = 2654435761 * self->_powerPluggedInAtStart;
  if ((*&v5 & 0x100000) != 0)
  {
LABEL_41:
    v12 = 2654435761 * self->_powerPluggedInAtEnd;
    goto LABEL_56;
  }

LABEL_55:
  v12 = 0;
LABEL_56:
  v13 = [(NSString *)self->_networkUsed hash];
  if ((*&self->_has & 2) != 0)
  {
    v14 = 2654435761 * self->_networkServiceType;
  }

  else
  {
    v14 = 0;
  }

  return v40 ^ v41 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v17 ^ v16 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
}

- (void)mergeFrom:(id)a3
{
  v29 = *MEMORY[0x29EDCA608];
  if (*(a3 + 14))
  {
    [(AWDMMCSHttpInfo *)self setLocatorScheme:?];
  }

  if (*(a3 + 11))
  {
    [(AWDMMCSHttpInfo *)self setLocatorHostname:?];
  }

  v5 = *(a3 + 42);
  if ((v5 & 0x100) != 0)
  {
    self->_locatorPort = *(a3 + 26);
    *&self->_has |= 0x100u;
    v5 = *(a3 + 42);
    if ((v5 & 0x8000) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_61;
    }
  }

  else if ((v5 & 0x8000) == 0)
  {
    goto LABEL_7;
  }

  self->_connectionReused = *(a3 + 155);
  *&self->_has |= 0x8000u;
  v5 = *(a3 + 42);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_62;
  }

LABEL_61:
  self->_startTime = *(a3 + 4);
  *&self->_has |= 8u;
  v5 = *(a3 + 42);
  if ((v5 & 4) == 0)
  {
LABEL_9:
    if ((v5 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_63;
  }

LABEL_62:
  self->_responseReceivedDuration = *(a3 + 3);
  *&self->_has |= 4u;
  v5 = *(a3 + 42);
  if ((v5 & 1) == 0)
  {
LABEL_10:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_63:
  self->_duration = *(a3 + 1);
  *&self->_has |= 1u;
  if ((*(a3 + 42) & 0x80) != 0)
  {
LABEL_11:
    self->_httpStatus = *(a3 + 18);
    *&self->_has |= 0x80u;
  }

LABEL_12:
  if (*(a3 + 7))
  {
    [(AWDMMCSHttpInfo *)self setErrorDomain:?];
  }

  v6 = *(a3 + 42);
  if ((v6 & 0x40) != 0)
  {
    self->_errorCode = *(a3 + 12);
    *&self->_has |= 0x40u;
    v6 = *(a3 + 42);
    if ((v6 & 0x400) == 0)
    {
LABEL_16:
      if ((v6 & 0x800) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_67;
    }
  }

  else if ((v6 & 0x400) == 0)
  {
    goto LABEL_16;
  }

  self->_requestSize = *(a3 + 33);
  *&self->_has |= 0x400u;
  v6 = *(a3 + 42);
  if ((v6 & 0x800) == 0)
  {
LABEL_17:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_68;
  }

LABEL_67:
  self->_responseSize = *(a3 + 34);
  *&self->_has |= 0x800u;
  v6 = *(a3 + 42);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_18:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_69;
  }

LABEL_68:
  self->_transactionComplete = *(a3 + 166);
  *&self->_has |= 0x4000000u;
  v6 = *(a3 + 42);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_19:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_69:
  self->_timedOut = *(a3 + 165);
  *&self->_has |= 0x2000000u;
  if ((*(a3 + 42) & 0x4000) != 0)
  {
LABEL_20:
    self->_cancelled = *(a3 + 154);
    *&self->_has |= 0x4000u;
  }

LABEL_21:
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = *(a3 + 18);
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(AWDMMCSHttpInfo *)self addTcpInfo:*(*(&v23 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v9);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = *(a3 + 8);
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(AWDMMCSHttpInfo *)self addHttpError:*(*(&v19 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  if (*(a3 + 10))
  {
    [(AWDMMCSHttpInfo *)self setInterfaceIdentifier:?];
  }

  if (*(a3 + 12))
  {
    [(AWDMMCSHttpInfo *)self setLocatorPeerAddress:?];
  }

  v17 = *(a3 + 42);
  if ((v17 & 0x1000000) != 0)
  {
    self->_requiresPowerPluggedIn = *(a3 + 164);
    *&self->_has |= 0x1000000u;
    v17 = *(a3 + 42);
    if ((v17 & 0x2000) == 0)
    {
LABEL_41:
      if ((v17 & 0x1000) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_73;
    }
  }

  else if ((v17 & 0x2000) == 0)
  {
    goto LABEL_41;
  }

  self->_allowsPowerNapScheduling = *(a3 + 153);
  *&self->_has |= 0x2000u;
  v17 = *(a3 + 42);
  if ((v17 & 0x1000) == 0)
  {
LABEL_42:
    if ((v17 & 0x40000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_74;
  }

LABEL_73:
  self->_allowsCellular = *(a3 + 152);
  *&self->_has |= 0x1000u;
  v17 = *(a3 + 42);
  if ((v17 & 0x40000) == 0)
  {
LABEL_43:
    if ((v17 & 0x10000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_75;
  }

LABEL_74:
  self->_forceNondiscretionary = *(a3 + 158);
  *&self->_has |= 0x40000u;
  v17 = *(a3 + 42);
  if ((v17 & 0x10000) == 0)
  {
LABEL_44:
    if ((v17 & 0x200) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_76;
  }

LABEL_75:
  self->_fastFail = *(a3 + 156);
  *&self->_has |= 0x10000u;
  v17 = *(a3 + 42);
  if ((v17 & 0x200) == 0)
  {
LABEL_45:
    if ((v17 & 0x800000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_77;
  }

LABEL_76:
  self->_qualityOfService = *(a3 + 32);
  *&self->_has |= 0x200u;
  v17 = *(a3 + 42);
  if ((v17 & 0x800000) == 0)
  {
LABEL_46:
    if ((v17 & 0x20000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_78;
  }

LABEL_77:
  self->_proxyUsed = *(a3 + 163);
  *&self->_has |= 0x800000u;
  v17 = *(a3 + 42);
  if ((v17 & 0x20000) == 0)
  {
LABEL_47:
    if ((v17 & 0x80000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_79;
  }

LABEL_78:
  self->_finalTryInRequest = *(a3 + 157);
  *&self->_has |= 0x20000u;
  v17 = *(a3 + 42);
  if ((v17 & 0x80000) == 0)
  {
LABEL_48:
    if ((v17 & 0x10) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_80;
  }

LABEL_79:
  self->_inlineEdgeComplete = *(a3 + 159);
  *&self->_has |= 0x80000u;
  v17 = *(a3 + 42);
  if ((v17 & 0x10) == 0)
  {
LABEL_49:
    if ((v17 & 0x20) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_81;
  }

LABEL_80:
  self->_adaptiveTcpReadTimeout = *(a3 + 10);
  *&self->_has |= 0x10u;
  v17 = *(a3 + 42);
  if ((v17 & 0x20) == 0)
  {
LABEL_50:
    if ((v17 & 0x400000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_82;
  }

LABEL_81:
  self->_adaptiveTcpWriteTimeout = *(a3 + 11);
  *&self->_has |= 0x20u;
  v17 = *(a3 + 42);
  if ((v17 & 0x400000) == 0)
  {
LABEL_51:
    if ((v17 & 0x200000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_83;
  }

LABEL_82:
  self->_powerPluggedInWhenQueued = *(a3 + 162);
  *&self->_has |= 0x400000u;
  v17 = *(a3 + 42);
  if ((v17 & 0x200000) == 0)
  {
LABEL_52:
    if ((v17 & 0x100000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_83:
  self->_powerPluggedInAtStart = *(a3 + 161);
  *&self->_has |= 0x200000u;
  if ((*(a3 + 42) & 0x100000) != 0)
  {
LABEL_53:
    self->_powerPluggedInAtEnd = *(a3 + 160);
    *&self->_has |= 0x100000u;
  }

LABEL_54:
  if (*(a3 + 15))
  {
    [(AWDMMCSHttpInfo *)self setNetworkUsed:?];
  }

  if ((*(a3 + 168) & 2) != 0)
  {
    self->_networkServiceType = *(a3 + 2);
    *&self->_has |= 2u;
  }

  v18 = *MEMORY[0x29EDCA608];
}

@end