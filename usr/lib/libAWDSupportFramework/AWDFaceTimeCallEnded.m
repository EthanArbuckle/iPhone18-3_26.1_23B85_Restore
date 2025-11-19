@interface AWDFaceTimeCallEnded
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasBackCameraCaptureDuration:(BOOL)a3;
- (void)setHasCallDuration:(BOOL)a3;
- (void)setHasConferenceMiscError:(BOOL)a3;
- (void)setHasConnectDuration:(BOOL)a3;
- (void)setHasConnectionType:(BOOL)a3;
- (void)setHasCurrentNatType:(BOOL)a3;
- (void)setHasDataRate:(BOOL)a3;
- (void)setHasDiagnosticPingAvg:(BOOL)a3;
- (void)setHasDiagnosticPingMax:(BOOL)a3;
- (void)setHasDiagnosticPingMin:(BOOL)a3;
- (void)setHasDiagnosticPingPacketLoss:(BOOL)a3;
- (void)setHasEndedReason:(BOOL)a3;
- (void)setHasFrontCameraCaptureDuration:(BOOL)a3;
- (void)setHasGameKitError:(BOOL)a3;
- (void)setHasGenericError:(BOOL)a3;
- (void)setHasGksError:(BOOL)a3;
- (void)setHasGksReturnCode:(BOOL)a3;
- (void)setHasInvitationServiceError:(BOOL)a3;
- (void)setHasIsAudioInterrupted:(BOOL)a3;
- (void)setHasIsCallUpgrade:(BOOL)a3;
- (void)setHasIsInitiator:(BOOL)a3;
- (void)setHasIsNetworkActive:(BOOL)a3;
- (void)setHasIsNetworkEnabled:(BOOL)a3;
- (void)setHasIsNetworkReachable:(BOOL)a3;
- (void)setHasIsVideo:(BOOL)a3;
- (void)setHasIsVideoInterrupted:(BOOL)a3;
- (void)setHasLinkQuality:(BOOL)a3;
- (void)setHasLocalNetworkConnection:(BOOL)a3;
- (void)setHasMessageDeliveryError:(BOOL)a3;
- (void)setHasNetworkCheckResult:(BOOL)a3;
- (void)setHasOnLockScreen:(BOOL)a3;
- (void)setHasRegistrationError:(BOOL)a3;
- (void)setHasRelayConnectDuration:(BOOL)a3;
- (void)setHasRelayError:(BOOL)a3;
- (void)setHasRemoteNatType:(BOOL)a3;
- (void)setHasRemoteNetworkConnection:(BOOL)a3;
- (void)setHasUsesRelay:(BOOL)a3;
- (void)setHasViceroyError:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDFaceTimeCallEnded

- (void)dealloc
{
  [(AWDFaceTimeCallEnded *)self setGuid:0];
  v3.receiver = self;
  v3.super_class = AWDFaceTimeCallEnded;
  [(AWDFaceTimeCallEnded *)&v3 dealloc];
}

- (void)setHasEndedReason:(BOOL)a3
{
  v3 = 4096;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setHasGenericError:(BOOL)a3
{
  v3 = 0x8000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setHasViceroyError:(BOOL)a3
{
  v3 = 0x4000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3);
}

- (void)setHasGameKitError:(BOOL)a3
{
  v3 = 0x4000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setHasMessageDeliveryError:(BOOL)a3
{
  v3 = 0x20000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)setHasConferenceMiscError:(BOOL)a3
{
  v3 = 8;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (void)setHasRegistrationError:(BOOL)a3
{
  v3 = 0x100000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setHasRelayError:(BOOL)a3
{
  v3 = 0x400000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (void)setHasInvitationServiceError:(BOOL)a3
{
  v3 = 0x40000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setHasCallDuration:(BOOL)a3
{
  v3 = 4;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setHasDiagnosticPingMin:(BOOL)a3
{
  v3 = 1024;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setHasDiagnosticPingAvg:(BOOL)a3
{
  v3 = 256;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setHasDiagnosticPingMax:(BOOL)a3
{
  v3 = 512;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasDiagnosticPingPacketLoss:(BOOL)a3
{
  v3 = 2048;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setHasIsNetworkEnabled:(BOOL)a3
{
  v3 = 0x800000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setHasIsNetworkActive:(BOOL)a3
{
  v3 = 0x400000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)setHasIsNetworkReachable:(BOOL)a3
{
  v3 = 0x1000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setHasNetworkCheckResult:(BOOL)a3
{
  v3 = 0x40000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setHasFrontCameraCaptureDuration:(BOOL)a3
{
  v3 = 0x2000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)setHasBackCameraCaptureDuration:(BOOL)a3
{
  v3 = 2;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setHasDataRate:(BOOL)a3
{
  v3 = 128;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (void)setHasGksError:(BOOL)a3
{
  v3 = 0x10000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (void)setHasConnectDuration:(BOOL)a3
{
  v3 = 16;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (void)setHasRemoteNetworkConnection:(BOOL)a3
{
  v3 = 0x1000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3);
}

- (void)setHasLocalNetworkConnection:(BOOL)a3
{
  v3 = 0x10000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setHasConnectionType:(BOOL)a3
{
  v3 = 32;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setHasUsesRelay:(BOOL)a3
{
  v3 = 0x2000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3);
}

- (void)setHasCurrentNatType:(BOOL)a3
{
  v3 = 64;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setHasRemoteNatType:(BOOL)a3
{
  v3 = 0x800000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3);
}

- (void)setHasRelayConnectDuration:(BOOL)a3
{
  v3 = 0x200000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)setHasIsInitiator:(BOOL)a3
{
  v3 = 0x200000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)setHasIsVideoInterrupted:(BOOL)a3
{
  v3 = 0x4000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setHasIsAudioInterrupted:(BOOL)a3
{
  v3 = 0x80000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)setHasIsCallUpgrade:(BOOL)a3
{
  v3 = 0x100000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setHasLinkQuality:(BOOL)a3
{
  v3 = 0x8000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)setHasGksReturnCode:(BOOL)a3
{
  v3 = 0x20000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)setHasIsVideo:(BOOL)a3
{
  v3 = 0x2000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setHasOnLockScreen:(BOOL)a3
{
  v3 = 0x80000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDFaceTimeCallEnded;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDFaceTimeCallEnded description](&v3, sel_description), -[AWDFaceTimeCallEnded dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  v4 = v3;
  guid = self->_guid;
  if (guid)
  {
    [v3 setObject:guid forKey:@"guid"];
  }

  has = self->_has;
  if (*&has)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((*&has & 0x1000) == 0)
    {
LABEL_5:
      if ((*&has & 0x8000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_46;
    }
  }

  else if ((*&has & 0x1000) == 0)
  {
    goto LABEL_5;
  }

  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_endedReason), @"endedReason"}];
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_6:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

LABEL_46:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_genericError), @"genericError"}];
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_48;
  }

LABEL_47:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_viceroyError), @"viceroyError"}];
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_8:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_48:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_gameKitError), @"gameKitError"}];
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_9:
    if ((*&has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_50;
  }

LABEL_49:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_messageDeliveryError), @"messageDeliveryError"}];
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_10:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_51;
  }

LABEL_50:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_conferenceMiscError), @"conferenceMiscError"}];
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_52;
  }

LABEL_51:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_registrationError), @"registrationError"}];
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_53;
  }

LABEL_52:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_relayError), @"relayError"}];
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_13:
    if ((*&has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_54;
  }

LABEL_53:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_invitationServiceError), @"invitationServiceError"}];
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_14:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_55;
  }

LABEL_54:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_callDuration), @"callDuration"}];
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_15:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_56;
  }

LABEL_55:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_diagnosticPingMin), @"diagnosticPingMin"}];
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_16:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_57;
  }

LABEL_56:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_diagnosticPingAvg), @"diagnosticPingAvg"}];
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_17:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_58;
  }

LABEL_57:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_diagnosticPingMax), @"diagnosticPingMax"}];
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_18:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_59;
  }

LABEL_58:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_diagnosticPingPacketLoss), @"diagnosticPingPacketLoss"}];
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_19:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_60;
  }

LABEL_59:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isNetworkEnabled), @"isNetworkEnabled"}];
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_20:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_61;
  }

LABEL_60:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isNetworkActive), @"isNetworkActive"}];
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_21:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_62;
  }

LABEL_61:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isNetworkReachable), @"isNetworkReachable"}];
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_63;
  }

LABEL_62:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_networkCheckResult), @"networkCheckResult"}];
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_23:
    if ((*&has & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_64;
  }

LABEL_63:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_frontCameraCaptureDuration), @"frontCameraCaptureDuration"}];
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_24:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_65;
  }

LABEL_64:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_backCameraCaptureDuration), @"backCameraCaptureDuration"}];
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_25:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_66;
  }

LABEL_65:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_dataRate), @"dataRate"}];
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_26:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_67;
  }

LABEL_66:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_gksError), @"gksError"}];
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_27:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_68;
  }

LABEL_67:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_connectDuration), @"connectDuration"}];
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_28:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_69;
  }

LABEL_68:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_remoteNetworkConnection), @"remoteNetworkConnection"}];
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_70;
  }

LABEL_69:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_localNetworkConnection), @"localNetworkConnection"}];
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_30:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_71;
  }

LABEL_70:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_connectionType), @"connectionType"}];
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_72;
  }

LABEL_71:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_usesRelay), @"usesRelay"}];
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_32:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_73;
  }

LABEL_72:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_currentNatType), @"currentNatType"}];
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_74;
  }

LABEL_73:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_remoteNatType), @"remoteNatType"}];
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_34:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_75;
  }

LABEL_74:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_relayConnectDuration), @"relayConnectDuration"}];
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_35:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_76;
  }

LABEL_75:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isInitiator), @"isInitiator"}];
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_36:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_77;
  }

LABEL_76:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isVideoInterrupted), @"isVideoInterrupted"}];
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_37:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_78;
  }

LABEL_77:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isAudioInterrupted), @"isAudioInterrupted"}];
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_38:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_79;
  }

LABEL_78:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isCallUpgrade), @"isCallUpgrade"}];
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_39:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_80;
  }

LABEL_79:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_linkQuality), @"linkQuality"}];
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_40:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_81:
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isVideo), @"isVideo"}];
    if ((*&self->_has & 0x80000000) == 0)
    {
      return v4;
    }

    goto LABEL_42;
  }

LABEL_80:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_gksReturnCode), @"gksReturnCode"}];
  has = self->_has;
  if ((*&has & 0x2000000) != 0)
  {
    goto LABEL_81;
  }

LABEL_41:
  if ((*&has & 0x80000000) != 0)
  {
LABEL_42:
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_onLockScreen), @"onLockScreen"}];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  if (self->_guid)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (*&has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 0x1000) == 0)
    {
LABEL_5:
      if ((*&has & 0x8000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_45;
    }
  }

  else if ((*&has & 0x1000) == 0)
  {
    goto LABEL_5;
  }

  endedReason = self->_endedReason;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_6:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_46;
  }

LABEL_45:
  genericError = self->_genericError;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_47;
  }

LABEL_46:
  viceroyError = self->_viceroyError;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_8:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_48;
  }

LABEL_47:
  gameKitError = self->_gameKitError;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_9:
    if ((*&has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_49;
  }

LABEL_48:
  messageDeliveryError = self->_messageDeliveryError;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_10:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_50;
  }

LABEL_49:
  conferenceMiscError = self->_conferenceMiscError;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_51;
  }

LABEL_50:
  registrationError = self->_registrationError;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_52;
  }

LABEL_51:
  relayError = self->_relayError;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_13:
    if ((*&has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_53;
  }

LABEL_52:
  invitationServiceError = self->_invitationServiceError;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_14:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_54;
  }

LABEL_53:
  callDuration = self->_callDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_15:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_55;
  }

LABEL_54:
  diagnosticPingMin = self->_diagnosticPingMin;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_16:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_56;
  }

LABEL_55:
  diagnosticPingAvg = self->_diagnosticPingAvg;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_17:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_57;
  }

LABEL_56:
  diagnosticPingMax = self->_diagnosticPingMax;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_18:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_58;
  }

LABEL_57:
  diagnosticPingPacketLoss = self->_diagnosticPingPacketLoss;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_19:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_59;
  }

LABEL_58:
  isNetworkEnabled = self->_isNetworkEnabled;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_20:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_60;
  }

LABEL_59:
  isNetworkActive = self->_isNetworkActive;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_21:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_61;
  }

LABEL_60:
  isNetworkReachable = self->_isNetworkReachable;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_62;
  }

LABEL_61:
  networkCheckResult = self->_networkCheckResult;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_23:
    if ((*&has & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_63;
  }

LABEL_62:
  frontCameraCaptureDuration = self->_frontCameraCaptureDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_24:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_64;
  }

LABEL_63:
  backCameraCaptureDuration = self->_backCameraCaptureDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_25:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_65;
  }

LABEL_64:
  dataRate = self->_dataRate;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_26:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_66;
  }

LABEL_65:
  gksError = self->_gksError;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_27:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_67;
  }

LABEL_66:
  connectDuration = self->_connectDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_28:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_68;
  }

LABEL_67:
  remoteNetworkConnection = self->_remoteNetworkConnection;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_69;
  }

LABEL_68:
  localNetworkConnection = self->_localNetworkConnection;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_30:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_70;
  }

LABEL_69:
  connectionType = self->_connectionType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_71;
  }

LABEL_70:
  usesRelay = self->_usesRelay;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_32:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_72;
  }

LABEL_71:
  currentNatType = self->_currentNatType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_73;
  }

LABEL_72:
  remoteNatType = self->_remoteNatType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_34:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_74;
  }

LABEL_73:
  relayConnectDuration = self->_relayConnectDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_35:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_75;
  }

LABEL_74:
  isInitiator = self->_isInitiator;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_36:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_76;
  }

LABEL_75:
  isVideoInterrupted = self->_isVideoInterrupted;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_37:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_77;
  }

LABEL_76:
  isAudioInterrupted = self->_isAudioInterrupted;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_38:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_78;
  }

LABEL_77:
  isCallUpgrade = self->_isCallUpgrade;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_39:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_79;
  }

LABEL_78:
  linkQuality = self->_linkQuality;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_40:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_80:
    isVideo = self->_isVideo;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_81;
  }

LABEL_79:
  gksReturnCode = self->_gksReturnCode;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x2000000) != 0)
  {
    goto LABEL_80;
  }

LABEL_41:
  if ((*&has & 0x80000000) == 0)
  {
    return;
  }

LABEL_81:
  onLockScreen = self->_onLockScreen;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  if (self->_guid)
  {
    [a3 setGuid:?];
  }

  has = self->_has;
  if (*&has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 180) |= 1uLL;
    has = self->_has;
    if ((*&has & 0x1000) == 0)
    {
LABEL_5:
      if ((*&has & 0x8000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_46;
    }
  }

  else if ((*&has & 0x1000) == 0)
  {
    goto LABEL_5;
  }

  *(a3 + 15) = self->_endedReason;
  *(a3 + 180) |= 0x1000uLL;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_6:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(a3 + 18) = self->_genericError;
  *(a3 + 180) |= 0x8000uLL;
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(a3 + 44) = self->_viceroyError;
  *(a3 + 180) |= 0x4000000000uLL;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_8:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(a3 + 17) = self->_gameKitError;
  *(a3 + 180) |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_9:
    if ((*&has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(a3 + 35) = self->_messageDeliveryError;
  *(a3 + 180) |= 0x20000000uLL;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_10:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(a3 + 6) = self->_conferenceMiscError;
  *(a3 + 180) |= 8uLL;
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(a3 + 38) = self->_registrationError;
  *(a3 + 180) |= 0x100000000uLL;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(a3 + 40) = self->_relayError;
  *(a3 + 180) |= 0x400000000uLL;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_13:
    if ((*&has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(a3 + 24) = self->_invitationServiceError;
  *(a3 + 180) |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_14:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(a3 + 5) = self->_callDuration;
  *(a3 + 180) |= 4uLL;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_15:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(a3 + 13) = self->_diagnosticPingMin;
  *(a3 + 180) |= 0x400uLL;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_16:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(a3 + 11) = self->_diagnosticPingAvg;
  *(a3 + 180) |= 0x100uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_17:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(a3 + 12) = self->_diagnosticPingMax;
  *(a3 + 180) |= 0x200uLL;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_18:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(a3 + 14) = self->_diagnosticPingPacketLoss;
  *(a3 + 180) |= 0x800uLL;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_19:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(a3 + 29) = self->_isNetworkEnabled;
  *(a3 + 180) |= 0x800000uLL;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_20:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(a3 + 28) = self->_isNetworkActive;
  *(a3 + 180) |= 0x400000uLL;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_21:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(a3 + 30) = self->_isNetworkReachable;
  *(a3 + 180) |= 0x1000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(a3 + 36) = self->_networkCheckResult;
  *(a3 + 180) |= 0x40000000uLL;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_23:
    if ((*&has & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(a3 + 16) = self->_frontCameraCaptureDuration;
  *(a3 + 180) |= 0x2000uLL;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_24:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(a3 + 4) = self->_backCameraCaptureDuration;
  *(a3 + 180) |= 2uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_25:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(a3 + 10) = self->_dataRate;
  *(a3 + 180) |= 0x80uLL;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_26:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(a3 + 19) = self->_gksError;
  *(a3 + 180) |= 0x10000uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_27:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(a3 + 7) = self->_connectDuration;
  *(a3 + 180) |= 0x10uLL;
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_28:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(a3 + 42) = self->_remoteNetworkConnection;
  *(a3 + 180) |= 0x1000000000uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(a3 + 34) = self->_localNetworkConnection;
  *(a3 + 180) |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_30:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(a3 + 8) = self->_connectionType;
  *(a3 + 180) |= 0x20uLL;
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(a3 + 43) = self->_usesRelay;
  *(a3 + 180) |= 0x2000000000uLL;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_32:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(a3 + 9) = self->_currentNatType;
  *(a3 + 180) |= 0x40uLL;
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(a3 + 41) = self->_remoteNatType;
  *(a3 + 180) |= 0x800000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_34:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(a3 + 39) = self->_relayConnectDuration;
  *(a3 + 180) |= 0x200000000uLL;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_35:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(a3 + 27) = self->_isInitiator;
  *(a3 + 180) |= 0x200000uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_36:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(a3 + 32) = self->_isVideoInterrupted;
  *(a3 + 180) |= 0x4000000uLL;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_37:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(a3 + 25) = self->_isAudioInterrupted;
  *(a3 + 180) |= 0x80000uLL;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_38:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(a3 + 26) = self->_isCallUpgrade;
  *(a3 + 180) |= 0x100000uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_39:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(a3 + 33) = self->_linkQuality;
  *(a3 + 180) |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_40:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(a3 + 20) = self->_gksReturnCode;
  *(a3 + 180) |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_41:
    if ((*&has & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_42;
  }

LABEL_81:
  *(a3 + 31) = self->_isVideo;
  *(a3 + 180) |= 0x2000000uLL;
  if ((*&self->_has & 0x80000000) == 0)
  {
    return;
  }

LABEL_42:
  *(a3 + 37) = self->_onLockScreen;
  *(a3 + 180) |= 0x80000000uLL;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];

  *(v5 + 88) = [(NSString *)self->_guid copyWithZone:a3];
  has = self->_has;
  if (*&has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 180) |= 1uLL;
    has = self->_has;
    if ((*&has & 0x1000) == 0)
    {
LABEL_3:
      if ((*&has & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_44;
    }
  }

  else if ((*&has & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 60) = self->_endedReason;
  *(v5 + 180) |= 0x1000uLL;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_4:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v5 + 72) = self->_genericError;
  *(v5 + 180) |= 0x8000uLL;
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_5:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v5 + 176) = self->_viceroyError;
  *(v5 + 180) |= 0x4000000000uLL;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_6:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v5 + 68) = self->_gameKitError;
  *(v5 + 180) |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_7:
    if ((*&has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v5 + 140) = self->_messageDeliveryError;
  *(v5 + 180) |= 0x20000000uLL;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_8:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(v5 + 24) = self->_conferenceMiscError;
  *(v5 + 180) |= 8uLL;
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v5 + 152) = self->_registrationError;
  *(v5 + 180) |= 0x100000000uLL;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v5 + 160) = self->_relayError;
  *(v5 + 180) |= 0x400000000uLL;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_11:
    if ((*&has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v5 + 96) = self->_invitationServiceError;
  *(v5 + 180) |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_12:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v5 + 20) = self->_callDuration;
  *(v5 + 180) |= 4uLL;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_13:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v5 + 52) = self->_diagnosticPingMin;
  *(v5 + 180) |= 0x400uLL;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_14:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(v5 + 44) = self->_diagnosticPingAvg;
  *(v5 + 180) |= 0x100uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_15:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(v5 + 48) = self->_diagnosticPingMax;
  *(v5 + 180) |= 0x200uLL;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_16:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v5 + 56) = self->_diagnosticPingPacketLoss;
  *(v5 + 180) |= 0x800uLL;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_17:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(v5 + 116) = self->_isNetworkEnabled;
  *(v5 + 180) |= 0x800000uLL;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_18:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v5 + 112) = self->_isNetworkActive;
  *(v5 + 180) |= 0x400000uLL;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_19:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(v5 + 120) = self->_isNetworkReachable;
  *(v5 + 180) |= 0x1000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_20:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(v5 + 144) = self->_networkCheckResult;
  *(v5 + 180) |= 0x40000000uLL;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_21:
    if ((*&has & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(v5 + 64) = self->_frontCameraCaptureDuration;
  *(v5 + 180) |= 0x2000uLL;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_22:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(v5 + 16) = self->_backCameraCaptureDuration;
  *(v5 + 180) |= 2uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_23:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(v5 + 40) = self->_dataRate;
  *(v5 + 180) |= 0x80uLL;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_24:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(v5 + 76) = self->_gksError;
  *(v5 + 180) |= 0x10000uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_25:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(v5 + 28) = self->_connectDuration;
  *(v5 + 180) |= 0x10uLL;
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_26:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(v5 + 168) = self->_remoteNetworkConnection;
  *(v5 + 180) |= 0x1000000000uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_27:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(v5 + 136) = self->_localNetworkConnection;
  *(v5 + 180) |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_28:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(v5 + 32) = self->_connectionType;
  *(v5 + 180) |= 0x20uLL;
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(v5 + 172) = self->_usesRelay;
  *(v5 + 180) |= 0x2000000000uLL;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_30:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(v5 + 36) = self->_currentNatType;
  *(v5 + 180) |= 0x40uLL;
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(v5 + 164) = self->_remoteNatType;
  *(v5 + 180) |= 0x800000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_32:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(v5 + 156) = self->_relayConnectDuration;
  *(v5 + 180) |= 0x200000000uLL;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_33:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(v5 + 108) = self->_isInitiator;
  *(v5 + 180) |= 0x200000uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_34:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(v5 + 128) = self->_isVideoInterrupted;
  *(v5 + 180) |= 0x4000000uLL;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_35:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(v5 + 100) = self->_isAudioInterrupted;
  *(v5 + 180) |= 0x80000uLL;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_36:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(v5 + 104) = self->_isCallUpgrade;
  *(v5 + 180) |= 0x100000uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_37:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(v5 + 132) = self->_linkQuality;
  *(v5 + 180) |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_38:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_79:
    *(v5 + 124) = self->_isVideo;
    *(v5 + 180) |= 0x2000000uLL;
    if ((*&self->_has & 0x80000000) == 0)
    {
      return v5;
    }

    goto LABEL_40;
  }

LABEL_78:
  *(v5 + 80) = self->_gksReturnCode;
  *(v5 + 180) |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 0x2000000) != 0)
  {
    goto LABEL_79;
  }

LABEL_39:
  if ((*&has & 0x80000000) != 0)
  {
LABEL_40:
    *(v5 + 148) = self->_onLockScreen;
    *(v5 + 180) |= 0x80000000uLL;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    guid = self->_guid;
    if (!(guid | *(a3 + 11)) || (v5 = [(NSString *)guid isEqual:?]) != 0)
    {
      has = self->_has;
      v8 = *(a3 + 180);
      if (*&has)
      {
        if ((v8 & 1) == 0 || self->_timestamp != *(a3 + 1))
        {
          goto LABEL_199;
        }
      }

      else if (v8)
      {
LABEL_199:
        LOBYTE(v5) = 0;
        return v5;
      }

      if ((*&has & 0x1000) != 0)
      {
        if ((v8 & 0x1000) == 0 || self->_endedReason != *(a3 + 15))
        {
          goto LABEL_199;
        }
      }

      else if ((v8 & 0x1000) != 0)
      {
        goto LABEL_199;
      }

      if ((*&has & 0x8000) != 0)
      {
        if ((v8 & 0x8000) == 0 || self->_genericError != *(a3 + 18))
        {
          goto LABEL_199;
        }
      }

      else if ((v8 & 0x8000) != 0)
      {
        goto LABEL_199;
      }

      if ((*&has & 0x4000000000) != 0)
      {
        if ((v8 & 0x4000000000) == 0 || self->_viceroyError != *(a3 + 44))
        {
          goto LABEL_199;
        }
      }

      else if ((v8 & 0x4000000000) != 0)
      {
        goto LABEL_199;
      }

      if ((*&has & 0x4000) != 0)
      {
        if ((v8 & 0x4000) == 0 || self->_gameKitError != *(a3 + 17))
        {
          goto LABEL_199;
        }
      }

      else if ((v8 & 0x4000) != 0)
      {
        goto LABEL_199;
      }

      if ((*&has & 0x20000000) != 0)
      {
        if ((v8 & 0x20000000) == 0 || self->_messageDeliveryError != *(a3 + 35))
        {
          goto LABEL_199;
        }
      }

      else if ((v8 & 0x20000000) != 0)
      {
        goto LABEL_199;
      }

      if ((*&has & 8) != 0)
      {
        if ((v8 & 8) == 0 || self->_conferenceMiscError != *(a3 + 6))
        {
          goto LABEL_199;
        }
      }

      else if ((v8 & 8) != 0)
      {
        goto LABEL_199;
      }

      if ((*&has & 0x100000000) != 0)
      {
        if ((v8 & 0x100000000) == 0 || self->_registrationError != *(a3 + 38))
        {
          goto LABEL_199;
        }
      }

      else if ((v8 & 0x100000000) != 0)
      {
        goto LABEL_199;
      }

      if ((*&has & 0x400000000) != 0)
      {
        if ((v8 & 0x400000000) == 0 || self->_relayError != *(a3 + 40))
        {
          goto LABEL_199;
        }
      }

      else if ((v8 & 0x400000000) != 0)
      {
        goto LABEL_199;
      }

      if ((*&has & 0x40000) != 0)
      {
        if ((v8 & 0x40000) == 0 || self->_invitationServiceError != *(a3 + 24))
        {
          goto LABEL_199;
        }
      }

      else if ((v8 & 0x40000) != 0)
      {
        goto LABEL_199;
      }

      if ((*&has & 4) != 0)
      {
        if ((v8 & 4) == 0 || self->_callDuration != *(a3 + 5))
        {
          goto LABEL_199;
        }
      }

      else if ((v8 & 4) != 0)
      {
        goto LABEL_199;
      }

      if ((*&has & 0x400) != 0)
      {
        if ((v8 & 0x400) == 0 || self->_diagnosticPingMin != *(a3 + 13))
        {
          goto LABEL_199;
        }
      }

      else if ((v8 & 0x400) != 0)
      {
        goto LABEL_199;
      }

      if ((*&has & 0x100) != 0)
      {
        if ((v8 & 0x100) == 0 || self->_diagnosticPingAvg != *(a3 + 11))
        {
          goto LABEL_199;
        }
      }

      else if ((v8 & 0x100) != 0)
      {
        goto LABEL_199;
      }

      if ((*&has & 0x200) != 0)
      {
        if ((v8 & 0x200) == 0 || self->_diagnosticPingMax != *(a3 + 12))
        {
          goto LABEL_199;
        }
      }

      else if ((v8 & 0x200) != 0)
      {
        goto LABEL_199;
      }

      if ((*&has & 0x800) != 0)
      {
        if ((v8 & 0x800) == 0 || self->_diagnosticPingPacketLoss != *(a3 + 14))
        {
          goto LABEL_199;
        }
      }

      else if ((v8 & 0x800) != 0)
      {
        goto LABEL_199;
      }

      if ((*&has & 0x800000) != 0)
      {
        if ((v8 & 0x800000) == 0 || self->_isNetworkEnabled != *(a3 + 29))
        {
          goto LABEL_199;
        }
      }

      else if ((v8 & 0x800000) != 0)
      {
        goto LABEL_199;
      }

      if ((*&has & 0x400000) != 0)
      {
        if ((v8 & 0x400000) == 0 || self->_isNetworkActive != *(a3 + 28))
        {
          goto LABEL_199;
        }
      }

      else if ((v8 & 0x400000) != 0)
      {
        goto LABEL_199;
      }

      if ((*&has & 0x1000000) != 0)
      {
        if ((v8 & 0x1000000) == 0 || self->_isNetworkReachable != *(a3 + 30))
        {
          goto LABEL_199;
        }
      }

      else if ((v8 & 0x1000000) != 0)
      {
        goto LABEL_199;
      }

      if ((*&has & 0x40000000) != 0)
      {
        if ((v8 & 0x40000000) == 0 || self->_networkCheckResult != *(a3 + 36))
        {
          goto LABEL_199;
        }
      }

      else if ((v8 & 0x40000000) != 0)
      {
        goto LABEL_199;
      }

      if ((*&has & 0x2000) != 0)
      {
        if ((v8 & 0x2000) == 0 || self->_frontCameraCaptureDuration != *(a3 + 16))
        {
          goto LABEL_199;
        }
      }

      else if ((v8 & 0x2000) != 0)
      {
        goto LABEL_199;
      }

      if ((*&has & 2) != 0)
      {
        if ((v8 & 2) == 0 || self->_backCameraCaptureDuration != *(a3 + 4))
        {
          goto LABEL_199;
        }
      }

      else if ((v8 & 2) != 0)
      {
        goto LABEL_199;
      }

      if ((*&has & 0x80) != 0)
      {
        if ((v8 & 0x80) == 0 || self->_dataRate != *(a3 + 10))
        {
          goto LABEL_199;
        }
      }

      else if ((v8 & 0x80) != 0)
      {
        goto LABEL_199;
      }

      if ((*&has & 0x10000) != 0)
      {
        if ((v8 & 0x10000) == 0 || self->_gksError != *(a3 + 19))
        {
          goto LABEL_199;
        }
      }

      else if ((v8 & 0x10000) != 0)
      {
        goto LABEL_199;
      }

      if ((*&has & 0x10) != 0)
      {
        if ((v8 & 0x10) == 0 || self->_connectDuration != *(a3 + 7))
        {
          goto LABEL_199;
        }
      }

      else if ((v8 & 0x10) != 0)
      {
        goto LABEL_199;
      }

      if ((*&has & 0x1000000000) != 0)
      {
        if ((v8 & 0x1000000000) == 0 || self->_remoteNetworkConnection != *(a3 + 42))
        {
          goto LABEL_199;
        }
      }

      else if ((v8 & 0x1000000000) != 0)
      {
        goto LABEL_199;
      }

      if ((*&has & 0x10000000) != 0)
      {
        if ((v8 & 0x10000000) == 0 || self->_localNetworkConnection != *(a3 + 34))
        {
          goto LABEL_199;
        }
      }

      else if ((v8 & 0x10000000) != 0)
      {
        goto LABEL_199;
      }

      if ((*&has & 0x20) != 0)
      {
        if ((v8 & 0x20) == 0 || self->_connectionType != *(a3 + 8))
        {
          goto LABEL_199;
        }
      }

      else if ((v8 & 0x20) != 0)
      {
        goto LABEL_199;
      }

      if ((*&has & 0x2000000000) != 0)
      {
        if ((v8 & 0x2000000000) == 0 || self->_usesRelay != *(a3 + 43))
        {
          goto LABEL_199;
        }
      }

      else if ((v8 & 0x2000000000) != 0)
      {
        goto LABEL_199;
      }

      if ((*&has & 0x40) != 0)
      {
        if ((v8 & 0x40) == 0 || self->_currentNatType != *(a3 + 9))
        {
          goto LABEL_199;
        }
      }

      else if ((v8 & 0x40) != 0)
      {
        goto LABEL_199;
      }

      if ((*&has & 0x800000000) != 0)
      {
        if ((v8 & 0x800000000) == 0 || self->_remoteNatType != *(a3 + 41))
        {
          goto LABEL_199;
        }
      }

      else if ((v8 & 0x800000000) != 0)
      {
        goto LABEL_199;
      }

      if ((*&has & 0x200000000) != 0)
      {
        if ((v8 & 0x200000000) == 0 || self->_relayConnectDuration != *(a3 + 39))
        {
          goto LABEL_199;
        }
      }

      else if ((v8 & 0x200000000) != 0)
      {
        goto LABEL_199;
      }

      if ((*&has & 0x200000) != 0)
      {
        if ((v8 & 0x200000) == 0 || self->_isInitiator != *(a3 + 27))
        {
          goto LABEL_199;
        }
      }

      else if ((v8 & 0x200000) != 0)
      {
        goto LABEL_199;
      }

      if ((*&has & 0x4000000) != 0)
      {
        if ((v8 & 0x4000000) == 0 || self->_isVideoInterrupted != *(a3 + 32))
        {
          goto LABEL_199;
        }
      }

      else if ((v8 & 0x4000000) != 0)
      {
        goto LABEL_199;
      }

      if ((*&has & 0x80000) != 0)
      {
        if ((v8 & 0x80000) == 0 || self->_isAudioInterrupted != *(a3 + 25))
        {
          goto LABEL_199;
        }
      }

      else if ((v8 & 0x80000) != 0)
      {
        goto LABEL_199;
      }

      if ((*&has & 0x100000) != 0)
      {
        if ((v8 & 0x100000) == 0 || self->_isCallUpgrade != *(a3 + 26))
        {
          goto LABEL_199;
        }
      }

      else if ((v8 & 0x100000) != 0)
      {
        goto LABEL_199;
      }

      if ((*&has & 0x8000000) != 0)
      {
        if ((v8 & 0x8000000) == 0 || self->_linkQuality != *(a3 + 33))
        {
          goto LABEL_199;
        }
      }

      else if ((v8 & 0x8000000) != 0)
      {
        goto LABEL_199;
      }

      if ((*&has & 0x20000) != 0)
      {
        if ((v8 & 0x20000) == 0 || self->_gksReturnCode != *(a3 + 20))
        {
          goto LABEL_199;
        }
      }

      else if ((v8 & 0x20000) != 0)
      {
        goto LABEL_199;
      }

      if ((*&has & 0x2000000) != 0)
      {
        if ((v8 & 0x2000000) == 0 || self->_isVideo != *(a3 + 31))
        {
          goto LABEL_199;
        }
      }

      else if ((v8 & 0x2000000) != 0)
      {
        goto LABEL_199;
      }

      if ((*&has & 0x80000000) != 0)
      {
        if ((v8 & 0x80000000) == 0 || self->_onLockScreen != *(a3 + 37))
        {
          goto LABEL_199;
        }

        LOBYTE(v5) = 1;
      }

      else
      {
        LOBYTE(v5) = v8 >= 0;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v44 = [(NSString *)self->_guid hash];
  has = self->_has;
  if (*&has)
  {
    v43 = 2654435761u * self->_timestamp;
    if ((*&has & 0x1000) != 0)
    {
LABEL_3:
      v42 = 2654435761 * self->_endedReason;
      if ((*&has & 0x8000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_43;
    }
  }

  else
  {
    v43 = 0;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_3;
    }
  }

  v42 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_4:
    v41 = 2654435761 * self->_genericError;
    if ((*&has & 0x4000000000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_44;
  }

LABEL_43:
  v41 = 0;
  if ((*&has & 0x4000000000) != 0)
  {
LABEL_5:
    v40 = 2654435761 * self->_viceroyError;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_45;
  }

LABEL_44:
  v40 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_6:
    v39 = 2654435761 * self->_gameKitError;
    if ((*&has & 0x20000000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_46;
  }

LABEL_45:
  v39 = 0;
  if ((*&has & 0x20000000) != 0)
  {
LABEL_7:
    v38 = 2654435761 * self->_messageDeliveryError;
    if ((*&has & 8) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_47;
  }

LABEL_46:
  v38 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_8:
    v37 = 2654435761 * self->_conferenceMiscError;
    if ((*&has & 0x100000000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_48;
  }

LABEL_47:
  v37 = 0;
  if ((*&has & 0x100000000) != 0)
  {
LABEL_9:
    v36 = 2654435761 * self->_registrationError;
    if ((*&has & 0x400000000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_49;
  }

LABEL_48:
  v36 = 0;
  if ((*&has & 0x400000000) != 0)
  {
LABEL_10:
    v35 = 2654435761 * self->_relayError;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_50;
  }

LABEL_49:
  v35 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_11:
    v34 = 2654435761 * self->_invitationServiceError;
    if ((*&has & 4) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_51;
  }

LABEL_50:
  v34 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_12:
    v33 = 2654435761 * self->_callDuration;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_52;
  }

LABEL_51:
  v33 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_13:
    v32 = 2654435761 * self->_diagnosticPingMin;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_53;
  }

LABEL_52:
  v32 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_14:
    v31 = 2654435761 * self->_diagnosticPingAvg;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_54;
  }

LABEL_53:
  v31 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_15:
    v4 = 2654435761 * self->_diagnosticPingMax;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_55;
  }

LABEL_54:
  v4 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_16:
    v5 = 2654435761 * self->_diagnosticPingPacketLoss;
    if ((*&has & 0x800000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_56;
  }

LABEL_55:
  v5 = 0;
  if ((*&has & 0x800000) != 0)
  {
LABEL_17:
    v6 = 2654435761 * self->_isNetworkEnabled;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_57;
  }

LABEL_56:
  v6 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_18:
    v7 = 2654435761 * self->_isNetworkActive;
    if ((*&has & 0x1000000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_58;
  }

LABEL_57:
  v7 = 0;
  if ((*&has & 0x1000000) != 0)
  {
LABEL_19:
    v8 = 2654435761 * self->_isNetworkReachable;
    if ((*&has & 0x40000000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_59;
  }

LABEL_58:
  v8 = 0;
  if ((*&has & 0x40000000) != 0)
  {
LABEL_20:
    v9 = 2654435761 * self->_networkCheckResult;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_60;
  }

LABEL_59:
  v9 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_21:
    v10 = 2654435761 * self->_frontCameraCaptureDuration;
    if ((*&has & 2) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_61;
  }

LABEL_60:
  v10 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_22:
    v11 = 2654435761 * self->_backCameraCaptureDuration;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_62;
  }

LABEL_61:
  v11 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_23:
    v12 = 2654435761 * self->_dataRate;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_63;
  }

LABEL_62:
  v12 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_24:
    v13 = 2654435761 * self->_gksError;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_64;
  }

LABEL_63:
  v13 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_25:
    v14 = 2654435761 * self->_connectDuration;
    if ((*&has & 0x1000000000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_65;
  }

LABEL_64:
  v14 = 0;
  if ((*&has & 0x1000000000) != 0)
  {
LABEL_26:
    v15 = 2654435761 * self->_remoteNetworkConnection;
    if ((*&has & 0x10000000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_66;
  }

LABEL_65:
  v15 = 0;
  if ((*&has & 0x10000000) != 0)
  {
LABEL_27:
    v16 = 2654435761 * self->_localNetworkConnection;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_67;
  }

LABEL_66:
  v16 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_28:
    v17 = 2654435761 * self->_connectionType;
    if ((*&has & 0x2000000000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_68;
  }

LABEL_67:
  v17 = 0;
  if ((*&has & 0x2000000000) != 0)
  {
LABEL_29:
    v18 = 2654435761 * self->_usesRelay;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_69;
  }

LABEL_68:
  v18 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_30:
    v19 = 2654435761 * self->_currentNatType;
    if ((*&has & 0x800000000) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_70;
  }

LABEL_69:
  v19 = 0;
  if ((*&has & 0x800000000) != 0)
  {
LABEL_31:
    v20 = 2654435761 * self->_remoteNatType;
    if ((*&has & 0x200000000) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_71;
  }

LABEL_70:
  v20 = 0;
  if ((*&has & 0x200000000) != 0)
  {
LABEL_32:
    v21 = 2654435761 * self->_relayConnectDuration;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_72;
  }

LABEL_71:
  v21 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_33:
    v22 = 2654435761 * self->_isInitiator;
    if ((*&has & 0x4000000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_73;
  }

LABEL_72:
  v22 = 0;
  if ((*&has & 0x4000000) != 0)
  {
LABEL_34:
    v23 = 2654435761 * self->_isVideoInterrupted;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_74;
  }

LABEL_73:
  v23 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_35:
    v24 = 2654435761 * self->_isAudioInterrupted;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_75;
  }

LABEL_74:
  v24 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_36:
    v25 = 2654435761 * self->_isCallUpgrade;
    if ((*&has & 0x8000000) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_76;
  }

LABEL_75:
  v25 = 0;
  if ((*&has & 0x8000000) != 0)
  {
LABEL_37:
    v26 = 2654435761 * self->_linkQuality;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_77;
  }

LABEL_76:
  v26 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_38:
    v27 = 2654435761 * self->_gksReturnCode;
    if ((*&has & 0x2000000) != 0)
    {
      goto LABEL_39;
    }

LABEL_78:
    v28 = 0;
    if ((*&has & 0x80000000) != 0)
    {
      goto LABEL_40;
    }

LABEL_79:
    v29 = 0;
    return v43 ^ v44 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29;
  }

LABEL_77:
  v27 = 0;
  if ((*&has & 0x2000000) == 0)
  {
    goto LABEL_78;
  }

LABEL_39:
  v28 = 2654435761 * self->_isVideo;
  if ((*&has & 0x80000000) == 0)
  {
    goto LABEL_79;
  }

LABEL_40:
  v29 = 2654435761 * self->_onLockScreen;
  return v43 ^ v44 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 11))
  {
    [(AWDFaceTimeCallEnded *)self setGuid:?];
  }

  v5 = *(a3 + 180);
  if (v5)
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1uLL;
    v5 = *(a3 + 180);
    if ((v5 & 0x1000) == 0)
    {
LABEL_5:
      if ((v5 & 0x8000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_46;
    }
  }

  else if ((v5 & 0x1000) == 0)
  {
    goto LABEL_5;
  }

  self->_endedReason = *(a3 + 15);
  *&self->_has |= 0x1000uLL;
  v5 = *(a3 + 180);
  if ((v5 & 0x8000) == 0)
  {
LABEL_6:
    if ((v5 & 0x4000000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_genericError = *(a3 + 18);
  *&self->_has |= 0x8000uLL;
  v5 = *(a3 + 180);
  if ((v5 & 0x4000000000) == 0)
  {
LABEL_7:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_viceroyError = *(a3 + 44);
  *&self->_has |= 0x4000000000uLL;
  v5 = *(a3 + 180);
  if ((v5 & 0x4000) == 0)
  {
LABEL_8:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_gameKitError = *(a3 + 17);
  *&self->_has |= 0x4000uLL;
  v5 = *(a3 + 180);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_messageDeliveryError = *(a3 + 35);
  *&self->_has |= 0x20000000uLL;
  v5 = *(a3 + 180);
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_conferenceMiscError = *(a3 + 6);
  *&self->_has |= 8uLL;
  v5 = *(a3 + 180);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_11:
    if ((v5 & 0x400000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_registrationError = *(a3 + 38);
  *&self->_has |= 0x100000000uLL;
  v5 = *(a3 + 180);
  if ((v5 & 0x400000000) == 0)
  {
LABEL_12:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_relayError = *(a3 + 40);
  *&self->_has |= 0x400000000uLL;
  v5 = *(a3 + 180);
  if ((v5 & 0x40000) == 0)
  {
LABEL_13:
    if ((v5 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_invitationServiceError = *(a3 + 24);
  *&self->_has |= 0x40000uLL;
  v5 = *(a3 + 180);
  if ((v5 & 4) == 0)
  {
LABEL_14:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_callDuration = *(a3 + 5);
  *&self->_has |= 4uLL;
  v5 = *(a3 + 180);
  if ((v5 & 0x400) == 0)
  {
LABEL_15:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_diagnosticPingMin = *(a3 + 13);
  *&self->_has |= 0x400uLL;
  v5 = *(a3 + 180);
  if ((v5 & 0x100) == 0)
  {
LABEL_16:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_diagnosticPingAvg = *(a3 + 11);
  *&self->_has |= 0x100uLL;
  v5 = *(a3 + 180);
  if ((v5 & 0x200) == 0)
  {
LABEL_17:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_diagnosticPingMax = *(a3 + 12);
  *&self->_has |= 0x200uLL;
  v5 = *(a3 + 180);
  if ((v5 & 0x800) == 0)
  {
LABEL_18:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_diagnosticPingPacketLoss = *(a3 + 14);
  *&self->_has |= 0x800uLL;
  v5 = *(a3 + 180);
  if ((v5 & 0x800000) == 0)
  {
LABEL_19:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_isNetworkEnabled = *(a3 + 29);
  *&self->_has |= 0x800000uLL;
  v5 = *(a3 + 180);
  if ((v5 & 0x400000) == 0)
  {
LABEL_20:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_61;
  }

LABEL_60:
  self->_isNetworkActive = *(a3 + 28);
  *&self->_has |= 0x400000uLL;
  v5 = *(a3 + 180);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_21:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_62;
  }

LABEL_61:
  self->_isNetworkReachable = *(a3 + 30);
  *&self->_has |= 0x1000000uLL;
  v5 = *(a3 + 180);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_22:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_63;
  }

LABEL_62:
  self->_networkCheckResult = *(a3 + 36);
  *&self->_has |= 0x40000000uLL;
  v5 = *(a3 + 180);
  if ((v5 & 0x2000) == 0)
  {
LABEL_23:
    if ((v5 & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_64;
  }

LABEL_63:
  self->_frontCameraCaptureDuration = *(a3 + 16);
  *&self->_has |= 0x2000uLL;
  v5 = *(a3 + 180);
  if ((v5 & 2) == 0)
  {
LABEL_24:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_65;
  }

LABEL_64:
  self->_backCameraCaptureDuration = *(a3 + 4);
  *&self->_has |= 2uLL;
  v5 = *(a3 + 180);
  if ((v5 & 0x80) == 0)
  {
LABEL_25:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_66;
  }

LABEL_65:
  self->_dataRate = *(a3 + 10);
  *&self->_has |= 0x80uLL;
  v5 = *(a3 + 180);
  if ((v5 & 0x10000) == 0)
  {
LABEL_26:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_67;
  }

LABEL_66:
  self->_gksError = *(a3 + 19);
  *&self->_has |= 0x10000uLL;
  v5 = *(a3 + 180);
  if ((v5 & 0x10) == 0)
  {
LABEL_27:
    if ((v5 & 0x1000000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_68;
  }

LABEL_67:
  self->_connectDuration = *(a3 + 7);
  *&self->_has |= 0x10uLL;
  v5 = *(a3 + 180);
  if ((v5 & 0x1000000000) == 0)
  {
LABEL_28:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_69;
  }

LABEL_68:
  self->_remoteNetworkConnection = *(a3 + 42);
  *&self->_has |= 0x1000000000uLL;
  v5 = *(a3 + 180);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_29:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_70;
  }

LABEL_69:
  self->_localNetworkConnection = *(a3 + 34);
  *&self->_has |= 0x10000000uLL;
  v5 = *(a3 + 180);
  if ((v5 & 0x20) == 0)
  {
LABEL_30:
    if ((v5 & 0x2000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_71;
  }

LABEL_70:
  self->_connectionType = *(a3 + 8);
  *&self->_has |= 0x20uLL;
  v5 = *(a3 + 180);
  if ((v5 & 0x2000000000) == 0)
  {
LABEL_31:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_72;
  }

LABEL_71:
  self->_usesRelay = *(a3 + 43);
  *&self->_has |= 0x2000000000uLL;
  v5 = *(a3 + 180);
  if ((v5 & 0x40) == 0)
  {
LABEL_32:
    if ((v5 & 0x800000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_73;
  }

LABEL_72:
  self->_currentNatType = *(a3 + 9);
  *&self->_has |= 0x40uLL;
  v5 = *(a3 + 180);
  if ((v5 & 0x800000000) == 0)
  {
LABEL_33:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_74;
  }

LABEL_73:
  self->_remoteNatType = *(a3 + 41);
  *&self->_has |= 0x800000000uLL;
  v5 = *(a3 + 180);
  if ((v5 & 0x200000000) == 0)
  {
LABEL_34:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_75;
  }

LABEL_74:
  self->_relayConnectDuration = *(a3 + 39);
  *&self->_has |= 0x200000000uLL;
  v5 = *(a3 + 180);
  if ((v5 & 0x200000) == 0)
  {
LABEL_35:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_76;
  }

LABEL_75:
  self->_isInitiator = *(a3 + 27);
  *&self->_has |= 0x200000uLL;
  v5 = *(a3 + 180);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_36:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_77;
  }

LABEL_76:
  self->_isVideoInterrupted = *(a3 + 32);
  *&self->_has |= 0x4000000uLL;
  v5 = *(a3 + 180);
  if ((v5 & 0x80000) == 0)
  {
LABEL_37:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_78;
  }

LABEL_77:
  self->_isAudioInterrupted = *(a3 + 25);
  *&self->_has |= 0x80000uLL;
  v5 = *(a3 + 180);
  if ((v5 & 0x100000) == 0)
  {
LABEL_38:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_79;
  }

LABEL_78:
  self->_isCallUpgrade = *(a3 + 26);
  *&self->_has |= 0x100000uLL;
  v5 = *(a3 + 180);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_39:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_80;
  }

LABEL_79:
  self->_linkQuality = *(a3 + 33);
  *&self->_has |= 0x8000000uLL;
  v5 = *(a3 + 180);
  if ((v5 & 0x20000) == 0)
  {
LABEL_40:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_81;
  }

LABEL_80:
  self->_gksReturnCode = *(a3 + 20);
  *&self->_has |= 0x20000uLL;
  v5 = *(a3 + 180);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_41:
    if ((v5 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_42;
  }

LABEL_81:
  self->_isVideo = *(a3 + 31);
  *&self->_has |= 0x2000000uLL;
  if ((*(a3 + 180) & 0x80000000) == 0)
  {
    return;
  }

LABEL_42:
  self->_onLockScreen = *(a3 + 37);
  *&self->_has |= 0x80000000uLL;
}

@end