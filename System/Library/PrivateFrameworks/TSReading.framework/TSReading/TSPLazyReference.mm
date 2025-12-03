@interface TSPLazyReference
+ (id)referenceForObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (TSPComponent)component;
- (TSPLazyReference)init;
- (TSPLazyReference)initWithDelegate:(id)delegate identifier:(int64_t)identifier isWeak:(BOOL)weak allowUnknownObject:(BOOL)object;
- (TSPLazyReference)initWithTSPObject:(id)object;
- (TSPLazyReferenceDelegate)delegate;
- (TSPObject)weakObject;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)object;
- (id)objectIfLoaded;
- (void)resetIdentifier;
- (void)setStrongObject:(id)object;
@end

@implementation TSPLazyReference

+ (id)referenceForObject:(id)object
{
  objectCopy = object;
  v5 = [[self alloc] initWithTSPObject:objectCopy];

  return v5;
}

- (TSPLazyReference)init
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPLazyReference init]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPLazyReference.mm"];
  [currentHandler handleFailureInFunction:v3 file:v4 lineNumber:39 description:@"Do not call method"];

  v5 = MEMORY[0x277CBEAD8];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[TSPLazyReference init]"];
  v7 = [v5 exceptionWithName:*MEMORY[0x277CBE658] reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (TSPLazyReference)initWithDelegate:(id)delegate identifier:(int64_t)identifier isWeak:(BOOL)weak allowUnknownObject:(BOOL)object
{
  delegateCopy = delegate;
  if (!delegateCopy)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPLazyReference initWithDelegate:identifier:isWeak:allowUnknownObject:]"];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPLazyReference.mm"];
    [currentHandler handleFailureInFunction:v12 file:v13 lineNumber:44 description:{@"invalid nil value for '%s'", "delegate"}];
  }

  v17.receiver = self;
  v17.super_class = TSPLazyReference;
  v14 = [(TSPLazyReference *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_delegate, delegateCopy);
    v15->_identifier = identifier;
    v15->_isWeak = weak;
    v15->_allowUnknownObject = object;
  }

  return v15;
}

- (TSPLazyReference)initWithTSPObject:(id)object
{
  objectCopy = object;
  v6 = objectCopy;
  if (objectCopy)
  {
    context = [objectCopy context];
    tsp_identifier = [v6 tsp_identifier];
    objc_opt_class();
    v9 = [(TSPLazyReference *)self initWithDelegate:context identifier:tsp_identifier isWeak:0 allowUnknownObject:objc_opt_isKindOfClass() & 1];

    if (v9)
    {
      objc_storeStrong(&v9->_strongObject, object);
      objc_storeWeak(&v9->_weakObject, v6);
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)object
{
  strongObject = self->_strongObject;
  if (strongObject)
  {
    WeakRetained = strongObject;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_weakObject);
  }

  return WeakRetained;
}

- (id)objectIfLoaded
{
  strongObject = self->_strongObject;
  if (strongObject)
  {
    WeakRetained = strongObject;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_weakObject);
    if (!WeakRetained)
    {
      v5 = objc_loadWeakRetained(&self->_delegate);
      WeakRetained = [v5 objectForIdentifier:self->_identifier];

      if (WeakRetained)
      {
        objc_storeWeak(&self->_weakObject, WeakRetained);
      }
    }
  }

  return WeakRetained;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(TSPLazyReference *)self isEqualToLazyReference:equalCopy];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TSPLazyReference;
    v5 = [(TSPLazyReference *)&v8 isEqual:equalCopy];
  }

  v6 = v5;

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [[TSPLazyReference allocWithZone:?]identifier:"initWithDelegate:identifier:isWeak:allowUnknownObject:" isWeak:WeakRetained allowUnknownObject:self->_identifier, self->_isWeak, self->_allowUnknownObject];
  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_component);
    objc_storeWeak(&v6->_component, v7);

    objc_storeStrong(&v6->_strongObject, self->_strongObject);
    v8 = objc_loadWeakRetained(&self->_weakObject);
    objc_storeWeak(&v6->_weakObject, v8);

    if (objc_opt_respondsToSelector())
    {
      [WeakRetained lazyReference:self didCreateCopy:v6];
    }
  }

  return v6;
}

- (TSPObject)weakObject
{
  WeakRetained = objc_loadWeakRetained(&self->_weakObject);

  return WeakRetained;
}

- (void)setStrongObject:(id)object
{
  obj = object;
  if (!self->_allowUnknownObject)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!self->_isWeak)
      {
        TSULogErrorInFunction();
      }

      obj = 0;
    }
  }

  if (!self->_isWeak)
  {
    objc_storeStrong(&self->_strongObject, obj);
  }

  objc_storeWeak(&self->_weakObject, obj);
}

- (void)resetIdentifier
{
  weakObject = [(TSPLazyReference *)self weakObject];
  v7 = weakObject;
  if (weakObject)
  {
    self->_identifier = [weakObject tsp_identifier];
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPLazyReference resetIdentifier]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPLazyReference.mm"];
    [currentHandler handleFailureInFunction:v5 file:v6 lineNumber:256 description:@"You should not reset the lazy reference's identifier when its object isn't loaded in memory."];
  }
}

- (id)debugDescription
{
  weakObject = [(TSPLazyReference *)self weakObject];
  v4 = MEMORY[0x277CCACA8];
  if (weakObject)
  {
    v11.receiver = self;
    v11.super_class = TSPLazyReference;
    v5 = [(TSPLazyReference *)&v11 debugDescription];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v4 stringWithFormat:@"%@ object class: %@; identifier: %qu", v5, v7, objc_msgSend(weakObject, "tsp_identifier")];;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TSPLazyReference;
    v5 = [(TSPLazyReference *)&v10 debugDescription];
    v8 = [v4 stringWithFormat:@"%@ unloaded object identifier: %qu", v5, -[TSPLazyReference identifier](self, "identifier")];;
  }

  return v8;
}

- (TSPLazyReferenceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (TSPComponent)component
{
  WeakRetained = objc_loadWeakRetained(&self->_component);

  return WeakRetained;
}

@end