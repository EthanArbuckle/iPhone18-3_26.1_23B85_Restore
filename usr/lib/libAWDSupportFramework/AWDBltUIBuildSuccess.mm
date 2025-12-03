@interface AWDBltUIBuildSuccess
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  sectionid = self->_sectionid;
  if (sectionid)
  {
    [dictionary setObject:sectionid forKey:@"sectionid"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 24) |= 1u;
  }

  sectionid = self->_sectionid;
  if (sectionid)
  {
    [to setSectionid:sectionid];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 24) |= 1u;
  }

  v6[2] = [(NSString *)self->_sectionid copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 24);
    if (*&self->_has)
    {
      if ((*(equal + 24) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_9;
      }
    }

    else if (*(equal + 24))
    {
LABEL_9:
      LOBYTE(v5) = 0;
      return v5;
    }

    sectionid = self->_sectionid;
    if (sectionid | *(equal + 2))
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

- (void)mergeFrom:(id)from
{
  if (*(from + 24))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 2))
  {
    [(AWDBltUIBuildSuccess *)self setSectionid:?];
  }
}

@end