@interface GEOVLFLocation(VLExtras)
- (void)initWithCLLocation:()VLExtras location:heading:;
@end

@implementation GEOVLFLocation(VLExtras)

- (void)initWithCLLocation:()VLExtras location:heading:
{
  v8 = a4;
  v9 = [self init];
  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x277D0EB58]);
    [v8 coordinate];
    v12 = v11;
    [v8 coordinate];
    v13 = [v10 initWithLatitude:v12 longitude:?];
    [v9 setLocation:v13];

    memset(v21, 0, sizeof(v21));
    v14 = *(a5 + 2);
    v18 = *a5;
    v19 = v14;
    v20 = 7;
    [v9 setEcefLocation:&v18];
    [v8 horizontalAccuracy];
    [v9 setHorizontalAccuracy:?];
    [v8 verticalAccuracy];
    [v9 setVerticalAccuracy:?];
    [v9 setHeading:a2];
    v15 = [v8 type] - 1;
    if (v15 <= 0xA && ((0x5EFu >> v15) & 1) != 0)
    {
      [v9 setType:dword_2711035D8[v15]];
    }

    [v9 setIsFused:{objc_msgSend(v8, "isCoordinateFused")}];
    v16 = v9;
  }

  return v9;
}

@end