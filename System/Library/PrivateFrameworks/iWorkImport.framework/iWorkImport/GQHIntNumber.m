@interface GQHIntNumber
- (__CFString)createStringRef;
@end

@implementation GQHIntNumber

- (__CFString)createStringRef
{
  v2 = @"%d";
  mType = self->mType;
  mValue = self->mValue;
  if (mType == 2)
  {
    v2 = @"%dpt";
  }

  if (mType == 1)
  {
    return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%dpx", mValue);
  }

  else
  {
    return CFStringCreateWithFormat(kCFAllocatorDefault, 0, v2, mValue);
  }
}

@end