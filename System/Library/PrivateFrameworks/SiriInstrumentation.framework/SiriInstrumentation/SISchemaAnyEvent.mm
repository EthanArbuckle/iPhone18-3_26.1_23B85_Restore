@interface SISchemaAnyEvent
- (BOOL)isEqual:(id)equal;
- (Class)topLevelUnionTypeClass;
- (NSData)jsonData;
- (SISchemaAnyEvent)initWithAnyEventType:(int)type payload:(id)payload;
- (SISchemaAnyEvent)initWithDictionary:(id)dictionary;
- (SISchemaAnyEvent)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (id)unwrap;
- (unint64_t)hash;
- (void)unwrapMessageWithCompletion:(id)completion;
- (void)willProduceDictionaryRepresentation:(id)representation;
- (void)writeTo:(id)to;
@end

@implementation SISchemaAnyEvent

- (id)unwrap
{
  topLevelUnionTypeClass = [(SISchemaAnyEvent *)self topLevelUnionTypeClass];
  if (topLevelUnionTypeClass)
  {
    v4 = [topLevelUnionTypeClass alloc];
    payload = [(SISchemaAnyEvent *)self payload];
    v6 = [v4 initWithData:payload];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (Class)topLevelUnionTypeClass
{
  anyEventType = [(SISchemaAnyEvent *)self anyEventType];
  v3 = 0;
  switch(anyEventType)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 106:
    case 107:
    case 108:
    case 109:
    case 112:
    case 113:
      v3 = objc_opt_class();
      break;
    default:
      break;
  }

  return v3;
}

- (void)willProduceDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  unwrap = [(SISchemaAnyEvent *)self unwrap];
  dictionaryRepresentation = [unwrap dictionaryRepresentation];
  [representationCopy setObject:dictionaryRepresentation forKeyedSubscript:@"payload"];
}

- (SISchemaAnyEvent)initWithAnyEventType:(int)type payload:(id)payload
{
  v4 = *&type;
  payloadCopy = payload;
  v10.receiver = self;
  v10.super_class = SISchemaAnyEvent;
  v7 = [(SISchemaAnyEvent *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(SISchemaAnyEvent *)v7 setAnyEventType:v4];
    [(SISchemaAnyEvent *)v8 setPayload:payloadCopy];
  }

  return v8;
}

- (SISchemaAnyEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = SISchemaAnyEvent;
  v5 = [(SISchemaAnyEvent *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"anyEventType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaAnyEvent setAnyEventType:](v5, "setAnyEventType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"payload"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v7 options:0];
      [(SISchemaAnyEvent *)v5 setPayload:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (SISchemaAnyEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaAnyEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaAnyEvent *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [(SISchemaAnyEvent *)self anyEventType]- 1;
    if (v4 > 0x70)
    {
      v5 = @"UNKNOWN_EVENT";
    }

    else
    {
      v5 = off_1E78E2E78[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"anyEventType"];
  }

  if (self->_payload)
  {
    payload = [(SISchemaAnyEvent *)self payload];
    v7 = [payload base64EncodedStringWithOptions:0];
    if (v7)
    {
      [dictionary setObject:v7 forKeyedSubscript:@"payload"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"payload"];
    }
  }

  [(SISchemaAnyEvent *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_anyEventType;
  }

  else
  {
    v2 = 0;
  }

  return [(NSData *)self->_payload hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (anyEventType = self->_anyEventType, anyEventType == [equalCopy anyEventType]))
      {
        payload = [(SISchemaAnyEvent *)self payload];
        payload2 = [equalCopy payload];
        v8 = payload2;
        if ((payload != 0) != (payload2 == 0))
        {
          payload3 = [(SISchemaAnyEvent *)self payload];
          if (!payload3)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = payload3;
          payload4 = [(SISchemaAnyEvent *)self payload];
          payload5 = [equalCopy payload];
          v13 = [payload4 isEqual:payload5];

          if (v13)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }
      }
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  payload = [(SISchemaAnyEvent *)self payload];

  v5 = toCopy;
  if (payload)
  {
    PBDataWriterWriteDataField();
    v5 = toCopy;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

- (void)unwrapMessageWithCompletion:(id)completion
{
  completionCopy = completion;
  unwrap = [(SISchemaAnyEvent *)self unwrap];
  v6 = unwrap;
  if (unwrap)
  {
    [unwrap unwrapMessageWithCompletion:completionCopy];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, 0);
  }
}

@end