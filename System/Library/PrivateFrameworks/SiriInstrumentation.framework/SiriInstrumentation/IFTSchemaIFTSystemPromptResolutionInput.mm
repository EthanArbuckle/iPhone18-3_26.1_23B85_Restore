@interface IFTSchemaIFTSystemPromptResolutionInput
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTRequestContentHeadGestureContent)headGesture;
- (IFTSchemaIFTRequestContentSpeechContent)speech;
- (IFTSchemaIFTRequestContentTextContent)text;
- (IFTSchemaIFTRequestContentTouchContent)touch;
- (IFTSchemaIFTSystemPromptResolutionInput)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTSystemPromptResolutionInput)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteHeadGesture;
- (void)deleteSpeech;
- (void)deleteText;
- (void)deleteTouch;
- (void)setHeadGesture:(id)gesture;
- (void)setSpeech:(id)speech;
- (void)setText:(id)text;
- (void)setTouch:(id)touch;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTSystemPromptResolutionInput

- (IFTSchemaIFTSystemPromptResolutionInput)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = IFTSchemaIFTSystemPromptResolutionInput;
  v5 = [(IFTSchemaIFTSystemPromptResolutionInput *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"touch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTRequestContentTouchContent alloc] initWithDictionary:v6];
      [(IFTSchemaIFTSystemPromptResolutionInput *)v5 setTouch:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"headGesture"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IFTSchemaIFTRequestContentHeadGestureContent alloc] initWithDictionary:v8];
      [(IFTSchemaIFTSystemPromptResolutionInput *)v5 setHeadGesture:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"text"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[IFTSchemaIFTRequestContentTextContent alloc] initWithDictionary:v10];
      [(IFTSchemaIFTSystemPromptResolutionInput *)v5 setText:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"speech"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[IFTSchemaIFTRequestContentSpeechContent alloc] initWithDictionary:v12];
      [(IFTSchemaIFTSystemPromptResolutionInput *)v5 setSpeech:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (IFTSchemaIFTSystemPromptResolutionInput)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTSystemPromptResolutionInput *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTSystemPromptResolutionInput *)self dictionaryRepresentation];
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
  if (self->_headGesture)
  {
    headGesture = [(IFTSchemaIFTSystemPromptResolutionInput *)self headGesture];
    dictionaryRepresentation = [headGesture dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"headGesture"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"headGesture"];
    }
  }

  if (self->_speech)
  {
    speech = [(IFTSchemaIFTSystemPromptResolutionInput *)self speech];
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

  if (self->_text)
  {
    text = [(IFTSchemaIFTSystemPromptResolutionInput *)self text];
    dictionaryRepresentation3 = [text dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"text"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"text"];
    }
  }

  if (self->_touch)
  {
    touch = [(IFTSchemaIFTSystemPromptResolutionInput *)self touch];
    dictionaryRepresentation4 = [touch dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"touch"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"touch"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(IFTSchemaIFTRequestContentTouchContent *)self->_touch hash];
  v4 = [(IFTSchemaIFTRequestContentHeadGestureContent *)self->_headGesture hash]^ v3;
  v5 = [(IFTSchemaIFTRequestContentTextContent *)self->_text hash];
  return v4 ^ v5 ^ [(IFTSchemaIFTRequestContentSpeechContent *)self->_speech hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  whichOneof_Systempromptresolutioninput = self->_whichOneof_Systempromptresolutioninput;
  if (whichOneof_Systempromptresolutioninput != [equalCopy whichOneof_Systempromptresolutioninput])
  {
    goto LABEL_23;
  }

  touch = [(IFTSchemaIFTSystemPromptResolutionInput *)self touch];
  touch2 = [equalCopy touch];
  if ((touch != 0) == (touch2 == 0))
  {
    goto LABEL_22;
  }

  touch3 = [(IFTSchemaIFTSystemPromptResolutionInput *)self touch];
  if (touch3)
  {
    v9 = touch3;
    touch4 = [(IFTSchemaIFTSystemPromptResolutionInput *)self touch];
    touch5 = [equalCopy touch];
    v12 = [touch4 isEqual:touch5];

    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  touch = [(IFTSchemaIFTSystemPromptResolutionInput *)self headGesture];
  touch2 = [equalCopy headGesture];
  if ((touch != 0) == (touch2 == 0))
  {
    goto LABEL_22;
  }

  headGesture = [(IFTSchemaIFTSystemPromptResolutionInput *)self headGesture];
  if (headGesture)
  {
    v14 = headGesture;
    headGesture2 = [(IFTSchemaIFTSystemPromptResolutionInput *)self headGesture];
    headGesture3 = [equalCopy headGesture];
    v17 = [headGesture2 isEqual:headGesture3];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  touch = [(IFTSchemaIFTSystemPromptResolutionInput *)self text];
  touch2 = [equalCopy text];
  if ((touch != 0) == (touch2 == 0))
  {
    goto LABEL_22;
  }

  text = [(IFTSchemaIFTSystemPromptResolutionInput *)self text];
  if (text)
  {
    v19 = text;
    text2 = [(IFTSchemaIFTSystemPromptResolutionInput *)self text];
    text3 = [equalCopy text];
    v22 = [text2 isEqual:text3];

    if (!v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  touch = [(IFTSchemaIFTSystemPromptResolutionInput *)self speech];
  touch2 = [equalCopy speech];
  if ((touch != 0) != (touch2 == 0))
  {
    speech = [(IFTSchemaIFTSystemPromptResolutionInput *)self speech];
    if (!speech)
    {

LABEL_26:
      v28 = 1;
      goto LABEL_24;
    }

    v24 = speech;
    speech2 = [(IFTSchemaIFTSystemPromptResolutionInput *)self speech];
    speech3 = [equalCopy speech];
    v27 = [speech2 isEqual:speech3];

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
  touch = [(IFTSchemaIFTSystemPromptResolutionInput *)self touch];

  if (touch)
  {
    touch2 = [(IFTSchemaIFTSystemPromptResolutionInput *)self touch];
    PBDataWriterWriteSubmessage();
  }

  headGesture = [(IFTSchemaIFTSystemPromptResolutionInput *)self headGesture];

  if (headGesture)
  {
    headGesture2 = [(IFTSchemaIFTSystemPromptResolutionInput *)self headGesture];
    PBDataWriterWriteSubmessage();
  }

  text = [(IFTSchemaIFTSystemPromptResolutionInput *)self text];

  if (text)
  {
    text2 = [(IFTSchemaIFTSystemPromptResolutionInput *)self text];
    PBDataWriterWriteSubmessage();
  }

  speech = [(IFTSchemaIFTSystemPromptResolutionInput *)self speech];

  v11 = toCopy;
  if (speech)
  {
    speech2 = [(IFTSchemaIFTSystemPromptResolutionInput *)self speech];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
  }
}

- (void)deleteSpeech
{
  if (self->_whichOneof_Systempromptresolutioninput == 4)
  {
    self->_whichOneof_Systempromptresolutioninput = 0;
    self->_speech = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTRequestContentSpeechContent)speech
{
  if (self->_whichOneof_Systempromptresolutioninput == 4)
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
  touch = self->_touch;
  self->_touch = 0;

  headGesture = self->_headGesture;
  self->_headGesture = 0;

  text = self->_text;
  self->_text = 0;

  self->_whichOneof_Systempromptresolutioninput = 4 * (speechCopy != 0);
  speech = self->_speech;
  self->_speech = speechCopy;
}

- (void)deleteText
{
  if (self->_whichOneof_Systempromptresolutioninput == 3)
  {
    self->_whichOneof_Systempromptresolutioninput = 0;
    self->_text = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTRequestContentTextContent)text
{
  if (self->_whichOneof_Systempromptresolutioninput == 3)
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
  touch = self->_touch;
  self->_touch = 0;

  headGesture = self->_headGesture;
  self->_headGesture = 0;

  speech = self->_speech;
  self->_speech = 0;

  v8 = 3;
  if (!textCopy)
  {
    v8 = 0;
  }

  self->_whichOneof_Systempromptresolutioninput = v8;
  text = self->_text;
  self->_text = textCopy;
}

- (void)deleteHeadGesture
{
  if (self->_whichOneof_Systempromptresolutioninput == 2)
  {
    self->_whichOneof_Systempromptresolutioninput = 0;
    self->_headGesture = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTRequestContentHeadGestureContent)headGesture
{
  if (self->_whichOneof_Systempromptresolutioninput == 2)
  {
    v3 = self->_headGesture;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setHeadGesture:(id)gesture
{
  gestureCopy = gesture;
  touch = self->_touch;
  self->_touch = 0;

  text = self->_text;
  self->_text = 0;

  speech = self->_speech;
  self->_speech = 0;

  self->_whichOneof_Systempromptresolutioninput = 2 * (gestureCopy != 0);
  headGesture = self->_headGesture;
  self->_headGesture = gestureCopy;
}

- (void)deleteTouch
{
  if (self->_whichOneof_Systempromptresolutioninput == 1)
  {
    self->_whichOneof_Systempromptresolutioninput = 0;
    self->_touch = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTRequestContentTouchContent)touch
{
  if (self->_whichOneof_Systempromptresolutioninput == 1)
  {
    v3 = self->_touch;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTouch:(id)touch
{
  touchCopy = touch;
  headGesture = self->_headGesture;
  self->_headGesture = 0;

  text = self->_text;
  self->_text = 0;

  speech = self->_speech;
  self->_speech = 0;

  self->_whichOneof_Systempromptresolutioninput = touchCopy != 0;
  touch = self->_touch;
  self->_touch = touchCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = IFTSchemaIFTSystemPromptResolutionInput;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  touch = [(IFTSchemaIFTSystemPromptResolutionInput *)self touch];
  v7 = [touch applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTSystemPromptResolutionInput *)self deleteTouch];
  }

  headGesture = [(IFTSchemaIFTSystemPromptResolutionInput *)self headGesture];
  v10 = [headGesture applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IFTSchemaIFTSystemPromptResolutionInput *)self deleteHeadGesture];
  }

  text = [(IFTSchemaIFTSystemPromptResolutionInput *)self text];
  v13 = [text applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(IFTSchemaIFTSystemPromptResolutionInput *)self deleteText];
  }

  speech = [(IFTSchemaIFTSystemPromptResolutionInput *)self speech];
  v16 = [speech applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(IFTSchemaIFTSystemPromptResolutionInput *)self deleteSpeech];
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