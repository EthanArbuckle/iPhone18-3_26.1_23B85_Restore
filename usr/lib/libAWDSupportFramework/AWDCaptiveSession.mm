@interface AWDCaptiveSession
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRedirectURLType:(id)a3;
- (int)StringAsWhiteListProbeStatus:(id)a3;
- (int)redirectURLType;
- (int)whiteListProbeStatus;
- (unint64_t)hash;
- (void)addInstalledCNPDisplayIDs:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasAutoLoginFailed:(BOOL)a3;
- (void)setHasAutoLoginType:(BOOL)a3;
- (void)setHasDetectedNotCaptiveHandledByCNP:(BOOL)a3;
- (void)setHasDurationNetworkNotCaptive:(BOOL)a3;
- (void)setHasDurationOnNetwork:(BOOL)a3;
- (void)setHasHandlerCNPTriggeredLogOff:(BOOL)a3;
- (void)setHasIsDetectedCaptive:(BOOL)a3;
- (void)setHasNonCaptiveDetectedAsCaptive:(BOOL)a3;
- (void)setHasPassiveCaptivityCorrectDetection:(BOOL)a3;
- (void)setHasPassiveCaptivityDetected:(BOOL)a3;
- (void)setHasPassiveCaptivityIncorrectDetection:(BOOL)a3;
- (void)setHasPassiveCaptivitySymptom:(BOOL)a3;
- (void)setHasRedirectURLType:(BOOL)a3;
- (void)setHasResult:(BOOL)a3;
- (void)setHasWebsheetProbeCount:(BOOL)a3;
- (void)setHasWebsheetScrapeResult:(BOOL)a3;
- (void)setHasWebsheetScraped:(BOOL)a3;
- (void)setHasWhiteListProbeCompletionTime:(BOOL)a3;
- (void)setHasWhiteListProbeStatus:(BOOL)a3;
- (void)setHasWisprDetected:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDCaptiveSession

- (void)dealloc
{
  [(AWDCaptiveSession *)self setInstalledCNPDisplayIDs:0];
  [(AWDCaptiveSession *)self setHandlerCNP:0];
  [(AWDCaptiveSession *)self setAutoLoginCarrierID:0];
  [(AWDCaptiveSession *)self setAppTriggeredPassiveSymptom:0];
  v3.receiver = self;
  v3.super_class = AWDCaptiveSession;
  [(AWDCaptiveSession *)&v3 dealloc];
}

- (void)setHasResult:(BOOL)a3
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

- (void)setHasWebsheetProbeCount:(BOOL)a3
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

- (void)setHasWebsheetScraped:(BOOL)a3
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

- (void)setHasWebsheetScrapeResult:(BOOL)a3
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

- (void)addInstalledCNPDisplayIDs:(id)a3
{
  installedCNPDisplayIDs = self->_installedCNPDisplayIDs;
  if (!installedCNPDisplayIDs)
  {
    installedCNPDisplayIDs = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_installedCNPDisplayIDs = installedCNPDisplayIDs;
  }

  [(NSMutableArray *)installedCNPDisplayIDs addObject:a3];
}

- (void)setHasDetectedNotCaptiveHandledByCNP:(BOOL)a3
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

- (void)setHasAutoLoginType:(BOOL)a3
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

- (void)setHasAutoLoginFailed:(BOOL)a3
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

- (void)setHasWisprDetected:(BOOL)a3
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

- (void)setHasPassiveCaptivityDetected:(BOOL)a3
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

- (void)setHasPassiveCaptivityCorrectDetection:(BOOL)a3
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

- (void)setHasPassiveCaptivityIncorrectDetection:(BOOL)a3
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

- (void)setHasHandlerCNPTriggeredLogOff:(BOOL)a3
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

- (void)setHasIsDetectedCaptive:(BOOL)a3
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

- (void)setHasDurationOnNetwork:(BOOL)a3
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

- (void)setHasDurationNetworkNotCaptive:(BOOL)a3
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

- (void)setHasPassiveCaptivitySymptom:(BOOL)a3
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

- (void)setHasNonCaptiveDetectedAsCaptive:(BOOL)a3
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

- (int)redirectURLType
{
  if ((*&self->_has & 0x80) != 0)
  {
    return self->_redirectURLType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRedirectURLType:(BOOL)a3
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

- (int)StringAsRedirectURLType:(id)a3
{
  if ([a3 isEqualToString:@"REDIRECT_URLTYPE_NONE"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"REDIRECT_URLTYPE_HTTP"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"REDIRECT_URLTYPE_HTTPS_TRUSTED_CERTIFICATE"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"REDIRECT_URLTYPE_HTTPS_UNTRUSTED_CERTIFICATE"])
  {
    return 3;
  }

  return 0;
}

- (int)whiteListProbeStatus
{
  if ((*(&self->_has + 1) & 0x10) != 0)
  {
    return self->_whiteListProbeStatus;
  }

  else
  {
    return 0;
  }
}

- (void)setHasWhiteListProbeStatus:(BOOL)a3
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

- (int)StringAsWhiteListProbeStatus:(id)a3
{
  if ([a3 isEqualToString:@"WHITELIST_PROBE_STATUS_NOT_PROBED"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"WHITELIST_PROBE_STATUS_NOT_CAPTIVE"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"WHITELIST_PROBE_STATUS_DETECTED_IMMEDIATELY"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"WHITELIST_PROBE_STATUS_DETECTED_WHEN_TRIGGERED"])
  {
    return 3;
  }

  return 0;
}

- (void)setHasWhiteListProbeCompletionTime:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCaptiveSession;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCaptiveSession description](&v3, sel_description), -[AWDCaptiveSession dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (*&has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((*&has & 0x100) == 0)
    {
LABEL_3:
      if ((*&has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_37;
    }
  }

  else if ((*&has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_result), @"result"}];
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_4:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_37:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_websheetProbeCount), @"websheetProbeCount"}];
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_5:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_38:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_websheetScraped), @"websheetScraped"}];
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_6:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_websheetScrapeResult), @"websheetScrapeResult"}];
  }

LABEL_7:
  installedCNPDisplayIDs = self->_installedCNPDisplayIDs;
  if (installedCNPDisplayIDs)
  {
    [v3 setObject:installedCNPDisplayIDs forKey:@"installedCNPDisplayIDs"];
  }

  handlerCNP = self->_handlerCNP;
  if (handlerCNP)
  {
    [v3 setObject:handlerCNP forKey:@"handlerCNP"];
  }

  v7 = self->_has;
  if ((*&v7 & 0x4000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_detectedNotCaptiveHandledByCNP), @"detectedNotCaptiveHandledByCNP"}];
    v7 = self->_has;
    if ((*&v7 & 2) == 0)
    {
LABEL_13:
      if ((*&v7 & 0x2000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&v7 & 2) == 0)
  {
    goto LABEL_13;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_autoLoginType), @"autoLoginType"}];
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_14:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_autoLoginFailed), @"autoLoginFailed"}];
  }

LABEL_15:
  autoLoginCarrierID = self->_autoLoginCarrierID;
  if (autoLoginCarrierID)
  {
    [v3 setObject:autoLoginCarrierID forKey:@"autoLoginCarrierID"];
  }

  v9 = self->_has;
  if ((*&v9 & 0x100000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_wisprDetected), @"wisprDetected"}];
    v9 = self->_has;
    if ((*&v9 & 0x40000) == 0)
    {
LABEL_19:
      if ((*&v9 & 0x10) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_45;
    }
  }

  else if ((*&v9 & 0x40000) == 0)
  {
    goto LABEL_19;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_passiveCaptivityDetected), @"passiveCaptivityDetected"}];
  v9 = self->_has;
  if ((*&v9 & 0x10) == 0)
  {
LABEL_20:
    if ((*&v9 & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_passiveCaptivityCorrectDetection), @"passiveCaptivityCorrectDetection"}];
  v9 = self->_has;
  if ((*&v9 & 0x20) == 0)
  {
LABEL_21:
    if ((*&v9 & 0x8000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_passiveCaptivityIncorrectDetection), @"passiveCaptivityIncorrectDetection"}];
  v9 = self->_has;
  if ((*&v9 & 0x8000) == 0)
  {
LABEL_22:
    if ((*&v9 & 0x10000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_48;
  }

LABEL_47:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_handlerCNPTriggeredLogOff), @"handlerCNPTriggeredLogOff"}];
  v9 = self->_has;
  if ((*&v9 & 0x10000) == 0)
  {
LABEL_23:
    if ((*&v9 & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

LABEL_48:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_isDetectedCaptive), @"isDetectedCaptive"}];
  v9 = self->_has;
  if ((*&v9 & 8) == 0)
  {
LABEL_24:
    if ((*&v9 & 4) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_50;
  }

LABEL_49:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_durationOnNetwork), @"durationOnNetwork"}];
  v9 = self->_has;
  if ((*&v9 & 4) == 0)
  {
LABEL_25:
    if ((*&v9 & 0x40) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_50:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_durationNetworkNotCaptive), @"durationNetworkNotCaptive"}];
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_26:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_passiveCaptivitySymptom), @"passiveCaptivitySymptom"}];
  }

LABEL_27:
  appTriggeredPassiveSymptom = self->_appTriggeredPassiveSymptom;
  if (appTriggeredPassiveSymptom)
  {
    [v3 setObject:appTriggeredPassiveSymptom forKey:@"appTriggeredPassiveSymptom"];
  }

  v11 = self->_has;
  if ((*&v11 & 0x20000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_nonCaptiveDetectedAsCaptive), @"nonCaptiveDetectedAsCaptive"}];
    v11 = self->_has;
    if ((*&v11 & 0x80) == 0)
    {
LABEL_31:
      if ((*&v11 & 0x1000) == 0)
      {
        goto LABEL_32;
      }

LABEL_57:
      whiteListProbeStatus = self->_whiteListProbeStatus;
      if (whiteListProbeStatus >= 4)
      {
        v16 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_whiteListProbeStatus];
      }

      else
      {
        v16 = off_29EE32480[whiteListProbeStatus];
      }

      [v3 setObject:v16 forKey:@"whiteListProbeStatus"];
      if ((*&self->_has & 0x800) != 0)
      {
        goto LABEL_33;
      }

      return v3;
    }
  }

  else if ((*&v11 & 0x80) == 0)
  {
    goto LABEL_31;
  }

  redirectURLType = self->_redirectURLType;
  if (redirectURLType >= 4)
  {
    v14 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_redirectURLType];
  }

  else
  {
    v14 = off_29EE32460[redirectURLType];
  }

  [v3 setObject:v14 forKey:@"redirectURLType"];
  v11 = self->_has;
  if ((*&v11 & 0x1000) != 0)
  {
    goto LABEL_57;
  }

LABEL_32:
  if ((*&v11 & 0x800) != 0)
  {
LABEL_33:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_whiteListProbeCompletionTime), @"whiteListProbeCompletionTime"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v41 = *MEMORY[0x29EDCA608];
  has = self->_has;
  if (*&has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 0x100) == 0)
    {
LABEL_3:
      if ((*&has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_42;
    }
  }

  else if ((*&has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  result = self->_result;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_4:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

LABEL_42:
  websheetProbeCount = self->_websheetProbeCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_5:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_43:
  websheetScraped = self->_websheetScraped;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_6:
    websheetScrapeResult = self->_websheetScrapeResult;
    PBDataWriterWriteUint32Field();
  }

LABEL_7:
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  installedCNPDisplayIDs = self->_installedCNPDisplayIDs;
  v7 = [(NSMutableArray *)installedCNPDisplayIDs countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v37;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(installedCNPDisplayIDs);
        }

        v11 = *(*(&v36 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v8 = [(NSMutableArray *)installedCNPDisplayIDs countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v8);
  }

  if (self->_handlerCNP)
  {
    PBDataWriterWriteStringField();
  }

  v12 = self->_has;
  if ((*&v12 & 0x4000) != 0)
  {
    detectedNotCaptiveHandledByCNP = self->_detectedNotCaptiveHandledByCNP;
    PBDataWriterWriteBOOLField();
    v12 = self->_has;
    if ((*&v12 & 2) == 0)
    {
LABEL_18:
      if ((*&v12 & 0x2000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if ((*&v12 & 2) == 0)
  {
    goto LABEL_18;
  }

  autoLoginType = self->_autoLoginType;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_19:
    autoLoginFailed = self->_autoLoginFailed;
    PBDataWriterWriteBOOLField();
  }

LABEL_20:
  if (self->_autoLoginCarrierID)
  {
    PBDataWriterWriteStringField();
  }

  v14 = self->_has;
  if ((*&v14 & 0x100000) != 0)
  {
    wisprDetected = self->_wisprDetected;
    PBDataWriterWriteBOOLField();
    v14 = self->_has;
    if ((*&v14 & 0x40000) == 0)
    {
LABEL_24:
      if ((*&v14 & 0x10) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_50;
    }
  }

  else if ((*&v14 & 0x40000) == 0)
  {
    goto LABEL_24;
  }

  passiveCaptivityDetected = self->_passiveCaptivityDetected;
  PBDataWriterWriteBOOLField();
  v14 = self->_has;
  if ((*&v14 & 0x10) == 0)
  {
LABEL_25:
    if ((*&v14 & 0x20) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_51;
  }

LABEL_50:
  passiveCaptivityCorrectDetection = self->_passiveCaptivityCorrectDetection;
  PBDataWriterWriteUint32Field();
  v14 = self->_has;
  if ((*&v14 & 0x20) == 0)
  {
LABEL_26:
    if ((*&v14 & 0x8000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_52;
  }

LABEL_51:
  passiveCaptivityIncorrectDetection = self->_passiveCaptivityIncorrectDetection;
  PBDataWriterWriteUint32Field();
  v14 = self->_has;
  if ((*&v14 & 0x8000) == 0)
  {
LABEL_27:
    if ((*&v14 & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_53;
  }

LABEL_52:
  handlerCNPTriggeredLogOff = self->_handlerCNPTriggeredLogOff;
  PBDataWriterWriteBOOLField();
  v14 = self->_has;
  if ((*&v14 & 0x10000) == 0)
  {
LABEL_28:
    if ((*&v14 & 8) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_54;
  }

LABEL_53:
  isDetectedCaptive = self->_isDetectedCaptive;
  PBDataWriterWriteBOOLField();
  v14 = self->_has;
  if ((*&v14 & 8) == 0)
  {
LABEL_29:
    if ((*&v14 & 4) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_55;
  }

LABEL_54:
  durationOnNetwork = self->_durationOnNetwork;
  PBDataWriterWriteUint32Field();
  v14 = self->_has;
  if ((*&v14 & 4) == 0)
  {
LABEL_30:
    if ((*&v14 & 0x40) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_55:
  durationNetworkNotCaptive = self->_durationNetworkNotCaptive;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_31:
    passiveCaptivitySymptom = self->_passiveCaptivitySymptom;
    PBDataWriterWriteUint32Field();
  }

LABEL_32:
  if (self->_appTriggeredPassiveSymptom)
  {
    PBDataWriterWriteStringField();
  }

  v16 = self->_has;
  if ((*&v16 & 0x20000) != 0)
  {
    nonCaptiveDetectedAsCaptive = self->_nonCaptiveDetectedAsCaptive;
    PBDataWriterWriteBOOLField();
    v16 = self->_has;
    if ((*&v16 & 0x80) == 0)
    {
LABEL_36:
      if ((*&v16 & 0x1000) == 0)
      {
        goto LABEL_37;
      }

LABEL_59:
      whiteListProbeStatus = self->_whiteListProbeStatus;
      PBDataWriterWriteInt32Field();
      if ((*&self->_has & 0x800) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }
  }

  else if ((*&v16 & 0x80) == 0)
  {
    goto LABEL_36;
  }

  redirectURLType = self->_redirectURLType;
  PBDataWriterWriteInt32Field();
  v16 = self->_has;
  if ((*&v16 & 0x1000) != 0)
  {
    goto LABEL_59;
  }

LABEL_37:
  if ((*&v16 & 0x800) != 0)
  {
LABEL_38:
    whiteListProbeCompletionTime = self->_whiteListProbeCompletionTime;
    PBDataWriterWriteUint32Field();
  }

LABEL_39:
  v18 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if (*&has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 27) |= 1u;
    has = self->_has;
    if ((*&has & 0x100) == 0)
    {
LABEL_3:
      if ((*&has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
    }
  }

  else if ((*&has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 20) = self->_result;
  *(a3 + 27) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_4:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_5;
    }

LABEL_40:
    *(a3 + 106) = self->_websheetScraped;
    *(a3 + 27) |= 0x80000u;
    if ((*&self->_has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_39:
  *(a3 + 21) = self->_websheetProbeCount;
  *(a3 + 27) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x80000) != 0)
  {
    goto LABEL_40;
  }

LABEL_5:
  if ((*&has & 0x400) != 0)
  {
LABEL_6:
    *(a3 + 22) = self->_websheetScrapeResult;
    *(a3 + 27) |= 0x400u;
  }

LABEL_7:
  if ([(AWDCaptiveSession *)self installedCNPDisplayIDsCount])
  {
    [a3 clearInstalledCNPDisplayIDs];
    v6 = [(AWDCaptiveSession *)self installedCNPDisplayIDsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [a3 addInstalledCNPDisplayIDs:{-[AWDCaptiveSession installedCNPDisplayIDsAtIndex:](self, "installedCNPDisplayIDsAtIndex:", i)}];
      }
    }
  }

  if (self->_handlerCNP)
  {
    [a3 setHandlerCNP:?];
  }

  v9 = self->_has;
  if ((*&v9 & 0x4000) != 0)
  {
    *(a3 + 101) = self->_detectedNotCaptiveHandledByCNP;
    *(a3 + 27) |= 0x4000u;
    v9 = self->_has;
    if ((*&v9 & 2) == 0)
    {
LABEL_15:
      if ((*&v9 & 0x2000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*&v9 & 2) == 0)
  {
    goto LABEL_15;
  }

  *(a3 + 8) = self->_autoLoginType;
  *(a3 + 27) |= 2u;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_16:
    *(a3 + 100) = self->_autoLoginFailed;
    *(a3 + 27) |= 0x2000u;
  }

LABEL_17:
  if (self->_autoLoginCarrierID)
  {
    [a3 setAutoLoginCarrierID:?];
  }

  v10 = self->_has;
  if ((*&v10 & 0x100000) != 0)
  {
    *(a3 + 107) = self->_wisprDetected;
    *(a3 + 27) |= 0x100000u;
    v10 = self->_has;
    if ((*&v10 & 0x40000) == 0)
    {
LABEL_21:
      if ((*&v10 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_47;
    }
  }

  else if ((*&v10 & 0x40000) == 0)
  {
    goto LABEL_21;
  }

  *(a3 + 105) = self->_passiveCaptivityDetected;
  *(a3 + 27) |= 0x40000u;
  v10 = self->_has;
  if ((*&v10 & 0x10) == 0)
  {
LABEL_22:
    if ((*&v10 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(a3 + 16) = self->_passiveCaptivityCorrectDetection;
  *(a3 + 27) |= 0x10u;
  v10 = self->_has;
  if ((*&v10 & 0x20) == 0)
  {
LABEL_23:
    if ((*&v10 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(a3 + 17) = self->_passiveCaptivityIncorrectDetection;
  *(a3 + 27) |= 0x20u;
  v10 = self->_has;
  if ((*&v10 & 0x8000) == 0)
  {
LABEL_24:
    if ((*&v10 & 0x10000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(a3 + 102) = self->_handlerCNPTriggeredLogOff;
  *(a3 + 27) |= 0x8000u;
  v10 = self->_has;
  if ((*&v10 & 0x10000) == 0)
  {
LABEL_25:
    if ((*&v10 & 8) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(a3 + 103) = self->_isDetectedCaptive;
  *(a3 + 27) |= 0x10000u;
  v10 = self->_has;
  if ((*&v10 & 8) == 0)
  {
LABEL_26:
    if ((*&v10 & 4) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(a3 + 10) = self->_durationOnNetwork;
  *(a3 + 27) |= 8u;
  v10 = self->_has;
  if ((*&v10 & 4) == 0)
  {
LABEL_27:
    if ((*&v10 & 0x40) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_52:
  *(a3 + 9) = self->_durationNetworkNotCaptive;
  *(a3 + 27) |= 4u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_28:
    *(a3 + 18) = self->_passiveCaptivitySymptom;
    *(a3 + 27) |= 0x40u;
  }

LABEL_29:
  if (self->_appTriggeredPassiveSymptom)
  {
    [a3 setAppTriggeredPassiveSymptom:?];
  }

  v11 = self->_has;
  if ((*&v11 & 0x20000) != 0)
  {
    *(a3 + 104) = self->_nonCaptiveDetectedAsCaptive;
    *(a3 + 27) |= 0x20000u;
    v11 = self->_has;
    if ((*&v11 & 0x80) == 0)
    {
LABEL_33:
      if ((*&v11 & 0x1000) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_56;
    }
  }

  else if ((*&v11 & 0x80) == 0)
  {
    goto LABEL_33;
  }

  *(a3 + 19) = self->_redirectURLType;
  *(a3 + 27) |= 0x80u;
  v11 = self->_has;
  if ((*&v11 & 0x1000) == 0)
  {
LABEL_34:
    if ((*&v11 & 0x800) == 0)
    {
      return;
    }

    goto LABEL_35;
  }

LABEL_56:
  *(a3 + 24) = self->_whiteListProbeStatus;
  *(a3 + 27) |= 0x1000u;
  if ((*&self->_has & 0x800) == 0)
  {
    return;
  }

LABEL_35:
  *(a3 + 23) = self->_whiteListProbeCompletionTime;
  *(a3 + 27) |= 0x800u;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v24 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (*&has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 108) |= 1u;
    has = self->_has;
    if ((*&has & 0x100) == 0)
    {
LABEL_3:
      if ((*&has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((*&has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 80) = self->_result;
  *(v5 + 108) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_4:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v5 + 84) = self->_websheetProbeCount;
  *(v5 + 108) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_5:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_37:
  *(v5 + 106) = self->_websheetScraped;
  *(v5 + 108) |= 0x80000u;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_6:
    *(v5 + 88) = self->_websheetScrapeResult;
    *(v5 + 108) |= 0x400u;
  }

LABEL_7:
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  installedCNPDisplayIDs = self->_installedCNPDisplayIDs;
  v9 = [(NSMutableArray *)installedCNPDisplayIDs countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(installedCNPDisplayIDs);
        }

        v13 = [*(*(&v19 + 1) + 8 * i) copyWithZone:a3];
        [v6 addInstalledCNPDisplayIDs:v13];
      }

      v10 = [(NSMutableArray *)installedCNPDisplayIDs countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  *(v6 + 48) = [(NSString *)self->_handlerCNP copyWithZone:a3];
  v14 = self->_has;
  if ((*&v14 & 0x4000) != 0)
  {
    *(v6 + 101) = self->_detectedNotCaptiveHandledByCNP;
    *(v6 + 108) |= 0x4000u;
    v14 = self->_has;
    if ((*&v14 & 2) == 0)
    {
LABEL_16:
      if ((*&v14 & 0x2000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((*&v14 & 2) == 0)
  {
    goto LABEL_16;
  }

  *(v6 + 32) = self->_autoLoginType;
  *(v6 + 108) |= 2u;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_17:
    *(v6 + 100) = self->_autoLoginFailed;
    *(v6 + 108) |= 0x2000u;
  }

LABEL_18:

  *(v6 + 24) = [(NSString *)self->_autoLoginCarrierID copyWithZone:a3];
  v15 = self->_has;
  if ((*&v15 & 0x100000) != 0)
  {
    *(v6 + 107) = self->_wisprDetected;
    *(v6 + 108) |= 0x100000u;
    v15 = self->_has;
    if ((*&v15 & 0x40000) == 0)
    {
LABEL_20:
      if ((*&v15 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_44;
    }
  }

  else if ((*&v15 & 0x40000) == 0)
  {
    goto LABEL_20;
  }

  *(v6 + 105) = self->_passiveCaptivityDetected;
  *(v6 + 108) |= 0x40000u;
  v15 = self->_has;
  if ((*&v15 & 0x10) == 0)
  {
LABEL_21:
    if ((*&v15 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v6 + 64) = self->_passiveCaptivityCorrectDetection;
  *(v6 + 108) |= 0x10u;
  v15 = self->_has;
  if ((*&v15 & 0x20) == 0)
  {
LABEL_22:
    if ((*&v15 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v6 + 68) = self->_passiveCaptivityIncorrectDetection;
  *(v6 + 108) |= 0x20u;
  v15 = self->_has;
  if ((*&v15 & 0x8000) == 0)
  {
LABEL_23:
    if ((*&v15 & 0x10000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v6 + 102) = self->_handlerCNPTriggeredLogOff;
  *(v6 + 108) |= 0x8000u;
  v15 = self->_has;
  if ((*&v15 & 0x10000) == 0)
  {
LABEL_24:
    if ((*&v15 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v6 + 103) = self->_isDetectedCaptive;
  *(v6 + 108) |= 0x10000u;
  v15 = self->_has;
  if ((*&v15 & 8) == 0)
  {
LABEL_25:
    if ((*&v15 & 4) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(v6 + 40) = self->_durationOnNetwork;
  *(v6 + 108) |= 8u;
  v15 = self->_has;
  if ((*&v15 & 4) == 0)
  {
LABEL_26:
    if ((*&v15 & 0x40) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_49:
  *(v6 + 36) = self->_durationNetworkNotCaptive;
  *(v6 + 108) |= 4u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_27:
    *(v6 + 72) = self->_passiveCaptivitySymptom;
    *(v6 + 108) |= 0x40u;
  }

LABEL_28:

  *(v6 + 16) = [(NSString *)self->_appTriggeredPassiveSymptom copyWithZone:a3];
  v16 = self->_has;
  if ((*&v16 & 0x20000) != 0)
  {
    *(v6 + 104) = self->_nonCaptiveDetectedAsCaptive;
    *(v6 + 108) |= 0x20000u;
    v16 = self->_has;
    if ((*&v16 & 0x80) == 0)
    {
LABEL_30:
      if ((*&v16 & 0x1000) == 0)
      {
        goto LABEL_31;
      }

LABEL_53:
      *(v6 + 96) = self->_whiteListProbeStatus;
      *(v6 + 108) |= 0x1000u;
      if ((*&self->_has & 0x800) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }
  }

  else if ((*&v16 & 0x80) == 0)
  {
    goto LABEL_30;
  }

  *(v6 + 76) = self->_redirectURLType;
  *(v6 + 108) |= 0x80u;
  v16 = self->_has;
  if ((*&v16 & 0x1000) != 0)
  {
    goto LABEL_53;
  }

LABEL_31:
  if ((*&v16 & 0x800) != 0)
  {
LABEL_32:
    *(v6 + 92) = self->_whiteListProbeCompletionTime;
    *(v6 + 108) |= 0x800u;
  }

LABEL_33:
  v17 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  has = self->_has;
  v7 = *(a3 + 27);
  if (*&has)
  {
    if ((v7 & 1) == 0 || self->_timestamp != *(a3 + 1))
    {
      goto LABEL_140;
    }
  }

  else if (v7)
  {
    goto LABEL_140;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v7 & 0x100) == 0 || self->_result != *(a3 + 20))
    {
      goto LABEL_140;
    }
  }

  else if ((v7 & 0x100) != 0)
  {
    goto LABEL_140;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v7 & 0x200) == 0 || self->_websheetProbeCount != *(a3 + 21))
    {
      goto LABEL_140;
    }
  }

  else if ((v7 & 0x200) != 0)
  {
    goto LABEL_140;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v7 & 0x80000) == 0)
    {
      goto LABEL_140;
    }

    v8 = *(a3 + 106);
    if (self->_websheetScraped)
    {
      if ((*(a3 + 106) & 1) == 0)
      {
        goto LABEL_140;
      }
    }

    else if (*(a3 + 106))
    {
      goto LABEL_140;
    }
  }

  else if ((v7 & 0x80000) != 0)
  {
    goto LABEL_140;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v7 & 0x400) == 0 || self->_websheetScrapeResult != *(a3 + 22))
    {
      goto LABEL_140;
    }
  }

  else if ((v7 & 0x400) != 0)
  {
    goto LABEL_140;
  }

  installedCNPDisplayIDs = self->_installedCNPDisplayIDs;
  if (!(installedCNPDisplayIDs | *(a3 + 7)) || (v5 = [(NSMutableArray *)installedCNPDisplayIDs isEqual:?]) != 0)
  {
    handlerCNP = self->_handlerCNP;
    if (!(handlerCNP | *(a3 + 6)) || (v5 = [(NSString *)handlerCNP isEqual:?]) != 0)
    {
      v11 = self->_has;
      v12 = *(a3 + 27);
      if ((*&v11 & 0x4000) != 0)
      {
        if ((v12 & 0x4000) == 0)
        {
          goto LABEL_140;
        }

        v13 = *(a3 + 101);
        if (self->_detectedNotCaptiveHandledByCNP)
        {
          if ((*(a3 + 101) & 1) == 0)
          {
            goto LABEL_140;
          }
        }

        else if (*(a3 + 101))
        {
          goto LABEL_140;
        }
      }

      else if ((v12 & 0x4000) != 0)
      {
        goto LABEL_140;
      }

      if ((*&v11 & 2) != 0)
      {
        if ((v12 & 2) == 0 || self->_autoLoginType != *(a3 + 8))
        {
          goto LABEL_140;
        }
      }

      else if ((v12 & 2) != 0)
      {
        goto LABEL_140;
      }

      if ((*&v11 & 0x2000) != 0)
      {
        if ((v12 & 0x2000) == 0)
        {
          goto LABEL_140;
        }

        v16 = *(a3 + 100);
        if (self->_autoLoginFailed)
        {
          if ((*(a3 + 100) & 1) == 0)
          {
            goto LABEL_140;
          }
        }

        else if (*(a3 + 100))
        {
          goto LABEL_140;
        }
      }

      else if ((v12 & 0x2000) != 0)
      {
        goto LABEL_140;
      }

      autoLoginCarrierID = self->_autoLoginCarrierID;
      if (autoLoginCarrierID | *(a3 + 3))
      {
        v5 = [(NSString *)autoLoginCarrierID isEqual:?];
        if (!v5)
        {
          return v5;
        }

        v11 = self->_has;
      }

      v15 = *(a3 + 27);
      if ((*&v11 & 0x100000) != 0)
      {
        if ((v15 & 0x100000) == 0)
        {
          goto LABEL_140;
        }

        v17 = *(a3 + 107);
        if (self->_wisprDetected)
        {
          if ((*(a3 + 107) & 1) == 0)
          {
            goto LABEL_140;
          }
        }

        else if (*(a3 + 107))
        {
          goto LABEL_140;
        }
      }

      else if ((v15 & 0x100000) != 0)
      {
        goto LABEL_140;
      }

      if ((*&v11 & 0x40000) != 0)
      {
        if ((v15 & 0x40000) == 0)
        {
          goto LABEL_140;
        }

        v18 = *(a3 + 105);
        if (self->_passiveCaptivityDetected)
        {
          if ((*(a3 + 105) & 1) == 0)
          {
            goto LABEL_140;
          }
        }

        else if (*(a3 + 105))
        {
          goto LABEL_140;
        }
      }

      else if ((v15 & 0x40000) != 0)
      {
        goto LABEL_140;
      }

      if ((*&v11 & 0x10) != 0)
      {
        if ((v15 & 0x10) == 0 || self->_passiveCaptivityCorrectDetection != *(a3 + 16))
        {
          goto LABEL_140;
        }
      }

      else if ((v15 & 0x10) != 0)
      {
        goto LABEL_140;
      }

      if ((*&v11 & 0x20) != 0)
      {
        if ((v15 & 0x20) == 0 || self->_passiveCaptivityIncorrectDetection != *(a3 + 17))
        {
          goto LABEL_140;
        }
      }

      else if ((v15 & 0x20) != 0)
      {
        goto LABEL_140;
      }

      if ((*&v11 & 0x8000) != 0)
      {
        if ((v15 & 0x8000) == 0)
        {
          goto LABEL_140;
        }

        v19 = *(a3 + 102);
        if (self->_handlerCNPTriggeredLogOff)
        {
          if ((*(a3 + 102) & 1) == 0)
          {
            goto LABEL_140;
          }
        }

        else if (*(a3 + 102))
        {
          goto LABEL_140;
        }
      }

      else if ((v15 & 0x8000) != 0)
      {
        goto LABEL_140;
      }

      if ((*&v11 & 0x10000) != 0)
      {
        if ((v15 & 0x10000) == 0)
        {
          goto LABEL_140;
        }

        v20 = *(a3 + 103);
        if (self->_isDetectedCaptive)
        {
          if ((*(a3 + 103) & 1) == 0)
          {
            goto LABEL_140;
          }
        }

        else if (*(a3 + 103))
        {
          goto LABEL_140;
        }
      }

      else if ((v15 & 0x10000) != 0)
      {
        goto LABEL_140;
      }

      if ((*&v11 & 8) != 0)
      {
        if ((v15 & 8) == 0 || self->_durationOnNetwork != *(a3 + 10))
        {
          goto LABEL_140;
        }
      }

      else if ((v15 & 8) != 0)
      {
        goto LABEL_140;
      }

      if ((*&v11 & 4) != 0)
      {
        if ((v15 & 4) == 0 || self->_durationNetworkNotCaptive != *(a3 + 9))
        {
          goto LABEL_140;
        }
      }

      else if ((v15 & 4) != 0)
      {
        goto LABEL_140;
      }

      if ((*&v11 & 0x40) != 0)
      {
        if ((v15 & 0x40) == 0 || self->_passiveCaptivitySymptom != *(a3 + 18))
        {
          goto LABEL_140;
        }
      }

      else if ((v15 & 0x40) != 0)
      {
        goto LABEL_140;
      }

      appTriggeredPassiveSymptom = self->_appTriggeredPassiveSymptom;
      if (appTriggeredPassiveSymptom | *(a3 + 2))
      {
        v5 = [(NSString *)appTriggeredPassiveSymptom isEqual:?];
        if (!v5)
        {
          return v5;
        }

        v11 = self->_has;
      }

      v22 = *(a3 + 27);
      if ((*&v11 & 0x20000) == 0)
      {
        if ((v22 & 0x20000) != 0)
        {
          goto LABEL_140;
        }

        goto LABEL_126;
      }

      if ((v22 & 0x20000) != 0)
      {
        v23 = *(a3 + 104);
        if (self->_nonCaptiveDetectedAsCaptive)
        {
          if ((*(a3 + 104) & 1) == 0)
          {
            goto LABEL_140;
          }

          goto LABEL_126;
        }

        if ((*(a3 + 104) & 1) == 0)
        {
LABEL_126:
          if ((*&v11 & 0x80) != 0)
          {
            if ((v22 & 0x80) == 0 || self->_redirectURLType != *(a3 + 19))
            {
              goto LABEL_140;
            }
          }

          else if ((v22 & 0x80) != 0)
          {
            goto LABEL_140;
          }

          if ((*&v11 & 0x1000) != 0)
          {
            if ((v22 & 0x1000) == 0 || self->_whiteListProbeStatus != *(a3 + 24))
            {
              goto LABEL_140;
            }
          }

          else if ((v22 & 0x1000) != 0)
          {
            goto LABEL_140;
          }

          LOBYTE(v5) = (*(a3 + 27) & 0x800) == 0;
          if ((*&v11 & 0x800) != 0)
          {
            if ((v22 & 0x800) == 0 || self->_whiteListProbeCompletionTime != *(a3 + 23))
            {
              goto LABEL_140;
            }

            LOBYTE(v5) = 1;
          }

          return v5;
        }
      }

LABEL_140:
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if (*&has)
  {
    v32 = 2654435761u * self->_timestamp;
    if ((*&has & 0x100) != 0)
    {
LABEL_3:
      v31 = 2654435761 * self->_result;
      if ((*&has & 0x200) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v32 = 0;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_3;
    }
  }

  v31 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_4:
    v30 = 2654435761 * self->_websheetProbeCount;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v29 = 0;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v30 = 0;
  if ((*&has & 0x80000) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v29 = 2654435761 * self->_websheetScraped;
  if ((*&has & 0x400) != 0)
  {
LABEL_6:
    v28 = 2654435761 * self->_websheetScrapeResult;
    goto LABEL_12;
  }

LABEL_11:
  v28 = 0;
LABEL_12:
  v27 = [(NSMutableArray *)self->_installedCNPDisplayIDs hash];
  v26 = [(NSString *)self->_handlerCNP hash];
  v4 = self->_has;
  if ((*&v4 & 0x4000) == 0)
  {
    v25 = 0;
    if ((*&v4 & 2) != 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    v24 = 0;
    if ((*&v4 & 0x2000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v25 = 2654435761 * self->_detectedNotCaptiveHandledByCNP;
  if ((*&v4 & 2) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  v24 = 2654435761 * self->_autoLoginType;
  if ((*&v4 & 0x2000) != 0)
  {
LABEL_15:
    v23 = 2654435761 * self->_autoLoginFailed;
    goto LABEL_19;
  }

LABEL_18:
  v23 = 0;
LABEL_19:
  v22 = [(NSString *)self->_autoLoginCarrierID hash];
  v5 = self->_has;
  if ((*&v5 & 0x100000) != 0)
  {
    v21 = 2654435761 * self->_wisprDetected;
    if ((*&v5 & 0x40000) != 0)
    {
LABEL_21:
      v20 = 2654435761 * self->_passiveCaptivityDetected;
      if ((*&v5 & 0x10) != 0)
      {
        goto LABEL_22;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v21 = 0;
    if ((*&v5 & 0x40000) != 0)
    {
      goto LABEL_21;
    }
  }

  v20 = 0;
  if ((*&v5 & 0x10) != 0)
  {
LABEL_22:
    v6 = 2654435761 * self->_passiveCaptivityCorrectDetection;
    if ((*&v5 & 0x20) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

LABEL_31:
  v6 = 0;
  if ((*&v5 & 0x20) != 0)
  {
LABEL_23:
    v7 = 2654435761 * self->_passiveCaptivityIncorrectDetection;
    if ((*&v5 & 0x8000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_33;
  }

LABEL_32:
  v7 = 0;
  if ((*&v5 & 0x8000) != 0)
  {
LABEL_24:
    v8 = 2654435761 * self->_handlerCNPTriggeredLogOff;
    if ((*&v5 & 0x10000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

LABEL_33:
  v8 = 0;
  if ((*&v5 & 0x10000) != 0)
  {
LABEL_25:
    v9 = 2654435761 * self->_isDetectedCaptive;
    if ((*&v5 & 8) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_35;
  }

LABEL_34:
  v9 = 0;
  if ((*&v5 & 8) != 0)
  {
LABEL_26:
    v10 = 2654435761 * self->_durationOnNetwork;
    if ((*&v5 & 4) != 0)
    {
      goto LABEL_27;
    }

LABEL_36:
    v11 = 0;
    if ((*&v5 & 0x40) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_37;
  }

LABEL_35:
  v10 = 0;
  if ((*&v5 & 4) == 0)
  {
    goto LABEL_36;
  }

LABEL_27:
  v11 = 2654435761 * self->_durationNetworkNotCaptive;
  if ((*&v5 & 0x40) != 0)
  {
LABEL_28:
    v12 = 2654435761 * self->_passiveCaptivitySymptom;
    goto LABEL_38;
  }

LABEL_37:
  v12 = 0;
LABEL_38:
  v13 = [(NSString *)self->_appTriggeredPassiveSymptom hash];
  v14 = self->_has;
  if ((*&v14 & 0x20000) != 0)
  {
    v15 = 2654435761 * self->_nonCaptiveDetectedAsCaptive;
    if ((*&v14 & 0x80) != 0)
    {
LABEL_40:
      v16 = 2654435761 * self->_redirectURLType;
      if ((*&v14 & 0x1000) != 0)
      {
        goto LABEL_41;
      }

LABEL_45:
      v17 = 0;
      if ((*&v14 & 0x800) != 0)
      {
        goto LABEL_42;
      }

LABEL_46:
      v18 = 0;
      return v31 ^ v32 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v15 ^ v16 ^ v17 ^ v18;
    }
  }

  else
  {
    v15 = 0;
    if ((*&v14 & 0x80) != 0)
    {
      goto LABEL_40;
    }
  }

  v16 = 0;
  if ((*&v14 & 0x1000) == 0)
  {
    goto LABEL_45;
  }

LABEL_41:
  v17 = 2654435761 * self->_whiteListProbeStatus;
  if ((*&v14 & 0x800) == 0)
  {
    goto LABEL_46;
  }

LABEL_42:
  v18 = 2654435761 * self->_whiteListProbeCompletionTime;
  return v31 ^ v32 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v15 ^ v16 ^ v17 ^ v18;
}

- (void)mergeFrom:(id)a3
{
  v20 = *MEMORY[0x29EDCA608];
  v5 = *(a3 + 27);
  if (v5)
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
    v5 = *(a3 + 27);
    if ((v5 & 0x100) == 0)
    {
LABEL_3:
      if ((v5 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_42;
    }
  }

  else if ((v5 & 0x100) == 0)
  {
    goto LABEL_3;
  }

  self->_result = *(a3 + 20);
  *&self->_has |= 0x100u;
  v5 = *(a3 + 27);
  if ((v5 & 0x200) == 0)
  {
LABEL_4:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_websheetProbeCount = *(a3 + 21);
  *&self->_has |= 0x200u;
  v5 = *(a3 + 27);
  if ((v5 & 0x80000) == 0)
  {
LABEL_5:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_43:
  self->_websheetScraped = *(a3 + 106);
  *&self->_has |= 0x80000u;
  if ((*(a3 + 27) & 0x400) != 0)
  {
LABEL_6:
    self->_websheetScrapeResult = *(a3 + 22);
    *&self->_has |= 0x400u;
  }

LABEL_7:
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = *(a3 + 7);
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(AWDCaptiveSession *)self addInstalledCNPDisplayIDs:*(*(&v15 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if (*(a3 + 6))
  {
    [(AWDCaptiveSession *)self setHandlerCNP:?];
  }

  v11 = *(a3 + 27);
  if ((v11 & 0x4000) != 0)
  {
    self->_detectedNotCaptiveHandledByCNP = *(a3 + 101);
    *&self->_has |= 0x4000u;
    v11 = *(a3 + 27);
    if ((v11 & 2) == 0)
    {
LABEL_18:
      if ((v11 & 0x2000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_18;
  }

  self->_autoLoginType = *(a3 + 8);
  *&self->_has |= 2u;
  if ((*(a3 + 27) & 0x2000) != 0)
  {
LABEL_19:
    self->_autoLoginFailed = *(a3 + 100);
    *&self->_has |= 0x2000u;
  }

LABEL_20:
  if (*(a3 + 3))
  {
    [(AWDCaptiveSession *)self setAutoLoginCarrierID:?];
  }

  v12 = *(a3 + 27);
  if ((v12 & 0x100000) != 0)
  {
    self->_wisprDetected = *(a3 + 107);
    *&self->_has |= 0x100000u;
    v12 = *(a3 + 27);
    if ((v12 & 0x40000) == 0)
    {
LABEL_24:
      if ((v12 & 0x10) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_50;
    }
  }

  else if ((v12 & 0x40000) == 0)
  {
    goto LABEL_24;
  }

  self->_passiveCaptivityDetected = *(a3 + 105);
  *&self->_has |= 0x40000u;
  v12 = *(a3 + 27);
  if ((v12 & 0x10) == 0)
  {
LABEL_25:
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_passiveCaptivityCorrectDetection = *(a3 + 16);
  *&self->_has |= 0x10u;
  v12 = *(a3 + 27);
  if ((v12 & 0x20) == 0)
  {
LABEL_26:
    if ((v12 & 0x8000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_passiveCaptivityIncorrectDetection = *(a3 + 17);
  *&self->_has |= 0x20u;
  v12 = *(a3 + 27);
  if ((v12 & 0x8000) == 0)
  {
LABEL_27:
    if ((v12 & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_handlerCNPTriggeredLogOff = *(a3 + 102);
  *&self->_has |= 0x8000u;
  v12 = *(a3 + 27);
  if ((v12 & 0x10000) == 0)
  {
LABEL_28:
    if ((v12 & 8) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_isDetectedCaptive = *(a3 + 103);
  *&self->_has |= 0x10000u;
  v12 = *(a3 + 27);
  if ((v12 & 8) == 0)
  {
LABEL_29:
    if ((v12 & 4) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_durationOnNetwork = *(a3 + 10);
  *&self->_has |= 8u;
  v12 = *(a3 + 27);
  if ((v12 & 4) == 0)
  {
LABEL_30:
    if ((v12 & 0x40) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_55:
  self->_durationNetworkNotCaptive = *(a3 + 9);
  *&self->_has |= 4u;
  if ((*(a3 + 27) & 0x40) != 0)
  {
LABEL_31:
    self->_passiveCaptivitySymptom = *(a3 + 18);
    *&self->_has |= 0x40u;
  }

LABEL_32:
  if (*(a3 + 2))
  {
    [(AWDCaptiveSession *)self setAppTriggeredPassiveSymptom:?];
  }

  v13 = *(a3 + 27);
  if ((v13 & 0x20000) != 0)
  {
    self->_nonCaptiveDetectedAsCaptive = *(a3 + 104);
    *&self->_has |= 0x20000u;
    v13 = *(a3 + 27);
    if ((v13 & 0x80) == 0)
    {
LABEL_36:
      if ((v13 & 0x1000) == 0)
      {
        goto LABEL_37;
      }

LABEL_59:
      self->_whiteListProbeStatus = *(a3 + 24);
      *&self->_has |= 0x1000u;
      if ((*(a3 + 27) & 0x800) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }
  }

  else if ((v13 & 0x80) == 0)
  {
    goto LABEL_36;
  }

  self->_redirectURLType = *(a3 + 19);
  *&self->_has |= 0x80u;
  v13 = *(a3 + 27);
  if ((v13 & 0x1000) != 0)
  {
    goto LABEL_59;
  }

LABEL_37:
  if ((v13 & 0x800) != 0)
  {
LABEL_38:
    self->_whiteListProbeCompletionTime = *(a3 + 23);
    *&self->_has |= 0x800u;
  }

LABEL_39:
  v14 = *MEMORY[0x29EDCA608];
}

@end