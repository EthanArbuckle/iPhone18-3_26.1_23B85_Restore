@interface AWDMMCSError
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addUnderlyingErrors:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (void)addUnderlyingErrors:(id)a3
{
  underlyingErrors = self->_underlyingErrors;
  if (!underlyingErrors)
  {
    underlyingErrors = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_underlyingErrors = underlyingErrors;
  }

  [(NSMutableArray *)underlyingErrors addObject:a3];
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
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  v4 = v3;
  domain = self->_domain;
  if (domain)
  {
    [v3 setObject:domain forKey:@"domain"];
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

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  if (self->_domain)
  {
    [a3 setDomain:?];
  }

  if (*&self->_has)
  {
    *(a3 + 2) = self->_code;
    *(a3 + 32) |= 1u;
  }

  if ([(AWDMMCSError *)self underlyingErrorsCount])
  {
    [a3 clearUnderlyingErrors];
    v5 = [(AWDMMCSError *)self underlyingErrorsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [a3 addUnderlyingErrors:{-[AWDMMCSError underlyingErrorsAtIndex:](self, "underlyingErrorsAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v19 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];

  *(v5 + 16) = [(NSString *)self->_domain copyWithZone:a3];
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

        v11 = [*(*(&v14 + 1) + 8 * v10) copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    domain = self->_domain;
    if (!(domain | *(a3 + 2)) || (v5 = [(NSString *)domain isEqual:?]) != 0)
    {
      v7 = *(a3 + 32);
      if (*&self->_has)
      {
        if ((*(a3 + 32) & 1) == 0 || self->_code != *(a3 + 2))
        {
          goto LABEL_11;
        }
      }

      else if (*(a3 + 32))
      {
LABEL_11:
        LOBYTE(v5) = 0;
        return v5;
      }

      underlyingErrors = self->_underlyingErrors;
      if (underlyingErrors | *(a3 + 3))
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

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x29EDCA608];
  if (*(a3 + 2))
  {
    [(AWDMMCSError *)self setDomain:?];
  }

  if (*(a3 + 32))
  {
    self->_code = *(a3 + 2);
    *&self->_has |= 1u;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(a3 + 3);
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