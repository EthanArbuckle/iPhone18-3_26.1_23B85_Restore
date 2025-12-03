@interface CPLMasterChange(BatchUploader)
- (BOOL)hasResourceOfType:()BatchUploader notInMasterChange:;
@end

@implementation CPLMasterChange(BatchUploader)

- (BOOL)hasResourceOfType:()BatchUploader notInMasterChange:
{
  v6 = a4;
  scopedIdentifier = [self scopedIdentifier];
  scopedIdentifier2 = [v6 scopedIdentifier];
  v9 = [scopedIdentifier isEqual:scopedIdentifier2];

  if (v9)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __70__CPLMasterChange_BatchUploader__hasResourceOfType_notInMasterChange___block_invoke;
    aBlock[3] = &__block_descriptor_40_e28_B32__0__CPLResource_8Q16_B24l;
    aBlock[4] = a3;
    v10 = _Block_copy(aBlock);
    resources = [self resources];
    v12 = [resources indexOfObjectPassingTest:v10];

    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 0;
    }

    else
    {
      resources2 = [v6 resources];
      v15 = [resources2 indexOfObjectPassingTest:v10];

      v13 = v15 == 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end