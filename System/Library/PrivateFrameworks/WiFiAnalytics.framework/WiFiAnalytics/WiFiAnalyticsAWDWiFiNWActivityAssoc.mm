@interface WiFiAnalyticsAWDWiFiNWActivityAssoc
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

@implementation WiFiAnalyticsAWDWiFiNWActivityAssoc

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
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDWiFiNWActivityAssoc;
  v4 = [(WiFiAnalyticsAWDWiFiNWActivityAssoc *)&v8 description];
  dictionaryRepresentation = [(WiFiAnalyticsAWDWiFiNWActivityAssoc *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((*&has & 0x40) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_authSuccess];
    [dictionary setObject:v8 forKey:@"authSuccess"];

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

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_authFailed];
  [dictionary setObject:v9 forKey:@"authFailed"];

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
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_assocSuccess];
  [dictionary setObject:v10 forKey:@"assocSuccess"];

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
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_assocFailed];
  [dictionary setObject:v11 forKey:@"assocFailed"];

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
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_reassocSuccess];
  [dictionary setObject:v12 forKey:@"reassocSuccess"];

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
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_reassocFailed];
  [dictionary setObject:v13 forKey:@"reassocFailed"];

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
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_linkChanged];
  [dictionary setObject:v14 forKey:@"linkChanged"];

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
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_roamSuccess];
  [dictionary setObject:v15 forKey:@"roamSuccess"];

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
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_roamFailed];
  [dictionary setObject:v16 forKey:@"roamFailed"];

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
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_assocDoneSuccess];
  [dictionary setObject:v17 forKey:@"assocDoneSuccess"];

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
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_assocDoneFailed];
  [dictionary setObject:v18 forKey:@"assocDoneFailed"];

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
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_assocReady];
  [dictionary setObject:v19 forKey:@"assocReady"];

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
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_ssidChanged];
  [dictionary setObject:v20 forKey:@"ssidChanged"];

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
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_bssidChanged];
  [dictionary setObject:v21 forKey:@"bssidChanged"];

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
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_deauthReceived];
  [dictionary setObject:v22 forKey:@"deauthReceived"];

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
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_disassocReceived];
  [dictionary setObject:v23 forKey:@"disassocReceived"];

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
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_decryptError];
  [dictionary setObject:v24 forKey:@"decryptError"];

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
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_pruned];
  [dictionary setObject:v25 forKey:@"pruned"];

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
  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_supplicant];
  [dictionary setObject:v26 forKey:@"supplicant"];

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
  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_macAddrChanged];
  [dictionary setObject:v27 forKey:@"macAddrChanged"];

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
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_rssiChanged];
  [dictionary setObject:v28 forKey:@"rssiChanged"];

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
  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_homeChanQualChanged];
  [dictionary setObject:v29 forKey:@"homeChanQualChanged"];

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
  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_chanSwitchEvent];
  [dictionary setObject:v30 forKey:@"chanSwitchEvent"];

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
  v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_roamPrep];
  [dictionary setObject:v31 forKey:@"roamPrep"];

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
  v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_roamScanStart];
  [dictionary setObject:v32 forKey:@"roamScanStart"];

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
  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_roamScanEnd];
  [dictionary setObject:v33 forKey:@"roamScanEnd"];

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
  v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_scanResults];
  [dictionary setObject:v34 forKey:@"scanResults"];

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
  v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_scanSummary];
  [dictionary setObject:v35 forKey:@"scanSummary"];

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
  v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_scanDone];
  [dictionary setObject:v36 forKey:@"scanDone"];

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
  v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_scanInternalDone];
  [dictionary setObject:v37 forKey:@"scanInternalDone"];

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
  v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_bssDisallowEvent];
  [dictionary setObject:v38 forKey:@"bssDisallowEvent"];

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
  v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_slowWiFiSymptom];
  [dictionary setObject:v39 forKey:@"slowWiFiSymptom"];

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
  v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_dpsSymptom];
  [dictionary setObject:v40 forKey:@"dpsSymptom"];

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
  v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_crashTracerTrig];
  [dictionary setObject:v41 forKey:@"crashTracerTrig"];

  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_36:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_37;
    }

LABEL_75:
    v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_rc2Stats];
    [dictionary setObject:v43 forKey:@"rc2Stats"];

    if ((*&self->_has & 0x8000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_74:
  v42 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_rc1Stats];
  [dictionary setObject:v42 forKey:@"rc1Stats"];

  has = self->_has;
  if ((*&has & 0x200000) != 0)
  {
    goto LABEL_75;
  }

LABEL_37:
  if ((*&has & 0x8000) != 0)
  {
LABEL_38:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_escoTrafficInd];
    [dictionary setObject:v5 forKey:@"escoTrafficInd"];
  }

LABEL_39:
  v6 = dictionary;

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

      goto LABEL_44;
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

    goto LABEL_45;
  }

LABEL_44:
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

    goto LABEL_46;
  }

LABEL_45:
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

    goto LABEL_47;
  }

LABEL_46:
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

    goto LABEL_48;
  }

LABEL_47:
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

    goto LABEL_49;
  }

LABEL_48:
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

    goto LABEL_50;
  }

LABEL_49:
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

    goto LABEL_51;
  }

LABEL_50:
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

    goto LABEL_52;
  }

LABEL_51:
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

    goto LABEL_53;
  }

LABEL_52:
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

    goto LABEL_54;
  }

LABEL_53:
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

    goto LABEL_55;
  }

LABEL_54:
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

    goto LABEL_56;
  }

LABEL_55:
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

    goto LABEL_57;
  }

LABEL_56:
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

    goto LABEL_58;
  }

LABEL_57:
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

    goto LABEL_59;
  }

LABEL_58:
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

    goto LABEL_60;
  }

LABEL_59:
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

    goto LABEL_61;
  }

LABEL_60:
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

    goto LABEL_62;
  }

LABEL_61:
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

    goto LABEL_63;
  }

LABEL_62:
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

    goto LABEL_64;
  }

LABEL_63:
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

    goto LABEL_65;
  }

LABEL_64:
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

    goto LABEL_66;
  }

LABEL_65:
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

    goto LABEL_67;
  }

LABEL_66:
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

    goto LABEL_68;
  }

LABEL_67:
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

    goto LABEL_69;
  }

LABEL_68:
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

    goto LABEL_70;
  }

LABEL_69:
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

    goto LABEL_71;
  }

LABEL_70:
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

    goto LABEL_72;
  }

LABEL_71:
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

    goto LABEL_73;
  }

LABEL_72:
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

    goto LABEL_74;
  }

LABEL_73:
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

    goto LABEL_75;
  }

LABEL_74:
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

    goto LABEL_76;
  }

LABEL_75:
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

    goto LABEL_77;
  }

LABEL_76:
  rc1Stats = self->_rc1Stats;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_37:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_77:
  rc2Stats = self->_rc2Stats;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_38:
    escoTrafficInd = self->_escoTrafficInd;
    PBDataWriterWriteUint32Field();
  }

LABEL_39:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((*&has & 0x40) != 0)
  {
    *(toCopy + 8) = self->_authSuccess;
    *(toCopy + 156) |= 0x40uLL;
    has = self->_has;
    if ((*&has & 0x20) == 0)
    {
LABEL_3:
      if ((*&has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_44;
    }
  }

  else if ((*&has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 7) = self->_authFailed;
  *(toCopy + 156) |= 0x20uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_4:
    if ((*&has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(toCopy + 6) = self->_assocSuccess;
  *(toCopy + 156) |= 0x10uLL;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_5:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(toCopy + 4) = self->_assocFailed;
  *(toCopy + 156) |= 4uLL;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_6:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(toCopy + 25) = self->_reassocSuccess;
  *(toCopy + 156) |= 0x800000uLL;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_7:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(toCopy + 24) = self->_reassocFailed;
  *(toCopy + 156) |= 0x400000uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_8:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(toCopy + 19) = self->_linkChanged;
  *(toCopy + 156) |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(toCopy + 30) = self->_roamSuccess;
  *(toCopy + 156) |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_10:
    if ((*&has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(toCopy + 26) = self->_roamFailed;
  *(toCopy + 156) |= 0x1000000uLL;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_11:
    if ((*&has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(toCopy + 3) = self->_assocDoneSuccess;
  *(toCopy + 156) |= 2uLL;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_12:
    if ((*&has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(toCopy + 2) = self->_assocDoneFailed;
  *(toCopy + 156) |= 1uLL;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_13:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(toCopy + 5) = self->_assocReady;
  *(toCopy + 156) |= 8uLL;
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(toCopy + 37) = self->_ssidChanged;
  *(toCopy + 156) |= 0x800000000uLL;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_15:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(toCopy + 10) = self->_bssidChanged;
  *(toCopy + 156) |= 0x100uLL;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_16:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(toCopy + 13) = self->_deauthReceived;
  *(toCopy + 156) |= 0x800uLL;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_17:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(toCopy + 15) = self->_disassocReceived;
  *(toCopy + 156) |= 0x2000uLL;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_18:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(toCopy + 14) = self->_decryptError;
  *(toCopy + 156) |= 0x1000uLL;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_19:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(toCopy + 21) = self->_pruned;
  *(toCopy + 156) |= 0x80000uLL;
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_20:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(toCopy + 38) = self->_supplicant;
  *(toCopy + 156) |= 0x1000000000uLL;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_21:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(toCopy + 20) = self->_macAddrChanged;
  *(toCopy + 156) |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(toCopy + 31) = self->_rssiChanged;
  *(toCopy + 156) |= 0x20000000uLL;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_23:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(toCopy + 18) = self->_homeChanQualChanged;
  *(toCopy + 156) |= 0x10000uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_24:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(toCopy + 11) = self->_chanSwitchEvent;
  *(toCopy + 156) |= 0x200uLL;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_25:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(toCopy + 27) = self->_roamPrep;
  *(toCopy + 156) |= 0x2000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_26:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(toCopy + 29) = self->_roamScanStart;
  *(toCopy + 156) |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_27:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(toCopy + 28) = self->_roamScanEnd;
  *(toCopy + 156) |= 0x4000000uLL;
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_28:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(toCopy + 34) = self->_scanResults;
  *(toCopy + 156) |= 0x100000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(toCopy + 35) = self->_scanSummary;
  *(toCopy + 156) |= 0x200000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_30:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(toCopy + 32) = self->_scanDone;
  *(toCopy + 156) |= 0x40000000uLL;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(toCopy + 33) = self->_scanInternalDone;
  *(toCopy + 156) |= 0x80000000uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_32:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(toCopy + 9) = self->_bssDisallowEvent;
  *(toCopy + 156) |= 0x80uLL;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(toCopy + 36) = self->_slowWiFiSymptom;
  *(toCopy + 156) |= 0x400000000uLL;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_34:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(toCopy + 16) = self->_dpsSymptom;
  *(toCopy + 156) |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_35:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(toCopy + 12) = self->_crashTracerTrig;
  *(toCopy + 156) |= 0x400uLL;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_36:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(toCopy + 22) = self->_rc1Stats;
  *(toCopy + 156) |= 0x100000uLL;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_37:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_77:
  *(toCopy + 23) = self->_rc2Stats;
  *(toCopy + 156) |= 0x200000uLL;
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_38:
    *(toCopy + 17) = self->_escoTrafficInd;
    *(toCopy + 156) |= 0x8000uLL;
  }

LABEL_39:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((*&has & 0x40) != 0)
  {
    *(v4 + 32) = self->_authSuccess;
    *(v4 + 156) |= 0x40uLL;
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

  *(v4 + 28) = self->_authFailed;
  *(v4 + 156) |= 0x20uLL;
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
  *(v4 + 24) = self->_assocSuccess;
  *(v4 + 156) |= 0x10uLL;
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
  *(v4 + 16) = self->_assocFailed;
  *(v4 + 156) |= 4uLL;
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
  *(v4 + 100) = self->_reassocSuccess;
  *(v4 + 156) |= 0x800000uLL;
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
  *(v4 + 96) = self->_reassocFailed;
  *(v4 + 156) |= 0x400000uLL;
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
  *(v4 + 76) = self->_linkChanged;
  *(v4 + 156) |= 0x20000uLL;
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
  *(v4 + 120) = self->_roamSuccess;
  *(v4 + 156) |= 0x10000000uLL;
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
  *(v4 + 104) = self->_roamFailed;
  *(v4 + 156) |= 0x1000000uLL;
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
  *(v4 + 12) = self->_assocDoneSuccess;
  *(v4 + 156) |= 2uLL;
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
  *(v4 + 8) = self->_assocDoneFailed;
  *(v4 + 156) |= 1uLL;
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
  *(v4 + 20) = self->_assocReady;
  *(v4 + 156) |= 8uLL;
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
  *(v4 + 148) = self->_ssidChanged;
  *(v4 + 156) |= 0x800000000uLL;
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
  *(v4 + 40) = self->_bssidChanged;
  *(v4 + 156) |= 0x100uLL;
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
  *(v4 + 52) = self->_deauthReceived;
  *(v4 + 156) |= 0x800uLL;
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
  *(v4 + 60) = self->_disassocReceived;
  *(v4 + 156) |= 0x2000uLL;
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
  *(v4 + 56) = self->_decryptError;
  *(v4 + 156) |= 0x1000uLL;
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
  *(v4 + 84) = self->_pruned;
  *(v4 + 156) |= 0x80000uLL;
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
  *(v4 + 152) = self->_supplicant;
  *(v4 + 156) |= 0x1000000000uLL;
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
  *(v4 + 80) = self->_macAddrChanged;
  *(v4 + 156) |= 0x40000uLL;
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
  *(v4 + 124) = self->_rssiChanged;
  *(v4 + 156) |= 0x20000000uLL;
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
  *(v4 + 72) = self->_homeChanQualChanged;
  *(v4 + 156) |= 0x10000uLL;
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
  *(v4 + 44) = self->_chanSwitchEvent;
  *(v4 + 156) |= 0x200uLL;
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
  *(v4 + 108) = self->_roamPrep;
  *(v4 + 156) |= 0x2000000uLL;
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
  *(v4 + 116) = self->_roamScanStart;
  *(v4 + 156) |= 0x8000000uLL;
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
  *(v4 + 112) = self->_roamScanEnd;
  *(v4 + 156) |= 0x4000000uLL;
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
  *(v4 + 136) = self->_scanResults;
  *(v4 + 156) |= 0x100000000uLL;
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
  *(v4 + 140) = self->_scanSummary;
  *(v4 + 156) |= 0x200000000uLL;
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
  *(v4 + 128) = self->_scanDone;
  *(v4 + 156) |= 0x40000000uLL;
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
  *(v4 + 132) = self->_scanInternalDone;
  *(v4 + 156) |= 0x80000000uLL;
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
  *(v4 + 36) = self->_bssDisallowEvent;
  *(v4 + 156) |= 0x80uLL;
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
  *(v4 + 144) = self->_slowWiFiSymptom;
  *(v4 + 156) |= 0x400000000uLL;
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
  *(v4 + 64) = self->_dpsSymptom;
  *(v4 + 156) |= 0x4000uLL;
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
  *(v4 + 48) = self->_crashTracerTrig;
  *(v4 + 156) |= 0x400uLL;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_36:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_37;
    }

LABEL_75:
    *(v4 + 92) = self->_rc2Stats;
    *(v4 + 156) |= 0x200000uLL;
    if ((*&self->_has & 0x8000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_74:
  *(v4 + 88) = self->_rc1Stats;
  *(v4 + 156) |= 0x100000uLL;
  has = self->_has;
  if ((*&has & 0x200000) != 0)
  {
    goto LABEL_75;
  }

LABEL_37:
  if ((*&has & 0x8000) != 0)
  {
LABEL_38:
    *(v4 + 68) = self->_escoTrafficInd;
    *(v4 + 156) |= 0x8000uLL;
  }

LABEL_39:
  v6 = v4;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_187;
  }

  has = self->_has;
  v6 = *(equalCopy + 156);
  if ((*&has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_authSuccess != *(equalCopy + 8))
    {
      goto LABEL_187;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
LABEL_187:
    v7 = 0;
    goto LABEL_188;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_authFailed != *(equalCopy + 7))
    {
      goto LABEL_187;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_187;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_assocSuccess != *(equalCopy + 6))
    {
      goto LABEL_187;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_187;
  }

  if ((*&has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_assocFailed != *(equalCopy + 4))
    {
      goto LABEL_187;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_187;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v6 & 0x800000) == 0 || self->_reassocSuccess != *(equalCopy + 25))
    {
      goto LABEL_187;
    }
  }

  else if ((v6 & 0x800000) != 0)
  {
    goto LABEL_187;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v6 & 0x400000) == 0 || self->_reassocFailed != *(equalCopy + 24))
    {
      goto LABEL_187;
    }
  }

  else if ((v6 & 0x400000) != 0)
  {
    goto LABEL_187;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v6 & 0x20000) == 0 || self->_linkChanged != *(equalCopy + 19))
    {
      goto LABEL_187;
    }
  }

  else if ((v6 & 0x20000) != 0)
  {
    goto LABEL_187;
  }

  if ((*&has & 0x10000000) != 0)
  {
    if ((v6 & 0x10000000) == 0 || self->_roamSuccess != *(equalCopy + 30))
    {
      goto LABEL_187;
    }
  }

  else if ((v6 & 0x10000000) != 0)
  {
    goto LABEL_187;
  }

  if ((*&has & 0x1000000) != 0)
  {
    if ((v6 & 0x1000000) == 0 || self->_roamFailed != *(equalCopy + 26))
    {
      goto LABEL_187;
    }
  }

  else if ((v6 & 0x1000000) != 0)
  {
    goto LABEL_187;
  }

  if ((*&has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_assocDoneSuccess != *(equalCopy + 3))
    {
      goto LABEL_187;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_187;
  }

  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_assocDoneFailed != *(equalCopy + 2))
    {
      goto LABEL_187;
    }
  }

  else if (v6)
  {
    goto LABEL_187;
  }

  if ((*&has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_assocReady != *(equalCopy + 5))
    {
      goto LABEL_187;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_187;
  }

  if ((*&has & 0x800000000) != 0)
  {
    if ((v6 & 0x800000000) == 0 || self->_ssidChanged != *(equalCopy + 37))
    {
      goto LABEL_187;
    }
  }

  else if ((v6 & 0x800000000) != 0)
  {
    goto LABEL_187;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v6 & 0x100) == 0 || self->_bssidChanged != *(equalCopy + 10))
    {
      goto LABEL_187;
    }
  }

  else if ((v6 & 0x100) != 0)
  {
    goto LABEL_187;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v6 & 0x800) == 0 || self->_deauthReceived != *(equalCopy + 13))
    {
      goto LABEL_187;
    }
  }

  else if ((v6 & 0x800) != 0)
  {
    goto LABEL_187;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v6 & 0x2000) == 0 || self->_disassocReceived != *(equalCopy + 15))
    {
      goto LABEL_187;
    }
  }

  else if ((v6 & 0x2000) != 0)
  {
    goto LABEL_187;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v6 & 0x1000) == 0 || self->_decryptError != *(equalCopy + 14))
    {
      goto LABEL_187;
    }
  }

  else if ((v6 & 0x1000) != 0)
  {
    goto LABEL_187;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v6 & 0x80000) == 0 || self->_pruned != *(equalCopy + 21))
    {
      goto LABEL_187;
    }
  }

  else if ((v6 & 0x80000) != 0)
  {
    goto LABEL_187;
  }

  if ((*&has & 0x1000000000) != 0)
  {
    if ((v6 & 0x1000000000) == 0 || self->_supplicant != *(equalCopy + 38))
    {
      goto LABEL_187;
    }
  }

  else if ((v6 & 0x1000000000) != 0)
  {
    goto LABEL_187;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v6 & 0x40000) == 0 || self->_macAddrChanged != *(equalCopy + 20))
    {
      goto LABEL_187;
    }
  }

  else if ((v6 & 0x40000) != 0)
  {
    goto LABEL_187;
  }

  if ((*&has & 0x20000000) != 0)
  {
    if ((v6 & 0x20000000) == 0 || self->_rssiChanged != *(equalCopy + 31))
    {
      goto LABEL_187;
    }
  }

  else if ((v6 & 0x20000000) != 0)
  {
    goto LABEL_187;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v6 & 0x10000) == 0 || self->_homeChanQualChanged != *(equalCopy + 18))
    {
      goto LABEL_187;
    }
  }

  else if ((v6 & 0x10000) != 0)
  {
    goto LABEL_187;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_chanSwitchEvent != *(equalCopy + 11))
    {
      goto LABEL_187;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_187;
  }

  if ((*&has & 0x2000000) != 0)
  {
    if ((v6 & 0x2000000) == 0 || self->_roamPrep != *(equalCopy + 27))
    {
      goto LABEL_187;
    }
  }

  else if ((v6 & 0x2000000) != 0)
  {
    goto LABEL_187;
  }

  if ((*&has & 0x8000000) != 0)
  {
    if ((v6 & 0x8000000) == 0 || self->_roamScanStart != *(equalCopy + 29))
    {
      goto LABEL_187;
    }
  }

  else if ((v6 & 0x8000000) != 0)
  {
    goto LABEL_187;
  }

  if ((*&has & 0x4000000) != 0)
  {
    if ((v6 & 0x4000000) == 0 || self->_roamScanEnd != *(equalCopy + 28))
    {
      goto LABEL_187;
    }
  }

  else if ((v6 & 0x4000000) != 0)
  {
    goto LABEL_187;
  }

  if ((*&has & 0x100000000) != 0)
  {
    if ((v6 & 0x100000000) == 0 || self->_scanResults != *(equalCopy + 34))
    {
      goto LABEL_187;
    }
  }

  else if ((v6 & 0x100000000) != 0)
  {
    goto LABEL_187;
  }

  if ((*&has & 0x200000000) != 0)
  {
    if ((v6 & 0x200000000) == 0 || self->_scanSummary != *(equalCopy + 35))
    {
      goto LABEL_187;
    }
  }

  else if ((v6 & 0x200000000) != 0)
  {
    goto LABEL_187;
  }

  if ((*&has & 0x40000000) != 0)
  {
    if ((v6 & 0x40000000) == 0 || self->_scanDone != *(equalCopy + 32))
    {
      goto LABEL_187;
    }
  }

  else if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_187;
  }

  if ((*&has & 0x80000000) != 0)
  {
    if ((v6 & 0x80000000) == 0 || self->_scanInternalDone != *(equalCopy + 33))
    {
      goto LABEL_187;
    }
  }

  else if ((v6 & 0x80000000) != 0)
  {
    goto LABEL_187;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_bssDisallowEvent != *(equalCopy + 9))
    {
      goto LABEL_187;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_187;
  }

  if ((*&has & 0x400000000) != 0)
  {
    if ((v6 & 0x400000000) == 0 || self->_slowWiFiSymptom != *(equalCopy + 36))
    {
      goto LABEL_187;
    }
  }

  else if ((v6 & 0x400000000) != 0)
  {
    goto LABEL_187;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v6 & 0x4000) == 0 || self->_dpsSymptom != *(equalCopy + 16))
    {
      goto LABEL_187;
    }
  }

  else if ((v6 & 0x4000) != 0)
  {
    goto LABEL_187;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_crashTracerTrig != *(equalCopy + 12))
    {
      goto LABEL_187;
    }
  }

  else if ((v6 & 0x400) != 0)
  {
    goto LABEL_187;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v6 & 0x100000) == 0 || self->_rc1Stats != *(equalCopy + 22))
    {
      goto LABEL_187;
    }
  }

  else if ((v6 & 0x100000) != 0)
  {
    goto LABEL_187;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v6 & 0x200000) == 0 || self->_rc2Stats != *(equalCopy + 23))
    {
      goto LABEL_187;
    }
  }

  else if ((v6 & 0x200000) != 0)
  {
    goto LABEL_187;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v6 & 0x8000) == 0 || self->_escoTrafficInd != *(equalCopy + 17))
    {
      goto LABEL_187;
    }

    v7 = 1;
  }

  else
  {
    v7 = (*(equalCopy + 156) & 0x8000) == 0;
  }

LABEL_188:

  return v7;
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
  fromCopy = from;
  v5 = *(fromCopy + 156);
  if ((v5 & 0x40) != 0)
  {
    self->_authSuccess = *(fromCopy + 8);
    *&self->_has |= 0x40uLL;
    v5 = *(fromCopy + 156);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_44;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  self->_authFailed = *(fromCopy + 7);
  *&self->_has |= 0x20uLL;
  v5 = *(fromCopy + 156);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_assocSuccess = *(fromCopy + 6);
  *&self->_has |= 0x10uLL;
  v5 = *(fromCopy + 156);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_assocFailed = *(fromCopy + 4);
  *&self->_has |= 4uLL;
  v5 = *(fromCopy + 156);
  if ((v5 & 0x800000) == 0)
  {
LABEL_6:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_reassocSuccess = *(fromCopy + 25);
  *&self->_has |= 0x800000uLL;
  v5 = *(fromCopy + 156);
  if ((v5 & 0x400000) == 0)
  {
LABEL_7:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_reassocFailed = *(fromCopy + 24);
  *&self->_has |= 0x400000uLL;
  v5 = *(fromCopy + 156);
  if ((v5 & 0x20000) == 0)
  {
LABEL_8:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_linkChanged = *(fromCopy + 19);
  *&self->_has |= 0x20000uLL;
  v5 = *(fromCopy + 156);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_9:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_roamSuccess = *(fromCopy + 30);
  *&self->_has |= 0x10000000uLL;
  v5 = *(fromCopy + 156);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_10:
    if ((v5 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_roamFailed = *(fromCopy + 26);
  *&self->_has |= 0x1000000uLL;
  v5 = *(fromCopy + 156);
  if ((v5 & 2) == 0)
  {
LABEL_11:
    if ((v5 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_assocDoneSuccess = *(fromCopy + 3);
  *&self->_has |= 2uLL;
  v5 = *(fromCopy + 156);
  if ((v5 & 1) == 0)
  {
LABEL_12:
    if ((v5 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_assocDoneFailed = *(fromCopy + 2);
  *&self->_has |= 1uLL;
  v5 = *(fromCopy + 156);
  if ((v5 & 8) == 0)
  {
LABEL_13:
    if ((v5 & 0x800000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_assocReady = *(fromCopy + 5);
  *&self->_has |= 8uLL;
  v5 = *(fromCopy + 156);
  if ((v5 & 0x800000000) == 0)
  {
LABEL_14:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_ssidChanged = *(fromCopy + 37);
  *&self->_has |= 0x800000000uLL;
  v5 = *(fromCopy + 156);
  if ((v5 & 0x100) == 0)
  {
LABEL_15:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_bssidChanged = *(fromCopy + 10);
  *&self->_has |= 0x100uLL;
  v5 = *(fromCopy + 156);
  if ((v5 & 0x800) == 0)
  {
LABEL_16:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_deauthReceived = *(fromCopy + 13);
  *&self->_has |= 0x800uLL;
  v5 = *(fromCopy + 156);
  if ((v5 & 0x2000) == 0)
  {
LABEL_17:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_disassocReceived = *(fromCopy + 15);
  *&self->_has |= 0x2000uLL;
  v5 = *(fromCopy + 156);
  if ((v5 & 0x1000) == 0)
  {
LABEL_18:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_decryptError = *(fromCopy + 14);
  *&self->_has |= 0x1000uLL;
  v5 = *(fromCopy + 156);
  if ((v5 & 0x80000) == 0)
  {
LABEL_19:
    if ((v5 & 0x1000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_pruned = *(fromCopy + 21);
  *&self->_has |= 0x80000uLL;
  v5 = *(fromCopy + 156);
  if ((v5 & 0x1000000000) == 0)
  {
LABEL_20:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_61;
  }

LABEL_60:
  self->_supplicant = *(fromCopy + 38);
  *&self->_has |= 0x1000000000uLL;
  v5 = *(fromCopy + 156);
  if ((v5 & 0x40000) == 0)
  {
LABEL_21:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_62;
  }

LABEL_61:
  self->_macAddrChanged = *(fromCopy + 20);
  *&self->_has |= 0x40000uLL;
  v5 = *(fromCopy + 156);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_22:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_63;
  }

LABEL_62:
  self->_rssiChanged = *(fromCopy + 31);
  *&self->_has |= 0x20000000uLL;
  v5 = *(fromCopy + 156);
  if ((v5 & 0x10000) == 0)
  {
LABEL_23:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_64;
  }

LABEL_63:
  self->_homeChanQualChanged = *(fromCopy + 18);
  *&self->_has |= 0x10000uLL;
  v5 = *(fromCopy + 156);
  if ((v5 & 0x200) == 0)
  {
LABEL_24:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_65;
  }

LABEL_64:
  self->_chanSwitchEvent = *(fromCopy + 11);
  *&self->_has |= 0x200uLL;
  v5 = *(fromCopy + 156);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_25:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_66;
  }

LABEL_65:
  self->_roamPrep = *(fromCopy + 27);
  *&self->_has |= 0x2000000uLL;
  v5 = *(fromCopy + 156);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_26:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_67;
  }

LABEL_66:
  self->_roamScanStart = *(fromCopy + 29);
  *&self->_has |= 0x8000000uLL;
  v5 = *(fromCopy + 156);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_27:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_68;
  }

LABEL_67:
  self->_roamScanEnd = *(fromCopy + 28);
  *&self->_has |= 0x4000000uLL;
  v5 = *(fromCopy + 156);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_28:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_69;
  }

LABEL_68:
  self->_scanResults = *(fromCopy + 34);
  *&self->_has |= 0x100000000uLL;
  v5 = *(fromCopy + 156);
  if ((v5 & 0x200000000) == 0)
  {
LABEL_29:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_70;
  }

LABEL_69:
  self->_scanSummary = *(fromCopy + 35);
  *&self->_has |= 0x200000000uLL;
  v5 = *(fromCopy + 156);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_30:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_71;
  }

LABEL_70:
  self->_scanDone = *(fromCopy + 32);
  *&self->_has |= 0x40000000uLL;
  v5 = *(fromCopy + 156);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_31:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_72;
  }

LABEL_71:
  self->_scanInternalDone = *(fromCopy + 33);
  *&self->_has |= 0x80000000uLL;
  v5 = *(fromCopy + 156);
  if ((v5 & 0x80) == 0)
  {
LABEL_32:
    if ((v5 & 0x400000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_73;
  }

LABEL_72:
  self->_bssDisallowEvent = *(fromCopy + 9);
  *&self->_has |= 0x80uLL;
  v5 = *(fromCopy + 156);
  if ((v5 & 0x400000000) == 0)
  {
LABEL_33:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_74;
  }

LABEL_73:
  self->_slowWiFiSymptom = *(fromCopy + 36);
  *&self->_has |= 0x400000000uLL;
  v5 = *(fromCopy + 156);
  if ((v5 & 0x4000) == 0)
  {
LABEL_34:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_75;
  }

LABEL_74:
  self->_dpsSymptom = *(fromCopy + 16);
  *&self->_has |= 0x4000uLL;
  v5 = *(fromCopy + 156);
  if ((v5 & 0x400) == 0)
  {
LABEL_35:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_76;
  }

LABEL_75:
  self->_crashTracerTrig = *(fromCopy + 12);
  *&self->_has |= 0x400uLL;
  v5 = *(fromCopy + 156);
  if ((v5 & 0x100000) == 0)
  {
LABEL_36:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_77;
  }

LABEL_76:
  self->_rc1Stats = *(fromCopy + 22);
  *&self->_has |= 0x100000uLL;
  v5 = *(fromCopy + 156);
  if ((v5 & 0x200000) == 0)
  {
LABEL_37:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_77:
  self->_rc2Stats = *(fromCopy + 23);
  *&self->_has |= 0x200000uLL;
  if ((*(fromCopy + 156) & 0x8000) != 0)
  {
LABEL_38:
    self->_escoTrafficInd = *(fromCopy + 17);
    *&self->_has |= 0x8000uLL;
  }

LABEL_39:
}

@end