@interface VCPBIntentDefinitionFile
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation VCPBIntentDefinitionFile

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(VCPBIntentDefinitionFile *)self setName:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(VCPBIntentDefinitionFile *)self setData:?];
    fromCopy = v5;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((name = self->_name, !(name | equalCopy[2])) || -[NSString isEqual:](name, "isEqual:")))
  {
    data = self->_data;
    if (data | equalCopy[1])
    {
      v7 = [(NSData *)data isEqual:?];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_data copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  name = self->_name;
  toCopy = to;
  [toCopy setName:name];
  [toCopy setData:self->_data];
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_name)
  {
    __assert_rtn("[VCPBIntentDefinitionFile writeTo:]", "VCPBIntentDefinitionFile.m", 83, "nil != self->_name");
  }

  v5 = toCopy;
  PBDataWriterWriteStringField();
  if (!self->_data)
  {
    __assert_rtn("[VCPBIntentDefinitionFile writeTo:]", "VCPBIntentDefinitionFile.m", 88, "nil != self->_data");
  }

  PBDataWriterWriteDataField();
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

  data = self->_data;
  if (data)
  {
    [v4 setObject:data forKey:@"data"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = VCPBIntentDefinitionFile;
  v4 = [(VCPBIntentDefinitionFile *)&v8 description];
  dictionaryRepresentation = [(VCPBIntentDefinitionFile *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end