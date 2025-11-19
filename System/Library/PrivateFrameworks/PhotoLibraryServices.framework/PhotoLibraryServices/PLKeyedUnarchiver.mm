@interface PLKeyedUnarchiver
+ (id)secureUnarchivedObjectWithData:(id)a3 ofClass:(Class)a4;
+ (id)secureUnarchivedObjectWithData:(id)a3 ofClasses:(id)a4;
@end

@implementation PLKeyedUnarchiver

+ (id)secureUnarchivedObjectWithData:(id)a3 ofClasses:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = MEMORY[0x1E696ACD0];
  v7 = a3;
  v13 = 0;
  v8 = [[v6 alloc] initForReadingFromData:v7 error:&v13];

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

  v11 = [v8 decodeObjectOfClasses:v5 forKey:*MEMORY[0x1E696A508]];

  return v11;
}

+ (id)secureUnarchivedObjectWithData:(id)a3 ofClass:(Class)a4
{
  v6 = MEMORY[0x1E695DFD8];
  v7 = a3;
  v8 = [v6 setWithObject:a4];
  v9 = [a1 secureUnarchivedObjectWithData:v7 ofClasses:v8];

  return v9;
}

@end