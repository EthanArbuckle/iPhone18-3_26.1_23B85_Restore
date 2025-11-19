@interface PKPaper
+ (BOOL)useMetric;
+ (id)defaultGenericPaperForLocale:(id)a3;
+ (id)documentPapers;
+ (id)generic3_5x5Paper;
+ (id)generic4x6Paper;
+ (id)genericA6Paper;
+ (id)genericBorderlessWithName:(id)a3;
+ (id)genericHagakiPaper;
+ (id)genericPRC32KPaper;
+ (id)genericWithName:(id)a3;
+ (id)mediaNameForWidth:(int)a3 Height:(int)a4 mediaType:(id)a5 Borderless:(BOOL)a6 Simplex:(BOOL)a7;
+ (id)mediaNameForWidth:(int)a3 height:(int)a4 borderless:(BOOL)a5 simplex:(BOOL)a6;
+ (id)paperWithAttributes:(id)a3;
+ (id)photoPapers;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualSize:(id)a3;
- (BOOL)isEqualSizeAndMediaType:(id)a3;
- (BOOL)isRoll;
- (CGRect)imageableAreaRect;
- (CGSize)paperSize;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)localizedName;
- (NSString)mediaTypeName;
- (PKPaper)initWithCoder:(id)a3;
- (PKPaper)initWithUserCodableDictionary:(id)a3;
- (PKPaper)initWithWidth:(int)a3 Height:(int)a4 Left:(int)a5 Top:(int)a6 Right:(int)a7 Bottom:(int)a8 localizedName:(id)a9 codeName:(id)a10 mediaInfo:(id)a11;
- (PKPaper)paperWithMarginsAdjustedForDuplexMode:(id)a3;
- (double)imageableArea;
- (id)baseName;
- (id)createMediaColAndDoMargins:(BOOL)a3;
- (id)cutToPWGLength:(int)a3;
- (id)localizedNameFromDimensions;
- (id)mediaType;
- (id)nameWithoutSuffixes:(id)a3;
- (id)userCodableDictionary;
- (int)maxHeight;
- (int)minHeight;
- (int64_t)sizeAndImageableCompare:(id)a3;
- (int64_t)sizeMediaTypeAndImageableCompare:(id)a3;
- (unint64_t)hash;
- (void)addToMediaCol:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)visitProperties:(Visitor *)a3;
@end

@implementation PKPaper

+ (id)defaultGenericPaperForLocale:(id)a3
{
  v4 = a3;
  if (+[PKPaper defaultGenericPaperForLocale:]::onceToken != -1)
  {
    +[PKPaper defaultGenericPaperForLocale:];
  }

  v5 = [MEMORY[0x277CBEAF8] currentLocale];
  v6 = [v5 objectForKey:*MEMORY[0x277CBE690]];

  if (v6 && [+[PKPaper defaultGenericPaperForLocale:]::_letterCountries containsObject:v6])
  {
    v7 = [a1 genericLetterPaper];
  }

  else
  {
    v7 = [a1 genericA4Paper];
  }

  v8 = v7;

  return v8;
}

void __40__PKPaper_defaultGenericPaperForLocale___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"US", @"CA", @"MX", @"CR", @"PH", @"CL", @"CO", 0}];
  v1 = +[PKPaper defaultGenericPaperForLocale:]::_letterCountries;
  +[PKPaper defaultGenericPaperForLocale:]::_letterCountries = v0;
}

+ (BOOL)useMetric
{
  v2 = [MEMORY[0x277CBEAF8] currentLocale];
  v3 = [v2 objectForKey:*MEMORY[0x277CBE718]];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (id)mediaNameForWidth:(int)a3 Height:(int)a4 mediaType:(id)a5 Borderless:(BOOL)a6 Simplex:(BOOL)a7
{
  v7 = *&a3;
  v16 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v8 = a7;
    v9 = a6;
    v10 = *&a4;
    v11 = pwgMediaForSize(*&a3, *&a4, v15);
    v12 = "";
    if (v8)
    {
      v12 = "-simplex";
    }

    if (v9)
    {
      v12 = "-fullbleed";
    }

    if (v11 && *v11)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", *v11, v12];
    }

    else
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"media-%dx%d%s", v7, v10, v12];
    }
  }

  else
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"roll-%dx0", *&a4, a5, a6, a7, *&a3];
  }

  return v13;
}

+ (id)paperWithAttributes:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"media-size"];
  v6 = [v5 objectForKeyedSubscript:@"x-dimension"];
  v7 = [v6 intValue];

  v30 = [v4 objectForKeyedSubscript:@"media-type"];
  v8 = [v5 objectForKeyedSubscript:@"y-dimension"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v10 = [v8 objectAtIndexedSubscript:0];
    v11 = [v10 intValue];

    v12 = [v8 objectAtIndexedSubscript:1];
    v13 = [v12 intValue];
  }

  else
  {
    v12 = [v5 objectForKeyedSubscript:@"y-dimension"];
    v13 = [v12 intValue];
    v11 = v13;
  }

  v14 = 0;
  if (v7 >= 1 && v13 >= v11)
  {
    v15 = [v4 objectForKeyedSubscript:@"media-left-margin"];
    v29 = [v15 intValue];

    v16 = [v4 objectForKeyedSubscript:@"media-top-margin"];
    v28 = [v16 intValue];

    v17 = [v4 objectForKeyedSubscript:@"media-right-margin"];
    v18 = [v17 intValue];

    v19 = [v4 objectForKeyedSubscript:@"media-bottom-margin"];
    v20 = [v19 intValue];

    if (isKindOfClass)
    {
      v21 = [a1 useMetric];
      v22 = v7;
      v23 = "";
      if (!(v29 | v28 | v18 | v20))
      {
        v23 = "-fullbleed";
      }

      if (v21)
      {
        v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"roll_anon_%.1fx0mm%s", v22 / 100.0, v23];
        v25 = 0x279A85000;
      }

      else
      {
        v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"roll_anon_%.2fx0in%s", v22 / 2540.0, v23];
        v25 = 0x279A85000uLL;
      }
    }

    else
    {
      v25 = 0x279A85000uLL;
      v24 = [PKPaper mediaNameForWidth:v7 Height:v13 mediaType:v30 Borderless:(v29 | v28 | v18 | v20) == 0 Simplex:0];
    }

    v26 = v24;
    v14 = [objc_alloc(*(v25 + 728)) initWithWidth:v7 Height:v13 Left:v29 Top:v28 Right:v18 Bottom:v20 localizedName:0 codeName:v24 mediaInfo:v4];
  }

  return v14;
}

- (id)cutToPWGLength:(int)a3
{
  v3 = *&a3;
  v5 = [(PKPaper *)self topMargin];
  v6 = [(PKPaper *)self bottomMargin];
  if ([(PKPaper *)self minHeight]<= v3)
  {
    if ([(PKPaper *)self maxHeight]< v3)
    {
      v3 = [(PKPaper *)self maxHeight];
    }
  }

  else
  {
    v7 = [(PKPaper *)self minHeight]- v3;
    v8 = [(PKPaper *)self topMargin];
    v9 = [(PKPaper *)self bottomMargin];
    v3 = [(PKPaper *)self minHeight];
    v6 = (v6 + (v8 + v7 - v9) / 2);
    v5 = (v7 + v5 - (v8 + v7 - v9) / 2);
  }

  if ([(PKPaper *)self isRoll])
  {
    v10 = [PKPaper alloc];
    v11 = [(PKPaper *)self width];
    v12 = [(PKPaper *)self leftMargin];
    v13 = [(PKPaper *)self rightMargin];
    v14 = [(PKPaper *)self name];
    v15 = [(PKPaper *)self mediaInfo];
    v16 = [(PKPaper *)v10 initWithWidth:v11 Height:v3 Left:v12 Top:v5 Right:v13 Bottom:v6 localizedName:0 codeName:v14 mediaInfo:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (PKPaper)initWithWidth:(int)a3 Height:(int)a4 Left:(int)a5 Top:(int)a6 Right:(int)a7 Bottom:(int)a8 localizedName:(id)a9 codeName:(id)a10 mediaInfo:(id)a11
{
  v11 = *&a8;
  v12 = *&a7;
  v13 = *&a6;
  v14 = *&a5;
  v15 = *&a4;
  v16 = *&a3;
  v37[2] = *MEMORY[0x277D85DE8];
  v32 = a10;
  v18 = a11;
  v33.receiver = self;
  v33.super_class = PKPaper;
  v19 = [(PKPaper *)&v33 init];
  v20 = v19;
  if (v19)
  {
    v19->_width = v16;
    v19->_height = v15;
    v19->_leftMargin = v14;
    v19->_topMargin = v13;
    v19->_rightMargin = v12;
    v19->_bottomMargin = v11;
    objc_storeStrong(&v19->_name, a10);
    if (v18)
    {
      v21 = v18;
      mediaInfo = v20->_mediaInfo;
      v20->_mediaInfo = v21;
    }

    else
    {
      v36[0] = @"x-dimension";
      v23 = [MEMORY[0x277CCABB0] numberWithInt:v16];
      v37[0] = v23;
      v36[1] = @"y-dimension";
      v24 = [MEMORY[0x277CCABB0] numberWithInt:v15];
      v37[1] = v24;
      mediaInfo = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];

      v35[0] = mediaInfo;
      v34[0] = @"media-size";
      v34[1] = @"media-left-margin";
      v25 = [MEMORY[0x277CCABB0] numberWithInt:v14];
      v35[1] = v25;
      v34[2] = @"media-top-margin";
      v26 = [MEMORY[0x277CCABB0] numberWithInt:v13];
      v35[2] = v26;
      v34[3] = @"media-right-margin";
      v27 = [MEMORY[0x277CCABB0] numberWithInt:v12];
      v35[3] = v27;
      v34[4] = @"media-bottom-margin";
      v28 = [MEMORY[0x277CCABB0] numberWithInt:v11];
      v35[4] = v28;
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:5];
      v30 = v20->_mediaInfo;
      v20->_mediaInfo = v29;
    }
  }

  return v20;
}

- (CGSize)paperSize
{
  v3 = [(PKPaper *)self width]* 72.0 / 2540.0;
  v4 = [(PKPaper *)self height]* 72.0 / 2540.0;
  v5 = v3;
  result.height = v4;
  result.width = v5;
  return result;
}

- (CGRect)imageableAreaRect
{
  v3 = [(PKPaper *)self leftMargin]* 72.0 / 2540.0;
  v4 = [(PKPaper *)self topMargin]* 72.0 / 2540.0;
  v5 = [(PKPaper *)self width];
  v6 = [(PKPaper *)self leftMargin];
  v7 = (v5 - (v6 + [(PKPaper *)self rightMargin])) * 72.0 / 2540.0;
  v8 = [(PKPaper *)self height];
  v9 = [(PKPaper *)self topMargin];
  v10 = (v8 - (v9 + [(PKPaper *)self bottomMargin])) * 72.0 / 2540.0;
  v11 = v3;
  v12 = v4;
  v13 = v7;
  result.size.height = v10;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (double)imageableArea
{
  v3 = [(PKPaper *)self width];
  v4 = [(PKPaper *)self leftMargin];
  v5 = (v3 - (v4 + [(PKPaper *)self rightMargin])) * 72.0 / 2540.0;
  v6 = [(PKPaper *)self height];
  v7 = [(PKPaper *)self topMargin];
  return v5 * ((v6 - (v7 + [(PKPaper *)self bottomMargin])) * 72.0 / 2540.0);
}

- (id)nameWithoutSuffixes:(id)a3
{
  v4 = a3;
  v5 = [(PKPaper *)self name];
  v6 = v4;
  v7 = v6;
  v13 = &v15;
  if (v6)
  {
    v8 = v6;
    while (![v5 hasSuffix:v8])
    {
      v9 = v13++;
      v10 = *v9;

      v8 = v10;
      if (!v10)
      {
        goto LABEL_7;
      }
    }

    v11 = [v5 substringToIndex:{objc_msgSend(v5, "length") - objc_msgSend(v8, "length")}];
  }

  else
  {
    v8 = 0;
LABEL_7:
    v11 = v5;
  }

  return v11;
}

- (id)baseName
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_cachedBaseName)
  {
    v3 = [(PKPaper *)v2 nameWithoutSuffixes:@"-fullbleed", @"-simplex", @"-transverse", 0];
    cachedBaseName = v2->_cachedBaseName;
    v2->_cachedBaseName = v3;
  }

  objc_sync_exit(v2);

  v5 = v2->_cachedBaseName;

  return v5;
}

- (int)minHeight
{
  v3 = [(PKPaper *)self height];
  v4 = [(PKPaper *)self mediaInfo];

  if (v4)
  {
    v5 = [(PKPaper *)self mediaInfo];
    v6 = [v5 objectForKey:@"media-size"];

    v7 = [v6 objectForKey:@"y-dimension"];
    v8 = [v7 objectAtIndexedSubscript:0];
    v9 = v8;
    if (v8)
    {
      v3 = [v8 intValue];
    }
  }

  return v3;
}

- (int)maxHeight
{
  v3 = [(PKPaper *)self height];
  v4 = [(PKPaper *)self mediaInfo];

  if (v4)
  {
    v5 = [(PKPaper *)self mediaInfo];
    v6 = [v5 objectForKey:@"media-size"];

    v7 = [v6 objectForKey:@"y-dimension"];
    v8 = [v7 objectAtIndexedSubscript:1];
    v9 = v8;
    if (v8)
    {
      v3 = [v8 intValue];
    }
  }

  return v3;
}

- (BOOL)isRoll
{
  v2 = [(PKPaper *)self mediaInfo];
  v3 = [v2 objectForKeyedSubscript:@"media-size"];
  v4 = [v3 objectForKeyedSubscript:@"y-dimension"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)mediaType
{
  v2 = [(PKPaper *)self mediaInfo];
  v3 = [v2 objectForKeyedSubscript:@"media-type"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_28719ACE8;
  }

  v5 = v4;

  return v4;
}

- (NSString)mediaTypeName
{
  v3 = [(PKPaper *)self mediaInfo];
  v4 = [v3 objectForKeyedSubscript:@"media-type"];

  if (v4)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.framework.PrintKit"];
    v6 = [v5 localizedStringForKey:v4 value:v4 table:@"MediaTypeNames"];

    if (v6 && ![(__CFString *)v6 isEqualToString:v4])
    {
LABEL_7:
      if (![(__CFString *)v6 isEqualToString:v4])
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [(PKPaper *)self mediaInfo];
  v8 = [v7 objectForKeyedSubscript:@"_vendor_media-type"];

  v6 = v8;
  if (v8)
  {
    goto LABEL_7;
  }

LABEL_8:

  v6 = &stru_28719ACE8;
LABEL_9:

  return v6;
}

- (void)addToMediaCol:(id)a3
{
  v4 = a3;
  v5 = [(PKPaper *)self mediaInfo];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __25__PKPaper_addToMediaCol___block_invoke;
  v7[3] = &unk_279A92440;
  v6 = v4;
  v8 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

- (id)createMediaColAndDoMargins:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_new();
  v6 = [PKMediaSize mediaSizeWithWidth:[(PKPaper *)self width] height:[(PKPaper *)self height]];
  [v5 setMediaSize:v6];

  v7 = [(PKPaper *)self mediaInfo];

  if (v7)
  {
    [(PKPaper *)self addToMediaCol:v5];
  }

  else if (v3)
  {
    [v5 setMarginsTop:-[PKPaper topMargin](self left:"topMargin") bottom:-[PKPaper leftMargin](self right:{"leftMargin"), -[PKPaper bottomMargin](self, "bottomMargin"), -[PKPaper rightMargin](self, "rightMargin")}];
  }

  return v5;
}

- (id)localizedNameFromDimensions
{
  v3 = [(PKPaper *)self baseName];
  v4 = [PKMediaName pkMediaNameWithString:v3];

  v5 = [v4 unitStr];
  v6 = [v5 isEqualToString:@"in"];

  if (v6)
  {
    v7 = 0;
    v8 = @"%@ x %@ inches";
    v9 = 2540.0;
  }

  else
  {
    v10 = [v4 unitStr];
    v11 = [v10 isEqualToString:@"mm"];

    v12 = v11 == 0;
    if (v11)
    {
      v9 = 100.0;
    }

    else
    {
      v9 = 1.0;
    }

    v7 = v11 == 0;
    if (v12)
    {
      v8 = 0;
    }

    else
    {
      v8 = @"%@ x %@ mm";
    }
  }

  if ([(PKPaper *)self isRoll])
  {
    v13 = [(PKPaper *)self width]/ v9;
    v14 = [(PKPaper *)self height]/ v9;
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  else
  {
    [v4 widthInUnits];
    v13 = v24;
    [v4 heightInUnits];
    v14 = v25;
    if (!v7)
    {
LABEL_11:
      v15 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.framework.PrintKit"];
      v16 = [v15 localizedStringForKey:v8 value:v8 table:@"PaperNames"];
      v17 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
      v18 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
      v19 = objc_alloc_init(MEMORY[0x277CCABB8]);
      [v19 setMaximumFractionDigits:1];
      v20 = [v19 stringFromNumber:v17];
      v21 = [v19 stringFromNumber:v18];
      v22 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v16 validFormatSpecifiers:@"%@ %@" error:0, v20, v21];

      v23 = v16;
      if (v22)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  v23 = 0;
LABEL_15:
  v22 = [(PKPaper *)self baseName];
  v16 = v23;
LABEL_16:

  return v22;
}

- (BOOL)isEqualSizeAndMediaType:(id)a3
{
  v4 = a3;
  if (v4 && (v5 = -[PKPaper height](self, "height"), v5 == [v4 height]) && (v6 = -[PKPaper width](self, "width"), v6 == objc_msgSend(v4, "width")))
  {
    v7 = [(PKPaper *)self mediaType];
    v8 = [v4 mediaType];
    v9 = [v7 isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqualSize:(id)a3
{
  v4 = a3;
  if (v4 && (v5 = -[PKPaper height](self, "height"), v5 == [v4 height]))
  {
    v6 = [(PKPaper *)self width];
    v7 = v6 == [v4 width];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)sizeAndImageableCompare:(id)a3
{
  v4 = a3;
  v5 = [(PKPaper *)self width];
  v6 = [v4 width];
  v7 = v5 - v6;
  if (v5 == v6)
  {
    v8 = [(PKPaper *)self height];
    v9 = [v4 height];
    v7 = v8 - v9;
    if (v8 == v9)
    {
      [(PKPaper *)self imageableArea];
      v11 = v10;
      [v4 imageableArea];
      v7 = (v11 - v12);
    }
  }

  v13 = v7 < 0;
  v14 = v7 != 0;
  if (v13)
  {
    v15 = -1;
  }

  else
  {
    v15 = v14;
  }

  return v15;
}

- (int64_t)sizeMediaTypeAndImageableCompare:(id)a3
{
  v4 = a3;
  v5 = [(PKPaper *)self width];
  v6 = [v4 width];
  v7 = v5 - v6;
  if (v5 == v6)
  {
    v8 = [(PKPaper *)self height];
    v9 = [v4 height];
    v7 = v8 - v9;
    if (v8 == v9)
    {
      v10 = [(PKPaper *)self mediaType];
      v11 = [v4 mediaType];
      v7 = [v10 compare:v11];

      if (!v7)
      {
        [(PKPaper *)self imageableArea];
        v13 = v12;
        [v4 imageableArea];
        v7 = (v13 - v14);
      }
    }
  }

  if (v7 < 0)
  {
    v15 = -1;
  }

  else
  {
    v15 = v7 != 0;
  }

  return v15;
}

- (NSString)localizedName
{
  v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.framework.PrintKit"];
  v4 = [(PKPaper *)self baseName];
  v5 = [v3 localizedStringForKey:v4 value:@"." table:@"PaperNames"];

  if ([v5 isEqualToString:@"."])
  {
    v6 = [(PKPaper *)self localizedNameFromDimensions];

    v5 = v6;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PKPaper;
  v4 = [(PKPaper *)&v8 description];
  v5 = [(PKPaper *)self name];
  v6 = [v3 stringWithFormat:@"%@ { %@ }", v4, v5];

  return v6;
}

- (NSString)debugDescription
{
  [(PKPaper *)self imageableAreaRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = MEMORY[0x277CCACA8];
  v12 = [(PKPaper *)self name];
  v13 = [(PKPaper *)self width];
  v14 = [(PKPaper *)self height];
  v15 = [(PKPaper *)self mediaType];
  v16 = [v11 stringWithFormat:@"%@ width = %.2f height = %.2f imageableAreaRect origin = (%.2f, %.2f), size = (%.2f, %.2f) media-type=%@", v12, v13 * 72.0 / 2540.0, v14 * 72.0 / 2540.0, v4, v6, v8, v10, v15];

  return v16;
}

+ (id)generic3_5x5Paper
{
  v2 = [[PKPaper alloc] initWithWidth:8890 Height:12700 Left:0 Top:0 Right:0 Bottom:0 localizedName:0 codeName:@"oe_photo-l_3.5x5in" mediaInfo:0];

  return v2;
}

+ (id)generic4x6Paper
{
  v2 = [[PKPaper alloc] initWithWidth:10160 Height:15240 Left:0 Top:0 Right:0 Bottom:0 localizedName:0 codeName:@"na_index-4x6_4x6in" mediaInfo:0];

  return v2;
}

+ (id)genericA6Paper
{
  v2 = [[PKPaper alloc] initWithWidth:10500 Height:14800 Left:0 Top:0 Right:0 Bottom:0 localizedName:0 codeName:@"iso_a6_105x148mm" mediaInfo:0];

  return v2;
}

+ (id)genericHagakiPaper
{
  v2 = [[PKPaper alloc] initWithWidth:10000 Height:14800 Left:0 Top:0 Right:0 Bottom:0 localizedName:0 codeName:@"jpn_hagaki_100x148mm" mediaInfo:0];

  return v2;
}

+ (id)genericPRC32KPaper
{
  v2 = [[PKPaper alloc] initWithWidth:9700 Height:15100 Left:0 Top:0 Right:0 Bottom:0 localizedName:0 codeName:@"prc_32k_97x151mm" mediaInfo:0];

  return v2;
}

+ (id)genericWithName:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3 && (v5 = pwgMediaForPWG(v3, v12)) != 0)
  {
    v6 = *(v5 + 6);
    v7 = *(v5 + 7);
    if (v6 <= 20319 || v7 <= 20319)
    {
      v9 = 635;
    }

    else
    {
      v9 = 1411;
    }

    v10 = genericSize(v4, v6, v7, v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)genericBorderlessWithName:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = pwgMediaForPWG(v3, v7);
    if (v5)
    {
      v5 = [[PKPaper alloc] initWithWidth:v5->_width Height:v5->_height Left:0 Top:0 Right:0 Bottom:0 localizedName:0 codeName:v4 mediaInfo:0];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PKPaper)paperWithMarginsAdjustedForDuplexMode:(id)a3
{
  v4 = a3;
  v5 = self;
  if (([v4 isEqualToString:@"one-sided"] & 1) == 0)
  {
    v6 = [(PKPaper *)v5 topMargin];
    v7 = [(PKPaper *)v5 bottomMargin];
    v8 = [(PKPaper *)v5 leftMargin];
    if (v8 <= [(PKPaper *)v5 rightMargin])
    {
      v9 = [(PKPaper *)v5 rightMargin];
    }

    else
    {
      v9 = [(PKPaper *)v5 leftMargin];
    }

    v10 = v9;
    if ([v4 isEqualToString:@"two-sided-short-edge"])
    {
      v11 = [(PKPaper *)v5 topMargin];
      if (v11 <= [(PKPaper *)v5 bottomMargin])
      {
        v12 = [(PKPaper *)v5 bottomMargin];
      }

      else
      {
        v12 = [(PKPaper *)v5 topMargin];
      }

      v6 = v12;
      v7 = v12;
    }

    v13 = [PKPaper alloc];
    v14 = [(PKPaper *)v5 width];
    v15 = [(PKPaper *)v5 height];
    v16 = [(PKPaper *)v5 localizedName];
    v17 = [(PKPaper *)v5 name];
    v18 = [(PKPaper *)v13 initWithWidth:v14 Height:v15 Left:v10 Top:v6 Right:v10 Bottom:v7 localizedName:v16 codeName:v17 mediaInfo:0];

    v5 = v18;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v8 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(PKPaper *)self name];
    v7 = [(PKPaper *)v5 name];
    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(PKPaper *)self name];
  v3 = [v2 hash];

  return v3;
}

+ (id)photoPapers
{
  v2 = MEMORY[0x277CBEA60];
  v3 = +[PKPaper genericA6Paper];
  v4 = +[PKPaper generic4x6Paper];
  v5 = +[PKPaper generic3_5x5Paper];
  v6 = +[PKPaper genericPRC32KPaper];
  v7 = +[PKPaper genericHagakiPaper];
  v8 = [PKPaper genericBorderlessWithName:@"na_5x7_5x7in"];
  v9 = [PKPaper genericBorderlessWithName:@"na_govt-letter_8x10in"];
  v10 = [PKPaper genericBorderlessWithName:@"om_small-photo_100x150mm"];
  v11 = [PKPaper genericBorderlessWithName:@"om_large-photo_200x300"];
  v12 = [v2 arrayWithObjects:{v3, v4, v5, v6, v7, v8, v9, v10, v11, 0}];

  return v12;
}

+ (id)documentPapers
{
  v2 = MEMORY[0x277CBEA60];
  v3 = +[PKPaper genericA4Paper];
  v4 = +[PKPaper genericLetterPaper];
  v5 = [v2 arrayWithObjects:{v3, v4, 0}];

  return v5;
}

+ (id)mediaNameForWidth:(int)a3 height:(int)a4 borderless:(BOOL)a5 simplex:(BOOL)a6
{
  v6 = *&a3;
  v15 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v7 = a6;
    v8 = a5;
    v9 = *&a4;
    v10 = pwgMediaForSize(*&a3, *&a4, v14);
    v11 = "";
    if (v7)
    {
      v11 = "-simplex";
    }

    if (v8)
    {
      v11 = "-fullbleed";
    }

    if (v10 && *v10)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", *v10, v11];
    }

    else
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"media-%dx%d%s", v6, v9, v11];
    }
  }

  else
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"roll-%dx0", *&a4, a5, a6, *&a3];
  }

  return v12;
}

- (PKPaper)initWithCoder:(id)a3
{
  v15[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKPaper;
  v5 = [(PKPaper *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    name = v5->_name;
    v5->_name = v6;

    v5->_width = [v4 decodeIntegerForKey:@"_width"];
    v5->_height = [v4 decodeIntegerForKey:@"_height"];
    v5->_leftMargin = [v4 decodeIntegerForKey:@"_leftMargin"];
    v5->_topMargin = [v4 decodeIntegerForKey:@"_topMargin"];
    v5->_rightMargin = [v4 decodeIntegerForKey:@"_rightMargin"];
    v5->_bottomMargin = [v4 decodeIntegerForKey:@"_bottomMargin"];
    v8 = MEMORY[0x277CBEB98];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v15[2] = objc_opt_class();
    v15[3] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];
    v10 = [v8 setWithArray:v9];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"_mediaInfo"];
    mediaInfo = v5->_mediaInfo;
    v5->_mediaInfo = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_name forKey:@"_name"];
  [v4 encodeInteger:self->_width forKey:@"_width"];
  [v4 encodeInteger:self->_height forKey:@"_height"];
  [v4 encodeInteger:self->_leftMargin forKey:@"_leftMargin"];
  [v4 encodeInteger:self->_topMargin forKey:@"_topMargin"];
  [v4 encodeInteger:self->_rightMargin forKey:@"_rightMargin"];
  [v4 encodeInteger:self->_bottomMargin forKey:@"_bottomMargin"];
  [v4 encodeObject:self->_mediaInfo forKey:@"_mediaInfo"];
}

- (id)userCodableDictionary
{
  v3 = objc_opt_new();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__PKPaper_userCodableDictionary__block_invoke;
  v6[3] = &unk_279A92468;
  v4 = v3;
  v7 = v4;
  UserCodedSerializationVisitor::visitProperties(self, v6);

  return v4;
}

void __32__PKPaper_userCodableDictionary__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v11 = a2;
  v8 = a3;
  v9 = v8;
  if (*a5)
  {
    v10 = (*(v8 + 2))(v8);
    [*(a1 + 32) setObject:v10 forKeyedSubscript:v11];
  }
}

- (PKPaper)initWithUserCodableDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPaper;
  v5 = [(PKPaper *)&v9 init];
  if (v5)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__PKPaper_initWithUserCodableDictionary___block_invoke;
    v7[3] = &unk_279A92468;
    v8 = v4;
    UserCodedSerializationVisitor::visitProperties(v5, v7);
  }

  return v5;
}

void __41__PKPaper_initWithUserCodableDictionary___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, void **a5)
{
  v12 = a2;
  v8 = a4;
  v9 = [*(a1 + 32) objectForKeyedSubscript:v12];
  if (v9)
  {
    v10 = v8[2](v8, v9);
    v11 = *a5;
    *a5 = v10;
  }
}

- (void)visitProperties:(Visitor *)a3
{
  (*(a3->var0 + 2))(a3, a2);
  (*(a3->var0 + 7))(a3, @"name", &self->_name);
  (*(a3->var0 + 4))(a3, @"width", &self->_width);
  (*(a3->var0 + 4))(a3, @"height", &self->_height);
  (*(a3->var0 + 4))(a3, @"leftMargin", &self->_leftMargin);
  (*(a3->var0 + 4))(a3, @"topMargin", &self->_topMargin);
  (*(a3->var0 + 4))(a3, @"rightMargin", &self->_rightMargin);
  (*(a3->var0 + 4))(a3, @"bottomMargin", &self->_bottomMargin);
  v24 = objc_opt_new();
  v23 = objc_opt_new();
  v5 = [(PKPaper *)self mediaInfo];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __27__PKPaper_visitProperties___block_invoke;
  v20[3] = &unk_279A92490;
  v21 = v24;
  v22 = v23;
  [v5 enumerateKeysAndObjectsUsingBlock:v20];

  (*(a3->var0 + 12))(a3, @"_strMediaInfo", &v24);
  (*(a3->var0 + 18))(a3, @"_numMediaInfo", &v23);
  mediaInfo = self->_mediaInfo;
  p_mediaInfo = &self->_mediaInfo;
  v8 = [(NSDictionary *)mediaInfo mutableCopy];
  v9 = v24;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __27__PKPaper_visitProperties___block_invoke_197;
  v18[3] = &unk_279A924B8;
  v10 = v8;
  v19 = v10;
  [v9 enumerateKeysAndObjectsUsingBlock:v18];
  v11 = objc_opt_new();
  v12 = v23;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __27__PKPaper_visitProperties___block_invoke_2;
  v15[3] = &unk_279A924E0;
  v13 = v10;
  v16 = v13;
  v14 = v11;
  v17 = v14;
  [v12 enumerateKeysAndObjectsUsingBlock:v15];
  if ([v14 count] == 2)
  {
    [v13 setObject:v14 forKeyedSubscript:@"media-size"];
  }

  objc_storeStrong(p_mediaInfo, v8);
  (*(a3->var0 + 24))(a3);
}

void __27__PKPaper_visitProperties___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 32;
LABEL_5:
    [*(a1 + v7) setObject:v6 forKeyedSubscript:v5];
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 40;
    goto LABEL_5;
  }

  if ([v5 isEqualToString:@"media-size"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = v6;
    v9 = [v8 objectForKeyedSubscript:@"x-dimension"];
    [*(a1 + 40) setObject:v9 forKeyedSubscript:@"media-size:x-dimension"];

    v10 = [v8 objectForKeyedSubscript:@"y-dimension"];
    [*(a1 + 40) setObject:v10 forKeyedSubscript:@"media-size:y-dimension"];
  }

  else
  {
    v11 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_25F5FC000, v11, OS_LOG_TYPE_DEFAULT, "Unknown mediaInfo type for %@", &v12, 0xCu);
    }
  }

LABEL_6:
}

void __27__PKPaper_visitProperties___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([v7 hasPrefix:@"media-size:"])
  {
    v6 = [v7 substringFromIndex:{objc_msgSend(@"media-size:", "length")}];
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
  }

  else
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
  }
}

@end