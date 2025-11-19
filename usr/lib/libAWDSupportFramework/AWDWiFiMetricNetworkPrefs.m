@interface AWDWiFiMetricNetworkPrefs
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMostUsedNetworks:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasAdhocNetsCount:(BOOL)a3;
- (void)setHasApplePersHotspotNetsCount:(BOOL)a3;
- (void)setHasAtjCanceledCount:(BOOL)a3;
- (void)setHasAtjEnabled:(BOOL)a3;
- (void)setHasAtjUsedCount:(BOOL)a3;
- (void)setHasCaptiveNetsCount:(BOOL)a3;
- (void)setHasEapNetsCount:(BOOL)a3;
- (void)setHasHiddenNetsCount:(BOOL)a3;
- (void)setHasMostUsedCount:(BOOL)a3;
- (void)setHasOpenNonCaptiveNetsCount:(BOOL)a3;
- (void)setHasPrefNetsCount:(BOOL)a3;
- (void)setHasWapiNetsCount:(BOOL)a3;
- (void)setHasWepNetsCount:(BOOL)a3;
- (void)setHasWpaNetsCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWiFiMetricNetworkPrefs

- (void)dealloc
{
  [(AWDWiFiMetricNetworkPrefs *)self setMostUsedNetworks:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricNetworkPrefs;
  [(AWDWiFiMetricNetworkPrefs *)&v3 dealloc];
}

- (void)setHasAtjEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasAtjCanceledCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasAtjUsedCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasAdhocNetsCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasPrefNetsCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasCaptiveNetsCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasApplePersHotspotNetsCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasWapiNetsCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasMostUsedCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)addMostUsedNetworks:(id)a3
{
  mostUsedNetworks = self->_mostUsedNetworks;
  if (!mostUsedNetworks)
  {
    mostUsedNetworks = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_mostUsedNetworks = mostUsedNetworks;
  }

  [(NSMutableArray *)mostUsedNetworks addObject:a3];
}

- (void)setHasHiddenNetsCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasWepNetsCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasWpaNetsCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasEapNetsCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasOpenNonCaptiveNetsCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricNetworkPrefs;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricNetworkPrefs description](&v3, sel_description), -[AWDWiFiMetricNetworkPrefs dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v19 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 0x4000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_atjEnabled), @"atjEnabled"}];
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_atjCanceledCount), @"atjCanceledCount"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_30:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_atjUsedCount), @"atjUsedCount"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_31:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_adhocNetsCount), @"adhocNetsCount"}];
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_prefNetsCount), @"prefNetsCount"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_33:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_captiveNetsCount), @"captiveNetsCount"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_applePersHotspotNetsCount), @"applePersHotspotNetsCount"}];
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_35:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wapiNetsCount), @"wapiNetsCount"}];
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_10:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_mostUsedCount), @"mostUsedCount"}];
  }

LABEL_11:
  if ([(NSMutableArray *)self->_mostUsedNetworks count])
  {
    v5 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_mostUsedNetworks, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    mostUsedNetworks = self->_mostUsedNetworks;
    v7 = [(NSMutableArray *)mostUsedNetworks countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(mostUsedNetworks);
          }

          [v5 addObject:{objc_msgSend(*(*(&v14 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v8 = [(NSMutableArray *)mostUsedNetworks countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"mostUsedNetworks"];
  }

  v11 = self->_has;
  if (v11)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    v11 = self->_has;
    if ((v11 & 0x80) == 0)
    {
LABEL_22:
      if ((v11 & 0x1000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_39;
    }
  }

  else if ((v11 & 0x80) == 0)
  {
    goto LABEL_22;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_hiddenNetsCount), @"hiddenNetsCount"}];
  v11 = self->_has;
  if ((v11 & 0x1000) == 0)
  {
LABEL_23:
    if ((v11 & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_40;
  }

LABEL_39:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wepNetsCount), @"wepNetsCount"}];
  v11 = self->_has;
  if ((v11 & 0x2000) == 0)
  {
LABEL_24:
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_25;
    }

LABEL_41:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_eapNetsCount), @"eapNetsCount"}];
    if ((*&self->_has & 0x200) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_40:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wpaNetsCount), @"wpaNetsCount"}];
  v11 = self->_has;
  if ((v11 & 0x40) != 0)
  {
    goto LABEL_41;
  }

LABEL_25:
  if ((v11 & 0x200) != 0)
  {
LABEL_26:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_openNonCaptiveNetsCount), @"openNonCaptiveNetsCount"}];
  }

LABEL_27:
  v12 = *MEMORY[0x29EDCA608];
  return v3;
}

- (void)writeTo:(id)a3
{
  v33 = *MEMORY[0x29EDCA608];
  has = self->_has;
  if ((has & 0x4000) != 0)
  {
    atjEnabled = self->_atjEnabled;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  atjCanceledCount = self->_atjCanceledCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  atjUsedCount = self->_atjUsedCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  adhocNetsCount = self->_adhocNetsCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  prefNetsCount = self->_prefNetsCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  captiveNetsCount = self->_captiveNetsCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  applePersHotspotNetsCount = self->_applePersHotspotNetsCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_33:
  wapiNetsCount = self->_wapiNetsCount;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_10:
    mostUsedCount = self->_mostUsedCount;
    PBDataWriterWriteUint32Field();
  }

LABEL_11:
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  mostUsedNetworks = self->_mostUsedNetworks;
  v7 = [(NSMutableArray *)mostUsedNetworks countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(mostUsedNetworks);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)mostUsedNetworks countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v8);
  }

  v12 = self->_has;
  if (v12)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    v12 = self->_has;
    if ((v12 & 0x80) == 0)
    {
LABEL_20:
      if ((v12 & 0x1000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_37;
    }
  }

  else if ((v12 & 0x80) == 0)
  {
    goto LABEL_20;
  }

  hiddenNetsCount = self->_hiddenNetsCount;
  PBDataWriterWriteUint32Field();
  v12 = self->_has;
  if ((v12 & 0x1000) == 0)
  {
LABEL_21:
    if ((v12 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_38;
  }

LABEL_37:
  wepNetsCount = self->_wepNetsCount;
  PBDataWriterWriteUint32Field();
  v12 = self->_has;
  if ((v12 & 0x2000) == 0)
  {
LABEL_22:
    if ((v12 & 0x40) == 0)
    {
      goto LABEL_23;
    }

LABEL_39:
    eapNetsCount = self->_eapNetsCount;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x200) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_38:
  wpaNetsCount = self->_wpaNetsCount;
  PBDataWriterWriteUint32Field();
  v12 = self->_has;
  if ((v12 & 0x40) != 0)
  {
    goto LABEL_39;
  }

LABEL_23:
  if ((v12 & 0x200) != 0)
  {
LABEL_24:
    openNonCaptiveNetsCount = self->_openNonCaptiveNetsCount;
    PBDataWriterWriteUint32Field();
  }

LABEL_25:
  v14 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 0x4000) != 0)
  {
    *(a3 + 76) = self->_atjEnabled;
    *(a3 + 40) |= 0x4000u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 6) = self->_atjCanceledCount;
  *(a3 + 40) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(a3 + 7) = self->_atjUsedCount;
  *(a3 + 40) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(a3 + 4) = self->_adhocNetsCount;
  *(a3 + 40) |= 2u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(a3 + 15) = self->_prefNetsCount;
  *(a3 + 40) |= 0x400u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(a3 + 8) = self->_captiveNetsCount;
  *(a3 + 40) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x800) == 0)
    {
      goto LABEL_9;
    }

LABEL_30:
    *(a3 + 16) = self->_wapiNetsCount;
    *(a3 + 40) |= 0x800u;
    if ((*&self->_has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_29:
  *(a3 + 5) = self->_applePersHotspotNetsCount;
  *(a3 + 40) |= 4u;
  has = self->_has;
  if ((has & 0x800) != 0)
  {
    goto LABEL_30;
  }

LABEL_9:
  if ((has & 0x100) != 0)
  {
LABEL_10:
    *(a3 + 11) = self->_mostUsedCount;
    *(a3 + 40) |= 0x100u;
  }

LABEL_11:
  if ([(AWDWiFiMetricNetworkPrefs *)self mostUsedNetworksCount])
  {
    [a3 clearMostUsedNetworks];
    v6 = [(AWDWiFiMetricNetworkPrefs *)self mostUsedNetworksCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [a3 addMostUsedNetworks:{-[AWDWiFiMetricNetworkPrefs mostUsedNetworksAtIndex:](self, "mostUsedNetworksAtIndex:", i)}];
      }
    }
  }

  v9 = self->_has;
  if (v9)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 40) |= 1u;
    v9 = self->_has;
    if ((v9 & 0x80) == 0)
    {
LABEL_17:
      if ((v9 & 0x1000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_34;
    }
  }

  else if ((v9 & 0x80) == 0)
  {
    goto LABEL_17;
  }

  *(a3 + 10) = self->_hiddenNetsCount;
  *(a3 + 40) |= 0x80u;
  v9 = self->_has;
  if ((v9 & 0x1000) == 0)
  {
LABEL_18:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(a3 + 17) = self->_wepNetsCount;
  *(a3 + 40) |= 0x1000u;
  v9 = self->_has;
  if ((v9 & 0x2000) == 0)
  {
LABEL_19:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(a3 + 18) = self->_wpaNetsCount;
  *(a3 + 40) |= 0x2000u;
  v9 = self->_has;
  if ((v9 & 0x40) == 0)
  {
LABEL_20:
    if ((v9 & 0x200) == 0)
    {
      return;
    }

    goto LABEL_21;
  }

LABEL_36:
  *(a3 + 9) = self->_eapNetsCount;
  *(a3 + 40) |= 0x40u;
  if ((*&self->_has & 0x200) == 0)
  {
    return;
  }

LABEL_21:
  *(a3 + 14) = self->_openNonCaptiveNetsCount;
  *(a3 + 40) |= 0x200u;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v22 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 0x4000) != 0)
  {
    *(v5 + 76) = self->_atjEnabled;
    *(v5 + 80) |= 0x4000u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 24) = self->_atjCanceledCount;
  *(v5 + 80) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v5 + 28) = self->_atjUsedCount;
  *(v5 + 80) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v5 + 16) = self->_adhocNetsCount;
  *(v5 + 80) |= 2u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v5 + 60) = self->_prefNetsCount;
  *(v5 + 80) |= 0x400u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(v5 + 32) = self->_captiveNetsCount;
  *(v5 + 80) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v5 + 20) = self->_applePersHotspotNetsCount;
  *(v5 + 80) |= 4u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_33:
  *(v5 + 64) = self->_wapiNetsCount;
  *(v5 + 80) |= 0x800u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_10:
    *(v5 + 44) = self->_mostUsedCount;
    *(v5 + 80) |= 0x100u;
  }

LABEL_11:
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  mostUsedNetworks = self->_mostUsedNetworks;
  v9 = [(NSMutableArray *)mostUsedNetworks countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(mostUsedNetworks);
        }

        v13 = [*(*(&v17 + 1) + 8 * i) copyWithZone:a3];
        [v6 addMostUsedNetworks:v13];
      }

      v10 = [(NSMutableArray *)mostUsedNetworks countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = self->_has;
  if (v14)
  {
    *(v6 + 8) = self->_timestamp;
    *(v6 + 80) |= 1u;
    v14 = self->_has;
    if ((v14 & 0x80) == 0)
    {
LABEL_20:
      if ((v14 & 0x1000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_37;
    }
  }

  else if ((v14 & 0x80) == 0)
  {
    goto LABEL_20;
  }

  *(v6 + 40) = self->_hiddenNetsCount;
  *(v6 + 80) |= 0x80u;
  v14 = self->_has;
  if ((v14 & 0x1000) == 0)
  {
LABEL_21:
    if ((v14 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v6 + 68) = self->_wepNetsCount;
  *(v6 + 80) |= 0x1000u;
  v14 = self->_has;
  if ((v14 & 0x2000) == 0)
  {
LABEL_22:
    if ((v14 & 0x40) == 0)
    {
      goto LABEL_23;
    }

LABEL_39:
    *(v6 + 36) = self->_eapNetsCount;
    *(v6 + 80) |= 0x40u;
    if ((*&self->_has & 0x200) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_38:
  *(v6 + 72) = self->_wpaNetsCount;
  *(v6 + 80) |= 0x2000u;
  v14 = self->_has;
  if ((v14 & 0x40) != 0)
  {
    goto LABEL_39;
  }

LABEL_23:
  if ((v14 & 0x200) != 0)
  {
LABEL_24:
    *(v6 + 56) = self->_openNonCaptiveNetsCount;
    *(v6 + 80) |= 0x200u;
  }

LABEL_25:
  v15 = *MEMORY[0x29EDCA608];
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
  v7 = *(a3 + 40);
  if ((has & 0x4000) != 0)
  {
    if ((*(a3 + 40) & 0x4000) != 0)
    {
      v8 = *(a3 + 76);
      if (self->_atjEnabled)
      {
        if ((*(a3 + 76) & 1) == 0)
        {
          goto LABEL_82;
        }
      }

      else if (*(a3 + 76))
      {
        goto LABEL_82;
      }

      goto LABEL_4;
    }

LABEL_82:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(a3 + 40) & 0x4000) != 0)
  {
    goto LABEL_82;
  }

LABEL_4:
  if ((has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_atjCanceledCount != *(a3 + 6))
    {
      goto LABEL_82;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_82;
  }

  if ((has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_atjUsedCount != *(a3 + 7))
    {
      goto LABEL_82;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_82;
  }

  if ((has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_adhocNetsCount != *(a3 + 4))
    {
      goto LABEL_82;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_82;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(a3 + 40) & 0x400) == 0 || self->_prefNetsCount != *(a3 + 15))
    {
      goto LABEL_82;
    }
  }

  else if ((*(a3 + 40) & 0x400) != 0)
  {
    goto LABEL_82;
  }

  if ((has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_captiveNetsCount != *(a3 + 8))
    {
      goto LABEL_82;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_82;
  }

  if ((has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_applePersHotspotNetsCount != *(a3 + 5))
    {
      goto LABEL_82;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_82;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(a3 + 40) & 0x800) == 0 || self->_wapiNetsCount != *(a3 + 16))
    {
      goto LABEL_82;
    }
  }

  else if ((*(a3 + 40) & 0x800) != 0)
  {
    goto LABEL_82;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(a3 + 40) & 0x100) == 0 || self->_mostUsedCount != *(a3 + 11))
    {
      goto LABEL_82;
    }
  }

  else if ((*(a3 + 40) & 0x100) != 0)
  {
    goto LABEL_82;
  }

  mostUsedNetworks = self->_mostUsedNetworks;
  if (mostUsedNetworks | *(a3 + 6))
  {
    v5 = [(NSMutableArray *)mostUsedNetworks isEqual:?];
    if (!v5)
    {
      return v5;
    }

    has = self->_has;
  }

  v10 = *(a3 + 40);
  if (has)
  {
    if ((v10 & 1) == 0 || self->_timestamp != *(a3 + 1))
    {
      goto LABEL_82;
    }
  }

  else if (v10)
  {
    goto LABEL_82;
  }

  if ((has & 0x80) != 0)
  {
    if ((v10 & 0x80) == 0 || self->_hiddenNetsCount != *(a3 + 10))
    {
      goto LABEL_82;
    }
  }

  else if ((v10 & 0x80) != 0)
  {
    goto LABEL_82;
  }

  if ((has & 0x1000) != 0)
  {
    if ((*(a3 + 40) & 0x1000) == 0 || self->_wepNetsCount != *(a3 + 17))
    {
      goto LABEL_82;
    }
  }

  else if ((*(a3 + 40) & 0x1000) != 0)
  {
    goto LABEL_82;
  }

  if ((has & 0x2000) != 0)
  {
    if ((*(a3 + 40) & 0x2000) == 0 || self->_wpaNetsCount != *(a3 + 18))
    {
      goto LABEL_82;
    }
  }

  else if ((*(a3 + 40) & 0x2000) != 0)
  {
    goto LABEL_82;
  }

  if ((has & 0x40) != 0)
  {
    if ((v10 & 0x40) == 0 || self->_eapNetsCount != *(a3 + 9))
    {
      goto LABEL_82;
    }
  }

  else if ((v10 & 0x40) != 0)
  {
    goto LABEL_82;
  }

  LOBYTE(v5) = (v10 & 0x200) == 0;
  if ((has & 0x200) != 0)
  {
    if ((*(a3 + 40) & 0x200) == 0 || self->_openNonCaptiveNetsCount != *(a3 + 14))
    {
      goto LABEL_82;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x4000) != 0)
  {
    v22 = 2654435761 * self->_atjEnabled;
    if ((has & 8) != 0)
    {
LABEL_3:
      v20 = 2654435761 * self->_atjCanceledCount;
      if ((has & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v22 = 0;
    if ((has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v20 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_atjUsedCount;
    if ((has & 2) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v4 = 0;
  if ((has & 2) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_adhocNetsCount;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v5 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_6:
    v6 = 2654435761 * self->_prefNetsCount;
    if ((has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v6 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_7:
    v7 = 2654435761 * self->_captiveNetsCount;
    if ((has & 4) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v7 = 0;
  if ((has & 4) != 0)
  {
LABEL_8:
    v8 = 2654435761 * self->_applePersHotspotNetsCount;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    v9 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_17:
  v8 = 0;
  if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v9 = 2654435761 * self->_wapiNetsCount;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_10:
    v10 = 2654435761 * self->_mostUsedCount;
    goto LABEL_20;
  }

LABEL_19:
  v10 = 0;
LABEL_20:
  v11 = [(NSMutableArray *)self->_mostUsedNetworks hash];
  v12 = self->_has;
  if (v12)
  {
    v13 = 2654435761u * self->_timestamp;
    if ((v12 & 0x80) != 0)
    {
LABEL_22:
      v14 = 2654435761 * self->_hiddenNetsCount;
      if ((*&self->_has & 0x1000) != 0)
      {
        goto LABEL_23;
      }

      goto LABEL_29;
    }
  }

  else
  {
    v13 = 0;
    if ((v12 & 0x80) != 0)
    {
      goto LABEL_22;
    }
  }

  v14 = 0;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_23:
    v15 = 2654435761 * self->_wepNetsCount;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_30;
  }

LABEL_29:
  v15 = 0;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_24:
    v16 = 2654435761 * self->_wpaNetsCount;
    if ((v12 & 0x40) != 0)
    {
      goto LABEL_25;
    }

LABEL_31:
    v17 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_26;
    }

LABEL_32:
    v18 = 0;
    return v21 ^ v22 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v11;
  }

LABEL_30:
  v16 = 0;
  if ((v12 & 0x40) == 0)
  {
    goto LABEL_31;
  }

LABEL_25:
  v17 = 2654435761 * self->_eapNetsCount;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_32;
  }

LABEL_26:
  v18 = 2654435761 * self->_openNonCaptiveNetsCount;
  return v21 ^ v22 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v11;
}

- (void)mergeFrom:(id)a3
{
  v18 = *MEMORY[0x29EDCA608];
  v5 = *(a3 + 40);
  if ((v5 & 0x4000) != 0)
  {
    self->_atjEnabled = *(a3 + 76);
    *&self->_has |= 0x4000u;
    v5 = *(a3 + 40);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_atjCanceledCount = *(a3 + 6);
  *&self->_has |= 8u;
  v5 = *(a3 + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_atjUsedCount = *(a3 + 7);
  *&self->_has |= 0x10u;
  v5 = *(a3 + 40);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_adhocNetsCount = *(a3 + 4);
  *&self->_has |= 2u;
  v5 = *(a3 + 40);
  if ((v5 & 0x400) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_prefNetsCount = *(a3 + 15);
  *&self->_has |= 0x400u;
  v5 = *(a3 + 40);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_captiveNetsCount = *(a3 + 8);
  *&self->_has |= 0x20u;
  v5 = *(a3 + 40);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_applePersHotspotNetsCount = *(a3 + 5);
  *&self->_has |= 4u;
  v5 = *(a3 + 40);
  if ((v5 & 0x800) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_33:
  self->_wapiNetsCount = *(a3 + 16);
  *&self->_has |= 0x800u;
  if ((*(a3 + 40) & 0x100) != 0)
  {
LABEL_10:
    self->_mostUsedCount = *(a3 + 11);
    *&self->_has |= 0x100u;
  }

LABEL_11:
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = *(a3 + 6);
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(AWDWiFiMetricNetworkPrefs *)self addMostUsedNetworks:*(*(&v13 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = *(a3 + 40);
  if (v11)
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
    v11 = *(a3 + 40);
    if ((v11 & 0x80) == 0)
    {
LABEL_20:
      if ((v11 & 0x1000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_37;
    }
  }

  else if ((v11 & 0x80) == 0)
  {
    goto LABEL_20;
  }

  self->_hiddenNetsCount = *(a3 + 10);
  *&self->_has |= 0x80u;
  v11 = *(a3 + 40);
  if ((v11 & 0x1000) == 0)
  {
LABEL_21:
    if ((v11 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_wepNetsCount = *(a3 + 17);
  *&self->_has |= 0x1000u;
  v11 = *(a3 + 40);
  if ((v11 & 0x2000) == 0)
  {
LABEL_22:
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_23;
    }

LABEL_39:
    self->_eapNetsCount = *(a3 + 9);
    *&self->_has |= 0x40u;
    if ((*(a3 + 40) & 0x200) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_38:
  self->_wpaNetsCount = *(a3 + 18);
  *&self->_has |= 0x2000u;
  v11 = *(a3 + 40);
  if ((v11 & 0x40) != 0)
  {
    goto LABEL_39;
  }

LABEL_23:
  if ((v11 & 0x200) != 0)
  {
LABEL_24:
    self->_openNonCaptiveNetsCount = *(a3 + 14);
    *&self->_has |= 0x200u;
  }

LABEL_25:
  v12 = *MEMORY[0x29EDCA608];
}

@end