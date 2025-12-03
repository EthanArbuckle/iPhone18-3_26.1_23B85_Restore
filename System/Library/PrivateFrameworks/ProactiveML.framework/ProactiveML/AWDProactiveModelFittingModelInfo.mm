@interface AWDProactiveModelFittingModelInfo
+ (id)modelInfoFromPlanId:(id)id;
+ (id)modelInfoFromSessionDescriptor:(id)descriptor;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDProactiveModelFittingModelInfo

+ (id)modelInfoFromPlanId:(id)id
{
  v3 = [PMLPlanDescriptor descriptorFromPlanId:id];
  v4 = objc_opt_new();
  name = [v3 name];
  [v4 setName:name];

  version = [v3 version];
  [v4 setVersion:version];

  locale = [v3 locale];
  [v4 setLocale:locale];

  return v4;
}

+ (id)modelInfoFromSessionDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v4 = objc_opt_new();
  name = [descriptorCopy name];
  [v4 setName:name];

  version = [descriptorCopy version];
  [v4 setVersion:version];

  locale = [descriptorCopy locale];

  [v4 setLocale:locale];

  return v4;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(AWDProactiveModelFittingModelInfo *)self setName:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(AWDProactiveModelFittingModelInfo *)self setVersion:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(AWDProactiveModelFittingModelInfo *)self setLocale:?];
    fromCopy = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSString *)self->_version hash]^ v3;
  return v4 ^ [(NSString *)self->_locale hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((name = self->_name, !(name | equalCopy[2])) || -[NSString isEqual:](name, "isEqual:")) && ((version = self->_version, !(version | equalCopy[3])) || -[NSString isEqual:](version, "isEqual:")))
  {
    locale = self->_locale;
    if (locale | equalCopy[1])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_version copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_locale copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_name)
  {
    [toCopy setName:?];
    toCopy = v5;
  }

  if (self->_version)
  {
    [v5 setVersion:?];
    toCopy = v5;
  }

  if (self->_locale)
  {
    [v5 setLocale:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_version)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_locale)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  name = self->_name;
  if (name)
  {
    [dictionary setObject:name forKey:@"name"];
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
  dictionaryRepresentation = [(AWDProactiveModelFittingModelInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end