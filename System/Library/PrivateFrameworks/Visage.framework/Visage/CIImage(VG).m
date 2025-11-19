@interface CIImage(VG)
- (id)vg_surfaceWithPixelFormat:()VG colorSpaceName:;
@end

@implementation CIImage(VG)

- (id)vg_surfaceWithPixelFormat:()VG colorSpaceName:
{
  v23[4] = *MEMORY[0x277D85DE8];
  v6 = a4;
  [a1 extent];
  v8 = v7;
  [a1 extent];
  v10 = v9;
  v11 = objc_alloc(MEMORY[0x277CD2930]);
  v22[0] = *MEMORY[0x277CD2928];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v8];
  v23[0] = v12;
  v22[1] = *MEMORY[0x277CD28D0];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v10];
  v23[1] = v13;
  v22[2] = *MEMORY[0x277CD28D8];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3];
  v23[2] = v14;
  v22[3] = *MEMORY[0x277CD28B0];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:VGGetBytesPerElementFromPixelFormat(a3)];
  v23[3] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];
  v17 = [v11 initWithProperties:v16];

  v18 = CGColorSpaceCreateWithName(v6);
  v19 = objc_opt_new();
  [a1 extent];
  [v19 render:a1 toIOSurface:v17 bounds:v18 colorSpace:?];
  CGColorSpaceRelease(v18);

  v20 = *MEMORY[0x277D85DE8];

  return v17;
}

@end