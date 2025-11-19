@interface AWDBltUIBuildSuccess
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDBltUIBuildSuccess

- (void)dealloc
{
  [(AWDBltUIBuildSuccess *)self setSectionid:0];
  v3.receiver = self;
  v3.super_class = AWDBltUIBuildSuccess;
  [(AWDBltUIBuildSuccess *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDBltUIBuildSuccess;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDBltUIBuildSuccess description](&v3, sel_description), -[AWDBltUIBuildSuccess dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  sectionid = self->_sectionid;
  if (sectionid)
  {
    [v3 setObject:sectionid forKey:@"sectionid"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_sectionid)
  {

    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 24) |= 1u;
  }

  sectionid = self->_sectionid;
  if (sectionid)
  {
    [a3 setSectionid:sectionid];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 24) |= 1u;
  }

  v6[2] = [(NSString *)self->_sectionid copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 24);
    if (*&self->_has)
    {
      if ((*(a3 + 24) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_9;
      }
    }

    else if (*(a3 + 24))
    {
LABEL_9:
      LOBYTE(v5) = 0;
      return v5;
    }

    sectionid = self->_sectionid;
    if (sectionid | *(a3 + 2))
    {

      LOBYTE(v5) = [(NSString *)sectionid isEqual:?];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_timestamp;
  }

  else
  {
    v2 = 0;
  }

  return [(NSString *)self->_sectionid hash]^ v2;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 24))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  if (*(a3 + 2))
  {
    [(AWDBltUIBuildSuccess *)self setSectionid:?];
  }
}

@end