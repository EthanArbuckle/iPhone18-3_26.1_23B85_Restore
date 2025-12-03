@interface SKIOObject
- (NSString)ioClassName;
- (SKIOObject)initWithClassName:(id)name;
- (SKIOObject)initWithIOObject:(unsigned int)object retain:(BOOL)retain;
- (SKIOObject)initWithIteratorNext:(id)next;
- (SKIOObject)initWithSKIOObject:(id)object;
- (SKIOObject)ioObjectWithClassName:(id)name iterateParents:(BOOL)parents;
- (id)copyParent;
- (id)copyParentPropertyWithClass:(Class)class key:(id)key;
- (id)copyProperties;
- (id)copyPropertyWithClass:(Class)class key:(id)key;
- (void)dealloc;
@end

@implementation SKIOObject

- (SKIOObject)initWithIOObject:(unsigned int)object retain:(BOOL)retain
{
  if (object)
  {
    if (retain)
    {
      IOObjectRetain(object);
    }

    v10.receiver = self;
    v10.super_class = SKIOObject;
    v6 = [(SKIOObject *)&v10 init];
    v7 = v6;
    if (v6)
    {
      v6->_ioObj = object;
    }

    else
    {
      IOObjectRelease(object);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (SKIOObject)initWithSKIOObject:(id)object
{
  ioObj = [object ioObj];

  return [(SKIOObject *)self initWithIOObject:ioObj retain:1];
}

- (SKIOObject)initWithClassName:(id)name
{
  v14 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = *MEMORY[0x277CD2898];
  v6 = IOServiceMatching([nameCopy UTF8String]);
  MatchingService = IOServiceGetMatchingService(v5, v6);
  if (MatchingService)
  {
    self = [(SKIOObject *)self initWithIOObject:MatchingService];
    selfCopy = self;
  }

  else
  {
    v9 = SKGetOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = nameCopy;
      _os_log_impl(&dword_26BBB8000, v9, OS_LOG_TYPE_ERROR, "Cannot find IO object of class %@", &v12, 0xCu);
    }

    selfCopy = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (SKIOObject)initWithIteratorNext:(id)next
{
  copyNextObject = [next copyNextObject];

  return [(SKIOObject *)self initWithIOObject:copyNextObject];
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

- (SKIOObject)ioObjectWithClassName:(id)name iterateParents:(BOOL)parents
{
  parentsCopy = parents;
  v17 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  uTF8String = [nameCopy UTF8String];
  if (parentsCopy)
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
      if (IOObjectConformsTo([(SKIOObject *)v11 ioObj], uTF8String))
      {
        goto LABEL_13;
      }
    }

    v12 = SKGetOSLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = nameCopy;
      _os_log_impl(&dword_26BBB8000, v12, OS_LOG_TYPE_ERROR, "Cannot find %@ entry", &v15, 0xCu);
    }
  }

  v11 = 0;
LABEL_13:

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)copyPropertyWithClass:(Class)class key:(id)key
{
  keyCopy = key;
  ioObj = [(SKIOObject *)self ioObj];
  CFProperty = IORegistryEntryCreateCFProperty(ioObj, keyCopy, *MEMORY[0x277CBECE8], 0);

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

- (id)copyParentPropertyWithClass:(Class)class key:(id)key
{
  keyCopy = key;
  ioObj = [(SKIOObject *)self ioObj];
  v7 = IORegistryEntrySearchCFProperty(ioObj, "IOService", keyCopy, *MEMORY[0x277CBECE8], 3u);

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
  ioObj = [(SKIOObject *)self ioObj];
  IORegistryEntryCreateCFProperties(ioObj, &properties, *MEMORY[0x277CBECE8], 0);
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