@interface IFTSchemaIFTRequestContent
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTRequestContent)initWithDictionary:(id)a3;
- (IFTSchemaIFTRequestContent)initWithJSON:(id)a3;
- (IFTSchemaIFTRequestContentSpeechContent)speech;
- (IFTSchemaIFTRequestContentStopContent)stop;
- (IFTSchemaIFTRequestContentTextContent)text;
- (IFTSchemaIFTSystemPromptResolution)promptResolution;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deletePromptResolution;
- (void)deleteSpeech;
- (void)deleteStop;
- (void)deleteText;
- (void)setPromptResolution:(id)a3;
- (void)setSpeech:(id)a3;
- (void)setStop:(id)a3;
- (void)setText:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTRequestContent

- (IFTSchemaIFTRequestContent)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = IFTSchemaIFTRequestContent;
  v5 = [(IFTSchemaIFTRequestContent *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"text"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTRequestContentTextContent alloc] initWithDictionary:v6];
      [(IFTSchemaIFTRequestContent *)v5 setText:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"speech"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IFTSchemaIFTRequestContentSpeechContent alloc] initWithDictionary:v8];
      [(IFTSchemaIFTRequestContent *)v5 setSpeech:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"promptResolution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[IFTSchemaIFTSystemPromptResolution alloc] initWithDictionary:v10];
      [(IFTSchemaIFTRequestContent *)v5 setPromptResolution:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"stop"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[IFTSchemaIFTRequestContentStopContent alloc] initWithDictionary:v12];
      [(IFTSchemaIFTRequestContent *)v5 setStop:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (IFTSchemaIFTRequestContent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTRequestContent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTRequestContent *)self dictionaryRepresentation];
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
  if (self->_promptResolution)
  {
    v4 = [(IFTSchemaIFTRequestContent *)self promptResolution];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"promptResolution"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"promptResolution"];
    }
  }

  if (self->_speech)
  {
    v7 = [(IFTSchemaIFTRequestContent *)self speech];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"speech"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"speech"];
    }
  }

  if (self->_stop)
  {
    v10 = [(IFTSchemaIFTRequestContent *)self stop];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"stop"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"stop"];
    }
  }

  if (self->_text)
  {
    v13 = [(IFTSchemaIFTRequestContent *)self text];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"text"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"text"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(IFTSchemaIFTRequestContentTextContent *)self->_text hash];
  v4 = [(IFTSchemaIFTRequestContentSpeechContent *)self->_speech hash]^ v3;
  v5 = [(IFTSchemaIFTSystemPromptResolution *)self->_promptResolution hash];
  return v4 ^ v5 ^ [(IFTSchemaIFTRequestContentStopContent *)self->_stop hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  whichOneof_Requestcontent = self->_whichOneof_Requestcontent;
  if (whichOneof_Requestcontent != [v4 whichOneof_Requestcontent])
  {
    goto LABEL_23;
  }

  v6 = [(IFTSchemaIFTRequestContent *)self text];
  v7 = [v4 text];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_22;
  }

  v8 = [(IFTSchemaIFTRequestContent *)self text];
  if (v8)
  {
    v9 = v8;
    v10 = [(IFTSchemaIFTRequestContent *)self text];
    v11 = [v4 text];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTRequestContent *)self speech];
  v7 = [v4 speech];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_22;
  }

  v13 = [(IFTSchemaIFTRequestContent *)self speech];
  if (v13)
  {
    v14 = v13;
    v15 = [(IFTSchemaIFTRequestContent *)self speech];
    v16 = [v4 speech];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTRequestContent *)self promptResolution];
  v7 = [v4 promptResolution];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_22;
  }

  v18 = [(IFTSchemaIFTRequestContent *)self promptResolution];
  if (v18)
  {
    v19 = v18;
    v20 = [(IFTSchemaIFTRequestContent *)self promptResolution];
    v21 = [v4 promptResolution];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTRequestContent *)self stop];
  v7 = [v4 stop];
  if ((v6 != 0) != (v7 == 0))
  {
    v23 = [(IFTSchemaIFTRequestContent *)self stop];
    if (!v23)
    {

LABEL_26:
      v28 = 1;
      goto LABEL_24;
    }

    v24 = v23;
    v25 = [(IFTSchemaIFTRequestContent *)self stop];
    v26 = [v4 stop];
    v27 = [v25 isEqual:v26];

    if (v27)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_22:
  }

LABEL_23:
  v28 = 0;
LABEL_24:

  return v28;
}

- (void)writeTo:(id)a3
{
  v13 = a3;
  v4 = [(IFTSchemaIFTRequestContent *)self text];

  if (v4)
  {
    v5 = [(IFTSchemaIFTRequestContent *)self text];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(IFTSchemaIFTRequestContent *)self speech];

  if (v6)
  {
    v7 = [(IFTSchemaIFTRequestContent *)self speech];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(IFTSchemaIFTRequestContent *)self promptResolution];

  if (v8)
  {
    v9 = [(IFTSchemaIFTRequestContent *)self promptResolution];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(IFTSchemaIFTRequestContent *)self stop];

  v11 = v13;
  if (v10)
  {
    v12 = [(IFTSchemaIFTRequestContent *)self stop];
    PBDataWriterWriteSubmessage();

    v11 = v13;
  }
}

- (void)deleteStop
{
  if (self->_whichOneof_Requestcontent == 4)
  {
    self->_whichOneof_Requestcontent = 0;
    self->_stop = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTRequestContentStopContent)stop
{
  if (self->_whichOneof_Requestcontent == 4)
  {
    v3 = self->_stop;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setStop:(id)a3
{
  v4 = a3;
  text = self->_text;
  self->_text = 0;

  speech = self->_speech;
  self->_speech = 0;

  promptResolution = self->_promptResolution;
  self->_promptResolution = 0;

  self->_whichOneof_Requestcontent = 4 * (v4 != 0);
  stop = self->_stop;
  self->_stop = v4;
}

- (void)deletePromptResolution
{
  if (self->_whichOneof_Requestcontent == 3)
  {
    self->_whichOneof_Requestcontent = 0;
    self->_promptResolution = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTSystemPromptResolution)promptResolution
{
  if (self->_whichOneof_Requestcontent == 3)
  {
    v3 = self->_promptResolution;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPromptResolution:(id)a3
{
  v4 = a3;
  text = self->_text;
  self->_text = 0;

  speech = self->_speech;
  self->_speech = 0;

  stop = self->_stop;
  self->_stop = 0;

  v8 = 3;
  if (!v4)
  {
    v8 = 0;
  }

  self->_whichOneof_Requestcontent = v8;
  promptResolution = self->_promptResolution;
  self->_promptResolution = v4;
}

- (void)deleteSpeech
{
  if (self->_whichOneof_Requestcontent == 2)
  {
    self->_whichOneof_Requestcontent = 0;
    self->_speech = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTRequestContentSpeechContent)speech
{
  if (self->_whichOneof_Requestcontent == 2)
  {
    v3 = self->_speech;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSpeech:(id)a3
{
  v4 = a3;
  text = self->_text;
  self->_text = 0;

  promptResolution = self->_promptResolution;
  self->_promptResolution = 0;

  stop = self->_stop;
  self->_stop = 0;

  self->_whichOneof_Requestcontent = 2 * (v4 != 0);
  speech = self->_speech;
  self->_speech = v4;
}

- (void)deleteText
{
  if (self->_whichOneof_Requestcontent == 1)
  {
    self->_whichOneof_Requestcontent = 0;
    self->_text = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTRequestContentTextContent)text
{
  if (self->_whichOneof_Requestcontent == 1)
  {
    v3 = self->_text;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setText:(id)a3
{
  v4 = a3;
  speech = self->_speech;
  self->_speech = 0;

  promptResolution = self->_promptResolution;
  self->_promptResolution = 0;

  stop = self->_stop;
  self->_stop = 0;

  self->_whichOneof_Requestcontent = v4 != 0;
  text = self->_text;
  self->_text = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = IFTSchemaIFTRequestContent;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:v4];
  v6 = [(IFTSchemaIFTRequestContent *)self text];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(IFTSchemaIFTRequestContent *)self deleteText];
  }

  v9 = [(IFTSchemaIFTRequestContent *)self speech];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(IFTSchemaIFTRequestContent *)self deleteSpeech];
  }

  v12 = [(IFTSchemaIFTRequestContent *)self promptResolution];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(IFTSchemaIFTRequestContent *)self deletePromptResolution];
  }

  v15 = [(IFTSchemaIFTRequestContent *)self stop];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(IFTSchemaIFTRequestContent *)self deleteStop];
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