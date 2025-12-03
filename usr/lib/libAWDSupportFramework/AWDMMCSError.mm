@interface AWDMMCSError
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addUnderlyingErrors:(id)errors;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDMMCSError

- (void)dealloc
{
  [(AWDMMCSError *)self setDomain:0];
  [(AWDMMCSError *)self setUnderlyingErrors:0];
  v3.receiver = self;
  v3.super_class = AWDMMCSError;
  [(AWDMMCSError *)&v3 dealloc];
}

- (void)addUnderlyingErrors:(id)errors
{
  underlyingErrors = self->_underlyingErrors;
  if (!underlyingErrors)
  {
    underlyingErrors = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_underlyingErrors = underlyingErrors;
  }

  [(NSMutableArray *)underlyingErrors addObject:errors];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDMMCSError;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDMMCSError description](&v3, sel_description), -[AWDMMCSError dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v19 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  v4 = dictionary;
  domain = self->_domain;
  if (domain)
  {
    [dictionary setObject:domain forKey:@"domain"];
  }

  if (*&self->_has)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_code), @"code"}];
  }

  if ([(NSMutableArray *)self->_underlyingErrors count])
  {
    v6 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_underlyingErrors, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    underlyingErrors = self->_underlyingErrors;
    v8 = [(NSMutableArray *)underlyingErrors countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(underlyingErrors);
          }

          [v6 addObject:{objc_msgSend(*(*(&v14 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v9 = [(NSMutableArray *)underlyingErrors countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    [v4 setObject:v6 forKey:@"underlyingErrors"];
  }

  v12 = *MEMORY[0x29EDCA608];
  return v4;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x29EDCA608];
  if (self->_domain)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    code = self->_code;
    PBDataWriterWriteInt32Field();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  underlyingErrors = self->_underlyingErrors;
  v6 = [(NSMutableArray *)underlyingErrors countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(underlyingErrors);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)underlyingErrors countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)to
{
  if (self->_domain)
  {
    [to setDomain:?];
  }

  if (*&self->_has)
  {
    *(to + 2) = self->_code;
    *(to + 32) |= 1u;
  }

  if ([(AWDMMCSError *)self underlyingErrorsCount])
  {
    [to clearUnderlyingErrors];
    underlyingErrorsCount = [(AWDMMCSError *)self underlyingErrorsCount];
    if (underlyingErrorsCount)
    {
      v6 = underlyingErrorsCount;
      for (i = 0; i != v6; ++i)
      {
        [to addUnderlyingErrors:{-[AWDMMCSError underlyingErrorsAtIndex:](self, "underlyingErrorsAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];

  *(v5 + 16) = [(NSString *)self->_domain copyWithZone:zone];
  if (*&self->_has)
  {
    *(v5 + 8) = self->_code;
    *(v5 + 32) |= 1u;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  underlyingErrors = self->_underlyingErrors;
  v7 = [(NSMutableArray *)underlyingErrors countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(underlyingErrors);
        }

        v11 = [*(*(&v14 + 1) + 8 * v10) copyWithZone:zone];
        [v5 addUnderlyingErrors:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)underlyingErrors countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x29EDCA608];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    domain = self->_domain;
    if (!(domain | *(equal + 2)) || (v5 = [(NSString *)domain isEqual:?]) != 0)
    {
      v7 = *(equal + 32);
      if (*&self->_has)
      {
        if ((*(equal + 32) & 1) == 0 || self->_code != *(equal + 2))
        {
          goto LABEL_11;
        }
      }

      else if (*(equal + 32))
      {
LABEL_11:
        LOBYTE(v5) = 0;
        return v5;
      }

      underlyingErrors = self->_underlyingErrors;
      if (underlyingErrors | *(equal + 3))
      {

        LOBYTE(v5) = [(NSMutableArray *)underlyingErrors isEqual:?];
      }

      else
      {
        LOBYTE(v5) = 1;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_domain hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_code;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(NSMutableArray *)self->_underlyingErrors hash];
}

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x29EDCA608];
  if (*(from + 2))
  {
    [(AWDMMCSError *)self setDomain:?];
  }

  if (*(from + 32))
  {
    self->_code = *(from + 2);
    *&self->_has |= 1u;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(from + 3);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(AWDMMCSError *)self addUnderlyingErrors:*(*(&v11 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x29EDCA608];
}

@end