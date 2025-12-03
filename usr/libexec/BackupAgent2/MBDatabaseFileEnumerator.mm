@interface MBDatabaseFileEnumerator
- (MBDatabaseFileEnumerator)initWithDecoder:(id)decoder database:(id)database;
- (id)nextObject;
@end

@implementation MBDatabaseFileEnumerator

- (MBDatabaseFileEnumerator)initWithDecoder:(id)decoder database:(id)database
{
  decoderCopy = decoder;
  databaseCopy = database;
  v12.receiver = self;
  v12.super_class = MBDatabaseFileEnumerator;
  v9 = [(MBDatabaseFileEnumerator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_decoder, decoder);
    objc_storeStrong(&v10->_database, database);
  }

  return v10;
}

- (id)nextObject
{
  offset = [(MBDecoder *)self->_decoder offset];
  data = [(MBDecoder *)self->_decoder data];
  v5 = [data length];

  if (offset >= v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [MBFile fileWithDecoder:self->_decoder database:self->_database];
  }

  return v6;
}

@end