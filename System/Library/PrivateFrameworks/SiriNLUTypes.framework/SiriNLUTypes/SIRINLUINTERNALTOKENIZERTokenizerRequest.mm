@interface SIRINLUINTERNALTOKENIZERTokenizerRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALTOKENIZERTokenizerRequest

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[3])
  {
    [(SIRINLUINTERNALTOKENIZERTokenizerRequest *)self setText:?];
    fromCopy = v7;
  }

  if (fromCopy[2])
  {
    [(SIRINLUINTERNALTOKENIZERTokenizerRequest *)self setLocale:?];
    fromCopy = v7;
  }

  asrId = self->_asrId;
  v6 = fromCopy[1];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((text = self->_text, !(text | equalCopy[3])) || -[NSString isEqual:](text, "isEqual:")) && ((locale = self->_locale, !(locale | equalCopy[2])) || -[NSString isEqual:](locale, "isEqual:")))
  {
    asrId = self->_asrId;
    if (asrId | equalCopy[1])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_text copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_locale copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(SIRINLUEXTERNALUUID *)self->_asrId copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_text)
  {
    [toCopy setText:?];
    toCopy = v5;
  }

  if (self->_locale)
  {
    [v5 setLocale:?];
    toCopy = v5;
  }

  if (self->_asrId)
  {
    [v5 setAsrId:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_text)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_locale)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_asrId)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  text = self->_text;
  if (text)
  {
    [dictionary setObject:text forKey:@"text"];
  }

  locale = self->_locale;
  if (locale)
  {
    [v4 setObject:locale forKey:@"locale"];
  }

  asrId = self->_asrId;
  if (asrId)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALUUID *)asrId dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"asrId"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALTOKENIZERTokenizerRequest;
  v4 = [(SIRINLUINTERNALTOKENIZERTokenizerRequest *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALTOKENIZERTokenizerRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end