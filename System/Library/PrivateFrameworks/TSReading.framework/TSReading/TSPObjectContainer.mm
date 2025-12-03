@interface TSPObjectContainer
+ (int64_t)objectIdentifierForPackageIdentifier:(unsigned __int8)identifier;
- (TSPObjectContainer)initWithContext:(id)context;
- (TSPObjectContainer)initWithContext:(id)context packageIdentifier:(unsigned __int8)identifier;
- (int64_t)tsp_identifier;
- (void)prepareForComponentWriteWithDelayedObjects:(id)objects;
@end

@implementation TSPObjectContainer

- (TSPObjectContainer)initWithContext:(id)context
{
  contextCopy = context;
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPObjectContainer initWithContext:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPObjectContainer.mm"];
  [currentHandler handleFailureInFunction:v5 file:v6 lineNumber:25 description:@"Do not call method"];

  v7 = MEMORY[0x277CBEAD8];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[TSPObjectContainer initWithContext:]"];
  v9 = [v7 exceptionWithName:*MEMORY[0x277CBE658] reason:v8 userInfo:0];
  v10 = v9;

  objc_exception_throw(v9);
}

- (TSPObjectContainer)initWithContext:(id)context packageIdentifier:(unsigned __int8)identifier
{
  identifierCopy = identifier;
  contextCopy = context;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPObjectContainer initWithContext:packageIdentifier:]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPObjectContainer.mm"];
    [currentHandler handleFailureInFunction:v8 file:v9 lineNumber:30 description:@"Unexpected package identifier."];
  }

  v13.receiver = self;
  v13.super_class = TSPObjectContainer;
  v10 = [(TSPObject *)&v13 initWithContext:contextCopy];
  v11 = v10;
  if (v10)
  {
    v10->_packageIdentifier = identifierCopy;
  }

  return v11;
}

+ (int64_t)objectIdentifierForPackageIdentifier:(unsigned __int8)identifier
{
  if (identifier == 2)
  {
    v3 = &UnsafePointer;
    return *v3;
  }

  if (identifier == 1)
  {
    v3 = &UnsafePointer;
    return *v3;
  }

  return 0;
}

- (int64_t)tsp_identifier
{
  result = [objc_opt_class() objectIdentifierForPackageIdentifier:self->_packageIdentifier];
  if (!result)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPObjectContainer tsp_identifier]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPObjectContainer.mm"];
    [currentHandler handleFailureInFunction:v5 file:v6 lineNumber:100 description:{@"Unexpected package identifier: %d", self->_packageIdentifier}];

    v7.receiver = self;
    v7.super_class = TSPObjectContainer;
    return [(TSPObject *)&v7 tsp_identifier];
  }

  return result;
}

- (void)prepareForComponentWriteWithDelayedObjects:(id)objects
{
  objectsCopy = objects;
  if (self->_childObjects)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPObjectContainer prepareForComponentWriteWithDelayedObjects:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPObjectContainer.mm"];
    [currentHandler handleFailureInFunction:v5 file:v6 lineNumber:124 description:{@"expected nil value for '%s'", "_childObjects"}];
  }

  v7 = [objectsCopy copy];
  childObjects = self->_childObjects;
  self->_childObjects = v7;
}

@end