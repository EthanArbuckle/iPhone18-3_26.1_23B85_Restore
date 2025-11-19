@interface POWSchemaProvisionalPOWProcessUsage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (POWSchemaProvisionalPOWProcessUsage)initWithDictionary:(id)a3;
- (POWSchemaProvisionalPOWProcessUsage)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setHasCpuInstructions:(BOOL)a3;
- (void)setHasGpuCycles:(BOOL)a3;
- (void)setHasMemoryFootprint:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation POWSchemaProvisionalPOWProcessUsage

- (void)setHasCpuInstructions:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasGpuCycles:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasMemoryFootprint:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  has = self->_has;
  if (has)
  {
    cpuCycles = self->_cpuCycles;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  cpuInstructions = self->_cpuInstructions;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  gpuCycles = self->_gpuCycles;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    memoryFootprint = self->_memoryFootprint;
    PBDataWriterWriteUint64Field();
  }

LABEL_6:
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  has = self->_has;
  v6 = v4[40];
  if ((v6 & 1) != (has & 1))
  {
    goto LABEL_18;
  }

  if (*&self->_has)
  {
    cpuCycles = self->_cpuCycles;
    if (cpuCycles != [v4 cpuCycles])
    {
      goto LABEL_18;
    }

    has = self->_has;
    v6 = v4[40];
  }

  v8 = v6 ^ has;
  if ((v8 & 2) != 0)
  {
    goto LABEL_18;
  }

  if ((has & 2) != 0)
  {
    cpuInstructions = self->_cpuInstructions;
    if (cpuInstructions != [v4 cpuInstructions])
    {
      goto LABEL_18;
    }

    has = self->_has;
    v8 = v4[40] ^ has;
  }

  if ((v8 & 4) != 0)
  {
    goto LABEL_18;
  }

  if ((has & 4) != 0)
  {
    gpuCycles = self->_gpuCycles;
    if (gpuCycles == [v4 gpuCycles])
    {
      has = self->_has;
      v8 = v4[40] ^ has;
      goto LABEL_14;
    }

LABEL_18:
    v12 = 0;
    goto LABEL_19;
  }

LABEL_14:
  if ((v8 & 8) != 0)
  {
    goto LABEL_18;
  }

  if ((has & 8) != 0)
  {
    memoryFootprint = self->_memoryFootprint;
    if (memoryFootprint != [v4 memoryFootprint])
    {
      goto LABEL_18;
    }
  }

  v12 = 1;
LABEL_19:

  return v12;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_cpuCycles;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761u * self->_cpuInstructions;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v5 = 0;
      return v3 ^ v2 ^ v4 ^ v5;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = 2654435761u * self->_gpuCycles;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761u * self->_memoryFootprint;
  return v3 ^ v2 ^ v4 ^ v5;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[POWSchemaProvisionalPOWProcessUsage cpuCycles](self, "cpuCycles")}];
    [v3 setObject:v7 forKeyedSubscript:@"cpuCycles"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[POWSchemaProvisionalPOWProcessUsage cpuInstructions](self, "cpuInstructions")}];
  [v3 setObject:v8 forKeyedSubscript:@"cpuInstructions"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[POWSchemaProvisionalPOWProcessUsage gpuCycles](self, "gpuCycles")}];
  [v3 setObject:v9 forKeyedSubscript:@"gpuCycles"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[POWSchemaProvisionalPOWProcessUsage memoryFootprint](self, "memoryFootprint")}];
    [v3 setObject:v5 forKeyedSubscript:@"memoryFootprint"];
  }

LABEL_6:
  [(POWSchemaProvisionalPOWProcessUsage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (NSData)jsonData
{
  v2 = [(POWSchemaProvisionalPOWProcessUsage *)self dictionaryRepresentation];
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (POWSchemaProvisionalPOWProcessUsage)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(POWSchemaProvisionalPOWProcessUsage *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (POWSchemaProvisionalPOWProcessUsage)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = POWSchemaProvisionalPOWProcessUsage;
  v5 = [(POWSchemaProvisionalPOWProcessUsage *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"cpuCycles"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POWSchemaProvisionalPOWProcessUsage setCpuCycles:](v5, "setCpuCycles:", [v6 unsignedLongLongValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"cpuInstructions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POWSchemaProvisionalPOWProcessUsage setCpuInstructions:](v5, "setCpuInstructions:", [v7 unsignedLongLongValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"gpuCycles"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POWSchemaProvisionalPOWProcessUsage setGpuCycles:](v5, "setGpuCycles:", [v8 unsignedLongLongValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"memoryFootprint"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POWSchemaProvisionalPOWProcessUsage setMemoryFootprint:](v5, "setMemoryFootprint:", [v9 unsignedLongLongValue]);
    }

    v10 = v5;
  }

  return v5;
}

@end