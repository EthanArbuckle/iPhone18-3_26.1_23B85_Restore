@interface TSPObject
- (BOOL)isComponentRoot;
- (TSPObject)init;
- (TSPObject)initWithContext:(id)a3;
- (TSPObjectContext)context;
- (TSPObjectDelegate)tsp_delegate;
- (id)documentRoot;
- (id)initDocumentObjectWithContext:(id)a3;
- (int64_t)tsp_identifier;
@end

@implementation TSPObject

- (TSPObject)init
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPObject init]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPObject.mm"];
  [v2 handleFailureInFunction:v3 file:v4 lineNumber:54 description:@"Do not call method"];

  v5 = MEMORY[0x277CBEAD8];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[TSPObject init]"];
  v7 = [v5 exceptionWithName:*MEMORY[0x277CBE658] reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (TSPObjectContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained context];

  return v3;
}

- (TSPObject)initWithContext:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TSPObject;
  v5 = [(TSPObject *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_delegate, v4);
    v6->_modifyObjectToken = [v4 modifyObjectTokenForNewObject];
  }

  return v6;
}

- (id)initDocumentObjectWithContext:(id)a3
{
  v4 = a3;
  v5 = [(TSPObject *)self initWithContext:v4];
  if (v5)
  {
    [v4 setDocumentObject:v5];
  }

  return v5;
}

- (BOOL)isComponentRoot
{
  v3 = [(TSPObject *)self packageLocator];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = self->_identifier == 1;
  }

  return v4;
}

- (int64_t)tsp_identifier
{
  result = self->_identifier;
  if (!result)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [WeakRetained newObjectIdentifier];

    v6 = 0;
    atomic_compare_exchange_strong(&self->_identifier, &v6, v5);
    return self->_identifier;
  }

  return result;
}

- (TSPObjectDelegate)tsp_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)documentRoot
{
  v2 = [(TSPObject *)self context];

  return [(TSPObjectContext *)v2 documentRoot];
}

@end