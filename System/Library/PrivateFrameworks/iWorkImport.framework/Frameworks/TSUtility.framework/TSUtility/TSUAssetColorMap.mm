@interface TSUAssetColorMap
+ (id)assetColorMap;
- (NSDictionary)assetPathToColorMap;
- (TSUAssetColorMap)init;
- (id)TSUColorFromColorArray:(id)array;
- (void)addEntriesFromPlistBasename:(id)basename transformKeyBlock:(id)block;
@end

@implementation TSUAssetColorMap

+ (id)assetColorMap
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (TSUAssetColorMap)init
{
  v6.receiver = self;
  v6.super_class = TSUAssetColorMap;
  v2 = [(TSUAssetColorMap *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mAssetPathToColorMap = v2->mAssetPathToColorMap;
    v2->mAssetPathToColorMap = v3;
  }

  return v2;
}

- (NSDictionary)assetPathToColorMap
{
  [(NSMutableDictionary *)self->mAssetPathToColorMap count];
  v3 = [(NSMutableDictionary *)self->mAssetPathToColorMap copy];

  return v3;
}

- (id)TSUColorFromColorArray:(id)array
{
  arrayCopy = array;
  v4 = [arrayCopy count];
  if (v4 > 4)
  {
    v15 = 0;
  }

  else
  {
    v5 = v4;
    v6 = [arrayCopy objectAtIndexedSubscript:0];
    intValue = [v6 intValue];

    if (v5 < 3)
    {
      v14 = 255.0;
      intValue3 = intValue;
      intValue2 = intValue;
    }

    else
    {
      v8 = [arrayCopy objectAtIndexedSubscript:1];
      intValue2 = [v8 intValue];

      v10 = [arrayCopy objectAtIndexedSubscript:2];
      intValue3 = [v10 intValue];

      if (v5 == 4)
      {
        v12 = [arrayCopy objectAtIndexedSubscript:3];
        [v12 floatValue];
        v14 = v13;
      }

      else
      {
        v14 = 255.0;
      }
    }

    v15 = [TSUColor colorWithRed:(intValue / 255.0) green:(intValue2 / 255.0) blue:(intValue3 / 255.0) alpha:(v14 / 255.0)];
  }

  return v15;
}

- (void)addEntriesFromPlistBasename:(id)basename transformKeyBlock:(id)block
{
  basenameCopy = basename;
  blockCopy = block;
  tsu_resourcesBundle = [MEMORY[0x277CCA8D8] tsu_resourcesBundle];
  if (!tsu_resourcesBundle)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUAssetColorMap addEntriesFromPlistBasename:transformKeyBlock:]"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUAssetColorMap.m"];
    [TSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:64 isFatal:0 description:"invalid nil value for '%{public}s'", "bundle"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v12 = [tsu_resourcesBundle pathForResource:basenameCopy ofType:@"plist"];
  if (v12)
  {
    v32 = basenameCopy;
    v13 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v12];
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_2770FC344;
    v33[3] = &unk_27A703B68;
    v31 = blockCopy;
    v35 = blockCopy;
    v33[4] = self;
    v15 = v14;
    v34 = v15;
    v36 = a2;
    [v13 enumerateKeysAndObjectsUsingBlock:v33];
    tsu_allKeysAsSet = [v15 tsu_allKeysAsSet];
    tsu_allKeysAsSet2 = [(NSMutableDictionary *)self->mAssetPathToColorMap tsu_allKeysAsSet];
    v18 = [tsu_allKeysAsSet intersectsSet:tsu_allKeysAsSet2];

    if (v18)
    {
      v30 = v13;
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUAssetColorMap addEntriesFromPlistBasename:transformKeyBlock:]"];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUAssetColorMap.m"];
      v21 = MEMORY[0x277CBEB98];
      tsu_allKeysAsSet3 = [v15 tsu_allKeysAsSet];
      tsu_allKeysAsSet4 = [(NSMutableDictionary *)self->mAssetPathToColorMap tsu_allKeysAsSet];
      v24 = [v21 setWithObjects:{tsu_allKeysAsSet3, tsu_allKeysAsSet4, 0}];
      v25 = [v21 tsu_intersectionOfSets:v24];
      [TSUAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:97 isFatal:0 description:"Overwriting duplicated entries %@", v25];

      v13 = v30;
      +[TSUAssertionHandler logBacktraceThrottled];
    }

    mAssetPathToColorMap = self->mAssetPathToColorMap;
    if (!mAssetPathToColorMap)
    {
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUAssetColorMap addEntriesFromPlistBasename:transformKeyBlock:]"];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUAssetColorMap.m"];
      [TSUAssertionHandler handleFailureInFunction:v27 file:v28 lineNumber:98 isFatal:0 description:"invalid nil value for '%{public}s'", "mAssetPathToColorMap"];

      +[TSUAssertionHandler logBacktraceThrottled];
      mAssetPathToColorMap = self->mAssetPathToColorMap;
    }

    [(NSMutableDictionary *)mAssetPathToColorMap addEntriesFromDictionary:v15];

    blockCopy = v31;
    basenameCopy = v32;
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TSUAssetColorMap.m" lineNumber:102 description:{@"No plist found for name %@", basenameCopy}];
  }
}

@end