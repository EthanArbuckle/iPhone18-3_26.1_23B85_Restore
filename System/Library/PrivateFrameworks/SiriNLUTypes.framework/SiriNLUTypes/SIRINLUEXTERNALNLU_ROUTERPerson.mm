@interface SIRINLUEXTERNALNLU_ROUTERPerson
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALNLU_ROUTERPerson

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(SIRINLUEXTERNALNLU_ROUTERPerson *)self setPerson:?];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    person = self->_person;
    if (person | equalCopy[1])
    {
      v6 = [(NSData *)person isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_person copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)to
{
  person = self->_person;
  if (person)
  {
    [to setPerson:person];
  }
}

- (void)writeTo:(id)to
{
  if (self->_person)
  {
    PBDataWriterWriteDataField();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  person = self->_person;
  if (person)
  {
    [dictionary setObject:person forKey:@"person"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALNLU_ROUTERPerson;
  v4 = [(SIRINLUEXTERNALNLU_ROUTERPerson *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALNLU_ROUTERPerson *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end