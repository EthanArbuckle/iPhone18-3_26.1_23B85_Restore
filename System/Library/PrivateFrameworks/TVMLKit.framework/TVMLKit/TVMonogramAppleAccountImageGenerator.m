@interface TVMonogramAppleAccountImageGenerator
@end

@implementation TVMonogramAppleAccountImageGenerator

void __126___TVMonogramAppleAccountImageGenerator_loadImageForURL_scaleToSize_cropToFit_imageDirection_requestLoader_completionHandler___block_invoke(uint64_t a1)
{
  if (([*(*(*(a1 + 48) + 8) + 40) isCancelled] & 1) == 0)
  {
    v2 = objc_alloc_init(MEMORY[0x277CECA90]);
    v3 = v2;
    if (v2)
    {
      [v2 setMonogramType:1];
      [v3 setPictureDiameter:*(a1 + 56)];
      v4 = objc_alloc_init(MEMORY[0x277CEC7F0]);
      v5 = [*(a1 + 32) copyQueryStringDictionaryWithUnescapedValues:1];
      v6 = [v5 objectForKeyedSubscript:@"firstName"];
      [v4 setFirstName:v6];

      v7 = [v5 objectForKeyedSubscript:@"lastName"];
      [v4 setLastName:v7];

      v8 = [v5 objectForKeyedSubscript:@"email"];
      [v4 setAppleID:v8];

      v9 = MEMORY[0x277CCABB0];
      v10 = [v5 objectForKeyedSubscript:@"dsid"];
      v11 = [v9 numberWithLongLong:{objc_msgSend(v10, "longLongValue")}];
      [v4 setPersonID:v11];

      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __126___TVMonogramAppleAccountImageGenerator_loadImageForURL_scaleToSize_cropToFit_imageDirection_requestLoader_completionHandler___block_invoke_2;
      v15[3] = &unk_279D70D48;
      v14 = *(a1 + 40);
      v12 = v14;
      v16 = v14;
      [v3 fetchProfilePictureForFamilyMember:v4 completion:v15];
    }

    else
    {
      v13 = *(a1 + 40);
      v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TVMLKitErrorDomain" code:11 userInfo:0];
      (*(v13 + 16))(v13, 0, 0, 0, 0, v4);
    }
  }
}

void __126___TVMonogramAppleAccountImageGenerator_loadImageForURL_scaleToSize_cropToFit_imageDirection_requestLoader_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (([*(*(*(a1 + 40) + 8) + 40) isCancelled] & 1) == 0)
  {
    if ([v8 CGImage])
    {
      v6 = -[TVImage initWithCGImageRef:preserveAlpha:]([TVImage alloc], "initWithCGImageRef:preserveAlpha:", [v8 CGImage], 1);
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = v5;
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), v6, 0, 0, 2, v7);
  }
}

@end