@interface RCPActiveScreens
@end

@implementation RCPActiveScreens

void ___RCPActiveScreens_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(RCPEventScreen);
  v5 = [MEMORY[0x277CD9E40] mainDisplay];

  if (v5 == v3)
  {
    BKSDisplayServicesGetMainScreenInfo();
    v10 = v13;
    v7 = 0.0;
    v9 = 0.0;
  }

  else
  {
    [v3 bounds];
    v7 = v6;
    v9 = v8;
    BKSDisplayServicesGetExternalDisplayScale();
    v13 = v10;
  }

  v14 = v9 / v10;
  v15 = v7 / v10;
  v11 = [v3 uniqueId];
  [(RCPEventScreen *)v4 setDisplayUUID:v11];

  -[RCPEventScreen setDisplayID:](v4, "setDisplayID:", [v3 displayId]);
  [(RCPEventScreen *)v4 setPointSize:v15, v14];
  [(RCPEventScreen *)v4 setScale:v13];
  if (v15 != 0.0)
  {
    *&v12 = v14;
    if (v14 != 0.0)
    {
      [*(*(*(a1 + 32) + 8) + 40) addObject:{v4, v12}];
    }
  }
}

@end