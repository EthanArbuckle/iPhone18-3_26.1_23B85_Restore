@interface PAAudiogramUtilities
+ ($85CD2974BE96D4886BB301820D1C36C2)entryFromData:(id)data atIndex:(unsigned int)index;
+ (id)frequencyDictionaryFromOffsets:(id)offsets;
+ (id)normalizedOffsetsFromAudiogram:(id)audiogram;
+ (id)normalizedOffsetsFromLeftOffsets:(id)offsets andRightOffsets:(id)rightOffsets;
+ (id)offsetsSortedByFrequency:(id)frequency;
+ (id)presetFrequencies;
+ (id)ptaFrequencies;
@end

@implementation PAAudiogramUtilities

+ ($85CD2974BE96D4886BB301820D1C36C2)entryFromData:(id)data atIndex:(unsigned int)index
{
  v5 = 0;
  [data getBytes:&v5 range:{8 * (index + 3) + 12, 8}];
  return v5;
}

+ (id)presetFrequencies
{
  v2 = presetFrequencies_presetFrequencies;
  if (!presetFrequencies_presetFrequencies)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{&unk_28702BD58, &unk_28702BD68, &unk_28702BD78, &unk_28702BD88, &unk_28702BD98, &unk_28702BDA8, &unk_28702BDB8, &unk_28702BDC8, 0}];
    v4 = presetFrequencies_presetFrequencies;
    presetFrequencies_presetFrequencies = v3;

    v2 = presetFrequencies_presetFrequencies;
  }

  return v2;
}

+ (id)ptaFrequencies
{
  v2 = ptaFrequencies_presetFrequencies;
  if (!ptaFrequencies_presetFrequencies)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{&unk_28702BD68, &unk_28702BD78, &unk_28702BD88, &unk_28702BDA8, 0}];
    v4 = ptaFrequencies_presetFrequencies;
    ptaFrequencies_presetFrequencies = v3;

    v2 = ptaFrequencies_presetFrequencies;
  }

  return v2;
}

+ (id)normalizedOffsetsFromAudiogram:(id)audiogram
{
  if (audiogram)
  {
    v3 = MEMORY[0x277CBEB38];
    audiogramCopy = audiogram;
    dictionary = [v3 dictionary];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    sensitivityPoints = [audiogramCopy sensitivityPoints];

    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __55__PAAudiogramUtilities_normalizedOffsetsFromAudiogram___block_invoke;
    v15 = &unk_279A1D438;
    v16 = dictionary;
    v17 = dictionary2;
    v8 = dictionary2;
    v9 = dictionary;
    [sensitivityPoints enumerateObjectsUsingBlock:&v12];

    v10 = [PAAudiogramUtilities normalizedOffsetsFromLeftOffsets:v9 andRightOffsets:v8, v12, v13, v14, v15];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __55__PAAudiogramUtilities_normalizedOffsetsFromAudiogram___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 frequency];
  v5 = [getHKUnitClass() hertzUnit];
  [v4 doubleValueForUnit:v5];
  v7 = v6;

  v21 = [v3 leftEarSensitivity];
  v8 = [v3 rightEarSensitivity];

  v9 = [getHKUnitClass() decibelHearingLevelUnit];
  [v21 doubleValueForUnit:v9];
  v11 = v10;

  v12 = [getHKUnitClass() decibelHearingLevelUnit];
  [v8 doubleValueForUnit:v12];
  v14 = v13;

  v15 = *(a1 + 32);
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  [v15 setObject:v16 forKey:v17];

  v18 = *(a1 + 40);
  v19 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  [v18 setObject:v19 forKey:v20];
}

+ (id)normalizedOffsetsFromLeftOffsets:(id)offsets andRightOffsets:(id)rightOffsets
{
  offsetsCopy = offsets;
  rightOffsetsCopy = rightOffsets;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v9 = +[PAAudiogramUtilities presetFrequencies];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __73__PAAudiogramUtilities_normalizedOffsetsFromLeftOffsets_andRightOffsets___block_invoke;
  v50[3] = &unk_279A1D460;
  v10 = dictionary2;
  v51 = v10;
  [v9 enumerateObjectsUsingBlock:v50];

  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __73__PAAudiogramUtilities_normalizedOffsetsFromLeftOffsets_andRightOffsets___block_invoke_123;
  v41[3] = &unk_279A1D488;
  v41[4] = &v46;
  [offsetsCopy enumerateKeysAndObjectsUsingBlock:v41];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __73__PAAudiogramUtilities_normalizedOffsetsFromLeftOffsets_andRightOffsets___block_invoke_2;
  v40[3] = &unk_279A1D488;
  v40[4] = &v42;
  [rightOffsetsCopy enumerateKeysAndObjectsUsingBlock:v40];
  v11 = +[PAAudiogramUtilities ptaFrequencies];
  v12 = [v11 count];

  v13 = v47;
  v47[3] = v47[3] / v12;
  v14 = v43[3] / v12;
  v43[3] = v14;
  v15 = v13[3];
  if (vabdd_f64(v15, v14) >= 15.0)
  {
    if (v15 >= v14)
    {
      v17 = rightOffsetsCopy;
    }

    else
    {
      v17 = offsetsCopy;
    }

    v16 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v17];
  }

  else
  {
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __73__PAAudiogramUtilities_normalizedOffsetsFromLeftOffsets_andRightOffsets___block_invoke_3;
    v37[3] = &unk_279A1D4B0;
    v38 = rightOffsetsCopy;
    v16 = dictionary;
    v39 = v16;
    [offsetsCopy enumerateKeysAndObjectsUsingBlock:v37];

    dictionary = v38;
  }

  allKeys = [v16 allKeys];
  v19 = [allKeys sortedArrayUsingComparator:&__block_literal_global_2];

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __73__PAAudiogramUtilities_normalizedOffsetsFromLeftOffsets_andRightOffsets___block_invoke_5;
  v33[3] = &unk_279A1D520;
  v20 = v19;
  v34 = v20;
  v21 = v10;
  v35 = v21;
  v22 = v16;
  v36 = v22;
  [v21 enumerateKeysAndObjectsUsingBlock:v33];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __73__PAAudiogramUtilities_normalizedOffsetsFromLeftOffsets_andRightOffsets___block_invoke_7;
  v29[3] = &unk_279A1D520;
  v23 = v20;
  v30 = v23;
  v24 = v21;
  v31 = v24;
  v25 = v22;
  v32 = v25;
  [v24 enumerateKeysAndObjectsUsingBlock:v29];
  v26 = v32;
  v27 = v24;

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);

  return v27;
}

void __73__PAAudiogramUtilities_normalizedOffsetsFromLeftOffsets_andRightOffsets___block_invoke_123(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = a2;
  v6 = +[PAAudiogramUtilities ptaFrequencies];
  v7 = [v6 containsObject:v5];

  if (v7)
  {
    [v9 doubleValue];
    *(*(*(a1 + 32) + 8) + 24) = v8 + *(*(*(a1 + 32) + 8) + 24);
  }
}

void __73__PAAudiogramUtilities_normalizedOffsetsFromLeftOffsets_andRightOffsets___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = a2;
  v6 = +[PAAudiogramUtilities ptaFrequencies];
  v7 = [v6 containsObject:v5];

  if (v7)
  {
    [v9 doubleValue];
    *(*(*(a1 + 32) + 8) + 24) = v8 + *(*(*(a1 + 32) + 8) + 24);
  }
}

void __73__PAAudiogramUtilities_normalizedOffsetsFromLeftOffsets_andRightOffsets___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v14 = [v5 objectForKey:v7];
  v8 = *(a1 + 40);
  v9 = MEMORY[0x277CCABB0];
  [v6 doubleValue];
  v11 = v10;

  [v14 doubleValue];
  v13 = [v9 numberWithDouble:v12 * 0.5 + v11 * 0.5];
  [v8 setObject:v13 forKey:v7];
}

void __73__PAAudiogramUtilities_normalizedOffsetsFromLeftOffsets_andRightOffsets___block_invoke_5(id *a1, void *a2)
{
  v3 = a2;
  if ([a1[4] indexOfObject:v3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = a1[4];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __73__PAAudiogramUtilities_normalizedOffsetsFromLeftOffsets_andRightOffsets___block_invoke_6;
    v7[3] = &unk_279A1D4F8;
    v8 = v3;
    v9 = a1[4];
    v10 = a1[6];
    v11 = a1[5];
    [v4 enumerateObjectsUsingBlock:v7];
  }

  else
  {
    v5 = a1[5];
    v6 = [a1[6] objectForKey:v3];
    [v5 setObject:v6 forKey:v3];
  }
}

void __73__PAAudiogramUtilities_normalizedOffsetsFromLeftOffsets_andRightOffsets___block_invoke_6(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v25 = a2;
  v7 = [v25 compare:*(a1 + 32)];
  if (a3 && v7 == 1)
  {
    v8 = [*(a1 + 40) objectAtIndex:a3 - 1];
    v9 = [*(a1 + 48) objectForKey:v25];
    [v9 floatValue];
    v11 = v10;

    v12 = [*(a1 + 48) objectForKey:v8];
    [v12 floatValue];
    v14 = v13;

    [*(a1 + 32) floatValue];
    v16 = v15;
    [v8 floatValue];
    v18 = v16 - v17;
    [v25 floatValue];
    v20 = v19;
    [v8 floatValue];
    *&v22 = (v14 * (1.0 - (v18 / (v20 - v21)))) + ((v18 / (v20 - v21)) * v11);
    v23 = *(a1 + 56);
    v24 = [MEMORY[0x277CCABB0] numberWithFloat:v22];
    [v23 setObject:v24 forKey:*(a1 + 32)];

    *a4 = 1;
  }
}

void __73__PAAudiogramUtilities_normalizedOffsetsFromLeftOffsets_andRightOffsets___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  [a3 doubleValue];
  if (v5 == 0.0)
  {
    v6 = [*(a1 + 32) firstObject];
    v7 = [v13 compare:v6];

    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 32);
    if (v7 == 1)
    {
      [v10 lastObject];
    }

    else
    {
      [v10 firstObject];
    }
    v11 = ;
    v12 = [v9 objectForKey:v11];
    [v8 setObject:v12 forKey:v13];
  }
}

+ (id)offsetsSortedByFrequency:(id)frequency
{
  frequencyCopy = frequency;
  allKeys = [frequencyCopy allKeys];
  v5 = [allKeys sortedArrayUsingComparator:&__block_literal_global_127];

  v6 = [frequencyCopy objectsForKeys:v5 notFoundMarker:&unk_28702BDD8];

  return v6;
}

+ (id)frequencyDictionaryFromOffsets:(id)offsets
{
  offsetsCopy = offsets;
  v4 = +[PAAudiogramUtilities presetFrequencies];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = [v4 count];
  if (v6 == [offsetsCopy count])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__PAAudiogramUtilities_frequencyDictionaryFromOffsets___block_invoke;
    v8[3] = &unk_279A1D548;
    v9 = dictionary;
    v10 = v4;
    [offsetsCopy enumerateObjectsUsingBlock:v8];
  }

  return dictionary;
}

void __55__PAAudiogramUtilities_frequencyDictionaryFromOffsets___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:a3];
  [v4 setObject:v6 forKey:v7];
}

@end