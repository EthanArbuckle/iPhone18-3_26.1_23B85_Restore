@interface CreateInfoForImageWithProperties
@end

@implementation CreateInfoForImageWithProperties

void ____CreateInfoForImageWithProperties_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 56) == 1 && (*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    if (*(a1 + 57) == 1)
    {
      v6 = [a3 URL];
      if (v6)
      {
        [*(a1 + 32) setObject:v6 forKey:*MEMORY[0x277D76A58]];
        v7 = [a3 sandboxExtensionToken];
        if (v7)
        {
          [*(a1 + 32) setObject:v7 forKey:@"PUPhotoPickerOriginalImagePathSandboxExtensionToken"];
        }
      }
    }

    else if (a2)
    {
      v8 = [objc_alloc(MEMORY[0x277D755B8]) initWithData:a2];
      if (v8)
      {
        [*(a1 + 32) setObject:v8 forKey:*MEMORY[0x277D76A80]];
      }
    }
  }

  if (*(a1 + 58) == 1 && (*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    if (*(a1 + 57) == 1)
    {
      v9 = [a3 URL];
      if (!v9)
      {
        return;
      }

      [*(a1 + 32) setObject:v9 forKey:*MEMORY[0x277D76A58]];
      v10 = [a3 sandboxExtensionToken];
      if (!v10)
      {
        return;
      }

      v11 = v10;
      v12 = *(a1 + 32);
      v13 = @"PUPhotoPickerOriginalImagePathSandboxExtensionToken";
    }

    else
    {
      if (!a2)
      {
        return;
      }

      v12 = *(a1 + 32);
      v13 = *MEMORY[0x277D77470];
      v11 = a2;
    }

    [v12 setObject:v11 forKey:v13];
  }
}

@end