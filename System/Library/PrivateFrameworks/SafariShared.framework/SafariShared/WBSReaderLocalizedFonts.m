@interface WBSReaderLocalizedFonts
+ (id)defaultFontFamilyNameForLanguage:(id)a3;
+ (id)defaultFontFamilyNameForLanguageMap;
+ (id)fontsForLanguage:(id)a3;
+ (uint64_t)defaultFontFamilyNameForLanguageMap;
@end

@implementation WBSReaderLocalizedFonts

+ (id)fontsForLanguage:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 isEqualToString:@"am"])
  {
    v4 = [WBSReaderFont fontWithFamilyName:@"Kefa" displayName:0];
    v17 = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];

    goto LABEL_45;
  }

  if ([v3 isEqualToString:@"ar"])
  {
    v6 = [WBSReaderFont systemFontWithDisplayName:@"سان فرانسيسكو"];
    v17 = v6;
    v7 = [WBSReaderFont fontWithFamilyName:@"Myriad Arabic" displayName:@"Myriad عربي"];
    v18 = v7;
    v8 = [WBSReaderFont fontWithFamilyName:@"Damascus" displayName:@"دمشق عادي"];
    v19 = v8;
    v9 = [WBSReaderFont fontWithFamilyName:@"Times New Roman" displayName:@"تايمز نيو رومان"];
    v20 = v9;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:4];

    goto LABEL_45;
  }

  if ([v3 isEqualToString:@"hy"])
  {
    v10 = [WBSReaderFont fontWithFamilyName:@"Mshtakan" displayName:@"մշտական"];
    v17 = v10;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];

    goto LABEL_45;
  }

  if (([v3 isEqualToString:@"bn"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"as"))
  {
    v11 = [WBSReaderFont fontWithFamilyName:@"Kohinoor Bangla" displayName:@"কোহিনুর বাংলা"];
    v17 = v11;
    v12 = [WBSReaderFont fontWithFamilyName:@"Tiro Bangla" displayName:@"Tiro বাংলা"];
    v18 = v12;
    v13 = [WBSReaderFont fontWithFamilyName:@"Bangla Sangam MN" displayName:@"বাংলা সঙ্গম MN"];
    v19 = v13;
    v14 = [WBSReaderFont fontWithFamilyName:@"Bangla MN" displayName:@"বাংলা MN"];
    v20 = v14;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:4];

    goto LABEL_45;
  }

  if ([v3 isEqualToString:@"my"])
  {
    v15 = burmeseFonts();
  }

  else if ([v3 isEqualToString:@"chr"])
  {
    v15 = cherokeeFonts();
  }

  else if ([v3 isEqualToString:@"gu"])
  {
    v15 = gujaratiFonts();
  }

  else if ([v3 isEqualToString:@"pa-Guru"])
  {
    v15 = punjabiFonts();
  }

  else if ([v3 isEqualToString:@"he"])
  {
    v15 = hebrewFonts();
  }

  else if ([v3 isEqualToString:@"hi"])
  {
    v15 = hindiFonts();
  }

  else if ([v3 isEqualToString:@"ja"])
  {
    v15 = japaneseFonts();
  }

  else if ([v3 isEqualToString:@"kn"])
  {
    v15 = kannadaFonts();
  }

  else if ([v3 isEqualToString:@"km"])
  {
    v15 = khmerFonts();
  }

  else if ([v3 isEqualToString:@"ko"])
  {
    v15 = koreanFonts();
  }

  else
  {
    if (([v3 isEqualToString:@"lo"] & 1) == 0)
    {
      if ([v3 isEqualToString:@"ml"])
      {
        v15 = malayalamFonts();
        goto LABEL_44;
      }

      if ([v3 isEqualToString:@"mr"])
      {
        v15 = marathiFonts();
        goto LABEL_44;
      }

      if ([v3 isEqualToString:@"or"])
      {
        v15 = oriyaFonts();
        goto LABEL_44;
      }

      if ([v3 isEqualToString:@"si"])
      {
        v15 = sinhalaFonts();
        goto LABEL_44;
      }

      if ([v3 isEqualToString:@"ta"])
      {
        v15 = tamilFonts();
        goto LABEL_44;
      }

      if ([v3 isEqualToString:@"te"])
      {
        v15 = teluguFonts();
        goto LABEL_44;
      }

      if (![v3 isEqualToString:@"lo"])
      {
        if ([v3 isEqualToString:@"th"])
        {
          v15 = thaiFonts();
        }

        else if ([v3 isEqualToString:@"zh-Hans"])
        {
          v15 = simplifiedChineseFonts();
        }

        else if ([v3 isEqualToString:@"zh-Hant"])
        {
          v15 = traditionalChineseFonts();
        }

        else if ([v3 isEqualToString:@"iu-Cans"])
        {
          v15 = unifiedCanadianSyllabicsFonts();
        }

        else
        {
          if ([v3 isEqualToString:@"ur"])
          {
            urduFonts();
          }

          else
          {
            defaultFonts();
          }
          v15 = ;
        }

        goto LABEL_44;
      }
    }

    v15 = laoFonts();
  }

LABEL_44:
  v5 = v15;
LABEL_45:

  return v5;
}

+ (id)defaultFontFamilyNameForLanguage:(id)a3
{
  v4 = a3;
  v5 = [a1 defaultFontFamilyNameForLanguageMap];
  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = +[WBSReaderFont systemFont];
    v8 = [v9 familyName];
  }

  return v8;
}

+ (id)defaultFontFamilyNameForLanguageMap
{
  v6[26] = *MEMORY[0x1E69E9840];
  if (_MergedGlobals_0 == 1)
  {
    v2 = qword_1EBC79460;
  }

  else
  {
    +[(WBSReaderLocalizedFonts *)v5];
    v2 = v4;
  }

  return v2;
}

+ (uint64_t)defaultFontFamilyNameForLanguageMap
{
  *a1 = @"am";
  *a2 = @"Kefa";
  a1[1] = @"hy";
  a2[1] = @"Mshtakan";
  a1[2] = @"as";
  a2[2] = @"Kohinoor Bangla";
  a1[3] = @"bn";
  a2[3] = @"Kohinoor Bangla";
  a1[4] = @"my";
  a2[4] = @"Noto Sans Myanmar";
  a1[5] = @"chr";
  a2[5] = @"Plantagenet Cherokee";
  a1[6] = @"gu";
  a2[6] = @"Kohinoor Gujarati";
  a1[7] = @"pa-Guru";
  a2[7] = @"Mukta Mahee";
  a1[8] = @"he";
  a2[8] = @"Arial Hebrew";
  a1[9] = @"hi";
  a2[9] = @"Kohinoor Devanagari";
  a1[10] = @"ja";
  a2[10] = @"Hiragino Maru Gothic ProN";
  a1[11] = @"kn";
  a2[11] = @"Noto Sans Kannada";
  a1[12] = @"km";
  a2[12] = @"Khmer Sangam MN";
  a1[13] = @"ko";
  a2[13] = @"Apple SD Gothic Neo";
  a1[14] = @"lo";
  a2[14] = @"Lao Sangam MN";
  a1[15] = @"ml";
  a2[15] = @"Malayalam Sangam MN";
  a1[16] = @"mr";
  a2[16] = @"Kohinoor Devanagari Marathi";
  a1[17] = @"or";
  a2[17] = @"Noto Sans Oriya";
  a1[18] = @"si";
  a2[18] = @"Sinhala Sangam MN";
  a1[19] = @"ta";
  a2[19] = @"Tamil Sangam MN";
  a1[20] = @"te";
  a2[20] = @"Kohinoor Telugu";
  a1[21] = @"th";
  a2[21] = @"Thonburi";
  a1[22] = @"zh-Hans";
  a2[22] = @"PingFang SC";
  a1[23] = @"zh-Hant";
  a2[23] = @"PingFang TC";
  a1[24] = @"iu-Cans";
  a2[24] = @"Euphemia UCAS";
  a1[25] = @"ur";
  a2[25] = @"Noto Nastaliq Urdu";
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:a2 forKeys:a1 count:26];
  *a3 = result;
  qword_1EBC79460 = result;
  _MergedGlobals_0 = 1;
  return result;
}

@end