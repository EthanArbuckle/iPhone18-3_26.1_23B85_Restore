@interface PBFSnapshotDefinitionSupportedOrientationForDeviceClass
@end

@implementation PBFSnapshotDefinitionSupportedOrientationForDeviceClass

void ___PBFSnapshotDefinitionSupportedOrientationForDeviceClass_block_invoke()
{
  for (i = 0; i != 5; ++i)
  {
    v1 = [MEMORY[0x277CCAB58] indexSet];
    v2 = v1;
    if (i == 1)
    {
      [v1 addIndex:3];
      [v2 addIndex:4];
      [v2 addIndex:3];
      [v2 addIndex:1];
      v3 = 2;
      v4 = &_PBFSnapshotDefinitionSupportedOrientationForDeviceClass_padSupportedOrientations;
    }

    else
    {
      [v1 addIndex:1];
      if (i)
      {
        if (i != 3)
        {
          goto LABEL_9;
        }

        v3 = 1;
        v4 = &_PBFSnapshotDefinitionSupportedOrientationForDeviceClass_tvSupportedOrientations;
      }

      else
      {
        v3 = 1;
        v4 = &_PBFSnapshotDefinitionSupportedOrientationForDeviceClass_phoneSupportedOrientations;
      }
    }

    [v2 addIndex:v3];
    v5 = [v2 copy];
    v6 = *v4;
    *v4 = v5;

LABEL_9:
  }
}

@end