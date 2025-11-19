@interface TSPUnknownObject
- (TSPUnknownObject)initWithContext:(id)a3;
- (void)willModify;
- (void)willModifyForUpgrade;
@end

@implementation TSPUnknownObject

- (TSPUnknownObject)initWithContext:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPUnknownObject initWithContext:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPUnknownObject.mm"];
  [v4 handleFailureInFunction:v5 file:v6 lineNumber:29 description:@"Do not call method"];

  v7 = MEMORY[0x277CBEAD8];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[TSPUnknownObject initWithContext:]"];
  v9 = [v7 exceptionWithName:*MEMORY[0x277CBE658] reason:v8 userInfo:0];
  v10 = v9;

  objc_exception_throw(v9);
}

- (void)willModify
{
  v4 = [MEMORY[0x277D6C290] currentHandler];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPUnknownObject willModify]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPUnknownObject.mm"];
  [v4 handleFailureInFunction:v2 file:v3 lineNumber:34 description:@"Unknown objects should never be modified."];
}

- (void)willModifyForUpgrade
{
  v4 = [MEMORY[0x277D6C290] currentHandler];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPUnknownObject willModifyForUpgrade]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPUnknownObject.mm"];
  [v4 handleFailureInFunction:v2 file:v3 lineNumber:39 description:@"Unknown objects should never be modified."];
}

@end