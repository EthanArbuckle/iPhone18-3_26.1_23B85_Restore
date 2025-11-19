@interface TSPObjectContainer
+ (int64_t)objectIdentifierForPackageIdentifier:(unsigned __int8)a3;
- (TSPObjectContainer)initWithContext:(id)a3;
- (TSPObjectContainer)initWithContext:(id)a3 packageIdentifier:(unsigned __int8)a4;
- (int64_t)tsp_identifier;
- (void)prepareForComponentWriteWithDelayedObjects:(id)a3;
@end

@implementation TSPObjectContainer

- (TSPObjectContainer)initWithContext:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPObjectContainer initWithContext:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPObjectContainer.mm"];
  [v4 handleFailureInFunction:v5 file:v6 lineNumber:25 description:@"Do not call method"];

  v7 = MEMORY[0x277CBEAD8];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[TSPObjectContainer initWithContext:]"];
  v9 = [v7 exceptionWithName:*MEMORY[0x277CBE658] reason:v8 userInfo:0];
  v10 = v9;

  objc_exception_throw(v9);
}

- (TSPObjectContainer)initWithContext:(id)a3 packageIdentifier:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  if (!v4)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPObjectContainer initWithContext:packageIdentifier:]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPObjectContainer.mm"];
    [v7 handleFailureInFunction:v8 file:v9 lineNumber:30 description:@"Unexpected package identifier."];
  }

  v13.receiver = self;
  v13.super_class = TSPObjectContainer;
  v10 = [(TSPObject *)&v13 initWithContext:v6];
  v11 = v10;
  if (v10)
  {
    v10->_packageIdentifier = v4;
  }

  return v11;
}

+ (int64_t)objectIdentifierForPackageIdentifier:(unsigned __int8)a3
{
  if (a3 == 2)
  {
    v3 = &UnsafePointer;
    return *v3;
  }

  if (a3 == 1)
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
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPObjectContainer tsp_identifier]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPObjectContainer.mm"];
    [v4 handleFailureInFunction:v5 file:v6 lineNumber:100 description:{@"Unexpected package identifier: %d", self->_packageIdentifier}];

    v7.receiver = self;
    v7.super_class = TSPObjectContainer;
    return [(TSPObject *)&v7 tsp_identifier];
  }

  return result;
}

- (void)prepareForComponentWriteWithDelayedObjects:(id)a3
{
  v9 = a3;
  if (self->_childObjects)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPObjectContainer prepareForComponentWriteWithDelayedObjects:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPObjectContainer.mm"];
    [v4 handleFailureInFunction:v5 file:v6 lineNumber:124 description:{@"expected nil value for '%s'", "_childObjects"}];
  }

  v7 = [v9 copy];
  childObjects = self->_childObjects;
  self->_childObjects = v7;
}

@end