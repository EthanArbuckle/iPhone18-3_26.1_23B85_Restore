@interface RKNLEventTokenizer
+ (BOOL)isSpecialToken:(id)a3;
+ (void)initialize;
- (BOOL)hasEmoticon:(id)a3;
- (RKNLEventTokenizer)initWithLanguageID:(id)a3;
- (id)buildTokenSquence:(id)a3 withOffset:(unint64_t)a4;
- (id)getTokens:(id)a3;
- (id)processForEmoticons:(id)a3;
- (id)processForEmoticonsAndEmojis:(id)a3;
- (id)processForHyphenation:(id)a3;
- (id)tokenizeWithDataDetectors:(id)a3;
- (id)transform:(id)a3;
- (void)dealloc;
@end

@implementation RKNLEventTokenizer

+ (void)initialize
{
  v10[214] = *MEMORY[0x277D85DE8];
  if (!happyEmojiSet)
  {
    v2 = [MEMORY[0x277CBEB98] setWithObjects:{@"🙆‍♀️", @"🙆‍♂️", @"😀", @"😁", @"😂", @"😃", @"😄", @"😅", @"😆", @"😇", @"😉", @"😊", @"😋", @"😌", @"😍", @"😎", @"😏", @"🤑", @"🤓", @"😗", @"😘", @"🤗", @"😙", @"😚", @"😛", @"😜", @"😝", @"😬", @"😸", @"😹", @"😺", @"😻", @"😽", @"🙂", @"🙃", @"🙆", @"☺️", @"✊", 0}];
    v3 = happyEmojiSet;
    happyEmojiSet = v2;
  }

  if (!sadEmojiSet)
  {
    v4 = [MEMORY[0x277CBEB98] setWithObjects:{@"🙍‍♀️", @"🙍‍♂️", @"☹️", @"🙎‍♀️", @"🙎‍♂️", @"😐", @"😑", @"😒", @"😓", @"🤒", @"😔", @"😕", @"😖", @"🤕", @"😞", @"😟", @"😠", @"😡", @"😢", @"😣", @"😤", @"😥", @"😦", @"😧", @"😨", @"😩", @"😪", @"😫", @"😭", @"😮", @"😰", @"😱", @"😲", @"😳", @"😵", @"😶", @"😿", @"🙀", @"🙁", @"🙄", @"🙍", @"🙎", @"🙍‍♂️", @"☹️", @"😐", @"😑", @"🤒", @"😔", @"😕", @"🤕", @"😞", @"😟", @"😢", @"😦", @"😧", @"😨", @"😩", @"😫", @"😭", 0}];
    v5 = sadEmojiSet;
    sadEmojiSet = v4;
  }

  if (!specialCharMapping)
  {
    v9[0] = @"#";
    v9[1] = @"$";
    v10[0] = @"#";
    v10[1] = @"$";
    v9[2] = @"%";
    v9[3] = @"&";
    v10[2] = @"%";
    v10[3] = @"&";
    v9[4] = @"'";
    v9[5] = @",";
    v10[4] = @"'";
    v10[5] = @",";
    v9[6] = @"、";
    v9[7] = @"-";
    v10[6] = @",";
    v10[7] = @"-";
    v9[8] = @"‒";
    v9[9] = @"–";
    v10[8] = kEMDash;
    v10[9] = kEMDash;
    v9[10] = @"‐";
    v9[11] = @"‑";
    v10[10] = @"-";
    v10[11] = @"-";
    v9[12] = @"—";
    v9[13] = @"―";
    v10[12] = kEMDash;
    v10[13] = kEMDash;
    v9[14] = @"­";
    v9[15] = @".";
    v10[14] = @"-";
    v10[15] = @".";
    v9[16] = @"/";
    v9[17] = @"0";
    v10[16] = @"/";
    v10[17] = @"0";
    v9[18] = @"1";
    v9[19] = @"2";
    v10[18] = @"1";
    v10[19] = @"2";
    v9[20] = @"3";
    v9[21] = @"4";
    v10[20] = @"3";
    v10[21] = @"4";
    v9[22] = @"5";
    v9[23] = @"6";
    v10[22] = @"5";
    v10[23] = @"6";
    v9[24] = @"7";
    v9[25] = @"8";
    v10[24] = @"7";
    v10[25] = @"8";
    v9[26] = @"9";
    v9[27] = @":";
    v10[26] = @"9";
    v10[27] = @":";
    v9[28] = @"<";
    v9[29] = @">";
    v10[28] = @"<";
    v10[29] = @">";
    v9[30] = @"?";
    v9[31] = @"@";
    v10[30] = @"?";
    v10[31] = @"@";
    v9[32] = @"A";
    v9[33] = @"B";
    v10[32] = @"A";
    v10[33] = @"B";
    v9[34] = @"C";
    v9[35] = @"D";
    v10[34] = @"C";
    v10[35] = @"D";
    v9[36] = @"E";
    v9[37] = @"F";
    v10[36] = @"E";
    v10[37] = @"F";
    v9[38] = @"G";
    v9[39] = @"H";
    v10[38] = @"G";
    v10[39] = @"H";
    v9[40] = @"I";
    v9[41] = @"J";
    v10[40] = @"I";
    v10[41] = @"J";
    v9[42] = @"K";
    v9[43] = @"L";
    v10[42] = @"K";
    v10[43] = @"L";
    v9[44] = @"M";
    v9[45] = @"N";
    v10[44] = @"M";
    v10[45] = @"N";
    v9[46] = @"O";
    v9[47] = @"P";
    v10[46] = @"O";
    v10[47] = @"P";
    v9[48] = @"Q";
    v9[49] = @"R";
    v10[48] = @"Q";
    v10[49] = @"R";
    v9[50] = @"S";
    v9[51] = @"T";
    v10[50] = @"S";
    v10[51] = @"T";
    v9[52] = @"U";
    v9[53] = @"V";
    v10[52] = @"U";
    v10[53] = @"V";
    v9[54] = @"W";
    v9[55] = @"X";
    v10[54] = @"W";
    v10[55] = @"X";
    v9[56] = @"Y";
    v9[57] = @"Z";
    v10[56] = @"Y";
    v10[57] = @"Z";
    v9[58] = @"\\"";
    v9[59] = @"_";
    v10[58] = @"\\"";
    v10[59] = @"_";
    v9[60] = @"a";
    v9[61] = @"b";
    v10[60] = @"a";
    v10[61] = @"b";
    v9[62] = @"c";
    v9[63] = @"d";
    v10[62] = @"c";
    v10[63] = @"d";
    v9[64] = @"e";
    v10[64] = @"e";
    v9[65] = @"f";
    v10[65] = @"f";
    v9[66] = @"g";
    v10[66] = @"g";
    v9[67] = @"h";
    v10[67] = @"h";
    v9[68] = @"i";
    v10[68] = @"i";
    v9[69] = @"j";
    v10[69] = @"j";
    v9[70] = @"k";
    v10[70] = @"k";
    v9[71] = @"l";
    v10[71] = @"l";
    v9[72] = @"m";
    v10[72] = @"m";
    v9[73] = @"n";
    v10[73] = @"n";
    v9[74] = @"o";
    v10[74] = @"o";
    v9[75] = @"p";
    v10[75] = @"p";
    v9[76] = @"q";
    v10[76] = @"q";
    v9[77] = @"r";
    v10[77] = @"r";
    v9[78] = @"s";
    v10[78] = @"s";
    v9[79] = @"t";
    v10[79] = @"t";
    v9[80] = @"u";
    v10[80] = @"u";
    v9[81] = @"v";
    v10[81] = @"v";
    v9[82] = @"w";
    v10[82] = @"w";
    v9[83] = @"x";
    v10[83] = @"x";
    v9[84] = @"y";
    v10[84] = @"y";
    v9[85] = @"z";
    v10[85] = @"z";
    v9[86] = @"¢";
    v10[86] = @"¢";
    v9[87] = @"£";
    v10[87] = @"£";
    v9[88] = @"¥";
    v10[88] = @"¥";
    v9[89] = @"§";
    v10[89] = @"§";
    v9[90] = @"°";
    v10[90] = @"°";
    v9[91] = @"À";
    v10[91] = @"À";
    v9[92] = @"Á";
    v10[92] = @"Á";
    v9[93] = @"Â";
    v10[93] = @"Â";
    v9[94] = @"Ã";
    v10[94] = @"Ã";
    v9[95] = @"Ä";
    v10[95] = @"Ä";
    v9[96] = @"Å";
    v10[96] = @"Å";
    v9[97] = @"Ç";
    v10[97] = @"Ç";
    v9[98] = @"È";
    v10[98] = @"È";
    v9[99] = @"É";
    v10[99] = @"É";
    v9[100] = @"Ê";
    v10[100] = @"Ê";
    v9[101] = @"Ë";
    v10[101] = @"Ë";
    v9[102] = @"Ì";
    v10[102] = @"Ì";
    v9[103] = @"Í";
    v10[103] = @"Í";
    v9[104] = @"Î";
    v10[104] = @"Î";
    v9[105] = @"Ï";
    v10[105] = @"Ï";
    v9[106] = @"Ñ";
    v10[106] = @"Ñ";
    v9[107] = @"Ò";
    v10[107] = @"Ò";
    v9[108] = @"Ó";
    v10[108] = @"Ó";
    v9[109] = @"Ô";
    v10[109] = @"Ô";
    v9[110] = @"Õ";
    v10[110] = @"Õ";
    v9[111] = @"Ö";
    v10[111] = @"Ö";
    v9[112] = @"Ø";
    v10[112] = @"Ø";
    v9[113] = @"Ù";
    v10[113] = @"Ù";
    v9[114] = @"Ú";
    v10[114] = @"Ú";
    v9[115] = @"Ü";
    v10[115] = @"Ü";
    v9[116] = @"ß";
    v10[116] = @"ß";
    v9[117] = @"à";
    v10[117] = @"à";
    v9[118] = @"á";
    v10[118] = @"á";
    v9[119] = @"â";
    v10[119] = @"â";
    v9[120] = @"ã";
    v10[120] = @"ã";
    v9[121] = @"ä";
    v10[121] = @"ä";
    v9[122] = @"å";
    v10[122] = @"å";
    v9[123] = @"æ";
    v10[123] = @"æ";
    v9[124] = @"ç";
    v10[124] = @"ç";
    v9[125] = @"è";
    v10[125] = @"è";
    v9[126] = @"é";
    v10[126] = @"é";
    v9[127] = @"ê";
    v10[127] = @"ê";
    v9[128] = @"ë";
    v10[128] = @"ë";
    v9[129] = @"ì";
    v10[129] = @"ì";
    v9[130] = @"í";
    v10[130] = @"í";
    v9[131] = @"î";
    v10[131] = @"î";
    v9[132] = @"ï";
    v10[132] = @"ï";
    v9[133] = @"ð";
    v10[133] = @"ð";
    v9[134] = @"ñ";
    v10[134] = @"ñ";
    v9[135] = @"ò";
    v10[135] = @"ò";
    v9[136] = @"ó";
    v10[136] = @"ó";
    v9[137] = @"ô";
    v10[137] = @"ô";
    v9[138] = @"õ";
    v10[138] = @"õ";
    v9[139] = @"ö";
    v10[139] = @"ö";
    v9[140] = @"ø";
    v10[140] = @"ø";
    v9[141] = @"ù";
    v10[141] = @"ù";
    v9[142] = @"ú";
    v10[142] = @"ú";
    v9[143] = @"û";
    v10[143] = @"û";
    v9[144] = @"ü";
    v10[144] = @"ü";
    v9[145] = @"\xFF";
    v10[145] = @"\xFF";
    v9[146] = @"∼";
    v10[146] = @"~";
    v9[147] = @"’";
    v10[147] = @"'";
    v9[148] = @"ʼ";
    v10[148] = @"'";
    v9[149] = @"Ⅱ";
    v10[149] = @"II";
    v9[150] = @"Ⅲ";
    v10[150] = @"III";
    v9[151] = @"ƒ";
    v10[151] = @"f";
    v9[152] = @"ﬁ";
    v10[152] = @"fi";
    v9[153] = @"ı";
    v10[153] = @"i";
    v9[154] = @"ẞ";
    v10[154] = @"s";
    v9[155] = @"ſ";
    v10[155] = @"s";
    v9[156] = @"Ć";
    v10[156] = @"Ć";
    v9[157] = @"Ė";
    v10[157] = @"Ė";
    v9[158] = @"ė";
    v10[158] = @"ė";
    v9[159] = @"ě";
    v10[159] = @"ě";
    v9[160] = @"Ķ";
    v10[160] = @"Ķ";
    v9[161] = @"ń";
    v10[161] = @"ń";
    v9[162] = @"ş";
    v10[162] = @"ş";
    v9[163] = @"ż";
    v10[163] = @"ż";
    v9[164] = @"ą";
    v10[164] = @"ą";
    v9[165] = @"ž";
    v10[165] = @"ž";
    v9[166] = @"ś";
    v10[166] = @"ś";
    v9[167] = @"ā";
    v10[167] = @"ā";
    v9[168] = @"ę";
    v10[168] = @"ę";
    v9[169] = @"ğ";
    v10[169] = @"ğ";
    v9[170] = @"ř";
    v10[170] = @"ř";
    v9[171] = @"Š";
    v10[171] = @"Š";
    v9[172] = @"Ż";
    v10[172] = @"Ż";
    v9[173] = @"€";
    v10[173] = @"€";
    v9[174] = @"Ÿ";
    v10[174] = @"Ÿ";
    v9[175] = @"ć";
    v10[175] = @"ć";
    v9[176] = @"ī";
    v10[176] = @"ī";
    v9[177] = @"ň";
    v10[177] = @"ň";
    v9[178] = @"ů";
    v10[178] = @"ů";
    v9[179] = @"Œ";
    v10[179] = @"Œ";
    v9[180] = @"š";
    v10[180] = @"š";
    v9[181] = @"č";
    v10[181] = @"č";
    v9[182] = @"ō";
    v10[182] = @"ō";
    v9[183] = @"ņ";
    v10[183] = @"ņ";
    v9[184] = @"œ";
    v10[184] = @"œ";
    v9[185] = @"😁";
    v10[185] = @"😁";
    v9[186] = @"😂";
    v10[186] = @"😂";
    v9[187] = @"😉";
    v10[187] = @"😉";
    v9[188] = @"😊";
    v10[188] = @"😊";
    v9[189] = @"👍";
    v10[189] = @"👍";
    v9[190] = @"😍";
    v10[190] = @"😍";
    v9[191] = @"☺";
    v10[191] = @"😊";
    v9[192] = @"😄";
    v10[192] = @"😄";
    v9[193] = @"😘";
    v10[193] = @"😘";
    v9[194] = @"😱";
    v10[194] = @"😱";
    v9[195] = @"👌";
    v10[195] = @"👌";
    v9[196] = @"😎";
    v10[196] = @"😎";
    v9[197] = @"😡";
    v10[197] = @"😡";
    v9[198] = @"❤";
    v10[198] = @"❤";
    v9[199] = @"😬";
    v10[199] = @"😬";
    v9[200] = @"😃";
    v10[200] = @"😃";
    v9[201] = @"😏";
    v10[201] = @"😏";
    v9[202] = @"😝";
    v10[202] = @"😝";
    v9[203] = @"😩";
    v10[203] = @"😩";
    v9[204] = @"😳";
    v10[204] = @"😳";
    v9[205] = @"🍸";
    v10[205] = @"🍸";
    v9[206] = @"✨";
    v10[206] = @"✨";
    v9[207] = @"😜";
    v10[207] = @"😜";
    v9[208] = @"😀";
    v10[208] = @"😀";
    v9[209] = @"🍷";
    v10[209] = @"🍷";
    v9[210] = @"😭";
    v10[210] = @"😭";
    v9[211] = @"☹";
    v10[211] = @"😭";
    v9[212] = @"👎";
    v10[212] = @"👎";
    v9[213] = @"à";
    v10[213] = @"à";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:214];
    v7 = specialCharMapping;
    specialCharMapping = v6;
  }

  if (!emoticonCategoryDict)
  {
    emoticonCategoryDict = &unk_2874EA760;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  tokenizer = self->_tokenizer;
  if (tokenizer)
  {
    CFRelease(tokenizer);
  }

  v4.receiver = self;
  v4.super_class = RKNLEventTokenizer;
  [(RKNLEventTokenizer *)&v4 dealloc];
}

- (RKNLEventTokenizer)initWithLanguageID:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = RKNLEventTokenizer;
  v6 = [(RKNLEventTokenizer *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_languageID, a3);
    CanonicalLocaleIdentifierFromString = CFLocaleCreateCanonicalLocaleIdentifierFromString(0, v7->_languageID);
    v9 = CFLocaleCreate(0, CanonicalLocaleIdentifierFromString);
    v10 = *MEMORY[0x277CBECE8];
    v13.length = CFStringGetLength(@"init");
    v13.location = 0;
    v7->_tokenizer = CFStringTokenizerCreate(v10, @"init", v13, 4uLL, v9);
    CFRelease(CanonicalLocaleIdentifierFromString);
    CFRelease(v9);
  }

  return v7;
}

+ (BOOL)isSpecialToken:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"URL"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"PHONE") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"ADDRESS") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"DATE_TIME") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"CURRENCY") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"DIGIT_STRG") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"EMOTICON_HAPPY") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"EMOTICON_PERTURBED") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"EMOTICONHAPPY") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"EMOTICONPERTURBED") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"DATETIME"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"DIGITSTRG"];
  }

  return v4;
}

- (id)tokenizeWithDataDetectors:(id)a3
{
  v3 = a3;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v36[3] = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__RKNLEventTokenizer_tokenizeWithDataDetectors___block_invoke;
  block[3] = &unk_279B10020;
  block[4] = v36;
  if (tokenizeWithDataDetectors__onceToken != -1)
  {
    dispatch_once(&tokenizeWithDataDetectors__onceToken, block);
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (tokenizeWithDataDetectors__scanner && DDScannerScanString() && (v5 = DDScannerCopyResultsWithOptions(), (v6 = v5) != 0))
  {
    Count = CFArrayGetCount(v5);
    if (Count >= 1)
    {
      v8 = 0;
      v9 = 0;
      cf2 = *MEMORY[0x277D040A8];
      v31 = *MEMORY[0x277D040B0];
      v30 = *MEMORY[0x277D04198];
      v29 = *MEMORY[0x277D040A0];
      v28 = *MEMORY[0x277D04190];
      v32 = *MEMORY[0x277D041A8];
      while (1)
      {
        CFArrayGetValueAtIndex(v6, v9);
        Category = DDResultGetCategory();
        if (Category <= 2)
        {
          break;
        }

        if (Category == 3)
        {
          v11 = @"ADDRESS";
          goto LABEL_24;
        }

        if (Category != 4)
        {
          goto LABEL_19;
        }

        Type = DDResultGetType();
        if (CFEqual(Type, cf2) || CFEqual(Type, v31) || CFEqual(Type, v30) || CFEqual(Type, v29))
        {
LABEL_21:
          v11 = @"DATETIME";
          goto LABEL_24;
        }

        v13 = CFEqual(Type, v28);
LABEL_20:
        if (v13)
        {
          goto LABEL_21;
        }

LABEL_27:
        if (Count == ++v9)
        {
          goto LABEL_31;
        }
      }

      if (Category == 1)
      {
        v11 = @"URL";
        goto LABEL_24;
      }

      if (Category == 2)
      {
        v11 = @"PHONE";
LABEL_24:
        Range = DDResultGetRange();
        v16 = Range;
        v18 = v17;
        if (Range > v8)
        {
          v34 = v11;
          v19 = v6;
          v20 = Count;
          v21 = v3;
          v22 = [v3 substringWithRange:{v8, Range - v8}];
          v23 = -[RKNLEventToken initWithString:location:length:]([RKNLEventToken alloc], "initWithString:location:length:", v22, v8, [v22 length]);
          [v4 addObject:v23];

          v3 = v21;
          Count = v20;
          v6 = v19;
          v11 = v34;
        }

        v24 = [[RKNLEventToken alloc] initWithString:v11 location:v16 length:v18];
        [v4 addObject:v24];

        v8 = v16 + v18;
        goto LABEL_27;
      }

LABEL_19:
      v14 = DDResultGetType();
      v13 = CFEqual(v14, v32);
      goto LABEL_20;
    }

    v8 = 0;
LABEL_31:
    CFRelease(v6);
  }

  else
  {
    v8 = 0;
  }

  if (v8 < [v3 length])
  {
    v25 = [v3 substringWithRange:{v8, objc_msgSend(v3, "length") - v8}];
    v26 = -[RKNLEventToken initWithString:location:length:]([RKNLEventToken alloc], "initWithString:location:length:", v25, v8, [v3 length] - v8);
    [v4 addObject:v26];
  }

  _Block_object_dispose(v36, 8);

  return v4;
}

uint64_t __48__RKNLEventTokenizer_tokenizeWithDataDetectors___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  result = DDScannerCreateWithType();
  tokenizeWithDataDetectors__scanner = result;
  return result;
}

- (BOOL)hasEmoticon:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = emoticonCategoryDict;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([v3 containsString:{*(*(&v10 + 1) + 8 * i), v10}])
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)processForEmoticonsAndEmojis:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v3;
  v32 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (v32)
  {
    v5 = *v55;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v55 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v54 + 1) + 8 * i);
        v8 = [v7 string];
        v50 = 0;
        v51 = &v50;
        v52 = 0x2020000000;
        v53 = [v7 location];
        if (CEMStringContainsEmoji())
        {
          CFStringGetLength(v8);
          v46 = 0;
          v47 = &v46;
          v48 = 0x2020000000;
          v49 = 0;
          v38 = MEMORY[0x277D85DD0];
          v39 = 3221225472;
          v40 = __51__RKNLEventTokenizer_processForEmoticonsAndEmojis___block_invoke;
          v41 = &unk_279B10048;
          v44 = &v46;
          v9 = v8;
          v42 = v9;
          v10 = v4;
          v43 = v10;
          v45 = &v50;
          CEMEnumerateEmojiTokensInStringWithBlock();
          v11 = v47[3];
          if (v11 < [(__CFString *)v9 length])
          {
            v12 = v47[3];
            v13 = [(__CFString *)v9 length];
            v14 = [(__CFString *)v9 substringWithRange:v12, v13 - v47[3]];
            v15 = [RKNLEventToken alloc];
            v16 = v51[3];
            v17 = v47[3];
            v18 = [(__CFString *)v9 length];
            v19 = [(RKNLEventToken *)v15 initWithString:v14 location:v17 + v16 length:v18 - v47[3]];
            [v10 addObject:v19];
          }

          _Block_object_dispose(&v46, 8);
        }

        else
        {
          [v4 addObject:v7];
        }

        _Block_object_dispose(&v50, 8);
      }

      v32 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
    }

    while (v32);
  }

  v20 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v21 = v4;
  v22 = [v21 countByEnumeratingWithState:&v34 objects:v58 count:16];
  if (v22)
  {
    v23 = *v35;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v35 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v34 + 1) + 8 * j);
        v26 = [v25 string];
        v27 = [(RKNLEventTokenizer *)self hasEmoticon:v26];

        if (v27)
        {
          v28 = [(RKNLEventTokenizer *)self processForEmoticons:v25];
          [v20 addObjectsFromArray:v28];
        }

        else
        {
          [v20 addObject:v25];
        }
      }

      v22 = [v21 countByEnumeratingWithState:&v34 objects:v58 count:16];
    }

    while (v22);
  }

  v29 = *MEMORY[0x277D85DE8];

  return v20;
}

void __51__RKNLEventTokenizer_processForEmoticonsAndEmojis___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v14 = CEMEmojiTokenGetString();
  v7 = [specialCharMapping objectForKeyedSubscript:v14];

  v8 = v14;
  if (!v7)
  {
    if ([happyEmojiSet containsObject:?])
    {
      v8 = @"EMOTICONHAPPY";
    }

    else if ([sadEmojiSet containsObject:v14])
    {
      v8 = @"EMOTICONPERTURBED";
    }

    else
    {
      v8 = kEmojiPlaceholder;
    }
  }

  if (a3 > *(*(*(a1 + 48) + 8) + 24))
  {
    v9 = [*(a1 + 32) substringWithRange:?];
    v10 = *(a1 + 40);
    v11 = -[RKNLEventToken initWithString:location:length:]([RKNLEventToken alloc], "initWithString:location:length:", v9, *(*(*(a1 + 48) + 8) + 24) + *(*(*(a1 + 56) + 8) + 24), [v9 length]);
    [v10 addObject:v11];
  }

  v12 = *(a1 + 40);
  v13 = [[RKNLEventToken alloc] initWithString:v8 location:*(*(*(a1 + 56) + 8) + 24) + a3 length:a4];
  [v12 addObject:v13];

  *(*(*(a1 + 48) + 8) + 24) = a3 + a4;
}

- (id)transform:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v32 = self;
  v40 = [(NSString *)self->_languageID isEqualToString:@"ja"]|| [(NSString *)self->_languageID isEqualToString:@"zh-Hans"]|| [(NSString *)self->_languageID isEqualToString:@"zh-Hant"];
  v34 = objc_opt_new();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v4;
  v36 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v36)
  {
    v35 = *v44;
    do
    {
      v5 = 0;
      do
      {
        if (*v44 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v39 = v5;
        v6 = *(*(&v43 + 1) + 8 * v5);
        v7 = [v6 string];
        v37 = v6;
        v38 = [v6 location];
        v41 = objc_alloc_init(MEMORY[0x277CCAB68]);
        Length = CFStringGetLength(v7);
        v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
        if (Length >= 1)
        {
          v10 = 0;
          v42 = 0;
          v11 = &stru_2874A9C90;
          while (1)
          {
            RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(v7, v10);
            v12 = CFStringCreateWithSubstring(0, v7, RangeOfComposedCharactersAtIndex);
            v13 = [specialCharMapping objectForKey:v12];
            v14 = v13;
            if (v13)
            {
              v15 = v13;
            }

            else
            {
              v16 = v12;
              if (v40)
              {
                goto LABEL_18;
              }

              v16 = v12;
              if (([(__CFString *)v12 isEqualToString:@" "]& 1) != 0)
              {
                goto LABEL_18;
              }

              v15 = @" ";
              v16 = v12;
              if ([kAllowedPunctuations containsString:v12])
              {
                goto LABEL_18;
              }
            }

            v16 = v15;
LABEL_18:
            v17 = [v9 objectForKey:v16];
            if (v17)
            {
              v18 = v17;
              v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v17, "integerValue") + 1}];

              [v9 setObject:v19 forKey:v16];
            }

            else
            {
              v20 = [MEMORY[0x277CCABB0] numberWithInt:1];
              [v9 setObject:v20 forKey:v16];

              v19 = 0;
            }

            if ([(__CFString *)v11 isEqualToString:v16])
            {
              if (CEMStringContainsEmoji() || (-[__CFString isEqualToString:](v16, "isEqualToString:", @"?") & 1) != 0 || (-[__CFString isEqualToString:](v16, "isEqualToString:", @":") & 1) != 0 || (v21 = [v19 integerValue], v21 >= kMaxCharRepetitionAllowed))
              {
                v22 = [v19 integerValue];
                v23 = v42;
                if (v22 >= kMaxCharRepetitionAllowed)
                {
                  v23 = v42 + 1;
                }

                v42 = v23;
                goto LABEL_31;
              }
            }

            else
            {
              [v9 removeAllObjects];
            }

            [v41 appendString:v16];
LABEL_31:
            Length -= CFStringGetLength(v12);
            v10 += CFStringGetLength(v12);
            v24 = v16;

            CFRelease(v12);
            v11 = v24;
            if (Length <= 0)
            {
              goto LABEL_34;
            }
          }
        }

        v42 = 0;
        v24 = &stru_2874A9C90;
LABEL_34:
        if ([v41 length])
        {
          v25 = [RKNLEventTokenizer isSpecialToken:v41];
          v26 = [RKNLEventToken alloc];
          if (v25)
          {
            v27 = [v37 length];
          }

          else
          {
            v27 = [v41 length] + v42;
          }

          v28 = [(RKNLEventToken *)v26 initWithString:v41 location:v38 length:v27];
          [v34 addObject:v28];
        }

        v5 = v39 + 1;
      }

      while (v39 + 1 != v36);
      v36 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v36);
  }

  v29 = [(RKNLEventTokenizer *)v32 processForHyphenation:v34];

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

- (id)processForEmoticons:(id)a3
{
  v3 = a3;
  v37 = objc_opt_new();
  v38 = v3;
  v4 = [v3 string];
  v5 = [&stru_2874A9C90 stringByPaddingToLength:kMaxCharToConsiderForEmoticonDetection withString:@" " startingAtIndex:0];
  v6 = [v4 stringByAppendingString:v5];

  v7 = 0x27FF08000uLL;
  theString = v6;
  Length = CFStringGetLength(v6);
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = v9;
  v39 = 0;
  if (Length > kMinCharToConsiderForEmoticonDetection)
  {
    v39 = 0;
    v11 = 0;
    v36 = v9;
    do
    {
      RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(theString, v11);
      v13 = CFStringCreateWithSubstring(0, theString, RangeOfComposedCharactersAtIndex);
      [v10 addObject:v13];
      if ([v10 count] > *(v7 + 3352))
      {
        [v10 removeObjectAtIndex:0];
      }

      v14 = [v10 componentsJoinedByString:&stru_2874A9C90];
      v15 = [v14 length];
      v16 = *(v7 + 3352);
      if (v15 <= v16)
      {
        v16 = [v14 length];
      }

      if (v16 >= kMinCharToConsiderForEmoticonDetection)
      {
        v17 = v16;
        while (1)
        {
          v18 = [v14 substringWithRange:{0, v17}];
          v19 = [emoticonCategoryDict objectForKey:v18];
          if (v19)
          {
            break;
          }

          if (--v17 < kMinCharToConsiderForEmoticonDetection)
          {
            v10 = v36;
            goto LABEL_15;
          }
        }

        v20 = v19;
        v35 = RangeOfComposedCharactersAtIndex.location - v16 + 1;
        if (v35 > v39)
        {
          v21 = [v38 string];
          v22 = [v21 substringWithRange:{v39, v35 - v39}];

          v23 = -[RKNLEventToken initWithString:location:length:]([RKNLEventToken alloc], "initWithString:location:length:", v22, [v38 location] + v39, objc_msgSend(v22, "length"));
          [v37 addObject:v23];
        }

        v24 = -[RKNLEventToken initWithString:location:length:]([RKNLEventToken alloc], "initWithString:location:length:", v20, [v38 location] + v35, objc_msgSend(v18, "length"));
        [v37 addObject:v24];

        v39 = [v18 length] + v35;
        [v36 removeObjectsInRange:{0, v17}];

        v10 = v36;
LABEL_15:
        v7 = 0x27FF08000;
      }

      Length -= CFStringGetLength(v13);
      v11 += CFStringGetLength(v13);
      CFRelease(v13);
    }

    while (Length > kMinCharToConsiderForEmoticonDetection);
  }

  v25 = [v38 string];
  v26 = [v25 length];

  if (v39 < v26)
  {
    v27 = [v38 string];
    v28 = [v38 string];
    v29 = [v27 substringWithRange:{v39, objc_msgSend(v28, "length") - v39}];

    v30 = [RKNLEventToken alloc];
    v31 = [v38 location];
    v32 = [v38 string];
    v33 = -[RKNLEventToken initWithString:location:length:](v30, "initWithString:location:length:", v29, v31 + v39, [v32 length] - v39);
    [v37 addObject:v33];
  }

  return v37;
}

- (id)processForHyphenation:(id)a3
{
  v3 = a3;
  v20 = objc_opt_new();
  if ([v3 count])
  {
    v4 = 0;
    v19 = v3;
    do
    {
      v5 = [v3 objectAtIndexedSubscript:{v4, v19}];
      v6 = [v5 string];
      v7 = [v6 componentsSeparatedByString:@" "];

      v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if ([v7 count])
      {
        v9 = 0;
        do
        {
          v10 = [v7 objectAtIndexedSubscript:v9];
          if ([v10 isEqualToString:@"-"])
          {
            v11 = v9 == 0;
          }

          else
          {
            v11 = 1;
          }

          if (!v11 || [v10 containsString:@"-"] && v9 && objc_msgSend(v10, "hasPrefix:", @"-"))
          {
            v12 = [v10 stringByReplacingOccurrencesOfString:@"-" withString:kEMDash];
            v13 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
            v14 = [v12 stringByTrimmingCharactersInSet:v13];

            v10 = v14;
          }

          [v8 addObject:v10];

          ++v9;
        }

        while (v9 < [v7 count]);
      }

      v15 = [v8 componentsJoinedByString:@" "];
      v3 = v19;
      v16 = [v19 objectAtIndexedSubscript:v4];
      [v16 setString:v15];

      v17 = [v19 objectAtIndexedSubscript:v4];
      [v20 addObject:v17];

      ++v4;
    }

    while (v4 < [v19 count]);
  }

  return v20;
}

- (id)getTokens:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (getTokens__onceToken != -1)
  {
    [RKNLEventTokenizer getTokens:];
  }

  v37 = [MEMORY[0x277CBEB18] array];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (!v5)
  {
    v42 = &stru_2874A9C90;
    goto LABEL_45;
  }

  v6 = v5;
  v7 = 0;
  v40 = *v44;
  v8 = *MEMORY[0x277CBECE8];
  v42 = &stru_2874A9C90;
  do
  {
    v9 = 0;
    v36 = v6;
    do
    {
      if (*v44 != v40)
      {
        objc_enumerationMutation(obj);
      }

      v41 = *(*(&v43 + 1) + 8 * v9);
      v10 = [v41 string];
      if (![RKNLEventTokenizer isSpecialToken:v10])
      {
        v39 = v7;
        v15 = [(RKNLEventTokenizer *)self tokenizer];
        v50.length = CFStringGetLength(v10);
        v50.location = 0;
        CFStringTokenizerSetString(v15, v10, v50);
        while (1)
        {
          if (!CFStringTokenizerAdvanceToNextToken([(RKNLEventTokenizer *)self tokenizer]))
          {
            v31 = [v41 location];
            v7 = [v41 length] + v31;
            goto LABEL_41;
          }

          CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange([(RKNLEventTokenizer *)self tokenizer]);
          v17 = [(__CFString *)v10 substringWithRange:CurrentTokenRange.location, CurrentTokenRange.length];
          MutableCopy = CFStringCreateMutableCopy(v8, 0, v17);
          CFStringNormalize(MutableCopy, kCFStringNormalizationFormKC);

          if (([(__CFString *)MutableCopy isEqualToString:@" "]& 1) == 0 && ([(__CFString *)MutableCopy isEqualToString:@"\n"]& 1) == 0 && ([(__CFString *)MutableCopy isEqualToString:@" "]& 1) == 0)
          {
            break;
          }

LABEL_37:
        }

        v19 = [(__CFString *)MutableCopy stringByTrimmingCharactersInSet:getTokens__symbolsAndPunctuationSet];
        v20 = [v19 isEqualToString:&stru_2874A9C90];

        if (v20 && (-[__CFString stringByTrimmingCharactersInSet:](MutableCopy, "stringByTrimmingCharactersInSet:", getTokens__allowedPunctuationSet), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 isEqualToString:&stru_2874A9C90], v21, (v22 & 1) == 0))
        {
          v24 = MutableCopy;
          MutableCopy = v24;
          v23 = v42;
LABEL_27:
          v42 = v24;
        }

        else
        {
          v23 = v42;
          if ([(__CFString *)v42 isEqualToString:@"?"]&& [(__CFString *)MutableCopy isEqualToString:@"?"]|| CEMStringContainsEmoji() && [(__CFString *)v42 isEqualToString:MutableCopy])
          {
            v24 = MutableCopy;
            MutableCopy = v24;
            goto LABEL_27;
          }

          v25 = [(__CFString *)MutableCopy rangeOfCharacterFromSet:getTokens__nonDigitCommaPeriodSet];
          v23 = objc_opt_new();
          if (v25 == 0x7FFFFFFFFFFFFFFFLL)
          {
            if ([(__CFString *)v42 isEqualToString:@"DIGIT_STRG"])
            {
              MutableCopy = MutableCopy;

              v42 = MutableCopy;
              goto LABEL_35;
            }

            v28 = v23;
            v29 = @"DIGIT_STRG";
LABEL_34:
            [v28 setString:v29];
            v30 = [v23 string];

            [v23 setLocation:CurrentTokenRange.location + v39];
            [v23 setLength:CurrentTokenRange.length];
            [v37 addObject:v23];
            v42 = v30;
LABEL_35:
            v6 = v36;
          }

          else
          {
            v26 = [(__CFString *)MutableCopy stringByReplacingOccurrencesOfString:@"DATETIME" withString:@"DATE_TIME"];

            v27 = [v26 stringByReplacingOccurrencesOfString:@"EMOTICONHAPPY" withString:@"EMOTICON_HAPPY"];

            MutableCopy = [v27 stringByReplacingOccurrencesOfString:@"EMOTICONPERTURBED" withString:@"EMOTICON_PERTURBED"];

            if (!+[RKNLEventTokenizer isSpecialToken:](RKNLEventTokenizer, "isSpecialToken:", MutableCopy) && ![kAllowedPunctuations containsString:MutableCopy] || !-[__CFString isEqualToString:](v42, "isEqualToString:", MutableCopy))
            {
              v28 = v23;
              v29 = MutableCopy;
              goto LABEL_34;
            }

            MutableCopy = MutableCopy;

            v42 = MutableCopy;
            v6 = v36;
          }
        }

        goto LABEL_37;
      }

      v11 = [(__CFString *)v10 stringByReplacingOccurrencesOfString:@"DATETIME" withString:@"DATE_TIME"];

      v12 = [v11 stringByReplacingOccurrencesOfString:@"EMOTICONHAPPY" withString:@"EMOTICON_HAPPY"];

      v13 = [v12 stringByReplacingOccurrencesOfString:@"EMOTICONPERTURBED" withString:@"EMOTICON_PERTURBED"];

      if ([v13 isEqualToString:v42])
      {
        v10 = v13;

        v14 = [v41 location];
        v7 = [v41 length] + v14;
      }

      else
      {
        v32 = objc_opt_new();
        [v32 setString:v13];
        [v32 setLocation:{objc_msgSend(v41, "location")}];
        [v32 setLength:{objc_msgSend(v41, "length")}];
        [v37 addObject:v32];
        v10 = v13;

        v33 = [v41 location];
        v7 = [v41 length] + v33;
      }

      v42 = v10;
LABEL_41:

      ++v9;
    }

    while (v9 != v6);
    v6 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  }

  while (v6);
LABEL_45:

  v34 = *MEMORY[0x277D85DE8];

  return v37;
}

void __32__RKNLEventTokenizer_getTokens___block_invoke()
{
  v0 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:kAllowedPunctuations];
  v1 = getTokens__allowedPunctuationSet;
  getTokens__allowedPunctuationSet = v0;

  v2 = [MEMORY[0x277CCA900] punctuationCharacterSet];
  v3 = [v2 mutableCopy];
  v4 = getTokens__symbolsAndPunctuationSet;
  getTokens__symbolsAndPunctuationSet = v3;

  v5 = getTokens__symbolsAndPunctuationSet;
  v6 = [MEMORY[0x277CCA900] symbolCharacterSet];
  [v5 formUnionWithCharacterSet:v6];

  v7 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  v10 = [v7 mutableCopy];

  [v10 addCharactersInString:{@", ."}];
  v8 = [v10 invertedSet];
  v9 = getTokens__nonDigitCommaPeriodSet;
  getTokens__nonDigitCommaPeriodSet = v8;
}

- (id)buildTokenSquence:(id)a3 withOffset:(unint64_t)a4
{
  v6 = [(RKNLEventTokenizer *)self tokenizeWithDataDetectors:a3];
  v7 = [(RKNLEventTokenizer *)self processForEmoticonsAndEmojis:v6];
  v8 = [(RKNLEventTokenizer *)self transform:v7];
  v9 = [(RKNLEventTokenizer *)self getTokens:v8];
  if ([v9 count])
  {
    v10 = 0;
    do
    {
      v11 = [v9 objectAtIndexedSubscript:v10];
      [v11 setLocation:{objc_msgSend(v11, "location") + a4}];

      ++v10;
    }

    while ([v9 count] > v10);
  }

  return v9;
}

@end