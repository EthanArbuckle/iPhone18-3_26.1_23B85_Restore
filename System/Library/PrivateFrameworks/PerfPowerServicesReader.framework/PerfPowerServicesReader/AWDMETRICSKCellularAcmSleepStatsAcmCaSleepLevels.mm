@interface AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAxibr:(id)a3;
- (int)StringAsDeployment:(id)a3;
- (int)StringAsDmdc0:(id)a3;
- (int)StringAsDmdc1:(id)a3;
- (int)StringAsDmdc2:(id)a3;
- (int)StringAsGala:(id)a3;
- (int)StringAsMcgDlCcActivated:(id)a3;
- (int)StringAsMcgDlCcConfigured:(id)a3;
- (int)StringAsMcgUlCcActivated:(id)a3;
- (int)StringAsMcgUlCcConfigured:(id)a3;
- (int)StringAsRflc:(id)a3;
- (int)StringAsScgDlCcActivated:(id)a3;
- (int)StringAsScgDlCcConfigured:(id)a3;
- (int)StringAsScgUlCcActivated:(id)a3;
- (int)StringAsScgUlCcConfigured:(id)a3;
- (int)StringAsTdp:(id)a3;
- (int)StringAsUplink:(id)a3;
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
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDeployment:(BOOL)a3;
- (void)setHasDmdc0:(BOOL)a3;
- (void)setHasDmdc1:(BOOL)a3;
- (void)setHasDmdc2:(BOOL)a3;
- (void)setHasDurationMs:(BOOL)a3;
- (void)setHasGala:(BOOL)a3;
- (void)setHasMcgAggregatedBw:(BOOL)a3;
- (void)setHasMcgDlCcActivated:(BOOL)a3;
- (void)setHasMcgDlCcConfigured:(BOOL)a3;
- (void)setHasMcgUlCcActivated:(BOOL)a3;
- (void)setHasMcgUlCcConfigured:(BOOL)a3;
- (void)setHasRflc:(BOOL)a3;
- (void)setHasScgAggregatedBw:(BOOL)a3;
- (void)setHasScgDlCcActivated:(BOOL)a3;
- (void)setHasScgDlCcConfigured:(BOOL)a3;
- (void)setHasScgUlCcActivated:(BOOL)a3;
- (void)setHasScgUlCcConfigured:(BOOL)a3;
- (void)setHasTdp:(BOOL)a3;
- (void)setHasUplink:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasTdp:(BOOL)a3
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

- (int)StringAsTdp:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"IDLE"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"ACTIVE"];
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

- (void)setHasDmdc0:(BOOL)a3
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

- (int)StringAsDmdc0:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"IDLE"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"ACTIVE"];
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

- (void)setHasDmdc1:(BOOL)a3
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

- (int)StringAsDmdc1:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"IDLE"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"ACTIVE"];
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

- (void)setHasDmdc2:(BOOL)a3
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

- (int)StringAsDmdc2:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"IDLE"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"ACTIVE"];
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

- (void)setHasGala:(BOOL)a3
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

- (int)StringAsGala:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"IDLE"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"ACTIVE"];
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

- (void)setHasUplink:(BOOL)a3
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

- (int)StringAsUplink:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"IDLE"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"ACTIVE"];
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

- (int)StringAsAxibr:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"IDLE"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"ACTIVE"];
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

- (void)setHasRflc:(BOOL)a3
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

- (int)StringAsRflc:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"IDLE"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"ACTIVE"];
  }

  return v4;
}

- (void)setHasMcgAggregatedBw:(BOOL)a3
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

- (void)setHasMcgDlCcConfigured:(BOOL)a3
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

- (int)StringAsMcgDlCcConfigured:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"PCC"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SCC_1"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SCC_2"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SCC_3"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SCC_4"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SCC_5"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SCC_6"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SCC_7"])
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

- (void)setHasMcgDlCcActivated:(BOOL)a3
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

- (int)StringAsMcgDlCcActivated:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"PCC"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SCC_1"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SCC_2"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SCC_3"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SCC_4"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SCC_5"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SCC_6"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SCC_7"])
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

- (void)setHasMcgUlCcConfigured:(BOOL)a3
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

- (int)StringAsMcgUlCcConfigured:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"PCC"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SCC_1"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SCC_2"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SCC_3"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SCC_4"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SCC_5"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SCC_6"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SCC_7"])
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

- (void)setHasMcgUlCcActivated:(BOOL)a3
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

- (int)StringAsMcgUlCcActivated:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"PCC"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SCC_1"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SCC_2"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SCC_3"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SCC_4"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SCC_5"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SCC_6"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SCC_7"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasScgAggregatedBw:(BOOL)a3
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

- (void)setHasScgDlCcConfigured:(BOOL)a3
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

- (int)StringAsScgDlCcConfigured:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"PCC"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SCC_1"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SCC_2"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SCC_3"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SCC_4"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SCC_5"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SCC_6"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SCC_7"])
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

- (void)setHasScgDlCcActivated:(BOOL)a3
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

- (int)StringAsScgDlCcActivated:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"PCC"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SCC_1"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SCC_2"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SCC_3"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SCC_4"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SCC_5"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SCC_6"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SCC_7"])
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

- (void)setHasScgUlCcConfigured:(BOOL)a3
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

- (int)StringAsScgUlCcConfigured:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"PCC"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SCC_1"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SCC_2"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SCC_3"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SCC_4"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SCC_5"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SCC_6"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SCC_7"])
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

- (void)setHasScgUlCcActivated:(BOOL)a3
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

- (int)StringAsScgUlCcActivated:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"PCC"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SCC_1"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SCC_2"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SCC_3"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SCC_4"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SCC_5"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SCC_6"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SCC_7"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasDurationMs:(BOOL)a3
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

- (void)setHasDeployment:(BOOL)a3
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

- (int)StringAsDeployment:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"LEGACY"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"LTE_IDLE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"NRSA_IDLE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"NRSA_INACTIVE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"LTE_CONNECTED"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"NRSA_CONNECTED"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"ENDC"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"NRDC"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"OTHER"])
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
  v5 = [(AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
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

    [v3 setObject:v6 forKey:@"tdp"];

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

  [v3 setObject:v8 forKey:@"dmdc0"];

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

  [v3 setObject:v10 forKey:@"dmdc1"];

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

  [v3 setObject:v12 forKey:@"dmdc2"];

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

  [v3 setObject:v14 forKey:@"gala"];

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

  [v3 setObject:v16 forKey:@"uplink"];

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

  [v3 setObject:v18 forKey:@"axibr"];

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

    [v3 setObject:v20 forKey:@"rflc"];

    has = self->_has;
  }

LABEL_58:
  if ((*&has & 0x80) != 0)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_mcgAggregatedBw];
    [v3 setObject:v21 forKey:@"mcg_aggregated_bw"];

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
    v23 = off_279A0F4D8[mcgDlCcConfigured];
  }

  [v3 setObject:v23 forKey:@"mcg_dl_cc_configured"];

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
    v25 = off_279A0F4D8[mcgDlCcActivated];
  }

  [v3 setObject:v25 forKey:@"mcg_dl_cc_activated"];

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
    v27 = off_279A0F4D8[mcgUlCcConfigured];
  }

  [v3 setObject:v27 forKey:@"mcg_ul_cc_configured"];

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
    v29 = off_279A0F4D8[mcgUlCcActivated];
  }

  [v3 setObject:v29 forKey:@"mcg_ul_cc_activated"];

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
  [v3 setObject:v30 forKey:@"scg_aggregated_bw"];

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
    v32 = off_279A0F4D8[scgDlCcConfigured];
  }

  [v3 setObject:v32 forKey:@"scg_dl_cc_configured"];

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
    v34 = off_279A0F4D8[scgDlCcActivated];
  }

  [v3 setObject:v34 forKey:@"scg_dl_cc_activated"];

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
    v36 = off_279A0F4D8[scgUlCcConfigured];
  }

  [v3 setObject:v36 forKey:@"scg_ul_cc_configured"];

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
    [v3 setObject:v39 forKey:@"duration_ms"];

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
    v38 = off_279A0F4D8[scgUlCcActivated];
  }

  [v3 setObject:v38 forKey:@"scg_ul_cc_activated"];

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
    v41 = off_279A0F520[deployment];
  }

  [v3 setObject:v41 forKey:@"deployment"];

LABEL_110:
  v42 = v3;

  return v3;
}

- (void)writeTo:(id)a3
{
  v25 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((*&has & 0x40000) != 0)
  {
    v4[20] = self->_tdp;
    v4[22] |= 0x40000u;
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

  v4[4] = self->_dmdc0;
  v4[22] |= 4u;
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
  v4[5] = self->_dmdc1;
  v4[22] |= 8u;
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
  v4[6] = self->_dmdc2;
  v4[22] |= 0x10u;
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
  v4[8] = self->_gala;
  v4[22] |= 0x40u;
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
  v4[21] = self->_uplink;
  v4[22] |= 0x80000u;
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
  v4[2] = self->_axibr;
  v4[22] |= 1u;
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
  v4[14] = self->_rflc;
  v4[22] |= 0x1000u;
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
  v4[9] = self->_mcgAggregatedBw;
  v4[22] |= 0x80u;
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
  v4[11] = self->_mcgDlCcConfigured;
  v4[22] |= 0x200u;
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
  v4[10] = self->_mcgDlCcActivated;
  v4[22] |= 0x100u;
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
  v4[13] = self->_mcgUlCcConfigured;
  v4[22] |= 0x800u;
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
  v4[12] = self->_mcgUlCcActivated;
  v4[22] |= 0x400u;
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
  v4[15] = self->_scgAggregatedBw;
  v4[22] |= 0x2000u;
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
  v4[17] = self->_scgDlCcConfigured;
  v4[22] |= 0x8000u;
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
  v4[16] = self->_scgDlCcActivated;
  v4[22] |= 0x4000u;
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
  v4[19] = self->_scgUlCcConfigured;
  v4[22] |= 0x20000u;
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
  v4[18] = self->_scgUlCcActivated;
  v4[22] |= 0x10000u;
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
  v4[7] = self->_durationMs;
  v4[22] |= 0x20u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_21:
    v4[3] = self->_deployment;
    v4[22] |= 2u;
  }

LABEL_22:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_102;
  }

  has = self->_has;
  v6 = v4[22];
  if ((*&has & 0x40000) != 0)
  {
    if ((v6 & 0x40000) == 0 || self->_tdp != v4[20])
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
    if ((v6 & 4) == 0 || self->_dmdc0 != v4[4])
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
    if ((v6 & 8) == 0 || self->_dmdc1 != v4[5])
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
    if ((v6 & 0x10) == 0 || self->_dmdc2 != v4[6])
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
    if ((v6 & 0x40) == 0 || self->_gala != v4[8])
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
    if ((v6 & 0x80000) == 0 || self->_uplink != v4[21])
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
    if ((v6 & 1) == 0 || self->_axibr != v4[2])
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
    if ((v6 & 0x1000) == 0 || self->_rflc != v4[14])
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
    if ((v6 & 0x80) == 0 || self->_mcgAggregatedBw != v4[9])
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
    if ((v6 & 0x200) == 0 || self->_mcgDlCcConfigured != v4[11])
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
    if ((v6 & 0x100) == 0 || self->_mcgDlCcActivated != v4[10])
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
    if ((v6 & 0x800) == 0 || self->_mcgUlCcConfigured != v4[13])
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
    if ((v6 & 0x400) == 0 || self->_mcgUlCcActivated != v4[12])
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
    if ((v6 & 0x2000) == 0 || self->_scgAggregatedBw != v4[15])
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
    if ((v6 & 0x8000) == 0 || self->_scgDlCcConfigured != v4[17])
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
    if ((v6 & 0x4000) == 0 || self->_scgDlCcActivated != v4[16])
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
    if ((v6 & 0x20000) == 0 || self->_scgUlCcConfigured != v4[19])
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
    if ((v6 & 0x10000) == 0 || self->_scgUlCcActivated != v4[18])
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
    if ((v6 & 0x20) == 0 || self->_durationMs != v4[7])
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
    if ((v6 & 2) == 0 || self->_deployment != v4[3])
    {
      goto LABEL_102;
    }

    v7 = 1;
  }

  else
  {
    v7 = (v4[22] & 2) == 0;
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4[22];
  if ((v5 & 0x40000) != 0)
  {
    self->_tdp = v4[20];
    *&self->_has |= 0x40000u;
    v5 = v4[22];
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

  self->_dmdc0 = v4[4];
  *&self->_has |= 4u;
  v5 = v4[22];
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
  self->_dmdc1 = v4[5];
  *&self->_has |= 8u;
  v5 = v4[22];
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
  self->_dmdc2 = v4[6];
  *&self->_has |= 0x10u;
  v5 = v4[22];
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
  self->_gala = v4[8];
  *&self->_has |= 0x40u;
  v5 = v4[22];
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
  self->_uplink = v4[21];
  *&self->_has |= 0x80000u;
  v5 = v4[22];
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
  self->_axibr = v4[2];
  *&self->_has |= 1u;
  v5 = v4[22];
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
  self->_rflc = v4[14];
  *&self->_has |= 0x1000u;
  v5 = v4[22];
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
  self->_mcgAggregatedBw = v4[9];
  *&self->_has |= 0x80u;
  v5 = v4[22];
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
  self->_mcgDlCcConfigured = v4[11];
  *&self->_has |= 0x200u;
  v5 = v4[22];
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
  self->_mcgDlCcActivated = v4[10];
  *&self->_has |= 0x100u;
  v5 = v4[22];
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
  self->_mcgUlCcConfigured = v4[13];
  *&self->_has |= 0x800u;
  v5 = v4[22];
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
  self->_mcgUlCcActivated = v4[12];
  *&self->_has |= 0x400u;
  v5 = v4[22];
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
  self->_scgAggregatedBw = v4[15];
  *&self->_has |= 0x2000u;
  v5 = v4[22];
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
  self->_scgDlCcConfigured = v4[17];
  *&self->_has |= 0x8000u;
  v5 = v4[22];
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
  self->_scgDlCcActivated = v4[16];
  *&self->_has |= 0x4000u;
  v5 = v4[22];
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
  self->_scgUlCcConfigured = v4[19];
  *&self->_has |= 0x20000u;
  v5 = v4[22];
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
  self->_scgUlCcActivated = v4[18];
  *&self->_has |= 0x10000u;
  v5 = v4[22];
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
  self->_durationMs = v4[7];
  *&self->_has |= 0x20u;
  if ((v4[22] & 2) != 0)
  {
LABEL_21:
    self->_deployment = v4[3];
    *&self->_has |= 2u;
  }

LABEL_22:
}

@end