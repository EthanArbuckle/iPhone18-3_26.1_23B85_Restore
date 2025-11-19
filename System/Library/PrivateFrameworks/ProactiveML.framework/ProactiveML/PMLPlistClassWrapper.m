@interface PMLPlistClassWrapper
- (PMLPlistClassWrapper)initWithClassNameKey:(id)a3;
- (id)readObjectWithData:(id)a3 chunks:(id)a4 context:(id)a5;
- (id)readObjectWithPlist:(id)a3 chunks:(id)a4 context:(id)a5;
- (id)writeToDataWithObject:(id)a3 andChunks:(id)a4;
- (id)writeToPlistWithObject:(id)a3 andChunks:(id)a4;
@end

@implementation PMLPlistClassWrapper

- (id)readObjectWithData:(id)a3 chunks:(id)a4 context:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v16 = 0;
  v10 = [MEMORY[0x277CCAC58] propertyListWithData:a3 options:0 format:0 error:&v16];
  v11 = v16;
  if (v10)
  {
    v12 = [(PMLPlistClassWrapper *)self readObjectWithPlist:v10 chunks:v8 context:v9];
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

- (id)writeToDataWithObject:(id)a3 andChunks:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAC58];
  v5 = [(PMLPlistClassWrapper *)self writeToPlistWithObject:a3 andChunks:a4];
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

- (id)readObjectWithPlist:(id)a3 chunks:(id)a4 context:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PMLPlistClassWrapper.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"plist"}];
  }

  v12 = [v9 objectForKeyedSubscript:self->_classNameKey];
  v13 = NSClassFromString(v12);
  if (!v13)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PMLPlistClassWrapper.m" lineNumber:42 description:{@"Invalid plan. Unknown class: %@", 0}];
  }

  if (([(objc_class *)v13 conformsToProtocol:&unk_28735B0C0]& 1) == 0)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PMLPlistClassWrapper.m" lineNumber:45 description:{@"Invalid plan. class %@ doesn't conform to %@", v13, &unk_28735B0C0}];
  }

  v14 = [[v13 alloc] initWithPlist:v9 chunks:v10 context:v11];

  return v14;
}

- (id)writeToPlistWithObject:(id)a3 andChunks:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  classNameKey = self->_classNameKey;
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v15[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&classNameKey count:1];
  v10 = [v9 mutableCopy];

  v11 = [v6 toPlistWithChunks:v5];

  [v10 addEntriesFromDictionary:v11];
  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (PMLPlistClassWrapper)initWithClassNameKey:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PMLPlistClassWrapper;
  v6 = [(PMLPlistClassWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_classNameKey, a3);
  }

  return v7;
}

@end