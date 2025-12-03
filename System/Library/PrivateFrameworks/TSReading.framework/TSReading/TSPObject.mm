@interface TSPObject
- (BOOL)isComponentRoot;
- (TSPObject)init;
- (TSPObject)initWithContext:(id)context;
- (TSPObjectContext)context;
- (TSPObjectDelegate)tsp_delegate;
- (id)documentRoot;
- (id)initDocumentObjectWithContext:(id)context;
- (int64_t)tsp_identifier;
@end

@implementation TSPObject

- (TSPObject)init
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPObject init]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPObject.mm"];
  [currentHandler handleFailureInFunction:v3 file:v4 lineNumber:54 description:@"Do not call method"];

  v5 = MEMORY[0x277CBEAD8];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[TSPObject init]"];
  v7 = [v5 exceptionWithName:*MEMORY[0x277CBE658] reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (TSPObjectContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  context = [WeakRetained context];

  return context;
}

- (TSPObject)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = TSPObject;
  v5 = [(TSPObject *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_delegate, contextCopy);
    v6->_modifyObjectToken = [contextCopy modifyObjectTokenForNewObject];
  }

  return v6;
}

- (id)initDocumentObjectWithContext:(id)context
{
  contextCopy = context;
  v5 = [(TSPObject *)self initWithContext:contextCopy];
  if (v5)
  {
    [contextCopy setDocumentObject:v5];
  }

  return v5;
}

- (BOOL)isComponentRoot
{
  packageLocator = [(TSPObject *)self packageLocator];
  if (packageLocator)
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
    newObjectIdentifier = [WeakRetained newObjectIdentifier];

    v6 = 0;
    atomic_compare_exchange_strong(&self->_identifier, &v6, newObjectIdentifier);
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
  context = [(TSPObject *)self context];

  return [(TSPObjectContext *)context documentRoot];
}

@end