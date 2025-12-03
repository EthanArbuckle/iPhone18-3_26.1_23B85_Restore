@interface TSUPathSet
+ (id)parseNumberOutOfBasename:(id)basename hasNumber:(BOOL *)number number:(unsigned int *)a5;
+ (void)processPath:(id)path base:(id *)base hasBaseNumber:(BOOL *)number baseNumber:(unsigned int *)baseNumber extension:(id *)extension;
- (BOOL)isPathUsed:(id)used;
- (TSUPathSet)init;
- (TSUPathSet)initWithPaths:(id)paths basePathToNumberMap:(id)map;
- (id)addPath:(id)path;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)pathIsNoLongerUsed:(id)used;
- (void)pathIsUsed:(id)used;
- (void)setUnderlyingPathSet:(id)set;
- (void)unionPathSet:(id)set;
@end

@implementation TSUPathSet

- (TSUPathSet)init
{
  v4.receiver = self;
  v4.super_class = TSUPathSet;
  v2 = [(TSUPathSet *)&v4 init];
  if (v2)
  {
    v2->mPaths = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:4096];
    v2->mBasePathToNumberMap = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:128];
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithPaths:basePathToNumberMap:", self->mPaths, self->mBasePathToNumberMap}];
  [v4 setUnderlyingPathSet:self->mUnderlyingSet];
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSUPathSet;
  [(TSUPathSet *)&v3 dealloc];
}

- (id)addPath:(id)path
{
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  [objc_opt_class() processPath:path base:&v18 hasBaseNumber:&v17 baseNumber:&v16 extension:&v15];
  v4 = v18;
  if (v17 == 1)
  {
    v4 = [v18 stringByAppendingFormat:@"-%u", v16];
  }

  if (v15)
  {
    v4 = [v4 tsu_tolerantStringByAppendingPathExtension:?];
    v5 = v18;
    if (v15)
    {
      v5 = [v18 tsu_tolerantStringByAppendingPathExtension:?];
    }
  }

  else
  {
    v5 = v18;
  }

  v6 = [objc_msgSend(v5 "uppercaseString")];
  if ([(TSUPathSet *)self isPathUsed:v4])
  {
    v7 = v16;
    if (v7 <= [-[NSMutableDictionary objectForKey:](self->mBasePathToNumberMap objectForKey:{v6), "unsignedIntValue"}])
    {
      v8 = [-[NSMutableDictionary objectForKey:](self->mBasePathToNumberMap objectForKey:{v6), "unsignedIntValue"}];
    }

    else
    {
      v8 = v16;
    }

    do
    {
      v4 = v18;
      if (v8)
      {
        v4 = [v18 stringByAppendingFormat:@"-%u", v8];
      }

      if (v15)
      {
        v4 = [v4 tsu_tolerantStringByAppendingPathExtension:?];
      }

      v8 = (v8 + 1);
    }

    while ([(TSUPathSet *)self isPathUsed:v4]);
    mBasePathToNumberMap = self->mBasePathToNumberMap;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
    v12 = mBasePathToNumberMap;
    goto LABEL_19;
  }

  v9 = [-[NSMutableDictionary objectForKey:](self->mBasePathToNumberMap objectForKey:{v6), "unsignedIntValue"}];
  if (v16 >= v9)
  {
    v10 = self->mBasePathToNumberMap;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v16 + 1];
    v12 = v10;
LABEL_19:
    [(NSMutableDictionary *)v12 setObject:v11 forKey:v6];
  }

  [(TSUPathSet *)self pathIsUsed:v4];
  return v4;
}

- (void)pathIsUsed:(id)used
{
  mPaths = self->mPaths;
  v4 = [objc_msgSend(used "uppercaseString")];

  [(NSMutableSet *)mPaths addObject:v4];
}

- (void)pathIsNoLongerUsed:(id)used
{
  v4 = [objc_msgSend(used "uppercaseString")];
  if ([(NSMutableSet *)self->mPaths containsObject:v4])
  {
    [(NSMutableSet *)self->mPaths removeObject:v4];
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v8 = 0;
    [objc_opt_class() processPath:v4 base:&v11 hasBaseNumber:&v10 baseNumber:&v9 extension:&v8];
    v5 = v11;
    if (v8)
    {
      v5 = [v11 tsu_tolerantStringByAppendingPathExtension:?];
    }

    v6 = [objc_msgSend(v5 "uppercaseString")];
    v7 = [-[NSMutableDictionary objectForKey:](self->mBasePathToNumberMap objectForKey:{v6), "unsignedIntValue"}];
    if (v7 == v9 + 1)
    {
      -[NSMutableDictionary setObject:forKey:](self->mBasePathToNumberMap, "setObject:forKey:", [MEMORY[0x277CCABB0] numberWithUnsignedInt:?], v6);
    }
  }
}

- (BOOL)isPathUsed:(id)used
{
  if (-[NSMutableSet containsObject:](self->mPaths, "containsObject:", [objc_msgSend(used "uppercaseString")]))
  {
    LOBYTE(mUnderlyingSet) = 1;
  }

  else
  {
    mUnderlyingSet = self->mUnderlyingSet;
    if (mUnderlyingSet)
    {

      LOBYTE(mUnderlyingSet) = [(TSUPathSet *)mUnderlyingSet isPathUsed:used];
    }
  }

  return mUnderlyingSet;
}

- (void)setUnderlyingPathSet:(id)set
{
  setCopy = set;

  self->mUnderlyingSet = set;
}

- (void)unionPathSet:(id)set
{
  [(NSMutableSet *)self->mPaths unionSet:*(set + 1)];
  v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [v12 addObjectsFromArray:{-[NSMutableDictionary allKeys](self->mBasePathToNumberMap, "allKeys")}];
  [v12 addObjectsFromArray:{objc_msgSend(*(set + 2), "allKeys")}];
  objectEnumerator = [v12 objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      v8 = [(NSMutableDictionary *)self->mBasePathToNumberMap objectForKey:nextObject2];
      v9 = [*(set + 2) objectForKey:nextObject2];
      v10 = v9;
      if (!v8 || v9 && (v11 = [v9 unsignedIntValue], v11 > objc_msgSend(v8, "unsignedIntValue")))
      {
        [(NSMutableDictionary *)self->mBasePathToNumberMap setObject:v10 forKey:nextObject2];
      }

      nextObject2 = [objectEnumerator nextObject];
    }

    while (nextObject2);
  }
}

- (TSUPathSet)initWithPaths:(id)paths basePathToNumberMap:(id)map
{
  v8.receiver = self;
  v8.super_class = TSUPathSet;
  v6 = [(TSUPathSet *)&v8 init];
  if (v6)
  {
    v6->mPaths = [paths mutableCopy];
    v6->mBasePathToNumberMap = [map mutableCopy];
  }

  return v6;
}

+ (id)parseNumberOutOfBasename:(id)basename hasNumber:(BOOL *)number number:(unsigned int *)a5
{
  basenameCopy = basename;
  *number = 0;
  if (basename)
  {
    v8 = [basename length];
    if (v8 - 1 >= 1)
    {
      v9 = v8;
      v10 = [basenameCopy characterAtIndex:?];
      if (v10 <= 0xFF)
      {
        v11 = MEMORY[0x277D85DE0];
        if ((*(MEMORY[0x277D85DE0] + 4 * v10 + 60) & 0x400) != 0)
        {
          v12 = v9 - 2;
          while (1)
          {
            v13 = [basenameCopy characterAtIndex:v12];
            if (v13 > 0xFF || (*(v11 + 4 * v13 + 60) & 0x400) == 0)
            {
              break;
            }

            if (v12-- <= 0)
            {
              return basenameCopy;
            }
          }

          if (v12)
          {
            if ([basenameCopy characterAtIndex:v12] == 45)
            {
              v15 = [basenameCopy substringToIndex:v12];
              v16 = [objc_msgSend(basenameCopy substringFromIndex:{v12 + 1), "intValue"}];
              if (v15)
              {
                v17 = v16;
                if ([v15 length])
                {
                  if (v17 - 1 <= 0x7FFFFFFD)
                  {
                    *number = 1;
                    if (a5)
                    {
                      *a5 = v17;
                      return v15;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return basenameCopy;
}

+ (void)processPath:(id)path base:(id *)base hasBaseNumber:(BOOL *)number baseNumber:(unsigned int *)baseNumber extension:(id *)extension
{
  pathCopy = path;
  pathExtension = [path pathExtension];
  *extension = pathExtension;
  if (![pathExtension length])
  {
    *extension = 0;
  }

  if (![pathCopy length])
  {
    v14 = MEMORY[0x277CCACA8];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    pathCopy = [v14 stringWithFormat:@"%.0f", v15 * 1000.0];
  }

  *base = [pathCopy stringByDeletingPathExtension];
  *baseNumber = 0;
  v16 = [self parseNumberOutOfBasename:*base hasNumber:number number:baseNumber];
  *base = v16;
  lastPathComponent = [v16 lastPathComponent];
  v18 = [lastPathComponent hasPrefix:@"~"];
  if (v18)
  {
    lastPathComponent = [@"x" stringByAppendingString:lastPathComponent];
  }

  v19 = 255 - [@"-0000" length];
  if (*extension)
  {
    v19 += ~[*extension length];
  }

  fileSystemRepresentation = [lastPathComponent fileSystemRepresentation];
  if (!fileSystemRepresentation)
  {
    if (!v18)
    {
      return;
    }

    goto LABEL_13;
  }

  v21 = [objc_msgSend(objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  v22 = [lastPathComponent isEqualToString:v21];
  if (!v22)
  {
    lastPathComponent = v21;
  }

  if ((v18 | v22 ^ 1))
  {
LABEL_13:
    *base = [objc_msgSend(*base "stringByDeletingLastPathComponent")];
  }
}

@end