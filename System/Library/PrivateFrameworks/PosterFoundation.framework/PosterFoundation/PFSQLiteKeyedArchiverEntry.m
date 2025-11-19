@interface PFSQLiteKeyedArchiverEntry
@end

@implementation PFSQLiteKeyedArchiverEntry

void __56___PFSQLiteKeyedArchiverEntry_pf_sqliteCodingDescriptor__block_invoke()
{
  v9[4] = *MEMORY[0x1E69E9840];
  v0 = [PFSQLiteColumn textColumnNamed:@"_key" attributes:3];
  v1 = [PFSQLiteColumn blobColumnNamed:@"_data" attributes:1];
  v2 = [PFSQLiteColumn ISO8601DateColumnNamed:@"_lastModified" attributes:1];
  v3 = [PFSQLiteColumn ISO8601DateColumnNamed:@"_dateCreated" attributes:1];
  v4 = [PFSQLiteCodingDescriptor alloc];
  v9[0] = v0;
  v9[1] = v1;
  v9[2] = v2;
  v9[3] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];
  v6 = [(PFSQLiteCodingDescriptor *)v4 initWithTableName:@"_PFSQLiteKeyedArchiverEntry" columns:v5];
  v7 = pf_sqliteCodingDescriptor_sqliteCodingDescriptor;
  pf_sqliteCodingDescriptor_sqliteCodingDescriptor = v6;

  v8 = *MEMORY[0x1E69E9840];
}

@end