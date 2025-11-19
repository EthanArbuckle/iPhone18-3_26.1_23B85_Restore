@interface CAAnimation
@end

@implementation CAAnimation

id __61__CAAnimation_TSDCAAnimationAdditions__TSD_supportedKeyPaths__block_invoke()
{
  v1[23] = *MEMORY[0x277D85DE8];
  v1[0] = @"anchorPoint";
  v1[1] = @"anchorPointZ";
  v1[2] = @"borderColor";
  v1[3] = @"borderWidth";
  v1[4] = @"bounds";
  v1[5] = @"contents";
  v1[6] = @"doubleSided";
  v1[7] = @"hidden";
  v1[8] = @"opacity";
  v1[9] = @"position";
  v1[10] = @"transform";
  v1[11] = @"transform.rotation";
  v1[12] = @"transform.rotation.x";
  v1[13] = @"transform.rotation.y";
  v1[14] = @"transform.rotation.z";
  v1[15] = @"transform.scale.x";
  v1[16] = @"transform.scale.y";
  v1[17] = @"transform.scale.xy";
  v1[18] = @"transform.translation";
  v1[19] = @"transform.translation.x";
  v1[20] = @"transform.translation.y";
  v1[21] = @"transform.translation.z";
  v1[22] = @"zPosition";
  result = [MEMORY[0x277CBEA60] arrayWithObjects:v1 count:23];
  TSD_supportedKeyPaths_s_supportedKeyPaths = result;
  return result;
}

@end