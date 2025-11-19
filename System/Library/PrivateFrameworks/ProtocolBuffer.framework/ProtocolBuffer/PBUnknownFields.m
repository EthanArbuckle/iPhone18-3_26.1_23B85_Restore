@interface PBUnknownFields
- (id)description;
- (id)dictionaryRepresentation;
- (void)dealloc;
- (void)writeTo:(id)a3;
@end

@implementation PBUnknownFields

- (void)dealloc
{
  free(self->_buf);
  v3.receiver = self;
  v3.super_class = PBUnknownFields;
  [(PBUnknownFields *)&v3 dealloc];
}

- (void)writeTo:(id)a3
{
  if (self->_bufLen)
  {
    [a3 write:self->_buf maxLength:?];
  }
}

- (id)description
{
  v2 = [(PBUnknownFields *)self dictionaryRepresentation];
  v3 = [v2 description];

  return v3;
}

- (id)dictionaryRepresentation
{
  if (self->_bufLen)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:self->_buf length:self->_bufLen freeWhenDone:0];
    v3 = [[PBDataReader alloc] initWithData:v2];
    v4 = [MEMORY[0x1E695DF90] dictionary];
    _dictionaryRepresentation(v3, 0, 6, v4);
  }

  else
  {
    v4 = [MEMORY[0x1E695DF20] dictionary];
  }

  return v4;
}

@end