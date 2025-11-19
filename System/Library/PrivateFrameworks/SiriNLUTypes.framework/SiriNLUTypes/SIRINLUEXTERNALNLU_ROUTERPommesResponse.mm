@interface SIRINLUEXTERNALNLU_ROUTERPommesResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALNLU_ROUTERPommesResponse

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(SIRINLUEXTERNALNLU_ROUTERPommesResponse *)self setMetadataDomainName:?];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    metadataDomainName = self->_metadataDomainName;
    if (metadataDomainName | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_metadataDomainName copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)a3
{
  metadataDomainName = self->_metadataDomainName;
  if (metadataDomainName)
  {
    [a3 setMetadataDomainName:metadataDomainName];
  }
}

- (void)writeTo:(id)a3
{
  if (self->_metadataDomainName)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  metadataDomainName = self->_metadataDomainName;
  if (metadataDomainName)
  {
    [v3 setObject:metadataDomainName forKey:@"metadata_domain_name"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALNLU_ROUTERPommesResponse;
  v4 = [(SIRINLUEXTERNALNLU_ROUTERPommesResponse *)&v8 description];
  v5 = [(SIRINLUEXTERNALNLU_ROUTERPommesResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end