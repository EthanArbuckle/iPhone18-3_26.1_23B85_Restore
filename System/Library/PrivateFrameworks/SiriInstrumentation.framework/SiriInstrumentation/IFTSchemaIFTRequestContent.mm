@interface IFTSchemaIFTRequestContent
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTRequestContent)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTRequestContent)initWithJSON:(id)n;
- (IFTSchemaIFTRequestContentSpeechContent)speech;
- (IFTSchemaIFTRequestContentStopContent)stop;
- (IFTSchemaIFTRequestContentTextContent)text;
- (IFTSchemaIFTSystemPromptResolution)promptResolution;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deletePromptResolution;
- (void)deleteSpeech;
- (void)deleteStop;
- (void)deleteText;
- (void)setPromptResolution:(id)resolution;
- (void)setSpeech:(id)speech;
- (void)setStop:(id)stop;
- (void)setText:(id)text;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTRequestContent

- (IFTSchemaIFTRequestContent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = IFTSchemaIFTRequestContent;
  v5 = [(IFTSchemaIFTRequestContent *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"text"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTRequestContentTextContent alloc] initWithDictionary:v6];
      [(IFTSchemaIFTRequestContent *)v5 setText:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"speech"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IFTSchemaIFTRequestContentSpeechContent alloc] initWithDictionary:v8];
      [(IFTSchemaIFTRequestContent *)v5 setSpeech:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"promptResolution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[IFTSchemaIFTSystemPromptResolution alloc] initWithDictionary:v10];
      [(IFTSchemaIFTRequestContent *)v5 setPromptResolution:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"stop"];
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

- (IFTSchemaIFTRequestContent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTRequestContent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTRequestContent *)self dictionaryRepresentation];
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
  if (self->_promptResolution)
  {
    promptResolution = [(IFTSchemaIFTRequestContent *)self promptResolution];
    dictionaryRepresentation = [promptResolution dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"promptResolution"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"promptResolution"];
    }
  }

  if (self->_speech)
  {
    speech = [(IFTSchemaIFTRequestContent *)self speech];
    dictionaryRepresentation2 = [speech dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"speech"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"speech"];
    }
  }

  if (self->_stop)
  {
    stop = [(IFTSchemaIFTRequestContent *)self stop];
    dictionaryRepresentation3 = [stop dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"stop"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"stop"];
    }
  }

  if (self->_text)
  {
    text = [(IFTSchemaIFTRequestContent *)self text];
    dictionaryRepresentation4 = [text dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"text"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"text"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(IFTSchemaIFTRequestContentTextContent *)self->_text hash];
  v4 = [(IFTSchemaIFTRequestContentSpeechContent *)self->_speech hash]^ v3;
  v5 = [(IFTSchemaIFTSystemPromptResolution *)self->_promptResolution hash];
  return v4 ^ v5 ^ [(IFTSchemaIFTRequestContentStopContent *)self->_stop hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  whichOneof_Requestcontent = self->_whichOneof_Requestcontent;
  if (whichOneof_Requestcontent != [equalCopy whichOneof_Requestcontent])
  {
    goto LABEL_23;
  }

  text = [(IFTSchemaIFTRequestContent *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_22;
  }

  text3 = [(IFTSchemaIFTRequestContent *)self text];
  if (text3)
  {
    v9 = text3;
    text4 = [(IFTSchemaIFTRequestContent *)self text];
    text5 = [equalCopy text];
    v12 = [text4 isEqual:text5];

    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  text = [(IFTSchemaIFTRequestContent *)self speech];
  text2 = [equalCopy speech];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_22;
  }

  speech = [(IFTSchemaIFTRequestContent *)self speech];
  if (speech)
  {
    v14 = speech;
    speech2 = [(IFTSchemaIFTRequestContent *)self speech];
    speech3 = [equalCopy speech];
    v17 = [speech2 isEqual:speech3];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  text = [(IFTSchemaIFTRequestContent *)self promptResolution];
  text2 = [equalCopy promptResolution];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_22;
  }

  promptResolution = [(IFTSchemaIFTRequestContent *)self promptResolution];
  if (promptResolution)
  {
    v19 = promptResolution;
    promptResolution2 = [(IFTSchemaIFTRequestContent *)self promptResolution];
    promptResolution3 = [equalCopy promptResolution];
    v22 = [promptResolution2 isEqual:promptResolution3];

    if (!v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  text = [(IFTSchemaIFTRequestContent *)self stop];
  text2 = [equalCopy stop];
  if ((text != 0) != (text2 == 0))
  {
    stop = [(IFTSchemaIFTRequestContent *)self stop];
    if (!stop)
    {

LABEL_26:
      v28 = 1;
      goto LABEL_24;
    }

    v24 = stop;
    stop2 = [(IFTSchemaIFTRequestContent *)self stop];
    stop3 = [equalCopy stop];
    v27 = [stop2 isEqual:stop3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  text = [(IFTSchemaIFTRequestContent *)self text];

  if (text)
  {
    text2 = [(IFTSchemaIFTRequestContent *)self text];
    PBDataWriterWriteSubmessage();
  }

  speech = [(IFTSchemaIFTRequestContent *)self speech];

  if (speech)
  {
    speech2 = [(IFTSchemaIFTRequestContent *)self speech];
    PBDataWriterWriteSubmessage();
  }

  promptResolution = [(IFTSchemaIFTRequestContent *)self promptResolution];

  if (promptResolution)
  {
    promptResolution2 = [(IFTSchemaIFTRequestContent *)self promptResolution];
    PBDataWriterWriteSubmessage();
  }

  stop = [(IFTSchemaIFTRequestContent *)self stop];

  v11 = toCopy;
  if (stop)
  {
    stop2 = [(IFTSchemaIFTRequestContent *)self stop];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
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

- (void)setStop:(id)stop
{
  stopCopy = stop;
  text = self->_text;
  self->_text = 0;

  speech = self->_speech;
  self->_speech = 0;

  promptResolution = self->_promptResolution;
  self->_promptResolution = 0;

  self->_whichOneof_Requestcontent = 4 * (stopCopy != 0);
  stop = self->_stop;
  self->_stop = stopCopy;
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

- (void)setPromptResolution:(id)resolution
{
  resolutionCopy = resolution;
  text = self->_text;
  self->_text = 0;

  speech = self->_speech;
  self->_speech = 0;

  stop = self->_stop;
  self->_stop = 0;

  v8 = 3;
  if (!resolutionCopy)
  {
    v8 = 0;
  }

  self->_whichOneof_Requestcontent = v8;
  promptResolution = self->_promptResolution;
  self->_promptResolution = resolutionCopy;
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

- (void)setSpeech:(id)speech
{
  speechCopy = speech;
  text = self->_text;
  self->_text = 0;

  promptResolution = self->_promptResolution;
  self->_promptResolution = 0;

  stop = self->_stop;
  self->_stop = 0;

  self->_whichOneof_Requestcontent = 2 * (speechCopy != 0);
  speech = self->_speech;
  self->_speech = speechCopy;
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

- (void)setText:(id)text
{
  textCopy = text;
  speech = self->_speech;
  self->_speech = 0;

  promptResolution = self->_promptResolution;
  self->_promptResolution = 0;

  stop = self->_stop;
  self->_stop = 0;

  self->_whichOneof_Requestcontent = textCopy != 0;
  text = self->_text;
  self->_text = textCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = IFTSchemaIFTRequestContent;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  text = [(IFTSchemaIFTRequestContent *)self text];
  v7 = [text applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTRequestContent *)self deleteText];
  }

  speech = [(IFTSchemaIFTRequestContent *)self speech];
  v10 = [speech applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IFTSchemaIFTRequestContent *)self deleteSpeech];
  }

  promptResolution = [(IFTSchemaIFTRequestContent *)self promptResolution];
  v13 = [promptResolution applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(IFTSchemaIFTRequestContent *)self deletePromptResolution];
  }

  stop = [(IFTSchemaIFTRequestContent *)self stop];
  v16 = [stop applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
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