@interface MWTSchemaMWTVMCPUStatsReported
- (BOOL)isEqual:(id)a3;
- (MWTSchemaMWTVMCPUStatsReported)initWithDictionary:(id)a3;
- (MWTSchemaMWTVMCPUStatsReported)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasCompressions:(BOOL)a3;
- (void)setHasCpuTicksIdle:(BOOL)a3;
- (void)setHasCpuTicksNice:(BOOL)a3;
- (void)setHasCpuTicksSystem:(BOOL)a3;
- (void)setHasCpuTicksUser:(BOOL)a3;
- (void)setHasDecompressions:(BOOL)a3;
- (void)setHasFaults:(BOOL)a3;
- (void)setHasPageins:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MWTSchemaMWTVMCPUStatsReported

- (MWTSchemaMWTVMCPUStatsReported)initWithDictionary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = MWTSchemaMWTVMCPUStatsReported;
  v5 = [(MWTSchemaMWTVMCPUStatsReported *)&v20 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"snapshotStage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTVMCPUStatsReported setSnapshotStage:](v5, "setSnapshotStage:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"cpuTicksSystem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTVMCPUStatsReported setCpuTicksSystem:](v5, "setCpuTicksSystem:", [v7 unsignedLongLongValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"cpuTicksUser"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTVMCPUStatsReported setCpuTicksUser:](v5, "setCpuTicksUser:", [v8 unsignedLongLongValue]);
    }

    v9 = [v4 objectForKeyedSubscript:{@"cpuTicksIdle", v8}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTVMCPUStatsReported setCpuTicksIdle:](v5, "setCpuTicksIdle:", [v9 unsignedLongLongValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"cpuTicksNice"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTVMCPUStatsReported setCpuTicksNice:](v5, "setCpuTicksNice:", [v10 unsignedLongLongValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"compressions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTVMCPUStatsReported setCompressions:](v5, "setCompressions:", [v11 unsignedLongLongValue]);
    }

    v19 = v7;
    v12 = [v4 objectForKeyedSubscript:@"decompressions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTVMCPUStatsReported setDecompressions:](v5, "setDecompressions:", [v12 unsignedLongLongValue]);
    }

    v13 = v6;
    v14 = [v4 objectForKeyedSubscript:@"pageins"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTVMCPUStatsReported setPageins:](v5, "setPageins:", [v14 unsignedLongLongValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"faults"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTVMCPUStatsReported setFaults:](v5, "setFaults:", [v15 unsignedLongLongValue]);
    }

    v16 = v5;
  }

  return v5;
}

- (MWTSchemaMWTVMCPUStatsReported)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MWTSchemaMWTVMCPUStatsReported *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MWTSchemaMWTVMCPUStatsReported *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MWTSchemaMWTVMCPUStatsReported compressions](self, "compressions")}];
    [v3 setObject:v5 forKeyedSubscript:@"compressions"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MWTSchemaMWTVMCPUStatsReported cpuTicksIdle](self, "cpuTicksIdle")}];
  [v3 setObject:v6 forKeyedSubscript:@"cpuTicksIdle"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MWTSchemaMWTVMCPUStatsReported cpuTicksNice](self, "cpuTicksNice")}];
  [v3 setObject:v7 forKeyedSubscript:@"cpuTicksNice"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MWTSchemaMWTVMCPUStatsReported cpuTicksSystem](self, "cpuTicksSystem")}];
  [v3 setObject:v8 forKeyedSubscript:@"cpuTicksSystem"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MWTSchemaMWTVMCPUStatsReported cpuTicksUser](self, "cpuTicksUser")}];
  [v3 setObject:v9 forKeyedSubscript:@"cpuTicksUser"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MWTSchemaMWTVMCPUStatsReported decompressions](self, "decompressions")}];
  [v3 setObject:v10 forKeyedSubscript:@"decompressions"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MWTSchemaMWTVMCPUStatsReported pageins](self, "pageins")}];
    [v3 setObject:v12 forKeyedSubscript:@"pageins"];

    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_19:
    v13 = [(MWTSchemaMWTVMCPUStatsReported *)self snapshotStage]- 1;
    if (v13 > 4)
    {
      v14 = @"MWTVMCPUSNAPSHOTSTAGE_UNKNOWN";
    }

    else
    {
      v14 = off_1E78DAFE8[v13];
    }

    [v3 setObject:v14 forKeyedSubscript:@"snapshotStage"];
    goto LABEL_23;
  }

LABEL_17:
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MWTSchemaMWTVMCPUStatsReported faults](self, "faults")}];
  [v3 setObject:v11 forKeyedSubscript:@"faults"];

  has = self->_has;
  if ((has & 0x80) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if (has)
  {
    goto LABEL_19;
  }

LABEL_23:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v3 = 2654435761 * self->_snapshotStage;
    if ((has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761u * self->_cpuTicksSystem;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 4) != 0)
  {
LABEL_4:
    v5 = 2654435761u * self->_cpuTicksUser;
    if ((has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v5 = 0;
  if ((has & 8) != 0)
  {
LABEL_5:
    v6 = 2654435761u * self->_cpuTicksIdle;
    if ((has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_6:
    v7 = 2654435761u * self->_cpuTicksNice;
    if ((has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v7 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_7:
    v8 = 2654435761u * self->_compressions;
    if ((has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_8:
    v9 = 2654435761u * self->_decompressions;
    if ((has & 0x80) != 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    v10 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_10;
    }

LABEL_19:
    v11 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
  }

LABEL_17:
  v9 = 0;
  if ((has & 0x80) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v10 = 2654435761u * self->_pageins;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  v11 = 2654435761u * self->_faults;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  has = self->_has;
  v6 = v4[40];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_38;
  }

  if (*&has)
  {
    snapshotStage = self->_snapshotStage;
    if (snapshotStage != [v4 snapshotStage])
    {
      goto LABEL_38;
    }

    has = self->_has;
    v6 = v4[40];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_38;
  }

  if (v8)
  {
    cpuTicksSystem = self->_cpuTicksSystem;
    if (cpuTicksSystem != [v4 cpuTicksSystem])
    {
      goto LABEL_38;
    }

    has = self->_has;
    v6 = v4[40];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_38;
  }

  if (v10)
  {
    cpuTicksUser = self->_cpuTicksUser;
    if (cpuTicksUser != [v4 cpuTicksUser])
    {
      goto LABEL_38;
    }

    has = self->_has;
    v6 = v4[40];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_38;
  }

  if (v12)
  {
    cpuTicksIdle = self->_cpuTicksIdle;
    if (cpuTicksIdle != [v4 cpuTicksIdle])
    {
      goto LABEL_38;
    }

    has = self->_has;
    v6 = v4[40];
  }

  v14 = (*&has >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_38;
  }

  if (v14)
  {
    cpuTicksNice = self->_cpuTicksNice;
    if (cpuTicksNice != [v4 cpuTicksNice])
    {
      goto LABEL_38;
    }

    has = self->_has;
    v6 = v4[40];
  }

  v16 = (*&has >> 5) & 1;
  if (v16 != ((v6 >> 5) & 1))
  {
    goto LABEL_38;
  }

  if (v16)
  {
    compressions = self->_compressions;
    if (compressions != [v4 compressions])
    {
      goto LABEL_38;
    }

    has = self->_has;
    v6 = v4[40];
  }

  v18 = (*&has >> 6) & 1;
  if (v18 != ((v6 >> 6) & 1))
  {
    goto LABEL_38;
  }

  if (v18)
  {
    decompressions = self->_decompressions;
    if (decompressions != [v4 decompressions])
    {
      goto LABEL_38;
    }

    has = self->_has;
    v6 = v4[40];
  }

  v20 = (*&has >> 7) & 1;
  if (v20 != ((v6 >> 7) & 1))
  {
    goto LABEL_38;
  }

  if (v20)
  {
    pageins = self->_pageins;
    if (pageins == [v4 pageins])
    {
      has = self->_has;
      v6 = v4[40];
      goto LABEL_34;
    }

LABEL_38:
    v24 = 0;
    goto LABEL_39;
  }

LABEL_34:
  v22 = (*&has >> 8) & 1;
  if (v22 != ((v6 >> 8) & 1))
  {
    goto LABEL_38;
  }

  if (v22)
  {
    faults = self->_faults;
    if (faults != [v4 faults])
    {
      goto LABEL_38;
    }
  }

  v24 = 1;
LABEL_39:

  return v24;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_10:
    PBDataWriterWriteUint64Field();
  }

LABEL_11:
}

- (void)setHasFaults:(BOOL)a3
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

- (void)setHasPageins:(BOOL)a3
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

- (void)setHasDecompressions:(BOOL)a3
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

- (void)setHasCompressions:(BOOL)a3
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

- (void)setHasCpuTicksNice:(BOOL)a3
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

- (void)setHasCpuTicksIdle:(BOOL)a3
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

- (void)setHasCpuTicksUser:(BOOL)a3
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

- (void)setHasCpuTicksSystem:(BOOL)a3
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

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end