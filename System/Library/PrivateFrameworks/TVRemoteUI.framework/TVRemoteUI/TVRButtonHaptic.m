@interface TVRButtonHaptic
+ (id)hapticForView:(id)a3;
@end

@implementation TVRButtonHaptic

+ (id)hapticForView:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = v4;
  v7 = [MEMORY[0x277CCAC38] processInfo];
  v11[1] = 0;
  v11[2] = 0;
  v11[0] = 11;
  v8 = [v7 isOperatingSystemAtLeastVersion:v11];

  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D75E20]) initWithStyle:0];
    [v9 _setOutputMode:5];
  }

  else
  {
    v9 = [MEMORY[0x277D75F50] buttonBehaviorWithStyle:0 coordinateSpace:v6];
  }

  [v5 setBehavior:v9];

  return v5;
}

@end