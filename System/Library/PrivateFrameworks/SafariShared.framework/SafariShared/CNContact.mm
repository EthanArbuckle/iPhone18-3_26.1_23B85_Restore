@interface CNContact
@end

@implementation CNContact

void __66__CNContact_SafariSharedExtras__safari_oneTimeCodeViewDescriptors__block_invoke()
{
  v6[8] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695C230];
  v6[0] = *MEMORY[0x1E695C240];
  v6[1] = v0;
  v1 = *MEMORY[0x1E695C328];
  v6[2] = *MEMORY[0x1E695C2F0];
  v6[3] = v1;
  v2 = *MEMORY[0x1E695C278];
  v6[4] = *MEMORY[0x1E695C330];
  v6[5] = v2;
  v6[6] = *MEMORY[0x1E695C400];
  v3 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v6[7] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:8];
  v5 = safari_oneTimeCodeViewDescriptors_descriptors;
  safari_oneTimeCodeViewDescriptors_descriptors = v4;
}

void __68__CNContact_SafariSharedExtras__safari_indexForIdentifier_inValues___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 identifier];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

@end