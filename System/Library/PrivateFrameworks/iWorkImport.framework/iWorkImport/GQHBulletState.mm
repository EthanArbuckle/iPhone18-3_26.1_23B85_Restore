@interface GQHBulletState
- (BOOL)hasNumberAtLevel:(int)level;
- (GQHBulletState)init;
- (__CFString)bulletChar:(int)char;
- (id)listStyleAtLevel:(int)level;
- (int)bulletIndentForLevel:(int)level;
- (int)labelTypeAtLevel:(int)level;
- (int)numberAtLevel:(int)level;
- (int)textIndentForLevel:(int)level;
- (int)typeAtlevel:(int)atlevel;
- (void)dealloc;
- (void)setBulletChar:(__CFString *)char level:(int)level;
- (void)setCurrentLevel:(int)level;
- (void)setListStyle:(id)style atLevel:(int)level;
@end

@implementation GQHBulletState

- (GQHBulletState)init
{
  v7.receiver = self;
  v7.super_class = GQHBulletState;
  v2 = [(GQHBulletState *)&v7 init];
  if (v2)
  {
    v2->mLevels = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    if ((dword_9CDF8 & 0x80000000) == 0)
    {
      v3 = 0;
      v4 = -1;
      do
      {
        v5 = objc_alloc_init(GQHBulletInfo);
        [(GQHBulletInfo *)v5 setBulletIndent:v3];
        [(GQHBulletInfo *)v5 setTextIndent:10];
        CFArrayAppendValue(v2->mLevels, v5);

        ++v4;
        v3 = (v3 + 10);
      }

      while (v4 < dword_9CDF8);
    }
  }

  return v2;
}

- (void)dealloc
{
  CFRelease(self->mLevels);
  v3.receiver = self;
  v3.super_class = GQHBulletState;
  [(GQHBulletState *)&v3 dealloc];
}

- (int)typeAtlevel:(int)atlevel
{
  ValueAtIndex = CFArrayGetValueAtIndex(self->mLevels, atlevel);

  return [ValueAtIndex type];
}

- (BOOL)hasNumberAtLevel:(int)level
{
  ValueAtIndex = CFArrayGetValueAtIndex(self->mLevels, level);

  return [ValueAtIndex hasNumber];
}

- (int)numberAtLevel:(int)level
{
  ValueAtIndex = CFArrayGetValueAtIndex(self->mLevels, level);

  return [ValueAtIndex number];
}

- (int)labelTypeAtLevel:(int)level
{
  ValueAtIndex = CFArrayGetValueAtIndex(self->mLevels, level);

  return [ValueAtIndex labelType];
}

- (void)setBulletChar:(__CFString *)char level:(int)level
{
  ValueAtIndex = CFArrayGetValueAtIndex(self->mLevels, level);

  [ValueAtIndex setBulletChar:char];
}

- (__CFString)bulletChar:(int)char
{
  ValueAtIndex = CFArrayGetValueAtIndex(self->mLevels, char);

  return [ValueAtIndex bulletChar];
}

- (int)bulletIndentForLevel:(int)level
{
  ValueAtIndex = CFArrayGetValueAtIndex(self->mLevels, level);

  return [ValueAtIndex bulletIndent];
}

- (int)textIndentForLevel:(int)level
{
  ValueAtIndex = CFArrayGetValueAtIndex(self->mLevels, level);

  return [ValueAtIndex textIndent];
}

- (void)setListStyle:(id)style atLevel:(int)level
{
  if (CFArrayGetCount(self->mLevels) > level)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(self->mLevels, level);

    [ValueAtIndex setStyle:style];
  }
}

- (id)listStyleAtLevel:(int)level
{
  if (CFArrayGetCount(self->mLevels) <= level)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(self->mLevels, level);

  return [ValueAtIndex style];
}

- (void)setCurrentLevel:(int)level
{
  if (self->mCurrentLevel > level && dword_9CDF8 > level)
  {
    levelCopy = level;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(self->mLevels, ++levelCopy);
      [ValueAtIndex setNumber:0];
      [ValueAtIndex setHasNumber:0];
    }

    while (levelCopy < dword_9CDF8);
  }

  self->mCurrentLevel = level;
}

@end