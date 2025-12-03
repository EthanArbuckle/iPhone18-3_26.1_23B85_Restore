@interface AWDWRMWiFiCell5GData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasApplicationCategory:(BOOL)category;
- (void)setHasCellDataLQM:(BOOL)m;
- (void)setHasCellDlBw:(BOOL)bw;
- (void)setHasCellEstimatedBw:(BOOL)bw;
- (void)setHasCellEstimatedLoad:(BOOL)load;
- (void)setHasCellLteEstimatedThroughput:(BOOL)throughput;
- (void)setHasCellLteRSRP:(BOOL)p;
- (void)setHasCellLteRSRQ:(BOOL)q;
- (void)setHasCellLteSNR:(BOOL)r;
- (void)setHasCellMaxDlCaNumConfigured:(BOOL)configured;
- (void)setHasCellMaxUlCaNumConfigured:(BOOL)configured;
- (void)setHasCellNrEstimatedThroughput:(BOOL)throughput;
- (void)setHasCellNrFR2active:(BOOL)r2active;
- (void)setHasCellNrRSRP:(BOOL)p;
- (void)setHasCellNrRSRQ:(BOOL)q;
- (void)setHasCellNrSNR:(BOOL)r;
- (void)setHasCellNsaEnabled:(BOOL)enabled;
- (void)setHasCellRrcState:(BOOL)state;
- (void)setHasCellTotalMimoLayers:(BOOL)layers;
- (void)setHasCellUlBw:(BOOL)bw;
- (void)setHasCellularRecommendationConfidence:(BOOL)confidence;
- (void)setHasCellularRecommendationScore:(BOOL)score;
- (void)setHasFr2DBRecommendation:(BOOL)recommendation;
- (void)setHasHighThermalTemperatureNotification:(BOOL)notification;
- (void)setHasLocationDBFR1Count:(BOOL)count;
- (void)setHasLocationDBFR2Count:(BOOL)count;
- (void)setHasRadioCoverage:(BOOL)coverage;
- (void)setHasRadioFrequency:(BOOL)frequency;
- (void)setHasRecommendedlink:(BOOL)recommendedlink;
- (void)setHasTotalNrBandwidth:(BOOL)bandwidth;
- (void)setHasTriggerReason:(BOOL)reason;
- (void)setHasWRMRecommendationReason:(BOOL)reason;
- (void)setHasWiFiPredictedThroughput:(BOOL)throughput;
- (void)setHasWiFiThroughput:(BOOL)throughput;
- (void)setHasWifPoi:(BOOL)poi;
- (void)setHasWifiCca:(BOOL)cca;
- (void)setHasWifiEstThoughtput:(BOOL)thoughtput;
- (void)setHasWifiQbssLoad:(BOOL)load;
- (void)setHasWifiRecommendationConfidence:(BOOL)confidence;
- (void)setHasWifiRecommendationScore:(BOOL)score;
- (void)setHasWifiRssi:(BOOL)rssi;
- (void)setHasWifiRxRetry:(BOOL)retry;
- (void)setHasWifiSnr:(BOOL)snr;
- (void)setHasWifiStationCount:(BOOL)count;
- (void)setHasWifiTxPER:(BOOL)r;
- (void)setHasWifiWghtAVGRXPHYRATE:(BOOL)e;
- (void)setHasWifiWghtAVGSNR:(BOOL)r;
- (void)setHasWifiWghtAVGTXPHYRATE:(BOOL)e;
- (void)setHasWifiWgtAVGRSSI:(BOOL)i;
- (void)setHasWifiWifiEstThoughtputConfidence:(BOOL)confidence;
- (void)writeTo:(id)to;
@end

@implementation AWDWRMWiFiCell5GData

- (void)dealloc
{
  [(AWDWRMWiFiCell5GData *)self setCellRatType:0];
  v3.receiver = self;
  v3.super_class = AWDWRMWiFiCell5GData;
  [(AWDWRMWiFiCell5GData *)&v3 dealloc];
}

- (void)setHasWifiRssi:(BOOL)rssi
{
  v3 = 0x8000000000;
  if (!rssi)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7FFFFFFFFFLL | v3);
}

- (void)setHasWifiSnr:(BOOL)snr
{
  v3 = 0x20000000000;
  if (!snr)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFFFFFFFFFFLL | v3);
}

- (void)setHasWifiTxPER:(BOOL)r
{
  v3 = 0x80000000000;
  if (!r)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FFFFFFFFFFLL | v3);
}

- (void)setHasWifiRxRetry:(BOOL)retry
{
  v3 = 0x10000000000;
  if (!retry)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFFFFFFFFFFLL | v3);
}

- (void)setHasWifiCca:(BOOL)cca
{
  v3 = 0x400000000;
  if (!cca)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (void)setHasWifiQbssLoad:(BOOL)load
{
  v3 = 0x1000000000;
  if (!load)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3);
}

- (void)setHasWifiStationCount:(BOOL)count
{
  v3 = 0x40000000000;
  if (!count)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFFFFFFFFFFLL | v3);
}

- (void)setHasWifPoi:(BOOL)poi
{
  v3 = 0x200000000;
  if (!poi)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)setHasWifiWgtAVGRSSI:(BOOL)i
{
  v3 = 0x800000000000;
  if (!i)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFFFFFFFFFFLL | v3);
}

- (void)setHasWifiWghtAVGSNR:(BOOL)r
{
  v3 = 0x200000000000;
  if (!r)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFFFFFFFFFFLL | v3);
}

- (void)setHasWifiWghtAVGTXPHYRATE:(BOOL)e
{
  v3 = 0x400000000000;
  if (!e)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFFFFFFFFFFLL | v3);
}

- (void)setHasWifiWghtAVGRXPHYRATE:(BOOL)e
{
  v3 = 0x100000000000;
  if (!e)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFFFFFFFFFFLL | v3);
}

- (void)setHasWifiEstThoughtput:(BOOL)thoughtput
{
  v3 = 0x800000000;
  if (!thoughtput)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3);
}

- (void)setHasWifiWifiEstThoughtputConfidence:(BOOL)confidence
{
  v3 = 0x1000000000000;
  if (!confidence)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFFFFFFFFFFLL | v3);
}

- (void)setHasCellLteRSRP:(BOOL)p
{
  v3 = 128;
  if (!p)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (void)setHasCellLteSNR:(BOOL)r
{
  v3 = 512;
  if (!r)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasCellLteRSRQ:(BOOL)q
{
  v3 = 256;
  if (!q)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setHasCellNrRSRP:(BOOL)p
{
  v3 = 0x4000;
  if (!p)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setHasCellNrRSRQ:(BOOL)q
{
  v3 = 0x8000;
  if (!q)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setHasCellNrSNR:(BOOL)r
{
  v3 = 0x10000;
  if (!r)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (void)setHasCellDataLQM:(BOOL)m
{
  v3 = 4;
  if (!m)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setHasCellRrcState:(BOOL)state
{
  v3 = 0x40000;
  if (!state)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setHasCellNrFR2active:(BOOL)r2active
{
  v3 = 0x2000;
  if (!r2active)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)setHasCellLteEstimatedThroughput:(BOOL)throughput
{
  v3 = 64;
  if (!throughput)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setHasCellNrEstimatedThroughput:(BOOL)throughput
{
  v3 = 4096;
  if (!throughput)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setHasCellNsaEnabled:(BOOL)enabled
{
  v3 = 0x20000;
  if (!enabled)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)setHasCellDlBw:(BOOL)bw
{
  v3 = 8;
  if (!bw)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (void)setHasCellUlBw:(BOOL)bw
{
  v3 = 0x100000;
  if (!bw)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setHasCellMaxDlCaNumConfigured:(BOOL)configured
{
  v3 = 1024;
  if (!configured)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setHasCellMaxUlCaNumConfigured:(BOOL)configured
{
  v3 = 2048;
  if (!configured)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setHasCellEstimatedLoad:(BOOL)load
{
  v3 = 32;
  if (!load)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setHasCellEstimatedBw:(BOOL)bw
{
  v3 = 16;
  if (!bw)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (void)setHasRecommendedlink:(BOOL)recommendedlink
{
  v3 = 0x8000000;
  if (!recommendedlink)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)setHasFr2DBRecommendation:(BOOL)recommendation
{
  v3 = 0x2000000000000;
  if (!recommendation)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFFFFFFFFFFLL | v3);
}

- (void)setHasLocationDBFR1Count:(BOOL)count
{
  v3 = 0x800000;
  if (!count)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setHasLocationDBFR2Count:(BOOL)count
{
  v3 = 0x1000000;
  if (!count)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setHasHighThermalTemperatureNotification:(BOOL)notification
{
  v3 = 0x4000000000000;
  if (!notification)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFFFFFFFFFFLL | v3);
}

- (void)setHasWiFiThroughput:(BOOL)throughput
{
  v3 = 0x100000000;
  if (!throughput)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setHasWiFiPredictedThroughput:(BOOL)throughput
{
  v3 = 0x80000000;
  if (!throughput)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (void)setHasWRMRecommendationReason:(BOOL)reason
{
  v3 = 0x40000000;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setHasWifiRecommendationScore:(BOOL)score
{
  v3 = 0x4000000000;
  if (!score)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3);
}

- (void)setHasWifiRecommendationConfidence:(BOOL)confidence
{
  v3 = 0x2000000000;
  if (!confidence)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3);
}

- (void)setHasCellularRecommendationScore:(BOOL)score
{
  v3 = 0x400000;
  if (!score)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)setHasCellularRecommendationConfidence:(BOOL)confidence
{
  v3 = 0x200000;
  if (!confidence)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)setHasRadioCoverage:(BOOL)coverage
{
  v3 = 0x2000000;
  if (!coverage)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setHasRadioFrequency:(BOOL)frequency
{
  v3 = 0x4000000;
  if (!frequency)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setHasTriggerReason:(BOOL)reason
{
  v3 = 0x20000000;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)setHasApplicationCategory:(BOOL)category
{
  v3 = 2;
  if (!category)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setHasCellTotalMimoLayers:(BOOL)layers
{
  v3 = 0x80000;
  if (!layers)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)setHasTotalNrBandwidth:(BOOL)bandwidth
{
  v3 = 0x10000000;
  if (!bandwidth)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWRMWiFiCell5GData;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWRMWiFiCell5GData description](&v3, sel_description), -[AWDWRMWiFiCell5GData dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (*&has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((*&has & 0x8000000000) == 0)
    {
LABEL_3:
      if ((*&has & 0x20000000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_59;
    }
  }

  else if ((*&has & 0x8000000000) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_wifiRssi), @"wifi_rssi"}];
  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x80000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_60;
  }

LABEL_59:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiSnr), @"wifi_snr"}];
  has = self->_has;
  if ((*&has & 0x80000000000) == 0)
  {
LABEL_5:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_61;
  }

LABEL_60:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiTxPER), @"wifi_txPER"}];
  has = self->_has;
  if ((*&has & 0x10000000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_62;
  }

LABEL_61:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiRxRetry), @"wifi_rxRetry"}];
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_63;
  }

LABEL_62:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiCca), @"wifi_cca"}];
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_64;
  }

LABEL_63:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiQbssLoad), @"wifi_qbssLoad"}];
  has = self->_has;
  if ((*&has & 0x40000000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_65;
  }

LABEL_64:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiStationCount), @"wifi_stationCount"}];
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x800000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_66;
  }

LABEL_65:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifPoi), @"wif_poi"}];
  has = self->_has;
  if ((*&has & 0x800000000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x200000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_67;
  }

LABEL_66:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_wifiWgtAVGRSSI), @"wifi_wgtAVG_RSSI"}];
  has = self->_has;
  if ((*&has & 0x200000000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x400000000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_68;
  }

LABEL_67:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiWghtAVGSNR), @"wifi_wghtAVG_SNR"}];
  has = self->_has;
  if ((*&has & 0x400000000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x100000000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_69;
  }

LABEL_68:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiWghtAVGTXPHYRATE), @"wifi_wghtAVG_TX_PHY_RATE"}];
  has = self->_has;
  if ((*&has & 0x100000000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_70;
  }

LABEL_69:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiWghtAVGRXPHYRATE), @"wifi_wghtAVG_RX_PHY_RATE"}];
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_15:
    if ((*&has & 0x1000000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_70:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiEstThoughtput), @"wifi_EstThoughtput"}];
  if ((*&self->_has & 0x1000000000000) != 0)
  {
LABEL_16:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiWifiEstThoughtputConfidence), @"wifi_wifi_EstThoughtput_confidence"}];
  }

LABEL_17:
  cellRatType = self->_cellRatType;
  if (cellRatType)
  {
    [dictionary setObject:cellRatType forKey:@"cell_ratType"];
  }

  v6 = self->_has;
  if ((*&v6 & 0x80) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_cellLteRSRP), @"cell_lteRSRP"}];
    v6 = self->_has;
    if ((*&v6 & 0x200) == 0)
    {
LABEL_21:
      if ((*&v6 & 0x100) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_74;
    }
  }

  else if ((*&v6 & 0x200) == 0)
  {
    goto LABEL_21;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_cellLteSNR), @"cell_lteSNR"}];
  v6 = self->_has;
  if ((*&v6 & 0x100) == 0)
  {
LABEL_22:
    if ((*&v6 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_75;
  }

LABEL_74:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_cellLteRSRQ), @"cell_lteRSRQ"}];
  v6 = self->_has;
  if ((*&v6 & 0x4000) == 0)
  {
LABEL_23:
    if ((*&v6 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_76;
  }

LABEL_75:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_cellNrRSRP), @"cell_nrRSRP"}];
  v6 = self->_has;
  if ((*&v6 & 0x8000) == 0)
  {
LABEL_24:
    if ((*&v6 & 0x10000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_77;
  }

LABEL_76:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_cellNrRSRQ), @"cell_nrRSRQ"}];
  v6 = self->_has;
  if ((*&v6 & 0x10000) == 0)
  {
LABEL_25:
    if ((*&v6 & 4) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_78;
  }

LABEL_77:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_cellNrSNR), @"cell_nrSNR"}];
  v6 = self->_has;
  if ((*&v6 & 4) == 0)
  {
LABEL_26:
    if ((*&v6 & 0x40000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_79;
  }

LABEL_78:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_cellDataLQM), @"cell_dataLQM"}];
  v6 = self->_has;
  if ((*&v6 & 0x40000) == 0)
  {
LABEL_27:
    if ((*&v6 & 0x2000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_80;
  }

LABEL_79:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_cellRrcState), @"cell_rrcState"}];
  v6 = self->_has;
  if ((*&v6 & 0x2000) == 0)
  {
LABEL_28:
    if ((*&v6 & 0x40) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_81;
  }

LABEL_80:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_cellNrFR2active), @"cell_nrFR2active"}];
  v6 = self->_has;
  if ((*&v6 & 0x40) == 0)
  {
LABEL_29:
    if ((*&v6 & 0x1000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_82;
  }

LABEL_81:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_cellLteEstimatedThroughput), @"cell_lteEstimatedThroughput"}];
  v6 = self->_has;
  if ((*&v6 & 0x1000) == 0)
  {
LABEL_30:
    if ((*&v6 & 0x20000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_83;
  }

LABEL_82:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_cellNrEstimatedThroughput), @"cell_nrEstimatedThroughput"}];
  v6 = self->_has;
  if ((*&v6 & 0x20000) == 0)
  {
LABEL_31:
    if ((*&v6 & 8) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_84;
  }

LABEL_83:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_cellNsaEnabled), @"cell_nsaEnabled"}];
  v6 = self->_has;
  if ((*&v6 & 8) == 0)
  {
LABEL_32:
    if ((*&v6 & 0x100000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_85;
  }

LABEL_84:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_cellDlBw), @"cell_dl_bw"}];
  v6 = self->_has;
  if ((*&v6 & 0x100000) == 0)
  {
LABEL_33:
    if ((*&v6 & 0x400) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_86;
  }

LABEL_85:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_cellUlBw), @"cell_ul_bw"}];
  v6 = self->_has;
  if ((*&v6 & 0x400) == 0)
  {
LABEL_34:
    if ((*&v6 & 0x800) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_87;
  }

LABEL_86:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_cellMaxDlCaNumConfigured), @"cell_max_dl_ca_num_configured"}];
  v6 = self->_has;
  if ((*&v6 & 0x800) == 0)
  {
LABEL_35:
    if ((*&v6 & 0x20) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_88;
  }

LABEL_87:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_cellMaxUlCaNumConfigured), @"cell_max_ul_ca_num_configured"}];
  v6 = self->_has;
  if ((*&v6 & 0x20) == 0)
  {
LABEL_36:
    if ((*&v6 & 0x10) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_89;
  }

LABEL_88:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_cellEstimatedLoad), @"cell_estimated_load"}];
  v6 = self->_has;
  if ((*&v6 & 0x10) == 0)
  {
LABEL_37:
    if ((*&v6 & 0x8000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_90;
  }

LABEL_89:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_cellEstimatedBw), @"cell_estimated_bw"}];
  v6 = self->_has;
  if ((*&v6 & 0x8000000) == 0)
  {
LABEL_38:
    if ((*&v6 & 0x2000000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_91;
  }

LABEL_90:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_recommendedlink), @"recommendedlink"}];
  v6 = self->_has;
  if ((*&v6 & 0x2000000000000) == 0)
  {
LABEL_39:
    if ((*&v6 & 0x800000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_92;
  }

LABEL_91:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_fr2DBRecommendation), @"fr2DBRecommendation"}];
  v6 = self->_has;
  if ((*&v6 & 0x800000) == 0)
  {
LABEL_40:
    if ((*&v6 & 0x1000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_93;
  }

LABEL_92:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_locationDBFR1Count), @"locationDBFR1Count"}];
  v6 = self->_has;
  if ((*&v6 & 0x1000000) == 0)
  {
LABEL_41:
    if ((*&v6 & 0x4000000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_94;
  }

LABEL_93:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_locationDBFR2Count), @"locationDBFR2Count"}];
  v6 = self->_has;
  if ((*&v6 & 0x4000000000000) == 0)
  {
LABEL_42:
    if ((*&v6 & 0x100000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_95;
  }

LABEL_94:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_highThermalTemperatureNotification), @"highThermalTemperatureNotification"}];
  v6 = self->_has;
  if ((*&v6 & 0x100000000) == 0)
  {
LABEL_43:
    if ((*&v6 & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_96;
  }

LABEL_95:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wiFiThroughput), @"WiFiThroughput"}];
  v6 = self->_has;
  if ((*&v6 & 0x80000000) == 0)
  {
LABEL_44:
    if ((*&v6 & 0x40000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_97;
  }

LABEL_96:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wiFiPredictedThroughput), @"WiFiPredictedThroughput"}];
  v6 = self->_has;
  if ((*&v6 & 0x40000000) == 0)
  {
LABEL_45:
    if ((*&v6 & 0x4000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_98;
  }

LABEL_97:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wRMRecommendationReason), @"WRMRecommendationReason"}];
  v6 = self->_has;
  if ((*&v6 & 0x4000000000) == 0)
  {
LABEL_46:
    if ((*&v6 & 0x2000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_99;
  }

LABEL_98:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiRecommendationScore), @"wifiRecommendationScore"}];
  v6 = self->_has;
  if ((*&v6 & 0x2000000000) == 0)
  {
LABEL_47:
    if ((*&v6 & 0x400000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_100;
  }

LABEL_99:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiRecommendationConfidence), @"wifiRecommendationConfidence"}];
  v6 = self->_has;
  if ((*&v6 & 0x400000) == 0)
  {
LABEL_48:
    if ((*&v6 & 0x200000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_101;
  }

LABEL_100:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_cellularRecommendationScore), @"cellularRecommendationScore"}];
  v6 = self->_has;
  if ((*&v6 & 0x200000) == 0)
  {
LABEL_49:
    if ((*&v6 & 0x2000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_102;
  }

LABEL_101:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_cellularRecommendationConfidence), @"cellularRecommendationConfidence"}];
  v6 = self->_has;
  if ((*&v6 & 0x2000000) == 0)
  {
LABEL_50:
    if ((*&v6 & 0x4000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_103;
  }

LABEL_102:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_radioCoverage), @"radioCoverage"}];
  v6 = self->_has;
  if ((*&v6 & 0x4000000) == 0)
  {
LABEL_51:
    if ((*&v6 & 0x20000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_104;
  }

LABEL_103:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_radioFrequency), @"radioFrequency"}];
  v6 = self->_has;
  if ((*&v6 & 0x20000000) == 0)
  {
LABEL_52:
    if ((*&v6 & 2) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_105;
  }

LABEL_104:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_triggerReason), @"trigger_reason"}];
  v6 = self->_has;
  if ((*&v6 & 2) == 0)
  {
LABEL_53:
    if ((*&v6 & 0x80000) == 0)
    {
      goto LABEL_54;
    }

LABEL_106:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_cellTotalMimoLayers), @"cell_total_mimo_layers"}];
    if ((*&self->_has & 0x10000000) == 0)
    {
      return dictionary;
    }

    goto LABEL_55;
  }

LABEL_105:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_applicationCategory), @"applicationCategory"}];
  v6 = self->_has;
  if ((*&v6 & 0x80000) != 0)
  {
    goto LABEL_106;
  }

LABEL_54:
  if ((*&v6 & 0x10000000) != 0)
  {
LABEL_55:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_totalNrBandwidth), @"total_nr_bandwidth"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if (*&has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 0x8000000000) == 0)
    {
LABEL_3:
      if ((*&has & 0x20000000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_58;
    }
  }

  else if ((*&has & 0x8000000000) == 0)
  {
    goto LABEL_3;
  }

  wifiRssi = self->_wifiRssi;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x80000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_59;
  }

LABEL_58:
  wifiSnr = self->_wifiSnr;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80000000000) == 0)
  {
LABEL_5:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_60;
  }

LABEL_59:
  wifiTxPER = self->_wifiTxPER;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_61;
  }

LABEL_60:
  wifiRxRetry = self->_wifiRxRetry;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_62;
  }

LABEL_61:
  wifiCca = self->_wifiCca;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_63;
  }

LABEL_62:
  wifiQbssLoad = self->_wifiQbssLoad;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_64;
  }

LABEL_63:
  wifiStationCount = self->_wifiStationCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x800000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_65;
  }

LABEL_64:
  wifPoi = self->_wifPoi;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800000000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x200000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_66;
  }

LABEL_65:
  wifiWgtAVGRSSI = self->_wifiWgtAVGRSSI;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((*&has & 0x200000000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x400000000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_67;
  }

LABEL_66:
  wifiWghtAVGSNR = self->_wifiWghtAVGSNR;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400000000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x100000000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_68;
  }

LABEL_67:
  wifiWghtAVGTXPHYRATE = self->_wifiWghtAVGTXPHYRATE;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100000000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_69;
  }

LABEL_68:
  wifiWghtAVGRXPHYRATE = self->_wifiWghtAVGRXPHYRATE;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_15:
    if ((*&has & 0x1000000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_69:
  wifiEstThoughtput = self->_wifiEstThoughtput;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x1000000000000) != 0)
  {
LABEL_16:
    wifiWifiEstThoughtputConfidence = self->_wifiWifiEstThoughtputConfidence;
    PBDataWriterWriteUint32Field();
  }

LABEL_17:
  if (self->_cellRatType)
  {
    PBDataWriterWriteStringField();
  }

  v6 = self->_has;
  if ((*&v6 & 0x80) != 0)
  {
    cellLteRSRP = self->_cellLteRSRP;
    PBDataWriterWriteSint32Field();
    v6 = self->_has;
    if ((*&v6 & 0x200) == 0)
    {
LABEL_21:
      if ((*&v6 & 0x100) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_73;
    }
  }

  else if ((*&v6 & 0x200) == 0)
  {
    goto LABEL_21;
  }

  cellLteSNR = self->_cellLteSNR;
  PBDataWriterWriteSint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x100) == 0)
  {
LABEL_22:
    if ((*&v6 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_74;
  }

LABEL_73:
  cellLteRSRQ = self->_cellLteRSRQ;
  PBDataWriterWriteSint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x4000) == 0)
  {
LABEL_23:
    if ((*&v6 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_75;
  }

LABEL_74:
  cellNrRSRP = self->_cellNrRSRP;
  PBDataWriterWriteSint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x8000) == 0)
  {
LABEL_24:
    if ((*&v6 & 0x10000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_76;
  }

LABEL_75:
  cellNrRSRQ = self->_cellNrRSRQ;
  PBDataWriterWriteSint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x10000) == 0)
  {
LABEL_25:
    if ((*&v6 & 4) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_77;
  }

LABEL_76:
  cellNrSNR = self->_cellNrSNR;
  PBDataWriterWriteSint32Field();
  v6 = self->_has;
  if ((*&v6 & 4) == 0)
  {
LABEL_26:
    if ((*&v6 & 0x40000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_78;
  }

LABEL_77:
  cellDataLQM = self->_cellDataLQM;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x40000) == 0)
  {
LABEL_27:
    if ((*&v6 & 0x2000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_79;
  }

LABEL_78:
  cellRrcState = self->_cellRrcState;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x2000) == 0)
  {
LABEL_28:
    if ((*&v6 & 0x40) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_80;
  }

LABEL_79:
  cellNrFR2active = self->_cellNrFR2active;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x40) == 0)
  {
LABEL_29:
    if ((*&v6 & 0x1000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_81;
  }

LABEL_80:
  cellLteEstimatedThroughput = self->_cellLteEstimatedThroughput;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x1000) == 0)
  {
LABEL_30:
    if ((*&v6 & 0x20000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_82;
  }

LABEL_81:
  cellNrEstimatedThroughput = self->_cellNrEstimatedThroughput;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x20000) == 0)
  {
LABEL_31:
    if ((*&v6 & 8) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_83;
  }

LABEL_82:
  cellNsaEnabled = self->_cellNsaEnabled;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 8) == 0)
  {
LABEL_32:
    if ((*&v6 & 0x100000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_84;
  }

LABEL_83:
  cellDlBw = self->_cellDlBw;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x100000) == 0)
  {
LABEL_33:
    if ((*&v6 & 0x400) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_85;
  }

LABEL_84:
  cellUlBw = self->_cellUlBw;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x400) == 0)
  {
LABEL_34:
    if ((*&v6 & 0x800) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_86;
  }

LABEL_85:
  cellMaxDlCaNumConfigured = self->_cellMaxDlCaNumConfigured;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x800) == 0)
  {
LABEL_35:
    if ((*&v6 & 0x20) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_87;
  }

LABEL_86:
  cellMaxUlCaNumConfigured = self->_cellMaxUlCaNumConfigured;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x20) == 0)
  {
LABEL_36:
    if ((*&v6 & 0x10) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_88;
  }

LABEL_87:
  cellEstimatedLoad = self->_cellEstimatedLoad;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x10) == 0)
  {
LABEL_37:
    if ((*&v6 & 0x8000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_89;
  }

LABEL_88:
  cellEstimatedBw = self->_cellEstimatedBw;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x8000000) == 0)
  {
LABEL_38:
    if ((*&v6 & 0x2000000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_90;
  }

LABEL_89:
  recommendedlink = self->_recommendedlink;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x2000000000000) == 0)
  {
LABEL_39:
    if ((*&v6 & 0x800000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_91;
  }

LABEL_90:
  fr2DBRecommendation = self->_fr2DBRecommendation;
  PBDataWriterWriteBOOLField();
  v6 = self->_has;
  if ((*&v6 & 0x800000) == 0)
  {
LABEL_40:
    if ((*&v6 & 0x1000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_92;
  }

LABEL_91:
  locationDBFR1Count = self->_locationDBFR1Count;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x1000000) == 0)
  {
LABEL_41:
    if ((*&v6 & 0x4000000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_93;
  }

LABEL_92:
  locationDBFR2Count = self->_locationDBFR2Count;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x4000000000000) == 0)
  {
LABEL_42:
    if ((*&v6 & 0x100000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_94;
  }

LABEL_93:
  highThermalTemperatureNotification = self->_highThermalTemperatureNotification;
  PBDataWriterWriteBOOLField();
  v6 = self->_has;
  if ((*&v6 & 0x100000000) == 0)
  {
LABEL_43:
    if ((*&v6 & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_95;
  }

LABEL_94:
  wiFiThroughput = self->_wiFiThroughput;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x80000000) == 0)
  {
LABEL_44:
    if ((*&v6 & 0x40000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_96;
  }

LABEL_95:
  wiFiPredictedThroughput = self->_wiFiPredictedThroughput;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x40000000) == 0)
  {
LABEL_45:
    if ((*&v6 & 0x4000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_97;
  }

LABEL_96:
  wRMRecommendationReason = self->_wRMRecommendationReason;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x4000000000) == 0)
  {
LABEL_46:
    if ((*&v6 & 0x2000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_98;
  }

LABEL_97:
  wifiRecommendationScore = self->_wifiRecommendationScore;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x2000000000) == 0)
  {
LABEL_47:
    if ((*&v6 & 0x400000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_99;
  }

LABEL_98:
  wifiRecommendationConfidence = self->_wifiRecommendationConfidence;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x400000) == 0)
  {
LABEL_48:
    if ((*&v6 & 0x200000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_100;
  }

LABEL_99:
  cellularRecommendationScore = self->_cellularRecommendationScore;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x200000) == 0)
  {
LABEL_49:
    if ((*&v6 & 0x2000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_101;
  }

LABEL_100:
  cellularRecommendationConfidence = self->_cellularRecommendationConfidence;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x2000000) == 0)
  {
LABEL_50:
    if ((*&v6 & 0x4000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_102;
  }

LABEL_101:
  radioCoverage = self->_radioCoverage;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x4000000) == 0)
  {
LABEL_51:
    if ((*&v6 & 0x20000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_103;
  }

LABEL_102:
  radioFrequency = self->_radioFrequency;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x20000000) == 0)
  {
LABEL_52:
    if ((*&v6 & 2) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_104;
  }

LABEL_103:
  triggerReason = self->_triggerReason;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 2) == 0)
  {
LABEL_53:
    if ((*&v6 & 0x80000) == 0)
    {
      goto LABEL_54;
    }

LABEL_105:
    cellTotalMimoLayers = self->_cellTotalMimoLayers;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x10000000) == 0)
    {
      return;
    }

    goto LABEL_106;
  }

LABEL_104:
  applicationCategory = self->_applicationCategory;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x80000) != 0)
  {
    goto LABEL_105;
  }

LABEL_54:
  if ((*&v6 & 0x10000000) == 0)
  {
    return;
  }

LABEL_106:
  totalNrBandwidth = self->_totalNrBandwidth;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if (*&has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 28) |= 1uLL;
    has = self->_has;
    if ((*&has & 0x8000000000) == 0)
    {
LABEL_3:
      if ((*&has & 0x20000000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_59;
    }
  }

  else if ((*&has & 0x8000000000) == 0)
  {
    goto LABEL_3;
  }

  *(to + 45) = self->_wifiRssi;
  *(to + 28) |= 0x8000000000uLL;
  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x80000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(to + 47) = self->_wifiSnr;
  *(to + 28) |= 0x20000000000uLL;
  has = self->_has;
  if ((*&has & 0x80000000000) == 0)
  {
LABEL_5:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(to + 49) = self->_wifiTxPER;
  *(to + 28) |= 0x80000000000uLL;
  has = self->_has;
  if ((*&has & 0x10000000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(to + 46) = self->_wifiRxRetry;
  *(to + 28) |= 0x10000000000uLL;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(to + 40) = self->_wifiCca;
  *(to + 28) |= 0x400000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(to + 42) = self->_wifiQbssLoad;
  *(to + 28) |= 0x1000000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(to + 48) = self->_wifiStationCount;
  *(to + 28) |= 0x40000000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x800000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(to + 39) = self->_wifPoi;
  *(to + 28) |= 0x200000000uLL;
  has = self->_has;
  if ((*&has & 0x800000000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x200000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(to + 53) = self->_wifiWgtAVGRSSI;
  *(to + 28) |= 0x800000000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x400000000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(to + 51) = self->_wifiWghtAVGSNR;
  *(to + 28) |= 0x200000000000uLL;
  has = self->_has;
  if ((*&has & 0x400000000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x100000000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(to + 52) = self->_wifiWghtAVGTXPHYRATE;
  *(to + 28) |= 0x400000000000uLL;
  has = self->_has;
  if ((*&has & 0x100000000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(to + 50) = self->_wifiWghtAVGRXPHYRATE;
  *(to + 28) |= 0x100000000000uLL;
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_15:
    if ((*&has & 0x1000000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_70:
  *(to + 41) = self->_wifiEstThoughtput;
  *(to + 28) |= 0x800000000uLL;
  if ((*&self->_has & 0x1000000000000) != 0)
  {
LABEL_16:
    *(to + 54) = self->_wifiWifiEstThoughtputConfidence;
    *(to + 28) |= 0x1000000000000uLL;
  }

LABEL_17:
  if (self->_cellRatType)
  {
    [to setCellRatType:?];
  }

  v6 = self->_has;
  if ((*&v6 & 0x80) != 0)
  {
    *(to + 10) = self->_cellLteRSRP;
    *(to + 28) |= 0x80uLL;
    v6 = self->_has;
    if ((*&v6 & 0x200) == 0)
    {
LABEL_21:
      if ((*&v6 & 0x100) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_74;
    }
  }

  else if ((*&v6 & 0x200) == 0)
  {
    goto LABEL_21;
  }

  *(to + 12) = self->_cellLteSNR;
  *(to + 28) |= 0x200uLL;
  v6 = self->_has;
  if ((*&v6 & 0x100) == 0)
  {
LABEL_22:
    if ((*&v6 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(to + 11) = self->_cellLteRSRQ;
  *(to + 28) |= 0x100uLL;
  v6 = self->_has;
  if ((*&v6 & 0x4000) == 0)
  {
LABEL_23:
    if ((*&v6 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(to + 17) = self->_cellNrRSRP;
  *(to + 28) |= 0x4000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x8000) == 0)
  {
LABEL_24:
    if ((*&v6 & 0x10000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(to + 18) = self->_cellNrRSRQ;
  *(to + 28) |= 0x8000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x10000) == 0)
  {
LABEL_25:
    if ((*&v6 & 4) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(to + 19) = self->_cellNrSNR;
  *(to + 28) |= 0x10000uLL;
  v6 = self->_has;
  if ((*&v6 & 4) == 0)
  {
LABEL_26:
    if ((*&v6 & 0x40000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(to + 5) = self->_cellDataLQM;
  *(to + 28) |= 4uLL;
  v6 = self->_has;
  if ((*&v6 & 0x40000) == 0)
  {
LABEL_27:
    if ((*&v6 & 0x2000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(to + 24) = self->_cellRrcState;
  *(to + 28) |= 0x40000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x2000) == 0)
  {
LABEL_28:
    if ((*&v6 & 0x40) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(to + 16) = self->_cellNrFR2active;
  *(to + 28) |= 0x2000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x40) == 0)
  {
LABEL_29:
    if ((*&v6 & 0x1000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_82;
  }

LABEL_81:
  *(to + 9) = self->_cellLteEstimatedThroughput;
  *(to + 28) |= 0x40uLL;
  v6 = self->_has;
  if ((*&v6 & 0x1000) == 0)
  {
LABEL_30:
    if ((*&v6 & 0x20000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_83;
  }

LABEL_82:
  *(to + 15) = self->_cellNrEstimatedThroughput;
  *(to + 28) |= 0x1000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x20000) == 0)
  {
LABEL_31:
    if ((*&v6 & 8) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_84;
  }

LABEL_83:
  *(to + 20) = self->_cellNsaEnabled;
  *(to + 28) |= 0x20000uLL;
  v6 = self->_has;
  if ((*&v6 & 8) == 0)
  {
LABEL_32:
    if ((*&v6 & 0x100000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_85;
  }

LABEL_84:
  *(to + 6) = self->_cellDlBw;
  *(to + 28) |= 8uLL;
  v6 = self->_has;
  if ((*&v6 & 0x100000) == 0)
  {
LABEL_33:
    if ((*&v6 & 0x400) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_86;
  }

LABEL_85:
  *(to + 26) = self->_cellUlBw;
  *(to + 28) |= 0x100000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x400) == 0)
  {
LABEL_34:
    if ((*&v6 & 0x800) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_87;
  }

LABEL_86:
  *(to + 13) = self->_cellMaxDlCaNumConfigured;
  *(to + 28) |= 0x400uLL;
  v6 = self->_has;
  if ((*&v6 & 0x800) == 0)
  {
LABEL_35:
    if ((*&v6 & 0x20) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_88;
  }

LABEL_87:
  *(to + 14) = self->_cellMaxUlCaNumConfigured;
  *(to + 28) |= 0x800uLL;
  v6 = self->_has;
  if ((*&v6 & 0x20) == 0)
  {
LABEL_36:
    if ((*&v6 & 0x10) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_89;
  }

LABEL_88:
  *(to + 8) = self->_cellEstimatedLoad;
  *(to + 28) |= 0x20uLL;
  v6 = self->_has;
  if ((*&v6 & 0x10) == 0)
  {
LABEL_37:
    if ((*&v6 & 0x8000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_90;
  }

LABEL_89:
  *(to + 7) = self->_cellEstimatedBw;
  *(to + 28) |= 0x10uLL;
  v6 = self->_has;
  if ((*&v6 & 0x8000000) == 0)
  {
LABEL_38:
    if ((*&v6 & 0x2000000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_91;
  }

LABEL_90:
  *(to + 33) = self->_recommendedlink;
  *(to + 28) |= 0x8000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x2000000000000) == 0)
  {
LABEL_39:
    if ((*&v6 & 0x800000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_92;
  }

LABEL_91:
  *(to + 220) = self->_fr2DBRecommendation;
  *(to + 28) |= 0x2000000000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x800000) == 0)
  {
LABEL_40:
    if ((*&v6 & 0x1000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_93;
  }

LABEL_92:
  *(to + 29) = self->_locationDBFR1Count;
  *(to + 28) |= 0x800000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x1000000) == 0)
  {
LABEL_41:
    if ((*&v6 & 0x4000000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_94;
  }

LABEL_93:
  *(to + 30) = self->_locationDBFR2Count;
  *(to + 28) |= 0x1000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x4000000000000) == 0)
  {
LABEL_42:
    if ((*&v6 & 0x100000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_95;
  }

LABEL_94:
  *(to + 221) = self->_highThermalTemperatureNotification;
  *(to + 28) |= 0x4000000000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x100000000) == 0)
  {
LABEL_43:
    if ((*&v6 & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_96;
  }

LABEL_95:
  *(to + 38) = self->_wiFiThroughput;
  *(to + 28) |= 0x100000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x80000000) == 0)
  {
LABEL_44:
    if ((*&v6 & 0x40000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_97;
  }

LABEL_96:
  *(to + 37) = self->_wiFiPredictedThroughput;
  *(to + 28) |= 0x80000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x40000000) == 0)
  {
LABEL_45:
    if ((*&v6 & 0x4000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_98;
  }

LABEL_97:
  *(to + 36) = self->_wRMRecommendationReason;
  *(to + 28) |= 0x40000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x4000000000) == 0)
  {
LABEL_46:
    if ((*&v6 & 0x2000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_99;
  }

LABEL_98:
  *(to + 44) = self->_wifiRecommendationScore;
  *(to + 28) |= 0x4000000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x2000000000) == 0)
  {
LABEL_47:
    if ((*&v6 & 0x400000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_100;
  }

LABEL_99:
  *(to + 43) = self->_wifiRecommendationConfidence;
  *(to + 28) |= 0x2000000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x400000) == 0)
  {
LABEL_48:
    if ((*&v6 & 0x200000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_101;
  }

LABEL_100:
  *(to + 28) = self->_cellularRecommendationScore;
  *(to + 28) |= 0x400000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x200000) == 0)
  {
LABEL_49:
    if ((*&v6 & 0x2000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_102;
  }

LABEL_101:
  *(to + 27) = self->_cellularRecommendationConfidence;
  *(to + 28) |= 0x200000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x2000000) == 0)
  {
LABEL_50:
    if ((*&v6 & 0x4000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_103;
  }

LABEL_102:
  *(to + 31) = self->_radioCoverage;
  *(to + 28) |= 0x2000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x4000000) == 0)
  {
LABEL_51:
    if ((*&v6 & 0x20000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_104;
  }

LABEL_103:
  *(to + 32) = self->_radioFrequency;
  *(to + 28) |= 0x4000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x20000000) == 0)
  {
LABEL_52:
    if ((*&v6 & 2) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_105;
  }

LABEL_104:
  *(to + 35) = self->_triggerReason;
  *(to + 28) |= 0x20000000uLL;
  v6 = self->_has;
  if ((*&v6 & 2) == 0)
  {
LABEL_53:
    if ((*&v6 & 0x80000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_106;
  }

LABEL_105:
  *(to + 4) = self->_applicationCategory;
  *(to + 28) |= 2uLL;
  v6 = self->_has;
  if ((*&v6 & 0x80000) == 0)
  {
LABEL_54:
    if ((*&v6 & 0x10000000) == 0)
    {
      return;
    }

    goto LABEL_55;
  }

LABEL_106:
  *(to + 25) = self->_cellTotalMimoLayers;
  *(to + 28) |= 0x80000uLL;
  if ((*&self->_has & 0x10000000) == 0)
  {
    return;
  }

LABEL_55:
  *(to + 34) = self->_totalNrBandwidth;
  *(to + 28) |= 0x10000000uLL;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (*&has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 224) |= 1uLL;
    has = self->_has;
    if ((*&has & 0x8000000000) == 0)
    {
LABEL_3:
      if ((*&has & 0x20000000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_57;
    }
  }

  else if ((*&has & 0x8000000000) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 180) = self->_wifiRssi;
  *(v5 + 224) |= 0x8000000000uLL;
  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x80000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(v5 + 188) = self->_wifiSnr;
  *(v5 + 224) |= 0x20000000000uLL;
  has = self->_has;
  if ((*&has & 0x80000000000) == 0)
  {
LABEL_5:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v5 + 196) = self->_wifiTxPER;
  *(v5 + 224) |= 0x80000000000uLL;
  has = self->_has;
  if ((*&has & 0x10000000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(v5 + 184) = self->_wifiRxRetry;
  *(v5 + 224) |= 0x10000000000uLL;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(v5 + 160) = self->_wifiCca;
  *(v5 + 224) |= 0x400000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(v5 + 168) = self->_wifiQbssLoad;
  *(v5 + 224) |= 0x1000000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(v5 + 192) = self->_wifiStationCount;
  *(v5 + 224) |= 0x40000000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x800000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(v5 + 156) = self->_wifPoi;
  *(v5 + 224) |= 0x200000000uLL;
  has = self->_has;
  if ((*&has & 0x800000000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x200000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(v5 + 212) = self->_wifiWgtAVGRSSI;
  *(v5 + 224) |= 0x800000000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x400000000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(v5 + 204) = self->_wifiWghtAVGSNR;
  *(v5 + 224) |= 0x200000000000uLL;
  has = self->_has;
  if ((*&has & 0x400000000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x100000000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(v5 + 208) = self->_wifiWghtAVGTXPHYRATE;
  *(v5 + 224) |= 0x400000000000uLL;
  has = self->_has;
  if ((*&has & 0x100000000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(v5 + 200) = self->_wifiWghtAVGRXPHYRATE;
  *(v5 + 224) |= 0x100000000000uLL;
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_15:
    if ((*&has & 0x1000000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_68:
  *(v5 + 164) = self->_wifiEstThoughtput;
  *(v5 + 224) |= 0x800000000uLL;
  if ((*&self->_has & 0x1000000000000) != 0)
  {
LABEL_16:
    *(v5 + 216) = self->_wifiWifiEstThoughtputConfidence;
    *(v5 + 224) |= 0x1000000000000uLL;
  }

LABEL_17:

  *(v6 + 88) = [(NSString *)self->_cellRatType copyWithZone:zone];
  v8 = self->_has;
  if ((*&v8 & 0x80) != 0)
  {
    *(v6 + 40) = self->_cellLteRSRP;
    *(v6 + 224) |= 0x80uLL;
    v8 = self->_has;
    if ((*&v8 & 0x200) == 0)
    {
LABEL_19:
      if ((*&v8 & 0x100) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_72;
    }
  }

  else if ((*&v8 & 0x200) == 0)
  {
    goto LABEL_19;
  }

  *(v6 + 48) = self->_cellLteSNR;
  *(v6 + 224) |= 0x200uLL;
  v8 = self->_has;
  if ((*&v8 & 0x100) == 0)
  {
LABEL_20:
    if ((*&v8 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(v6 + 44) = self->_cellLteRSRQ;
  *(v6 + 224) |= 0x100uLL;
  v8 = self->_has;
  if ((*&v8 & 0x4000) == 0)
  {
LABEL_21:
    if ((*&v8 & 0x8000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(v6 + 68) = self->_cellNrRSRP;
  *(v6 + 224) |= 0x4000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x8000) == 0)
  {
LABEL_22:
    if ((*&v8 & 0x10000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(v6 + 72) = self->_cellNrRSRQ;
  *(v6 + 224) |= 0x8000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x10000) == 0)
  {
LABEL_23:
    if ((*&v8 & 4) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(v6 + 76) = self->_cellNrSNR;
  *(v6 + 224) |= 0x10000uLL;
  v8 = self->_has;
  if ((*&v8 & 4) == 0)
  {
LABEL_24:
    if ((*&v8 & 0x40000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(v6 + 20) = self->_cellDataLQM;
  *(v6 + 224) |= 4uLL;
  v8 = self->_has;
  if ((*&v8 & 0x40000) == 0)
  {
LABEL_25:
    if ((*&v8 & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(v6 + 96) = self->_cellRrcState;
  *(v6 + 224) |= 0x40000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x2000) == 0)
  {
LABEL_26:
    if ((*&v8 & 0x40) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(v6 + 64) = self->_cellNrFR2active;
  *(v6 + 224) |= 0x2000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x40) == 0)
  {
LABEL_27:
    if ((*&v8 & 0x1000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(v6 + 36) = self->_cellLteEstimatedThroughput;
  *(v6 + 224) |= 0x40uLL;
  v8 = self->_has;
  if ((*&v8 & 0x1000) == 0)
  {
LABEL_28:
    if ((*&v8 & 0x20000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(v6 + 60) = self->_cellNrEstimatedThroughput;
  *(v6 + 224) |= 0x1000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x20000) == 0)
  {
LABEL_29:
    if ((*&v8 & 8) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_82;
  }

LABEL_81:
  *(v6 + 80) = self->_cellNsaEnabled;
  *(v6 + 224) |= 0x20000uLL;
  v8 = self->_has;
  if ((*&v8 & 8) == 0)
  {
LABEL_30:
    if ((*&v8 & 0x100000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_83;
  }

LABEL_82:
  *(v6 + 24) = self->_cellDlBw;
  *(v6 + 224) |= 8uLL;
  v8 = self->_has;
  if ((*&v8 & 0x100000) == 0)
  {
LABEL_31:
    if ((*&v8 & 0x400) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_84;
  }

LABEL_83:
  *(v6 + 104) = self->_cellUlBw;
  *(v6 + 224) |= 0x100000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x400) == 0)
  {
LABEL_32:
    if ((*&v8 & 0x800) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_85;
  }

LABEL_84:
  *(v6 + 52) = self->_cellMaxDlCaNumConfigured;
  *(v6 + 224) |= 0x400uLL;
  v8 = self->_has;
  if ((*&v8 & 0x800) == 0)
  {
LABEL_33:
    if ((*&v8 & 0x20) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_86;
  }

LABEL_85:
  *(v6 + 56) = self->_cellMaxUlCaNumConfigured;
  *(v6 + 224) |= 0x800uLL;
  v8 = self->_has;
  if ((*&v8 & 0x20) == 0)
  {
LABEL_34:
    if ((*&v8 & 0x10) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_87;
  }

LABEL_86:
  *(v6 + 32) = self->_cellEstimatedLoad;
  *(v6 + 224) |= 0x20uLL;
  v8 = self->_has;
  if ((*&v8 & 0x10) == 0)
  {
LABEL_35:
    if ((*&v8 & 0x8000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_88;
  }

LABEL_87:
  *(v6 + 28) = self->_cellEstimatedBw;
  *(v6 + 224) |= 0x10uLL;
  v8 = self->_has;
  if ((*&v8 & 0x8000000) == 0)
  {
LABEL_36:
    if ((*&v8 & 0x2000000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_89;
  }

LABEL_88:
  *(v6 + 132) = self->_recommendedlink;
  *(v6 + 224) |= 0x8000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x2000000000000) == 0)
  {
LABEL_37:
    if ((*&v8 & 0x800000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_90;
  }

LABEL_89:
  *(v6 + 220) = self->_fr2DBRecommendation;
  *(v6 + 224) |= 0x2000000000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x800000) == 0)
  {
LABEL_38:
    if ((*&v8 & 0x1000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_91;
  }

LABEL_90:
  *(v6 + 116) = self->_locationDBFR1Count;
  *(v6 + 224) |= 0x800000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x1000000) == 0)
  {
LABEL_39:
    if ((*&v8 & 0x4000000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_92;
  }

LABEL_91:
  *(v6 + 120) = self->_locationDBFR2Count;
  *(v6 + 224) |= 0x1000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x4000000000000) == 0)
  {
LABEL_40:
    if ((*&v8 & 0x100000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_93;
  }

LABEL_92:
  *(v6 + 221) = self->_highThermalTemperatureNotification;
  *(v6 + 224) |= 0x4000000000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x100000000) == 0)
  {
LABEL_41:
    if ((*&v8 & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_94;
  }

LABEL_93:
  *(v6 + 152) = self->_wiFiThroughput;
  *(v6 + 224) |= 0x100000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x80000000) == 0)
  {
LABEL_42:
    if ((*&v8 & 0x40000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_95;
  }

LABEL_94:
  *(v6 + 148) = self->_wiFiPredictedThroughput;
  *(v6 + 224) |= 0x80000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x40000000) == 0)
  {
LABEL_43:
    if ((*&v8 & 0x4000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_96;
  }

LABEL_95:
  *(v6 + 144) = self->_wRMRecommendationReason;
  *(v6 + 224) |= 0x40000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x4000000000) == 0)
  {
LABEL_44:
    if ((*&v8 & 0x2000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_97;
  }

LABEL_96:
  *(v6 + 176) = self->_wifiRecommendationScore;
  *(v6 + 224) |= 0x4000000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x2000000000) == 0)
  {
LABEL_45:
    if ((*&v8 & 0x400000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_98;
  }

LABEL_97:
  *(v6 + 172) = self->_wifiRecommendationConfidence;
  *(v6 + 224) |= 0x2000000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x400000) == 0)
  {
LABEL_46:
    if ((*&v8 & 0x200000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_99;
  }

LABEL_98:
  *(v6 + 112) = self->_cellularRecommendationScore;
  *(v6 + 224) |= 0x400000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x200000) == 0)
  {
LABEL_47:
    if ((*&v8 & 0x2000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_100;
  }

LABEL_99:
  *(v6 + 108) = self->_cellularRecommendationConfidence;
  *(v6 + 224) |= 0x200000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x2000000) == 0)
  {
LABEL_48:
    if ((*&v8 & 0x4000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_101;
  }

LABEL_100:
  *(v6 + 124) = self->_radioCoverage;
  *(v6 + 224) |= 0x2000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x4000000) == 0)
  {
LABEL_49:
    if ((*&v8 & 0x20000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_102;
  }

LABEL_101:
  *(v6 + 128) = self->_radioFrequency;
  *(v6 + 224) |= 0x4000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x20000000) == 0)
  {
LABEL_50:
    if ((*&v8 & 2) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_103;
  }

LABEL_102:
  *(v6 + 140) = self->_triggerReason;
  *(v6 + 224) |= 0x20000000uLL;
  v8 = self->_has;
  if ((*&v8 & 2) == 0)
  {
LABEL_51:
    if ((*&v8 & 0x80000) == 0)
    {
      goto LABEL_52;
    }

LABEL_104:
    *(v6 + 100) = self->_cellTotalMimoLayers;
    *(v6 + 224) |= 0x80000uLL;
    if ((*&self->_has & 0x10000000) == 0)
    {
      return v6;
    }

    goto LABEL_53;
  }

LABEL_103:
  *(v6 + 16) = self->_applicationCategory;
  *(v6 + 224) |= 2uLL;
  v8 = self->_has;
  if ((*&v8 & 0x80000) != 0)
  {
    goto LABEL_104;
  }

LABEL_52:
  if ((*&v8 & 0x10000000) != 0)
  {
LABEL_53:
    *(v6 + 136) = self->_totalNrBandwidth;
    *(v6 + 224) |= 0x10000000uLL;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  has = self->_has;
  v7 = *(equal + 28);
  if (*&has)
  {
    if ((v7 & 1) == 0 || self->_timestamp != *(equal + 1))
    {
      goto LABEL_265;
    }
  }

  else if (v7)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x8000000000) != 0)
  {
    if ((v7 & 0x8000000000) == 0 || self->_wifiRssi != *(equal + 45))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x8000000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x20000000000) != 0)
  {
    if ((v7 & 0x20000000000) == 0 || self->_wifiSnr != *(equal + 47))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x20000000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x80000000000) != 0)
  {
    if ((v7 & 0x80000000000) == 0 || self->_wifiTxPER != *(equal + 49))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x80000000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x10000000000) != 0)
  {
    if ((v7 & 0x10000000000) == 0 || self->_wifiRxRetry != *(equal + 46))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x10000000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x400000000) != 0)
  {
    if ((v7 & 0x400000000) == 0 || self->_wifiCca != *(equal + 40))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x400000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x1000000000) != 0)
  {
    if ((v7 & 0x1000000000) == 0 || self->_wifiQbssLoad != *(equal + 42))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x1000000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x40000000000) != 0)
  {
    if ((v7 & 0x40000000000) == 0 || self->_wifiStationCount != *(equal + 48))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x40000000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x200000000) != 0)
  {
    if ((v7 & 0x200000000) == 0 || self->_wifPoi != *(equal + 39))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x200000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x800000000000) != 0)
  {
    if ((v7 & 0x800000000000) == 0 || self->_wifiWgtAVGRSSI != *(equal + 53))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x800000000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x200000000000) != 0)
  {
    if ((v7 & 0x200000000000) == 0 || self->_wifiWghtAVGSNR != *(equal + 51))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x200000000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x400000000000) != 0)
  {
    if ((v7 & 0x400000000000) == 0 || self->_wifiWghtAVGTXPHYRATE != *(equal + 52))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x400000000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x100000000000) != 0)
  {
    if ((v7 & 0x100000000000) == 0 || self->_wifiWghtAVGRXPHYRATE != *(equal + 50))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x100000000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x800000000) != 0)
  {
    if ((v7 & 0x800000000) == 0 || self->_wifiEstThoughtput != *(equal + 41))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x800000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x1000000000000) != 0)
  {
    if ((v7 & 0x1000000000000) == 0 || self->_wifiWifiEstThoughtputConfidence != *(equal + 54))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x1000000000000) != 0)
  {
    goto LABEL_265;
  }

  cellRatType = self->_cellRatType;
  if (cellRatType | *(equal + 11))
  {
    v5 = [(NSString *)cellRatType isEqual:?];
    if (!v5)
    {
      return v5;
    }

    has = self->_has;
  }

  v9 = *(equal + 28);
  if ((*&has & 0x80) != 0)
  {
    if ((v9 & 0x80) == 0 || self->_cellLteRSRP != *(equal + 10))
    {
      goto LABEL_265;
    }
  }

  else if ((v9 & 0x80) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v9 & 0x200) == 0 || self->_cellLteSNR != *(equal + 12))
    {
      goto LABEL_265;
    }
  }

  else if ((v9 & 0x200) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v9 & 0x100) == 0 || self->_cellLteRSRQ != *(equal + 11))
    {
      goto LABEL_265;
    }
  }

  else if ((v9 & 0x100) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v9 & 0x4000) == 0 || self->_cellNrRSRP != *(equal + 17))
    {
      goto LABEL_265;
    }
  }

  else if ((v9 & 0x4000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v9 & 0x8000) == 0 || self->_cellNrRSRQ != *(equal + 18))
    {
      goto LABEL_265;
    }
  }

  else if ((v9 & 0x8000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v9 & 0x10000) == 0 || self->_cellNrSNR != *(equal + 19))
    {
      goto LABEL_265;
    }
  }

  else if ((v9 & 0x10000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 4) != 0)
  {
    if ((v9 & 4) == 0 || self->_cellDataLQM != *(equal + 5))
    {
      goto LABEL_265;
    }
  }

  else if ((v9 & 4) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v9 & 0x40000) == 0 || self->_cellRrcState != *(equal + 24))
    {
      goto LABEL_265;
    }
  }

  else if ((v9 & 0x40000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v9 & 0x2000) == 0 || self->_cellNrFR2active != *(equal + 16))
    {
      goto LABEL_265;
    }
  }

  else if ((v9 & 0x2000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v9 & 0x40) == 0 || self->_cellLteEstimatedThroughput != *(equal + 9))
    {
      goto LABEL_265;
    }
  }

  else if ((v9 & 0x40) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v9 & 0x1000) == 0 || self->_cellNrEstimatedThroughput != *(equal + 15))
    {
      goto LABEL_265;
    }
  }

  else if ((v9 & 0x1000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v9 & 0x20000) == 0 || self->_cellNsaEnabled != *(equal + 20))
    {
      goto LABEL_265;
    }
  }

  else if ((v9 & 0x20000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 8) != 0)
  {
    if ((v9 & 8) == 0 || self->_cellDlBw != *(equal + 6))
    {
      goto LABEL_265;
    }
  }

  else if ((v9 & 8) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v9 & 0x100000) == 0 || self->_cellUlBw != *(equal + 26))
    {
      goto LABEL_265;
    }
  }

  else if ((v9 & 0x100000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v9 & 0x400) == 0 || self->_cellMaxDlCaNumConfigured != *(equal + 13))
    {
      goto LABEL_265;
    }
  }

  else if ((v9 & 0x400) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v9 & 0x800) == 0 || self->_cellMaxUlCaNumConfigured != *(equal + 14))
    {
      goto LABEL_265;
    }
  }

  else if ((v9 & 0x800) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v9 & 0x20) == 0 || self->_cellEstimatedLoad != *(equal + 8))
    {
      goto LABEL_265;
    }
  }

  else if ((v9 & 0x20) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v9 & 0x10) == 0 || self->_cellEstimatedBw != *(equal + 7))
    {
      goto LABEL_265;
    }
  }

  else if ((v9 & 0x10) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x8000000) != 0)
  {
    if ((v9 & 0x8000000) == 0 || self->_recommendedlink != *(equal + 33))
    {
      goto LABEL_265;
    }
  }

  else if ((v9 & 0x8000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x2000000000000) != 0)
  {
    if ((v9 & 0x2000000000000) == 0)
    {
      goto LABEL_265;
    }

    v10 = *(equal + 220);
    if (self->_fr2DBRecommendation)
    {
      if ((*(equal + 220) & 1) == 0)
      {
        goto LABEL_265;
      }
    }

    else if (*(equal + 220))
    {
      goto LABEL_265;
    }
  }

  else if ((v9 & 0x2000000000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v9 & 0x800000) == 0 || self->_locationDBFR1Count != *(equal + 29))
    {
      goto LABEL_265;
    }
  }

  else if ((v9 & 0x800000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x1000000) != 0)
  {
    if ((v9 & 0x1000000) == 0 || self->_locationDBFR2Count != *(equal + 30))
    {
      goto LABEL_265;
    }
  }

  else if ((v9 & 0x1000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x4000000000000) != 0)
  {
    if ((v9 & 0x4000000000000) == 0)
    {
      goto LABEL_265;
    }

    v11 = *(equal + 221);
    if (self->_highThermalTemperatureNotification)
    {
      if ((*(equal + 221) & 1) == 0)
      {
        goto LABEL_265;
      }
    }

    else if (*(equal + 221))
    {
      goto LABEL_265;
    }
  }

  else if ((v9 & 0x4000000000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x100000000) != 0)
  {
    if ((v9 & 0x100000000) == 0 || self->_wiFiThroughput != *(equal + 38))
    {
      goto LABEL_265;
    }
  }

  else if ((v9 & 0x100000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x80000000) != 0)
  {
    if ((v9 & 0x80000000) == 0 || self->_wiFiPredictedThroughput != *(equal + 37))
    {
      goto LABEL_265;
    }
  }

  else if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x40000000) != 0)
  {
    if ((v9 & 0x40000000) == 0 || self->_wRMRecommendationReason != *(equal + 36))
    {
      goto LABEL_265;
    }
  }

  else if ((v9 & 0x40000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x4000000000) != 0)
  {
    if ((v9 & 0x4000000000) == 0 || self->_wifiRecommendationScore != *(equal + 44))
    {
      goto LABEL_265;
    }
  }

  else if ((v9 & 0x4000000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x2000000000) != 0)
  {
    if ((v9 & 0x2000000000) == 0 || self->_wifiRecommendationConfidence != *(equal + 43))
    {
      goto LABEL_265;
    }
  }

  else if ((v9 & 0x2000000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v9 & 0x400000) == 0 || self->_cellularRecommendationScore != *(equal + 28))
    {
      goto LABEL_265;
    }
  }

  else if ((v9 & 0x400000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v9 & 0x200000) == 0 || self->_cellularRecommendationConfidence != *(equal + 27))
    {
      goto LABEL_265;
    }
  }

  else if ((v9 & 0x200000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x2000000) != 0)
  {
    if ((v9 & 0x2000000) == 0 || self->_radioCoverage != *(equal + 31))
    {
      goto LABEL_265;
    }
  }

  else if ((v9 & 0x2000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x4000000) != 0)
  {
    if ((v9 & 0x4000000) == 0 || self->_radioFrequency != *(equal + 32))
    {
      goto LABEL_265;
    }
  }

  else if ((v9 & 0x4000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x20000000) != 0)
  {
    if ((v9 & 0x20000000) == 0 || self->_triggerReason != *(equal + 35))
    {
      goto LABEL_265;
    }
  }

  else if ((v9 & 0x20000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 2) != 0)
  {
    if ((v9 & 2) == 0 || self->_applicationCategory != *(equal + 4))
    {
      goto LABEL_265;
    }
  }

  else if ((v9 & 2) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x80000) == 0)
  {
    if ((v9 & 0x80000) == 0)
    {
      goto LABEL_261;
    }

LABEL_265:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((v9 & 0x80000) == 0 || self->_cellTotalMimoLayers != *(equal + 25))
  {
    goto LABEL_265;
  }

LABEL_261:
  LOBYTE(v5) = (*(equal + 28) & 0x10000000) == 0;
  if ((*&has & 0x10000000) != 0)
  {
    if ((v9 & 0x10000000) == 0 || self->_totalNrBandwidth != *(equal + 34))
    {
      goto LABEL_265;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if (*&has)
  {
    v57 = 2654435761u * self->_timestamp;
    if ((*&has & 0x8000000000) != 0)
    {
LABEL_3:
      v56 = 2654435761 * self->_wifiRssi;
      if ((*&has & 0x20000000000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v57 = 0;
    if ((*&has & 0x8000000000) != 0)
    {
      goto LABEL_3;
    }
  }

  v56 = 0;
  if ((*&has & 0x20000000000) != 0)
  {
LABEL_4:
    v55 = 2654435761 * self->_wifiSnr;
    if ((*&has & 0x80000000000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v55 = 0;
  if ((*&has & 0x80000000000) != 0)
  {
LABEL_5:
    v54 = 2654435761 * self->_wifiTxPER;
    if ((*&has & 0x10000000000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v54 = 0;
  if ((*&has & 0x10000000000) != 0)
  {
LABEL_6:
    v53 = 2654435761 * self->_wifiRxRetry;
    if ((*&has & 0x400000000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v53 = 0;
  if ((*&has & 0x400000000) != 0)
  {
LABEL_7:
    v52 = 2654435761 * self->_wifiCca;
    if ((*&has & 0x1000000000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v52 = 0;
  if ((*&has & 0x1000000000) != 0)
  {
LABEL_8:
    v51 = 2654435761 * self->_wifiQbssLoad;
    if ((*&has & 0x40000000000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v51 = 0;
  if ((*&has & 0x40000000000) != 0)
  {
LABEL_9:
    v50 = 2654435761 * self->_wifiStationCount;
    if ((*&has & 0x200000000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v50 = 0;
  if ((*&has & 0x200000000) != 0)
  {
LABEL_10:
    v49 = 2654435761 * self->_wifPoi;
    if ((*&has & 0x800000000000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v49 = 0;
  if ((*&has & 0x800000000000) != 0)
  {
LABEL_11:
    v48 = 2654435761 * self->_wifiWgtAVGRSSI;
    if ((*&has & 0x200000000000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v48 = 0;
  if ((*&has & 0x200000000000) != 0)
  {
LABEL_12:
    v47 = 2654435761 * self->_wifiWghtAVGSNR;
    if ((*&has & 0x400000000000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v47 = 0;
  if ((*&has & 0x400000000000) != 0)
  {
LABEL_13:
    v46 = 2654435761 * self->_wifiWghtAVGTXPHYRATE;
    if ((*&has & 0x100000000000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v46 = 0;
  if ((*&has & 0x100000000000) != 0)
  {
LABEL_14:
    v45 = 2654435761 * self->_wifiWghtAVGRXPHYRATE;
    if ((*&has & 0x800000000) != 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    v44 = 0;
    if ((*&has & 0x1000000000000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_29:
  v45 = 0;
  if ((*&has & 0x800000000) == 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  v44 = 2654435761 * self->_wifiEstThoughtput;
  if ((*&has & 0x1000000000000) != 0)
  {
LABEL_16:
    v43 = 2654435761 * self->_wifiWifiEstThoughtputConfidence;
    goto LABEL_32;
  }

LABEL_31:
  v43 = 0;
LABEL_32:
  v42 = [(NSString *)self->_cellRatType hash];
  v4 = self->_has;
  if ((*&v4 & 0x80) != 0)
  {
    v41 = 2654435761 * self->_cellLteRSRP;
    if ((*&v4 & 0x200) != 0)
    {
LABEL_34:
      v40 = 2654435761 * self->_cellLteSNR;
      if ((*&v4 & 0x100) != 0)
      {
        goto LABEL_35;
      }

      goto LABEL_71;
    }
  }

  else
  {
    v41 = 0;
    if ((*&v4 & 0x200) != 0)
    {
      goto LABEL_34;
    }
  }

  v40 = 0;
  if ((*&v4 & 0x100) != 0)
  {
LABEL_35:
    v39 = 2654435761 * self->_cellLteRSRQ;
    if ((*&v4 & 0x4000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_72;
  }

LABEL_71:
  v39 = 0;
  if ((*&v4 & 0x4000) != 0)
  {
LABEL_36:
    v38 = 2654435761 * self->_cellNrRSRP;
    if ((*&v4 & 0x8000) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_73;
  }

LABEL_72:
  v38 = 0;
  if ((*&v4 & 0x8000) != 0)
  {
LABEL_37:
    v37 = 2654435761 * self->_cellNrRSRQ;
    if ((*&v4 & 0x10000) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_74;
  }

LABEL_73:
  v37 = 0;
  if ((*&v4 & 0x10000) != 0)
  {
LABEL_38:
    v36 = 2654435761 * self->_cellNrSNR;
    if ((*&v4 & 4) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_75;
  }

LABEL_74:
  v36 = 0;
  if ((*&v4 & 4) != 0)
  {
LABEL_39:
    v35 = 2654435761 * self->_cellDataLQM;
    if ((*&v4 & 0x40000) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_76;
  }

LABEL_75:
  v35 = 0;
  if ((*&v4 & 0x40000) != 0)
  {
LABEL_40:
    v34 = 2654435761 * self->_cellRrcState;
    if ((*&v4 & 0x2000) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_77;
  }

LABEL_76:
  v34 = 0;
  if ((*&v4 & 0x2000) != 0)
  {
LABEL_41:
    v33 = 2654435761 * self->_cellNrFR2active;
    if ((*&v4 & 0x40) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_78;
  }

LABEL_77:
  v33 = 0;
  if ((*&v4 & 0x40) != 0)
  {
LABEL_42:
    v32 = 2654435761 * self->_cellLteEstimatedThroughput;
    if ((*&v4 & 0x1000) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_79;
  }

LABEL_78:
  v32 = 0;
  if ((*&v4 & 0x1000) != 0)
  {
LABEL_43:
    v5 = 2654435761 * self->_cellNrEstimatedThroughput;
    if ((*&v4 & 0x20000) != 0)
    {
      goto LABEL_44;
    }

    goto LABEL_80;
  }

LABEL_79:
  v5 = 0;
  if ((*&v4 & 0x20000) != 0)
  {
LABEL_44:
    v6 = 2654435761 * self->_cellNsaEnabled;
    if ((*&v4 & 8) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_81;
  }

LABEL_80:
  v6 = 0;
  if ((*&v4 & 8) != 0)
  {
LABEL_45:
    v7 = 2654435761 * self->_cellDlBw;
    if ((*&v4 & 0x100000) != 0)
    {
      goto LABEL_46;
    }

    goto LABEL_82;
  }

LABEL_81:
  v7 = 0;
  if ((*&v4 & 0x100000) != 0)
  {
LABEL_46:
    v8 = 2654435761 * self->_cellUlBw;
    if ((*&v4 & 0x400) != 0)
    {
      goto LABEL_47;
    }

    goto LABEL_83;
  }

LABEL_82:
  v8 = 0;
  if ((*&v4 & 0x400) != 0)
  {
LABEL_47:
    v9 = 2654435761 * self->_cellMaxDlCaNumConfigured;
    if ((*&v4 & 0x800) != 0)
    {
      goto LABEL_48;
    }

    goto LABEL_84;
  }

LABEL_83:
  v9 = 0;
  if ((*&v4 & 0x800) != 0)
  {
LABEL_48:
    v10 = 2654435761 * self->_cellMaxUlCaNumConfigured;
    if ((*&v4 & 0x20) != 0)
    {
      goto LABEL_49;
    }

    goto LABEL_85;
  }

LABEL_84:
  v10 = 0;
  if ((*&v4 & 0x20) != 0)
  {
LABEL_49:
    v11 = 2654435761 * self->_cellEstimatedLoad;
    if ((*&v4 & 0x10) != 0)
    {
      goto LABEL_50;
    }

    goto LABEL_86;
  }

LABEL_85:
  v11 = 0;
  if ((*&v4 & 0x10) != 0)
  {
LABEL_50:
    v12 = 2654435761 * self->_cellEstimatedBw;
    if ((*&v4 & 0x8000000) != 0)
    {
      goto LABEL_51;
    }

    goto LABEL_87;
  }

LABEL_86:
  v12 = 0;
  if ((*&v4 & 0x8000000) != 0)
  {
LABEL_51:
    v13 = 2654435761 * self->_recommendedlink;
    if ((*&v4 & 0x2000000000000) != 0)
    {
      goto LABEL_52;
    }

    goto LABEL_88;
  }

LABEL_87:
  v13 = 0;
  if ((*&v4 & 0x2000000000000) != 0)
  {
LABEL_52:
    v14 = 2654435761 * self->_fr2DBRecommendation;
    if ((*&v4 & 0x800000) != 0)
    {
      goto LABEL_53;
    }

    goto LABEL_89;
  }

LABEL_88:
  v14 = 0;
  if ((*&v4 & 0x800000) != 0)
  {
LABEL_53:
    v15 = 2654435761 * self->_locationDBFR1Count;
    if ((*&v4 & 0x1000000) != 0)
    {
      goto LABEL_54;
    }

    goto LABEL_90;
  }

LABEL_89:
  v15 = 0;
  if ((*&v4 & 0x1000000) != 0)
  {
LABEL_54:
    v16 = 2654435761 * self->_locationDBFR2Count;
    if ((*&v4 & 0x4000000000000) != 0)
    {
      goto LABEL_55;
    }

    goto LABEL_91;
  }

LABEL_90:
  v16 = 0;
  if ((*&v4 & 0x4000000000000) != 0)
  {
LABEL_55:
    v17 = 2654435761 * self->_highThermalTemperatureNotification;
    if ((*&v4 & 0x100000000) != 0)
    {
      goto LABEL_56;
    }

    goto LABEL_92;
  }

LABEL_91:
  v17 = 0;
  if ((*&v4 & 0x100000000) != 0)
  {
LABEL_56:
    v18 = 2654435761 * self->_wiFiThroughput;
    if ((*&v4 & 0x80000000) != 0)
    {
      goto LABEL_57;
    }

    goto LABEL_93;
  }

LABEL_92:
  v18 = 0;
  if ((*&v4 & 0x80000000) != 0)
  {
LABEL_57:
    v19 = 2654435761 * self->_wiFiPredictedThroughput;
    if ((*&v4 & 0x40000000) != 0)
    {
      goto LABEL_58;
    }

    goto LABEL_94;
  }

LABEL_93:
  v19 = 0;
  if ((*&v4 & 0x40000000) != 0)
  {
LABEL_58:
    v20 = 2654435761 * self->_wRMRecommendationReason;
    if ((*&v4 & 0x4000000000) != 0)
    {
      goto LABEL_59;
    }

    goto LABEL_95;
  }

LABEL_94:
  v20 = 0;
  if ((*&v4 & 0x4000000000) != 0)
  {
LABEL_59:
    v21 = 2654435761 * self->_wifiRecommendationScore;
    if ((*&v4 & 0x2000000000) != 0)
    {
      goto LABEL_60;
    }

    goto LABEL_96;
  }

LABEL_95:
  v21 = 0;
  if ((*&v4 & 0x2000000000) != 0)
  {
LABEL_60:
    v22 = 2654435761 * self->_wifiRecommendationConfidence;
    if ((*&v4 & 0x400000) != 0)
    {
      goto LABEL_61;
    }

    goto LABEL_97;
  }

LABEL_96:
  v22 = 0;
  if ((*&v4 & 0x400000) != 0)
  {
LABEL_61:
    v23 = 2654435761 * self->_cellularRecommendationScore;
    if ((*&v4 & 0x200000) != 0)
    {
      goto LABEL_62;
    }

    goto LABEL_98;
  }

LABEL_97:
  v23 = 0;
  if ((*&v4 & 0x200000) != 0)
  {
LABEL_62:
    v24 = 2654435761 * self->_cellularRecommendationConfidence;
    if ((*&v4 & 0x2000000) != 0)
    {
      goto LABEL_63;
    }

    goto LABEL_99;
  }

LABEL_98:
  v24 = 0;
  if ((*&v4 & 0x2000000) != 0)
  {
LABEL_63:
    v25 = 2654435761 * self->_radioCoverage;
    if ((*&v4 & 0x4000000) != 0)
    {
      goto LABEL_64;
    }

    goto LABEL_100;
  }

LABEL_99:
  v25 = 0;
  if ((*&v4 & 0x4000000) != 0)
  {
LABEL_64:
    v26 = 2654435761 * self->_radioFrequency;
    if ((*&v4 & 0x20000000) != 0)
    {
      goto LABEL_65;
    }

    goto LABEL_101;
  }

LABEL_100:
  v26 = 0;
  if ((*&v4 & 0x20000000) != 0)
  {
LABEL_65:
    v27 = 2654435761 * self->_triggerReason;
    if ((*&v4 & 2) != 0)
    {
      goto LABEL_66;
    }

    goto LABEL_102;
  }

LABEL_101:
  v27 = 0;
  if ((*&v4 & 2) != 0)
  {
LABEL_66:
    v28 = 2654435761 * self->_applicationCategory;
    if ((*&v4 & 0x80000) != 0)
    {
      goto LABEL_67;
    }

LABEL_103:
    v29 = 0;
    if ((*&v4 & 0x10000000) != 0)
    {
      goto LABEL_68;
    }

LABEL_104:
    v30 = 0;
    return v56 ^ v57 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v42 ^ v35 ^ v34 ^ v33 ^ v32 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30;
  }

LABEL_102:
  v28 = 0;
  if ((*&v4 & 0x80000) == 0)
  {
    goto LABEL_103;
  }

LABEL_67:
  v29 = 2654435761 * self->_cellTotalMimoLayers;
  if ((*&v4 & 0x10000000) == 0)
  {
    goto LABEL_104;
  }

LABEL_68:
  v30 = 2654435761 * self->_totalNrBandwidth;
  return v56 ^ v57 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v42 ^ v35 ^ v34 ^ v33 ^ v32 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30;
}

- (void)mergeFrom:(id)from
{
  v5 = *(from + 28);
  if (v5)
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1uLL;
    v5 = *(from + 28);
    if ((v5 & 0x8000000000) == 0)
    {
LABEL_3:
      if ((v5 & 0x20000000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_59;
    }
  }

  else if ((v5 & 0x8000000000) == 0)
  {
    goto LABEL_3;
  }

  self->_wifiRssi = *(from + 45);
  *&self->_has |= 0x8000000000uLL;
  v5 = *(from + 28);
  if ((v5 & 0x20000000000) == 0)
  {
LABEL_4:
    if ((v5 & 0x80000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_wifiSnr = *(from + 47);
  *&self->_has |= 0x20000000000uLL;
  v5 = *(from + 28);
  if ((v5 & 0x80000000000) == 0)
  {
LABEL_5:
    if ((v5 & 0x10000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_61;
  }

LABEL_60:
  self->_wifiTxPER = *(from + 49);
  *&self->_has |= 0x80000000000uLL;
  v5 = *(from + 28);
  if ((v5 & 0x10000000000) == 0)
  {
LABEL_6:
    if ((v5 & 0x400000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_62;
  }

LABEL_61:
  self->_wifiRxRetry = *(from + 46);
  *&self->_has |= 0x10000000000uLL;
  v5 = *(from + 28);
  if ((v5 & 0x400000000) == 0)
  {
LABEL_7:
    if ((v5 & 0x1000000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_63;
  }

LABEL_62:
  self->_wifiCca = *(from + 40);
  *&self->_has |= 0x400000000uLL;
  v5 = *(from + 28);
  if ((v5 & 0x1000000000) == 0)
  {
LABEL_8:
    if ((v5 & 0x40000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_64;
  }

LABEL_63:
  self->_wifiQbssLoad = *(from + 42);
  *&self->_has |= 0x1000000000uLL;
  v5 = *(from + 28);
  if ((v5 & 0x40000000000) == 0)
  {
LABEL_9:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_65;
  }

LABEL_64:
  self->_wifiStationCount = *(from + 48);
  *&self->_has |= 0x40000000000uLL;
  v5 = *(from + 28);
  if ((v5 & 0x200000000) == 0)
  {
LABEL_10:
    if ((v5 & 0x800000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_66;
  }

LABEL_65:
  self->_wifPoi = *(from + 39);
  *&self->_has |= 0x200000000uLL;
  v5 = *(from + 28);
  if ((v5 & 0x800000000000) == 0)
  {
LABEL_11:
    if ((v5 & 0x200000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_67;
  }

LABEL_66:
  self->_wifiWgtAVGRSSI = *(from + 53);
  *&self->_has |= 0x800000000000uLL;
  v5 = *(from + 28);
  if ((v5 & 0x200000000000) == 0)
  {
LABEL_12:
    if ((v5 & 0x400000000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_68;
  }

LABEL_67:
  self->_wifiWghtAVGSNR = *(from + 51);
  *&self->_has |= 0x200000000000uLL;
  v5 = *(from + 28);
  if ((v5 & 0x400000000000) == 0)
  {
LABEL_13:
    if ((v5 & 0x100000000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_69;
  }

LABEL_68:
  self->_wifiWghtAVGTXPHYRATE = *(from + 52);
  *&self->_has |= 0x400000000000uLL;
  v5 = *(from + 28);
  if ((v5 & 0x100000000000) == 0)
  {
LABEL_14:
    if ((v5 & 0x800000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_70;
  }

LABEL_69:
  self->_wifiWghtAVGRXPHYRATE = *(from + 50);
  *&self->_has |= 0x100000000000uLL;
  v5 = *(from + 28);
  if ((v5 & 0x800000000) == 0)
  {
LABEL_15:
    if ((v5 & 0x1000000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_70:
  self->_wifiEstThoughtput = *(from + 41);
  *&self->_has |= 0x800000000uLL;
  if ((*(from + 28) & 0x1000000000000) != 0)
  {
LABEL_16:
    self->_wifiWifiEstThoughtputConfidence = *(from + 54);
    *&self->_has |= 0x1000000000000uLL;
  }

LABEL_17:
  if (*(from + 11))
  {
    [(AWDWRMWiFiCell5GData *)self setCellRatType:?];
  }

  v6 = *(from + 28);
  if ((v6 & 0x80) != 0)
  {
    self->_cellLteRSRP = *(from + 10);
    *&self->_has |= 0x80uLL;
    v6 = *(from + 28);
    if ((v6 & 0x200) == 0)
    {
LABEL_21:
      if ((v6 & 0x100) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_74;
    }
  }

  else if ((v6 & 0x200) == 0)
  {
    goto LABEL_21;
  }

  self->_cellLteSNR = *(from + 12);
  *&self->_has |= 0x200uLL;
  v6 = *(from + 28);
  if ((v6 & 0x100) == 0)
  {
LABEL_22:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_75;
  }

LABEL_74:
  self->_cellLteRSRQ = *(from + 11);
  *&self->_has |= 0x100uLL;
  v6 = *(from + 28);
  if ((v6 & 0x4000) == 0)
  {
LABEL_23:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_76;
  }

LABEL_75:
  self->_cellNrRSRP = *(from + 17);
  *&self->_has |= 0x4000uLL;
  v6 = *(from + 28);
  if ((v6 & 0x8000) == 0)
  {
LABEL_24:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_77;
  }

LABEL_76:
  self->_cellNrRSRQ = *(from + 18);
  *&self->_has |= 0x8000uLL;
  v6 = *(from + 28);
  if ((v6 & 0x10000) == 0)
  {
LABEL_25:
    if ((v6 & 4) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_78;
  }

LABEL_77:
  self->_cellNrSNR = *(from + 19);
  *&self->_has |= 0x10000uLL;
  v6 = *(from + 28);
  if ((v6 & 4) == 0)
  {
LABEL_26:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_79;
  }

LABEL_78:
  self->_cellDataLQM = *(from + 5);
  *&self->_has |= 4uLL;
  v6 = *(from + 28);
  if ((v6 & 0x40000) == 0)
  {
LABEL_27:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_80;
  }

LABEL_79:
  self->_cellRrcState = *(from + 24);
  *&self->_has |= 0x40000uLL;
  v6 = *(from + 28);
  if ((v6 & 0x2000) == 0)
  {
LABEL_28:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_81;
  }

LABEL_80:
  self->_cellNrFR2active = *(from + 16);
  *&self->_has |= 0x2000uLL;
  v6 = *(from + 28);
  if ((v6 & 0x40) == 0)
  {
LABEL_29:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_82;
  }

LABEL_81:
  self->_cellLteEstimatedThroughput = *(from + 9);
  *&self->_has |= 0x40uLL;
  v6 = *(from + 28);
  if ((v6 & 0x1000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_83;
  }

LABEL_82:
  self->_cellNrEstimatedThroughput = *(from + 15);
  *&self->_has |= 0x1000uLL;
  v6 = *(from + 28);
  if ((v6 & 0x20000) == 0)
  {
LABEL_31:
    if ((v6 & 8) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_84;
  }

LABEL_83:
  self->_cellNsaEnabled = *(from + 20);
  *&self->_has |= 0x20000uLL;
  v6 = *(from + 28);
  if ((v6 & 8) == 0)
  {
LABEL_32:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_85;
  }

LABEL_84:
  self->_cellDlBw = *(from + 6);
  *&self->_has |= 8uLL;
  v6 = *(from + 28);
  if ((v6 & 0x100000) == 0)
  {
LABEL_33:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_86;
  }

LABEL_85:
  self->_cellUlBw = *(from + 26);
  *&self->_has |= 0x100000uLL;
  v6 = *(from + 28);
  if ((v6 & 0x400) == 0)
  {
LABEL_34:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_87;
  }

LABEL_86:
  self->_cellMaxDlCaNumConfigured = *(from + 13);
  *&self->_has |= 0x400uLL;
  v6 = *(from + 28);
  if ((v6 & 0x800) == 0)
  {
LABEL_35:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_88;
  }

LABEL_87:
  self->_cellMaxUlCaNumConfigured = *(from + 14);
  *&self->_has |= 0x800uLL;
  v6 = *(from + 28);
  if ((v6 & 0x20) == 0)
  {
LABEL_36:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_89;
  }

LABEL_88:
  self->_cellEstimatedLoad = *(from + 8);
  *&self->_has |= 0x20uLL;
  v6 = *(from + 28);
  if ((v6 & 0x10) == 0)
  {
LABEL_37:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_90;
  }

LABEL_89:
  self->_cellEstimatedBw = *(from + 7);
  *&self->_has |= 0x10uLL;
  v6 = *(from + 28);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_38:
    if ((v6 & 0x2000000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_91;
  }

LABEL_90:
  self->_recommendedlink = *(from + 33);
  *&self->_has |= 0x8000000uLL;
  v6 = *(from + 28);
  if ((v6 & 0x2000000000000) == 0)
  {
LABEL_39:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_92;
  }

LABEL_91:
  self->_fr2DBRecommendation = *(from + 220);
  *&self->_has |= 0x2000000000000uLL;
  v6 = *(from + 28);
  if ((v6 & 0x800000) == 0)
  {
LABEL_40:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_93;
  }

LABEL_92:
  self->_locationDBFR1Count = *(from + 29);
  *&self->_has |= 0x800000uLL;
  v6 = *(from + 28);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_41:
    if ((v6 & 0x4000000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_94;
  }

LABEL_93:
  self->_locationDBFR2Count = *(from + 30);
  *&self->_has |= 0x1000000uLL;
  v6 = *(from + 28);
  if ((v6 & 0x4000000000000) == 0)
  {
LABEL_42:
    if ((v6 & 0x100000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_95;
  }

LABEL_94:
  self->_highThermalTemperatureNotification = *(from + 221);
  *&self->_has |= 0x4000000000000uLL;
  v6 = *(from + 28);
  if ((v6 & 0x100000000) == 0)
  {
LABEL_43:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_96;
  }

LABEL_95:
  self->_wiFiThroughput = *(from + 38);
  *&self->_has |= 0x100000000uLL;
  v6 = *(from + 28);
  if ((v6 & 0x80000000) == 0)
  {
LABEL_44:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_97;
  }

LABEL_96:
  self->_wiFiPredictedThroughput = *(from + 37);
  *&self->_has |= 0x80000000uLL;
  v6 = *(from + 28);
  if ((v6 & 0x40000000) == 0)
  {
LABEL_45:
    if ((v6 & 0x4000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_98;
  }

LABEL_97:
  self->_wRMRecommendationReason = *(from + 36);
  *&self->_has |= 0x40000000uLL;
  v6 = *(from + 28);
  if ((v6 & 0x4000000000) == 0)
  {
LABEL_46:
    if ((v6 & 0x2000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_99;
  }

LABEL_98:
  self->_wifiRecommendationScore = *(from + 44);
  *&self->_has |= 0x4000000000uLL;
  v6 = *(from + 28);
  if ((v6 & 0x2000000000) == 0)
  {
LABEL_47:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_100;
  }

LABEL_99:
  self->_wifiRecommendationConfidence = *(from + 43);
  *&self->_has |= 0x2000000000uLL;
  v6 = *(from + 28);
  if ((v6 & 0x400000) == 0)
  {
LABEL_48:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_101;
  }

LABEL_100:
  self->_cellularRecommendationScore = *(from + 28);
  *&self->_has |= 0x400000uLL;
  v6 = *(from + 28);
  if ((v6 & 0x200000) == 0)
  {
LABEL_49:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_102;
  }

LABEL_101:
  self->_cellularRecommendationConfidence = *(from + 27);
  *&self->_has |= 0x200000uLL;
  v6 = *(from + 28);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_50:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_103;
  }

LABEL_102:
  self->_radioCoverage = *(from + 31);
  *&self->_has |= 0x2000000uLL;
  v6 = *(from + 28);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_51:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_104;
  }

LABEL_103:
  self->_radioFrequency = *(from + 32);
  *&self->_has |= 0x4000000uLL;
  v6 = *(from + 28);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_52:
    if ((v6 & 2) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_105;
  }

LABEL_104:
  self->_triggerReason = *(from + 35);
  *&self->_has |= 0x20000000uLL;
  v6 = *(from + 28);
  if ((v6 & 2) == 0)
  {
LABEL_53:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_106;
  }

LABEL_105:
  self->_applicationCategory = *(from + 4);
  *&self->_has |= 2uLL;
  v6 = *(from + 28);
  if ((v6 & 0x80000) == 0)
  {
LABEL_54:
    if ((v6 & 0x10000000) == 0)
    {
      return;
    }

    goto LABEL_55;
  }

LABEL_106:
  self->_cellTotalMimoLayers = *(from + 25);
  *&self->_has |= 0x80000uLL;
  if ((*(from + 28) & 0x10000000) == 0)
  {
    return;
  }

LABEL_55:
  self->_totalNrBandwidth = *(from + 34);
  *&self->_has |= 0x10000000uLL;
}

@end