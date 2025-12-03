@interface PLKeyedUnarchiver
+ (id)secureUnarchivedObjectWithData:(id)data ofClass:(Class)class;
+ (id)secureUnarchivedObjectWithData:(id)data ofClasses:(id)classes;
@end

@implementation PLKeyedUnarchiver

+ (id)secureUnarchivedObjectWithData:(id)data ofClasses:(id)classes
{
  v16 = *MEMORY[0x1E69E9840];
  classesCopy = classes;
  v6 = MEMORY[0x1E696ACD0];
  dataCopy = data;
  v13 = 0;
  v8 = [[v6 alloc] initForReadingFromData:dataCopy error:&v13];

  v9 = v13;
  if (!v8)
  {
    v10 = PLBackendGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Data was corrupt; forcing [NSKeyedUnarchiver initForReadingFromData:error:] to return nil, error: %@", buf, 0xCu);
    }
  }

  v11 = [v8 decodeObjectOfClasses:classesCopy forKey:*MEMORY[0x1E696A508]];

  return v11;
}

+ (id)secureUnarchivedObjectWithData:(id)data ofClass:(Class)class
{
  v6 = MEMORY[0x1E695DFD8];
  dataCopy = data;
  v8 = [v6 setWithObject:class];
  v9 = [self secureUnarchivedObjectWithData:dataCopy ofClasses:v8];

  return v9;
}

@end