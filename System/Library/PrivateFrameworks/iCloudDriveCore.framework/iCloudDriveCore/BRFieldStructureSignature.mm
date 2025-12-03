@interface BRFieldStructureSignature
- (BOOL)isEqual:(id)equal;
- (BRFieldStructureSignature)initWithLocalStatInfo:(id)info;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (id)etag;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BRFieldStructureSignature

- (id)etag
{
  v2 = [(NSString *)self->_versionIdentifier componentsSeparatedByString:@""];;
  firstObject = [v2 firstObject];

  if ([firstObject length])
  {
    v4 = firstObject;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BRFieldStructureSignature)initWithLocalStatInfo:(id)info
{
  infoCopy = info;
  v19.receiver = self;
  v19.super_class = BRFieldStructureSignature;
  v5 = [(BRFieldStructureSignature *)&v19 init];
  if (v5)
  {
    ckInfo = [infoCopy ckInfo];
    etag = [ckInfo etag];
    localChangeCount = [infoCopy localChangeCount];
    v9 = etag;
    v10 = v9;
    v11 = &stru_2837504F0;
    if (v9)
    {
      v11 = v9;
    }

    v12 = v11;
    v13 = v12;
    if (localChangeCount)
    {
      v14 = [(__CFString *)v12 stringByAppendingFormat:@"%llu", localChangeCount];;

      v13 = v14;
    }

    versionIdentifier = v5->_versionIdentifier;
    v5->_versionIdentifier = v13;

    oldVersionIdentifier = [infoCopy oldVersionIdentifier];
    oldVersionIdentifier = v5->_oldVersionIdentifier;
    v5->_oldVersionIdentifier = oldVersionIdentifier;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BRFieldStructureSignature;
  v4 = [(BRFieldStructureSignature *)&v8 description];
  dictionaryRepresentation = [(BRFieldStructureSignature *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  versionIdentifier = self->_versionIdentifier;
  if (versionIdentifier)
  {
    [dictionary setObject:versionIdentifier forKey:@"versionIdentifier"];
  }

  oldVersionIdentifier = self->_oldVersionIdentifier;
  if (oldVersionIdentifier)
  {
    [v4 setObject:oldVersionIdentifier forKey:@"oldVersionIdentifier"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_versionIdentifier)
  {
    [BRFieldStructureSignature writeTo:];
  }

  v5 = toCopy;
  PBDataWriterWriteStringField();
  if (self->_oldVersionIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setVersionIdentifier:self->_versionIdentifier];
  if (self->_oldVersionIdentifier)
  {
    [toCopy setOldVersionIdentifier:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_versionIdentifier copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_oldVersionIdentifier copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((versionIdentifier = self->_versionIdentifier, !(versionIdentifier | equalCopy[2])) || -[NSString isEqual:](versionIdentifier, "isEqual:")))
  {
    oldVersionIdentifier = self->_oldVersionIdentifier;
    if (oldVersionIdentifier | equalCopy[1])
    {
      v7 = [(NSString *)oldVersionIdentifier isEqual:?];
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(BRFieldStructureSignature *)self setVersionIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(BRFieldStructureSignature *)self setOldVersionIdentifier:?];
    fromCopy = v5;
  }
}

@end