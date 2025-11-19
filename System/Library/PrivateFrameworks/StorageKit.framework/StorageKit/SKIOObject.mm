@interface SKIOObject
- (NSString)ioClassName;
- (SKIOObject)initWithClassName:(id)a3;
- (SKIOObject)initWithIOObject:(unsigned int)a3 retain:(BOOL)a4;
- (SKIOObject)initWithIteratorNext:(id)a3;
- (SKIOObject)initWithSKIOObject:(id)a3;
- (SKIOObject)ioObjectWithClassName:(id)a3 iterateParents:(BOOL)a4;
- (id)copyParent;
- (id)copyParentPropertyWithClass:(Class)a3 key:(id)a4;
- (id)copyProperties;
- (id)copyPropertyWithClass:(Class)a3 key:(id)a4;
- (void)dealloc;
@end

@implementation SKIOObject

- (SKIOObject)initWithIOObject:(unsigned int)a3 retain:(BOOL)a4
{
  if (a3)
  {
    if (a4)
    {
      IOObjectRetain(a3);
    }

    v10.receiver = self;
    v10.super_class = SKIOObject;
    v6 = [(SKIOObject *)&v10 init];
    v7 = v6;
    if (v6)
    {
      v6->_ioObj = a3;
    }

    else
    {
      IOObjectRelease(a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (SKIOObject)initWithSKIOObject:(id)a3
{
  v4 = [a3 ioObj];

  return [(SKIOObject *)self initWithIOObject:v4 retain:1];
}

- (SKIOObject)initWithClassName:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CD2898];
  v6 = IOServiceMatching([v4 UTF8String]);
  MatchingService = IOServiceGetMatchingService(v5, v6);
  if (MatchingService)
  {
    self = [(SKIOObject *)self initWithIOObject:MatchingService];
    v8 = self;
  }

  else
  {
    v9 = SKGetOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&dword_26BBB8000, v9, OS_LOG_TYPE_ERROR, "Cannot find IO object of class %@", &v12, 0xCu);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

- (SKIOObject)initWithIteratorNext:(id)a3
{
  v4 = [a3 copyNextObject];

  return [(SKIOObject *)self initWithIOObject:v4];
}

- (NSString)ioClassName
{
  v2 = IOObjectCopyClass([(SKIOObject *)self ioObj]);

  return v2;
}

- (void)dealloc
{
  ioObj = self->_ioObj;
  if (ioObj)
  {
    IOObjectRelease(ioObj);
  }

  v4.receiver = self;
  v4.super_class = SKIOObject;
  [(SKIOObject *)&v4 dealloc];
}

- (SKIOObject)ioObjectWithClassName:(id)a3 iterateParents:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 UTF8String];
  if (v4)
  {
    v8 = 3;
  }

  else
  {
    v8 = 1;
  }

  v9 = [(SKIOObject *)self newIteratorWithOptions:v8];
  if (v9)
  {
    v10 = 0;
    while (1)
    {
      v11 = [[SKIOObject alloc] initWithIteratorNext:v9];

      if (!v11)
      {
        break;
      }

      v10 = v11;
      if (IOObjectConformsTo([(SKIOObject *)v11 ioObj], v7))
      {
        goto LABEL_13;
      }
    }

    v12 = SKGetOSLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = v6;
      _os_log_impl(&dword_26BBB8000, v12, OS_LOG_TYPE_ERROR, "Cannot find %@ entry", &v15, 0xCu);
    }
  }

  v11 = 0;
LABEL_13:

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)copyPropertyWithClass:(Class)a3 key:(id)a4
{
  v5 = a4;
  v6 = [(SKIOObject *)self ioObj];
  CFProperty = IORegistryEntryCreateCFProperty(v6, v5, *MEMORY[0x277CBECE8], 0);

  if (CFProperty && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = CFProperty;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyParentPropertyWithClass:(Class)a3 key:(id)a4
{
  v5 = a4;
  v6 = [(SKIOObject *)self ioObj];
  v7 = IORegistryEntrySearchCFProperty(v6, "IOService", v5, *MEMORY[0x277CBECE8], 3u);

  if (v7 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyProperties
{
  properties = 0;
  v2 = [(SKIOObject *)self ioObj];
  IORegistryEntryCreateCFProperties(v2, &properties, *MEMORY[0x277CBECE8], 0);
  return properties;
}

- (id)copyParent
{
  v11 = *MEMORY[0x277D85DE8];
  parent = 0;
  ParentEntry = IORegistryEntryGetParentEntry([(SKIOObject *)self ioObj], "IOService", &parent);
  if (ParentEntry)
  {
    v3 = ParentEntry;
    v4 = SKGetOSLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v10 = v3;
      _os_log_impl(&dword_26BBB8000, v4, OS_LOG_TYPE_ERROR, "Failed to get parent registry entry, err code %d", buf, 8u);
    }

    result = 0;
  }

  else
  {
    v6 = [SKIOObject alloc];
    result = [(SKIOObject *)v6 initWithIOObject:parent];
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

@end