@interface PROConcretePlugInGroup
- (BOOL)isEqual:(id)equal;
- (PROConcretePlugInGroup)initWithUUID:(__CFUUID *)d name:(id)name bundle:(id)bundle;
- (id)description;
- (id)uuidString;
- (void)addPlugIn:(id)in;
- (void)dealloc;
- (void)removePlugIn:(id)in;
@end

@implementation PROConcretePlugInGroup

- (PROConcretePlugInGroup)initWithUUID:(__CFUUID *)d name:(id)name bundle:(id)bundle
{
  if (d && name && bundle)
  {
    v14.receiver = self;
    v14.super_class = PROConcretePlugInGroup;
    v8 = [(PROConcretePlugInGroup *)&v14 init];
    v9 = v8;
    if (v8)
    {
      v10 = [(PROConcretePlugInGroup *)v8 zone];
      v9->uuidRef = CFRetain(d);
      v11 = [name copy];
      v9->name = v11;
      v9->displayName = [objc_msgSend(bundle localizedStringForKey:v11 value:0 table:{0), "copy"}];
      v9->plugIns = [objc_msgSend(MEMORY[0x277CBEB18] allocWithZone:{v10), "init"}];
      v9->protocols = [objc_msgSend(MEMORY[0x277CBEB38] allocWithZone:{v10), "init"}];
      v9->mutex = [objc_msgSend(MEMORY[0x277CCAAF8] allocWithZone:{v10), "init"}];
    }
  }

  else
  {
    selfCopy = self;
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

- (BOOL)isEqual:(id)equal
{
  if (objc_opt_respondsToSelector())
  {

    return [(PROConcretePlugInGroup *)self isEqualToPlugInGroup:equal];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PROConcretePlugInGroup;
    return [(PROConcretePlugInGroup *)&v6 isEqual:equal];
  }
}

- (void)addPlugIn:(id)in
{
  if (!in)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Nil argument '%s' to method '%@'", "plugIn", NSStringFromSelector(a2)}];
  }

  [(NSLock *)self->mutex lock];
  [-[PROConcretePlugInGroup mutableArrayValueForKey:](self mutableArrayValueForKey:{@"plugIns", "addObject:", in}];
  v5 = [objc_msgSend(in "implementedProtocols")];
  nextObject = [v5 nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      [(NSMutableDictionary *)self->protocols addObject:in toSetForKey:nextObject2];
      nextObject2 = [v5 nextObject];
    }

    while (nextObject2);
  }

  mutex = self->mutex;

  [(NSLock *)mutex unlock];
}

- (void)removePlugIn:(id)in
{
  if (!in)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Nil argument '%s' to method '%@'", "plugIn", NSStringFromSelector(a2)}];
  }

  v5 = [objc_msgSend(in "implementedProtocols")];
  [(NSLock *)self->mutex lock];
  nextObject = [v5 nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      [(NSMutableDictionary *)self->protocols removeObject:in fromSetForKey:nextObject2];
      nextObject2 = [v5 nextObject];
    }

    while (nextObject2);
  }

  [-[PROConcretePlugInGroup mutableArrayValueForKey:](self mutableArrayValueForKey:{@"plugIns", nextObject2), "removeObject:", in}];
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