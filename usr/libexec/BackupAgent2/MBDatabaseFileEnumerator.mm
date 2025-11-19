@interface MBDatabaseFileEnumerator
- (MBDatabaseFileEnumerator)initWithDecoder:(id)a3 database:(id)a4;
- (id)nextObject;
@end

@implementation MBDatabaseFileEnumerator

- (MBDatabaseFileEnumerator)initWithDecoder:(id)a3 database:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MBDatabaseFileEnumerator;
  v9 = [(MBDatabaseFileEnumerator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_decoder, a3);
    objc_storeStrong(&v10->_database, a4);
  }

  return v10;
}

- (id)nextObject
{
  v3 = [(MBDecoder *)self->_decoder offset];
  v4 = [(MBDecoder *)self->_decoder data];
  v5 = [v4 length];

  if (v3 >= v5)
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