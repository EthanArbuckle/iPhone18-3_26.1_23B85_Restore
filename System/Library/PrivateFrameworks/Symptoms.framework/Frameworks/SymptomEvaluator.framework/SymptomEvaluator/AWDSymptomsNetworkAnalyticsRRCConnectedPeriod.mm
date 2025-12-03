@interface AWDSymptomsNetworkAnalyticsRRCConnectedPeriod
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPeriodType:(id)type;
- (int)periodType;
- (unint64_t)hash;
- (void)addActiveNameDuringPeriod:(id)period;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAnyListener:(BOOL)listener;
- (void)setHasBackgroundListeners:(BOOL)listeners;
- (void)setHasBytesOut:(BOOL)out;
- (void)setHasCountLQMTransitions:(BOOL)transitions;
- (void)setHasEgressDlThroughputBps:(BOOL)bps;
- (void)setHasEgressLQM:(BOOL)m;
- (void)setHasEgressUlThroughputBps:(BOOL)bps;
- (void)setHasIngressDlThroughputBps:(BOOL)bps;
- (void)setHasIngressLQM:(BOOL)m;
- (void)setHasIngressUlThroughputBps:(BOOL)bps;
- (void)setHasLastDisconnectedSecs:(BOOL)secs;
- (void)setHasPacketsIn:(BOOL)in;
- (void)setHasPacketsOut:(BOOL)out;
- (void)setHasPeriodDurationTCEnabledUsecs:(BOOL)usecs;
- (void)setHasPeriodDurationUsecs:(BOOL)usecs;
- (void)setHasPeriodType:(BOOL)type;
- (void)setHasTcCountFlowDispositionBURST:(BOOL)t;
- (void)setHasTcCountFlowDispositionDefault:(BOOL)default;
- (void)setHasTcCountFlowDispositionDrop:(BOOL)drop;
- (void)setHasTcCountFlowDispositionFGFacetime:(BOOL)facetime;
- (void)setHasTcCountFlowDispositionFGIMSG:(BOOL)g;
- (void)setHasTcCountFlowDispositionKNOWNOTHER:(BOOL)r;
- (void)setHasTcCountFlowDispositionLARGE:(BOOL)e;
- (void)setHasTcCountFlowDispositionLARGEDL:(BOOL)l;
- (void)setHasTcCountFlowDispositionLARGEUL:(BOOL)l;
- (void)setHasTcCountFlowDispositionMail:(BOOL)mail;
- (void)setHasTcCountFlowDispositionMaps:(BOOL)maps;
- (void)setHasTcCountFlowDispositionMediaserverd:(BOOL)mediaserverd;
- (void)setHasTcCountFlowDispositionMusic:(BOOL)music;
- (void)setHasTcCountFlowDispositionNSURLSessiond:(BOOL)sessiond;
- (void)setHasTcCountFlowDispositionNews:(BOOL)news;
- (void)setHasTcCountFlowDispositionPUSH:(BOOL)h;
- (void)setHasTcCountFlowDispositionPodcasts:(BOOL)podcasts;
- (void)setHasTcCountFlowDispositionRTCReportingd:(BOOL)reportingd;
- (void)setHasTcCountFlowDispositionSIRI:(BOOL)i;
- (void)setHasTcCountFlowDispositionSafari:(BOOL)safari;
- (void)setHasTcCountFlowDispositionStocks:(BOOL)stocks;
- (void)setHasTcCountFlowDispositionTCAV:(BOOL)v;
- (void)setHasTcCountFlowDispositionTCBK:(BOOL)k;
- (void)setHasTcCountFlowDispositionTCBKSYS:(BOOL)s;
- (void)setHasTcCountFlowDispositionTCCTL:(BOOL)l;
- (void)setHasTcCountFlowDispositionTCOAM:(BOOL)m;
- (void)setHasTcCountFlowDispositionTCRD:(BOOL)d;
- (void)setHasTcCountFlowDispositionTCRV:(BOOL)v;
- (void)setHasTcCountFlowDispositionTCVI:(BOOL)i;
- (void)setHasTcCountFlowDispositionTCVO:(BOOL)o;
- (void)setHasTcCountFlowDispositionUNKNOWNOTHER:(BOOL)r;
- (void)setHasTcCountFlowDispositionUndefined:(BOOL)undefined;
- (void)setHasTcCountFlowDispositionWeather:(BOOL)weather;
- (void)setHasTcCountFlowDispositionWebkit:(BOOL)webkit;
- (void)setHasTcDampeningSuppressed:(BOOL)suppressed;
- (void)setHasTcUpdates:(BOOL)updates;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)setHasUniqueActiveAppCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation AWDSymptomsNetworkAnalyticsRRCConnectedPeriod

- (void)setHasTimestamp:(BOOL)timestamp
{
  v3 = 2048;
  if (!timestamp)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (int)periodType
{
  if ((*(&self->_has + 2) & 4) != 0)
  {
    return self->_periodType;
  }

  else
  {
    return 1;
  }
}

- (void)setHasPeriodType:(BOOL)type
{
  v3 = 0x40000;
  if (!type)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (int)StringAsPeriodType:(id)type
{
  typeCopy = type;
  v4 = 1;
  if (([typeCopy isEqualToString:@"ANY"] & 1) == 0)
  {
    if ([typeCopy isEqualToString:@"BACKGROUND"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)setHasAnyListener:(BOOL)listener
{
  v3 = 0x2000;
  if (!listener)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)setHasBackgroundListeners:(BOOL)listeners
{
  v3 = 0x4000;
  if (!listeners)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setHasPeriodDurationUsecs:(BOOL)usecs
{
  v3 = 1024;
  if (!usecs)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setHasLastDisconnectedSecs:(BOOL)secs
{
  v3 = 64;
  if (!secs)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setHasIngressLQM:(BOOL)m
{
  v3 = 0x20000;
  if (!m)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)setHasCountLQMTransitions:(BOOL)transitions
{
  v3 = 0x8000;
  if (!transitions)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setHasEgressLQM:(BOOL)m
{
  v3 = 0x10000;
  if (!m)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (void)setHasIngressUlThroughputBps:(BOOL)bps
{
  v3 = 32;
  if (!bps)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setHasIngressDlThroughputBps:(BOOL)bps
{
  v3 = 16;
  if (!bps)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (void)setHasEgressUlThroughputBps:(BOOL)bps
{
  v3 = 8;
  if (!bps)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (void)setHasEgressDlThroughputBps:(BOOL)bps
{
  v3 = 4;
  if (!bps)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setHasBytesOut:(BOOL)out
{
  v3 = 2;
  if (!out)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setHasPacketsIn:(BOOL)in
{
  v3 = 128;
  if (!in)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (void)setHasPacketsOut:(BOOL)out
{
  v3 = 256;
  if (!out)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setHasUniqueActiveAppCount:(BOOL)count
{
  v3 = 4096;
  if (!count)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)addActiveNameDuringPeriod:(id)period
{
  periodCopy = period;
  activeNameDuringPeriods = self->_activeNameDuringPeriods;
  v8 = periodCopy;
  if (!activeNameDuringPeriods)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_activeNameDuringPeriods;
    self->_activeNameDuringPeriods = v6;

    periodCopy = v8;
    activeNameDuringPeriods = self->_activeNameDuringPeriods;
  }

  [(NSMutableArray *)activeNameDuringPeriods addObject:periodCopy];
}

- (void)setHasTcCountFlowDispositionUndefined:(BOOL)undefined
{
  v3 = 0x4000000000000;
  if (!undefined)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFFFFFFFFFFLL | v3);
}

- (void)setHasTcCountFlowDispositionTCBKSYS:(BOOL)s
{
  v3 = 0x40000000000;
  if (!s)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFFFFFFFFFFLL | v3);
}

- (void)setHasTcCountFlowDispositionTCBK:(BOOL)k
{
  v3 = 0x20000000000;
  if (!k)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFFFFFFFFFFLL | v3);
}

- (void)setHasTcCountFlowDispositionTCRD:(BOOL)d
{
  v3 = 0x200000000000;
  if (!d)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFFFFFFFFFFLL | v3);
}

- (void)setHasTcCountFlowDispositionTCOAM:(BOOL)m
{
  v3 = 0x100000000000;
  if (!m)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFFFFFFFFFFLL | v3);
}

- (void)setHasTcCountFlowDispositionTCAV:(BOOL)v
{
  v3 = 0x10000000000;
  if (!v)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFFFFFFFFFFLL | v3);
}

- (void)setHasTcCountFlowDispositionTCRV:(BOOL)v
{
  v3 = 0x400000000000;
  if (!v)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFFFFFFFFFFLL | v3);
}

- (void)setHasTcCountFlowDispositionTCVI:(BOOL)i
{
  v3 = 0x800000000000;
  if (!i)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFFFFFFFFFFLL | v3);
}

- (void)setHasTcCountFlowDispositionTCVO:(BOOL)o
{
  v3 = 0x1000000000000;
  if (!o)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFFFFFFFFFFLL | v3);
}

- (void)setHasTcCountFlowDispositionTCCTL:(BOOL)l
{
  v3 = 0x80000000000;
  if (!l)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FFFFFFFFFFLL | v3);
}

- (void)setHasTcCountFlowDispositionLARGEUL:(BOOL)l
{
  v3 = 0x8000000;
  if (!l)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)setHasTcCountFlowDispositionLARGEDL:(BOOL)l
{
  v3 = 0x4000000;
  if (!l)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setHasTcCountFlowDispositionLARGE:(BOOL)e
{
  v3 = 0x2000000;
  if (!e)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setHasTcCountFlowDispositionBURST:(BOOL)t
{
  v3 = 0x80000;
  if (!t)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)setHasTcCountFlowDispositionSIRI:(BOOL)i
{
  v3 = 0x2000000000;
  if (!i)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3);
}

- (void)setHasTcCountFlowDispositionPUSH:(BOOL)h
{
  v3 = 0x400000000;
  if (!h)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (void)setHasTcCountFlowDispositionKNOWNOTHER:(BOOL)r
{
  v3 = 0x1000000;
  if (!r)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setHasTcCountFlowDispositionUNKNOWNOTHER:(BOOL)r
{
  v3 = 0x2000000000000;
  if (!r)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFFFFFFFFFFLL | v3);
}

- (void)setHasTcCountFlowDispositionDrop:(BOOL)drop
{
  v3 = 0x200000;
  if (!drop)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)setHasTcCountFlowDispositionDefault:(BOOL)default
{
  v3 = 0x100000;
  if (!default)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setHasTcCountFlowDispositionFGFacetime:(BOOL)facetime
{
  v3 = 0x400000;
  if (!facetime)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)setHasTcCountFlowDispositionFGIMSG:(BOOL)g
{
  v3 = 0x800000;
  if (!g)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setHasTcCountFlowDispositionMail:(BOOL)mail
{
  v3 = 0x10000000;
  if (!mail)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setHasTcCountFlowDispositionMaps:(BOOL)maps
{
  v3 = 0x20000000;
  if (!maps)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)setHasTcCountFlowDispositionMediaserverd:(BOOL)mediaserverd
{
  v3 = 0x40000000;
  if (!mediaserverd)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setHasTcCountFlowDispositionMusic:(BOOL)music
{
  v3 = 0x80000000;
  if (!music)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (void)setHasTcCountFlowDispositionNSURLSessiond:(BOOL)sessiond
{
  v3 = 0x100000000;
  if (!sessiond)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setHasTcCountFlowDispositionNews:(BOOL)news
{
  v3 = 0x200000000;
  if (!news)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)setHasTcCountFlowDispositionPodcasts:(BOOL)podcasts
{
  v3 = 0x800000000;
  if (!podcasts)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3);
}

- (void)setHasTcCountFlowDispositionRTCReportingd:(BOOL)reportingd
{
  v3 = 0x1000000000;
  if (!reportingd)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3);
}

- (void)setHasTcCountFlowDispositionWeather:(BOOL)weather
{
  v3 = 0x8000000000000;
  if (!weather)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFFFFFFFFFFLL | v3);
}

- (void)setHasTcCountFlowDispositionWebkit:(BOOL)webkit
{
  v3 = 0x10000000000000;
  if (!webkit)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFFFFFFFFFFLL | v3);
}

- (void)setHasPeriodDurationTCEnabledUsecs:(BOOL)usecs
{
  v3 = 512;
  if (!usecs)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasTcUpdates:(BOOL)updates
{
  v3 = 0x40000000000000;
  if (!updates)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFFFFFFFFFFLL | v3);
}

- (void)setHasTcDampeningSuppressed:(BOOL)suppressed
{
  v3 = 0x20000000000000;
  if (!suppressed)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFFFFFFFFFFLL | v3);
}

- (void)setHasTcCountFlowDispositionSafari:(BOOL)safari
{
  v3 = 0x4000000000;
  if (!safari)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3);
}

- (void)setHasTcCountFlowDispositionStocks:(BOOL)stocks
{
  v3 = 0x8000000000;
  if (!stocks)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7FFFFFFFFFLL | v3);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDSymptomsNetworkAnalyticsRRCConnectedPeriod;
  v4 = [(AWDSymptomsNetworkAnalyticsRRCConnectedPeriod *)&v8 description];
  dictionaryRepresentation = [(AWDSymptomsNetworkAnalyticsRRCConnectedPeriod *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((*&has & 0x800) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v11 forKey:@"timestamp"];

    has = self->_has;
    if ((*&has & 0x40000) == 0)
    {
LABEL_3:
      if ((*&has & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_105;
    }
  }

  else if ((*&has & 0x40000) == 0)
  {
    goto LABEL_3;
  }

  periodType = self->_periodType;
  if (periodType == 1)
  {
    v13 = @"ANY";
  }

  else if (periodType == 2)
  {
    v13 = @"BACKGROUND";
  }

  else
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_periodType];
  }

  [dictionary setObject:v13 forKey:@"periodType"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_4:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_106;
  }

LABEL_105:
  v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_anyListener];
  [dictionary setObject:v50 forKey:@"anyListener"];

  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_5:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_107;
  }

LABEL_106:
  v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_backgroundListeners];
  [dictionary setObject:v51 forKey:@"backgroundListeners"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_6:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_108;
  }

LABEL_107:
  v52 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_periodDurationUsecs];
  [dictionary setObject:v52 forKey:@"periodDurationUsecs"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_7:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_109;
  }

LABEL_108:
  v53 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_lastDisconnectedSecs];
  [dictionary setObject:v53 forKey:@"lastDisconnectedSecs"];

  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_8:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_110;
  }

LABEL_109:
  v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_ingressLQM];
  [dictionary setObject:v54 forKey:@"ingressLQM"];

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_9:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_111;
  }

LABEL_110:
  v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_countLQMTransitions];
  [dictionary setObject:v55 forKey:@"countLQMTransitions"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_10:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_112;
  }

LABEL_111:
  v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_egressLQM];
  [dictionary setObject:v56 forKey:@"egressLQM"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_11:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_113;
  }

LABEL_112:
  v57 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_ingressUlThroughputBps];
  [dictionary setObject:v57 forKey:@"ingressUlThroughputBps"];

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_12:
    if ((*&has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_114;
  }

LABEL_113:
  v58 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_ingressDlThroughputBps];
  [dictionary setObject:v58 forKey:@"ingressDlThroughputBps"];

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_13:
    if ((*&has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_115;
  }

LABEL_114:
  v59 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_egressUlThroughputBps];
  [dictionary setObject:v59 forKey:@"egressUlThroughputBps"];

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_14:
    if ((*&has & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_116;
  }

LABEL_115:
  v60 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_egressDlThroughputBps];
  [dictionary setObject:v60 forKey:@"egressDlThroughputBps"];

  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_15:
    if ((*&has & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_117;
  }

LABEL_116:
  v61 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_bytesIn];
  [dictionary setObject:v61 forKey:@"bytesIn"];

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_16:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_118;
  }

LABEL_117:
  v62 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_bytesOut];
  [dictionary setObject:v62 forKey:@"bytesOut"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_17:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_119;
  }

LABEL_118:
  v63 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_packetsIn];
  [dictionary setObject:v63 forKey:@"packetsIn"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_18:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_119:
  v64 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_packetsOut];
  [dictionary setObject:v64 forKey:@"packetsOut"];

  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_19:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_uniqueActiveAppCount];
    [dictionary setObject:v5 forKey:@"uniqueActiveAppCount"];
  }

LABEL_20:
  activeNameDuringPeriods = self->_activeNameDuringPeriods;
  if (activeNameDuringPeriods)
  {
    [dictionary setObject:activeNameDuringPeriods forKey:@"activeNameDuringPeriod"];
  }

  v7 = self->_has;
  if ((*&v7 & 0x4000000000000) != 0)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tcCountFlowDispositionUndefined];
    [dictionary setObject:v14 forKey:@"tcCountFlowDispositionUndefined"];

    v7 = self->_has;
    if ((*&v7 & 0x40000000000) == 0)
    {
LABEL_24:
      if ((*&v7 & 0x20000000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_67;
    }
  }

  else if ((*&v7 & 0x40000000000) == 0)
  {
    goto LABEL_24;
  }

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tcCountFlowDispositionTCBKSYS];
  [dictionary setObject:v15 forKey:@"tcCountFlowDisposition_TC_BK_SYS"];

  v7 = self->_has;
  if ((*&v7 & 0x20000000000) == 0)
  {
LABEL_25:
    if ((*&v7 & 0x200000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_68;
  }

LABEL_67:
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tcCountFlowDispositionTCBK];
  [dictionary setObject:v16 forKey:@"tcCountFlowDisposition_TC_BK"];

  v7 = self->_has;
  if ((*&v7 & 0x200000000000) == 0)
  {
LABEL_26:
    if ((*&v7 & 0x100000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_69;
  }

LABEL_68:
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tcCountFlowDispositionTCRD];
  [dictionary setObject:v17 forKey:@"tcCountFlowDisposition_TC_RD"];

  v7 = self->_has;
  if ((*&v7 & 0x100000000000) == 0)
  {
LABEL_27:
    if ((*&v7 & 0x10000000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_70;
  }

LABEL_69:
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tcCountFlowDispositionTCOAM];
  [dictionary setObject:v18 forKey:@"tcCountFlowDisposition_TC_OAM"];

  v7 = self->_has;
  if ((*&v7 & 0x10000000000) == 0)
  {
LABEL_28:
    if ((*&v7 & 0x400000000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_71;
  }

LABEL_70:
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tcCountFlowDispositionTCAV];
  [dictionary setObject:v19 forKey:@"tcCountFlowDisposition_TC_AV"];

  v7 = self->_has;
  if ((*&v7 & 0x400000000000) == 0)
  {
LABEL_29:
    if ((*&v7 & 0x800000000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_72;
  }

LABEL_71:
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tcCountFlowDispositionTCRV];
  [dictionary setObject:v20 forKey:@"tcCountFlowDisposition_TC_RV"];

  v7 = self->_has;
  if ((*&v7 & 0x800000000000) == 0)
  {
LABEL_30:
    if ((*&v7 & 0x1000000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_73;
  }

LABEL_72:
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tcCountFlowDispositionTCVI];
  [dictionary setObject:v21 forKey:@"tcCountFlowDisposition_TC_VI"];

  v7 = self->_has;
  if ((*&v7 & 0x1000000000000) == 0)
  {
LABEL_31:
    if ((*&v7 & 0x80000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_74;
  }

LABEL_73:
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tcCountFlowDispositionTCVO];
  [dictionary setObject:v22 forKey:@"tcCountFlowDisposition_TC_VO"];

  v7 = self->_has;
  if ((*&v7 & 0x80000000000) == 0)
  {
LABEL_32:
    if ((*&v7 & 0x8000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_75;
  }

LABEL_74:
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tcCountFlowDispositionTCCTL];
  [dictionary setObject:v23 forKey:@"tcCountFlowDisposition_TC_CTL"];

  v7 = self->_has;
  if ((*&v7 & 0x8000000) == 0)
  {
LABEL_33:
    if ((*&v7 & 0x4000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_76;
  }

LABEL_75:
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tcCountFlowDispositionLARGEUL];
  [dictionary setObject:v24 forKey:@"tcCountFlowDisposition_LARGE_UL"];

  v7 = self->_has;
  if ((*&v7 & 0x4000000) == 0)
  {
LABEL_34:
    if ((*&v7 & 0x2000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_77;
  }

LABEL_76:
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tcCountFlowDispositionLARGEDL];
  [dictionary setObject:v25 forKey:@"tcCountFlowDisposition_LARGE_DL"];

  v7 = self->_has;
  if ((*&v7 & 0x2000000) == 0)
  {
LABEL_35:
    if ((*&v7 & 0x80000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_78;
  }

LABEL_77:
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tcCountFlowDispositionLARGE];
  [dictionary setObject:v26 forKey:@"tcCountFlowDisposition_LARGE"];

  v7 = self->_has;
  if ((*&v7 & 0x80000) == 0)
  {
LABEL_36:
    if ((*&v7 & 0x2000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_79;
  }

LABEL_78:
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tcCountFlowDispositionBURST];
  [dictionary setObject:v27 forKey:@"tcCountFlowDisposition_BURST"];

  v7 = self->_has;
  if ((*&v7 & 0x2000000000) == 0)
  {
LABEL_37:
    if ((*&v7 & 0x400000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_80;
  }

LABEL_79:
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tcCountFlowDispositionSIRI];
  [dictionary setObject:v28 forKey:@"tcCountFlowDisposition_SIRI"];

  v7 = self->_has;
  if ((*&v7 & 0x400000000) == 0)
  {
LABEL_38:
    if ((*&v7 & 0x1000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_81;
  }

LABEL_80:
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tcCountFlowDispositionPUSH];
  [dictionary setObject:v29 forKey:@"tcCountFlowDisposition_PUSH"];

  v7 = self->_has;
  if ((*&v7 & 0x1000000) == 0)
  {
LABEL_39:
    if ((*&v7 & 0x2000000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_82;
  }

LABEL_81:
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tcCountFlowDispositionKNOWNOTHER];
  [dictionary setObject:v30 forKey:@"tcCountFlowDisposition_KNOWN_OTHER"];

  v7 = self->_has;
  if ((*&v7 & 0x2000000000000) == 0)
  {
LABEL_40:
    if ((*&v7 & 0x200000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_83;
  }

LABEL_82:
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tcCountFlowDispositionUNKNOWNOTHER];
  [dictionary setObject:v31 forKey:@"tcCountFlowDisposition_UNKNOWN_OTHER"];

  v7 = self->_has;
  if ((*&v7 & 0x200000) == 0)
  {
LABEL_41:
    if ((*&v7 & 0x100000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_84;
  }

LABEL_83:
  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tcCountFlowDispositionDrop];
  [dictionary setObject:v32 forKey:@"tcCountFlowDispositionDrop"];

  v7 = self->_has;
  if ((*&v7 & 0x100000) == 0)
  {
LABEL_42:
    if ((*&v7 & 0x400000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_85;
  }

LABEL_84:
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tcCountFlowDispositionDefault];
  [dictionary setObject:v33 forKey:@"tcCountFlowDispositionDefault"];

  v7 = self->_has;
  if ((*&v7 & 0x400000) == 0)
  {
LABEL_43:
    if ((*&v7 & 0x800000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_86;
  }

LABEL_85:
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tcCountFlowDispositionFGFacetime];
  [dictionary setObject:v34 forKey:@"tcCountFlowDispositionFGFacetime"];

  v7 = self->_has;
  if ((*&v7 & 0x800000) == 0)
  {
LABEL_44:
    if ((*&v7 & 0x10000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_87;
  }

LABEL_86:
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tcCountFlowDispositionFGIMSG];
  [dictionary setObject:v35 forKey:@"tcCountFlowDispositionFGIMSG"];

  v7 = self->_has;
  if ((*&v7 & 0x10000000) == 0)
  {
LABEL_45:
    if ((*&v7 & 0x20000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_88;
  }

LABEL_87:
  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tcCountFlowDispositionMail];
  [dictionary setObject:v36 forKey:@"tcCountFlowDispositionMail"];

  v7 = self->_has;
  if ((*&v7 & 0x20000000) == 0)
  {
LABEL_46:
    if ((*&v7 & 0x40000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_89;
  }

LABEL_88:
  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tcCountFlowDispositionMaps];
  [dictionary setObject:v37 forKey:@"tcCountFlowDispositionMaps"];

  v7 = self->_has;
  if ((*&v7 & 0x40000000) == 0)
  {
LABEL_47:
    if ((*&v7 & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_90;
  }

LABEL_89:
  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tcCountFlowDispositionMediaserverd];
  [dictionary setObject:v38 forKey:@"tcCountFlowDispositionMediaserverd"];

  v7 = self->_has;
  if ((*&v7 & 0x80000000) == 0)
  {
LABEL_48:
    if ((*&v7 & 0x100000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_91;
  }

LABEL_90:
  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tcCountFlowDispositionMusic];
  [dictionary setObject:v39 forKey:@"tcCountFlowDispositionMusic"];

  v7 = self->_has;
  if ((*&v7 & 0x100000000) == 0)
  {
LABEL_49:
    if ((*&v7 & 0x200000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_92;
  }

LABEL_91:
  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tcCountFlowDispositionNSURLSessiond];
  [dictionary setObject:v40 forKey:@"tcCountFlowDispositionNSURLSessiond"];

  v7 = self->_has;
  if ((*&v7 & 0x200000000) == 0)
  {
LABEL_50:
    if ((*&v7 & 0x800000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_93;
  }

LABEL_92:
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tcCountFlowDispositionNews];
  [dictionary setObject:v41 forKey:@"tcCountFlowDispositionNews"];

  v7 = self->_has;
  if ((*&v7 & 0x800000000) == 0)
  {
LABEL_51:
    if ((*&v7 & 0x1000000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_94;
  }

LABEL_93:
  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tcCountFlowDispositionPodcasts];
  [dictionary setObject:v42 forKey:@"tcCountFlowDispositionPodcasts"];

  v7 = self->_has;
  if ((*&v7 & 0x1000000000) == 0)
  {
LABEL_52:
    if ((*&v7 & 0x8000000000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_95;
  }

LABEL_94:
  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tcCountFlowDispositionRTCReportingd];
  [dictionary setObject:v43 forKey:@"tcCountFlowDispositionRTCReportingd"];

  v7 = self->_has;
  if ((*&v7 & 0x8000000000000) == 0)
  {
LABEL_53:
    if ((*&v7 & 0x10000000000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_96;
  }

LABEL_95:
  v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tcCountFlowDispositionWeather];
  [dictionary setObject:v44 forKey:@"tcCountFlowDispositionWeather"];

  v7 = self->_has;
  if ((*&v7 & 0x10000000000000) == 0)
  {
LABEL_54:
    if ((*&v7 & 0x200) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_97;
  }

LABEL_96:
  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tcCountFlowDispositionWebkit];
  [dictionary setObject:v45 forKey:@"tcCountFlowDispositionWebkit"];

  v7 = self->_has;
  if ((*&v7 & 0x200) == 0)
  {
LABEL_55:
    if ((*&v7 & 0x40000000000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_98;
  }

LABEL_97:
  v46 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_periodDurationTCEnabledUsecs];
  [dictionary setObject:v46 forKey:@"periodDurationTCEnabledUsecs"];

  v7 = self->_has;
  if ((*&v7 & 0x40000000000000) == 0)
  {
LABEL_56:
    if ((*&v7 & 0x20000000000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_99;
  }

LABEL_98:
  v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tcUpdates];
  [dictionary setObject:v47 forKey:@"tcUpdates"];

  v7 = self->_has;
  if ((*&v7 & 0x20000000000000) == 0)
  {
LABEL_57:
    if ((*&v7 & 0x4000000000) == 0)
    {
      goto LABEL_58;
    }

LABEL_100:
    v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tcCountFlowDispositionSafari];
    [dictionary setObject:v49 forKey:@"tcCountFlowDispositionSafari"];

    if ((*&self->_has & 0x8000000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_99:
  v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tcDampeningSuppressed];
  [dictionary setObject:v48 forKey:@"tcDampeningSuppressed"];

  v7 = self->_has;
  if ((*&v7 & 0x4000000000) != 0)
  {
    goto LABEL_100;
  }

LABEL_58:
  if ((*&v7 & 0x8000000000) != 0)
  {
LABEL_59:
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tcCountFlowDispositionStocks];
    [dictionary setObject:v8 forKey:@"tcCountFlowDispositionStocks"];
  }

LABEL_60:
  v9 = dictionary;

  return dictionary;
}

- (void)writeTo:(id)to
{
  v74 = *MEMORY[0x277D85DE8];
  toCopy = to;
  has = self->_has;
  if ((*&has & 0x800) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 0x40000) == 0)
    {
LABEL_3:
      if ((*&has & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_68;
    }
  }

  else if ((*&has & 0x40000) == 0)
  {
    goto LABEL_3;
  }

  periodType = self->_periodType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_4:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_69;
  }

LABEL_68:
  anyListener = self->_anyListener;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_5:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_70;
  }

LABEL_69:
  backgroundListeners = self->_backgroundListeners;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_6:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_71;
  }

LABEL_70:
  periodDurationUsecs = self->_periodDurationUsecs;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_7:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_72;
  }

LABEL_71:
  lastDisconnectedSecs = self->_lastDisconnectedSecs;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_8:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_73;
  }

LABEL_72:
  ingressLQM = self->_ingressLQM;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_9:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_74;
  }

LABEL_73:
  countLQMTransitions = self->_countLQMTransitions;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_10:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_75;
  }

LABEL_74:
  egressLQM = self->_egressLQM;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_11:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_76;
  }

LABEL_75:
  ingressUlThroughputBps = self->_ingressUlThroughputBps;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_12:
    if ((*&has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_77;
  }

LABEL_76:
  ingressDlThroughputBps = self->_ingressDlThroughputBps;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_13:
    if ((*&has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_78;
  }

LABEL_77:
  egressUlThroughputBps = self->_egressUlThroughputBps;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_14:
    if ((*&has & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_79;
  }

LABEL_78:
  egressDlThroughputBps = self->_egressDlThroughputBps;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_15:
    if ((*&has & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_80;
  }

LABEL_79:
  bytesIn = self->_bytesIn;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_16:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_81;
  }

LABEL_80:
  bytesOut = self->_bytesOut;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_17:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_82;
  }

LABEL_81:
  packetsIn = self->_packetsIn;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_18:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_82:
  packetsOut = self->_packetsOut;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_19:
    uniqueActiveAppCount = self->_uniqueActiveAppCount;
    PBDataWriterWriteUint64Field();
  }

LABEL_20:
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v7 = self->_activeNameDuringPeriods;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v69 objects:v73 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v70;
    do
    {
      v11 = 0;
      do
      {
        if (*v70 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v69 + 1) + 8 * v11);
        PBDataWriterWriteStringField();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v69 objects:v73 count:16];
    }

    while (v9);
  }

  v13 = self->_has;
  if ((*&v13 & 0x4000000000000) != 0)
  {
    tcCountFlowDispositionUndefined = self->_tcCountFlowDispositionUndefined;
    PBDataWriterWriteUint32Field();
    v13 = self->_has;
    if ((*&v13 & 0x40000000000) == 0)
    {
LABEL_29:
      if ((*&v13 & 0x20000000000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_86;
    }
  }

  else if ((*&v13 & 0x40000000000) == 0)
  {
    goto LABEL_29;
  }

  tcCountFlowDispositionTCBKSYS = self->_tcCountFlowDispositionTCBKSYS;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((*&v13 & 0x20000000000) == 0)
  {
LABEL_30:
    if ((*&v13 & 0x200000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_87;
  }

LABEL_86:
  tcCountFlowDispositionTCBK = self->_tcCountFlowDispositionTCBK;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((*&v13 & 0x200000000000) == 0)
  {
LABEL_31:
    if ((*&v13 & 0x100000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_88;
  }

LABEL_87:
  tcCountFlowDispositionTCRD = self->_tcCountFlowDispositionTCRD;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((*&v13 & 0x100000000000) == 0)
  {
LABEL_32:
    if ((*&v13 & 0x10000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_89;
  }

LABEL_88:
  tcCountFlowDispositionTCOAM = self->_tcCountFlowDispositionTCOAM;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((*&v13 & 0x10000000000) == 0)
  {
LABEL_33:
    if ((*&v13 & 0x400000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_90;
  }

LABEL_89:
  tcCountFlowDispositionTCAV = self->_tcCountFlowDispositionTCAV;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((*&v13 & 0x400000000000) == 0)
  {
LABEL_34:
    if ((*&v13 & 0x800000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_91;
  }

LABEL_90:
  tcCountFlowDispositionTCRV = self->_tcCountFlowDispositionTCRV;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((*&v13 & 0x800000000000) == 0)
  {
LABEL_35:
    if ((*&v13 & 0x1000000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_92;
  }

LABEL_91:
  tcCountFlowDispositionTCVI = self->_tcCountFlowDispositionTCVI;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((*&v13 & 0x1000000000000) == 0)
  {
LABEL_36:
    if ((*&v13 & 0x80000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_93;
  }

LABEL_92:
  tcCountFlowDispositionTCVO = self->_tcCountFlowDispositionTCVO;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((*&v13 & 0x80000000000) == 0)
  {
LABEL_37:
    if ((*&v13 & 0x8000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_94;
  }

LABEL_93:
  tcCountFlowDispositionTCCTL = self->_tcCountFlowDispositionTCCTL;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((*&v13 & 0x8000000) == 0)
  {
LABEL_38:
    if ((*&v13 & 0x4000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_95;
  }

LABEL_94:
  tcCountFlowDispositionLARGEUL = self->_tcCountFlowDispositionLARGEUL;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((*&v13 & 0x4000000) == 0)
  {
LABEL_39:
    if ((*&v13 & 0x2000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_96;
  }

LABEL_95:
  tcCountFlowDispositionLARGEDL = self->_tcCountFlowDispositionLARGEDL;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((*&v13 & 0x2000000) == 0)
  {
LABEL_40:
    if ((*&v13 & 0x80000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_97;
  }

LABEL_96:
  tcCountFlowDispositionLARGE = self->_tcCountFlowDispositionLARGE;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((*&v13 & 0x80000) == 0)
  {
LABEL_41:
    if ((*&v13 & 0x2000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_98;
  }

LABEL_97:
  tcCountFlowDispositionBURST = self->_tcCountFlowDispositionBURST;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((*&v13 & 0x2000000000) == 0)
  {
LABEL_42:
    if ((*&v13 & 0x400000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_99;
  }

LABEL_98:
  tcCountFlowDispositionSIRI = self->_tcCountFlowDispositionSIRI;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((*&v13 & 0x400000000) == 0)
  {
LABEL_43:
    if ((*&v13 & 0x1000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_100;
  }

LABEL_99:
  tcCountFlowDispositionPUSH = self->_tcCountFlowDispositionPUSH;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((*&v13 & 0x1000000) == 0)
  {
LABEL_44:
    if ((*&v13 & 0x2000000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_101;
  }

LABEL_100:
  tcCountFlowDispositionKNOWNOTHER = self->_tcCountFlowDispositionKNOWNOTHER;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((*&v13 & 0x2000000000000) == 0)
  {
LABEL_45:
    if ((*&v13 & 0x200000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_102;
  }

LABEL_101:
  tcCountFlowDispositionUNKNOWNOTHER = self->_tcCountFlowDispositionUNKNOWNOTHER;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((*&v13 & 0x200000) == 0)
  {
LABEL_46:
    if ((*&v13 & 0x100000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_103;
  }

LABEL_102:
  tcCountFlowDispositionDrop = self->_tcCountFlowDispositionDrop;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((*&v13 & 0x100000) == 0)
  {
LABEL_47:
    if ((*&v13 & 0x40000000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_104;
  }

LABEL_103:
  tcCountFlowDispositionDefault = self->_tcCountFlowDispositionDefault;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((*&v13 & 0x40000000000000) == 0)
  {
LABEL_48:
    if ((*&v13 & 0x20000000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_105;
  }

LABEL_104:
  tcUpdates = self->_tcUpdates;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((*&v13 & 0x20000000000000) == 0)
  {
LABEL_49:
    if ((*&v13 & 0x400000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_106;
  }

LABEL_105:
  tcDampeningSuppressed = self->_tcDampeningSuppressed;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((*&v13 & 0x400000) == 0)
  {
LABEL_50:
    if ((*&v13 & 0x800000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_107;
  }

LABEL_106:
  tcCountFlowDispositionFGFacetime = self->_tcCountFlowDispositionFGFacetime;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((*&v13 & 0x800000) == 0)
  {
LABEL_51:
    if ((*&v13 & 0x10000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_108;
  }

LABEL_107:
  tcCountFlowDispositionFGIMSG = self->_tcCountFlowDispositionFGIMSG;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((*&v13 & 0x10000000) == 0)
  {
LABEL_52:
    if ((*&v13 & 0x20000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_109;
  }

LABEL_108:
  tcCountFlowDispositionMail = self->_tcCountFlowDispositionMail;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((*&v13 & 0x20000000) == 0)
  {
LABEL_53:
    if ((*&v13 & 0x40000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_110;
  }

LABEL_109:
  tcCountFlowDispositionMaps = self->_tcCountFlowDispositionMaps;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((*&v13 & 0x40000000) == 0)
  {
LABEL_54:
    if ((*&v13 & 0x80000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_111;
  }

LABEL_110:
  tcCountFlowDispositionMediaserverd = self->_tcCountFlowDispositionMediaserverd;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((*&v13 & 0x80000000) == 0)
  {
LABEL_55:
    if ((*&v13 & 0x100000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_112;
  }

LABEL_111:
  tcCountFlowDispositionMusic = self->_tcCountFlowDispositionMusic;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((*&v13 & 0x100000000) == 0)
  {
LABEL_56:
    if ((*&v13 & 0x200000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_113;
  }

LABEL_112:
  tcCountFlowDispositionNSURLSessiond = self->_tcCountFlowDispositionNSURLSessiond;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((*&v13 & 0x200000000) == 0)
  {
LABEL_57:
    if ((*&v13 & 0x800000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_114;
  }

LABEL_113:
  tcCountFlowDispositionNews = self->_tcCountFlowDispositionNews;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((*&v13 & 0x800000000) == 0)
  {
LABEL_58:
    if ((*&v13 & 0x1000000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_115;
  }

LABEL_114:
  tcCountFlowDispositionPodcasts = self->_tcCountFlowDispositionPodcasts;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((*&v13 & 0x1000000000) == 0)
  {
LABEL_59:
    if ((*&v13 & 0x8000000000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_116;
  }

LABEL_115:
  tcCountFlowDispositionRTCReportingd = self->_tcCountFlowDispositionRTCReportingd;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((*&v13 & 0x8000000000000) == 0)
  {
LABEL_60:
    if ((*&v13 & 0x10000000000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_117;
  }

LABEL_116:
  tcCountFlowDispositionWeather = self->_tcCountFlowDispositionWeather;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((*&v13 & 0x10000000000000) == 0)
  {
LABEL_61:
    if ((*&v13 & 0x200) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_118;
  }

LABEL_117:
  tcCountFlowDispositionWebkit = self->_tcCountFlowDispositionWebkit;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((*&v13 & 0x200) == 0)
  {
LABEL_62:
    if ((*&v13 & 0x4000000000) == 0)
    {
      goto LABEL_63;
    }

LABEL_119:
    tcCountFlowDispositionSafari = self->_tcCountFlowDispositionSafari;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x8000000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

LABEL_118:
  periodDurationTCEnabledUsecs = self->_periodDurationTCEnabledUsecs;
  PBDataWriterWriteUint64Field();
  v13 = self->_has;
  if ((*&v13 & 0x4000000000) != 0)
  {
    goto LABEL_119;
  }

LABEL_63:
  if ((*&v13 & 0x8000000000) != 0)
  {
LABEL_64:
    tcCountFlowDispositionStocks = self->_tcCountFlowDispositionStocks;
    PBDataWriterWriteUint32Field();
  }

LABEL_65:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((*&has & 0x800) != 0)
  {
    toCopy[12] = self->_timestamp;
    toCopy[36] |= 0x800uLL;
    has = self->_has;
    if ((*&has & 0x40000) == 0)
    {
LABEL_3:
      if ((*&has & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_67;
    }
  }

  else if ((*&has & 0x40000) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 35) = self->_periodType;
  toCopy[36] |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_4:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(toCopy + 30) = self->_anyListener;
  toCopy[36] |= 0x2000uLL;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_5:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(toCopy + 31) = self->_backgroundListeners;
  toCopy[36] |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_6:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_70;
  }

LABEL_69:
  toCopy[11] = self->_periodDurationUsecs;
  toCopy[36] |= 0x400uLL;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_7:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_71;
  }

LABEL_70:
  toCopy[7] = self->_lastDisconnectedSecs;
  toCopy[36] |= 0x40uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_8:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(toCopy + 34) = self->_ingressLQM;
  toCopy[36] |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_9:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(toCopy + 32) = self->_countLQMTransitions;
  toCopy[36] |= 0x8000uLL;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_10:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(toCopy + 33) = self->_egressLQM;
  toCopy[36] |= 0x10000uLL;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_11:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_75;
  }

LABEL_74:
  toCopy[6] = self->_ingressUlThroughputBps;
  toCopy[36] |= 0x20uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_12:
    if ((*&has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_76;
  }

LABEL_75:
  toCopy[5] = self->_ingressDlThroughputBps;
  toCopy[36] |= 0x10uLL;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_13:
    if ((*&has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_77;
  }

LABEL_76:
  toCopy[4] = self->_egressUlThroughputBps;
  toCopy[36] |= 8uLL;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_14:
    if ((*&has & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_78;
  }

LABEL_77:
  toCopy[3] = self->_egressDlThroughputBps;
  toCopy[36] |= 4uLL;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_15:
    if ((*&has & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_79;
  }

LABEL_78:
  toCopy[1] = self->_bytesIn;
  toCopy[36] |= 1uLL;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_16:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_80;
  }

LABEL_79:
  toCopy[2] = self->_bytesOut;
  toCopy[36] |= 2uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_17:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_18;
    }

LABEL_81:
    toCopy[9] = self->_packetsOut;
    toCopy[36] |= 0x100uLL;
    if ((*&self->_has & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_80:
  toCopy[8] = self->_packetsIn;
  toCopy[36] |= 0x80uLL;
  has = self->_has;
  if ((*&has & 0x100) != 0)
  {
    goto LABEL_81;
  }

LABEL_18:
  if ((*&has & 0x1000) != 0)
  {
LABEL_19:
    toCopy[13] = self->_uniqueActiveAppCount;
    toCopy[36] |= 0x1000uLL;
  }

LABEL_20:
  v11 = toCopy;
  if ([(AWDSymptomsNetworkAnalyticsRRCConnectedPeriod *)self activeNameDuringPeriodsCount])
  {
    [v11 clearActiveNameDuringPeriods];
    activeNameDuringPeriodsCount = [(AWDSymptomsNetworkAnalyticsRRCConnectedPeriod *)self activeNameDuringPeriodsCount];
    if (activeNameDuringPeriodsCount)
    {
      v7 = activeNameDuringPeriodsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(AWDSymptomsNetworkAnalyticsRRCConnectedPeriod *)self activeNameDuringPeriodAtIndex:i];
        [v11 addActiveNameDuringPeriod:v9];
      }
    }
  }

  v10 = self->_has;
  if ((*&v10 & 0x4000000000000) != 0)
  {
    *(v11 + 67) = self->_tcCountFlowDispositionUndefined;
    *(v11 + 36) |= 0x4000000000000uLL;
    v10 = self->_has;
    if ((*&v10 & 0x40000000000) == 0)
    {
LABEL_26:
      if ((*&v10 & 0x20000000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_85;
    }
  }

  else if ((*&v10 & 0x40000000000) == 0)
  {
    goto LABEL_26;
  }

  *(v11 + 59) = self->_tcCountFlowDispositionTCBKSYS;
  *(v11 + 36) |= 0x40000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x20000000000) == 0)
  {
LABEL_27:
    if ((*&v10 & 0x200000000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_86;
  }

LABEL_85:
  *(v11 + 58) = self->_tcCountFlowDispositionTCBK;
  *(v11 + 36) |= 0x20000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x200000000000) == 0)
  {
LABEL_28:
    if ((*&v10 & 0x100000000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_87;
  }

LABEL_86:
  *(v11 + 62) = self->_tcCountFlowDispositionTCRD;
  *(v11 + 36) |= 0x200000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x100000000000) == 0)
  {
LABEL_29:
    if ((*&v10 & 0x10000000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_88;
  }

LABEL_87:
  *(v11 + 61) = self->_tcCountFlowDispositionTCOAM;
  *(v11 + 36) |= 0x100000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x10000000000) == 0)
  {
LABEL_30:
    if ((*&v10 & 0x400000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_89;
  }

LABEL_88:
  *(v11 + 57) = self->_tcCountFlowDispositionTCAV;
  *(v11 + 36) |= 0x10000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x400000000000) == 0)
  {
LABEL_31:
    if ((*&v10 & 0x800000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_90;
  }

LABEL_89:
  *(v11 + 63) = self->_tcCountFlowDispositionTCRV;
  *(v11 + 36) |= 0x400000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x800000000000) == 0)
  {
LABEL_32:
    if ((*&v10 & 0x1000000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_91;
  }

LABEL_90:
  *(v11 + 64) = self->_tcCountFlowDispositionTCVI;
  *(v11 + 36) |= 0x800000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x1000000000000) == 0)
  {
LABEL_33:
    if ((*&v10 & 0x80000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_92;
  }

LABEL_91:
  *(v11 + 65) = self->_tcCountFlowDispositionTCVO;
  *(v11 + 36) |= 0x1000000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x80000000000) == 0)
  {
LABEL_34:
    if ((*&v10 & 0x8000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_93;
  }

LABEL_92:
  *(v11 + 60) = self->_tcCountFlowDispositionTCCTL;
  *(v11 + 36) |= 0x80000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x8000000) == 0)
  {
LABEL_35:
    if ((*&v10 & 0x4000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_94;
  }

LABEL_93:
  *(v11 + 44) = self->_tcCountFlowDispositionLARGEUL;
  *(v11 + 36) |= 0x8000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x4000000) == 0)
  {
LABEL_36:
    if ((*&v10 & 0x2000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_95;
  }

LABEL_94:
  *(v11 + 43) = self->_tcCountFlowDispositionLARGEDL;
  *(v11 + 36) |= 0x4000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x2000000) == 0)
  {
LABEL_37:
    if ((*&v10 & 0x80000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_96;
  }

LABEL_95:
  *(v11 + 42) = self->_tcCountFlowDispositionLARGE;
  *(v11 + 36) |= 0x2000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x80000) == 0)
  {
LABEL_38:
    if ((*&v10 & 0x2000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_97;
  }

LABEL_96:
  *(v11 + 36) = self->_tcCountFlowDispositionBURST;
  *(v11 + 36) |= 0x80000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x2000000000) == 0)
  {
LABEL_39:
    if ((*&v10 & 0x400000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_98;
  }

LABEL_97:
  *(v11 + 54) = self->_tcCountFlowDispositionSIRI;
  *(v11 + 36) |= 0x2000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x400000000) == 0)
  {
LABEL_40:
    if ((*&v10 & 0x1000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_99;
  }

LABEL_98:
  *(v11 + 51) = self->_tcCountFlowDispositionPUSH;
  *(v11 + 36) |= 0x400000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x1000000) == 0)
  {
LABEL_41:
    if ((*&v10 & 0x2000000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_100;
  }

LABEL_99:
  *(v11 + 41) = self->_tcCountFlowDispositionKNOWNOTHER;
  *(v11 + 36) |= 0x1000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x2000000000000) == 0)
  {
LABEL_42:
    if ((*&v10 & 0x200000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_101;
  }

LABEL_100:
  *(v11 + 66) = self->_tcCountFlowDispositionUNKNOWNOTHER;
  *(v11 + 36) |= 0x2000000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x200000) == 0)
  {
LABEL_43:
    if ((*&v10 & 0x100000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_102;
  }

LABEL_101:
  *(v11 + 38) = self->_tcCountFlowDispositionDrop;
  *(v11 + 36) |= 0x200000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x100000) == 0)
  {
LABEL_44:
    if ((*&v10 & 0x40000000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_103;
  }

LABEL_102:
  *(v11 + 37) = self->_tcCountFlowDispositionDefault;
  *(v11 + 36) |= 0x100000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x40000000000000) == 0)
  {
LABEL_45:
    if ((*&v10 & 0x20000000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_104;
  }

LABEL_103:
  *(v11 + 71) = self->_tcUpdates;
  *(v11 + 36) |= 0x40000000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x20000000000000) == 0)
  {
LABEL_46:
    if ((*&v10 & 0x400000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_105;
  }

LABEL_104:
  *(v11 + 70) = self->_tcDampeningSuppressed;
  *(v11 + 36) |= 0x20000000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x400000) == 0)
  {
LABEL_47:
    if ((*&v10 & 0x800000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_106;
  }

LABEL_105:
  *(v11 + 39) = self->_tcCountFlowDispositionFGFacetime;
  *(v11 + 36) |= 0x400000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x800000) == 0)
  {
LABEL_48:
    if ((*&v10 & 0x10000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_107;
  }

LABEL_106:
  *(v11 + 40) = self->_tcCountFlowDispositionFGIMSG;
  *(v11 + 36) |= 0x800000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x10000000) == 0)
  {
LABEL_49:
    if ((*&v10 & 0x20000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_108;
  }

LABEL_107:
  *(v11 + 45) = self->_tcCountFlowDispositionMail;
  *(v11 + 36) |= 0x10000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x20000000) == 0)
  {
LABEL_50:
    if ((*&v10 & 0x40000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_109;
  }

LABEL_108:
  *(v11 + 46) = self->_tcCountFlowDispositionMaps;
  *(v11 + 36) |= 0x20000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x40000000) == 0)
  {
LABEL_51:
    if ((*&v10 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_110;
  }

LABEL_109:
  *(v11 + 47) = self->_tcCountFlowDispositionMediaserverd;
  *(v11 + 36) |= 0x40000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x80000000) == 0)
  {
LABEL_52:
    if ((*&v10 & 0x100000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_111;
  }

LABEL_110:
  *(v11 + 48) = self->_tcCountFlowDispositionMusic;
  *(v11 + 36) |= 0x80000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x100000000) == 0)
  {
LABEL_53:
    if ((*&v10 & 0x200000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_112;
  }

LABEL_111:
  *(v11 + 49) = self->_tcCountFlowDispositionNSURLSessiond;
  *(v11 + 36) |= 0x100000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x200000000) == 0)
  {
LABEL_54:
    if ((*&v10 & 0x800000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_113;
  }

LABEL_112:
  *(v11 + 50) = self->_tcCountFlowDispositionNews;
  *(v11 + 36) |= 0x200000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x800000000) == 0)
  {
LABEL_55:
    if ((*&v10 & 0x1000000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_114;
  }

LABEL_113:
  *(v11 + 52) = self->_tcCountFlowDispositionPodcasts;
  *(v11 + 36) |= 0x800000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x1000000000) == 0)
  {
LABEL_56:
    if ((*&v10 & 0x8000000000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_115;
  }

LABEL_114:
  *(v11 + 53) = self->_tcCountFlowDispositionRTCReportingd;
  *(v11 + 36) |= 0x1000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x8000000000000) == 0)
  {
LABEL_57:
    if ((*&v10 & 0x10000000000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_116;
  }

LABEL_115:
  *(v11 + 68) = self->_tcCountFlowDispositionWeather;
  *(v11 + 36) |= 0x8000000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x10000000000000) == 0)
  {
LABEL_58:
    if ((*&v10 & 0x200) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_117;
  }

LABEL_116:
  *(v11 + 69) = self->_tcCountFlowDispositionWebkit;
  *(v11 + 36) |= 0x10000000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x200) == 0)
  {
LABEL_59:
    if ((*&v10 & 0x4000000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_118;
  }

LABEL_117:
  *(v11 + 10) = self->_periodDurationTCEnabledUsecs;
  *(v11 + 36) |= 0x200uLL;
  v10 = self->_has;
  if ((*&v10 & 0x4000000000) == 0)
  {
LABEL_60:
    if ((*&v10 & 0x8000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

LABEL_118:
  *(v11 + 55) = self->_tcCountFlowDispositionSafari;
  *(v11 + 36) |= 0x4000000000uLL;
  if ((*&self->_has & 0x8000000000) != 0)
  {
LABEL_61:
    *(v11 + 56) = self->_tcCountFlowDispositionStocks;
    *(v11 + 36) |= 0x8000000000uLL;
  }

LABEL_62:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((*&has & 0x800) != 0)
  {
    *(v5 + 96) = self->_timestamp;
    *(v5 + 288) |= 0x800uLL;
    has = self->_has;
    if ((*&has & 0x40000) == 0)
    {
LABEL_3:
      if ((*&has & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_68;
    }
  }

  else if ((*&has & 0x40000) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 140) = self->_periodType;
  *(v5 + 288) |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_4:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(v5 + 120) = self->_anyListener;
  *(v5 + 288) |= 0x2000uLL;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_5:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(v5 + 124) = self->_backgroundListeners;
  *(v5 + 288) |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_6:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(v5 + 88) = self->_periodDurationUsecs;
  *(v5 + 288) |= 0x400uLL;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_7:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(v5 + 56) = self->_lastDisconnectedSecs;
  *(v5 + 288) |= 0x40uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_8:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(v5 + 136) = self->_ingressLQM;
  *(v5 + 288) |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_9:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(v5 + 128) = self->_countLQMTransitions;
  *(v5 + 288) |= 0x8000uLL;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_10:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(v5 + 132) = self->_egressLQM;
  *(v5 + 288) |= 0x10000uLL;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_11:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(v5 + 48) = self->_ingressUlThroughputBps;
  *(v5 + 288) |= 0x20uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_12:
    if ((*&has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(v5 + 40) = self->_ingressDlThroughputBps;
  *(v5 + 288) |= 0x10uLL;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_13:
    if ((*&has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(v5 + 32) = self->_egressUlThroughputBps;
  *(v5 + 288) |= 8uLL;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_14:
    if ((*&has & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(v5 + 24) = self->_egressDlThroughputBps;
  *(v5 + 288) |= 4uLL;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_15:
    if ((*&has & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(v5 + 8) = self->_bytesIn;
  *(v5 + 288) |= 1uLL;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_16:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(v5 + 16) = self->_bytesOut;
  *(v5 + 288) |= 2uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_17:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_82;
  }

LABEL_81:
  *(v5 + 64) = self->_packetsIn;
  *(v5 + 288) |= 0x80uLL;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_18:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_82:
  *(v5 + 72) = self->_packetsOut;
  *(v5 + 288) |= 0x100uLL;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_19:
    *(v5 + 104) = self->_uniqueActiveAppCount;
    *(v5 + 288) |= 0x1000uLL;
  }

LABEL_20:
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_activeNameDuringPeriods;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v18 + 1) + 8 * v12) copyWithZone:{zone, v18}];
        [v6 addActiveNameDuringPeriod:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v14 = self->_has;
  if ((*&v14 & 0x4000000000000) != 0)
  {
    *(v6 + 268) = self->_tcCountFlowDispositionUndefined;
    *(v6 + 288) |= 0x4000000000000uLL;
    v14 = self->_has;
    if ((*&v14 & 0x40000000000) == 0)
    {
LABEL_29:
      if ((*&v14 & 0x20000000000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_86;
    }
  }

  else if ((*&v14 & 0x40000000000) == 0)
  {
    goto LABEL_29;
  }

  *(v6 + 236) = self->_tcCountFlowDispositionTCBKSYS;
  *(v6 + 288) |= 0x40000000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x20000000000) == 0)
  {
LABEL_30:
    if ((*&v14 & 0x200000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_87;
  }

LABEL_86:
  *(v6 + 232) = self->_tcCountFlowDispositionTCBK;
  *(v6 + 288) |= 0x20000000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x200000000000) == 0)
  {
LABEL_31:
    if ((*&v14 & 0x100000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_88;
  }

LABEL_87:
  *(v6 + 248) = self->_tcCountFlowDispositionTCRD;
  *(v6 + 288) |= 0x200000000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x100000000000) == 0)
  {
LABEL_32:
    if ((*&v14 & 0x10000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_89;
  }

LABEL_88:
  *(v6 + 244) = self->_tcCountFlowDispositionTCOAM;
  *(v6 + 288) |= 0x100000000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x10000000000) == 0)
  {
LABEL_33:
    if ((*&v14 & 0x400000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_90;
  }

LABEL_89:
  *(v6 + 228) = self->_tcCountFlowDispositionTCAV;
  *(v6 + 288) |= 0x10000000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x400000000000) == 0)
  {
LABEL_34:
    if ((*&v14 & 0x800000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_91;
  }

LABEL_90:
  *(v6 + 252) = self->_tcCountFlowDispositionTCRV;
  *(v6 + 288) |= 0x400000000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x800000000000) == 0)
  {
LABEL_35:
    if ((*&v14 & 0x1000000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_92;
  }

LABEL_91:
  *(v6 + 256) = self->_tcCountFlowDispositionTCVI;
  *(v6 + 288) |= 0x800000000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x1000000000000) == 0)
  {
LABEL_36:
    if ((*&v14 & 0x80000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_93;
  }

LABEL_92:
  *(v6 + 260) = self->_tcCountFlowDispositionTCVO;
  *(v6 + 288) |= 0x1000000000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x80000000000) == 0)
  {
LABEL_37:
    if ((*&v14 & 0x8000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_94;
  }

LABEL_93:
  *(v6 + 240) = self->_tcCountFlowDispositionTCCTL;
  *(v6 + 288) |= 0x80000000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x8000000) == 0)
  {
LABEL_38:
    if ((*&v14 & 0x4000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_95;
  }

LABEL_94:
  *(v6 + 176) = self->_tcCountFlowDispositionLARGEUL;
  *(v6 + 288) |= 0x8000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x4000000) == 0)
  {
LABEL_39:
    if ((*&v14 & 0x2000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_96;
  }

LABEL_95:
  *(v6 + 172) = self->_tcCountFlowDispositionLARGEDL;
  *(v6 + 288) |= 0x4000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x2000000) == 0)
  {
LABEL_40:
    if ((*&v14 & 0x80000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_97;
  }

LABEL_96:
  *(v6 + 168) = self->_tcCountFlowDispositionLARGE;
  *(v6 + 288) |= 0x2000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x80000) == 0)
  {
LABEL_41:
    if ((*&v14 & 0x2000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_98;
  }

LABEL_97:
  *(v6 + 144) = self->_tcCountFlowDispositionBURST;
  *(v6 + 288) |= 0x80000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x2000000000) == 0)
  {
LABEL_42:
    if ((*&v14 & 0x400000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_99;
  }

LABEL_98:
  *(v6 + 216) = self->_tcCountFlowDispositionSIRI;
  *(v6 + 288) |= 0x2000000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x400000000) == 0)
  {
LABEL_43:
    if ((*&v14 & 0x1000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_100;
  }

LABEL_99:
  *(v6 + 204) = self->_tcCountFlowDispositionPUSH;
  *(v6 + 288) |= 0x400000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x1000000) == 0)
  {
LABEL_44:
    if ((*&v14 & 0x2000000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_101;
  }

LABEL_100:
  *(v6 + 164) = self->_tcCountFlowDispositionKNOWNOTHER;
  *(v6 + 288) |= 0x1000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x2000000000000) == 0)
  {
LABEL_45:
    if ((*&v14 & 0x200000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_102;
  }

LABEL_101:
  *(v6 + 264) = self->_tcCountFlowDispositionUNKNOWNOTHER;
  *(v6 + 288) |= 0x2000000000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x200000) == 0)
  {
LABEL_46:
    if ((*&v14 & 0x100000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_103;
  }

LABEL_102:
  *(v6 + 152) = self->_tcCountFlowDispositionDrop;
  *(v6 + 288) |= 0x200000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x100000) == 0)
  {
LABEL_47:
    if ((*&v14 & 0x40000000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_104;
  }

LABEL_103:
  *(v6 + 148) = self->_tcCountFlowDispositionDefault;
  *(v6 + 288) |= 0x100000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x40000000000000) == 0)
  {
LABEL_48:
    if ((*&v14 & 0x20000000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_105;
  }

LABEL_104:
  *(v6 + 284) = self->_tcUpdates;
  *(v6 + 288) |= 0x40000000000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x20000000000000) == 0)
  {
LABEL_49:
    if ((*&v14 & 0x400000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_106;
  }

LABEL_105:
  *(v6 + 280) = self->_tcDampeningSuppressed;
  *(v6 + 288) |= 0x20000000000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x400000) == 0)
  {
LABEL_50:
    if ((*&v14 & 0x800000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_107;
  }

LABEL_106:
  *(v6 + 156) = self->_tcCountFlowDispositionFGFacetime;
  *(v6 + 288) |= 0x400000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x800000) == 0)
  {
LABEL_51:
    if ((*&v14 & 0x10000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_108;
  }

LABEL_107:
  *(v6 + 160) = self->_tcCountFlowDispositionFGIMSG;
  *(v6 + 288) |= 0x800000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x10000000) == 0)
  {
LABEL_52:
    if ((*&v14 & 0x20000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_109;
  }

LABEL_108:
  *(v6 + 180) = self->_tcCountFlowDispositionMail;
  *(v6 + 288) |= 0x10000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x20000000) == 0)
  {
LABEL_53:
    if ((*&v14 & 0x40000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_110;
  }

LABEL_109:
  *(v6 + 184) = self->_tcCountFlowDispositionMaps;
  *(v6 + 288) |= 0x20000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x40000000) == 0)
  {
LABEL_54:
    if ((*&v14 & 0x80000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_111;
  }

LABEL_110:
  *(v6 + 188) = self->_tcCountFlowDispositionMediaserverd;
  *(v6 + 288) |= 0x40000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x80000000) == 0)
  {
LABEL_55:
    if ((*&v14 & 0x100000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_112;
  }

LABEL_111:
  *(v6 + 192) = self->_tcCountFlowDispositionMusic;
  *(v6 + 288) |= 0x80000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x100000000) == 0)
  {
LABEL_56:
    if ((*&v14 & 0x200000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_113;
  }

LABEL_112:
  *(v6 + 196) = self->_tcCountFlowDispositionNSURLSessiond;
  *(v6 + 288) |= 0x100000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x200000000) == 0)
  {
LABEL_57:
    if ((*&v14 & 0x800000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_114;
  }

LABEL_113:
  *(v6 + 200) = self->_tcCountFlowDispositionNews;
  *(v6 + 288) |= 0x200000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x800000000) == 0)
  {
LABEL_58:
    if ((*&v14 & 0x1000000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_115;
  }

LABEL_114:
  *(v6 + 208) = self->_tcCountFlowDispositionPodcasts;
  *(v6 + 288) |= 0x800000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x1000000000) == 0)
  {
LABEL_59:
    if ((*&v14 & 0x8000000000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_116;
  }

LABEL_115:
  *(v6 + 212) = self->_tcCountFlowDispositionRTCReportingd;
  *(v6 + 288) |= 0x1000000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x8000000000000) == 0)
  {
LABEL_60:
    if ((*&v14 & 0x10000000000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_117;
  }

LABEL_116:
  *(v6 + 272) = self->_tcCountFlowDispositionWeather;
  *(v6 + 288) |= 0x8000000000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x10000000000000) == 0)
  {
LABEL_61:
    if ((*&v14 & 0x200) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_118;
  }

LABEL_117:
  *(v6 + 276) = self->_tcCountFlowDispositionWebkit;
  *(v6 + 288) |= 0x10000000000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x200) == 0)
  {
LABEL_62:
    if ((*&v14 & 0x4000000000) == 0)
    {
      goto LABEL_63;
    }

LABEL_119:
    *(v6 + 220) = self->_tcCountFlowDispositionSafari;
    *(v6 + 288) |= 0x4000000000uLL;
    if ((*&self->_has & 0x8000000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

LABEL_118:
  *(v6 + 80) = self->_periodDurationTCEnabledUsecs;
  *(v6 + 288) |= 0x200uLL;
  v14 = self->_has;
  if ((*&v14 & 0x4000000000) != 0)
  {
    goto LABEL_119;
  }

LABEL_63:
  if ((*&v14 & 0x8000000000) != 0)
  {
LABEL_64:
    *(v6 + 224) = self->_tcCountFlowDispositionStocks;
    *(v6 + 288) |= 0x8000000000uLL;
  }

LABEL_65:
  v15 = v6;

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_280;
  }

  has = self->_has;
  v6 = *(equalCopy + 36);
  if ((*&has & 0x800) != 0)
  {
    if ((v6 & 0x800) == 0 || self->_timestamp != *(equalCopy + 12))
    {
      goto LABEL_280;
    }
  }

  else if ((v6 & 0x800) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v6 & 0x40000) == 0 || self->_periodType != *(equalCopy + 35))
    {
      goto LABEL_280;
    }
  }

  else if ((v6 & 0x40000) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v6 & 0x2000) == 0 || self->_anyListener != *(equalCopy + 30))
    {
      goto LABEL_280;
    }
  }

  else if ((v6 & 0x2000) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v6 & 0x4000) == 0 || self->_backgroundListeners != *(equalCopy + 31))
    {
      goto LABEL_280;
    }
  }

  else if ((v6 & 0x4000) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_periodDurationUsecs != *(equalCopy + 11))
    {
      goto LABEL_280;
    }
  }

  else if ((v6 & 0x400) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_lastDisconnectedSecs != *(equalCopy + 7))
    {
      goto LABEL_280;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v6 & 0x20000) == 0 || self->_ingressLQM != *(equalCopy + 34))
    {
      goto LABEL_280;
    }
  }

  else if ((v6 & 0x20000) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v6 & 0x8000) == 0 || self->_countLQMTransitions != *(equalCopy + 32))
    {
      goto LABEL_280;
    }
  }

  else if ((v6 & 0x8000) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v6 & 0x10000) == 0 || self->_egressLQM != *(equalCopy + 33))
    {
      goto LABEL_280;
    }
  }

  else if ((v6 & 0x10000) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_ingressUlThroughputBps != *(equalCopy + 6))
    {
      goto LABEL_280;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_ingressDlThroughputBps != *(equalCopy + 5))
    {
      goto LABEL_280;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_egressUlThroughputBps != *(equalCopy + 4))
    {
      goto LABEL_280;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_egressDlThroughputBps != *(equalCopy + 3))
    {
      goto LABEL_280;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_280;
  }

  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_bytesIn != *(equalCopy + 1))
    {
      goto LABEL_280;
    }
  }

  else if (v6)
  {
    goto LABEL_280;
  }

  if ((*&has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_bytesOut != *(equalCopy + 2))
    {
      goto LABEL_280;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_packetsIn != *(equalCopy + 8))
    {
      goto LABEL_280;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v6 & 0x100) == 0 || self->_packetsOut != *(equalCopy + 9))
    {
      goto LABEL_280;
    }
  }

  else if ((v6 & 0x100) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v6 & 0x1000) == 0 || self->_uniqueActiveAppCount != *(equalCopy + 13))
    {
      goto LABEL_280;
    }
  }

  else if ((v6 & 0x1000) != 0)
  {
    goto LABEL_280;
  }

  activeNameDuringPeriods = self->_activeNameDuringPeriods;
  if (activeNameDuringPeriods | *(equalCopy + 14))
  {
    if (![(NSMutableArray *)activeNameDuringPeriods isEqual:?])
    {
      goto LABEL_280;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 36);
  if ((*&has & 0x4000000000000) != 0)
  {
    if ((v8 & 0x4000000000000) == 0 || self->_tcCountFlowDispositionUndefined != *(equalCopy + 67))
    {
      goto LABEL_280;
    }
  }

  else if ((v8 & 0x4000000000000) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x40000000000) != 0)
  {
    if ((v8 & 0x40000000000) == 0 || self->_tcCountFlowDispositionTCBKSYS != *(equalCopy + 59))
    {
      goto LABEL_280;
    }
  }

  else if ((v8 & 0x40000000000) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x20000000000) != 0)
  {
    if ((v8 & 0x20000000000) == 0 || self->_tcCountFlowDispositionTCBK != *(equalCopy + 58))
    {
      goto LABEL_280;
    }
  }

  else if ((v8 & 0x20000000000) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x200000000000) != 0)
  {
    if ((v8 & 0x200000000000) == 0 || self->_tcCountFlowDispositionTCRD != *(equalCopy + 62))
    {
      goto LABEL_280;
    }
  }

  else if ((v8 & 0x200000000000) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x100000000000) != 0)
  {
    if ((v8 & 0x100000000000) == 0 || self->_tcCountFlowDispositionTCOAM != *(equalCopy + 61))
    {
      goto LABEL_280;
    }
  }

  else if ((v8 & 0x100000000000) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x10000000000) != 0)
  {
    if ((v8 & 0x10000000000) == 0 || self->_tcCountFlowDispositionTCAV != *(equalCopy + 57))
    {
      goto LABEL_280;
    }
  }

  else if ((v8 & 0x10000000000) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x400000000000) != 0)
  {
    if ((v8 & 0x400000000000) == 0 || self->_tcCountFlowDispositionTCRV != *(equalCopy + 63))
    {
      goto LABEL_280;
    }
  }

  else if ((v8 & 0x400000000000) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x800000000000) != 0)
  {
    if ((v8 & 0x800000000000) == 0 || self->_tcCountFlowDispositionTCVI != *(equalCopy + 64))
    {
      goto LABEL_280;
    }
  }

  else if ((v8 & 0x800000000000) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x1000000000000) != 0)
  {
    if ((v8 & 0x1000000000000) == 0 || self->_tcCountFlowDispositionTCVO != *(equalCopy + 65))
    {
      goto LABEL_280;
    }
  }

  else if ((v8 & 0x1000000000000) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x80000000000) != 0)
  {
    if ((v8 & 0x80000000000) == 0 || self->_tcCountFlowDispositionTCCTL != *(equalCopy + 60))
    {
      goto LABEL_280;
    }
  }

  else if ((v8 & 0x80000000000) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x8000000) != 0)
  {
    if ((v8 & 0x8000000) == 0 || self->_tcCountFlowDispositionLARGEUL != *(equalCopy + 44))
    {
      goto LABEL_280;
    }
  }

  else if ((v8 & 0x8000000) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x4000000) != 0)
  {
    if ((v8 & 0x4000000) == 0 || self->_tcCountFlowDispositionLARGEDL != *(equalCopy + 43))
    {
      goto LABEL_280;
    }
  }

  else if ((v8 & 0x4000000) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x2000000) != 0)
  {
    if ((v8 & 0x2000000) == 0 || self->_tcCountFlowDispositionLARGE != *(equalCopy + 42))
    {
      goto LABEL_280;
    }
  }

  else if ((v8 & 0x2000000) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v8 & 0x80000) == 0 || self->_tcCountFlowDispositionBURST != *(equalCopy + 36))
    {
      goto LABEL_280;
    }
  }

  else if ((v8 & 0x80000) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x2000000000) != 0)
  {
    if ((v8 & 0x2000000000) == 0 || self->_tcCountFlowDispositionSIRI != *(equalCopy + 54))
    {
      goto LABEL_280;
    }
  }

  else if ((v8 & 0x2000000000) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x400000000) != 0)
  {
    if ((v8 & 0x400000000) == 0 || self->_tcCountFlowDispositionPUSH != *(equalCopy + 51))
    {
      goto LABEL_280;
    }
  }

  else if ((v8 & 0x400000000) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x1000000) != 0)
  {
    if ((v8 & 0x1000000) == 0 || self->_tcCountFlowDispositionKNOWNOTHER != *(equalCopy + 41))
    {
      goto LABEL_280;
    }
  }

  else if ((v8 & 0x1000000) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x2000000000000) != 0)
  {
    if ((v8 & 0x2000000000000) == 0 || self->_tcCountFlowDispositionUNKNOWNOTHER != *(equalCopy + 66))
    {
      goto LABEL_280;
    }
  }

  else if ((v8 & 0x2000000000000) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v8 & 0x200000) == 0 || self->_tcCountFlowDispositionDrop != *(equalCopy + 38))
    {
      goto LABEL_280;
    }
  }

  else if ((v8 & 0x200000) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v8 & 0x100000) == 0 || self->_tcCountFlowDispositionDefault != *(equalCopy + 37))
    {
      goto LABEL_280;
    }
  }

  else if ((v8 & 0x100000) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x40000000000000) != 0)
  {
    if ((v8 & 0x40000000000000) == 0 || self->_tcUpdates != *(equalCopy + 71))
    {
      goto LABEL_280;
    }
  }

  else if ((v8 & 0x40000000000000) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x20000000000000) != 0)
  {
    if ((v8 & 0x20000000000000) == 0 || self->_tcDampeningSuppressed != *(equalCopy + 70))
    {
      goto LABEL_280;
    }
  }

  else if ((v8 & 0x20000000000000) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v8 & 0x400000) == 0 || self->_tcCountFlowDispositionFGFacetime != *(equalCopy + 39))
    {
      goto LABEL_280;
    }
  }

  else if ((v8 & 0x400000) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v8 & 0x800000) == 0 || self->_tcCountFlowDispositionFGIMSG != *(equalCopy + 40))
    {
      goto LABEL_280;
    }
  }

  else if ((v8 & 0x800000) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x10000000) != 0)
  {
    if ((v8 & 0x10000000) == 0 || self->_tcCountFlowDispositionMail != *(equalCopy + 45))
    {
      goto LABEL_280;
    }
  }

  else if ((v8 & 0x10000000) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x20000000) != 0)
  {
    if ((v8 & 0x20000000) == 0 || self->_tcCountFlowDispositionMaps != *(equalCopy + 46))
    {
      goto LABEL_280;
    }
  }

  else if ((v8 & 0x20000000) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x40000000) != 0)
  {
    if ((v8 & 0x40000000) == 0 || self->_tcCountFlowDispositionMediaserverd != *(equalCopy + 47))
    {
      goto LABEL_280;
    }
  }

  else if ((v8 & 0x40000000) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x80000000) != 0)
  {
    if ((v8 & 0x80000000) == 0 || self->_tcCountFlowDispositionMusic != *(equalCopy + 48))
    {
      goto LABEL_280;
    }
  }

  else if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x100000000) != 0)
  {
    if ((v8 & 0x100000000) == 0 || self->_tcCountFlowDispositionNSURLSessiond != *(equalCopy + 49))
    {
      goto LABEL_280;
    }
  }

  else if ((v8 & 0x100000000) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x200000000) != 0)
  {
    if ((v8 & 0x200000000) == 0 || self->_tcCountFlowDispositionNews != *(equalCopy + 50))
    {
      goto LABEL_280;
    }
  }

  else if ((v8 & 0x200000000) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x800000000) != 0)
  {
    if ((v8 & 0x800000000) == 0 || self->_tcCountFlowDispositionPodcasts != *(equalCopy + 52))
    {
      goto LABEL_280;
    }
  }

  else if ((v8 & 0x800000000) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x1000000000) != 0)
  {
    if ((v8 & 0x1000000000) == 0 || self->_tcCountFlowDispositionRTCReportingd != *(equalCopy + 53))
    {
      goto LABEL_280;
    }
  }

  else if ((v8 & 0x1000000000) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x8000000000000) != 0)
  {
    if ((v8 & 0x8000000000000) == 0 || self->_tcCountFlowDispositionWeather != *(equalCopy + 68))
    {
      goto LABEL_280;
    }
  }

  else if ((v8 & 0x8000000000000) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x10000000000000) != 0)
  {
    if ((v8 & 0x10000000000000) == 0 || self->_tcCountFlowDispositionWebkit != *(equalCopy + 69))
    {
      goto LABEL_280;
    }
  }

  else if ((v8 & 0x10000000000000) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v8 & 0x200) == 0 || self->_periodDurationTCEnabledUsecs != *(equalCopy + 10))
    {
      goto LABEL_280;
    }
  }

  else if ((v8 & 0x200) != 0)
  {
    goto LABEL_280;
  }

  if ((*&has & 0x4000000000) == 0)
  {
    if ((v8 & 0x4000000000) == 0)
    {
      goto LABEL_275;
    }

LABEL_280:
    v9 = 0;
    goto LABEL_281;
  }

  if ((v8 & 0x4000000000) == 0 || self->_tcCountFlowDispositionSafari != *(equalCopy + 55))
  {
    goto LABEL_280;
  }

LABEL_275:
  if ((*&has & 0x8000000000) != 0)
  {
    if ((v8 & 0x8000000000) == 0 || self->_tcCountFlowDispositionStocks != *(equalCopy + 56))
    {
      goto LABEL_280;
    }

    v9 = 1;
  }

  else
  {
    v9 = (v8 & 0x8000000000) == 0;
  }

LABEL_281:

  return v9;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 0x800) != 0)
  {
    v61 = 2654435761u * self->_timestamp;
    if ((*&has & 0x40000) != 0)
    {
LABEL_3:
      v60 = 2654435761 * self->_periodType;
      if ((*&has & 0x2000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v61 = 0;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_3;
    }
  }

  v60 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_4:
    v59 = 2654435761 * self->_anyListener;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  v59 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_5:
    v58 = 2654435761 * self->_backgroundListeners;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  v58 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_6:
    v57 = 2654435761u * self->_periodDurationUsecs;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  v57 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_7:
    v56 = 2654435761u * self->_lastDisconnectedSecs;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  v56 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_8:
    v55 = 2654435761 * self->_ingressLQM;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  v55 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_9:
    v54 = 2654435761 * self->_countLQMTransitions;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  v54 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_10:
    v53 = 2654435761 * self->_egressLQM;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  v53 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_11:
    v52 = 2654435761u * self->_ingressUlThroughputBps;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  v52 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_12:
    v51 = 2654435761u * self->_ingressDlThroughputBps;
    if ((*&has & 8) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  v51 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_13:
    v50 = 2654435761u * self->_egressUlThroughputBps;
    if ((*&has & 4) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  v50 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_14:
    v49 = 2654435761u * self->_egressDlThroughputBps;
    if (*&has)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  v49 = 0;
  if (*&has)
  {
LABEL_15:
    v48 = 2654435761u * self->_bytesIn;
    if ((*&has & 2) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  v48 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_16:
    v47 = 2654435761u * self->_bytesOut;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  v47 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_17:
    v46 = 2654435761u * self->_packetsIn;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_18;
    }

LABEL_36:
    v45 = 0;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_37;
  }

LABEL_35:
  v46 = 0;
  if ((*&has & 0x100) == 0)
  {
    goto LABEL_36;
  }

LABEL_18:
  v45 = 2654435761u * self->_packetsOut;
  if ((*&has & 0x1000) != 0)
  {
LABEL_19:
    v44 = 2654435761u * self->_uniqueActiveAppCount;
    goto LABEL_38;
  }

LABEL_37:
  v44 = 0;
LABEL_38:
  v43 = [(NSMutableArray *)self->_activeNameDuringPeriods hash];
  v4 = self->_has;
  if ((*&v4 & 0x4000000000000) != 0)
  {
    v42 = 2654435761 * self->_tcCountFlowDispositionUndefined;
    if ((*&v4 & 0x40000000000) != 0)
    {
LABEL_40:
      v41 = 2654435761 * self->_tcCountFlowDispositionTCBKSYS;
      if ((*&v4 & 0x20000000000) != 0)
      {
        goto LABEL_41;
      }

      goto LABEL_78;
    }
  }

  else
  {
    v42 = 0;
    if ((*&v4 & 0x40000000000) != 0)
    {
      goto LABEL_40;
    }
  }

  v41 = 0;
  if ((*&v4 & 0x20000000000) != 0)
  {
LABEL_41:
    v40 = 2654435761 * self->_tcCountFlowDispositionTCBK;
    if ((*&v4 & 0x200000000000) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_79;
  }

LABEL_78:
  v40 = 0;
  if ((*&v4 & 0x200000000000) != 0)
  {
LABEL_42:
    v39 = 2654435761 * self->_tcCountFlowDispositionTCRD;
    if ((*&v4 & 0x100000000000) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_80;
  }

LABEL_79:
  v39 = 0;
  if ((*&v4 & 0x100000000000) != 0)
  {
LABEL_43:
    v38 = 2654435761 * self->_tcCountFlowDispositionTCOAM;
    if ((*&v4 & 0x10000000000) != 0)
    {
      goto LABEL_44;
    }

    goto LABEL_81;
  }

LABEL_80:
  v38 = 0;
  if ((*&v4 & 0x10000000000) != 0)
  {
LABEL_44:
    v37 = 2654435761 * self->_tcCountFlowDispositionTCAV;
    if ((*&v4 & 0x400000000000) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_82;
  }

LABEL_81:
  v37 = 0;
  if ((*&v4 & 0x400000000000) != 0)
  {
LABEL_45:
    v36 = 2654435761 * self->_tcCountFlowDispositionTCRV;
    if ((*&v4 & 0x800000000000) != 0)
    {
      goto LABEL_46;
    }

    goto LABEL_83;
  }

LABEL_82:
  v36 = 0;
  if ((*&v4 & 0x800000000000) != 0)
  {
LABEL_46:
    v35 = 2654435761 * self->_tcCountFlowDispositionTCVI;
    if ((*&v4 & 0x1000000000000) != 0)
    {
      goto LABEL_47;
    }

    goto LABEL_84;
  }

LABEL_83:
  v35 = 0;
  if ((*&v4 & 0x1000000000000) != 0)
  {
LABEL_47:
    v34 = 2654435761 * self->_tcCountFlowDispositionTCVO;
    if ((*&v4 & 0x80000000000) != 0)
    {
      goto LABEL_48;
    }

    goto LABEL_85;
  }

LABEL_84:
  v34 = 0;
  if ((*&v4 & 0x80000000000) != 0)
  {
LABEL_48:
    v33 = 2654435761 * self->_tcCountFlowDispositionTCCTL;
    if ((*&v4 & 0x8000000) != 0)
    {
      goto LABEL_49;
    }

    goto LABEL_86;
  }

LABEL_85:
  v33 = 0;
  if ((*&v4 & 0x8000000) != 0)
  {
LABEL_49:
    v32 = 2654435761 * self->_tcCountFlowDispositionLARGEUL;
    if ((*&v4 & 0x4000000) != 0)
    {
      goto LABEL_50;
    }

    goto LABEL_87;
  }

LABEL_86:
  v32 = 0;
  if ((*&v4 & 0x4000000) != 0)
  {
LABEL_50:
    v5 = 2654435761 * self->_tcCountFlowDispositionLARGEDL;
    if ((*&v4 & 0x2000000) != 0)
    {
      goto LABEL_51;
    }

    goto LABEL_88;
  }

LABEL_87:
  v5 = 0;
  if ((*&v4 & 0x2000000) != 0)
  {
LABEL_51:
    v6 = 2654435761 * self->_tcCountFlowDispositionLARGE;
    if ((*&v4 & 0x80000) != 0)
    {
      goto LABEL_52;
    }

    goto LABEL_89;
  }

LABEL_88:
  v6 = 0;
  if ((*&v4 & 0x80000) != 0)
  {
LABEL_52:
    v7 = 2654435761 * self->_tcCountFlowDispositionBURST;
    if ((*&v4 & 0x2000000000) != 0)
    {
      goto LABEL_53;
    }

    goto LABEL_90;
  }

LABEL_89:
  v7 = 0;
  if ((*&v4 & 0x2000000000) != 0)
  {
LABEL_53:
    v8 = 2654435761 * self->_tcCountFlowDispositionSIRI;
    if ((*&v4 & 0x400000000) != 0)
    {
      goto LABEL_54;
    }

    goto LABEL_91;
  }

LABEL_90:
  v8 = 0;
  if ((*&v4 & 0x400000000) != 0)
  {
LABEL_54:
    v9 = 2654435761 * self->_tcCountFlowDispositionPUSH;
    if ((*&v4 & 0x1000000) != 0)
    {
      goto LABEL_55;
    }

    goto LABEL_92;
  }

LABEL_91:
  v9 = 0;
  if ((*&v4 & 0x1000000) != 0)
  {
LABEL_55:
    v10 = 2654435761 * self->_tcCountFlowDispositionKNOWNOTHER;
    if ((*&v4 & 0x2000000000000) != 0)
    {
      goto LABEL_56;
    }

    goto LABEL_93;
  }

LABEL_92:
  v10 = 0;
  if ((*&v4 & 0x2000000000000) != 0)
  {
LABEL_56:
    v11 = 2654435761 * self->_tcCountFlowDispositionUNKNOWNOTHER;
    if ((*&v4 & 0x200000) != 0)
    {
      goto LABEL_57;
    }

    goto LABEL_94;
  }

LABEL_93:
  v11 = 0;
  if ((*&v4 & 0x200000) != 0)
  {
LABEL_57:
    v12 = 2654435761 * self->_tcCountFlowDispositionDrop;
    if ((*&v4 & 0x100000) != 0)
    {
      goto LABEL_58;
    }

    goto LABEL_95;
  }

LABEL_94:
  v12 = 0;
  if ((*&v4 & 0x100000) != 0)
  {
LABEL_58:
    v13 = 2654435761 * self->_tcCountFlowDispositionDefault;
    if ((*&v4 & 0x40000000000000) != 0)
    {
      goto LABEL_59;
    }

    goto LABEL_96;
  }

LABEL_95:
  v13 = 0;
  if ((*&v4 & 0x40000000000000) != 0)
  {
LABEL_59:
    v14 = 2654435761 * self->_tcUpdates;
    if ((*&v4 & 0x20000000000000) != 0)
    {
      goto LABEL_60;
    }

    goto LABEL_97;
  }

LABEL_96:
  v14 = 0;
  if ((*&v4 & 0x20000000000000) != 0)
  {
LABEL_60:
    v15 = 2654435761 * self->_tcDampeningSuppressed;
    if ((*&v4 & 0x400000) != 0)
    {
      goto LABEL_61;
    }

    goto LABEL_98;
  }

LABEL_97:
  v15 = 0;
  if ((*&v4 & 0x400000) != 0)
  {
LABEL_61:
    v16 = 2654435761 * self->_tcCountFlowDispositionFGFacetime;
    if ((*&v4 & 0x800000) != 0)
    {
      goto LABEL_62;
    }

    goto LABEL_99;
  }

LABEL_98:
  v16 = 0;
  if ((*&v4 & 0x800000) != 0)
  {
LABEL_62:
    v17 = 2654435761 * self->_tcCountFlowDispositionFGIMSG;
    if ((*&v4 & 0x10000000) != 0)
    {
      goto LABEL_63;
    }

    goto LABEL_100;
  }

LABEL_99:
  v17 = 0;
  if ((*&v4 & 0x10000000) != 0)
  {
LABEL_63:
    v18 = 2654435761 * self->_tcCountFlowDispositionMail;
    if ((*&v4 & 0x20000000) != 0)
    {
      goto LABEL_64;
    }

    goto LABEL_101;
  }

LABEL_100:
  v18 = 0;
  if ((*&v4 & 0x20000000) != 0)
  {
LABEL_64:
    v19 = 2654435761 * self->_tcCountFlowDispositionMaps;
    if ((*&v4 & 0x40000000) != 0)
    {
      goto LABEL_65;
    }

    goto LABEL_102;
  }

LABEL_101:
  v19 = 0;
  if ((*&v4 & 0x40000000) != 0)
  {
LABEL_65:
    v20 = 2654435761 * self->_tcCountFlowDispositionMediaserverd;
    if ((*&v4 & 0x80000000) != 0)
    {
      goto LABEL_66;
    }

    goto LABEL_103;
  }

LABEL_102:
  v20 = 0;
  if ((*&v4 & 0x80000000) != 0)
  {
LABEL_66:
    v21 = 2654435761 * self->_tcCountFlowDispositionMusic;
    if ((*&v4 & 0x100000000) != 0)
    {
      goto LABEL_67;
    }

    goto LABEL_104;
  }

LABEL_103:
  v21 = 0;
  if ((*&v4 & 0x100000000) != 0)
  {
LABEL_67:
    v22 = 2654435761 * self->_tcCountFlowDispositionNSURLSessiond;
    if ((*&v4 & 0x200000000) != 0)
    {
      goto LABEL_68;
    }

    goto LABEL_105;
  }

LABEL_104:
  v22 = 0;
  if ((*&v4 & 0x200000000) != 0)
  {
LABEL_68:
    v23 = 2654435761 * self->_tcCountFlowDispositionNews;
    if ((*&v4 & 0x800000000) != 0)
    {
      goto LABEL_69;
    }

    goto LABEL_106;
  }

LABEL_105:
  v23 = 0;
  if ((*&v4 & 0x800000000) != 0)
  {
LABEL_69:
    v24 = 2654435761 * self->_tcCountFlowDispositionPodcasts;
    if ((*&v4 & 0x1000000000) != 0)
    {
      goto LABEL_70;
    }

    goto LABEL_107;
  }

LABEL_106:
  v24 = 0;
  if ((*&v4 & 0x1000000000) != 0)
  {
LABEL_70:
    v25 = 2654435761 * self->_tcCountFlowDispositionRTCReportingd;
    if ((*&v4 & 0x8000000000000) != 0)
    {
      goto LABEL_71;
    }

    goto LABEL_108;
  }

LABEL_107:
  v25 = 0;
  if ((*&v4 & 0x8000000000000) != 0)
  {
LABEL_71:
    v26 = 2654435761 * self->_tcCountFlowDispositionWeather;
    if ((*&v4 & 0x10000000000000) != 0)
    {
      goto LABEL_72;
    }

    goto LABEL_109;
  }

LABEL_108:
  v26 = 0;
  if ((*&v4 & 0x10000000000000) != 0)
  {
LABEL_72:
    v27 = 2654435761 * self->_tcCountFlowDispositionWebkit;
    if ((*&v4 & 0x200) != 0)
    {
      goto LABEL_73;
    }

    goto LABEL_110;
  }

LABEL_109:
  v27 = 0;
  if ((*&v4 & 0x200) != 0)
  {
LABEL_73:
    v28 = 2654435761u * self->_periodDurationTCEnabledUsecs;
    if ((*&v4 & 0x4000000000) != 0)
    {
      goto LABEL_74;
    }

LABEL_111:
    v29 = 0;
    if ((*&v4 & 0x8000000000) != 0)
    {
      goto LABEL_75;
    }

LABEL_112:
    v30 = 0;
    return v60 ^ v61 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v43 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30;
  }

LABEL_110:
  v28 = 0;
  if ((*&v4 & 0x4000000000) == 0)
  {
    goto LABEL_111;
  }

LABEL_74:
  v29 = 2654435761 * self->_tcCountFlowDispositionSafari;
  if ((*&v4 & 0x8000000000) == 0)
  {
    goto LABEL_112;
  }

LABEL_75:
  v30 = 2654435761 * self->_tcCountFlowDispositionStocks;
  return v60 ^ v61 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v43 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30;
}

- (void)mergeFrom:(id)from
{
  v19 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 36);
  if ((v6 & 0x800) != 0)
  {
    self->_timestamp = *(fromCopy + 12);
    *&self->_has |= 0x800uLL;
    v6 = *(fromCopy + 36);
    if ((v6 & 0x40000) == 0)
    {
LABEL_3:
      if ((v6 & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_68;
    }
  }

  else if ((v6 & 0x40000) == 0)
  {
    goto LABEL_3;
  }

  self->_periodType = *(fromCopy + 35);
  *&self->_has |= 0x40000uLL;
  v6 = *(fromCopy + 36);
  if ((v6 & 0x2000) == 0)
  {
LABEL_4:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_69;
  }

LABEL_68:
  self->_anyListener = *(fromCopy + 30);
  *&self->_has |= 0x2000uLL;
  v6 = *(fromCopy + 36);
  if ((v6 & 0x4000) == 0)
  {
LABEL_5:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_70;
  }

LABEL_69:
  self->_backgroundListeners = *(fromCopy + 31);
  *&self->_has |= 0x4000uLL;
  v6 = *(fromCopy + 36);
  if ((v6 & 0x400) == 0)
  {
LABEL_6:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_71;
  }

LABEL_70:
  self->_periodDurationUsecs = *(fromCopy + 11);
  *&self->_has |= 0x400uLL;
  v6 = *(fromCopy + 36);
  if ((v6 & 0x40) == 0)
  {
LABEL_7:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_72;
  }

LABEL_71:
  self->_lastDisconnectedSecs = *(fromCopy + 7);
  *&self->_has |= 0x40uLL;
  v6 = *(fromCopy + 36);
  if ((v6 & 0x20000) == 0)
  {
LABEL_8:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_73;
  }

LABEL_72:
  self->_ingressLQM = *(fromCopy + 34);
  *&self->_has |= 0x20000uLL;
  v6 = *(fromCopy + 36);
  if ((v6 & 0x8000) == 0)
  {
LABEL_9:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_74;
  }

LABEL_73:
  self->_countLQMTransitions = *(fromCopy + 32);
  *&self->_has |= 0x8000uLL;
  v6 = *(fromCopy + 36);
  if ((v6 & 0x10000) == 0)
  {
LABEL_10:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_75;
  }

LABEL_74:
  self->_egressLQM = *(fromCopy + 33);
  *&self->_has |= 0x10000uLL;
  v6 = *(fromCopy + 36);
  if ((v6 & 0x20) == 0)
  {
LABEL_11:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_76;
  }

LABEL_75:
  self->_ingressUlThroughputBps = *(fromCopy + 6);
  *&self->_has |= 0x20uLL;
  v6 = *(fromCopy + 36);
  if ((v6 & 0x10) == 0)
  {
LABEL_12:
    if ((v6 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_77;
  }

LABEL_76:
  self->_ingressDlThroughputBps = *(fromCopy + 5);
  *&self->_has |= 0x10uLL;
  v6 = *(fromCopy + 36);
  if ((v6 & 8) == 0)
  {
LABEL_13:
    if ((v6 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_78;
  }

LABEL_77:
  self->_egressUlThroughputBps = *(fromCopy + 4);
  *&self->_has |= 8uLL;
  v6 = *(fromCopy + 36);
  if ((v6 & 4) == 0)
  {
LABEL_14:
    if ((v6 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_79;
  }

LABEL_78:
  self->_egressDlThroughputBps = *(fromCopy + 3);
  *&self->_has |= 4uLL;
  v6 = *(fromCopy + 36);
  if ((v6 & 1) == 0)
  {
LABEL_15:
    if ((v6 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_80;
  }

LABEL_79:
  self->_bytesIn = *(fromCopy + 1);
  *&self->_has |= 1uLL;
  v6 = *(fromCopy + 36);
  if ((v6 & 2) == 0)
  {
LABEL_16:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_81;
  }

LABEL_80:
  self->_bytesOut = *(fromCopy + 2);
  *&self->_has |= 2uLL;
  v6 = *(fromCopy + 36);
  if ((v6 & 0x80) == 0)
  {
LABEL_17:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_82;
  }

LABEL_81:
  self->_packetsIn = *(fromCopy + 8);
  *&self->_has |= 0x80uLL;
  v6 = *(fromCopy + 36);
  if ((v6 & 0x100) == 0)
  {
LABEL_18:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_82:
  self->_packetsOut = *(fromCopy + 9);
  *&self->_has |= 0x100uLL;
  if ((*(fromCopy + 36) & 0x1000) != 0)
  {
LABEL_19:
    self->_uniqueActiveAppCount = *(fromCopy + 13);
    *&self->_has |= 0x1000uLL;
  }

LABEL_20:
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = *(fromCopy + 14);
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(AWDSymptomsNetworkAnalyticsRRCConnectedPeriod *)self addActiveNameDuringPeriod:*(*(&v14 + 1) + 8 * v11++), v14];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = *(v5 + 36);
  if ((v12 & 0x4000000000000) != 0)
  {
    self->_tcCountFlowDispositionUndefined = *(v5 + 67);
    *&self->_has |= 0x4000000000000uLL;
    v12 = *(v5 + 36);
    if ((v12 & 0x40000000000) == 0)
    {
LABEL_29:
      if ((v12 & 0x20000000000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_86;
    }
  }

  else if ((v12 & 0x40000000000) == 0)
  {
    goto LABEL_29;
  }

  self->_tcCountFlowDispositionTCBKSYS = *(v5 + 59);
  *&self->_has |= 0x40000000000uLL;
  v12 = *(v5 + 36);
  if ((v12 & 0x20000000000) == 0)
  {
LABEL_30:
    if ((v12 & 0x200000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_87;
  }

LABEL_86:
  self->_tcCountFlowDispositionTCBK = *(v5 + 58);
  *&self->_has |= 0x20000000000uLL;
  v12 = *(v5 + 36);
  if ((v12 & 0x200000000000) == 0)
  {
LABEL_31:
    if ((v12 & 0x100000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_88;
  }

LABEL_87:
  self->_tcCountFlowDispositionTCRD = *(v5 + 62);
  *&self->_has |= 0x200000000000uLL;
  v12 = *(v5 + 36);
  if ((v12 & 0x100000000000) == 0)
  {
LABEL_32:
    if ((v12 & 0x10000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_89;
  }

LABEL_88:
  self->_tcCountFlowDispositionTCOAM = *(v5 + 61);
  *&self->_has |= 0x100000000000uLL;
  v12 = *(v5 + 36);
  if ((v12 & 0x10000000000) == 0)
  {
LABEL_33:
    if ((v12 & 0x400000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_90;
  }

LABEL_89:
  self->_tcCountFlowDispositionTCAV = *(v5 + 57);
  *&self->_has |= 0x10000000000uLL;
  v12 = *(v5 + 36);
  if ((v12 & 0x400000000000) == 0)
  {
LABEL_34:
    if ((v12 & 0x800000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_91;
  }

LABEL_90:
  self->_tcCountFlowDispositionTCRV = *(v5 + 63);
  *&self->_has |= 0x400000000000uLL;
  v12 = *(v5 + 36);
  if ((v12 & 0x800000000000) == 0)
  {
LABEL_35:
    if ((v12 & 0x1000000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_92;
  }

LABEL_91:
  self->_tcCountFlowDispositionTCVI = *(v5 + 64);
  *&self->_has |= 0x800000000000uLL;
  v12 = *(v5 + 36);
  if ((v12 & 0x1000000000000) == 0)
  {
LABEL_36:
    if ((v12 & 0x80000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_93;
  }

LABEL_92:
  self->_tcCountFlowDispositionTCVO = *(v5 + 65);
  *&self->_has |= 0x1000000000000uLL;
  v12 = *(v5 + 36);
  if ((v12 & 0x80000000000) == 0)
  {
LABEL_37:
    if ((v12 & 0x8000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_94;
  }

LABEL_93:
  self->_tcCountFlowDispositionTCCTL = *(v5 + 60);
  *&self->_has |= 0x80000000000uLL;
  v12 = *(v5 + 36);
  if ((v12 & 0x8000000) == 0)
  {
LABEL_38:
    if ((v12 & 0x4000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_95;
  }

LABEL_94:
  self->_tcCountFlowDispositionLARGEUL = *(v5 + 44);
  *&self->_has |= 0x8000000uLL;
  v12 = *(v5 + 36);
  if ((v12 & 0x4000000) == 0)
  {
LABEL_39:
    if ((v12 & 0x2000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_96;
  }

LABEL_95:
  self->_tcCountFlowDispositionLARGEDL = *(v5 + 43);
  *&self->_has |= 0x4000000uLL;
  v12 = *(v5 + 36);
  if ((v12 & 0x2000000) == 0)
  {
LABEL_40:
    if ((v12 & 0x80000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_97;
  }

LABEL_96:
  self->_tcCountFlowDispositionLARGE = *(v5 + 42);
  *&self->_has |= 0x2000000uLL;
  v12 = *(v5 + 36);
  if ((v12 & 0x80000) == 0)
  {
LABEL_41:
    if ((v12 & 0x2000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_98;
  }

LABEL_97:
  self->_tcCountFlowDispositionBURST = *(v5 + 36);
  *&self->_has |= 0x80000uLL;
  v12 = *(v5 + 36);
  if ((v12 & 0x2000000000) == 0)
  {
LABEL_42:
    if ((v12 & 0x400000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_99;
  }

LABEL_98:
  self->_tcCountFlowDispositionSIRI = *(v5 + 54);
  *&self->_has |= 0x2000000000uLL;
  v12 = *(v5 + 36);
  if ((v12 & 0x400000000) == 0)
  {
LABEL_43:
    if ((v12 & 0x1000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_100;
  }

LABEL_99:
  self->_tcCountFlowDispositionPUSH = *(v5 + 51);
  *&self->_has |= 0x400000000uLL;
  v12 = *(v5 + 36);
  if ((v12 & 0x1000000) == 0)
  {
LABEL_44:
    if ((v12 & 0x2000000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_101;
  }

LABEL_100:
  self->_tcCountFlowDispositionKNOWNOTHER = *(v5 + 41);
  *&self->_has |= 0x1000000uLL;
  v12 = *(v5 + 36);
  if ((v12 & 0x2000000000000) == 0)
  {
LABEL_45:
    if ((v12 & 0x200000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_102;
  }

LABEL_101:
  self->_tcCountFlowDispositionUNKNOWNOTHER = *(v5 + 66);
  *&self->_has |= 0x2000000000000uLL;
  v12 = *(v5 + 36);
  if ((v12 & 0x200000) == 0)
  {
LABEL_46:
    if ((v12 & 0x100000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_103;
  }

LABEL_102:
  self->_tcCountFlowDispositionDrop = *(v5 + 38);
  *&self->_has |= 0x200000uLL;
  v12 = *(v5 + 36);
  if ((v12 & 0x100000) == 0)
  {
LABEL_47:
    if ((v12 & 0x40000000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_104;
  }

LABEL_103:
  self->_tcCountFlowDispositionDefault = *(v5 + 37);
  *&self->_has |= 0x100000uLL;
  v12 = *(v5 + 36);
  if ((v12 & 0x40000000000000) == 0)
  {
LABEL_48:
    if ((v12 & 0x20000000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_105;
  }

LABEL_104:
  self->_tcUpdates = *(v5 + 71);
  *&self->_has |= 0x40000000000000uLL;
  v12 = *(v5 + 36);
  if ((v12 & 0x20000000000000) == 0)
  {
LABEL_49:
    if ((v12 & 0x400000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_106;
  }

LABEL_105:
  self->_tcDampeningSuppressed = *(v5 + 70);
  *&self->_has |= 0x20000000000000uLL;
  v12 = *(v5 + 36);
  if ((v12 & 0x400000) == 0)
  {
LABEL_50:
    if ((v12 & 0x800000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_107;
  }

LABEL_106:
  self->_tcCountFlowDispositionFGFacetime = *(v5 + 39);
  *&self->_has |= 0x400000uLL;
  v12 = *(v5 + 36);
  if ((v12 & 0x800000) == 0)
  {
LABEL_51:
    if ((v12 & 0x10000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_108;
  }

LABEL_107:
  self->_tcCountFlowDispositionFGIMSG = *(v5 + 40);
  *&self->_has |= 0x800000uLL;
  v12 = *(v5 + 36);
  if ((v12 & 0x10000000) == 0)
  {
LABEL_52:
    if ((v12 & 0x20000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_109;
  }

LABEL_108:
  self->_tcCountFlowDispositionMail = *(v5 + 45);
  *&self->_has |= 0x10000000uLL;
  v12 = *(v5 + 36);
  if ((v12 & 0x20000000) == 0)
  {
LABEL_53:
    if ((v12 & 0x40000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_110;
  }

LABEL_109:
  self->_tcCountFlowDispositionMaps = *(v5 + 46);
  *&self->_has |= 0x20000000uLL;
  v12 = *(v5 + 36);
  if ((v12 & 0x40000000) == 0)
  {
LABEL_54:
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_111;
  }

LABEL_110:
  self->_tcCountFlowDispositionMediaserverd = *(v5 + 47);
  *&self->_has |= 0x40000000uLL;
  v12 = *(v5 + 36);
  if ((v12 & 0x80000000) == 0)
  {
LABEL_55:
    if ((v12 & 0x100000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_112;
  }

LABEL_111:
  self->_tcCountFlowDispositionMusic = *(v5 + 48);
  *&self->_has |= 0x80000000uLL;
  v12 = *(v5 + 36);
  if ((v12 & 0x100000000) == 0)
  {
LABEL_56:
    if ((v12 & 0x200000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_113;
  }

LABEL_112:
  self->_tcCountFlowDispositionNSURLSessiond = *(v5 + 49);
  *&self->_has |= 0x100000000uLL;
  v12 = *(v5 + 36);
  if ((v12 & 0x200000000) == 0)
  {
LABEL_57:
    if ((v12 & 0x800000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_114;
  }

LABEL_113:
  self->_tcCountFlowDispositionNews = *(v5 + 50);
  *&self->_has |= 0x200000000uLL;
  v12 = *(v5 + 36);
  if ((v12 & 0x800000000) == 0)
  {
LABEL_58:
    if ((v12 & 0x1000000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_115;
  }

LABEL_114:
  self->_tcCountFlowDispositionPodcasts = *(v5 + 52);
  *&self->_has |= 0x800000000uLL;
  v12 = *(v5 + 36);
  if ((v12 & 0x1000000000) == 0)
  {
LABEL_59:
    if ((v12 & 0x8000000000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_116;
  }

LABEL_115:
  self->_tcCountFlowDispositionRTCReportingd = *(v5 + 53);
  *&self->_has |= 0x1000000000uLL;
  v12 = *(v5 + 36);
  if ((v12 & 0x8000000000000) == 0)
  {
LABEL_60:
    if ((v12 & 0x10000000000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_117;
  }

LABEL_116:
  self->_tcCountFlowDispositionWeather = *(v5 + 68);
  *&self->_has |= 0x8000000000000uLL;
  v12 = *(v5 + 36);
  if ((v12 & 0x10000000000000) == 0)
  {
LABEL_61:
    if ((v12 & 0x200) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_118;
  }

LABEL_117:
  self->_tcCountFlowDispositionWebkit = *(v5 + 69);
  *&self->_has |= 0x10000000000000uLL;
  v12 = *(v5 + 36);
  if ((v12 & 0x200) == 0)
  {
LABEL_62:
    if ((v12 & 0x4000000000) == 0)
    {
      goto LABEL_63;
    }

LABEL_119:
    self->_tcCountFlowDispositionSafari = *(v5 + 55);
    *&self->_has |= 0x4000000000uLL;
    if ((*(v5 + 36) & 0x8000000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

LABEL_118:
  self->_periodDurationTCEnabledUsecs = *(v5 + 10);
  *&self->_has |= 0x200uLL;
  v12 = *(v5 + 36);
  if ((v12 & 0x4000000000) != 0)
  {
    goto LABEL_119;
  }

LABEL_63:
  if ((v12 & 0x8000000000) != 0)
  {
LABEL_64:
    self->_tcCountFlowDispositionStocks = *(v5 + 56);
    *&self->_has |= 0x8000000000uLL;
  }

LABEL_65:

  v13 = *MEMORY[0x277D85DE8];
}

@end