@interface AWDProactiveModelFittingModelInfo
+ (id)modelInfoFromPlanId:(id)a3;
+ (id)modelInfoFromSessionDescriptor:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDProactiveModelFittingModelInfo

+ (id)modelInfoFromPlanId:(id)a3
{
  v3 = [PMLPlanDescriptor descriptorFromPlanId:a3];
  v4 = objc_opt_new();
  v5 = [v3 name];
  [v4 setName:v5];

  v6 = [v3 version];
  [v4 setVersion:v6];

  v7 = [v3 locale];
  [v4 setLocale:v7];

  return v4;
}

+ (id)modelInfoFromSessionDescriptor:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 name];
  [v4 setName:v5];

  v6 = [v3 version];
  [v4 setVersion:v6];

  v7 = [v3 locale];

  [v4 setLocale:v7];

  return v4;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(AWDProactiveModelFittingModelInfo *)self setName:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(AWDProactiveModelFittingModelInfo *)self setVersion:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(AWDProactiveModelFittingModelInfo *)self setLocale:?];
    v4 = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSString *)self->_version hash]^ v3;
  return v4 ^ [(NSString *)self->_locale hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((name = self->_name, !(name | v4[2])) || -[NSString isEqual:](name, "isEqual:")) && ((version = self->_version, !(version | v4[3])) || -[NSString isEqual:](version, "isEqual:")))
  {
    locale = self->_locale;
    if (locale | v4[1])
    {
      v8 = [(NSString *)locale isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_version copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_locale copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_name)
  {
    [v4 setName:?];
    v4 = v5;
  }

  if (self->_version)
  {
    [v5 setVersion:?];
    v4 = v5;
  }

  if (self->_locale)
  {
    [v5 setLocale:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_version)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_locale)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"name"];
  }

  version = self->_version;
  if (version)
  {
    [v4 setObject:version forKey:@"version"];
  }

  locale = self->_locale;
  if (locale)
  {
    [v4 setObject:locale forKey:@"locale"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDProactiveModelFittingModelInfo;
  v4 = [(AWDProactiveModelFittingModelInfo *)&v8 description];
  v5 = [(AWDProactiveModelFittingModelInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end