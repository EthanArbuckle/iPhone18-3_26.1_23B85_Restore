@interface VUIImageResourceMap
+ (id)imageForResourceName:(id)a3;
@end

@implementation VUIImageResourceMap

+ (id)imageForResourceName:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x1E69DCAB8] imageNamed:v3];
    if (!v4)
    {
      v5 = [MEMORY[0x1E69D5960] sharedInterfaceFactory];
      v4 = [v5 _resourceImageNamed:v3];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end