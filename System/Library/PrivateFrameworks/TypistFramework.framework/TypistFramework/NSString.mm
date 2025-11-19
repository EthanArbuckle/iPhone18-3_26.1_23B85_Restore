@interface NSString
@end

@implementation NSString

void __64__NSString_TYTextDirectionAnnotations__textDirectionAnnotations__block_invoke(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [*(a1 + 32) substringWithRange:{a2, a3}];
  v9 = *(*(*(a1 + 64) + 8) + 24);
  v10 = 0x279DF4000;
  v11 = 0x277CCA000;
  v12 = a2 - v9;
  v35 = v8;
  if (a2 > v9)
  {
    v13 = [*(a1 + 32) substringWithRange:{v9, a2 - v9}];
    [*(a1 + 40) processString:v13];
    v14 = *(*(*(a1 + 72) + 8) + 24);
    [*(a1 + 40) reset];
    [*(a1 + 40) processString:v35];
    v15 = MEMORY[0x277CBEAF8];
    v16 = [*(a1 + 40) dominantLanguage];
    v17 = [v15 characterDirectionForLanguage:v16];

    if (v14)
    {
      v17 = v14;
    }

    if (*(*(*(a1 + 80) + 8) + 24) == 1 && (v18 = *(a1 + 48), [MEMORY[0x277CCA900] characterSetWithCharactersInString:v13], v19 = objc_claimAutoreleasedReturnValue(), LODWORD(v18) = objc_msgSend(v18, "isSupersetOfSet:", v19), v19, v18))
    {
      v20 = [*(a1 + 56) lastObject];
      v21 = [v20 range];
      [v20 range];
      [v20 setRange:{v21, v22 + v12}];
      *(*(*(a1 + 64) + 8) + 24) = a2;
      v10 = 0x279DF4000;
    }

    else
    {
      v10 = 0x279DF4000uLL;
      v20 = [TYTextDirectionAnnotation initWithRange:v9 textDirection:a2 - v9, v17];
      [*(a1 + 56) addObject:v20];
      *(*(*(a1 + 80) + 8) + 24) = 0;
    }

    [*(a1 + 40) reset];
    v8 = v35;
    v11 = 0x277CCA000uLL;
  }

  [*(a1 + 40) processString:v8];
  v23 = [*(a1 + 40) dominantLanguage];
  v24 = [MEMORY[0x277CBEAF8] characterDirectionForLanguage:v23];
  v25 = v24;
  v26 = *(*(a1 + 72) + 8);
  if (!*(v26 + 24))
  {
    *(v26 + 24) = v24;
  }

  v27 = [*(v11 + 2304) characterSetWithCharactersInString:v35];
  v28 = [*(v11 + 2304) decimalDigitCharacterSet];
  v29 = [v28 isSupersetOfSet:v27];

  v30 = *(*(a1 + 80) + 8);
  if (a4 == 1 || v29)
  {
    if (*(v30 + 24) == 1)
    {
      v31 = [*(a1 + 56) lastObject];
      v32 = [v31 range];
      [v31 range];
      [v31 setRange:{v32, v33 + a3}];
      goto LABEL_21;
    }

    if (!a2 && *(*(*(a1 + 72) + 8) + 24) == 2)
    {
      v34 = [*(v10 + 304) initWithRange:0 textDirection:{0, 2}];
      [*(a1 + 56) addObject:v34];

      v30 = *(*(a1 + 80) + 8);
    }

    v25 = 1;
    *(v30 + 24) = 1;
  }

  else
  {
    *(v30 + 24) = 0;
  }

  v31 = [*(v10 + 304) initWithRange:a2 textDirection:{a3, v25}];
  [*(a1 + 56) addObject:v31];
LABEL_21:
  *(*(*(a1 + 64) + 8) + 24) = a2 + a3;
  [*(a1 + 40) reset];
}

void __38__NSString_Grapheme__graphemeAtIndex___block_invoke(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v7 = *(a1[4] + 8);
  v8 = *(v7 + 24);
  if (v8 == a1[6])
  {
    v11 = [a2 copy];
    v12 = *(a1[5] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    *a7 = 1;
    v7 = *(a1[4] + 8);
    v8 = *(v7 + 24);
  }

  *(v7 + 24) = v8 + 1;
}

void __35__NSString_Grapheme__graphemeArray__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 copy];
  [v2 addObject:v3];
}

void __63__NSString_ArabicFormConverter__combinedArabicCharacterFormMap__block_invoke()
{
  v12[4] = *MEMORY[0x277D85DE8];
  if (!combinedArabicCharacterFormMap_combinedArabicCharacterFormMap)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C%C", 1604, 1570];
    v11[0] = v10;
    v0 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0xFEF5u, 0, 0, 65270)}];
    v12[0] = v0;
    v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C%C", 1604, 1571];
    v11[1] = v1;
    v2 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0xFEF7u, 0, 0, 65272)}];
    v12[1] = v2;
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C%C", 1604, 1573];
    v11[2] = v3;
    v4 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0xFEF9u, 0, 0, 65274)}];
    v12[2] = v4;
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C%C", 1604, 1575];
    v11[3] = v5;
    v6 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0xFEFBu, 0, 0, 65276)}];
    v12[3] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
    v8 = combinedArabicCharacterFormMap_combinedArabicCharacterFormMap;
    combinedArabicCharacterFormMap_combinedArabicCharacterFormMap = v7;
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __70__NSString_ArabicFormConverter__arabicNonPresentationFormCharacterSet__block_invoke()
{
  v0 = [MEMORY[0x277CCAB50] characterSetWithRange:{1569, 25}];
  [v0 addCharactersInRange:{1600, 10}];
  v1 = arabicNonPresentationFormCharacterSet_arabicNonPresentationFormCharacterSet;
  arabicNonPresentationFormCharacterSet_arabicNonPresentationFormCharacterSet = v0;
}

void __55__NSString_ArabicFormConverter__arabicCharacterFormMap__block_invoke()
{
  v41[37] = *MEMORY[0x277D85DE8];
  v40[0] = &unk_288029A90;
  v39 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0xFE80u, 0, 0, 0)}];
  v41[0] = v39;
  v40[1] = &unk_288029AA8;
  v38 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0xFE81u, 0, 0, 65154)}];
  v41[1] = v38;
  v40[2] = &unk_288029AC0;
  v37 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0xFE83u, 0, 0, 65156)}];
  v41[2] = v37;
  v40[3] = &unk_288029AD8;
  v36 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0xFE85u, 0, 0, 65158)}];
  v41[3] = v36;
  v40[4] = &unk_288029AF0;
  v35 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0xFE87u, 0, 0, 65160)}];
  v41[4] = v35;
  v40[5] = &unk_288029B08;
  v34 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0xFE89u, 0xFE8Bu, 65164, 65162)}];
  v41[5] = v34;
  v40[6] = &unk_288029B20;
  v33 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0xFE8Du, 0, 0, 65166)}];
  v41[6] = v33;
  v40[7] = &unk_288029B38;
  v32 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0xFE8Fu, 0xFE91u, 65170, 65168)}];
  v41[7] = v32;
  v40[8] = &unk_288029B50;
  v31 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0xFE93u, 0, 0, 65172)}];
  v41[8] = v31;
  v40[9] = &unk_288029B68;
  v30 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0xFE95u, 0xFE97u, 65176, 65174)}];
  v41[9] = v30;
  v40[10] = &unk_288029B80;
  v29 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0xFE99u, 0xFE9Bu, 65180, 65178)}];
  v41[10] = v29;
  v40[11] = &unk_288029B98;
  v28 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0xFE9Du, 0xFE9Fu, 65184, 65182)}];
  v41[11] = v28;
  v40[12] = &unk_288029BB0;
  v27 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0xFEA1u, 0xFEA3u, 65188, 65186)}];
  v41[12] = v27;
  v40[13] = &unk_288029BC8;
  v26 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0xFEA5u, 0xFEA7u, 65192, 65190)}];
  v41[13] = v26;
  v40[14] = &unk_288029BE0;
  v25 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0xFEA9u, 0, 0, 65194)}];
  v41[14] = v25;
  v40[15] = &unk_288029BF8;
  v24 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0xFEABu, 0, 0, 65196)}];
  v41[15] = v24;
  v40[16] = &unk_288029C10;
  v23 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0xFEADu, 0, 0, 65198)}];
  v41[16] = v23;
  v40[17] = &unk_288029C28;
  v22 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0xFEAFu, 0, 0, 65200)}];
  v41[17] = v22;
  v40[18] = &unk_288029C40;
  v21 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0xFEB1u, 0xFEB3u, 65204, 65202)}];
  v41[18] = v21;
  v40[19] = &unk_288029C58;
  v20 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0xFEB5u, 0xFEB7u, 65208, 65206)}];
  v41[19] = v20;
  v40[20] = &unk_288029C70;
  v19 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0xFEB9u, 0xFEBBu, 65212, 65210)}];
  v41[20] = v19;
  v40[21] = &unk_288029C88;
  v18 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0xFEBDu, 0xFEBFu, 65216, 65214)}];
  v41[21] = v18;
  v40[22] = &unk_288029CA0;
  v17 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0xFEC1u, 0xFEC3u, 65220, 65218)}];
  v41[22] = v17;
  v40[23] = &unk_288029CB8;
  v16 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0xFEC5u, 0xFEC7u, 65224, 65222)}];
  v41[23] = v16;
  v40[24] = &unk_288029CD0;
  v15 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0xFEC9u, 0xFECBu, 65228, 65226)}];
  v41[24] = v15;
  v40[25] = &unk_288029CE8;
  v14 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0xFECDu, 0xFECFu, 65232, 65230)}];
  v41[25] = v14;
  v40[26] = &unk_288029D00;
  v13 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0x640u, 0, 0, 0)}];
  v41[26] = v13;
  v40[27] = &unk_288029D18;
  v0 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0xFED1u, 0xFED3u, 65236, 65234)}];
  v41[27] = v0;
  v40[28] = &unk_288029D30;
  v1 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0xFED5u, 0xFED7u, 65240, 65238)}];
  v41[28] = v1;
  v40[29] = &unk_288029D48;
  v2 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0xFED9u, 0xFEDBu, 65244, 65242)}];
  v41[29] = v2;
  v40[30] = &unk_288029D60;
  v3 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0xFEDDu, 0xFEDFu, 65248, 65246)}];
  v41[30] = v3;
  v40[31] = &unk_288029D78;
  v4 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0xFEE1u, 0xFEE3u, 65252, 65250)}];
  v41[31] = v4;
  v40[32] = &unk_288029D90;
  v5 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0xFEE5u, 0xFEE7u, 65256, 65254)}];
  v41[32] = v5;
  v40[33] = &unk_288029DA8;
  v6 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0xFEE9u, 0xFEEBu, 65260, 65258)}];
  v41[33] = v6;
  v40[34] = &unk_288029DC0;
  v7 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0xFEEDu, 0, 0, 65262)}];
  v41[34] = v7;
  v40[35] = &unk_288029DD8;
  v8 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0xFEEFu, 0, 0, 65264)}];
  v41[35] = v8;
  v40[36] = &unk_288029DF0;
  v9 = [MEMORY[0x277CCAE60] valueWithTYArabicCharacter:{TYMakeArabicCharacter(0xFEF1u, 0xFEF3u, 65268, 65266)}];
  v41[36] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:37];
  v11 = arabicCharacterFormMap_arabicCharacterFormMap;
  arabicCharacterFormMap_arabicCharacterFormMap = v10;

  v12 = *MEMORY[0x277D85DE8];
}

void __60__NSString_ArabicFormConverter__arabicDiacriticCharacterSet__block_invoke()
{
  v0 = MEMORY[0x277CCA900];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C", 1552, 1554, 1555, 1556, 1557, 1611, 1612, 1613, 1614, 1615, 1616, 1617, 1618, 1619, 1620, 1621, 1622, 1623, 1624, 1648, 1750, 1751, 1752, 1753, 1754, 1755, 1756, 1759, 1760, 1761, 1762, 1763, 1764, 1767, 1768, 1770, 1771, 1772, 1773];
  v1 = [v0 characterSetWithCharactersInString:v3];
  v2 = arabicDiacriticCharacterSet_arabicDiacriticCharacterSet;
  arabicDiacriticCharacterSet_arabicDiacriticCharacterSet = v1;
}

void __61__NSString_ArabicFormConverter__arabicFinalFormsCharacterSet__block_invoke()
{
  v0 = MEMORY[0x277CCA900];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C", 65166, 65168, 65174, 65178, 65182, 65186, 65190, 65194, 65196, 65198, 65200, 65202, 65206, 65210, 65214, 65218, 65222, 65226, 65230, 65234, 65238, 65242, 65246, 65250, 65254, 65258, 65262, 65266, 65154, 65172, 65264, 65276];
  v1 = [v0 characterSetWithCharactersInString:v3];
  v2 = arabicFinalFormsCharacterSet_arabicFinalFormsCharacterSet;
  arabicFinalFormsCharacterSet_arabicFinalFormsCharacterSet = v1;
}

@end