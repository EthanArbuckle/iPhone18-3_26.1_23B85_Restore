@interface GQHBulletState
- (BOOL)hasNumberAtLevel:(int)a3;
- (GQHBulletState)init;
- (__CFString)bulletChar:(int)a3;
- (id)listStyleAtLevel:(int)a3;
- (int)bulletIndentForLevel:(int)a3;
- (int)labelTypeAtLevel:(int)a3;
- (int)numberAtLevel:(int)a3;
- (int)textIndentForLevel:(int)a3;
- (int)typeAtlevel:(int)a3;
- (void)dealloc;
- (void)setBulletChar:(__CFString *)a3 level:(int)a4;
- (void)setCurrentLevel:(int)a3;
- (void)setListStyle:(id)a3 atLevel:(int)a4;
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

- (int)typeAtlevel:(int)a3
{
  ValueAtIndex = CFArrayGetValueAtIndex(self->mLevels, a3);

  return [ValueAtIndex type];
}

- (BOOL)hasNumberAtLevel:(int)a3
{
  ValueAtIndex = CFArrayGetValueAtIndex(self->mLevels, a3);

  return [ValueAtIndex hasNumber];
}

- (int)numberAtLevel:(int)a3
{
  ValueAtIndex = CFArrayGetValueAtIndex(self->mLevels, a3);

  return [ValueAtIndex number];
}

- (int)labelTypeAtLevel:(int)a3
{
  ValueAtIndex = CFArrayGetValueAtIndex(self->mLevels, a3);

  return [ValueAtIndex labelType];
}

- (void)setBulletChar:(__CFString *)a3 level:(int)a4
{
  ValueAtIndex = CFArrayGetValueAtIndex(self->mLevels, a4);

  [ValueAtIndex setBulletChar:a3];
}

- (__CFString)bulletChar:(int)a3
{
  ValueAtIndex = CFArrayGetValueAtIndex(self->mLevels, a3);

  return [ValueAtIndex bulletChar];
}

- (int)bulletIndentForLevel:(int)a3
{
  ValueAtIndex = CFArrayGetValueAtIndex(self->mLevels, a3);

  return [ValueAtIndex bulletIndent];
}

- (int)textIndentForLevel:(int)a3
{
  ValueAtIndex = CFArrayGetValueAtIndex(self->mLevels, a3);

  return [ValueAtIndex textIndent];
}

- (void)setListStyle:(id)a3 atLevel:(int)a4
{
  if (CFArrayGetCount(self->mLevels) > a4)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(self->mLevels, a4);

    [ValueAtIndex setStyle:a3];
  }
}

- (id)listStyleAtLevel:(int)a3
{
  if (CFArrayGetCount(self->mLevels) <= a3)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(self->mLevels, a3);

  return [ValueAtIndex style];
}

- (void)setCurrentLevel:(int)a3
{
  if (self->mCurrentLevel > a3 && dword_9CDF8 > a3)
  {
    v6 = a3;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(self->mLevels, ++v6);
      [ValueAtIndex setNumber:0];
      [ValueAtIndex setHasNumber:0];
    }

    while (v6 < dword_9CDF8);
  }

  self->mCurrentLevel = a3;
}

@end