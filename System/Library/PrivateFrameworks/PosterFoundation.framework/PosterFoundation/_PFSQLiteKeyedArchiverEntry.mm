@interface _PFSQLiteKeyedArchiverEntry
+ (id)pf_sqliteCodingDescriptor;
- (_PFSQLiteKeyedArchiverEntry)init;
- (_PFSQLiteKeyedArchiverEntry)initWithCoder:(id)a3;
- (_PFSQLiteKeyedArchiverEntry)initWithKey:(id)a3 data:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithData:(id)a3;
@end

@implementation _PFSQLiteKeyedArchiverEntry

+ (id)pf_sqliteCodingDescriptor
{
  if (pf_sqliteCodingDescriptor_onceToken != -1)
  {
    +[_PFSQLiteKeyedArchiverEntry pf_sqliteCodingDescriptor];
  }

  v3 = pf_sqliteCodingDescriptor_sqliteCodingDescriptor;

  return v3;
}

- (_PFSQLiteKeyedArchiverEntry)initWithKey:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_PFSQLiteKeyedArchiverEntry *)self init];
  if (v8)
  {
    v9 = [v6 copy];
    key = v8->_key;
    v8->_key = v9;

    objc_storeStrong(&v8->_data, a4);
  }

  return v8;
}

- (_PFSQLiteKeyedArchiverEntry)init
{
  v8.receiver = self;
  v8.super_class = _PFSQLiteKeyedArchiverEntry;
  v2 = [(_PFSQLiteKeyedArchiverEntry *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF00] date];
    lastModified = v2->_lastModified;
    v2->_lastModified = v3;

    v5 = [MEMORY[0x1E695DF00] date];
    dateCreated = v2->_dateCreated;
    v2->_dateCreated = v5;
  }

  return v2;
}

- (void)updateWithData:(id)a3
{
  objc_storeStrong(&self->_data, a3);
  v7 = a3;
  v5 = [MEMORY[0x1E695DF00] date];
  lastModified = self->_lastModified;
  self->_lastModified = v5;
}

- (void)encodeWithCoder:(id)a3
{
  key = self->_key;
  v5 = a3;
  [v5 encodeObject:key forKey:@"_key"];
  [v5 encodeObject:self->_data forKey:@"_data"];
  [v5 encodeObject:self->_lastModified forKey:@"_lastModified"];
  [v5 encodeObject:self->_dateCreated forKey:@"_dateCreated"];
}

- (_PFSQLiteKeyedArchiverEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _PFSQLiteKeyedArchiverEntry;
  v5 = [(_PFSQLiteKeyedArchiverEntry *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_key"];
    key = v5->_key;
    v5->_key = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_data"];
    data = v5->_data;
    v5->_data = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_lastModified"];
    lastModified = v5->_lastModified;
    v5->_lastModified = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_dateCreated"];
    dateCreated = v5->_dateCreated;
    v5->_dateCreated = v12;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(NSData *)self->_data hash]^ v3;
  v5 = [(NSDate *)self->_lastModified hash];
  v6 = [(NSDate *)self->_dateCreated hash];
  v7 = 0xBF58476D1CE4E5B9 * (v4 ^ v5 ^ v6 ^ ((v4 ^ v5 ^ v6) >> 30));
  return (0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) ^ ((0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) >> 31);
}

@end