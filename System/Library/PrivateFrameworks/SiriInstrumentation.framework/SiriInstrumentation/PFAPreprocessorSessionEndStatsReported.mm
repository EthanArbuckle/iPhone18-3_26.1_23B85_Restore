@interface PFAPreprocessorSessionEndStatsReported
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PFAPreprocessorSessionEndStatsReported)initWithDictionary:(id)dictionary;
- (PFAPreprocessorSessionEndStatsReported)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation PFAPreprocessorSessionEndStatsReported

- (PFAPreprocessorSessionEndStatsReported)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = PFAPreprocessorSessionEndStatsReported;
  v5 = [(PFAPreprocessorSessionEndStatsReported *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"offDeviceClockStatistics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PFAProcessedClockStatistics alloc] initWithDictionary:v6];
      [(PFAPreprocessorSessionEndStatsReported *)v5 setOffDeviceClockStatistics:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (PFAPreprocessorSessionEndStatsReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PFAPreprocessorSessionEndStatsReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PFAPreprocessorSessionEndStatsReported *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_offDeviceClockStatistics)
  {
    offDeviceClockStatistics = [(PFAPreprocessorSessionEndStatsReported *)self offDeviceClockStatistics];
    dictionaryRepresentation = [offDeviceClockStatistics dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"offDeviceClockStatistics"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"offDeviceClockStatistics"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    offDeviceClockStatistics = [(PFAPreprocessorSessionEndStatsReported *)self offDeviceClockStatistics];
    offDeviceClockStatistics2 = [equalCopy offDeviceClockStatistics];
    v7 = offDeviceClockStatistics2;
    if ((offDeviceClockStatistics != 0) != (offDeviceClockStatistics2 == 0))
    {
      offDeviceClockStatistics3 = [(PFAPreprocessorSessionEndStatsReported *)self offDeviceClockStatistics];
      if (!offDeviceClockStatistics3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = offDeviceClockStatistics3;
      offDeviceClockStatistics4 = [(PFAPreprocessorSessionEndStatsReported *)self offDeviceClockStatistics];
      offDeviceClockStatistics5 = [equalCopy offDeviceClockStatistics];
      v12 = [offDeviceClockStatistics4 isEqual:offDeviceClockStatistics5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  offDeviceClockStatistics = [(PFAPreprocessorSessionEndStatsReported *)self offDeviceClockStatistics];

  if (offDeviceClockStatistics)
  {
    offDeviceClockStatistics2 = [(PFAPreprocessorSessionEndStatsReported *)self offDeviceClockStatistics];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = PFAPreprocessorSessionEndStatsReported;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(PFAPreprocessorSessionEndStatsReported *)self offDeviceClockStatistics:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(PFAPreprocessorSessionEndStatsReported *)self deleteOffDeviceClockStatistics];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end