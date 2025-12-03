@interface SIRINLUEXTERNALNLU_ROUTERPommesResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALNLU_ROUTERPommesResponse

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(SIRINLUEXTERNALNLU_ROUTERPommesResponse *)self setMetadataDomainName:?];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    metadataDomainName = self->_metadataDomainName;
    if (metadataDomainName | equalCopy[1])
    {
      v6 = [(NSString *)metadataDomainName isEqual:?];
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
  v6 = [(NSString *)self->_metadataDomainName copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)to
{
  metadataDomainName = self->_metadataDomainName;
  if (metadataDomainName)
  {
    [to setMetadataDomainName:metadataDomainName];
  }
}

- (void)writeTo:(id)to
{
  if (self->_metadataDomainName)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  metadataDomainName = self->_metadataDomainName;
  if (metadataDomainName)
  {
    [dictionary setObject:metadataDomainName forKey:@"metadata_domain_name"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALNLU_ROUTERPommesResponse;
  v4 = [(SIRINLUEXTERNALNLU_ROUTERPommesResponse *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALNLU_ROUTERPommesResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end