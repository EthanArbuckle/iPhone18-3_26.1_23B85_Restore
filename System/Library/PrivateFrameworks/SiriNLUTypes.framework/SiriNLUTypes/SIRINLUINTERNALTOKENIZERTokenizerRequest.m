@interface SIRINLUINTERNALTOKENIZERTokenizerRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALTOKENIZERTokenizerRequest

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4[3])
  {
    [(SIRINLUINTERNALTOKENIZERTokenizerRequest *)self setText:?];
    v4 = v7;
  }

  if (v4[2])
  {
    [(SIRINLUINTERNALTOKENIZERTokenizerRequest *)self setLocale:?];
    v4 = v7;
  }

  asrId = self->_asrId;
  v6 = v4[1];
  if (asrId)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALUUID *)asrId mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUINTERNALTOKENIZERTokenizerRequest *)self setAsrId:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_text hash];
  v4 = [(NSString *)self->_locale hash]^ v3;
  return v4 ^ [(SIRINLUEXTERNALUUID *)self->_asrId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((text = self->_text, !(text | v4[3])) || -[NSString isEqual:](text, "isEqual:")) && ((locale = self->_locale, !(locale | v4[2])) || -[NSString isEqual:](locale, "isEqual:")))
  {
    asrId = self->_asrId;
    if (asrId | v4[1])
    {
      v8 = [(SIRINLUEXTERNALUUID *)asrId isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_text copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_locale copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(SIRINLUEXTERNALUUID *)self->_asrId copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_text)
  {
    [v4 setText:?];
    v4 = v5;
  }

  if (self->_locale)
  {
    [v5 setLocale:?];
    v4 = v5;
  }

  if (self->_asrId)
  {
    [v5 setAsrId:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_text)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_locale)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_asrId)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  text = self->_text;
  if (text)
  {
    [v3 setObject:text forKey:@"text"];
  }

  locale = self->_locale;
  if (locale)
  {
    [v4 setObject:locale forKey:@"locale"];
  }

  asrId = self->_asrId;
  if (asrId)
  {
    v8 = [(SIRINLUEXTERNALUUID *)asrId dictionaryRepresentation];
    [v4 setObject:v8 forKey:@"asrId"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALTOKENIZERTokenizerRequest;
  v4 = [(SIRINLUINTERNALTOKENIZERTokenizerRequest *)&v8 description];
  v5 = [(SIRINLUINTERNALTOKENIZERTokenizerRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end