@interface _PFSQLiteKeyedArchiverEntry
+ (id)pf_sqliteCodingDescriptor;
- (_PFSQLiteKeyedArchiverEntry)init;
- (_PFSQLiteKeyedArchiverEntry)initWithCoder:(id)coder;
- (_PFSQLiteKeyedArchiverEntry)initWithKey:(id)key data:(id)data;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithData:(id)data;
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

- (_PFSQLiteKeyedArchiverEntry)initWithKey:(id)key data:(id)data
{
  keyCopy = key;
  dataCopy = data;
  v8 = [(_PFSQLiteKeyedArchiverEntry *)self init];
  if (v8)
  {
    v9 = [keyCopy copy];
    key = v8->_key;
    v8->_key = v9;

    objc_storeStrong(&v8->_data, data);
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
    date = [MEMORY[0x1E695DF00] date];
    lastModified = v2->_lastModified;
    v2->_lastModified = date;

    date2 = [MEMORY[0x1E695DF00] date];
    dateCreated = v2->_dateCreated;
    v2->_dateCreated = date2;
  }

  return v2;
}

- (void)updateWithData:(id)data
{
  objc_storeStrong(&self->_data, data);
  dataCopy = data;
  date = [MEMORY[0x1E695DF00] date];
  lastModified = self->_lastModified;
  self->_lastModified = date;
}

- (void)encodeWithCoder:(id)coder
{
  key = self->_key;
  coderCopy = coder;
  [coderCopy encodeObject:key forKey:@"_key"];
  [coderCopy encodeObject:self->_data forKey:@"_data"];
  [coderCopy encodeObject:self->_lastModified forKey:@"_lastModified"];
  [coderCopy encodeObject:self->_dateCreated forKey:@"_dateCreated"];
}

- (_PFSQLiteKeyedArchiverEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = _PFSQLiteKeyedArchiverEntry;
  v5 = [(_PFSQLiteKeyedArchiverEntry *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_key"];
    key = v5->_key;
    v5->_key = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_data"];
    data = v5->_data;
    v5->_data = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_lastModified"];
    lastModified = v5->_lastModified;
    v5->_lastModified = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_dateCreated"];
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