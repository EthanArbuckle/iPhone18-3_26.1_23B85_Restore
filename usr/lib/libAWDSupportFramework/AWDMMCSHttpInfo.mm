@interface AWDMMCSHttpInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addHttpError:(id)error;
- (void)addTcpInfo:(id)info;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasAdaptiveTcpReadTimeout:(BOOL)timeout;
- (void)setHasAdaptiveTcpWriteTimeout:(BOOL)timeout;
- (void)setHasAllowsCellular:(BOOL)cellular;
- (void)setHasAllowsPowerNapScheduling:(BOOL)scheduling;
- (void)setHasCancelled:(BOOL)cancelled;
- (void)setHasConnectionReused:(BOOL)reused;
- (void)setHasErrorCode:(BOOL)code;
- (void)setHasFastFail:(BOOL)fail;
- (void)setHasFinalTryInRequest:(BOOL)request;
- (void)setHasForceNondiscretionary:(BOOL)nondiscretionary;
- (void)setHasHttpStatus:(BOOL)status;
- (void)setHasInlineEdgeComplete:(BOOL)complete;
- (void)setHasLocatorPort:(BOOL)port;
- (void)setHasNetworkServiceType:(BOOL)type;
- (void)setHasPowerPluggedInAtEnd:(BOOL)end;
- (void)setHasPowerPluggedInAtStart:(BOOL)start;
- (void)setHasPowerPluggedInWhenQueued:(BOOL)queued;
- (void)setHasProxyUsed:(BOOL)used;
- (void)setHasQualityOfService:(BOOL)service;
- (void)setHasRequestSize:(BOOL)size;
- (void)setHasRequiresPowerPluggedIn:(BOOL)in;
- (void)setHasResponseReceivedDuration:(BOOL)duration;
- (void)setHasResponseSize:(BOOL)size;
- (void)setHasStartTime:(BOOL)time;
- (void)setHasTimedOut:(BOOL)out;
- (void)setHasTransactionComplete:(BOOL)complete;
- (void)writeTo:(id)to;
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

- (void)setHasLocatorPort:(BOOL)port
{
  if (port)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasConnectionReused:(BOOL)reused
{
  if (reused)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasStartTime:(BOOL)time
{
  if (time)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasResponseReceivedDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasHttpStatus:(BOOL)status
{
  if (status)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasErrorCode:(BOOL)code
{
  if (code)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasRequestSize:(BOOL)size
{
  if (size)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasResponseSize:(BOOL)size
{
  if (size)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasTransactionComplete:(BOOL)complete
{
  if (complete)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFBFFFFFF | v3);
}

- (void)setHasTimedOut:(BOOL)out
{
  if (out)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFF | v3);
}

- (void)setHasCancelled:(BOOL)cancelled
{
  if (cancelled)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)addTcpInfo:(id)info
{
  tcpInfos = self->_tcpInfos;
  if (!tcpInfos)
  {
    tcpInfos = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_tcpInfos = tcpInfos;
  }

  [(NSMutableArray *)tcpInfos addObject:info];
}

- (void)addHttpError:(id)error
{
  httpErrors = self->_httpErrors;
  if (!httpErrors)
  {
    httpErrors = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_httpErrors = httpErrors;
  }

  [(NSMutableArray *)httpErrors addObject:error];
}

- (void)setHasRequiresPowerPluggedIn:(BOOL)in
{
  if (in)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)setHasAllowsPowerNapScheduling:(BOOL)scheduling
{
  if (scheduling)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasAllowsCellular:(BOOL)cellular
{
  if (cellular)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasForceNondiscretionary:(BOOL)nondiscretionary
{
  if (nondiscretionary)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasFastFail:(BOOL)fail
{
  if (fail)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasQualityOfService:(BOOL)service
{
  if (service)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasProxyUsed:(BOOL)used
{
  if (used)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasFinalTryInRequest:(BOOL)request
{
  if (request)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasInlineEdgeComplete:(BOOL)complete
{
  if (complete)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasAdaptiveTcpReadTimeout:(BOOL)timeout
{
  if (timeout)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasAdaptiveTcpWriteTimeout:(BOOL)timeout
{
  if (timeout)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasPowerPluggedInWhenQueued:(BOOL)queued
{
  if (queued)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasPowerPluggedInAtStart:(BOOL)start
{
  if (start)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasPowerPluggedInAtEnd:(BOOL)end
{
  if (end)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasNetworkServiceType:(BOOL)type
{
  if (type)
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
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  v4 = dictionary;
  locatorScheme = self->_locatorScheme;
  if (locatorScheme)
  {
    [dictionary setObject:locatorScheme forKey:@"locatorScheme"];
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

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  if (self->_locatorScheme)
  {
    [to setLocatorScheme:?];
  }

  if (self->_locatorHostname)
  {
    [to setLocatorHostname:?];
  }

  has = self->_has;
  if ((*&has & 0x100) != 0)
  {
    *(to + 26) = self->_locatorPort;
    *(to + 42) |= 0x100u;
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

  *(to + 155) = self->_connectionReused;
  *(to + 42) |= 0x8000u;
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
  *(to + 4) = self->_startTime;
  *(to + 42) |= 8u;
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
  *(to + 3) = self->_responseReceivedDuration;
  *(to + 42) |= 4u;
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
  *(to + 1) = self->_duration;
  *(to + 42) |= 1u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_11:
    *(to + 18) = self->_httpStatus;
    *(to + 42) |= 0x80u;
  }

LABEL_12:
  if (self->_errorDomain)
  {
    [to setErrorDomain:?];
  }

  v6 = self->_has;
  if ((*&v6 & 0x40) != 0)
  {
    *(to + 12) = self->_errorCode;
    *(to + 42) |= 0x40u;
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

  *(to + 33) = self->_requestSize;
  *(to + 42) |= 0x400u;
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
  *(to + 34) = self->_responseSize;
  *(to + 42) |= 0x800u;
  v6 = self->_has;
  if ((*&v6 & 0x4000000) == 0)
  {
LABEL_18:
    if ((*&v6 & 0x2000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_63:
    *(to + 165) = self->_timedOut;
    *(to + 42) |= 0x2000000u;
    if ((*&self->_has & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_62:
  *(to + 166) = self->_transactionComplete;
  *(to + 42) |= 0x4000000u;
  v6 = self->_has;
  if ((*&v6 & 0x2000000) != 0)
  {
    goto LABEL_63;
  }

LABEL_19:
  if ((*&v6 & 0x4000) != 0)
  {
LABEL_20:
    *(to + 154) = self->_cancelled;
    *(to + 42) |= 0x4000u;
  }

LABEL_21:
  if ([(AWDMMCSHttpInfo *)self tcpInfosCount])
  {
    [to clearTcpInfos];
    tcpInfosCount = [(AWDMMCSHttpInfo *)self tcpInfosCount];
    if (tcpInfosCount)
    {
      v8 = tcpInfosCount;
      for (i = 0; i != v8; ++i)
      {
        [to addTcpInfo:{-[AWDMMCSHttpInfo tcpInfoAtIndex:](self, "tcpInfoAtIndex:", i)}];
      }
    }
  }

  if ([(AWDMMCSHttpInfo *)self httpErrorsCount])
  {
    [to clearHttpErrors];
    httpErrorsCount = [(AWDMMCSHttpInfo *)self httpErrorsCount];
    if (httpErrorsCount)
    {
      v11 = httpErrorsCount;
      for (j = 0; j != v11; ++j)
      {
        [to addHttpError:{-[AWDMMCSHttpInfo httpErrorAtIndex:](self, "httpErrorAtIndex:", j)}];
      }
    }
  }

  if (self->_interfaceIdentifier)
  {
    [to setInterfaceIdentifier:?];
  }

  if (self->_locatorPeerAddress)
  {
    [to setLocatorPeerAddress:?];
  }

  v13 = self->_has;
  if ((*&v13 & 0x1000000) != 0)
  {
    *(to + 164) = self->_requiresPowerPluggedIn;
    *(to + 42) |= 0x1000000u;
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

  *(to + 153) = self->_allowsPowerNapScheduling;
  *(to + 42) |= 0x2000u;
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
  *(to + 152) = self->_allowsCellular;
  *(to + 42) |= 0x1000u;
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
  *(to + 158) = self->_forceNondiscretionary;
  *(to + 42) |= 0x40000u;
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
  *(to + 156) = self->_fastFail;
  *(to + 42) |= 0x10000u;
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
  *(to + 32) = self->_qualityOfService;
  *(to + 42) |= 0x200u;
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
  *(to + 163) = self->_proxyUsed;
  *(to + 42) |= 0x800000u;
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
  *(to + 157) = self->_finalTryInRequest;
  *(to + 42) |= 0x20000u;
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
  *(to + 159) = self->_inlineEdgeComplete;
  *(to + 42) |= 0x80000u;
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
  *(to + 10) = self->_adaptiveTcpReadTimeout;
  *(to + 42) |= 0x10u;
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
  *(to + 11) = self->_adaptiveTcpWriteTimeout;
  *(to + 42) |= 0x20u;
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
  *(to + 162) = self->_powerPluggedInWhenQueued;
  *(to + 42) |= 0x400000u;
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
  *(to + 161) = self->_powerPluggedInAtStart;
  *(to + 42) |= 0x200000u;
  if ((*&self->_has & 0x100000) != 0)
  {
LABEL_47:
    *(to + 160) = self->_powerPluggedInAtEnd;
    *(to + 42) |= 0x100000u;
  }

LABEL_48:
  if (self->_networkUsed)
  {
    [to setNetworkUsed:?];
  }

  if ((*&self->_has & 2) != 0)
  {
    *(to + 2) = self->_networkServiceType;
    *(to + 42) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v33 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];

  *(v5 + 112) = [(NSString *)self->_locatorScheme copyWithZone:zone];
  *(v5 + 88) = [(NSString *)self->_locatorHostname copyWithZone:zone];
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

  *(v5 + 56) = [(NSString *)self->_errorDomain copyWithZone:zone];
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

        v13 = [*(*(&v27 + 1) + 8 * i) copyWithZone:zone];
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

        v19 = [*(*(&v23 + 1) + 8 * j) copyWithZone:zone];
        [v5 addHttpError:v19];
      }

      v16 = [(NSMutableArray *)httpErrors countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v16);
  }

  *(v5 + 80) = [(NSString *)self->_interfaceIdentifier copyWithZone:zone];
  *(v5 + 96) = [(NSString *)self->_locatorPeerAddress copyWithZone:zone];
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

  *(v5 + 120) = [(NSString *)self->_networkUsed copyWithZone:zone];
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_networkServiceType;
    *(v5 + 168) |= 2u;
  }

  v21 = *MEMORY[0x29EDCA608];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  locatorScheme = self->_locatorScheme;
  if (locatorScheme | *(equal + 14))
  {
    v5 = [(NSString *)locatorScheme isEqual:?];
    if (!v5)
    {
      return v5;
    }
  }

  locatorHostname = self->_locatorHostname;
  if (locatorHostname | *(equal + 11))
  {
    v5 = [(NSString *)locatorHostname isEqual:?];
    if (!v5)
    {
      return v5;
    }
  }

  has = self->_has;
  v9 = *(equal + 42);
  if ((*&has & 0x100) != 0)
  {
    if ((v9 & 0x100) == 0 || self->_locatorPort != *(equal + 26))
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

    v10 = *(equal + 155);
    if (self->_connectionReused)
    {
      if ((*(equal + 155) & 1) == 0)
      {
        goto LABEL_194;
      }
    }

    else if (*(equal + 155))
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
    if ((v9 & 8) == 0 || self->_startTime != *(equal + 4))
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
    if ((v9 & 4) == 0 || self->_responseReceivedDuration != *(equal + 3))
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
    if ((v9 & 1) == 0 || self->_duration != *(equal + 1))
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
    if ((v9 & 0x80) == 0 || self->_httpStatus != *(equal + 18))
    {
      goto LABEL_194;
    }
  }

  else if ((v9 & 0x80) != 0)
  {
    goto LABEL_194;
  }

  errorDomain = self->_errorDomain;
  if (errorDomain | *(equal + 7))
  {
    v5 = [(NSString *)errorDomain isEqual:?];
    if (!v5)
    {
      return v5;
    }

    has = self->_has;
  }

  v12 = *(equal + 42);
  if ((*&has & 0x40) != 0)
  {
    if ((v12 & 0x40) == 0 || self->_errorCode != *(equal + 12))
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
    if ((v12 & 0x400) == 0 || self->_requestSize != *(equal + 33))
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
    if ((v12 & 0x800) == 0 || self->_responseSize != *(equal + 34))
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

    v19 = *(equal + 166);
    if (self->_transactionComplete)
    {
      if ((*(equal + 166) & 1) == 0)
      {
        goto LABEL_194;
      }
    }

    else if (*(equal + 166))
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

    v20 = *(equal + 165);
    if (self->_timedOut)
    {
      if ((*(equal + 165) & 1) == 0)
      {
        goto LABEL_194;
      }
    }

    else if (*(equal + 165))
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

    v21 = *(equal + 154);
    if (self->_cancelled)
    {
      if ((*(equal + 154) & 1) == 0)
      {
        goto LABEL_194;
      }
    }

    else if (*(equal + 154))
    {
      goto LABEL_194;
    }
  }

  else if ((v12 & 0x4000) != 0)
  {
    goto LABEL_194;
  }

  tcpInfos = self->_tcpInfos;
  if (tcpInfos | *(equal + 18))
  {
    v5 = [(NSMutableArray *)tcpInfos isEqual:?];
    if (!v5)
    {
      return v5;
    }
  }

  httpErrors = self->_httpErrors;
  if (httpErrors | *(equal + 8))
  {
    v5 = [(NSMutableArray *)httpErrors isEqual:?];
    if (!v5)
    {
      return v5;
    }
  }

  interfaceIdentifier = self->_interfaceIdentifier;
  if (interfaceIdentifier | *(equal + 10))
  {
    v5 = [(NSString *)interfaceIdentifier isEqual:?];
    if (!v5)
    {
      return v5;
    }
  }

  locatorPeerAddress = self->_locatorPeerAddress;
  if (locatorPeerAddress | *(equal + 12))
  {
    v5 = [(NSString *)locatorPeerAddress isEqual:?];
    if (!v5)
    {
      return v5;
    }
  }

  v17 = self->_has;
  v18 = *(equal + 42);
  if ((*&v17 & 0x1000000) != 0)
  {
    if ((v18 & 0x1000000) == 0)
    {
      goto LABEL_194;
    }

    v22 = *(equal + 164);
    if (self->_requiresPowerPluggedIn)
    {
      if ((*(equal + 164) & 1) == 0)
      {
        goto LABEL_194;
      }
    }

    else if (*(equal + 164))
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

    v23 = *(equal + 153);
    if (self->_allowsPowerNapScheduling)
    {
      if ((*(equal + 153) & 1) == 0)
      {
        goto LABEL_194;
      }
    }

    else if (*(equal + 153))
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

    v24 = *(equal + 152);
    if (self->_allowsCellular)
    {
      if ((*(equal + 152) & 1) == 0)
      {
        goto LABEL_194;
      }
    }

    else if (*(equal + 152))
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

    v25 = *(equal + 158);
    if (self->_forceNondiscretionary)
    {
      if ((*(equal + 158) & 1) == 0)
      {
        goto LABEL_194;
      }
    }

    else if (*(equal + 158))
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

    v26 = *(equal + 156);
    if (self->_fastFail)
    {
      if ((*(equal + 156) & 1) == 0)
      {
        goto LABEL_194;
      }
    }

    else if (*(equal + 156))
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
    if ((v18 & 0x200) == 0 || self->_qualityOfService != *(equal + 32))
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

    v27 = *(equal + 163);
    if (self->_proxyUsed)
    {
      if ((*(equal + 163) & 1) == 0)
      {
        goto LABEL_194;
      }
    }

    else if (*(equal + 163))
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

    v28 = *(equal + 157);
    if (self->_finalTryInRequest)
    {
      if ((*(equal + 157) & 1) == 0)
      {
        goto LABEL_194;
      }
    }

    else if (*(equal + 157))
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

    v29 = *(equal + 159);
    if (self->_inlineEdgeComplete)
    {
      if ((*(equal + 159) & 1) == 0)
      {
        goto LABEL_194;
      }
    }

    else if (*(equal + 159))
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
    if ((v18 & 0x10) == 0 || self->_adaptiveTcpReadTimeout != *(equal + 10))
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
    if ((v18 & 0x20) == 0 || self->_adaptiveTcpWriteTimeout != *(equal + 11))
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

    v30 = *(equal + 162);
    if (self->_powerPluggedInWhenQueued)
    {
      if ((*(equal + 162) & 1) == 0)
      {
        goto LABEL_194;
      }
    }

    else if (*(equal + 162))
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

    v31 = *(equal + 161);
    if (self->_powerPluggedInAtStart)
    {
      if ((*(equal + 161) & 1) == 0)
      {
        goto LABEL_194;
      }
    }

    else if (*(equal + 161))
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
      v34 = *(equal + 160);
      if (self->_powerPluggedInAtEnd)
      {
        if ((*(equal + 160) & 1) == 0)
        {
          goto LABEL_194;
        }
      }

      else if (*(equal + 160))
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
  if (networkUsed | *(equal + 15))
  {
    v5 = [(NSString *)networkUsed isEqual:?];
    if (!v5)
    {
      return v5;
    }

    v17 = self->_has;
  }

  v33 = *(equal + 42);
  LOBYTE(v5) = (v33 & 2) == 0;
  if ((*&v17 & 2) != 0)
  {
    if ((v33 & 2) == 0 || self->_networkServiceType != *(equal + 2))
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

- (void)mergeFrom:(id)from
{
  v29 = *MEMORY[0x29EDCA608];
  if (*(from + 14))
  {
    [(AWDMMCSHttpInfo *)self setLocatorScheme:?];
  }

  if (*(from + 11))
  {
    [(AWDMMCSHttpInfo *)self setLocatorHostname:?];
  }

  v5 = *(from + 42);
  if ((v5 & 0x100) != 0)
  {
    self->_locatorPort = *(from + 26);
    *&self->_has |= 0x100u;
    v5 = *(from + 42);
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

  self->_connectionReused = *(from + 155);
  *&self->_has |= 0x8000u;
  v5 = *(from + 42);
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
  self->_startTime = *(from + 4);
  *&self->_has |= 8u;
  v5 = *(from + 42);
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
  self->_responseReceivedDuration = *(from + 3);
  *&self->_has |= 4u;
  v5 = *(from + 42);
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
  self->_duration = *(from + 1);
  *&self->_has |= 1u;
  if ((*(from + 42) & 0x80) != 0)
  {
LABEL_11:
    self->_httpStatus = *(from + 18);
    *&self->_has |= 0x80u;
  }

LABEL_12:
  if (*(from + 7))
  {
    [(AWDMMCSHttpInfo *)self setErrorDomain:?];
  }

  v6 = *(from + 42);
  if ((v6 & 0x40) != 0)
  {
    self->_errorCode = *(from + 12);
    *&self->_has |= 0x40u;
    v6 = *(from + 42);
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

  self->_requestSize = *(from + 33);
  *&self->_has |= 0x400u;
  v6 = *(from + 42);
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
  self->_responseSize = *(from + 34);
  *&self->_has |= 0x800u;
  v6 = *(from + 42);
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
  self->_transactionComplete = *(from + 166);
  *&self->_has |= 0x4000000u;
  v6 = *(from + 42);
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
  self->_timedOut = *(from + 165);
  *&self->_has |= 0x2000000u;
  if ((*(from + 42) & 0x4000) != 0)
  {
LABEL_20:
    self->_cancelled = *(from + 154);
    *&self->_has |= 0x4000u;
  }

LABEL_21:
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = *(from + 18);
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
  v12 = *(from + 8);
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

  if (*(from + 10))
  {
    [(AWDMMCSHttpInfo *)self setInterfaceIdentifier:?];
  }

  if (*(from + 12))
  {
    [(AWDMMCSHttpInfo *)self setLocatorPeerAddress:?];
  }

  v17 = *(from + 42);
  if ((v17 & 0x1000000) != 0)
  {
    self->_requiresPowerPluggedIn = *(from + 164);
    *&self->_has |= 0x1000000u;
    v17 = *(from + 42);
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

  self->_allowsPowerNapScheduling = *(from + 153);
  *&self->_has |= 0x2000u;
  v17 = *(from + 42);
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
  self->_allowsCellular = *(from + 152);
  *&self->_has |= 0x1000u;
  v17 = *(from + 42);
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
  self->_forceNondiscretionary = *(from + 158);
  *&self->_has |= 0x40000u;
  v17 = *(from + 42);
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
  self->_fastFail = *(from + 156);
  *&self->_has |= 0x10000u;
  v17 = *(from + 42);
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
  self->_qualityOfService = *(from + 32);
  *&self->_has |= 0x200u;
  v17 = *(from + 42);
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
  self->_proxyUsed = *(from + 163);
  *&self->_has |= 0x800000u;
  v17 = *(from + 42);
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
  self->_finalTryInRequest = *(from + 157);
  *&self->_has |= 0x20000u;
  v17 = *(from + 42);
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
  self->_inlineEdgeComplete = *(from + 159);
  *&self->_has |= 0x80000u;
  v17 = *(from + 42);
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
  self->_adaptiveTcpReadTimeout = *(from + 10);
  *&self->_has |= 0x10u;
  v17 = *(from + 42);
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
  self->_adaptiveTcpWriteTimeout = *(from + 11);
  *&self->_has |= 0x20u;
  v17 = *(from + 42);
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
  self->_powerPluggedInWhenQueued = *(from + 162);
  *&self->_has |= 0x400000u;
  v17 = *(from + 42);
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
  self->_powerPluggedInAtStart = *(from + 161);
  *&self->_has |= 0x200000u;
  if ((*(from + 42) & 0x100000) != 0)
  {
LABEL_53:
    self->_powerPluggedInAtEnd = *(from + 160);
    *&self->_has |= 0x100000u;
  }

LABEL_54:
  if (*(from + 15))
  {
    [(AWDMMCSHttpInfo *)self setNetworkUsed:?];
  }

  if ((*(from + 168) & 2) != 0)
  {
    self->_networkServiceType = *(from + 2);
    *&self->_has |= 2u;
  }

  v18 = *MEMORY[0x29EDCA608];
}

@end