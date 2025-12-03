@interface GQHBulletInfo
- (void)dealloc;
- (void)setBulletChar:(__CFString *)char;
- (void)setStyle:(id)style;
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

- (void)setBulletChar:(__CFString *)char
{
  if (char)
  {
    CFRetain(char);
  }

  mChar = self->mChar;
  if (mChar)
  {
    CFRelease(mChar);
  }

  self->mChar = char;
}

- (void)setStyle:(id)style
{
  styleCopy = style;

  self->mStyle = style;
}

@end