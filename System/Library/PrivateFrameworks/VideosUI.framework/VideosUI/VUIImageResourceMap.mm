@interface VUIImageResourceMap
+ (id)imageForResourceName:(id)name;
@end

@implementation VUIImageResourceMap

+ (id)imageForResourceName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    v4 = [MEMORY[0x1E69DCAB8] imageNamed:nameCopy];
    if (!v4)
    {
      mEMORY[0x1E69D5960] = [MEMORY[0x1E69D5960] sharedInterfaceFactory];
      v4 = [mEMORY[0x1E69D5960] _resourceImageNamed:nameCopy];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end