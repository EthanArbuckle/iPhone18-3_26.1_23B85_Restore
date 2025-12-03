@interface PBUnknownFields
- (id)description;
- (id)dictionaryRepresentation;
- (void)dealloc;
- (void)writeTo:(id)to;
@end

@implementation PBUnknownFields

- (void)dealloc
{
  free(self->_buf);
  v3.receiver = self;
  v3.super_class = PBUnknownFields;
  [(PBUnknownFields *)&v3 dealloc];
}

- (void)writeTo:(id)to
{
  if (self->_bufLen)
  {
    [to write:self->_buf maxLength:?];
  }
}

- (id)description
{
  dictionaryRepresentation = [(PBUnknownFields *)self dictionaryRepresentation];
  v3 = [dictionaryRepresentation description];

  return v3;
}

- (id)dictionaryRepresentation
{
  if (self->_bufLen)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:self->_buf length:self->_bufLen freeWhenDone:0];
    v3 = [[PBDataReader alloc] initWithData:v2];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    _dictionaryRepresentation(v3, 0, 6, dictionary);
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF20] dictionary];
  }

  return dictionary;
}

@end