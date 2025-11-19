@interface VCPBIntentDefinitionFile
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCPBIntentDefinitionFile

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(VCPBIntentDefinitionFile *)self setName:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(VCPBIntentDefinitionFile *)self setData:?];
    v4 = v5;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((name = self->_name, !(name | v4[2])) || -[NSString isEqual:](name, "isEqual:")))
  {
    data = self->_data;
    if (data | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_data copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 setName:name];
  [v5 setData:self->_data];
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_name)
  {
    __assert_rtn("[VCPBIntentDefinitionFile writeTo:]", "VCPBIntentDefinitionFile.m", 83, "nil != self->_name");
  }

  v5 = v4;
  PBDataWriterWriteStringField();
  if (!self->_data)
  {
    __assert_rtn("[VCPBIntentDefinitionFile writeTo:]", "VCPBIntentDefinitionFile.m", 88, "nil != self->_data");
  }

  PBDataWriterWriteDataField();
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
  v5 = [(VCPBIntentDefinitionFile *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end