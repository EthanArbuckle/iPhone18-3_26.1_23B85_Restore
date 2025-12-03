@interface POWSchemaProvisionalPOWProcessUsage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (POWSchemaProvisionalPOWProcessUsage)initWithDictionary:(id)dictionary;
- (POWSchemaProvisionalPOWProcessUsage)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setHasCpuInstructions:(BOOL)instructions;
- (void)setHasGpuCycles:(BOOL)cycles;
- (void)setHasMemoryFootprint:(BOOL)footprint;
- (void)writeTo:(id)to;
@end

@implementation POWSchemaProvisionalPOWProcessUsage

- (void)setHasCpuInstructions:(BOOL)instructions
{
  if (instructions)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasGpuCycles:(BOOL)cycles
{
  if (cycles)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasMemoryFootprint:(BOOL)footprint
{
  if (footprint)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  has = self->_has;
  v6 = equalCopy[40];
  if ((v6 & 1) != (has & 1))
  {
    goto LABEL_18;
  }

  if (*&self->_has)
  {
    cpuCycles = self->_cpuCycles;
    if (cpuCycles != [equalCopy cpuCycles])
    {
      goto LABEL_18;
    }

    has = self->_has;
    v6 = equalCopy[40];
  }

  v8 = v6 ^ has;
  if ((v8 & 2) != 0)
  {
    goto LABEL_18;
  }

  if ((has & 2) != 0)
  {
    cpuInstructions = self->_cpuInstructions;
    if (cpuInstructions != [equalCopy cpuInstructions])
    {
      goto LABEL_18;
    }

    has = self->_has;
    v8 = equalCopy[40] ^ has;
  }

  if ((v8 & 4) != 0)
  {
    goto LABEL_18;
  }

  if ((has & 4) != 0)
  {
    gpuCycles = self->_gpuCycles;
    if (gpuCycles == [equalCopy gpuCycles])
    {
      has = self->_has;
      v8 = equalCopy[40] ^ has;
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
    if (memoryFootprint != [equalCopy memoryFootprint])
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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[POWSchemaProvisionalPOWProcessUsage cpuCycles](self, "cpuCycles")}];
    [dictionary setObject:v7 forKeyedSubscript:@"cpuCycles"];

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
  [dictionary setObject:v8 forKeyedSubscript:@"cpuInstructions"];

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
  [dictionary setObject:v9 forKeyedSubscript:@"gpuCycles"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[POWSchemaProvisionalPOWProcessUsage memoryFootprint](self, "memoryFootprint")}];
    [dictionary setObject:v5 forKeyedSubscript:@"memoryFootprint"];
  }

LABEL_6:
  [(POWSchemaProvisionalPOWProcessUsage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(POWSchemaProvisionalPOWProcessUsage *)self dictionaryRepresentation];
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (POWSchemaProvisionalPOWProcessUsage)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(POWSchemaProvisionalPOWProcessUsage *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (POWSchemaProvisionalPOWProcessUsage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = POWSchemaProvisionalPOWProcessUsage;
  v5 = [(POWSchemaProvisionalPOWProcessUsage *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"cpuCycles"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POWSchemaProvisionalPOWProcessUsage setCpuCycles:](v5, "setCpuCycles:", [v6 unsignedLongLongValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"cpuInstructions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POWSchemaProvisionalPOWProcessUsage setCpuInstructions:](v5, "setCpuInstructions:", [v7 unsignedLongLongValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"gpuCycles"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POWSchemaProvisionalPOWProcessUsage setGpuCycles:](v5, "setGpuCycles:", [v8 unsignedLongLongValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"memoryFootprint"];
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