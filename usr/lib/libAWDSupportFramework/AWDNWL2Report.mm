@interface AWDNWL2Report
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCellularBand:(id)a3;
- (int)StringAsCellularPowerCostDownload:(id)a3;
- (int)StringAsCellularPowerCostUpload:(id)a3;
- (int)StringAsCellularRadioTechnology:(id)a3;
- (int)StringAsWifiRadioTechnology:(id)a3;
- (int)cellularBand;
- (int)cellularPowerCostDownload;
- (int)cellularPowerCostUpload;
- (int)cellularRadioTechnology;
- (int)wifiRadioTechnology;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasCellularBandInfo:(BOOL)a3;
- (void)setHasCellularBandwidth:(BOOL)a3;
- (void)setHasCellularBars:(BOOL)a3;
- (void)setHasCellularKnownGood:(BOOL)a3;
- (void)setHasCellularLqm:(BOOL)a3;
- (void)setHasCellularMcc:(BOOL)a3;
- (void)setHasCellularMnc:(BOOL)a3;
- (void)setHasCellularPid:(BOOL)a3;
- (void)setHasCellularPowerCostDownload:(BOOL)a3;
- (void)setHasCellularPowerCostUpload:(BOOL)a3;
- (void)setHasCellularRadioTechnology:(BOOL)a3;
- (void)setHasCellularTac:(BOOL)a3;
- (void)setHasCellularUarfcn:(BOOL)a3;
- (void)setHasWifiKnownGood:(BOOL)a3;
- (void)setHasWifiLqm:(BOOL)a3;
- (void)setHasWifiRadioTechnology:(BOOL)a3;
- (void)setHasWifiRssi:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDNWL2Report

- (void)dealloc
{
  [(AWDNWL2Report *)self setCellularCellType:0];
  v3.receiver = self;
  v3.super_class = AWDNWL2Report;
  [(AWDNWL2Report *)&v3 dealloc];
}

- (void)setHasCellularLqm:(BOOL)a3
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

- (int)cellularPowerCostDownload
{
  if (*(&self->_has + 1))
  {
    return self->_cellularPowerCostDownload;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCellularPowerCostDownload:(BOOL)a3
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

- (int)StringAsCellularPowerCostDownload:(id)a3
{
  if ([a3 isEqualToString:@"NW_L2_POWER_COST_UNKNOWN"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"NW_L2_POWER_COST_LOW"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"NW_L2_POWER_COST_MEDIUM"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"NW_L2_POWER_COST_HIGH"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"NW_L2_POWER_COST_NOTSET"])
  {
    return 255;
  }

  return 0;
}

- (int)cellularPowerCostUpload
{
  if ((*(&self->_has + 1) & 2) != 0)
  {
    return self->_cellularPowerCostUpload;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCellularPowerCostUpload:(BOOL)a3
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

- (int)StringAsCellularPowerCostUpload:(id)a3
{
  if ([a3 isEqualToString:@"NW_L2_POWER_COST_UNKNOWN"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"NW_L2_POWER_COST_LOW"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"NW_L2_POWER_COST_MEDIUM"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"NW_L2_POWER_COST_HIGH"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"NW_L2_POWER_COST_NOTSET"])
  {
    return 255;
  }

  return 0;
}

- (void)setHasCellularKnownGood:(BOOL)a3
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

- (int)cellularRadioTechnology
{
  if ((*(&self->_has + 1) & 4) != 0)
  {
    return self->_cellularRadioTechnology;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCellularRadioTechnology:(BOOL)a3
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

- (int)StringAsCellularRadioTechnology:(id)a3
{
  if ([a3 isEqualToString:@"NW_L2_RADIO_TECHNOLOGY_TYPE_UNKNOWN"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLOTHERS"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLLTE"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLGSM"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLUTRAN"])
  {
    return 4;
  }

  if ([a3 isEqualToString:@"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLCDMA1X"])
  {
    return 5;
  }

  if ([a3 isEqualToString:@"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLCDMAEVDO"])
  {
    return 6;
  }

  if ([a3 isEqualToString:@"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLCDMAHYBRID"])
  {
    return 7;
  }

  if ([a3 isEqualToString:@"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLTDSCDMA"])
  {
    return 8;
  }

  if ([a3 isEqualToString:@"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLUMTS"])
  {
    return 9;
  }

  if ([a3 isEqualToString:@"NW_L2_RADIO_TECHNOLOGY_TYPE_DUAL"])
  {
    return 10;
  }

  if ([a3 isEqualToString:@"NW_L2_RADIO_TECHNOLOGY_TYPE_BEYOND"])
  {
    return 11;
  }

  if ([a3 isEqualToString:@"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFI11A"])
  {
    return 128;
  }

  if ([a3 isEqualToString:@"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFI11B"])
  {
    return 129;
  }

  if ([a3 isEqualToString:@"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFI11G"])
  {
    return 130;
  }

  if ([a3 isEqualToString:@"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFI11N"])
  {
    return 131;
  }

  if ([a3 isEqualToString:@"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFITURBOA"])
  {
    return 132;
  }

  if ([a3 isEqualToString:@"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFITURBOG"])
  {
    return 133;
  }

  if ([a3 isEqualToString:@"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFI11AC"])
  {
    return 134;
  }

  if ([a3 isEqualToString:@"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFI11AX"])
  {
    return 135;
  }

  return 0;
}

- (void)setHasWifiLqm:(BOOL)a3
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

- (void)setHasWifiRssi:(BOOL)a3
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

- (void)setHasWifiKnownGood:(BOOL)a3
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

- (int)wifiRadioTechnology
{
  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    return self->_wifiRadioTechnology;
  }

  else
  {
    return 0;
  }
}

- (void)setHasWifiRadioTechnology:(BOOL)a3
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

- (int)StringAsWifiRadioTechnology:(id)a3
{
  if ([a3 isEqualToString:@"NW_L2_RADIO_TECHNOLOGY_TYPE_UNKNOWN"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLOTHERS"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLLTE"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLGSM"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLUTRAN"])
  {
    return 4;
  }

  if ([a3 isEqualToString:@"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLCDMA1X"])
  {
    return 5;
  }

  if ([a3 isEqualToString:@"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLCDMAEVDO"])
  {
    return 6;
  }

  if ([a3 isEqualToString:@"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLCDMAHYBRID"])
  {
    return 7;
  }

  if ([a3 isEqualToString:@"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLTDSCDMA"])
  {
    return 8;
  }

  if ([a3 isEqualToString:@"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLUMTS"])
  {
    return 9;
  }

  if ([a3 isEqualToString:@"NW_L2_RADIO_TECHNOLOGY_TYPE_DUAL"])
  {
    return 10;
  }

  if ([a3 isEqualToString:@"NW_L2_RADIO_TECHNOLOGY_TYPE_BEYOND"])
  {
    return 11;
  }

  if ([a3 isEqualToString:@"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFI11A"])
  {
    return 128;
  }

  if ([a3 isEqualToString:@"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFI11B"])
  {
    return 129;
  }

  if ([a3 isEqualToString:@"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFI11G"])
  {
    return 130;
  }

  if ([a3 isEqualToString:@"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFI11N"])
  {
    return 131;
  }

  if ([a3 isEqualToString:@"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFITURBOA"])
  {
    return 132;
  }

  if ([a3 isEqualToString:@"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFITURBOG"])
  {
    return 133;
  }

  if ([a3 isEqualToString:@"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFI11AC"])
  {
    return 134;
  }

  if ([a3 isEqualToString:@"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFI11AX"])
  {
    return 135;
  }

  return 0;
}

- (void)setHasCellularMnc:(BOOL)a3
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

- (void)setHasCellularMcc:(BOOL)a3
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

- (void)setHasCellularUarfcn:(BOOL)a3
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

- (void)setHasCellularPid:(BOOL)a3
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

- (void)setHasCellularBandInfo:(BOOL)a3
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

- (void)setHasCellularBandwidth:(BOOL)a3
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

- (void)setHasCellularTac:(BOOL)a3
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

- (void)setHasCellularBars:(BOOL)a3
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

- (int)cellularBand
{
  if (*&self->_has)
  {
    return self->_cellularBand;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsCellularBand:(id)a3
{
  if ([a3 isEqualToString:@"NW_L2_BAND_UNKNOWN"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"NW_L2_BAND_LESS"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"NW_L2_BAND_MORE"])
  {
    return 2;
  }

  return 0;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDNWL2Report;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDNWL2Report description](&v3, sel_description), -[AWDNWL2Report dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((*&has & 0x10) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_cellularLqm), @"cellular_lqm"}];
    has = self->_has;
    if ((*&has & 0x100) == 0)
    {
LABEL_3:
      if ((*&has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_45;
    }
  }

  else if ((*&has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  cellularPowerCostDownload = self->_cellularPowerCostDownload;
  if (cellularPowerCostDownload <= 1)
  {
    if (!cellularPowerCostDownload)
    {
      v8 = @"NW_L2_POWER_COST_UNKNOWN";
      goto LABEL_44;
    }

    if (cellularPowerCostDownload == 1)
    {
      v8 = @"NW_L2_POWER_COST_LOW";
      goto LABEL_44;
    }
  }

  else
  {
    switch(cellularPowerCostDownload)
    {
      case 2:
        v8 = @"NW_L2_POWER_COST_MEDIUM";
        goto LABEL_44;
      case 3:
        v8 = @"NW_L2_POWER_COST_HIGH";
        goto LABEL_44;
      case 255:
        v8 = @"NW_L2_POWER_COST_NOTSET";
        goto LABEL_44;
    }
  }

  v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_cellularPowerCostDownload];
LABEL_44:
  [v3 setObject:v8 forKey:@"cellular_power_cost_download"];
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_4:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_58;
  }

LABEL_45:
  cellularPowerCostUpload = self->_cellularPowerCostUpload;
  if (cellularPowerCostUpload <= 1)
  {
    if (!cellularPowerCostUpload)
    {
      v13 = @"NW_L2_POWER_COST_UNKNOWN";
      goto LABEL_57;
    }

    if (cellularPowerCostUpload == 1)
    {
      v13 = @"NW_L2_POWER_COST_LOW";
      goto LABEL_57;
    }
  }

  else
  {
    switch(cellularPowerCostUpload)
    {
      case 2:
        v13 = @"NW_L2_POWER_COST_MEDIUM";
        goto LABEL_57;
      case 3:
        v13 = @"NW_L2_POWER_COST_HIGH";
        goto LABEL_57;
      case 255:
        v13 = @"NW_L2_POWER_COST_NOTSET";
        goto LABEL_57;
    }
  }

  v13 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_cellularPowerCostUpload];
LABEL_57:
  [v3 setObject:v13 forKey:@"cellular_power_cost_upload"];
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_5:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_59;
  }

LABEL_58:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_cellularKnownGood), @"cellular_known_good"}];
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_6:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_103;
  }

LABEL_59:
  cellularRadioTechnology = self->_cellularRadioTechnology;
  if (cellularRadioTechnology > 9)
  {
    if (cellularRadioTechnology > 130)
    {
      if (cellularRadioTechnology > 132)
      {
        switch(cellularRadioTechnology)
        {
          case 133:
            v15 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFITURBOG";
            goto LABEL_102;
          case 134:
            v15 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFI11AC";
            goto LABEL_102;
          case 135:
            v15 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFI11AX";
            goto LABEL_102;
        }

        goto LABEL_101;
      }

      if (cellularRadioTechnology == 131)
      {
        v15 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFI11N";
      }

      else
      {
        v15 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFITURBOA";
      }
    }

    else
    {
      if (cellularRadioTechnology <= 127)
      {
        if (cellularRadioTechnology == 10)
        {
          v15 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_DUAL";
          goto LABEL_102;
        }

        if (cellularRadioTechnology == 11)
        {
          v15 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_BEYOND";
          goto LABEL_102;
        }

        goto LABEL_101;
      }

      if (cellularRadioTechnology == 128)
      {
        v15 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFI11A";
      }

      else if (cellularRadioTechnology == 129)
      {
        v15 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFI11B";
      }

      else
      {
        v15 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFI11G";
      }
    }
  }

  else
  {
    if (cellularRadioTechnology <= 4)
    {
      if (cellularRadioTechnology > 1)
      {
        if (cellularRadioTechnology == 2)
        {
          v15 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLLTE";
        }

        else if (cellularRadioTechnology == 3)
        {
          v15 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLGSM";
        }

        else
        {
          v15 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLUTRAN";
        }

        goto LABEL_102;
      }

      if (!cellularRadioTechnology)
      {
        v15 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_UNKNOWN";
        goto LABEL_102;
      }

      if (cellularRadioTechnology == 1)
      {
        v15 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLOTHERS";
        goto LABEL_102;
      }

LABEL_101:
      v15 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_cellularRadioTechnology];
      goto LABEL_102;
    }

    if (cellularRadioTechnology <= 6)
    {
      if (cellularRadioTechnology == 5)
      {
        v15 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLCDMA1X";
      }

      else
      {
        v15 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLCDMAEVDO";
      }
    }

    else if (cellularRadioTechnology == 7)
    {
      v15 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLCDMAHYBRID";
    }

    else if (cellularRadioTechnology == 8)
    {
      v15 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLTDSCDMA";
    }

    else
    {
      v15 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLUMTS";
    }
  }

LABEL_102:
  [v3 setObject:v15 forKey:@"cellular_radio_technology"];
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_7:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_104;
  }

LABEL_103:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_wifiLqm), @"wifi_lqm"}];
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_8:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_105;
  }

LABEL_104:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_wifiRssi), @"wifi_rssi"}];
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_9:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_106;
  }

LABEL_105:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_wifiKnownGood), @"wifi_known_good"}];
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_10:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_150;
  }

LABEL_106:
  wifiRadioTechnology = self->_wifiRadioTechnology;
  if (wifiRadioTechnology > 9)
  {
    if (wifiRadioTechnology > 130)
    {
      if (wifiRadioTechnology > 132)
      {
        switch(wifiRadioTechnology)
        {
          case 133:
            v17 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFITURBOG";
            goto LABEL_149;
          case 134:
            v17 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFI11AC";
            goto LABEL_149;
          case 135:
            v17 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFI11AX";
            goto LABEL_149;
        }

        goto LABEL_148;
      }

      if (wifiRadioTechnology == 131)
      {
        v17 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFI11N";
      }

      else
      {
        v17 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFITURBOA";
      }
    }

    else
    {
      if (wifiRadioTechnology <= 127)
      {
        if (wifiRadioTechnology == 10)
        {
          v17 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_DUAL";
          goto LABEL_149;
        }

        if (wifiRadioTechnology == 11)
        {
          v17 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_BEYOND";
          goto LABEL_149;
        }

        goto LABEL_148;
      }

      if (wifiRadioTechnology == 128)
      {
        v17 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFI11A";
      }

      else if (wifiRadioTechnology == 129)
      {
        v17 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFI11B";
      }

      else
      {
        v17 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFI11G";
      }
    }
  }

  else
  {
    if (wifiRadioTechnology <= 4)
    {
      if (wifiRadioTechnology > 1)
      {
        if (wifiRadioTechnology == 2)
        {
          v17 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLLTE";
        }

        else if (wifiRadioTechnology == 3)
        {
          v17 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLGSM";
        }

        else
        {
          v17 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLUTRAN";
        }

        goto LABEL_149;
      }

      if (!wifiRadioTechnology)
      {
        v17 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_UNKNOWN";
        goto LABEL_149;
      }

      if (wifiRadioTechnology == 1)
      {
        v17 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLOTHERS";
        goto LABEL_149;
      }

LABEL_148:
      v17 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_wifiRadioTechnology];
      goto LABEL_149;
    }

    if (wifiRadioTechnology <= 6)
    {
      if (wifiRadioTechnology == 5)
      {
        v17 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLCDMA1X";
      }

      else
      {
        v17 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLCDMAEVDO";
      }
    }

    else if (wifiRadioTechnology == 7)
    {
      v17 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLCDMAHYBRID";
    }

    else if (wifiRadioTechnology == 8)
    {
      v17 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLTDSCDMA";
    }

    else
    {
      v17 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLUMTS";
    }
  }

LABEL_149:
  [v3 setObject:v17 forKey:@"wifi_radio_technology"];
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_11:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_151;
  }

LABEL_150:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_cellularMnc), @"cellular_mnc"}];
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_12:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_152;
  }

LABEL_151:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_cellularMcc), @"cellular_mcc"}];
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_13:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_153;
  }

LABEL_152:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_cellularUarfcn), @"cellular_uarfcn"}];
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_14:
    if ((*&has & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_153:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_cellularPid), @"cellular_pid"}];
  if ((*&self->_has & 2) != 0)
  {
LABEL_15:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_cellularBandInfo), @"cellular_band_info"}];
  }

LABEL_16:
  cellularCellType = self->_cellularCellType;
  if (cellularCellType)
  {
    [v3 setObject:cellularCellType forKey:@"cellular_cell_type"];
  }

  v6 = self->_has;
  if ((*&v6 & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_cellularBandwidth), @"cellular_bandwidth"}];
    v6 = self->_has;
    if ((*&v6 & 0x800) == 0)
    {
LABEL_20:
      if ((*&v6 & 8) == 0)
      {
        goto LABEL_21;
      }

LABEL_31:
      [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_cellularBars), @"cellular_bars"}];
      if ((*&self->_has & 1) == 0)
      {
        return v3;
      }

      goto LABEL_32;
    }
  }

  else if ((*&v6 & 0x800) == 0)
  {
    goto LABEL_20;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_cellularTac), @"cellular_tac"}];
  v6 = self->_has;
  if ((*&v6 & 8) != 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  if ((*&v6 & 1) == 0)
  {
    return v3;
  }

LABEL_32:
  cellularBand = self->_cellularBand;
  if (cellularBand >= 3)
  {
    v10 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_cellularBand];
  }

  else
  {
    v10 = off_29EE329F0[cellularBand];
  }

  [v3 setObject:v10 forKey:@"cellular_band"];
  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((*&has & 0x10) != 0)
  {
    cellularLqm = self->_cellularLqm;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((*&has & 0x100) == 0)
    {
LABEL_3:
      if ((*&has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((*&has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  cellularPowerCostDownload = self->_cellularPowerCostDownload;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_4:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  cellularPowerCostUpload = self->_cellularPowerCostUpload;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_5:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  cellularKnownGood = self->_cellularKnownGood;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_6:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  cellularRadioTechnology = self->_cellularRadioTechnology;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_7:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  wifiLqm = self->_wifiLqm;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_8:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  wifiRssi = self->_wifiRssi;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_9:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  wifiKnownGood = self->_wifiKnownGood;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_10:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  wifiRadioTechnology = self->_wifiRadioTechnology;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_11:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  cellularMnc = self->_cellularMnc;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_12:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  cellularMcc = self->_cellularMcc;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_13:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  cellularUarfcn = self->_cellularUarfcn;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_14:
    if ((*&has & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_35:
  cellularPid = self->_cellularPid;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_15:
    cellularBandInfo = self->_cellularBandInfo;
    PBDataWriterWriteInt32Field();
  }

LABEL_16:
  if (self->_cellularCellType)
  {
    PBDataWriterWriteStringField();
  }

  v6 = self->_has;
  if ((*&v6 & 4) != 0)
  {
    cellularBandwidth = self->_cellularBandwidth;
    PBDataWriterWriteInt32Field();
    v6 = self->_has;
    if ((*&v6 & 0x800) == 0)
    {
LABEL_20:
      if ((*&v6 & 8) == 0)
      {
        goto LABEL_21;
      }

LABEL_39:
      cellularBars = self->_cellularBars;
      PBDataWriterWriteInt32Field();
      if ((*&self->_has & 1) == 0)
      {
        return;
      }

      goto LABEL_40;
    }
  }

  else if ((*&v6 & 0x800) == 0)
  {
    goto LABEL_20;
  }

  cellularTac = self->_cellularTac;
  PBDataWriterWriteInt32Field();
  v6 = self->_has;
  if ((*&v6 & 8) != 0)
  {
    goto LABEL_39;
  }

LABEL_21:
  if ((*&v6 & 1) == 0)
  {
    return;
  }

LABEL_40:
  cellularBand = self->_cellularBand;

  PBDataWriterWriteInt32Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((*&has & 0x10) != 0)
  {
    *(a3 + 8) = self->_cellularLqm;
    *(a3 + 21) |= 0x10u;
    has = self->_has;
    if ((*&has & 0x100) == 0)
    {
LABEL_3:
      if ((*&has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((*&has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 12) = self->_cellularPowerCostDownload;
  *(a3 + 21) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_4:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(a3 + 13) = self->_cellularPowerCostUpload;
  *(a3 + 21) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_5:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(a3 + 80) = self->_cellularKnownGood;
  *(a3 + 21) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_6:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(a3 + 14) = self->_cellularRadioTechnology;
  *(a3 + 21) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_7:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(a3 + 17) = self->_wifiLqm;
  *(a3 + 21) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_8:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(a3 + 19) = self->_wifiRssi;
  *(a3 + 21) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_9:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(a3 + 81) = self->_wifiKnownGood;
  *(a3 + 21) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_10:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(a3 + 18) = self->_wifiRadioTechnology;
  *(a3 + 21) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_11:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(a3 + 10) = self->_cellularMnc;
  *(a3 + 21) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_12:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(a3 + 9) = self->_cellularMcc;
  *(a3 + 21) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_13:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(a3 + 16) = self->_cellularUarfcn;
  *(a3 + 21) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_14:
    if ((*&has & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_36:
  *(a3 + 11) = self->_cellularPid;
  *(a3 + 21) |= 0x80u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_15:
    *(a3 + 3) = self->_cellularBandInfo;
    *(a3 + 21) |= 2u;
  }

LABEL_16:
  if (self->_cellularCellType)
  {
    [a3 setCellularCellType:?];
  }

  v6 = self->_has;
  if ((*&v6 & 4) != 0)
  {
    *(a3 + 4) = self->_cellularBandwidth;
    *(a3 + 21) |= 4u;
    v6 = self->_has;
    if ((*&v6 & 0x800) == 0)
    {
LABEL_20:
      if ((*&v6 & 8) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_40;
    }
  }

  else if ((*&v6 & 0x800) == 0)
  {
    goto LABEL_20;
  }

  *(a3 + 15) = self->_cellularTac;
  *(a3 + 21) |= 0x800u;
  v6 = self->_has;
  if ((*&v6 & 8) == 0)
  {
LABEL_21:
    if ((*&v6 & 1) == 0)
    {
      return;
    }

    goto LABEL_22;
  }

LABEL_40:
  *(a3 + 5) = self->_cellularBars;
  *(a3 + 21) |= 8u;
  if ((*&self->_has & 1) == 0)
  {
    return;
  }

LABEL_22:
  *(a3 + 2) = self->_cellularBand;
  *(a3 + 21) |= 1u;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((*&has & 0x10) != 0)
  {
    *(v5 + 32) = self->_cellularLqm;
    *(v5 + 84) |= 0x10u;
    has = self->_has;
    if ((*&has & 0x100) == 0)
    {
LABEL_3:
      if ((*&has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((*&has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 48) = self->_cellularPowerCostDownload;
  *(v5 + 84) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_4:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v5 + 52) = self->_cellularPowerCostUpload;
  *(v5 + 84) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_5:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v5 + 80) = self->_cellularKnownGood;
  *(v5 + 84) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_6:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v5 + 56) = self->_cellularRadioTechnology;
  *(v5 + 84) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_7:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v5 + 68) = self->_wifiLqm;
  *(v5 + 84) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_8:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v5 + 76) = self->_wifiRssi;
  *(v5 + 84) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_9:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v5 + 81) = self->_wifiKnownGood;
  *(v5 + 84) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_10:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v5 + 72) = self->_wifiRadioTechnology;
  *(v5 + 84) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_11:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(v5 + 40) = self->_cellularMnc;
  *(v5 + 84) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_12:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v5 + 36) = self->_cellularMcc;
  *(v5 + 84) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_13:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v5 + 64) = self->_cellularUarfcn;
  *(v5 + 84) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_14:
    if ((*&has & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_34:
  *(v5 + 44) = self->_cellularPid;
  *(v5 + 84) |= 0x80u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_15:
    *(v5 + 12) = self->_cellularBandInfo;
    *(v5 + 84) |= 2u;
  }

LABEL_16:

  *(v6 + 24) = [(NSString *)self->_cellularCellType copyWithZone:a3];
  v8 = self->_has;
  if ((*&v8 & 4) != 0)
  {
    *(v6 + 16) = self->_cellularBandwidth;
    *(v6 + 84) |= 4u;
    v8 = self->_has;
    if ((*&v8 & 0x800) == 0)
    {
LABEL_18:
      if ((*&v8 & 8) == 0)
      {
        goto LABEL_19;
      }

LABEL_38:
      *(v6 + 20) = self->_cellularBars;
      *(v6 + 84) |= 8u;
      if ((*&self->_has & 1) == 0)
      {
        return v6;
      }

      goto LABEL_20;
    }
  }

  else if ((*&v8 & 0x800) == 0)
  {
    goto LABEL_18;
  }

  *(v6 + 60) = self->_cellularTac;
  *(v6 + 84) |= 0x800u;
  v8 = self->_has;
  if ((*&v8 & 8) != 0)
  {
    goto LABEL_38;
  }

LABEL_19:
  if (*&v8)
  {
LABEL_20:
    *(v6 + 8) = self->_cellularBand;
    *(v6 + 84) |= 1u;
  }

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
  v7 = *(a3 + 21);
  if ((*&has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_cellularLqm != *(a3 + 8))
    {
      goto LABEL_100;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_100;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v7 & 0x100) == 0 || self->_cellularPowerCostDownload != *(a3 + 12))
    {
      goto LABEL_100;
    }
  }

  else if ((v7 & 0x100) != 0)
  {
    goto LABEL_100;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v7 & 0x200) == 0 || self->_cellularPowerCostUpload != *(a3 + 13))
    {
      goto LABEL_100;
    }
  }

  else if ((v7 & 0x200) != 0)
  {
    goto LABEL_100;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v7 & 0x10000) == 0)
    {
      goto LABEL_100;
    }

    v8 = *(a3 + 80);
    if (self->_cellularKnownGood)
    {
      if ((*(a3 + 80) & 1) == 0)
      {
        goto LABEL_100;
      }
    }

    else if (*(a3 + 80))
    {
      goto LABEL_100;
    }
  }

  else if ((v7 & 0x10000) != 0)
  {
    goto LABEL_100;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v7 & 0x400) == 0 || self->_cellularRadioTechnology != *(a3 + 14))
    {
      goto LABEL_100;
    }
  }

  else if ((v7 & 0x400) != 0)
  {
    goto LABEL_100;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v7 & 0x2000) == 0 || self->_wifiLqm != *(a3 + 17))
    {
      goto LABEL_100;
    }
  }

  else if ((v7 & 0x2000) != 0)
  {
    goto LABEL_100;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v7 & 0x8000) == 0 || self->_wifiRssi != *(a3 + 19))
    {
      goto LABEL_100;
    }
  }

  else if ((v7 & 0x8000) != 0)
  {
    goto LABEL_100;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v7 & 0x20000) != 0)
    {
      v9 = *(a3 + 81);
      if (self->_wifiKnownGood)
      {
        if ((*(a3 + 81) & 1) == 0)
        {
          goto LABEL_100;
        }
      }

      else if (*(a3 + 81))
      {
        goto LABEL_100;
      }

      goto LABEL_42;
    }

LABEL_100:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((v7 & 0x20000) != 0)
  {
    goto LABEL_100;
  }

LABEL_42:
  if ((*&has & 0x4000) != 0)
  {
    if ((v7 & 0x4000) == 0 || self->_wifiRadioTechnology != *(a3 + 18))
    {
      goto LABEL_100;
    }
  }

  else if ((v7 & 0x4000) != 0)
  {
    goto LABEL_100;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || self->_cellularMnc != *(a3 + 10))
    {
      goto LABEL_100;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_100;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_cellularMcc != *(a3 + 9))
    {
      goto LABEL_100;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_100;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v7 & 0x1000) == 0 || self->_cellularUarfcn != *(a3 + 16))
    {
      goto LABEL_100;
    }
  }

  else if ((v7 & 0x1000) != 0)
  {
    goto LABEL_100;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_cellularPid != *(a3 + 11))
    {
      goto LABEL_100;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_100;
  }

  if ((*&has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_cellularBandInfo != *(a3 + 3))
    {
      goto LABEL_100;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_100;
  }

  cellularCellType = self->_cellularCellType;
  if (cellularCellType | *(a3 + 3))
  {
    v5 = [(NSString *)cellularCellType isEqual:?];
    if (!v5)
    {
      return v5;
    }

    has = self->_has;
  }

  v11 = *(a3 + 21);
  if ((*&has & 4) != 0)
  {
    if ((v11 & 4) == 0 || self->_cellularBandwidth != *(a3 + 4))
    {
      goto LABEL_100;
    }
  }

  else if ((v11 & 4) != 0)
  {
    goto LABEL_100;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v11 & 0x800) == 0 || self->_cellularTac != *(a3 + 15))
    {
      goto LABEL_100;
    }
  }

  else if ((v11 & 0x800) != 0)
  {
    goto LABEL_100;
  }

  if ((*&has & 8) != 0)
  {
    if ((v11 & 8) == 0 || self->_cellularBars != *(a3 + 5))
    {
      goto LABEL_100;
    }
  }

  else if ((v11 & 8) != 0)
  {
    goto LABEL_100;
  }

  LOBYTE(v5) = (*(a3 + 21) & 1) == 0;
  if (*&has)
  {
    if ((v11 & 1) == 0 || self->_cellularBand != *(a3 + 2))
    {
      goto LABEL_100;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 0x10) != 0)
  {
    v24 = 2654435761 * self->_cellularLqm;
    if ((*&has & 0x100) != 0)
    {
LABEL_3:
      v23 = 2654435761 * self->_cellularPowerCostDownload;
      if ((*&has & 0x200) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v24 = 0;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_3;
    }
  }

  v23 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_4:
    v22 = 2654435761 * self->_cellularPowerCostUpload;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v22 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_5:
    v21 = 2654435761 * self->_cellularKnownGood;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  v21 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_6:
    v20 = 2654435761 * self->_cellularRadioTechnology;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v20 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_7:
    v19 = 2654435761 * self->_wifiLqm;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v19 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_8:
    v18 = 2654435761 * self->_wifiRssi;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v18 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_9:
    v4 = 2654435761 * self->_wifiKnownGood;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v4 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_10:
    v5 = 2654435761 * self->_wifiRadioTechnology;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v5 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_11:
    v6 = 2654435761 * self->_cellularMnc;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v6 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_12:
    v7 = 2654435761 * self->_cellularMcc;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v7 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_13:
    v8 = 2654435761 * self->_cellularUarfcn;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    v9 = 0;
    if ((*&has & 2) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_27:
  v8 = 0;
  if ((*&has & 0x80) == 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  v9 = 2654435761 * self->_cellularPid;
  if ((*&has & 2) != 0)
  {
LABEL_15:
    v10 = 2654435761 * self->_cellularBandInfo;
    goto LABEL_30;
  }

LABEL_29:
  v10 = 0;
LABEL_30:
  v11 = [(NSString *)self->_cellularCellType hash];
  v12 = self->_has;
  if ((*&v12 & 4) != 0)
  {
    v13 = 2654435761 * self->_cellularBandwidth;
    if ((*&v12 & 0x800) != 0)
    {
LABEL_32:
      v14 = 2654435761 * self->_cellularTac;
      if ((*&v12 & 8) != 0)
      {
        goto LABEL_33;
      }

LABEL_37:
      v15 = 0;
      if (*&v12)
      {
        goto LABEL_34;
      }

LABEL_38:
      v16 = 0;
      return v23 ^ v24 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v13 ^ v14 ^ v15 ^ v16 ^ v11;
    }
  }

  else
  {
    v13 = 0;
    if ((*&v12 & 0x800) != 0)
    {
      goto LABEL_32;
    }
  }

  v14 = 0;
  if ((*&v12 & 8) == 0)
  {
    goto LABEL_37;
  }

LABEL_33:
  v15 = 2654435761 * self->_cellularBars;
  if ((*&v12 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_34:
  v16 = 2654435761 * self->_cellularBand;
  return v23 ^ v24 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v13 ^ v14 ^ v15 ^ v16 ^ v11;
}

- (void)mergeFrom:(id)a3
{
  v5 = *(a3 + 21);
  if ((v5 & 0x10) != 0)
  {
    self->_cellularLqm = *(a3 + 8);
    *&self->_has |= 0x10u;
    v5 = *(a3 + 21);
    if ((v5 & 0x100) == 0)
    {
LABEL_3:
      if ((v5 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v5 & 0x100) == 0)
  {
    goto LABEL_3;
  }

  self->_cellularPowerCostDownload = *(a3 + 12);
  *&self->_has |= 0x100u;
  v5 = *(a3 + 21);
  if ((v5 & 0x200) == 0)
  {
LABEL_4:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_cellularPowerCostUpload = *(a3 + 13);
  *&self->_has |= 0x200u;
  v5 = *(a3 + 21);
  if ((v5 & 0x10000) == 0)
  {
LABEL_5:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_cellularKnownGood = *(a3 + 80);
  *&self->_has |= 0x10000u;
  v5 = *(a3 + 21);
  if ((v5 & 0x400) == 0)
  {
LABEL_6:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_cellularRadioTechnology = *(a3 + 14);
  *&self->_has |= 0x400u;
  v5 = *(a3 + 21);
  if ((v5 & 0x2000) == 0)
  {
LABEL_7:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_wifiLqm = *(a3 + 17);
  *&self->_has |= 0x2000u;
  v5 = *(a3 + 21);
  if ((v5 & 0x8000) == 0)
  {
LABEL_8:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_wifiRssi = *(a3 + 19);
  *&self->_has |= 0x8000u;
  v5 = *(a3 + 21);
  if ((v5 & 0x20000) == 0)
  {
LABEL_9:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_wifiKnownGood = *(a3 + 81);
  *&self->_has |= 0x20000u;
  v5 = *(a3 + 21);
  if ((v5 & 0x4000) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_wifiRadioTechnology = *(a3 + 18);
  *&self->_has |= 0x4000u;
  v5 = *(a3 + 21);
  if ((v5 & 0x40) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_cellularMnc = *(a3 + 10);
  *&self->_has |= 0x40u;
  v5 = *(a3 + 21);
  if ((v5 & 0x20) == 0)
  {
LABEL_12:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_cellularMcc = *(a3 + 9);
  *&self->_has |= 0x20u;
  v5 = *(a3 + 21);
  if ((v5 & 0x1000) == 0)
  {
LABEL_13:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_cellularUarfcn = *(a3 + 16);
  *&self->_has |= 0x1000u;
  v5 = *(a3 + 21);
  if ((v5 & 0x80) == 0)
  {
LABEL_14:
    if ((v5 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_36:
  self->_cellularPid = *(a3 + 11);
  *&self->_has |= 0x80u;
  if ((*(a3 + 21) & 2) != 0)
  {
LABEL_15:
    self->_cellularBandInfo = *(a3 + 3);
    *&self->_has |= 2u;
  }

LABEL_16:
  if (*(a3 + 3))
  {
    [(AWDNWL2Report *)self setCellularCellType:?];
  }

  v6 = *(a3 + 21);
  if ((v6 & 4) != 0)
  {
    self->_cellularBandwidth = *(a3 + 4);
    *&self->_has |= 4u;
    v6 = *(a3 + 21);
    if ((v6 & 0x800) == 0)
    {
LABEL_20:
      if ((v6 & 8) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_40;
    }
  }

  else if ((v6 & 0x800) == 0)
  {
    goto LABEL_20;
  }

  self->_cellularTac = *(a3 + 15);
  *&self->_has |= 0x800u;
  v6 = *(a3 + 21);
  if ((v6 & 8) == 0)
  {
LABEL_21:
    if ((v6 & 1) == 0)
    {
      return;
    }

    goto LABEL_22;
  }

LABEL_40:
  self->_cellularBars = *(a3 + 5);
  *&self->_has |= 8u;
  if ((*(a3 + 21) & 1) == 0)
  {
    return;
  }

LABEL_22:
  self->_cellularBand = *(a3 + 2);
  *&self->_has |= 1u;
}

@end