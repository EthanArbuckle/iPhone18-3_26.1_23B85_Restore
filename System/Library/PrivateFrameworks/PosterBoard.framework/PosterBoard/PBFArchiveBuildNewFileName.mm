@interface PBFArchiveBuildNewFileName
@end

@implementation PBFArchiveBuildNewFileName

id ___PBFArchiveBuildNewFileName_block_invoke(void *a1, __CFString *a2)
{
  v2 = MEMORY[0x277CCACA8];
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = &stru_282CD3858;
  }

  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[4];
  v7 = a2;
  [v4 timeIntervalSince1970];
  *&v8 = v8;
  v9 = [v2 stringWithFormat:@"%@%@_%@_Version%lu_%lu", v6, v3, @"ArchivedDataStore", v5, vcvtms_u32_f32(*&v8)];

  v10 = [v9 stringByAppendingPathExtension:@"pbds"];

  return v10;
}

@end