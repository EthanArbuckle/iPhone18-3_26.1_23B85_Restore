@interface AWDWiFiNWActivityAssoc
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAssocDoneSuccess:(BOOL)success;
- (void)setHasAssocFailed:(BOOL)failed;
- (void)setHasAssocReady:(BOOL)ready;
- (void)setHasAssocSuccess:(BOOL)success;
- (void)setHasAuthFailed:(BOOL)failed;
- (void)setHasAuthSuccess:(BOOL)success;
- (void)setHasBssDisallowEvent:(BOOL)event;
- (void)setHasBssidChanged:(BOOL)changed;
- (void)setHasChanSwitchEvent:(BOOL)event;
- (void)setHasCrashTracerTrig:(BOOL)trig;
- (void)setHasDeauthReceived:(BOOL)received;
- (void)setHasDecryptError:(BOOL)error;
- (void)setHasDisassocReceived:(BOOL)received;
- (void)setHasDpsSymptom:(BOOL)symptom;
- (void)setHasEscoTrafficInd:(BOOL)ind;
- (void)setHasHomeChanQualChanged:(BOOL)changed;
- (void)setHasLinkChanged:(BOOL)changed;
- (void)setHasMacAddrChanged:(BOOL)changed;
- (void)setHasPruned:(BOOL)pruned;
- (void)setHasRc1Stats:(BOOL)stats;
- (void)setHasRc2Stats:(BOOL)stats;
- (void)setHasReassocFailed:(BOOL)failed;
- (void)setHasReassocSuccess:(BOOL)success;
- (void)setHasRoamFailed:(BOOL)failed;
- (void)setHasRoamPrep:(BOOL)prep;
- (void)setHasRoamScanEnd:(BOOL)end;
- (void)setHasRoamScanStart:(BOOL)start;
- (void)setHasRoamSuccess:(BOOL)success;
- (void)setHasRssiChanged:(BOOL)changed;
- (void)setHasScanDone:(BOOL)done;
- (void)setHasScanInternalDone:(BOOL)done;
- (void)setHasScanResults:(BOOL)results;
- (void)setHasScanSummary:(BOOL)summary;
- (void)setHasSlowWiFiSymptom:(BOOL)symptom;
- (void)setHasSsidChanged:(BOOL)changed;
- (void)setHasSupplicant:(BOOL)supplicant;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiNWActivityAssoc

- (void)setHasAuthSuccess:(BOOL)success
{
  v3 = 64;
  if (!success)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setHasAuthFailed:(BOOL)failed
{
  v3 = 32;
  if (!failed)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setHasAssocSuccess:(BOOL)success
{
  v3 = 16;
  if (!success)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (void)setHasAssocFailed:(BOOL)failed
{
  v3 = 4;
  if (!failed)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setHasReassocSuccess:(BOOL)success
{
  v3 = 0x800000;
  if (!success)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setHasReassocFailed:(BOOL)failed
{
  v3 = 0x400000;
  if (!failed)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)setHasLinkChanged:(BOOL)changed
{
  v3 = 0x20000;
  if (!changed)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)setHasRoamSuccess:(BOOL)success
{
  v3 = 0x10000000;
  if (!success)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setHasRoamFailed:(BOOL)failed
{
  v3 = 0x1000000;
  if (!failed)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setHasAssocDoneSuccess:(BOOL)success
{
  v3 = 2;
  if (!success)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setHasAssocReady:(BOOL)ready
{
  v3 = 8;
  if (!ready)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (void)setHasSsidChanged:(BOOL)changed
{
  v3 = 0x800000000;
  if (!changed)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3);
}

- (void)setHasBssidChanged:(BOOL)changed
{
  v3 = 256;
  if (!changed)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setHasDeauthReceived:(BOOL)received
{
  v3 = 2048;
  if (!received)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setHasDisassocReceived:(BOOL)received
{
  v3 = 0x2000;
  if (!received)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)setHasDecryptError:(BOOL)error
{
  v3 = 4096;
  if (!error)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setHasPruned:(BOOL)pruned
{
  v3 = 0x80000;
  if (!pruned)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)setHasSupplicant:(BOOL)supplicant
{
  v3 = 0x1000000000;
  if (!supplicant)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3);
}

- (void)setHasMacAddrChanged:(BOOL)changed
{
  v3 = 0x40000;
  if (!changed)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setHasRssiChanged:(BOOL)changed
{
  v3 = 0x20000000;
  if (!changed)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)setHasHomeChanQualChanged:(BOOL)changed
{
  v3 = 0x10000;
  if (!changed)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (void)setHasChanSwitchEvent:(BOOL)event
{
  v3 = 512;
  if (!event)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasRoamPrep:(BOOL)prep
{
  v3 = 0x2000000;
  if (!prep)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setHasRoamScanStart:(BOOL)start
{
  v3 = 0x8000000;
  if (!start)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)setHasRoamScanEnd:(BOOL)end
{
  v3 = 0x4000000;
  if (!end)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setHasScanResults:(BOOL)results
{
  v3 = 0x100000000;
  if (!results)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setHasScanSummary:(BOOL)summary
{
  v3 = 0x200000000;
  if (!summary)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)setHasScanDone:(BOOL)done
{
  v3 = 0x40000000;
  if (!done)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setHasScanInternalDone:(BOOL)done
{
  v3 = 0x80000000;
  if (!done)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (void)setHasBssDisallowEvent:(BOOL)event
{
  v3 = 128;
  if (!event)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (void)setHasSlowWiFiSymptom:(BOOL)symptom
{
  v3 = 0x400000000;
  if (!symptom)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (void)setHasDpsSymptom:(BOOL)symptom
{
  v3 = 0x4000;
  if (!symptom)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setHasCrashTracerTrig:(BOOL)trig
{
  v3 = 1024;
  if (!trig)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setHasRc1Stats:(BOOL)stats
{
  v3 = 0x100000;
  if (!stats)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setHasRc2Stats:(BOOL)stats
{
  v3 = 0x200000;
  if (!stats)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)setHasEscoTrafficInd:(BOOL)ind
{
  v3 = 0x8000;
  if (!ind)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiNWActivityAssoc;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiNWActivityAssoc description](&v3, sel_description), -[AWDWiFiNWActivityAssoc dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((*&has & 0x40) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_authSuccess), @"authSuccess"}];
    has = self->_has;
    if ((*&has & 0x20) == 0)
    {
LABEL_3:
      if ((*&has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_42;
    }
  }

  else if ((*&has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_authFailed), @"authFailed"}];
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_4:
    if ((*&has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

LABEL_42:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_assocSuccess), @"assocSuccess"}];
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_5:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_44;
  }

LABEL_43:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_assocFailed), @"assocFailed"}];
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_6:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_45;
  }

LABEL_44:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_reassocSuccess), @"reassocSuccess"}];
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_7:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_45:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_reassocFailed), @"reassocFailed"}];
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_8:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_47;
  }

LABEL_46:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_linkChanged), @"linkChanged"}];
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_48;
  }

LABEL_47:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_roamSuccess), @"roamSuccess"}];
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_10:
    if ((*&has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_49;
  }

LABEL_48:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_roamFailed), @"roamFailed"}];
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_11:
    if ((*&has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_50;
  }

LABEL_49:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_assocDoneSuccess), @"assocDoneSuccess"}];
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_12:
    if ((*&has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_51;
  }

LABEL_50:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_assocDoneFailed), @"assocDoneFailed"}];
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_13:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_52;
  }

LABEL_51:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_assocReady), @"assocReady"}];
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_53;
  }

LABEL_52:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_ssidChanged), @"ssidChanged"}];
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_15:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_54;
  }

LABEL_53:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_bssidChanged), @"bssidChanged"}];
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_16:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_55;
  }

LABEL_54:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_deauthReceived), @"deauthReceived"}];
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_17:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_56;
  }

LABEL_55:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_disassocReceived), @"disassocReceived"}];
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_18:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_57;
  }

LABEL_56:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_decryptError), @"decryptError"}];
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_19:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_58;
  }

LABEL_57:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_pruned), @"pruned"}];
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_20:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_59;
  }

LABEL_58:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_supplicant), @"supplicant"}];
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_21:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_60;
  }

LABEL_59:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_macAddrChanged), @"macAddrChanged"}];
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_61;
  }

LABEL_60:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_rssiChanged), @"rssiChanged"}];
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_23:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_62;
  }

LABEL_61:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_homeChanQualChanged), @"homeChanQualChanged"}];
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_24:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_63;
  }

LABEL_62:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_chanSwitchEvent), @"chanSwitchEvent"}];
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_25:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_64;
  }

LABEL_63:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_roamPrep), @"roamPrep"}];
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_26:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_65;
  }

LABEL_64:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_roamScanStart), @"roamScanStart"}];
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_27:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_66;
  }

LABEL_65:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_roamScanEnd), @"roamScanEnd"}];
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_28:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_67;
  }

LABEL_66:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_scanResults), @"scanResults"}];
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_68;
  }

LABEL_67:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_scanSummary), @"scanSummary"}];
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_30:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_69;
  }

LABEL_68:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_scanDone), @"scanDone"}];
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_70;
  }

LABEL_69:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_scanInternalDone), @"scanInternalDone"}];
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_32:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_71;
  }

LABEL_70:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_bssDisallowEvent), @"bssDisallowEvent"}];
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_72;
  }

LABEL_71:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_slowWiFiSymptom), @"slowWiFiSymptom"}];
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_34:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_73;
  }

LABEL_72:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_dpsSymptom), @"dpsSymptom"}];
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_35:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_74;
  }

LABEL_73:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_crashTracerTrig), @"crashTracerTrig"}];
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_36:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_37;
    }

LABEL_75:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_rc2Stats), @"rc2Stats"}];
    if ((*&self->_has & 0x8000) == 0)
    {
      return dictionary;
    }

    goto LABEL_38;
  }

LABEL_74:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_rc1Stats), @"rc1Stats"}];
  has = self->_has;
  if ((*&has & 0x200000) != 0)
  {
    goto LABEL_75;
  }

LABEL_37:
  if ((*&has & 0x8000) != 0)
  {
LABEL_38:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_escoTrafficInd), @"escoTrafficInd"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((*&has & 0x40) != 0)
  {
    authSuccess = self->_authSuccess;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((*&has & 0x20) == 0)
    {
LABEL_3:
      if ((*&has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_41;
    }
  }

  else if ((*&has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  authFailed = self->_authFailed;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_4:
    if ((*&has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_42;
  }

LABEL_41:
  assocSuccess = self->_assocSuccess;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_5:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_43;
  }

LABEL_42:
  assocFailed = self->_assocFailed;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_6:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

LABEL_43:
  reassocSuccess = self->_reassocSuccess;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_7:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_45;
  }

LABEL_44:
  reassocFailed = self->_reassocFailed;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_8:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_45:
  linkChanged = self->_linkChanged;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_47;
  }

LABEL_46:
  roamSuccess = self->_roamSuccess;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_10:
    if ((*&has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_47:
  roamFailed = self->_roamFailed;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_11:
    if ((*&has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_49;
  }

LABEL_48:
  assocDoneSuccess = self->_assocDoneSuccess;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_12:
    if ((*&has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_50;
  }

LABEL_49:
  assocDoneFailed = self->_assocDoneFailed;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_13:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

LABEL_50:
  assocReady = self->_assocReady;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_52;
  }

LABEL_51:
  ssidChanged = self->_ssidChanged;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_15:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_53;
  }

LABEL_52:
  bssidChanged = self->_bssidChanged;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_16:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_54;
  }

LABEL_53:
  deauthReceived = self->_deauthReceived;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_17:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_55;
  }

LABEL_54:
  disassocReceived = self->_disassocReceived;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_18:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_56;
  }

LABEL_55:
  decryptError = self->_decryptError;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_19:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_57;
  }

LABEL_56:
  pruned = self->_pruned;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_20:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_58;
  }

LABEL_57:
  supplicant = self->_supplicant;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_21:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_59;
  }

LABEL_58:
  macAddrChanged = self->_macAddrChanged;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_60;
  }

LABEL_59:
  rssiChanged = self->_rssiChanged;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_23:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_61;
  }

LABEL_60:
  homeChanQualChanged = self->_homeChanQualChanged;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_24:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_62;
  }

LABEL_61:
  chanSwitchEvent = self->_chanSwitchEvent;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_25:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_63;
  }

LABEL_62:
  roamPrep = self->_roamPrep;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_26:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_64;
  }

LABEL_63:
  roamScanStart = self->_roamScanStart;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_27:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_65;
  }

LABEL_64:
  roamScanEnd = self->_roamScanEnd;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_28:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_66;
  }

LABEL_65:
  scanResults = self->_scanResults;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_67;
  }

LABEL_66:
  scanSummary = self->_scanSummary;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_30:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_68;
  }

LABEL_67:
  scanDone = self->_scanDone;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_69;
  }

LABEL_68:
  scanInternalDone = self->_scanInternalDone;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_32:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_70;
  }

LABEL_69:
  bssDisallowEvent = self->_bssDisallowEvent;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_71;
  }

LABEL_70:
  slowWiFiSymptom = self->_slowWiFiSymptom;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_34:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_72;
  }

LABEL_71:
  dpsSymptom = self->_dpsSymptom;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_35:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_73;
  }

LABEL_72:
  crashTracerTrig = self->_crashTracerTrig;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_36:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_37;
    }

LABEL_74:
    rc2Stats = self->_rc2Stats;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x8000) == 0)
    {
      return;
    }

    goto LABEL_75;
  }

LABEL_73:
  rc1Stats = self->_rc1Stats;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200000) != 0)
  {
    goto LABEL_74;
  }

LABEL_37:
  if ((*&has & 0x8000) == 0)
  {
    return;
  }

LABEL_75:
  escoTrafficInd = self->_escoTrafficInd;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((*&has & 0x40) != 0)
  {
    *(to + 8) = self->_authSuccess;
    *(to + 156) |= 0x40uLL;
    has = self->_has;
    if ((*&has & 0x20) == 0)
    {
LABEL_3:
      if ((*&has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_41;
    }
  }

  else if ((*&has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(to + 7) = self->_authFailed;
  *(to + 156) |= 0x20uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_4:
    if ((*&has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(to + 6) = self->_assocSuccess;
  *(to + 156) |= 0x10uLL;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_5:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(to + 4) = self->_assocFailed;
  *(to + 156) |= 4uLL;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_6:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(to + 25) = self->_reassocSuccess;
  *(to + 156) |= 0x800000uLL;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_7:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(to + 24) = self->_reassocFailed;
  *(to + 156) |= 0x400000uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_8:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(to + 19) = self->_linkChanged;
  *(to + 156) |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(to + 30) = self->_roamSuccess;
  *(to + 156) |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_10:
    if ((*&has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(to + 26) = self->_roamFailed;
  *(to + 156) |= 0x1000000uLL;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_11:
    if ((*&has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(to + 3) = self->_assocDoneSuccess;
  *(to + 156) |= 2uLL;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_12:
    if ((*&has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(to + 2) = self->_assocDoneFailed;
  *(to + 156) |= 1uLL;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_13:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(to + 5) = self->_assocReady;
  *(to + 156) |= 8uLL;
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(to + 37) = self->_ssidChanged;
  *(to + 156) |= 0x800000000uLL;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_15:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(to + 10) = self->_bssidChanged;
  *(to + 156) |= 0x100uLL;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_16:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(to + 13) = self->_deauthReceived;
  *(to + 156) |= 0x800uLL;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_17:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(to + 15) = self->_disassocReceived;
  *(to + 156) |= 0x2000uLL;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_18:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(to + 14) = self->_decryptError;
  *(to + 156) |= 0x1000uLL;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_19:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(to + 21) = self->_pruned;
  *(to + 156) |= 0x80000uLL;
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_20:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(to + 38) = self->_supplicant;
  *(to + 156) |= 0x1000000000uLL;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_21:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(to + 20) = self->_macAddrChanged;
  *(to + 156) |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(to + 31) = self->_rssiChanged;
  *(to + 156) |= 0x20000000uLL;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_23:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(to + 18) = self->_homeChanQualChanged;
  *(to + 156) |= 0x10000uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_24:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(to + 11) = self->_chanSwitchEvent;
  *(to + 156) |= 0x200uLL;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_25:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(to + 27) = self->_roamPrep;
  *(to + 156) |= 0x2000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_26:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(to + 29) = self->_roamScanStart;
  *(to + 156) |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_27:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(to + 28) = self->_roamScanEnd;
  *(to + 156) |= 0x4000000uLL;
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_28:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(to + 34) = self->_scanResults;
  *(to + 156) |= 0x100000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(to + 35) = self->_scanSummary;
  *(to + 156) |= 0x200000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_30:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(to + 32) = self->_scanDone;
  *(to + 156) |= 0x40000000uLL;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(to + 33) = self->_scanInternalDone;
  *(to + 156) |= 0x80000000uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_32:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(to + 9) = self->_bssDisallowEvent;
  *(to + 156) |= 0x80uLL;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(to + 36) = self->_slowWiFiSymptom;
  *(to + 156) |= 0x400000000uLL;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_34:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(to + 16) = self->_dpsSymptom;
  *(to + 156) |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_35:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(to + 12) = self->_crashTracerTrig;
  *(to + 156) |= 0x400uLL;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_36:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(to + 22) = self->_rc1Stats;
  *(to + 156) |= 0x100000uLL;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_37:
    if ((*&has & 0x8000) == 0)
    {
      return;
    }

LABEL_75:
    *(to + 17) = self->_escoTrafficInd;
    *(to + 156) |= 0x8000uLL;
    return;
  }

LABEL_74:
  *(to + 23) = self->_rc2Stats;
  *(to + 156) |= 0x200000uLL;
  if ((*&self->_has & 0x8000) != 0)
  {
    goto LABEL_75;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((*&has & 0x40) != 0)
  {
    *(result + 8) = self->_authSuccess;
    *(result + 156) |= 0x40uLL;
    has = self->_has;
    if ((*&has & 0x20) == 0)
    {
LABEL_3:
      if ((*&has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_42;
    }
  }

  else if ((*&has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(result + 7) = self->_authFailed;
  *(result + 156) |= 0x20uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_4:
    if ((*&has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(result + 6) = self->_assocSuccess;
  *(result + 156) |= 0x10uLL;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_5:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(result + 4) = self->_assocFailed;
  *(result + 156) |= 4uLL;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_6:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(result + 25) = self->_reassocSuccess;
  *(result + 156) |= 0x800000uLL;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_7:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(result + 24) = self->_reassocFailed;
  *(result + 156) |= 0x400000uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_8:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(result + 19) = self->_linkChanged;
  *(result + 156) |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(result + 30) = self->_roamSuccess;
  *(result + 156) |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_10:
    if ((*&has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(result + 26) = self->_roamFailed;
  *(result + 156) |= 0x1000000uLL;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_11:
    if ((*&has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(result + 3) = self->_assocDoneSuccess;
  *(result + 156) |= 2uLL;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_12:
    if ((*&has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(result + 2) = self->_assocDoneFailed;
  *(result + 156) |= 1uLL;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_13:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(result + 5) = self->_assocReady;
  *(result + 156) |= 8uLL;
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(result + 37) = self->_ssidChanged;
  *(result + 156) |= 0x800000000uLL;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_15:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(result + 10) = self->_bssidChanged;
  *(result + 156) |= 0x100uLL;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_16:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(result + 13) = self->_deauthReceived;
  *(result + 156) |= 0x800uLL;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_17:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(result + 15) = self->_disassocReceived;
  *(result + 156) |= 0x2000uLL;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_18:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(result + 14) = self->_decryptError;
  *(result + 156) |= 0x1000uLL;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_19:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(result + 21) = self->_pruned;
  *(result + 156) |= 0x80000uLL;
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_20:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(result + 38) = self->_supplicant;
  *(result + 156) |= 0x1000000000uLL;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_21:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(result + 20) = self->_macAddrChanged;
  *(result + 156) |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(result + 31) = self->_rssiChanged;
  *(result + 156) |= 0x20000000uLL;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_23:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(result + 18) = self->_homeChanQualChanged;
  *(result + 156) |= 0x10000uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_24:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(result + 11) = self->_chanSwitchEvent;
  *(result + 156) |= 0x200uLL;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_25:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(result + 27) = self->_roamPrep;
  *(result + 156) |= 0x2000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_26:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(result + 29) = self->_roamScanStart;
  *(result + 156) |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_27:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(result + 28) = self->_roamScanEnd;
  *(result + 156) |= 0x4000000uLL;
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_28:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(result + 34) = self->_scanResults;
  *(result + 156) |= 0x100000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(result + 35) = self->_scanSummary;
  *(result + 156) |= 0x200000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_30:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(result + 32) = self->_scanDone;
  *(result + 156) |= 0x40000000uLL;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(result + 33) = self->_scanInternalDone;
  *(result + 156) |= 0x80000000uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_32:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(result + 9) = self->_bssDisallowEvent;
  *(result + 156) |= 0x80uLL;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(result + 36) = self->_slowWiFiSymptom;
  *(result + 156) |= 0x400000000uLL;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_34:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(result + 16) = self->_dpsSymptom;
  *(result + 156) |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_35:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(result + 12) = self->_crashTracerTrig;
  *(result + 156) |= 0x400uLL;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_36:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(result + 22) = self->_rc1Stats;
  *(result + 156) |= 0x100000uLL;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_37:
    if ((*&has & 0x8000) == 0)
    {
      return result;
    }

    goto LABEL_38;
  }

LABEL_75:
  *(result + 23) = self->_rc2Stats;
  *(result + 156) |= 0x200000uLL;
  if ((*&self->_has & 0x8000) == 0)
  {
    return result;
  }

LABEL_38:
  *(result + 17) = self->_escoTrafficInd;
  *(result + 156) |= 0x8000uLL;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 156);
    if ((*&has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_authSuccess != *(equal + 8))
      {
        goto LABEL_186;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
LABEL_186:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_authFailed != *(equal + 7))
      {
        goto LABEL_186;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_186;
    }

    if ((*&has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_assocSuccess != *(equal + 6))
      {
        goto LABEL_186;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_186;
    }

    if ((*&has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_assocFailed != *(equal + 4))
      {
        goto LABEL_186;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_186;
    }

    if ((*&has & 0x800000) != 0)
    {
      if ((v7 & 0x800000) == 0 || self->_reassocSuccess != *(equal + 25))
      {
        goto LABEL_186;
      }
    }

    else if ((v7 & 0x800000) != 0)
    {
      goto LABEL_186;
    }

    if ((*&has & 0x400000) != 0)
    {
      if ((v7 & 0x400000) == 0 || self->_reassocFailed != *(equal + 24))
      {
        goto LABEL_186;
      }
    }

    else if ((v7 & 0x400000) != 0)
    {
      goto LABEL_186;
    }

    if ((*&has & 0x20000) != 0)
    {
      if ((v7 & 0x20000) == 0 || self->_linkChanged != *(equal + 19))
      {
        goto LABEL_186;
      }
    }

    else if ((v7 & 0x20000) != 0)
    {
      goto LABEL_186;
    }

    if ((*&has & 0x10000000) != 0)
    {
      if ((v7 & 0x10000000) == 0 || self->_roamSuccess != *(equal + 30))
      {
        goto LABEL_186;
      }
    }

    else if ((v7 & 0x10000000) != 0)
    {
      goto LABEL_186;
    }

    if ((*&has & 0x1000000) != 0)
    {
      if ((v7 & 0x1000000) == 0 || self->_roamFailed != *(equal + 26))
      {
        goto LABEL_186;
      }
    }

    else if ((v7 & 0x1000000) != 0)
    {
      goto LABEL_186;
    }

    if ((*&has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_assocDoneSuccess != *(equal + 3))
      {
        goto LABEL_186;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_186;
    }

    if (*&has)
    {
      if ((v7 & 1) == 0 || self->_assocDoneFailed != *(equal + 2))
      {
        goto LABEL_186;
      }
    }

    else if (v7)
    {
      goto LABEL_186;
    }

    if ((*&has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_assocReady != *(equal + 5))
      {
        goto LABEL_186;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_186;
    }

    if ((*&has & 0x800000000) != 0)
    {
      if ((v7 & 0x800000000) == 0 || self->_ssidChanged != *(equal + 37))
      {
        goto LABEL_186;
      }
    }

    else if ((v7 & 0x800000000) != 0)
    {
      goto LABEL_186;
    }

    if ((*&has & 0x100) != 0)
    {
      if ((v7 & 0x100) == 0 || self->_bssidChanged != *(equal + 10))
      {
        goto LABEL_186;
      }
    }

    else if ((v7 & 0x100) != 0)
    {
      goto LABEL_186;
    }

    if ((*&has & 0x800) != 0)
    {
      if ((v7 & 0x800) == 0 || self->_deauthReceived != *(equal + 13))
      {
        goto LABEL_186;
      }
    }

    else if ((v7 & 0x800) != 0)
    {
      goto LABEL_186;
    }

    if ((*&has & 0x2000) != 0)
    {
      if ((v7 & 0x2000) == 0 || self->_disassocReceived != *(equal + 15))
      {
        goto LABEL_186;
      }
    }

    else if ((v7 & 0x2000) != 0)
    {
      goto LABEL_186;
    }

    if ((*&has & 0x1000) != 0)
    {
      if ((v7 & 0x1000) == 0 || self->_decryptError != *(equal + 14))
      {
        goto LABEL_186;
      }
    }

    else if ((v7 & 0x1000) != 0)
    {
      goto LABEL_186;
    }

    if ((*&has & 0x80000) != 0)
    {
      if ((v7 & 0x80000) == 0 || self->_pruned != *(equal + 21))
      {
        goto LABEL_186;
      }
    }

    else if ((v7 & 0x80000) != 0)
    {
      goto LABEL_186;
    }

    if ((*&has & 0x1000000000) != 0)
    {
      if ((v7 & 0x1000000000) == 0 || self->_supplicant != *(equal + 38))
      {
        goto LABEL_186;
      }
    }

    else if ((v7 & 0x1000000000) != 0)
    {
      goto LABEL_186;
    }

    if ((*&has & 0x40000) != 0)
    {
      if ((v7 & 0x40000) == 0 || self->_macAddrChanged != *(equal + 20))
      {
        goto LABEL_186;
      }
    }

    else if ((v7 & 0x40000) != 0)
    {
      goto LABEL_186;
    }

    if ((*&has & 0x20000000) != 0)
    {
      if ((v7 & 0x20000000) == 0 || self->_rssiChanged != *(equal + 31))
      {
        goto LABEL_186;
      }
    }

    else if ((v7 & 0x20000000) != 0)
    {
      goto LABEL_186;
    }

    if ((*&has & 0x10000) != 0)
    {
      if ((v7 & 0x10000) == 0 || self->_homeChanQualChanged != *(equal + 18))
      {
        goto LABEL_186;
      }
    }

    else if ((v7 & 0x10000) != 0)
    {
      goto LABEL_186;
    }

    if ((*&has & 0x200) != 0)
    {
      if ((v7 & 0x200) == 0 || self->_chanSwitchEvent != *(equal + 11))
      {
        goto LABEL_186;
      }
    }

    else if ((v7 & 0x200) != 0)
    {
      goto LABEL_186;
    }

    if ((*&has & 0x2000000) != 0)
    {
      if ((v7 & 0x2000000) == 0 || self->_roamPrep != *(equal + 27))
      {
        goto LABEL_186;
      }
    }

    else if ((v7 & 0x2000000) != 0)
    {
      goto LABEL_186;
    }

    if ((*&has & 0x8000000) != 0)
    {
      if ((v7 & 0x8000000) == 0 || self->_roamScanStart != *(equal + 29))
      {
        goto LABEL_186;
      }
    }

    else if ((v7 & 0x8000000) != 0)
    {
      goto LABEL_186;
    }

    if ((*&has & 0x4000000) != 0)
    {
      if ((v7 & 0x4000000) == 0 || self->_roamScanEnd != *(equal + 28))
      {
        goto LABEL_186;
      }
    }

    else if ((v7 & 0x4000000) != 0)
    {
      goto LABEL_186;
    }

    if ((*&has & 0x100000000) != 0)
    {
      if ((v7 & 0x100000000) == 0 || self->_scanResults != *(equal + 34))
      {
        goto LABEL_186;
      }
    }

    else if ((v7 & 0x100000000) != 0)
    {
      goto LABEL_186;
    }

    if ((*&has & 0x200000000) != 0)
    {
      if ((v7 & 0x200000000) == 0 || self->_scanSummary != *(equal + 35))
      {
        goto LABEL_186;
      }
    }

    else if ((v7 & 0x200000000) != 0)
    {
      goto LABEL_186;
    }

    if ((*&has & 0x40000000) != 0)
    {
      if ((v7 & 0x40000000) == 0 || self->_scanDone != *(equal + 32))
      {
        goto LABEL_186;
      }
    }

    else if ((v7 & 0x40000000) != 0)
    {
      goto LABEL_186;
    }

    if ((*&has & 0x80000000) != 0)
    {
      if ((v7 & 0x80000000) == 0 || self->_scanInternalDone != *(equal + 33))
      {
        goto LABEL_186;
      }
    }

    else if ((v7 & 0x80000000) != 0)
    {
      goto LABEL_186;
    }

    if ((*&has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_bssDisallowEvent != *(equal + 9))
      {
        goto LABEL_186;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_186;
    }

    if ((*&has & 0x400000000) != 0)
    {
      if ((v7 & 0x400000000) == 0 || self->_slowWiFiSymptom != *(equal + 36))
      {
        goto LABEL_186;
      }
    }

    else if ((v7 & 0x400000000) != 0)
    {
      goto LABEL_186;
    }

    if ((*&has & 0x4000) != 0)
    {
      if ((v7 & 0x4000) == 0 || self->_dpsSymptom != *(equal + 16))
      {
        goto LABEL_186;
      }
    }

    else if ((v7 & 0x4000) != 0)
    {
      goto LABEL_186;
    }

    if ((*&has & 0x400) != 0)
    {
      if ((v7 & 0x400) == 0 || self->_crashTracerTrig != *(equal + 12))
      {
        goto LABEL_186;
      }
    }

    else if ((v7 & 0x400) != 0)
    {
      goto LABEL_186;
    }

    if ((*&has & 0x100000) != 0)
    {
      if ((v7 & 0x100000) == 0 || self->_rc1Stats != *(equal + 22))
      {
        goto LABEL_186;
      }
    }

    else if ((v7 & 0x100000) != 0)
    {
      goto LABEL_186;
    }

    if ((*&has & 0x200000) != 0)
    {
      if ((v7 & 0x200000) == 0 || self->_rc2Stats != *(equal + 23))
      {
        goto LABEL_186;
      }
    }

    else if ((v7 & 0x200000) != 0)
    {
      goto LABEL_186;
    }

    LOBYTE(v5) = (*(equal + 156) & 0x8000) == 0;
    if ((*&has & 0x8000) != 0)
    {
      if ((v7 & 0x8000) == 0 || self->_escoTrafficInd != *(equal + 17))
      {
        goto LABEL_186;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 0x40) != 0)
  {
    v40 = 2654435761 * self->_authSuccess;
    if ((*&has & 0x20) != 0)
    {
LABEL_3:
      v39 = 2654435761 * self->_authFailed;
      if ((*&has & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_41;
    }
  }

  else
  {
    v40 = 0;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_3;
    }
  }

  v39 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_4:
    v38 = 2654435761 * self->_assocSuccess;
    if ((*&has & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_42;
  }

LABEL_41:
  v38 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_5:
    v37 = 2654435761 * self->_assocFailed;
    if ((*&has & 0x800000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_43;
  }

LABEL_42:
  v37 = 0;
  if ((*&has & 0x800000) != 0)
  {
LABEL_6:
    v36 = 2654435761 * self->_reassocSuccess;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

LABEL_43:
  v36 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_7:
    v35 = 2654435761 * self->_reassocFailed;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_45;
  }

LABEL_44:
  v35 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_8:
    v34 = 2654435761 * self->_linkChanged;
    if ((*&has & 0x10000000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_45:
  v34 = 0;
  if ((*&has & 0x10000000) != 0)
  {
LABEL_9:
    v33 = 2654435761 * self->_roamSuccess;
    if ((*&has & 0x1000000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_47;
  }

LABEL_46:
  v33 = 0;
  if ((*&has & 0x1000000) != 0)
  {
LABEL_10:
    v32 = 2654435761 * self->_roamFailed;
    if ((*&has & 2) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_47:
  v32 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_11:
    v31 = 2654435761 * self->_assocDoneSuccess;
    if (*&has)
    {
      goto LABEL_12;
    }

    goto LABEL_49;
  }

LABEL_48:
  v31 = 0;
  if (*&has)
  {
LABEL_12:
    v30 = 2654435761 * self->_assocDoneFailed;
    if ((*&has & 8) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_50;
  }

LABEL_49:
  v30 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_13:
    v3 = 2654435761 * self->_assocReady;
    if ((*&has & 0x800000000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

LABEL_50:
  v3 = 0;
  if ((*&has & 0x800000000) != 0)
  {
LABEL_14:
    v4 = 2654435761 * self->_ssidChanged;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_52;
  }

LABEL_51:
  v4 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_15:
    v5 = 2654435761 * self->_bssidChanged;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_53;
  }

LABEL_52:
  v5 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_16:
    v6 = 2654435761 * self->_deauthReceived;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_54;
  }

LABEL_53:
  v6 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_17:
    v7 = 2654435761 * self->_disassocReceived;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_55;
  }

LABEL_54:
  v7 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_18:
    v8 = 2654435761 * self->_decryptError;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_56;
  }

LABEL_55:
  v8 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_19:
    v9 = 2654435761 * self->_pruned;
    if ((*&has & 0x1000000000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_57;
  }

LABEL_56:
  v9 = 0;
  if ((*&has & 0x1000000000) != 0)
  {
LABEL_20:
    v10 = 2654435761 * self->_supplicant;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_58;
  }

LABEL_57:
  v10 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_21:
    v11 = 2654435761 * self->_macAddrChanged;
    if ((*&has & 0x20000000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_59;
  }

LABEL_58:
  v11 = 0;
  if ((*&has & 0x20000000) != 0)
  {
LABEL_22:
    v12 = 2654435761 * self->_rssiChanged;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_60;
  }

LABEL_59:
  v12 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_23:
    v13 = 2654435761 * self->_homeChanQualChanged;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_61;
  }

LABEL_60:
  v13 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_24:
    v14 = 2654435761 * self->_chanSwitchEvent;
    if ((*&has & 0x2000000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_62;
  }

LABEL_61:
  v14 = 0;
  if ((*&has & 0x2000000) != 0)
  {
LABEL_25:
    v15 = 2654435761 * self->_roamPrep;
    if ((*&has & 0x8000000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_63;
  }

LABEL_62:
  v15 = 0;
  if ((*&has & 0x8000000) != 0)
  {
LABEL_26:
    v16 = 2654435761 * self->_roamScanStart;
    if ((*&has & 0x4000000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_64;
  }

LABEL_63:
  v16 = 0;
  if ((*&has & 0x4000000) != 0)
  {
LABEL_27:
    v17 = 2654435761 * self->_roamScanEnd;
    if ((*&has & 0x100000000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_65;
  }

LABEL_64:
  v17 = 0;
  if ((*&has & 0x100000000) != 0)
  {
LABEL_28:
    v18 = 2654435761 * self->_scanResults;
    if ((*&has & 0x200000000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_66;
  }

LABEL_65:
  v18 = 0;
  if ((*&has & 0x200000000) != 0)
  {
LABEL_29:
    v19 = 2654435761 * self->_scanSummary;
    if ((*&has & 0x40000000) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_67;
  }

LABEL_66:
  v19 = 0;
  if ((*&has & 0x40000000) != 0)
  {
LABEL_30:
    v20 = 2654435761 * self->_scanDone;
    if ((*&has & 0x80000000) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_68;
  }

LABEL_67:
  v20 = 0;
  if ((*&has & 0x80000000) != 0)
  {
LABEL_31:
    v21 = 2654435761 * self->_scanInternalDone;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_69;
  }

LABEL_68:
  v21 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_32:
    v22 = 2654435761 * self->_bssDisallowEvent;
    if ((*&has & 0x400000000) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_70;
  }

LABEL_69:
  v22 = 0;
  if ((*&has & 0x400000000) != 0)
  {
LABEL_33:
    v23 = 2654435761 * self->_slowWiFiSymptom;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_71;
  }

LABEL_70:
  v23 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_34:
    v24 = 2654435761 * self->_dpsSymptom;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_72;
  }

LABEL_71:
  v24 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_35:
    v25 = 2654435761 * self->_crashTracerTrig;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_73;
  }

LABEL_72:
  v25 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_36:
    v26 = 2654435761 * self->_rc1Stats;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_37;
    }

LABEL_74:
    v27 = 0;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_38;
    }

LABEL_75:
    v28 = 0;
    return v39 ^ v40 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28;
  }

LABEL_73:
  v26 = 0;
  if ((*&has & 0x200000) == 0)
  {
    goto LABEL_74;
  }

LABEL_37:
  v27 = 2654435761 * self->_rc2Stats;
  if ((*&has & 0x8000) == 0)
  {
    goto LABEL_75;
  }

LABEL_38:
  v28 = 2654435761 * self->_escoTrafficInd;
  return v39 ^ v40 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 156);
  if ((v3 & 0x40) != 0)
  {
    self->_authSuccess = *(from + 8);
    *&self->_has |= 0x40uLL;
    v3 = *(from + 156);
    if ((v3 & 0x20) == 0)
    {
LABEL_3:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_41;
    }
  }

  else if ((v3 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  self->_authFailed = *(from + 7);
  *&self->_has |= 0x20uLL;
  v3 = *(from + 156);
  if ((v3 & 0x10) == 0)
  {
LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_assocSuccess = *(from + 6);
  *&self->_has |= 0x10uLL;
  v3 = *(from + 156);
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_assocFailed = *(from + 4);
  *&self->_has |= 4uLL;
  v3 = *(from + 156);
  if ((v3 & 0x800000) == 0)
  {
LABEL_6:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_reassocSuccess = *(from + 25);
  *&self->_has |= 0x800000uLL;
  v3 = *(from + 156);
  if ((v3 & 0x400000) == 0)
  {
LABEL_7:
    if ((v3 & 0x20000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_reassocFailed = *(from + 24);
  *&self->_has |= 0x400000uLL;
  v3 = *(from + 156);
  if ((v3 & 0x20000) == 0)
  {
LABEL_8:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_linkChanged = *(from + 19);
  *&self->_has |= 0x20000uLL;
  v3 = *(from + 156);
  if ((v3 & 0x10000000) == 0)
  {
LABEL_9:
    if ((v3 & 0x1000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_roamSuccess = *(from + 30);
  *&self->_has |= 0x10000000uLL;
  v3 = *(from + 156);
  if ((v3 & 0x1000000) == 0)
  {
LABEL_10:
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_roamFailed = *(from + 26);
  *&self->_has |= 0x1000000uLL;
  v3 = *(from + 156);
  if ((v3 & 2) == 0)
  {
LABEL_11:
    if ((v3 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_assocDoneSuccess = *(from + 3);
  *&self->_has |= 2uLL;
  v3 = *(from + 156);
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if ((v3 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_assocDoneFailed = *(from + 2);
  *&self->_has |= 1uLL;
  v3 = *(from + 156);
  if ((v3 & 8) == 0)
  {
LABEL_13:
    if ((v3 & 0x800000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_assocReady = *(from + 5);
  *&self->_has |= 8uLL;
  v3 = *(from + 156);
  if ((v3 & 0x800000000) == 0)
  {
LABEL_14:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_ssidChanged = *(from + 37);
  *&self->_has |= 0x800000000uLL;
  v3 = *(from + 156);
  if ((v3 & 0x100) == 0)
  {
LABEL_15:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_bssidChanged = *(from + 10);
  *&self->_has |= 0x100uLL;
  v3 = *(from + 156);
  if ((v3 & 0x800) == 0)
  {
LABEL_16:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_deauthReceived = *(from + 13);
  *&self->_has |= 0x800uLL;
  v3 = *(from + 156);
  if ((v3 & 0x2000) == 0)
  {
LABEL_17:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_disassocReceived = *(from + 15);
  *&self->_has |= 0x2000uLL;
  v3 = *(from + 156);
  if ((v3 & 0x1000) == 0)
  {
LABEL_18:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_decryptError = *(from + 14);
  *&self->_has |= 0x1000uLL;
  v3 = *(from + 156);
  if ((v3 & 0x80000) == 0)
  {
LABEL_19:
    if ((v3 & 0x1000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_pruned = *(from + 21);
  *&self->_has |= 0x80000uLL;
  v3 = *(from + 156);
  if ((v3 & 0x1000000000) == 0)
  {
LABEL_20:
    if ((v3 & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_supplicant = *(from + 38);
  *&self->_has |= 0x1000000000uLL;
  v3 = *(from + 156);
  if ((v3 & 0x40000) == 0)
  {
LABEL_21:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_macAddrChanged = *(from + 20);
  *&self->_has |= 0x40000uLL;
  v3 = *(from + 156);
  if ((v3 & 0x20000000) == 0)
  {
LABEL_22:
    if ((v3 & 0x10000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_rssiChanged = *(from + 31);
  *&self->_has |= 0x20000000uLL;
  v3 = *(from + 156);
  if ((v3 & 0x10000) == 0)
  {
LABEL_23:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_61;
  }

LABEL_60:
  self->_homeChanQualChanged = *(from + 18);
  *&self->_has |= 0x10000uLL;
  v3 = *(from + 156);
  if ((v3 & 0x200) == 0)
  {
LABEL_24:
    if ((v3 & 0x2000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_62;
  }

LABEL_61:
  self->_chanSwitchEvent = *(from + 11);
  *&self->_has |= 0x200uLL;
  v3 = *(from + 156);
  if ((v3 & 0x2000000) == 0)
  {
LABEL_25:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_63;
  }

LABEL_62:
  self->_roamPrep = *(from + 27);
  *&self->_has |= 0x2000000uLL;
  v3 = *(from + 156);
  if ((v3 & 0x8000000) == 0)
  {
LABEL_26:
    if ((v3 & 0x4000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_64;
  }

LABEL_63:
  self->_roamScanStart = *(from + 29);
  *&self->_has |= 0x8000000uLL;
  v3 = *(from + 156);
  if ((v3 & 0x4000000) == 0)
  {
LABEL_27:
    if ((v3 & 0x100000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_65;
  }

LABEL_64:
  self->_roamScanEnd = *(from + 28);
  *&self->_has |= 0x4000000uLL;
  v3 = *(from + 156);
  if ((v3 & 0x100000000) == 0)
  {
LABEL_28:
    if ((v3 & 0x200000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_66;
  }

LABEL_65:
  self->_scanResults = *(from + 34);
  *&self->_has |= 0x100000000uLL;
  v3 = *(from + 156);
  if ((v3 & 0x200000000) == 0)
  {
LABEL_29:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_67;
  }

LABEL_66:
  self->_scanSummary = *(from + 35);
  *&self->_has |= 0x200000000uLL;
  v3 = *(from + 156);
  if ((v3 & 0x40000000) == 0)
  {
LABEL_30:
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_68;
  }

LABEL_67:
  self->_scanDone = *(from + 32);
  *&self->_has |= 0x40000000uLL;
  v3 = *(from + 156);
  if ((v3 & 0x80000000) == 0)
  {
LABEL_31:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_69;
  }

LABEL_68:
  self->_scanInternalDone = *(from + 33);
  *&self->_has |= 0x80000000uLL;
  v3 = *(from + 156);
  if ((v3 & 0x80) == 0)
  {
LABEL_32:
    if ((v3 & 0x400000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_70;
  }

LABEL_69:
  self->_bssDisallowEvent = *(from + 9);
  *&self->_has |= 0x80uLL;
  v3 = *(from + 156);
  if ((v3 & 0x400000000) == 0)
  {
LABEL_33:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_71;
  }

LABEL_70:
  self->_slowWiFiSymptom = *(from + 36);
  *&self->_has |= 0x400000000uLL;
  v3 = *(from + 156);
  if ((v3 & 0x4000) == 0)
  {
LABEL_34:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_72;
  }

LABEL_71:
  self->_dpsSymptom = *(from + 16);
  *&self->_has |= 0x4000uLL;
  v3 = *(from + 156);
  if ((v3 & 0x400) == 0)
  {
LABEL_35:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_73;
  }

LABEL_72:
  self->_crashTracerTrig = *(from + 12);
  *&self->_has |= 0x400uLL;
  v3 = *(from + 156);
  if ((v3 & 0x100000) == 0)
  {
LABEL_36:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_74;
  }

LABEL_73:
  self->_rc1Stats = *(from + 22);
  *&self->_has |= 0x100000uLL;
  v3 = *(from + 156);
  if ((v3 & 0x200000) == 0)
  {
LABEL_37:
    if ((v3 & 0x8000) == 0)
    {
      return;
    }

LABEL_75:
    self->_escoTrafficInd = *(from + 17);
    *&self->_has |= 0x8000uLL;
    return;
  }

LABEL_74:
  self->_rc2Stats = *(from + 23);
  *&self->_has |= 0x200000uLL;
  if ((*(from + 156) & 0x8000) != 0)
  {
    goto LABEL_75;
  }
}

@end