@interface AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAxibr:(id)axibr;
- (int)StringAsDeployment:(id)deployment;
- (int)StringAsDmdc0:(id)dmdc0;
- (int)StringAsDmdc1:(id)dmdc1;
- (int)StringAsDmdc2:(id)dmdc2;
- (int)StringAsGala:(id)gala;
- (int)StringAsMcgDlCcActivated:(id)activated;
- (int)StringAsMcgDlCcConfigured:(id)configured;
- (int)StringAsMcgUlCcActivated:(id)activated;
- (int)StringAsMcgUlCcConfigured:(id)configured;
- (int)StringAsRflc:(id)rflc;
- (int)StringAsScgDlCcActivated:(id)activated;
- (int)StringAsScgDlCcConfigured:(id)configured;
- (int)StringAsScgUlCcActivated:(id)activated;
- (int)StringAsScgUlCcConfigured:(id)configured;
- (int)StringAsTdp:(id)tdp;
- (int)StringAsUplink:(id)uplink;
- (int)axibr;
- (int)deployment;
- (int)dmdc0;
- (int)dmdc1;
- (int)dmdc2;
- (int)gala;
- (int)mcgDlCcActivated;
- (int)mcgDlCcConfigured;
- (int)mcgUlCcActivated;
- (int)mcgUlCcConfigured;
- (int)rflc;
- (int)scgDlCcActivated;
- (int)scgDlCcConfigured;
- (int)scgUlCcActivated;
- (int)scgUlCcConfigured;
- (int)tdp;
- (int)uplink;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDeployment:(BOOL)deployment;
- (void)setHasDmdc0:(BOOL)dmdc0;
- (void)setHasDmdc1:(BOOL)dmdc1;
- (void)setHasDmdc2:(BOOL)dmdc2;
- (void)setHasDurationMs:(BOOL)ms;
- (void)setHasGala:(BOOL)gala;
- (void)setHasMcgAggregatedBw:(BOOL)bw;
- (void)setHasMcgDlCcActivated:(BOOL)activated;
- (void)setHasMcgDlCcConfigured:(BOOL)configured;
- (void)setHasMcgUlCcActivated:(BOOL)activated;
- (void)setHasMcgUlCcConfigured:(BOOL)configured;
- (void)setHasRflc:(BOOL)rflc;
- (void)setHasScgAggregatedBw:(BOOL)bw;
- (void)setHasScgDlCcActivated:(BOOL)activated;
- (void)setHasScgDlCcConfigured:(BOOL)configured;
- (void)setHasScgUlCcActivated:(BOOL)activated;
- (void)setHasScgUlCcConfigured:(BOOL)configured;
- (void)setHasTdp:(BOOL)tdp;
- (void)setHasUplink:(BOOL)uplink;
- (void)writeTo:(id)to;
@end

@implementation AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels

- (int)tdp
{
  if ((*(&self->_has + 2) & 4) != 0)
  {
    return self->_tdp;
  }

  else
  {
    return 0;
  }
}

- (void)setHasTdp:(BOOL)tdp
{
  if (tdp)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (int)StringAsTdp:(id)tdp
{
  tdpCopy = tdp;
  if ([tdpCopy isEqualToString:@"IDLE"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [tdpCopy isEqualToString:@"ACTIVE"];
  }

  return v4;
}

- (int)dmdc0
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_dmdc0;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDmdc0:(BOOL)dmdc0
{
  if (dmdc0)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (int)StringAsDmdc0:(id)dmdc0
{
  dmdc0Copy = dmdc0;
  if ([dmdc0Copy isEqualToString:@"IDLE"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [dmdc0Copy isEqualToString:@"ACTIVE"];
  }

  return v4;
}

- (int)dmdc1
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_dmdc1;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDmdc1:(BOOL)dmdc1
{
  if (dmdc1)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (int)StringAsDmdc1:(id)dmdc1
{
  dmdc1Copy = dmdc1;
  if ([dmdc1Copy isEqualToString:@"IDLE"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [dmdc1Copy isEqualToString:@"ACTIVE"];
  }

  return v4;
}

- (int)dmdc2
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_dmdc2;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDmdc2:(BOOL)dmdc2
{
  if (dmdc2)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (int)StringAsDmdc2:(id)dmdc2
{
  dmdc2Copy = dmdc2;
  if ([dmdc2Copy isEqualToString:@"IDLE"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [dmdc2Copy isEqualToString:@"ACTIVE"];
  }

  return v4;
}

- (int)gala
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_gala;
  }

  else
  {
    return 0;
  }
}

- (void)setHasGala:(BOOL)gala
{
  if (gala)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (int)StringAsGala:(id)gala
{
  galaCopy = gala;
  if ([galaCopy isEqualToString:@"IDLE"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [galaCopy isEqualToString:@"ACTIVE"];
  }

  return v4;
}

- (int)uplink
{
  if ((*(&self->_has + 2) & 8) != 0)
  {
    return self->_uplink;
  }

  else
  {
    return 0;
  }
}

- (void)setHasUplink:(BOOL)uplink
{
  if (uplink)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (int)StringAsUplink:(id)uplink
{
  uplinkCopy = uplink;
  if ([uplinkCopy isEqualToString:@"IDLE"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [uplinkCopy isEqualToString:@"ACTIVE"];
  }

  return v4;
}

- (int)axibr
{
  if (*&self->_has)
  {
    return self->_axibr;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsAxibr:(id)axibr
{
  axibrCopy = axibr;
  if ([axibrCopy isEqualToString:@"IDLE"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [axibrCopy isEqualToString:@"ACTIVE"];
  }

  return v4;
}

- (int)rflc
{
  if ((*(&self->_has + 1) & 0x10) != 0)
  {
    return self->_rflc;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRflc:(BOOL)rflc
{
  if (rflc)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (int)StringAsRflc:(id)rflc
{
  rflcCopy = rflc;
  if ([rflcCopy isEqualToString:@"IDLE"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [rflcCopy isEqualToString:@"ACTIVE"];
  }

  return v4;
}

- (void)setHasMcgAggregatedBw:(BOOL)bw
{
  if (bw)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (int)mcgDlCcConfigured
{
  if ((*(&self->_has + 1) & 2) != 0)
  {
    return self->_mcgDlCcConfigured;
  }

  else
  {
    return 0;
  }
}

- (void)setHasMcgDlCcConfigured:(BOOL)configured
{
  if (configured)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (int)StringAsMcgDlCcConfigured:(id)configured
{
  configuredCopy = configured;
  if ([configuredCopy isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([configuredCopy isEqualToString:@"PCC"])
  {
    v4 = 1;
  }

  else if ([configuredCopy isEqualToString:@"SCC_1"])
  {
    v4 = 2;
  }

  else if ([configuredCopy isEqualToString:@"SCC_2"])
  {
    v4 = 3;
  }

  else if ([configuredCopy isEqualToString:@"SCC_3"])
  {
    v4 = 4;
  }

  else if ([configuredCopy isEqualToString:@"SCC_4"])
  {
    v4 = 5;
  }

  else if ([configuredCopy isEqualToString:@"SCC_5"])
  {
    v4 = 6;
  }

  else if ([configuredCopy isEqualToString:@"SCC_6"])
  {
    v4 = 7;
  }

  else if ([configuredCopy isEqualToString:@"SCC_7"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)mcgDlCcActivated
{
  if (*(&self->_has + 1))
  {
    return self->_mcgDlCcActivated;
  }

  else
  {
    return 0;
  }
}

- (void)setHasMcgDlCcActivated:(BOOL)activated
{
  if (activated)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (int)StringAsMcgDlCcActivated:(id)activated
{
  activatedCopy = activated;
  if ([activatedCopy isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([activatedCopy isEqualToString:@"PCC"])
  {
    v4 = 1;
  }

  else if ([activatedCopy isEqualToString:@"SCC_1"])
  {
    v4 = 2;
  }

  else if ([activatedCopy isEqualToString:@"SCC_2"])
  {
    v4 = 3;
  }

  else if ([activatedCopy isEqualToString:@"SCC_3"])
  {
    v4 = 4;
  }

  else if ([activatedCopy isEqualToString:@"SCC_4"])
  {
    v4 = 5;
  }

  else if ([activatedCopy isEqualToString:@"SCC_5"])
  {
    v4 = 6;
  }

  else if ([activatedCopy isEqualToString:@"SCC_6"])
  {
    v4 = 7;
  }

  else if ([activatedCopy isEqualToString:@"SCC_7"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)mcgUlCcConfigured
{
  if ((*(&self->_has + 1) & 8) != 0)
  {
    return self->_mcgUlCcConfigured;
  }

  else
  {
    return 0;
  }
}

- (void)setHasMcgUlCcConfigured:(BOOL)configured
{
  if (configured)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (int)StringAsMcgUlCcConfigured:(id)configured
{
  configuredCopy = configured;
  if ([configuredCopy isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([configuredCopy isEqualToString:@"PCC"])
  {
    v4 = 1;
  }

  else if ([configuredCopy isEqualToString:@"SCC_1"])
  {
    v4 = 2;
  }

  else if ([configuredCopy isEqualToString:@"SCC_2"])
  {
    v4 = 3;
  }

  else if ([configuredCopy isEqualToString:@"SCC_3"])
  {
    v4 = 4;
  }

  else if ([configuredCopy isEqualToString:@"SCC_4"])
  {
    v4 = 5;
  }

  else if ([configuredCopy isEqualToString:@"SCC_5"])
  {
    v4 = 6;
  }

  else if ([configuredCopy isEqualToString:@"SCC_6"])
  {
    v4 = 7;
  }

  else if ([configuredCopy isEqualToString:@"SCC_7"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)mcgUlCcActivated
{
  if ((*(&self->_has + 1) & 4) != 0)
  {
    return self->_mcgUlCcActivated;
  }

  else
  {
    return 0;
  }
}

- (void)setHasMcgUlCcActivated:(BOOL)activated
{
  if (activated)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (int)StringAsMcgUlCcActivated:(id)activated
{
  activatedCopy = activated;
  if ([activatedCopy isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([activatedCopy isEqualToString:@"PCC"])
  {
    v4 = 1;
  }

  else if ([activatedCopy isEqualToString:@"SCC_1"])
  {
    v4 = 2;
  }

  else if ([activatedCopy isEqualToString:@"SCC_2"])
  {
    v4 = 3;
  }

  else if ([activatedCopy isEqualToString:@"SCC_3"])
  {
    v4 = 4;
  }

  else if ([activatedCopy isEqualToString:@"SCC_4"])
  {
    v4 = 5;
  }

  else if ([activatedCopy isEqualToString:@"SCC_5"])
  {
    v4 = 6;
  }

  else if ([activatedCopy isEqualToString:@"SCC_6"])
  {
    v4 = 7;
  }

  else if ([activatedCopy isEqualToString:@"SCC_7"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasScgAggregatedBw:(BOOL)bw
{
  if (bw)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (int)scgDlCcConfigured
{
  if ((*(&self->_has + 1) & 0x80) != 0)
  {
    return self->_scgDlCcConfigured;
  }

  else
  {
    return 0;
  }
}

- (void)setHasScgDlCcConfigured:(BOOL)configured
{
  if (configured)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (int)StringAsScgDlCcConfigured:(id)configured
{
  configuredCopy = configured;
  if ([configuredCopy isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([configuredCopy isEqualToString:@"PCC"])
  {
    v4 = 1;
  }

  else if ([configuredCopy isEqualToString:@"SCC_1"])
  {
    v4 = 2;
  }

  else if ([configuredCopy isEqualToString:@"SCC_2"])
  {
    v4 = 3;
  }

  else if ([configuredCopy isEqualToString:@"SCC_3"])
  {
    v4 = 4;
  }

  else if ([configuredCopy isEqualToString:@"SCC_4"])
  {
    v4 = 5;
  }

  else if ([configuredCopy isEqualToString:@"SCC_5"])
  {
    v4 = 6;
  }

  else if ([configuredCopy isEqualToString:@"SCC_6"])
  {
    v4 = 7;
  }

  else if ([configuredCopy isEqualToString:@"SCC_7"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)scgDlCcActivated
{
  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    return self->_scgDlCcActivated;
  }

  else
  {
    return 0;
  }
}

- (void)setHasScgDlCcActivated:(BOOL)activated
{
  if (activated)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (int)StringAsScgDlCcActivated:(id)activated
{
  activatedCopy = activated;
  if ([activatedCopy isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([activatedCopy isEqualToString:@"PCC"])
  {
    v4 = 1;
  }

  else if ([activatedCopy isEqualToString:@"SCC_1"])
  {
    v4 = 2;
  }

  else if ([activatedCopy isEqualToString:@"SCC_2"])
  {
    v4 = 3;
  }

  else if ([activatedCopy isEqualToString:@"SCC_3"])
  {
    v4 = 4;
  }

  else if ([activatedCopy isEqualToString:@"SCC_4"])
  {
    v4 = 5;
  }

  else if ([activatedCopy isEqualToString:@"SCC_5"])
  {
    v4 = 6;
  }

  else if ([activatedCopy isEqualToString:@"SCC_6"])
  {
    v4 = 7;
  }

  else if ([activatedCopy isEqualToString:@"SCC_7"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)scgUlCcConfigured
{
  if ((*(&self->_has + 2) & 2) != 0)
  {
    return self->_scgUlCcConfigured;
  }

  else
  {
    return 0;
  }
}

- (void)setHasScgUlCcConfigured:(BOOL)configured
{
  if (configured)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (int)StringAsScgUlCcConfigured:(id)configured
{
  configuredCopy = configured;
  if ([configuredCopy isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([configuredCopy isEqualToString:@"PCC"])
  {
    v4 = 1;
  }

  else if ([configuredCopy isEqualToString:@"SCC_1"])
  {
    v4 = 2;
  }

  else if ([configuredCopy isEqualToString:@"SCC_2"])
  {
    v4 = 3;
  }

  else if ([configuredCopy isEqualToString:@"SCC_3"])
  {
    v4 = 4;
  }

  else if ([configuredCopy isEqualToString:@"SCC_4"])
  {
    v4 = 5;
  }

  else if ([configuredCopy isEqualToString:@"SCC_5"])
  {
    v4 = 6;
  }

  else if ([configuredCopy isEqualToString:@"SCC_6"])
  {
    v4 = 7;
  }

  else if ([configuredCopy isEqualToString:@"SCC_7"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)scgUlCcActivated
{
  if (*(&self->_has + 2))
  {
    return self->_scgUlCcActivated;
  }

  else
  {
    return 0;
  }
}

- (void)setHasScgUlCcActivated:(BOOL)activated
{
  if (activated)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (int)StringAsScgUlCcActivated:(id)activated
{
  activatedCopy = activated;
  if ([activatedCopy isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([activatedCopy isEqualToString:@"PCC"])
  {
    v4 = 1;
  }

  else if ([activatedCopy isEqualToString:@"SCC_1"])
  {
    v4 = 2;
  }

  else if ([activatedCopy isEqualToString:@"SCC_2"])
  {
    v4 = 3;
  }

  else if ([activatedCopy isEqualToString:@"SCC_3"])
  {
    v4 = 4;
  }

  else if ([activatedCopy isEqualToString:@"SCC_4"])
  {
    v4 = 5;
  }

  else if ([activatedCopy isEqualToString:@"SCC_5"])
  {
    v4 = 6;
  }

  else if ([activatedCopy isEqualToString:@"SCC_6"])
  {
    v4 = 7;
  }

  else if ([activatedCopy isEqualToString:@"SCC_7"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasDurationMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (int)deployment
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_deployment;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDeployment:(BOOL)deployment
{
  if (deployment)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (int)StringAsDeployment:(id)deployment
{
  deploymentCopy = deployment;
  if ([deploymentCopy isEqualToString:@"LEGACY"])
  {
    v4 = 0;
  }

  else if ([deploymentCopy isEqualToString:@"LTE_IDLE"])
  {
    v4 = 1;
  }

  else if ([deploymentCopy isEqualToString:@"NRSA_IDLE"])
  {
    v4 = 2;
  }

  else if ([deploymentCopy isEqualToString:@"NRSA_INACTIVE"])
  {
    v4 = 3;
  }

  else if ([deploymentCopy isEqualToString:@"LTE_CONNECTED"])
  {
    v4 = 4;
  }

  else if ([deploymentCopy isEqualToString:@"NRSA_CONNECTED"])
  {
    v4 = 5;
  }

  else if ([deploymentCopy isEqualToString:@"ENDC"])
  {
    v4 = 6;
  }

  else if ([deploymentCopy isEqualToString:@"NRDC"])
  {
    v4 = 7;
  }

  else if ([deploymentCopy isEqualToString:@"OTHER"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels;
  v4 = [(AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels *)&v8 description];
  dictionaryRepresentation = [(AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((*&has & 0x40000) != 0)
  {
    tdp = self->_tdp;
    if (tdp)
    {
      if (tdp == 1)
      {
        v6 = @"ACTIVE";
      }

      else
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_tdp];
      }
    }

    else
    {
      v6 = @"IDLE";
    }

    [dictionary setObject:v6 forKey:@"tdp"];

    has = self->_has;
    if ((*&has & 4) == 0)
    {
LABEL_3:
      if ((*&has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((*&has & 4) == 0)
  {
    goto LABEL_3;
  }

  dmdc0 = self->_dmdc0;
  if (dmdc0)
  {
    if (dmdc0 == 1)
    {
      v8 = @"ACTIVE";
    }

    else
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_dmdc0];
    }
  }

  else
  {
    v8 = @"IDLE";
  }

  [dictionary setObject:v8 forKey:@"dmdc0"];

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_4:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_22:
  dmdc1 = self->_dmdc1;
  if (dmdc1)
  {
    if (dmdc1 == 1)
    {
      v10 = @"ACTIVE";
    }

    else
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_dmdc1];
    }
  }

  else
  {
    v10 = @"IDLE";
  }

  [dictionary setObject:v10 forKey:@"dmdc1"];

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_5:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_28:
  dmdc2 = self->_dmdc2;
  if (dmdc2)
  {
    if (dmdc2 == 1)
    {
      v12 = @"ACTIVE";
    }

    else
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_dmdc2];
    }
  }

  else
  {
    v12 = @"IDLE";
  }

  [dictionary setObject:v12 forKey:@"dmdc2"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_6:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_34:
  gala = self->_gala;
  if (gala)
  {
    if (gala == 1)
    {
      v14 = @"ACTIVE";
    }

    else
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_gala];
    }
  }

  else
  {
    v14 = @"IDLE";
  }

  [dictionary setObject:v14 forKey:@"gala"];

  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_7:
    if ((*&has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_40:
  uplink = self->_uplink;
  if (uplink)
  {
    if (uplink == 1)
    {
      v16 = @"ACTIVE";
    }

    else
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_uplink];
    }
  }

  else
  {
    v16 = @"IDLE";
  }

  [dictionary setObject:v16 forKey:@"uplink"];

  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_8:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_52;
  }

LABEL_46:
  axibr = self->_axibr;
  if (axibr)
  {
    if (axibr == 1)
    {
      v18 = @"ACTIVE";
    }

    else
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_axibr];
    }
  }

  else
  {
    v18 = @"IDLE";
  }

  [dictionary setObject:v18 forKey:@"axibr"];

  has = self->_has;
  if ((*&has & 0x1000) != 0)
  {
LABEL_52:
    rflc = self->_rflc;
    if (rflc)
    {
      if (rflc == 1)
      {
        v20 = @"ACTIVE";
      }

      else
      {
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_rflc];
      }
    }

    else
    {
      v20 = @"IDLE";
    }

    [dictionary setObject:v20 forKey:@"rflc"];

    has = self->_has;
  }

LABEL_58:
  if ((*&has & 0x80) != 0)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_mcgAggregatedBw];
    [dictionary setObject:v21 forKey:@"mcg_aggregated_bw"];

    has = self->_has;
    if ((*&has & 0x200) == 0)
    {
LABEL_60:
      if ((*&has & 0x100) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_76;
    }
  }

  else if ((*&has & 0x200) == 0)
  {
    goto LABEL_60;
  }

  mcgDlCcConfigured = self->_mcgDlCcConfigured;
  if (mcgDlCcConfigured >= 9)
  {
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_mcgDlCcConfigured];
  }

  else
  {
    v23 = off_27825D1B0[mcgDlCcConfigured];
  }

  [dictionary setObject:v23 forKey:@"mcg_dl_cc_configured"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_61:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_80;
  }

LABEL_76:
  mcgDlCcActivated = self->_mcgDlCcActivated;
  if (mcgDlCcActivated >= 9)
  {
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_mcgDlCcActivated];
  }

  else
  {
    v25 = off_27825D1B0[mcgDlCcActivated];
  }

  [dictionary setObject:v25 forKey:@"mcg_dl_cc_activated"];

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_62:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_84;
  }

LABEL_80:
  mcgUlCcConfigured = self->_mcgUlCcConfigured;
  if (mcgUlCcConfigured >= 9)
  {
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_mcgUlCcConfigured];
  }

  else
  {
    v27 = off_27825D1B0[mcgUlCcConfigured];
  }

  [dictionary setObject:v27 forKey:@"mcg_ul_cc_configured"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_63:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_88;
  }

LABEL_84:
  mcgUlCcActivated = self->_mcgUlCcActivated;
  if (mcgUlCcActivated >= 9)
  {
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_mcgUlCcActivated];
  }

  else
  {
    v29 = off_27825D1B0[mcgUlCcActivated];
  }

  [dictionary setObject:v29 forKey:@"mcg_ul_cc_activated"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_64:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_89;
  }

LABEL_88:
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_scgAggregatedBw];
  [dictionary setObject:v30 forKey:@"scg_aggregated_bw"];

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_65:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_93;
  }

LABEL_89:
  scgDlCcConfigured = self->_scgDlCcConfigured;
  if (scgDlCcConfigured >= 9)
  {
    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_scgDlCcConfigured];
  }

  else
  {
    v32 = off_27825D1B0[scgDlCcConfigured];
  }

  [dictionary setObject:v32 forKey:@"scg_dl_cc_configured"];

  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_66:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_97;
  }

LABEL_93:
  scgDlCcActivated = self->_scgDlCcActivated;
  if (scgDlCcActivated >= 9)
  {
    v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_scgDlCcActivated];
  }

  else
  {
    v34 = off_27825D1B0[scgDlCcActivated];
  }

  [dictionary setObject:v34 forKey:@"scg_dl_cc_activated"];

  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_67:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_101;
  }

LABEL_97:
  scgUlCcConfigured = self->_scgUlCcConfigured;
  if (scgUlCcConfigured >= 9)
  {
    v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_scgUlCcConfigured];
  }

  else
  {
    v36 = off_27825D1B0[scgUlCcConfigured];
  }

  [dictionary setObject:v36 forKey:@"scg_ul_cc_configured"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_68:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_69;
    }

LABEL_105:
    v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durationMs];
    [dictionary setObject:v39 forKey:@"duration_ms"];

    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_106;
  }

LABEL_101:
  scgUlCcActivated = self->_scgUlCcActivated;
  if (scgUlCcActivated >= 9)
  {
    v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_scgUlCcActivated];
  }

  else
  {
    v38 = off_27825D1B0[scgUlCcActivated];
  }

  [dictionary setObject:v38 forKey:@"scg_ul_cc_activated"];

  has = self->_has;
  if ((*&has & 0x20) != 0)
  {
    goto LABEL_105;
  }

LABEL_69:
  if ((*&has & 2) == 0)
  {
    goto LABEL_110;
  }

LABEL_106:
  deployment = self->_deployment;
  if (deployment >= 9)
  {
    v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_deployment];
  }

  else
  {
    v41 = off_27825D1F8[deployment];
  }

  [dictionary setObject:v41 forKey:@"deployment"];

LABEL_110:
  v42 = dictionary;

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((*&has & 0x40000) != 0)
  {
    tdp = self->_tdp;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((*&has & 4) == 0)
    {
LABEL_3:
      if ((*&has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((*&has & 4) == 0)
  {
    goto LABEL_3;
  }

  dmdc0 = self->_dmdc0;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_4:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_27:
  dmdc1 = self->_dmdc1;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_5:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_28:
  dmdc2 = self->_dmdc2;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_6:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  gala = self->_gala;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_7:
    if ((*&has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  uplink = self->_uplink;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_8:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  axibr = self->_axibr;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_9:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  rflc = self->_rflc;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_10:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  mcgAggregatedBw = self->_mcgAggregatedBw;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_11:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  mcgDlCcConfigured = self->_mcgDlCcConfigured;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_12:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  mcgDlCcActivated = self->_mcgDlCcActivated;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_13:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  mcgUlCcConfigured = self->_mcgUlCcConfigured;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_14:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  mcgUlCcActivated = self->_mcgUlCcActivated;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_15:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  scgAggregatedBw = self->_scgAggregatedBw;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_16:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  scgDlCcConfigured = self->_scgDlCcConfigured;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_17:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  scgDlCcActivated = self->_scgDlCcActivated;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_18:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  scgUlCcConfigured = self->_scgUlCcConfigured;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_19:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  scgUlCcActivated = self->_scgUlCcActivated;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_20:
    if ((*&has & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_43:
  durationMs = self->_durationMs;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_21:
    deployment = self->_deployment;
    PBDataWriterWriteInt32Field();
  }

LABEL_22:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((*&has & 0x40000) != 0)
  {
    toCopy[20] = self->_tdp;
    toCopy[22] |= 0x40000u;
    has = self->_has;
    if ((*&has & 4) == 0)
    {
LABEL_3:
      if ((*&has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((*&has & 4) == 0)
  {
    goto LABEL_3;
  }

  toCopy[4] = self->_dmdc0;
  toCopy[22] |= 4u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_4:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_27:
  toCopy[5] = self->_dmdc1;
  toCopy[22] |= 8u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_5:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_28:
  toCopy[6] = self->_dmdc2;
  toCopy[22] |= 0x10u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_6:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  toCopy[8] = self->_gala;
  toCopy[22] |= 0x40u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_7:
    if ((*&has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  toCopy[21] = self->_uplink;
  toCopy[22] |= 0x80000u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_8:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  toCopy[2] = self->_axibr;
  toCopy[22] |= 1u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_9:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  toCopy[14] = self->_rflc;
  toCopy[22] |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_10:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  toCopy[9] = self->_mcgAggregatedBw;
  toCopy[22] |= 0x80u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_11:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  toCopy[11] = self->_mcgDlCcConfigured;
  toCopy[22] |= 0x200u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_12:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  toCopy[10] = self->_mcgDlCcActivated;
  toCopy[22] |= 0x100u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_13:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  toCopy[13] = self->_mcgUlCcConfigured;
  toCopy[22] |= 0x800u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_14:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  toCopy[12] = self->_mcgUlCcActivated;
  toCopy[22] |= 0x400u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_15:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  toCopy[15] = self->_scgAggregatedBw;
  toCopy[22] |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_16:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  toCopy[17] = self->_scgDlCcConfigured;
  toCopy[22] |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_17:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  toCopy[16] = self->_scgDlCcActivated;
  toCopy[22] |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_18:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  toCopy[19] = self->_scgUlCcConfigured;
  toCopy[22] |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_19:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  toCopy[18] = self->_scgUlCcActivated;
  toCopy[22] |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_20:
    if ((*&has & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_43:
  toCopy[7] = self->_durationMs;
  toCopy[22] |= 0x20u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_21:
    toCopy[3] = self->_deployment;
    toCopy[22] |= 2u;
  }

LABEL_22:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((*&has & 0x40000) != 0)
  {
    *(result + 20) = self->_tdp;
    *(result + 22) |= 0x40000u;
    has = self->_has;
    if ((*&has & 4) == 0)
    {
LABEL_3:
      if ((*&has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((*&has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_dmdc0;
  *(result + 22) |= 4u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_4:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(result + 5) = self->_dmdc1;
  *(result + 22) |= 8u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_5:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(result + 6) = self->_dmdc2;
  *(result + 22) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_6:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(result + 8) = self->_gala;
  *(result + 22) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_7:
    if ((*&has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(result + 21) = self->_uplink;
  *(result + 22) |= 0x80000u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_8:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(result + 2) = self->_axibr;
  *(result + 22) |= 1u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_9:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(result + 14) = self->_rflc;
  *(result + 22) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_10:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(result + 9) = self->_mcgAggregatedBw;
  *(result + 22) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_11:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(result + 11) = self->_mcgDlCcConfigured;
  *(result + 22) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_12:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(result + 10) = self->_mcgDlCcActivated;
  *(result + 22) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_13:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(result + 13) = self->_mcgUlCcConfigured;
  *(result + 22) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_14:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(result + 12) = self->_mcgUlCcActivated;
  *(result + 22) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_15:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(result + 15) = self->_scgAggregatedBw;
  *(result + 22) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_16:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(result + 17) = self->_scgDlCcConfigured;
  *(result + 22) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_17:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(result + 16) = self->_scgDlCcActivated;
  *(result + 22) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_18:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(result + 19) = self->_scgUlCcConfigured;
  *(result + 22) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_19:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(result + 18) = self->_scgUlCcActivated;
  *(result + 22) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_20:
    if ((*&has & 2) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_41:
  *(result + 7) = self->_durationMs;
  *(result + 22) |= 0x20u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_21:
  *(result + 3) = self->_deployment;
  *(result + 22) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_102;
  }

  has = self->_has;
  v6 = equalCopy[22];
  if ((*&has & 0x40000) != 0)
  {
    if ((v6 & 0x40000) == 0 || self->_tdp != equalCopy[20])
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x40000) != 0)
  {
LABEL_102:
    v7 = 0;
    goto LABEL_103;
  }

  if ((*&has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_dmdc0 != equalCopy[4])
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_dmdc1 != equalCopy[5])
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_dmdc2 != equalCopy[6])
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_gala != equalCopy[8])
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v6 & 0x80000) == 0 || self->_uplink != equalCopy[21])
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x80000) != 0)
  {
    goto LABEL_102;
  }

  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_axibr != equalCopy[2])
    {
      goto LABEL_102;
    }
  }

  else if (v6)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v6 & 0x1000) == 0 || self->_rflc != equalCopy[14])
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x1000) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_mcgAggregatedBw != equalCopy[9])
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_mcgDlCcConfigured != equalCopy[11])
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v6 & 0x100) == 0 || self->_mcgDlCcActivated != equalCopy[10])
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x100) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v6 & 0x800) == 0 || self->_mcgUlCcConfigured != equalCopy[13])
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x800) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_mcgUlCcActivated != equalCopy[12])
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x400) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v6 & 0x2000) == 0 || self->_scgAggregatedBw != equalCopy[15])
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x2000) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v6 & 0x8000) == 0 || self->_scgDlCcConfigured != equalCopy[17])
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x8000) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v6 & 0x4000) == 0 || self->_scgDlCcActivated != equalCopy[16])
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x4000) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v6 & 0x20000) == 0 || self->_scgUlCcConfigured != equalCopy[19])
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x20000) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v6 & 0x10000) == 0 || self->_scgUlCcActivated != equalCopy[18])
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x10000) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_durationMs != equalCopy[7])
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_deployment != equalCopy[3])
    {
      goto LABEL_102;
    }

    v7 = 1;
  }

  else
  {
    v7 = (equalCopy[22] & 2) == 0;
  }

LABEL_103:

  return v7;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 0x40000) != 0)
  {
    v3 = 2654435761 * self->_tdp;
    if ((*&has & 4) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_dmdc0;
      if ((*&has & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v3 = 0;
    if ((*&has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_dmdc1;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v5 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_dmdc2;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v6 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_gala;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v7 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_uplink;
    if (*&has)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v8 = 0;
  if (*&has)
  {
LABEL_8:
    v9 = 2654435761 * self->_axibr;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_rflc;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_mcgAggregatedBw;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_mcgDlCcConfigured;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_mcgDlCcActivated;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v13 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_13:
    v14 = 2654435761 * self->_mcgUlCcConfigured;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v14 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_14:
    v15 = 2654435761 * self->_mcgUlCcActivated;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    v16 = 0;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_29:
  v15 = 0;
  if ((*&has & 0x2000) == 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  v16 = 2654435761 * self->_scgAggregatedBw;
  if ((*&has & 0x8000) != 0)
  {
LABEL_16:
    v17 = 2654435761 * self->_scgDlCcConfigured;
    goto LABEL_32;
  }

LABEL_31:
  v17 = 0;
LABEL_32:
  if ((*&has & 0x4000) != 0)
  {
    v18 = 2654435761 * self->_scgDlCcActivated;
    if ((*&has & 0x20000) != 0)
    {
LABEL_34:
      v19 = 2654435761 * self->_scgUlCcConfigured;
      if ((*&has & 0x10000) != 0)
      {
        goto LABEL_35;
      }

      goto LABEL_40;
    }
  }

  else
  {
    v18 = 0;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_34;
    }
  }

  v19 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_35:
    v20 = 2654435761 * self->_scgUlCcActivated;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_36;
    }

LABEL_41:
    v21 = 0;
    if ((*&has & 2) != 0)
    {
      goto LABEL_37;
    }

LABEL_42:
    v22 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22;
  }

LABEL_40:
  v20 = 0;
  if ((*&has & 0x20) == 0)
  {
    goto LABEL_41;
  }

LABEL_36:
  v21 = 2654435761 * self->_durationMs;
  if ((*&has & 2) == 0)
  {
    goto LABEL_42;
  }

LABEL_37:
  v22 = 2654435761 * self->_deployment;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy[22];
  if ((v5 & 0x40000) != 0)
  {
    self->_tdp = fromCopy[20];
    *&self->_has |= 0x40000u;
    v5 = fromCopy[22];
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_dmdc0 = fromCopy[4];
  *&self->_has |= 4u;
  v5 = fromCopy[22];
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_dmdc1 = fromCopy[5];
  *&self->_has |= 8u;
  v5 = fromCopy[22];
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_dmdc2 = fromCopy[6];
  *&self->_has |= 0x10u;
  v5 = fromCopy[22];
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_gala = fromCopy[8];
  *&self->_has |= 0x40u;
  v5 = fromCopy[22];
  if ((v5 & 0x80000) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_uplink = fromCopy[21];
  *&self->_has |= 0x80000u;
  v5 = fromCopy[22];
  if ((v5 & 1) == 0)
  {
LABEL_8:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_axibr = fromCopy[2];
  *&self->_has |= 1u;
  v5 = fromCopy[22];
  if ((v5 & 0x1000) == 0)
  {
LABEL_9:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_rflc = fromCopy[14];
  *&self->_has |= 0x1000u;
  v5 = fromCopy[22];
  if ((v5 & 0x80) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_mcgAggregatedBw = fromCopy[9];
  *&self->_has |= 0x80u;
  v5 = fromCopy[22];
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_mcgDlCcConfigured = fromCopy[11];
  *&self->_has |= 0x200u;
  v5 = fromCopy[22];
  if ((v5 & 0x100) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_mcgDlCcActivated = fromCopy[10];
  *&self->_has |= 0x100u;
  v5 = fromCopy[22];
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_mcgUlCcConfigured = fromCopy[13];
  *&self->_has |= 0x800u;
  v5 = fromCopy[22];
  if ((v5 & 0x400) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_mcgUlCcActivated = fromCopy[12];
  *&self->_has |= 0x400u;
  v5 = fromCopy[22];
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_scgAggregatedBw = fromCopy[15];
  *&self->_has |= 0x2000u;
  v5 = fromCopy[22];
  if ((v5 & 0x8000) == 0)
  {
LABEL_16:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_scgDlCcConfigured = fromCopy[17];
  *&self->_has |= 0x8000u;
  v5 = fromCopy[22];
  if ((v5 & 0x4000) == 0)
  {
LABEL_17:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_scgDlCcActivated = fromCopy[16];
  *&self->_has |= 0x4000u;
  v5 = fromCopy[22];
  if ((v5 & 0x20000) == 0)
  {
LABEL_18:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_scgUlCcConfigured = fromCopy[19];
  *&self->_has |= 0x20000u;
  v5 = fromCopy[22];
  if ((v5 & 0x10000) == 0)
  {
LABEL_19:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_scgUlCcActivated = fromCopy[18];
  *&self->_has |= 0x10000u;
  v5 = fromCopy[22];
  if ((v5 & 0x20) == 0)
  {
LABEL_20:
    if ((v5 & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_43:
  self->_durationMs = fromCopy[7];
  *&self->_has |= 0x20u;
  if ((fromCopy[22] & 2) != 0)
  {
LABEL_21:
    self->_deployment = fromCopy[3];
    *&self->_has |= 2u;
  }

LABEL_22:
}

@end