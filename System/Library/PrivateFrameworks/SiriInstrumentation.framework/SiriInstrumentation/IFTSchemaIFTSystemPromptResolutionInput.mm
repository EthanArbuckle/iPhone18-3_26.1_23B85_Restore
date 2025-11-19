@interface IFTSchemaIFTSystemPromptResolutionInput
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTRequestContentHeadGestureContent)headGesture;
- (IFTSchemaIFTRequestContentSpeechContent)speech;
- (IFTSchemaIFTRequestContentTextContent)text;
- (IFTSchemaIFTRequestContentTouchContent)touch;
- (IFTSchemaIFTSystemPromptResolutionInput)initWithDictionary:(id)a3;
- (IFTSchemaIFTSystemPromptResolutionInput)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteHeadGesture;
- (void)deleteSpeech;
- (void)deleteText;
- (void)deleteTouch;
- (void)setHeadGesture:(id)a3;
- (void)setSpeech:(id)a3;
- (void)setText:(id)a3;
- (void)setTouch:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTSystemPromptResolutionInput

- (IFTSchemaIFTSystemPromptResolutionInput)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = IFTSchemaIFTSystemPromptResolutionInput;
  v5 = [(IFTSchemaIFTSystemPromptResolutionInput *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"touch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTRequestContentTouchContent alloc] initWithDictionary:v6];
      [(IFTSchemaIFTSystemPromptResolutionInput *)v5 setTouch:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"headGesture"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IFTSchemaIFTRequestContentHeadGestureContent alloc] initWithDictionary:v8];
      [(IFTSchemaIFTSystemPromptResolutionInput *)v5 setHeadGesture:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"text"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[IFTSchemaIFTRequestContentTextContent alloc] initWithDictionary:v10];
      [(IFTSchemaIFTSystemPromptResolutionInput *)v5 setText:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"speech"];
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

- (IFTSchemaIFTSystemPromptResolutionInput)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTSystemPromptResolutionInput *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTSystemPromptResolutionInput *)self dictionaryRepresentation];
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
  if (self->_headGesture)
  {
    v4 = [(IFTSchemaIFTSystemPromptResolutionInput *)self headGesture];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"headGesture"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"headGesture"];
    }
  }

  if (self->_speech)
  {
    v7 = [(IFTSchemaIFTSystemPromptResolutionInput *)self speech];
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

  if (self->_text)
  {
    v10 = [(IFTSchemaIFTSystemPromptResolutionInput *)self text];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"text"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"text"];
    }
  }

  if (self->_touch)
  {
    v13 = [(IFTSchemaIFTSystemPromptResolutionInput *)self touch];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"touch"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"touch"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(IFTSchemaIFTRequestContentTouchContent *)self->_touch hash];
  v4 = [(IFTSchemaIFTRequestContentHeadGestureContent *)self->_headGesture hash]^ v3;
  v5 = [(IFTSchemaIFTRequestContentTextContent *)self->_text hash];
  return v4 ^ v5 ^ [(IFTSchemaIFTRequestContentSpeechContent *)self->_speech hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  whichOneof_Systempromptresolutioninput = self->_whichOneof_Systempromptresolutioninput;
  if (whichOneof_Systempromptresolutioninput != [v4 whichOneof_Systempromptresolutioninput])
  {
    goto LABEL_23;
  }

  v6 = [(IFTSchemaIFTSystemPromptResolutionInput *)self touch];
  v7 = [v4 touch];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_22;
  }

  v8 = [(IFTSchemaIFTSystemPromptResolutionInput *)self touch];
  if (v8)
  {
    v9 = v8;
    v10 = [(IFTSchemaIFTSystemPromptResolutionInput *)self touch];
    v11 = [v4 touch];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTSystemPromptResolutionInput *)self headGesture];
  v7 = [v4 headGesture];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_22;
  }

  v13 = [(IFTSchemaIFTSystemPromptResolutionInput *)self headGesture];
  if (v13)
  {
    v14 = v13;
    v15 = [(IFTSchemaIFTSystemPromptResolutionInput *)self headGesture];
    v16 = [v4 headGesture];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTSystemPromptResolutionInput *)self text];
  v7 = [v4 text];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_22;
  }

  v18 = [(IFTSchemaIFTSystemPromptResolutionInput *)self text];
  if (v18)
  {
    v19 = v18;
    v20 = [(IFTSchemaIFTSystemPromptResolutionInput *)self text];
    v21 = [v4 text];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTSystemPromptResolutionInput *)self speech];
  v7 = [v4 speech];
  if ((v6 != 0) != (v7 == 0))
  {
    v23 = [(IFTSchemaIFTSystemPromptResolutionInput *)self speech];
    if (!v23)
    {

LABEL_26:
      v28 = 1;
      goto LABEL_24;
    }

    v24 = v23;
    v25 = [(IFTSchemaIFTSystemPromptResolutionInput *)self speech];
    v26 = [v4 speech];
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
  v4 = [(IFTSchemaIFTSystemPromptResolutionInput *)self touch];

  if (v4)
  {
    v5 = [(IFTSchemaIFTSystemPromptResolutionInput *)self touch];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(IFTSchemaIFTSystemPromptResolutionInput *)self headGesture];

  if (v6)
  {
    v7 = [(IFTSchemaIFTSystemPromptResolutionInput *)self headGesture];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(IFTSchemaIFTSystemPromptResolutionInput *)self text];

  if (v8)
  {
    v9 = [(IFTSchemaIFTSystemPromptResolutionInput *)self text];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(IFTSchemaIFTSystemPromptResolutionInput *)self speech];

  v11 = v13;
  if (v10)
  {
    v12 = [(IFTSchemaIFTSystemPromptResolutionInput *)self speech];
    PBDataWriterWriteSubmessage();

    v11 = v13;
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

- (void)setSpeech:(id)a3
{
  v4 = a3;
  touch = self->_touch;
  self->_touch = 0;

  headGesture = self->_headGesture;
  self->_headGesture = 0;

  text = self->_text;
  self->_text = 0;

  self->_whichOneof_Systempromptresolutioninput = 4 * (v4 != 0);
  speech = self->_speech;
  self->_speech = v4;
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

- (void)setText:(id)a3
{
  v4 = a3;
  touch = self->_touch;
  self->_touch = 0;

  headGesture = self->_headGesture;
  self->_headGesture = 0;

  speech = self->_speech;
  self->_speech = 0;

  v8 = 3;
  if (!v4)
  {
    v8 = 0;
  }

  self->_whichOneof_Systempromptresolutioninput = v8;
  text = self->_text;
  self->_text = v4;
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

- (void)setHeadGesture:(id)a3
{
  v4 = a3;
  touch = self->_touch;
  self->_touch = 0;

  text = self->_text;
  self->_text = 0;

  speech = self->_speech;
  self->_speech = 0;

  self->_whichOneof_Systempromptresolutioninput = 2 * (v4 != 0);
  headGesture = self->_headGesture;
  self->_headGesture = v4;
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

- (void)setTouch:(id)a3
{
  v4 = a3;
  headGesture = self->_headGesture;
  self->_headGesture = 0;

  text = self->_text;
  self->_text = 0;

  speech = self->_speech;
  self->_speech = 0;

  self->_whichOneof_Systempromptresolutioninput = v4 != 0;
  touch = self->_touch;
  self->_touch = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = IFTSchemaIFTSystemPromptResolutionInput;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:v4];
  v6 = [(IFTSchemaIFTSystemPromptResolutionInput *)self touch];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(IFTSchemaIFTSystemPromptResolutionInput *)self deleteTouch];
  }

  v9 = [(IFTSchemaIFTSystemPromptResolutionInput *)self headGesture];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(IFTSchemaIFTSystemPromptResolutionInput *)self deleteHeadGesture];
  }

  v12 = [(IFTSchemaIFTSystemPromptResolutionInput *)self text];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(IFTSchemaIFTSystemPromptResolutionInput *)self deleteText];
  }

  v15 = [(IFTSchemaIFTSystemPromptResolutionInput *)self speech];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
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