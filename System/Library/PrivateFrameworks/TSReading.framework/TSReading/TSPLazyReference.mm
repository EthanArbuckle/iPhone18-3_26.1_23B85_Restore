@interface TSPLazyReference
+ (id)referenceForObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (TSPComponent)component;
- (TSPLazyReference)init;
- (TSPLazyReference)initWithDelegate:(id)a3 identifier:(int64_t)a4 isWeak:(BOOL)a5 allowUnknownObject:(BOOL)a6;
- (TSPLazyReference)initWithTSPObject:(id)a3;
- (TSPLazyReferenceDelegate)delegate;
- (TSPObject)weakObject;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)object;
- (id)objectIfLoaded;
- (void)resetIdentifier;
- (void)setStrongObject:(id)a3;
@end

@implementation TSPLazyReference

+ (id)referenceForObject:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithTSPObject:v4];

  return v5;
}

- (TSPLazyReference)init
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPLazyReference init]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPLazyReference.mm"];
  [v2 handleFailureInFunction:v3 file:v4 lineNumber:39 description:@"Do not call method"];

  v5 = MEMORY[0x277CBEAD8];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[TSPLazyReference init]"];
  v7 = [v5 exceptionWithName:*MEMORY[0x277CBE658] reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (TSPLazyReference)initWithDelegate:(id)a3 identifier:(int64_t)a4 isWeak:(BOOL)a5 allowUnknownObject:(BOOL)a6
{
  v10 = a3;
  if (!v10)
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPLazyReference initWithDelegate:identifier:isWeak:allowUnknownObject:]"];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPLazyReference.mm"];
    [v11 handleFailureInFunction:v12 file:v13 lineNumber:44 description:{@"invalid nil value for '%s'", "delegate"}];
  }

  v17.receiver = self;
  v17.super_class = TSPLazyReference;
  v14 = [(TSPLazyReference *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_delegate, v10);
    v15->_identifier = a4;
    v15->_isWeak = a5;
    v15->_allowUnknownObject = a6;
  }

  return v15;
}

- (TSPLazyReference)initWithTSPObject:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 context];
    v8 = [v6 tsp_identifier];
    objc_opt_class();
    v9 = [(TSPLazyReference *)self initWithDelegate:v7 identifier:v8 isWeak:0 allowUnknownObject:objc_opt_isKindOfClass() & 1];

    if (v9)
    {
      objc_storeStrong(&v9->_strongObject, a3);
      objc_storeWeak(&v9->_weakObject, v6);
    }

    self = v9;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(TSPLazyReference *)self isEqualToLazyReference:v4];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TSPLazyReference;
    v5 = [(TSPLazyReference *)&v8 isEqual:v4];
  }

  v6 = v5;

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (void)setStrongObject:(id)a3
{
  obj = a3;
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
  v3 = [(TSPLazyReference *)self weakObject];
  v7 = v3;
  if (v3)
  {
    self->_identifier = [v3 tsp_identifier];
  }

  else
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPLazyReference resetIdentifier]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPLazyReference.mm"];
    [v4 handleFailureInFunction:v5 file:v6 lineNumber:256 description:@"You should not reset the lazy reference's identifier when its object isn't loaded in memory."];
  }
}

- (id)debugDescription
{
  v3 = [(TSPLazyReference *)self weakObject];
  v4 = MEMORY[0x277CCACA8];
  if (v3)
  {
    v11.receiver = self;
    v11.super_class = TSPLazyReference;
    v5 = [(TSPLazyReference *)&v11 debugDescription];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v4 stringWithFormat:@"%@ object class: %@; identifier: %qu", v5, v7, objc_msgSend(v3, "tsp_identifier")];;
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