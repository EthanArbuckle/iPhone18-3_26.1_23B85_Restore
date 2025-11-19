@interface NSCoder(VisualLocalizationExtras)
- (uint64_t)_vl_decodeFloat6x6:()VisualLocalizationExtras forKey:;
- (uint64_t)_vl_decodeSimdDouble4x4:()VisualLocalizationExtras forKey:;
- (uint64_t)_vl_encodeSimdDouble4x4:()VisualLocalizationExtras forKey:;
@end

@implementation NSCoder(VisualLocalizationExtras)

- (uint64_t)_vl_encodeSimdDouble4x4:()VisualLocalizationExtras forKey:
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3[1];
  v9[0] = *a3;
  v9[1] = v4;
  v5 = a3[3];
  v9[2] = a3[2];
  v9[3] = v5;
  v6 = a3[5];
  v9[4] = a3[4];
  v9[5] = v6;
  v7 = a3[7];
  v9[6] = a3[6];
  v9[7] = v7;
  return [a1 encodeBytes:v9 length:128 forKey:a4];
}

- (uint64_t)_vl_decodeSimdDouble4x4:()VisualLocalizationExtras forKey:
{
  v25[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v23 = 0;
  v7 = [a1 decodeBytesForKey:v6 returnedLength:&v23];
  if (v7)
  {
    v8 = v23 == 128;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (v8)
  {
    if (a3)
    {
      v10 = v7[1];
      v12 = v7[2];
      v11 = v7[3];
      v14 = v7[4];
      v13 = v7[5];
      v16 = v7[6];
      v15 = v7[7];
      *a3 = *v7;
      a3[1] = v10;
      a3[2] = v12;
      a3[3] = v11;
      a3[4] = v14;
      a3[5] = v13;
      a3[6] = v16;
      a3[7] = v15;
    }
  }

  else
  {
    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA050];
    v24 = *MEMORY[0x277CBEE28];
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ bytes were not the expected length", v6];
    v25[0] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v21 = [v17 errorWithDomain:v18 code:4864 userInfo:v20];
    [a1 failWithError:v21];
  }

  return v9;
}

- (uint64_t)_vl_decodeFloat6x6:()VisualLocalizationExtras forKey:
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v16 = 0;
  v7 = [a1 decodeBytesForKey:v6 returnedLength:&v16];
  if (v7)
  {
    v8 = v16 == 144;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (v8)
  {
    if (a3)
    {
      *a3 = *v7;
      a3[1] = v7[1];
      a3[2] = v7[2];
      a3[3] = v7[3];
      a3[4] = v7[4];
      a3[5] = v7[5];
      a3[6] = v7[6];
      a3[7] = v7[7];
      a3[8] = v7[8];
      a3[9] = v7[9];
      a3[10] = v7[10];
      a3[11] = v7[11];
      a3[12] = v7[12];
      a3[13] = v7[13];
      a3[14] = v7[14];
      a3[15] = v7[15];
      a3[16] = v7[16];
      a3[17] = v7[17];
      a3[18] = v7[18];
      a3[19] = v7[19];
      a3[20] = v7[20];
      a3[21] = v7[21];
      a3[22] = v7[22];
      a3[23] = v7[23];
      a3[24] = v7[24];
      a3[25] = v7[25];
      a3[26] = v7[26];
      a3[27] = v7[27];
      a3[28] = v7[28];
      a3[29] = v7[29];
      a3[30] = v7[30];
      a3[31] = v7[31];
      a3[32] = v7[32];
      a3[33] = v7[33];
      a3[34] = v7[34];
      a3[35] = v7[35];
    }
  }

  else
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA050];
    v17 = *MEMORY[0x277CBEE28];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ bytes were not the expected length", v6];
    v18[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v14 = [v10 errorWithDomain:v11 code:4864 userInfo:v13];
    [a1 failWithError:v14];
  }

  return v9;
}

@end