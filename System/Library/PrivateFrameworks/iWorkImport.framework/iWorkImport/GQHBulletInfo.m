@interface GQHBulletInfo
- (void)dealloc;
- (void)setBulletChar:(__CFString *)a3;
- (void)setStyle:(id)a3;
@end

@implementation GQHBulletInfo

- (void)dealloc
{
  mChar = self->mChar;
  if (mChar)
  {
    CFRelease(mChar);
  }

  v4.receiver = self;
  v4.super_class = GQHBulletInfo;
  [(GQHBulletInfo *)&v4 dealloc];
}

- (void)setBulletChar:(__CFString *)a3
{
  if (a3)
  {
    CFRetain(a3);
  }

  mChar = self->mChar;
  if (mChar)
  {
    CFRelease(mChar);
  }

  self->mChar = a3;
}

- (void)setStyle:(id)a3
{
  v5 = a3;

  self->mStyle = a3;
}

@end