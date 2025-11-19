@interface SIRINLUEXTERNALNLU_ROUTERAjaxQuery
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALNLU_ROUTERAjaxQuery

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  explicitQuery = self->_explicitQuery;
  v6 = v4[1];
  v9 = v4;
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

  v4 = v9;
LABEL_7:
  implicitQuery = self->_implicitQuery;
  v8 = v4[2];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((explicitQuery = self->_explicitQuery, !(explicitQuery | v4[1])) || -[SIRINLUEXTERNALNLU_ROUTERExplicit isEqual:](explicitQuery, "isEqual:")))
  {
    implicitQuery = self->_implicitQuery;
    if (implicitQuery | v4[2])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUEXTERNALNLU_ROUTERExplicit *)self->_explicitQuery copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(SIRINLUEXTERNALNLU_ROUTERImplicit *)self->_implicitQuery copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_explicitQuery)
  {
    [v4 setExplicitQuery:?];
    v4 = v5;
  }

  if (self->_implicitQuery)
  {
    [v5 setImplicitQuery:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_explicitQuery)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_implicitQuery)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  explicitQuery = self->_explicitQuery;
  if (explicitQuery)
  {
    v5 = [(SIRINLUEXTERNALNLU_ROUTERExplicit *)explicitQuery dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"explicit_query"];
  }

  implicitQuery = self->_implicitQuery;
  if (implicitQuery)
  {
    v7 = [(SIRINLUEXTERNALNLU_ROUTERImplicit *)implicitQuery dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"implicit_query"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALNLU_ROUTERAjaxQuery;
  v4 = [(SIRINLUEXTERNALNLU_ROUTERAjaxQuery *)&v8 description];
  v5 = [(SIRINLUEXTERNALNLU_ROUTERAjaxQuery *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end