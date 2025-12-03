@interface PMLPlistClassWrapper
- (PMLPlistClassWrapper)initWithClassNameKey:(id)key;
- (id)readObjectWithData:(id)data chunks:(id)chunks context:(id)context;
- (id)readObjectWithPlist:(id)plist chunks:(id)chunks context:(id)context;
- (id)writeToDataWithObject:(id)object andChunks:(id)chunks;
- (id)writeToPlistWithObject:(id)object andChunks:(id)chunks;
@end

@implementation PMLPlistClassWrapper

- (id)readObjectWithData:(id)data chunks:(id)chunks context:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  chunksCopy = chunks;
  contextCopy = context;
  v16 = 0;
  v10 = [MEMORY[0x277CCAC58] propertyListWithData:data options:0 format:0 error:&v16];
  v11 = v16;
  if (v10)
  {
    v12 = [(PMLPlistClassWrapper *)self readObjectWithPlist:v10 chunks:chunksCopy context:contextCopy];
  }

  else
  {
    v13 = PML_LogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v11;
      _os_log_error_impl(&dword_260D68000, v13, OS_LOG_TYPE_ERROR, "Error reading object from NSData: %@", buf, 0xCu);
    }

    v12 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)writeToDataWithObject:(id)object andChunks:(id)chunks
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAC58];
  v5 = [(PMLPlistClassWrapper *)self writeToPlistWithObject:object andChunks:chunks];
  v11 = 0;
  v6 = [v4 dataWithPropertyList:v5 format:200 options:0 error:&v11];
  v7 = v11;

  if (!v6)
  {
    v8 = PML_LogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v7;
      _os_log_error_impl(&dword_260D68000, v8, OS_LOG_TYPE_ERROR, "Error writing object to NSData: %@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)readObjectWithPlist:(id)plist chunks:(id)chunks context:(id)context
{
  plistCopy = plist;
  chunksCopy = chunks;
  contextCopy = context;
  if (!plistCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLPlistClassWrapper.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"plist"}];
  }

  v12 = [plistCopy objectForKeyedSubscript:self->_classNameKey];
  v13 = NSClassFromString(v12);
  if (!v13)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PMLPlistClassWrapper.m" lineNumber:42 description:{@"Invalid plan. Unknown class: %@", 0}];
  }

  if (([(objc_class *)v13 conformsToProtocol:&unk_28735B0C0]& 1) == 0)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PMLPlistClassWrapper.m" lineNumber:45 description:{@"Invalid plan. class %@ doesn't conform to %@", v13, &unk_28735B0C0}];
  }

  v14 = [[v13 alloc] initWithPlist:plistCopy chunks:chunksCopy context:contextCopy];

  return v14;
}

- (id)writeToPlistWithObject:(id)object andChunks:(id)chunks
{
  v15[1] = *MEMORY[0x277D85DE8];
  classNameKey = self->_classNameKey;
  chunksCopy = chunks;
  objectCopy = object;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v15[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&classNameKey count:1];
  v10 = [v9 mutableCopy];

  v11 = [objectCopy toPlistWithChunks:chunksCopy];

  [v10 addEntriesFromDictionary:v11];
  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (PMLPlistClassWrapper)initWithClassNameKey:(id)key
{
  keyCopy = key;
  v9.receiver = self;
  v9.super_class = PMLPlistClassWrapper;
  v6 = [(PMLPlistClassWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_classNameKey, key);
  }

  return v7;
}

@end