@interface PCSKEExtractSeed
@end

@implementation PCSKEExtractSeed

void ___PCSKEExtractSeed_block_invoke(uint64_t a1, CFDataRef theData, const __CFData *a3)
{
  if (!*(*(*(a1 + 40) + 8) + 24))
  {
    Length = CFDataGetLength(theData);
    v7 = [*(a1 + 32) masterKeyId];
    v8 = [v7 length];

    if (Length >= v8)
    {
      BytePtr = CFDataGetBytePtr(theData);
      v10 = [*(a1 + 32) masterKeyId];
      v11 = [v10 bytes];
      v12 = [*(a1 + 32) masterKeyId];
      LODWORD(BytePtr) = memcmp(BytePtr, v11, [v12 length]);

      if (!BytePtr)
      {
        v13 = *(a1 + 48);
        v14 = *v13;
        if (*v13)
        {
          *v13 = 0;
          CFRelease(v14);
        }

        v15 = *(a1 + 56);
        v16 = [*(a1 + 32) version];
        if (v16)
        {
          if (v16 == 1)
          {
            v17 = @"HKDF_SIV_GCM_HMAC_256";
          }

          else
          {
            v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v16];
          }
        }

        else
        {
          v17 = @"UNKNOWN";
        }

        v18 = v17;
        *(*(*(a1 + 40) + 8) + 24) = _PCSKEExtractSeedWithMasterKey(a3, v15, v17, *(*(a1 + 64) + 24), *(a1 + 48));
      }
    }
  }
}

@end