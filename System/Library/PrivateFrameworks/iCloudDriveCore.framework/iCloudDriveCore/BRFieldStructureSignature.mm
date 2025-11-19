@interface BRFieldStructureSignature
- (BOOL)isEqual:(id)a3;
- (BRFieldStructureSignature)initWithLocalStatInfo:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (id)etag;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BRFieldStructureSignature

- (id)etag
{
  v2 = [(NSString *)self->_versionIdentifier componentsSeparatedByString:@""];;
  v3 = [v2 firstObject];

  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BRFieldStructureSignature)initWithLocalStatInfo:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = BRFieldStructureSignature;
  v5 = [(BRFieldStructureSignature *)&v19 init];
  if (v5)
  {
    v6 = [v4 ckInfo];
    v7 = [v6 etag];
    v8 = [v4 localChangeCount];
    v9 = v7;
    v10 = v9;
    v11 = &stru_2837504F0;
    if (v9)
    {
      v11 = v9;
    }

    v12 = v11;
    v13 = v12;
    if (v8)
    {
      v14 = [(__CFString *)v12 stringByAppendingFormat:@"%llu", v8];;

      v13 = v14;
    }

    versionIdentifier = v5->_versionIdentifier;
    v5->_versionIdentifier = v13;

    v16 = [v4 oldVersionIdentifier];
    oldVersionIdentifier = v5->_oldVersionIdentifier;
    v5->_oldVersionIdentifier = v16;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BRFieldStructureSignature;
  v4 = [(BRFieldStructureSignature *)&v8 description];
  v5 = [(BRFieldStructureSignature *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  versionIdentifier = self->_versionIdentifier;
  if (versionIdentifier)
  {
    [v3 setObject:versionIdentifier forKey:@"versionIdentifier"];
  }

  oldVersionIdentifier = self->_oldVersionIdentifier;
  if (oldVersionIdentifier)
  {
    [v4 setObject:oldVersionIdentifier forKey:@"oldVersionIdentifier"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_versionIdentifier)
  {
    [BRFieldStructureSignature writeTo:];
  }

  v5 = v4;
  PBDataWriterWriteStringField();
  if (self->_oldVersionIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  [v4 setVersionIdentifier:self->_versionIdentifier];
  if (self->_oldVersionIdentifier)
  {
    [v4 setOldVersionIdentifier:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_versionIdentifier copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_oldVersionIdentifier copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((versionIdentifier = self->_versionIdentifier, !(versionIdentifier | v4[2])) || -[NSString isEqual:](versionIdentifier, "isEqual:")))
  {
    oldVersionIdentifier = self->_oldVersionIdentifier;
    if (oldVersionIdentifier | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(BRFieldStructureSignature *)self setVersionIdentifier:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(BRFieldStructureSignature *)self setOldVersionIdentifier:?];
    v4 = v5;
  }
}

@end