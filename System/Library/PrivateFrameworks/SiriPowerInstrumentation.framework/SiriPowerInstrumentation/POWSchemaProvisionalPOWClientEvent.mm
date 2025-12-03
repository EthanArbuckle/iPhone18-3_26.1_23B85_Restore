@interface POWSchemaProvisionalPOWClientEvent
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (POWSchemaProvisionalPOWClientEvent)initWithDictionary:(id)dictionary;
- (POWSchemaProvisionalPOWClientEvent)initWithJSON:(id)n;
- (POWSchemaProvisionalPOWUsage)usage;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (void)deleteUsage;
- (void)setUsage:(id)usage;
- (void)writeTo:(id)to;
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

- (void)setUsage:(id)usage
{
  v3 = 101;
  if (!usage)
  {
    v3 = 0;
  }

  self->_whichEvent_Type = v3;
  objc_storeStrong(&self->_usage, usage);
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

- (void)writeTo:(id)to
{
  toCopy = to;
  link = [(POWSchemaProvisionalPOWClientEvent *)self link];

  if (link)
  {
    link2 = [(POWSchemaProvisionalPOWClientEvent *)self link];
    PBDataWriterWriteSubmessage();
  }

  usage = [(POWSchemaProvisionalPOWClientEvent *)self usage];

  if (usage)
  {
    usage2 = [(POWSchemaProvisionalPOWClientEvent *)self usage];
    PBDataWriterWriteSubmessage();
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_13;
  }

  link = [(POWSchemaProvisionalPOWClientEvent *)self link];
  link2 = [equalCopy link];
  if ((link != 0) == (link2 == 0))
  {
    goto LABEL_12;
  }

  link3 = [(POWSchemaProvisionalPOWClientEvent *)self link];
  if (link3)
  {
    v9 = link3;
    link4 = [(POWSchemaProvisionalPOWClientEvent *)self link];
    link5 = [equalCopy link];
    v12 = [link4 isEqual:link5];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  link = [(POWSchemaProvisionalPOWClientEvent *)self usage];
  link2 = [equalCopy usage];
  if ((link != 0) != (link2 == 0))
  {
    usage = [(POWSchemaProvisionalPOWClientEvent *)self usage];
    if (!usage)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = usage;
    usage2 = [(POWSchemaProvisionalPOWClientEvent *)self usage];
    usage3 = [equalCopy usage];
    v17 = [usage2 isEqual:usage3];

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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (self->_link)
  {
    link = [(POWSchemaProvisionalPOWClientEvent *)self link];
    dictionaryRepresentation = [link dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"link"];
    }

    else
    {
      null = [MEMORY[0x277CBEB68] null];
      [dictionary setObject:null forKeyedSubscript:@"link"];
    }
  }

  if (self->_usage)
  {
    usage = [(POWSchemaProvisionalPOWClientEvent *)self usage];
    dictionaryRepresentation2 = [usage dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"usage"];
    }

    else
    {
      null2 = [MEMORY[0x277CBEB68] null];
      [dictionary setObject:null2 forKeyedSubscript:@"usage"];
    }
  }

  [(POWSchemaProvisionalPOWClientEvent *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(POWSchemaProvisionalPOWClientEvent *)self dictionaryRepresentation];
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

- (POWSchemaProvisionalPOWClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(POWSchemaProvisionalPOWClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (POWSchemaProvisionalPOWClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = POWSchemaProvisionalPOWClientEvent;
  v5 = [(POWSchemaProvisionalPOWClientEvent *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"link"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [objc_alloc(MEMORY[0x277D5A9E0]) initWithDictionary:v6];
      [(POWSchemaProvisionalPOWClientEvent *)v5 setLink:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"usage"];
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