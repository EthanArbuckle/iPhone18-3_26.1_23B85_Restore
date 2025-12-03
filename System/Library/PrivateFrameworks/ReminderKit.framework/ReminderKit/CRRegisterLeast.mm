@interface CRRegisterLeast
- (int64_t)compare:(id)compare with:(id)with;
@end

@implementation CRRegisterLeast

- (int64_t)compare:(id)compare with:(id)with
{
  compareCopy = compare;
  withCopy = with;
  v7 = withCopy;
  if (compareCopy == withCopy)
  {
    v8 = 0;
  }

  else if (compareCopy)
  {
    if (withCopy)
    {
      v8 = [withCopy compare:compareCopy];
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

@end