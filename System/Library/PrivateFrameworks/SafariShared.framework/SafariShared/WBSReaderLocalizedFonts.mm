@interface WBSReaderLocalizedFonts
+ (id)defaultFontFamilyNameForLanguage:(id)language;
+ (id)defaultFontFamilyNameForLanguageMap;
+ (id)fontsForLanguage:(id)language;
+ (uint64_t)defaultFontFamilyNameForLanguageMap;
@end

@implementation WBSReaderLocalizedFonts

+ (id)fontsForLanguage:(id)language
{
  v21 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  if ([languageCopy isEqualToString:@"am"])
  {
    v4 = [WBSReaderFont fontWithFamilyName:@"Kefa" displayName:0];
    v17 = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];

    goto LABEL_45;
  }

  if ([languageCopy isEqualToString:@"ar"])
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

  if ([languageCopy isEqualToString:@"hy"])
  {
    v10 = [WBSReaderFont fontWithFamilyName:@"Mshtakan" displayName:@"մշտական"];
    v17 = v10;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];

    goto LABEL_45;
  }

  if (([languageCopy isEqualToString:@"bn"] & 1) != 0 || objc_msgSend(languageCopy, "isEqualToString:", @"as"))
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

  if ([languageCopy isEqualToString:@"my"])
  {
    v15 = burmeseFonts();
  }

  else if ([languageCopy isEqualToString:@"chr"])
  {
    v15 = cherokeeFonts();
  }

  else if ([languageCopy isEqualToString:@"gu"])
  {
    v15 = gujaratiFonts();
  }

  else if ([languageCopy isEqualToString:@"pa-Guru"])
  {
    v15 = punjabiFonts();
  }

  else if ([languageCopy isEqualToString:@"he"])
  {
    v15 = hebrewFonts();
  }

  else if ([languageCopy isEqualToString:@"hi"])
  {
    v15 = hindiFonts();
  }

  else if ([languageCopy isEqualToString:@"ja"])
  {
    v15 = japaneseFonts();
  }

  else if ([languageCopy isEqualToString:@"kn"])
  {
    v15 = kannadaFonts();
  }

  else if ([languageCopy isEqualToString:@"km"])
  {
    v15 = khmerFonts();
  }

  else if ([languageCopy isEqualToString:@"ko"])
  {
    v15 = koreanFonts();
  }

  else
  {
    if (([languageCopy isEqualToString:@"lo"] & 1) == 0)
    {
      if ([languageCopy isEqualToString:@"ml"])
      {
        v15 = malayalamFonts();
        goto LABEL_44;
      }

      if ([languageCopy isEqualToString:@"mr"])
      {
        v15 = marathiFonts();
        goto LABEL_44;
      }

      if ([languageCopy isEqualToString:@"or"])
      {
        v15 = oriyaFonts();
        goto LABEL_44;
      }

      if ([languageCopy isEqualToString:@"si"])
      {
        v15 = sinhalaFonts();
        goto LABEL_44;
      }

      if ([languageCopy isEqualToString:@"ta"])
      {
        v15 = tamilFonts();
        goto LABEL_44;
      }

      if ([languageCopy isEqualToString:@"te"])
      {
        v15 = teluguFonts();
        goto LABEL_44;
      }

      if (![languageCopy isEqualToString:@"lo"])
      {
        if ([languageCopy isEqualToString:@"th"])
        {
          v15 = thaiFonts();
        }

        else if ([languageCopy isEqualToString:@"zh-Hans"])
        {
          v15 = simplifiedChineseFonts();
        }

        else if ([languageCopy isEqualToString:@"zh-Hant"])
        {
          v15 = traditionalChineseFonts();
        }

        else if ([languageCopy isEqualToString:@"iu-Cans"])
        {
          v15 = unifiedCanadianSyllabicsFonts();
        }

        else
        {
          if ([languageCopy isEqualToString:@"ur"])
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

+ (id)defaultFontFamilyNameForLanguage:(id)language
{
  languageCopy = language;
  defaultFontFamilyNameForLanguageMap = [self defaultFontFamilyNameForLanguageMap];
  v6 = [defaultFontFamilyNameForLanguageMap objectForKeyedSubscript:languageCopy];
  v7 = v6;
  if (v6)
  {
    familyName = v6;
  }

  else
  {
    v9 = +[WBSReaderFont systemFont];
    familyName = [v9 familyName];
  }

  return familyName;
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
  *self = @"am";
  *a2 = @"Kefa";
  self[1] = @"hy";
  a2[1] = @"Mshtakan";
  self[2] = @"as";
  a2[2] = @"Kohinoor Bangla";
  self[3] = @"bn";
  a2[3] = @"Kohinoor Bangla";
  self[4] = @"my";
  a2[4] = @"Noto Sans Myanmar";
  self[5] = @"chr";
  a2[5] = @"Plantagenet Cherokee";
  self[6] = @"gu";
  a2[6] = @"Kohinoor Gujarati";
  self[7] = @"pa-Guru";
  a2[7] = @"Mukta Mahee";
  self[8] = @"he";
  a2[8] = @"Arial Hebrew";
  self[9] = @"hi";
  a2[9] = @"Kohinoor Devanagari";
  self[10] = @"ja";
  a2[10] = @"Hiragino Maru Gothic ProN";
  self[11] = @"kn";
  a2[11] = @"Noto Sans Kannada";
  self[12] = @"km";
  a2[12] = @"Khmer Sangam MN";
  self[13] = @"ko";
  a2[13] = @"Apple SD Gothic Neo";
  self[14] = @"lo";
  a2[14] = @"Lao Sangam MN";
  self[15] = @"ml";
  a2[15] = @"Malayalam Sangam MN";
  self[16] = @"mr";
  a2[16] = @"Kohinoor Devanagari Marathi";
  self[17] = @"or";
  a2[17] = @"Noto Sans Oriya";
  self[18] = @"si";
  a2[18] = @"Sinhala Sangam MN";
  self[19] = @"ta";
  a2[19] = @"Tamil Sangam MN";
  self[20] = @"te";
  a2[20] = @"Kohinoor Telugu";
  self[21] = @"th";
  a2[21] = @"Thonburi";
  self[22] = @"zh-Hans";
  a2[22] = @"PingFang SC";
  self[23] = @"zh-Hant";
  a2[23] = @"PingFang TC";
  self[24] = @"iu-Cans";
  a2[24] = @"Euphemia UCAS";
  self[25] = @"ur";
  a2[25] = @"Noto Nastaliq Urdu";
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:a2 forKeys:self count:26];
  *a3 = result;
  qword_1EBC79460 = result;
  _MergedGlobals_0 = 1;
  return result;
}

@end