@interface PFAPFADeviceDimensions
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PFAPFADeviceDimensions)initWithDictionary:(id)a3;
- (PFAPFADeviceDimensions)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation PFAPFADeviceDimensions

- (PFAPFADeviceDimensions)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PFAPFADeviceDimensions;
  v5 = [(PFAPFADeviceDimensions *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"systemBuild"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PFAPFADeviceDimensions *)v5 setSystemBuild:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"deviceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(PFAPFADeviceDimensions *)v5 setDeviceType:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"programCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PFAPFADeviceDimensions setProgramCode:](v5, "setProgramCode:", [v10 intValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (PFAPFADeviceDimensions)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PFAPFADeviceDimensions *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PFAPFADeviceDimensions *)self dictionaryRepresentation];
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
  if (self->_deviceType)
  {
    v4 = [(PFAPFADeviceDimensions *)self deviceType];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"deviceType"];
  }

  if (*&self->_has)
  {
    v6 = [(PFAPFADeviceDimensions *)self programCode]- 1;
    if (v6 > 4)
    {
      v7 = @"PROGRAMCODE_UNKNOWN";
    }

    else
    {
      v7 = off_1E78E0280[v6];
    }

    [v3 setObject:v7 forKeyedSubscript:@"programCode"];
  }

  if (self->_systemBuild)
  {
    v8 = [(PFAPFADeviceDimensions *)self systemBuild];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"systemBuild"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_systemBuild hash];
  v4 = [(NSString *)self->_deviceType hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_programCode;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(PFAPFADeviceDimensions *)self systemBuild];
  v6 = [v4 systemBuild];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(PFAPFADeviceDimensions *)self systemBuild];
  if (v7)
  {
    v8 = v7;
    v9 = [(PFAPFADeviceDimensions *)self systemBuild];
    v10 = [v4 systemBuild];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(PFAPFADeviceDimensions *)self deviceType];
  v6 = [v4 deviceType];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(PFAPFADeviceDimensions *)self deviceType];
  if (v12)
  {
    v13 = v12;
    v14 = [(PFAPFADeviceDimensions *)self deviceType];
    v15 = [v4 deviceType];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (v4[28] & 1))
  {
    if ((*&self->_has & 1) == 0 || (programCode = self->_programCode, programCode == [v4 programCode]))
    {
      v17 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(PFAPFADeviceDimensions *)self systemBuild];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(PFAPFADeviceDimensions *)self deviceType];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = v7;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    v6 = v7;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end