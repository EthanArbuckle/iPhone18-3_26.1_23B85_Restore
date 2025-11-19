@interface PROConcretePlugInGroup
- (BOOL)isEqual:(id)a3;
- (PROConcretePlugInGroup)initWithUUID:(__CFUUID *)a3 name:(id)a4 bundle:(id)a5;
- (id)description;
- (id)uuidString;
- (void)addPlugIn:(id)a3;
- (void)dealloc;
- (void)removePlugIn:(id)a3;
@end

@implementation PROConcretePlugInGroup

- (PROConcretePlugInGroup)initWithUUID:(__CFUUID *)a3 name:(id)a4 bundle:(id)a5
{
  if (a3 && a4 && a5)
  {
    v14.receiver = self;
    v14.super_class = PROConcretePlugInGroup;
    v8 = [(PROConcretePlugInGroup *)&v14 init];
    v9 = v8;
    if (v8)
    {
      v10 = [(PROConcretePlugInGroup *)v8 zone];
      v9->uuidRef = CFRetain(a3);
      v11 = [a4 copy];
      v9->name = v11;
      v9->displayName = [objc_msgSend(a5 localizedStringForKey:v11 value:0 table:{0), "copy"}];
      v9->plugIns = [objc_msgSend(MEMORY[0x277CBEB18] allocWithZone:{v10), "init"}];
      v9->protocols = [objc_msgSend(MEMORY[0x277CBEB38] allocWithZone:{v10), "init"}];
      v9->mutex = [objc_msgSend(MEMORY[0x277CCAAF8] allocWithZone:{v10), "init"}];
    }
  }

  else
  {
    v12 = self;
    return 0;
  }

  return v9;
}

- (void)dealloc
{
  uuidRef = self->uuidRef;
  if (uuidRef)
  {
    CFRelease(uuidRef);
  }

  [(NSLock *)self->mutex lock];
  v4.receiver = self;
  v4.super_class = PROConcretePlugInGroup;
  [(PROConcretePlugInGroup *)&v4 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (objc_opt_respondsToSelector())
  {

    return [(PROConcretePlugInGroup *)self isEqualToPlugInGroup:a3];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PROConcretePlugInGroup;
    return [(PROConcretePlugInGroup *)&v6 isEqual:a3];
  }
}

- (void)addPlugIn:(id)a3
{
  if (!a3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Nil argument '%s' to method '%@'", "plugIn", NSStringFromSelector(a2)}];
  }

  [(NSLock *)self->mutex lock];
  [-[PROConcretePlugInGroup mutableArrayValueForKey:](self mutableArrayValueForKey:{@"plugIns", "addObject:", a3}];
  v5 = [objc_msgSend(a3 "implementedProtocols")];
  v6 = [v5 nextObject];
  if (v6)
  {
    v7 = v6;
    do
    {
      [(NSMutableDictionary *)self->protocols addObject:a3 toSetForKey:v7];
      v7 = [v5 nextObject];
    }

    while (v7);
  }

  mutex = self->mutex;

  [(NSLock *)mutex unlock];
}

- (void)removePlugIn:(id)a3
{
  if (!a3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Nil argument '%s' to method '%@'", "plugIn", NSStringFromSelector(a2)}];
  }

  v5 = [objc_msgSend(a3 "implementedProtocols")];
  [(NSLock *)self->mutex lock];
  v6 = [v5 nextObject];
  if (v6)
  {
    v7 = v6;
    do
    {
      [(NSMutableDictionary *)self->protocols removeObject:a3 fromSetForKey:v7];
      v7 = [v5 nextObject];
    }

    while (v7);
  }

  [-[PROConcretePlugInGroup mutableArrayValueForKey:](self mutableArrayValueForKey:{@"plugIns", v7), "removeObject:", a3}];
  mutex = self->mutex;

  [(NSLock *)mutex unlock];
}

- (id)uuidString
{
  v2 = CFUUIDCreateString(*MEMORY[0x277CBECE8], self->uuidRef);

  return v2;
}

- (id)description
{
  v3 = CFUUIDCreateString(0, self->uuidRef);
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Group: %@\n\tUUID: %@\n\tPlugins: %@\n\tProtocols: %@", -[PROConcretePlugInGroup displayName](self, "displayName"), v3, self->plugIns, self->protocols];

  return v4;
}

@end