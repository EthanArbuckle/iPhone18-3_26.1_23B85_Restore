@interface SUTSchemaTestExecutionEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (SUTSchemaTestAssociatedSchemaIdentifier)testAssociatedSchemaIdentifier;
- (SUTSchemaTestExecutionBegin)testExecutionBegin;
- (SUTSchemaTestExecutionEnd)testExecutionEnd;
- (SUTSchemaTestExecutionEvent)initWithDictionary:(id)dictionary;
- (SUTSchemaTestExecutionEvent)initWithJSON:(id)n;
- (SUTSchemaTestOutcomeRecorded)testOutcomeRecorded;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteTestAssociatedSchemaIdentifier;
- (void)deleteTestExecutionBegin;
- (void)deleteTestExecutionEnd;
- (void)deleteTestOutcomeRecorded;
- (void)setTestAssociatedSchemaIdentifier:(id)identifier;
- (void)setTestExecutionBegin:(id)begin;
- (void)setTestExecutionEnd:(id)end;
- (void)setTestOutcomeRecorded:(id)recorded;
- (void)writeTo:(id)to;
@end

@implementation SUTSchemaTestExecutionEvent

- (SUTSchemaTestExecutionEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = SUTSchemaTestExecutionEvent;
  v5 = [(SUTSchemaTestExecutionEvent *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"metadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SUTSchemaTestExecutionMetadata alloc] initWithDictionary:v6];
      [(SUTSchemaTestExecutionEvent *)v5 setMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"testExecutionBegin"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SUTSchemaTestExecutionBegin alloc] initWithDictionary:v8];
      [(SUTSchemaTestExecutionEvent *)v5 setTestExecutionBegin:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"testExecutionEnd"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SUTSchemaTestExecutionEnd alloc] initWithDictionary:v10];
      [(SUTSchemaTestExecutionEvent *)v5 setTestExecutionEnd:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"testAssociatedSchemaIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SUTSchemaTestAssociatedSchemaIdentifier alloc] initWithDictionary:v12];
      [(SUTSchemaTestExecutionEvent *)v5 setTestAssociatedSchemaIdentifier:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"testOutcomeRecorded"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SUTSchemaTestOutcomeRecorded alloc] initWithDictionary:v14];
      [(SUTSchemaTestExecutionEvent *)v5 setTestOutcomeRecorded:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (SUTSchemaTestExecutionEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SUTSchemaTestExecutionEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SUTSchemaTestExecutionEvent *)self dictionaryRepresentation];
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
  if (self->_metadata)
  {
    metadata = [(SUTSchemaTestExecutionEvent *)self metadata];
    dictionaryRepresentation = [metadata dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"metadata"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"metadata"];
    }
  }

  if (self->_testAssociatedSchemaIdentifier)
  {
    testAssociatedSchemaIdentifier = [(SUTSchemaTestExecutionEvent *)self testAssociatedSchemaIdentifier];
    dictionaryRepresentation2 = [testAssociatedSchemaIdentifier dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"testAssociatedSchemaIdentifier"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"testAssociatedSchemaIdentifier"];
    }
  }

  if (self->_testExecutionBegin)
  {
    testExecutionBegin = [(SUTSchemaTestExecutionEvent *)self testExecutionBegin];
    dictionaryRepresentation3 = [testExecutionBegin dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"testExecutionBegin"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"testExecutionBegin"];
    }
  }

  if (self->_testExecutionEnd)
  {
    testExecutionEnd = [(SUTSchemaTestExecutionEvent *)self testExecutionEnd];
    dictionaryRepresentation4 = [testExecutionEnd dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"testExecutionEnd"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"testExecutionEnd"];
    }
  }

  if (self->_testOutcomeRecorded)
  {
    testOutcomeRecorded = [(SUTSchemaTestExecutionEvent *)self testOutcomeRecorded];
    dictionaryRepresentation5 = [testOutcomeRecorded dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"testOutcomeRecorded"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"testOutcomeRecorded"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SUTSchemaTestExecutionMetadata *)self->_metadata hash];
  v4 = [(SUTSchemaTestExecutionBegin *)self->_testExecutionBegin hash]^ v3;
  v5 = [(SUTSchemaTestExecutionEnd *)self->_testExecutionEnd hash];
  v6 = v4 ^ v5 ^ [(SUTSchemaTestAssociatedSchemaIdentifier *)self->_testAssociatedSchemaIdentifier hash];
  return v6 ^ [(SUTSchemaTestOutcomeRecorded *)self->_testOutcomeRecorded hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_28;
  }

  metadata = [(SUTSchemaTestExecutionEvent *)self metadata];
  metadata2 = [equalCopy metadata];
  if ((metadata != 0) == (metadata2 == 0))
  {
    goto LABEL_27;
  }

  metadata3 = [(SUTSchemaTestExecutionEvent *)self metadata];
  if (metadata3)
  {
    v9 = metadata3;
    metadata4 = [(SUTSchemaTestExecutionEvent *)self metadata];
    metadata5 = [equalCopy metadata];
    v12 = [metadata4 isEqual:metadata5];

    if (!v12)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  metadata = [(SUTSchemaTestExecutionEvent *)self testExecutionBegin];
  metadata2 = [equalCopy testExecutionBegin];
  if ((metadata != 0) == (metadata2 == 0))
  {
    goto LABEL_27;
  }

  testExecutionBegin = [(SUTSchemaTestExecutionEvent *)self testExecutionBegin];
  if (testExecutionBegin)
  {
    v14 = testExecutionBegin;
    testExecutionBegin2 = [(SUTSchemaTestExecutionEvent *)self testExecutionBegin];
    testExecutionBegin3 = [equalCopy testExecutionBegin];
    v17 = [testExecutionBegin2 isEqual:testExecutionBegin3];

    if (!v17)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  metadata = [(SUTSchemaTestExecutionEvent *)self testExecutionEnd];
  metadata2 = [equalCopy testExecutionEnd];
  if ((metadata != 0) == (metadata2 == 0))
  {
    goto LABEL_27;
  }

  testExecutionEnd = [(SUTSchemaTestExecutionEvent *)self testExecutionEnd];
  if (testExecutionEnd)
  {
    v19 = testExecutionEnd;
    testExecutionEnd2 = [(SUTSchemaTestExecutionEvent *)self testExecutionEnd];
    testExecutionEnd3 = [equalCopy testExecutionEnd];
    v22 = [testExecutionEnd2 isEqual:testExecutionEnd3];

    if (!v22)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  metadata = [(SUTSchemaTestExecutionEvent *)self testAssociatedSchemaIdentifier];
  metadata2 = [equalCopy testAssociatedSchemaIdentifier];
  if ((metadata != 0) == (metadata2 == 0))
  {
    goto LABEL_27;
  }

  testAssociatedSchemaIdentifier = [(SUTSchemaTestExecutionEvent *)self testAssociatedSchemaIdentifier];
  if (testAssociatedSchemaIdentifier)
  {
    v24 = testAssociatedSchemaIdentifier;
    testAssociatedSchemaIdentifier2 = [(SUTSchemaTestExecutionEvent *)self testAssociatedSchemaIdentifier];
    testAssociatedSchemaIdentifier3 = [equalCopy testAssociatedSchemaIdentifier];
    v27 = [testAssociatedSchemaIdentifier2 isEqual:testAssociatedSchemaIdentifier3];

    if (!v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  metadata = [(SUTSchemaTestExecutionEvent *)self testOutcomeRecorded];
  metadata2 = [equalCopy testOutcomeRecorded];
  if ((metadata != 0) != (metadata2 == 0))
  {
    testOutcomeRecorded = [(SUTSchemaTestExecutionEvent *)self testOutcomeRecorded];
    if (!testOutcomeRecorded)
    {

LABEL_31:
      v33 = 1;
      goto LABEL_29;
    }

    v29 = testOutcomeRecorded;
    testOutcomeRecorded2 = [(SUTSchemaTestExecutionEvent *)self testOutcomeRecorded];
    testOutcomeRecorded3 = [equalCopy testOutcomeRecorded];
    v32 = [testOutcomeRecorded2 isEqual:testOutcomeRecorded3];

    if (v32)
    {
      goto LABEL_31;
    }
  }

  else
  {
LABEL_27:
  }

LABEL_28:
  v33 = 0;
LABEL_29:

  return v33;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  metadata = [(SUTSchemaTestExecutionEvent *)self metadata];

  if (metadata)
  {
    metadata2 = [(SUTSchemaTestExecutionEvent *)self metadata];
    PBDataWriterWriteSubmessage();
  }

  testExecutionBegin = [(SUTSchemaTestExecutionEvent *)self testExecutionBegin];

  if (testExecutionBegin)
  {
    testExecutionBegin2 = [(SUTSchemaTestExecutionEvent *)self testExecutionBegin];
    PBDataWriterWriteSubmessage();
  }

  testExecutionEnd = [(SUTSchemaTestExecutionEvent *)self testExecutionEnd];

  if (testExecutionEnd)
  {
    testExecutionEnd2 = [(SUTSchemaTestExecutionEvent *)self testExecutionEnd];
    PBDataWriterWriteSubmessage();
  }

  testAssociatedSchemaIdentifier = [(SUTSchemaTestExecutionEvent *)self testAssociatedSchemaIdentifier];

  if (testAssociatedSchemaIdentifier)
  {
    testAssociatedSchemaIdentifier2 = [(SUTSchemaTestExecutionEvent *)self testAssociatedSchemaIdentifier];
    PBDataWriterWriteSubmessage();
  }

  testOutcomeRecorded = [(SUTSchemaTestExecutionEvent *)self testOutcomeRecorded];

  v13 = toCopy;
  if (testOutcomeRecorded)
  {
    testOutcomeRecorded2 = [(SUTSchemaTestExecutionEvent *)self testOutcomeRecorded];
    PBDataWriterWriteSubmessage();

    v13 = toCopy;
  }
}

- (void)deleteTestOutcomeRecorded
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_testOutcomeRecorded = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SUTSchemaTestOutcomeRecorded)testOutcomeRecorded
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_testOutcomeRecorded;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTestOutcomeRecorded:(id)recorded
{
  recordedCopy = recorded;
  testExecutionBegin = self->_testExecutionBegin;
  self->_testExecutionBegin = 0;

  testExecutionEnd = self->_testExecutionEnd;
  self->_testExecutionEnd = 0;

  testAssociatedSchemaIdentifier = self->_testAssociatedSchemaIdentifier;
  self->_testAssociatedSchemaIdentifier = 0;

  v8 = 104;
  if (!recordedCopy)
  {
    v8 = 0;
  }

  self->_whichEvent_Type = v8;
  testOutcomeRecorded = self->_testOutcomeRecorded;
  self->_testOutcomeRecorded = recordedCopy;
}

- (void)deleteTestAssociatedSchemaIdentifier
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_testAssociatedSchemaIdentifier = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SUTSchemaTestAssociatedSchemaIdentifier)testAssociatedSchemaIdentifier
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_testAssociatedSchemaIdentifier;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTestAssociatedSchemaIdentifier:(id)identifier
{
  identifierCopy = identifier;
  testExecutionBegin = self->_testExecutionBegin;
  self->_testExecutionBegin = 0;

  testExecutionEnd = self->_testExecutionEnd;
  self->_testExecutionEnd = 0;

  testOutcomeRecorded = self->_testOutcomeRecorded;
  self->_testOutcomeRecorded = 0;

  v8 = 103;
  if (!identifierCopy)
  {
    v8 = 0;
  }

  self->_whichEvent_Type = v8;
  testAssociatedSchemaIdentifier = self->_testAssociatedSchemaIdentifier;
  self->_testAssociatedSchemaIdentifier = identifierCopy;
}

- (void)deleteTestExecutionEnd
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_testExecutionEnd = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SUTSchemaTestExecutionEnd)testExecutionEnd
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_testExecutionEnd;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTestExecutionEnd:(id)end
{
  endCopy = end;
  testExecutionBegin = self->_testExecutionBegin;
  self->_testExecutionBegin = 0;

  testAssociatedSchemaIdentifier = self->_testAssociatedSchemaIdentifier;
  self->_testAssociatedSchemaIdentifier = 0;

  testOutcomeRecorded = self->_testOutcomeRecorded;
  self->_testOutcomeRecorded = 0;

  v8 = 102;
  if (!endCopy)
  {
    v8 = 0;
  }

  self->_whichEvent_Type = v8;
  testExecutionEnd = self->_testExecutionEnd;
  self->_testExecutionEnd = endCopy;
}

- (void)deleteTestExecutionBegin
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_testExecutionBegin = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SUTSchemaTestExecutionBegin)testExecutionBegin
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_testExecutionBegin;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTestExecutionBegin:(id)begin
{
  beginCopy = begin;
  testExecutionEnd = self->_testExecutionEnd;
  self->_testExecutionEnd = 0;

  testAssociatedSchemaIdentifier = self->_testAssociatedSchemaIdentifier;
  self->_testAssociatedSchemaIdentifier = 0;

  testOutcomeRecorded = self->_testOutcomeRecorded;
  self->_testOutcomeRecorded = 0;

  v8 = 101;
  if (!beginCopy)
  {
    v8 = 0;
  }

  self->_whichEvent_Type = v8;
  testExecutionBegin = self->_testExecutionBegin;
  self->_testExecutionBegin = beginCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(SUTSchemaTestExecutionEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 3)
  {
    return @"com.apple.aiml.siri.siriundertest.TestExecutionEvent";
  }

  else
  {
    return off_1E78E7E20[whichEvent_Type - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v22.receiver = self;
  v22.super_class = SUTSchemaTestExecutionEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:policyCopy];
  metadata = [(SUTSchemaTestExecutionEvent *)self metadata];
  v7 = [metadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SUTSchemaTestExecutionEvent *)self deleteMetadata];
  }

  testExecutionBegin = [(SUTSchemaTestExecutionEvent *)self testExecutionBegin];
  v10 = [testExecutionBegin applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SUTSchemaTestExecutionEvent *)self deleteTestExecutionBegin];
  }

  testExecutionEnd = [(SUTSchemaTestExecutionEvent *)self testExecutionEnd];
  v13 = [testExecutionEnd applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(SUTSchemaTestExecutionEvent *)self deleteTestExecutionEnd];
  }

  testAssociatedSchemaIdentifier = [(SUTSchemaTestExecutionEvent *)self testAssociatedSchemaIdentifier];
  v16 = [testAssociatedSchemaIdentifier applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(SUTSchemaTestExecutionEvent *)self deleteTestAssociatedSchemaIdentifier];
  }

  testOutcomeRecorded = [(SUTSchemaTestExecutionEvent *)self testOutcomeRecorded];
  v19 = [testOutcomeRecorded applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(SUTSchemaTestExecutionEvent *)self deleteTestOutcomeRecorded];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

- (int)componentName
{
  metadata = [(SUTSchemaTestExecutionEvent *)self metadata];
  fingerprint = [metadata fingerprint];

  if (fingerprint)
  {
    value = [fingerprint value];
    if (value)
    {
      value2 = [fingerprint value];
      v6 = [value2 length];

      if (v6)
      {
        LODWORD(value) = 26;
      }

      else
      {
        LODWORD(value) = 0;
      }
    }
  }

  else
  {
    LODWORD(value) = 0;
  }

  return value;
}

- (id)getComponentId
{
  metadata = [(SUTSchemaTestExecutionEvent *)self metadata];
  fingerprint = [metadata fingerprint];

  if (!fingerprint)
  {
    goto LABEL_5;
  }

  value = [fingerprint value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [fingerprint value];
  v6 = [value2 length];

  if (v6)
  {
    value = fingerprint;
  }

  else
  {
LABEL_5:
    value = 0;
  }

LABEL_6:

  return value;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  whichEvent_Type = [(SUTSchemaTestExecutionEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EB3A8[whichEvent_Type - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 101 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E78EB3C8[tag - 101];
  }
}

@end