@interface SIRINLUEXTERNALNLU_ROUTERAjaxQuery
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALNLU_ROUTERAjaxQuery

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  explicitQuery = self->_explicitQuery;
  v6 = fromCopy[1];
  v9 = fromCopy;
  if (explicitQuery)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SIRINLUEXTERNALNLU_ROUTERExplicit *)explicitQuery mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SIRINLUEXTERNALNLU_ROUTERAjaxQuery *)self setExplicitQuery:?];
  }

  fromCopy = v9;
LABEL_7:
  implicitQuery = self->_implicitQuery;
  v8 = fromCopy[2];
  if (implicitQuery)
  {
    if (v8)
    {
      [(SIRINLUEXTERNALNLU_ROUTERImplicit *)implicitQuery mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SIRINLUEXTERNALNLU_ROUTERAjaxQuery *)self setImplicitQuery:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((explicitQuery = self->_explicitQuery, !(explicitQuery | equalCopy[1])) || -[SIRINLUEXTERNALNLU_ROUTERExplicit isEqual:](explicitQuery, "isEqual:")))
  {
    implicitQuery = self->_implicitQuery;
    if (implicitQuery | equalCopy[2])
    {
      v7 = [(SIRINLUEXTERNALNLU_ROUTERImplicit *)implicitQuery isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRINLUEXTERNALNLU_ROUTERExplicit *)self->_explicitQuery copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(SIRINLUEXTERNALNLU_ROUTERImplicit *)self->_implicitQuery copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_explicitQuery)
  {
    [toCopy setExplicitQuery:?];
    toCopy = v5;
  }

  if (self->_implicitQuery)
  {
    [v5 setImplicitQuery:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_explicitQuery)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_implicitQuery)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  explicitQuery = self->_explicitQuery;
  if (explicitQuery)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALNLU_ROUTERExplicit *)explicitQuery dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"explicit_query"];
  }

  implicitQuery = self->_implicitQuery;
  if (implicitQuery)
  {
    dictionaryRepresentation2 = [(SIRINLUEXTERNALNLU_ROUTERImplicit *)implicitQuery dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"implicit_query"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALNLU_ROUTERAjaxQuery;
  v4 = [(SIRINLUEXTERNALNLU_ROUTERAjaxQuery *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALNLU_ROUTERAjaxQuery *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end