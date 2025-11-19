@interface POWSchemaProvisionalPOWClientEvent
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (POWSchemaProvisionalPOWClientEvent)initWithDictionary:(id)a3;
- (POWSchemaProvisionalPOWClientEvent)initWithJSON:(id)a3;
- (POWSchemaProvisionalPOWUsage)usage;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (void)deleteUsage;
- (void)setUsage:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation POWSchemaProvisionalPOWClientEvent

- (id)qualifiedMessageName
{
  if ([(POWSchemaProvisionalPOWClientEvent *)self whichEvent_Type]== 101)
  {
    return @"com.apple.aiml.siri.power.ProvisionalPOWClientEvent.ProvisionalPOWUsage";
  }

  else
  {
    return @"com.apple.aiml.siri.power.ProvisionalPOWClientEvent";
  }
}

- (void)setUsage:(id)a3
{
  v3 = 101;
  if (!a3)
  {
    v3 = 0;
  }

  self->_whichEvent_Type = v3;
  objc_storeStrong(&self->_usage, a3);
}

- (POWSchemaProvisionalPOWUsage)usage
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_usage;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)deleteUsage
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    usage = self->_usage;
    self->_usage = 0;
    MEMORY[0x2821F96F8]();
  }
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(POWSchemaProvisionalPOWClientEvent *)self link];

  if (v4)
  {
    v5 = [(POWSchemaProvisionalPOWClientEvent *)self link];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(POWSchemaProvisionalPOWClientEvent *)self usage];

  if (v6)
  {
    v7 = [(POWSchemaProvisionalPOWClientEvent *)self usage];
    PBDataWriterWriteSubmessage();
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_13;
  }

  v6 = [(POWSchemaProvisionalPOWClientEvent *)self link];
  v7 = [v4 link];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_12;
  }

  v8 = [(POWSchemaProvisionalPOWClientEvent *)self link];
  if (v8)
  {
    v9 = v8;
    v10 = [(POWSchemaProvisionalPOWClientEvent *)self link];
    v11 = [v4 link];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v6 = [(POWSchemaProvisionalPOWClientEvent *)self usage];
  v7 = [v4 usage];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(POWSchemaProvisionalPOWClientEvent *)self usage];
    if (!v13)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = v13;
    v15 = [(POWSchemaProvisionalPOWClientEvent *)self usage];
    v16 = [v4 usage];
    v17 = [v15 isEqual:v16];

    if (v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_12:
  }

LABEL_13:
  v18 = 0;
LABEL_14:

  return v18;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (self->_link)
  {
    v4 = [(POWSchemaProvisionalPOWClientEvent *)self link];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"link"];
    }

    else
    {
      v6 = [MEMORY[0x277CBEB68] null];
      [v3 setObject:v6 forKeyedSubscript:@"link"];
    }
  }

  if (self->_usage)
  {
    v7 = [(POWSchemaProvisionalPOWClientEvent *)self usage];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"usage"];
    }

    else
    {
      v9 = [MEMORY[0x277CBEB68] null];
      [v3 setObject:v9 forKeyedSubscript:@"usage"];
    }
  }

  [(POWSchemaProvisionalPOWClientEvent *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (NSData)jsonData
{
  v2 = [(POWSchemaProvisionalPOWClientEvent *)self dictionaryRepresentation];
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

- (POWSchemaProvisionalPOWClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(POWSchemaProvisionalPOWClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (POWSchemaProvisionalPOWClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = POWSchemaProvisionalPOWClientEvent;
  v5 = [(POWSchemaProvisionalPOWClientEvent *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"link"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [objc_alloc(MEMORY[0x277D5A9E0]) initWithDictionary:v6];
      [(POWSchemaProvisionalPOWClientEvent *)v5 setLink:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"usage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[POWSchemaProvisionalPOWUsage alloc] initWithDictionary:v8];
      [(POWSchemaProvisionalPOWClientEvent *)v5 setUsage:v9];
    }

    v10 = v5;
  }

  return v5;
}

@end