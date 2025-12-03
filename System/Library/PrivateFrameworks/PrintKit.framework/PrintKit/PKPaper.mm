@interface PKPaper
+ (BOOL)useMetric;
+ (id)defaultGenericPaperForLocale:(id)locale;
+ (id)documentPapers;
+ (id)generic3_5x5Paper;
+ (id)generic4x6Paper;
+ (id)genericA6Paper;
+ (id)genericBorderlessWithName:(id)name;
+ (id)genericHagakiPaper;
+ (id)genericPRC32KPaper;
+ (id)genericWithName:(id)name;
+ (id)mediaNameForWidth:(int)width Height:(int)height mediaType:(id)type Borderless:(BOOL)borderless Simplex:(BOOL)simplex;
+ (id)mediaNameForWidth:(int)width height:(int)height borderless:(BOOL)borderless simplex:(BOOL)simplex;
+ (id)paperWithAttributes:(id)attributes;
+ (id)photoPapers;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualSize:(id)size;
- (BOOL)isEqualSizeAndMediaType:(id)type;
- (BOOL)isRoll;
- (CGRect)imageableAreaRect;
- (CGSize)paperSize;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)localizedName;
- (NSString)mediaTypeName;
- (PKPaper)initWithCoder:(id)coder;
- (PKPaper)initWithUserCodableDictionary:(id)dictionary;
- (PKPaper)initWithWidth:(int)width Height:(int)height Left:(int)left Top:(int)top Right:(int)right Bottom:(int)bottom localizedName:(id)name codeName:(id)self0 mediaInfo:(id)self1;
- (PKPaper)paperWithMarginsAdjustedForDuplexMode:(id)mode;
- (double)imageableArea;
- (id)baseName;
- (id)createMediaColAndDoMargins:(BOOL)margins;
- (id)cutToPWGLength:(int)length;
- (id)localizedNameFromDimensions;
- (id)mediaType;
- (id)nameWithoutSuffixes:(id)suffixes;
- (id)userCodableDictionary;
- (int)maxHeight;
- (int)minHeight;
- (int64_t)sizeAndImageableCompare:(id)compare;
- (int64_t)sizeMediaTypeAndImageableCompare:(id)compare;
- (unint64_t)hash;
- (void)addToMediaCol:(id)col;
- (void)encodeWithCoder:(id)coder;
- (void)visitProperties:(Visitor *)properties;
@end

@implementation PKPaper

+ (id)defaultGenericPaperForLocale:(id)locale
{
  localeCopy = locale;
  if (+[PKPaper defaultGenericPaperForLocale:]::onceToken != -1)
  {
    +[PKPaper defaultGenericPaperForLocale:];
  }

  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v6 = [currentLocale objectForKey:*MEMORY[0x277CBE690]];

  if (v6 && [+[PKPaper defaultGenericPaperForLocale:]::_letterCountries containsObject:v6])
  {
    genericLetterPaper = [self genericLetterPaper];
  }

  else
  {
    genericLetterPaper = [self genericA4Paper];
  }

  v8 = genericLetterPaper;

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
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v3 = [currentLocale objectForKey:*MEMORY[0x277CBE718]];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

+ (id)mediaNameForWidth:(int)width Height:(int)height mediaType:(id)type Borderless:(BOOL)borderless Simplex:(BOOL)simplex
{
  v7 = *&width;
  v16 = *MEMORY[0x277D85DE8];
  if (height)
  {
    simplexCopy = simplex;
    borderlessCopy = borderless;
    v10 = *&height;
    v11 = pwgMediaForSize(*&width, *&height, v15);
    v12 = "";
    if (simplexCopy)
    {
      v12 = "-simplex";
    }

    if (borderlessCopy)
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
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"roll-%dx0", *&height, type, borderless, simplex, *&width];
  }

  return v13;
}

+ (id)paperWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = [attributesCopy objectForKeyedSubscript:@"media-size"];
  v6 = [v5 objectForKeyedSubscript:@"x-dimension"];
  intValue = [v6 intValue];

  v30 = [attributesCopy objectForKeyedSubscript:@"media-type"];
  v8 = [v5 objectForKeyedSubscript:@"y-dimension"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v10 = [v8 objectAtIndexedSubscript:0];
    intValue2 = [v10 intValue];

    v12 = [v8 objectAtIndexedSubscript:1];
    intValue3 = [v12 intValue];
  }

  else
  {
    v12 = [v5 objectForKeyedSubscript:@"y-dimension"];
    intValue3 = [v12 intValue];
    intValue2 = intValue3;
  }

  v14 = 0;
  if (intValue >= 1 && intValue3 >= intValue2)
  {
    v15 = [attributesCopy objectForKeyedSubscript:@"media-left-margin"];
    intValue4 = [v15 intValue];

    v16 = [attributesCopy objectForKeyedSubscript:@"media-top-margin"];
    intValue5 = [v16 intValue];

    v17 = [attributesCopy objectForKeyedSubscript:@"media-right-margin"];
    intValue6 = [v17 intValue];

    v19 = [attributesCopy objectForKeyedSubscript:@"media-bottom-margin"];
    intValue7 = [v19 intValue];

    if (isKindOfClass)
    {
      useMetric = [self useMetric];
      v22 = intValue;
      v23 = "";
      if (!(intValue4 | intValue5 | intValue6 | intValue7))
      {
        v23 = "-fullbleed";
      }

      if (useMetric)
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
      v24 = [PKPaper mediaNameForWidth:intValue Height:intValue3 mediaType:v30 Borderless:(intValue4 | intValue5 | intValue6 | intValue7) == 0 Simplex:0];
    }

    v26 = v24;
    v14 = [objc_alloc(*(v25 + 728)) initWithWidth:intValue Height:intValue3 Left:intValue4 Top:intValue5 Right:intValue6 Bottom:intValue7 localizedName:0 codeName:v24 mediaInfo:attributesCopy];
  }

  return v14;
}

- (id)cutToPWGLength:(int)length
{
  maxHeight = *&length;
  topMargin = [(PKPaper *)self topMargin];
  bottomMargin = [(PKPaper *)self bottomMargin];
  if ([(PKPaper *)self minHeight]<= maxHeight)
  {
    if ([(PKPaper *)self maxHeight]< maxHeight)
    {
      maxHeight = [(PKPaper *)self maxHeight];
    }
  }

  else
  {
    v7 = [(PKPaper *)self minHeight]- maxHeight;
    topMargin2 = [(PKPaper *)self topMargin];
    bottomMargin2 = [(PKPaper *)self bottomMargin];
    maxHeight = [(PKPaper *)self minHeight];
    bottomMargin = (bottomMargin + (topMargin2 + v7 - bottomMargin2) / 2);
    topMargin = (v7 + topMargin - (topMargin2 + v7 - bottomMargin2) / 2);
  }

  if ([(PKPaper *)self isRoll])
  {
    v10 = [PKPaper alloc];
    width = [(PKPaper *)self width];
    leftMargin = [(PKPaper *)self leftMargin];
    rightMargin = [(PKPaper *)self rightMargin];
    name = [(PKPaper *)self name];
    mediaInfo = [(PKPaper *)self mediaInfo];
    v16 = [(PKPaper *)v10 initWithWidth:width Height:maxHeight Left:leftMargin Top:topMargin Right:rightMargin Bottom:bottomMargin localizedName:0 codeName:name mediaInfo:mediaInfo];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (PKPaper)initWithWidth:(int)width Height:(int)height Left:(int)left Top:(int)top Right:(int)right Bottom:(int)bottom localizedName:(id)name codeName:(id)self0 mediaInfo:(id)self1
{
  v11 = *&bottom;
  v12 = *&right;
  v13 = *&top;
  v14 = *&left;
  v15 = *&height;
  v16 = *&width;
  v37[2] = *MEMORY[0x277D85DE8];
  codeNameCopy = codeName;
  infoCopy = info;
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
    objc_storeStrong(&v19->_name, codeName);
    if (infoCopy)
    {
      v21 = infoCopy;
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
  width = [(PKPaper *)self width];
  leftMargin = [(PKPaper *)self leftMargin];
  v7 = (width - (leftMargin + [(PKPaper *)self rightMargin])) * 72.0 / 2540.0;
  height = [(PKPaper *)self height];
  topMargin = [(PKPaper *)self topMargin];
  v10 = (height - (topMargin + [(PKPaper *)self bottomMargin])) * 72.0 / 2540.0;
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
  width = [(PKPaper *)self width];
  leftMargin = [(PKPaper *)self leftMargin];
  v5 = (width - (leftMargin + [(PKPaper *)self rightMargin])) * 72.0 / 2540.0;
  height = [(PKPaper *)self height];
  topMargin = [(PKPaper *)self topMargin];
  return v5 * ((height - (topMargin + [(PKPaper *)self bottomMargin])) * 72.0 / 2540.0);
}

- (id)nameWithoutSuffixes:(id)suffixes
{
  suffixesCopy = suffixes;
  name = [(PKPaper *)self name];
  v6 = suffixesCopy;
  v7 = v6;
  v13 = &v15;
  if (v6)
  {
    v8 = v6;
    while (![name hasSuffix:v8])
    {
      v9 = v13++;
      v10 = *v9;

      v8 = v10;
      if (!v10)
      {
        goto LABEL_7;
      }
    }

    v11 = [name substringToIndex:{objc_msgSend(name, "length") - objc_msgSend(v8, "length")}];
  }

  else
  {
    v8 = 0;
LABEL_7:
    v11 = name;
  }

  return v11;
}

- (id)baseName
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_cachedBaseName)
  {
    v3 = [(PKPaper *)selfCopy nameWithoutSuffixes:@"-fullbleed", @"-simplex", @"-transverse", 0];
    cachedBaseName = selfCopy->_cachedBaseName;
    selfCopy->_cachedBaseName = v3;
  }

  objc_sync_exit(selfCopy);

  v5 = selfCopy->_cachedBaseName;

  return v5;
}

- (int)minHeight
{
  height = [(PKPaper *)self height];
  mediaInfo = [(PKPaper *)self mediaInfo];

  if (mediaInfo)
  {
    mediaInfo2 = [(PKPaper *)self mediaInfo];
    v6 = [mediaInfo2 objectForKey:@"media-size"];

    v7 = [v6 objectForKey:@"y-dimension"];
    v8 = [v7 objectAtIndexedSubscript:0];
    v9 = v8;
    if (v8)
    {
      height = [v8 intValue];
    }
  }

  return height;
}

- (int)maxHeight
{
  height = [(PKPaper *)self height];
  mediaInfo = [(PKPaper *)self mediaInfo];

  if (mediaInfo)
  {
    mediaInfo2 = [(PKPaper *)self mediaInfo];
    v6 = [mediaInfo2 objectForKey:@"media-size"];

    v7 = [v6 objectForKey:@"y-dimension"];
    v8 = [v7 objectAtIndexedSubscript:1];
    v9 = v8;
    if (v8)
    {
      height = [v8 intValue];
    }
  }

  return height;
}

- (BOOL)isRoll
{
  mediaInfo = [(PKPaper *)self mediaInfo];
  v3 = [mediaInfo objectForKeyedSubscript:@"media-size"];
  v4 = [v3 objectForKeyedSubscript:@"y-dimension"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)mediaType
{
  mediaInfo = [(PKPaper *)self mediaInfo];
  v3 = [mediaInfo objectForKeyedSubscript:@"media-type"];

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
  mediaInfo = [(PKPaper *)self mediaInfo];
  v4 = [mediaInfo objectForKeyedSubscript:@"media-type"];

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

  mediaInfo2 = [(PKPaper *)self mediaInfo];
  v8 = [mediaInfo2 objectForKeyedSubscript:@"_vendor_media-type"];

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

- (void)addToMediaCol:(id)col
{
  colCopy = col;
  mediaInfo = [(PKPaper *)self mediaInfo];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __25__PKPaper_addToMediaCol___block_invoke;
  v7[3] = &unk_279A92440;
  v6 = colCopy;
  v8 = v6;
  [mediaInfo enumerateKeysAndObjectsUsingBlock:v7];
}

- (id)createMediaColAndDoMargins:(BOOL)margins
{
  marginsCopy = margins;
  v5 = objc_opt_new();
  v6 = [PKMediaSize mediaSizeWithWidth:[(PKPaper *)self width] height:[(PKPaper *)self height]];
  [v5 setMediaSize:v6];

  mediaInfo = [(PKPaper *)self mediaInfo];

  if (mediaInfo)
  {
    [(PKPaper *)self addToMediaCol:v5];
  }

  else if (marginsCopy)
  {
    [v5 setMarginsTop:-[PKPaper topMargin](self left:"topMargin") bottom:-[PKPaper leftMargin](self right:{"leftMargin"), -[PKPaper bottomMargin](self, "bottomMargin"), -[PKPaper rightMargin](self, "rightMargin")}];
  }

  return v5;
}

- (id)localizedNameFromDimensions
{
  baseName = [(PKPaper *)self baseName];
  v4 = [PKMediaName pkMediaNameWithString:baseName];

  unitStr = [v4 unitStr];
  v6 = [unitStr isEqualToString:@"in"];

  if (v6)
  {
    v7 = 0;
    v8 = @"%@ x %@ inches";
    v9 = 2540.0;
  }

  else
  {
    unitStr2 = [v4 unitStr];
    v11 = [unitStr2 isEqualToString:@"mm"];

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
      baseName2 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v16 validFormatSpecifiers:@"%@ %@" error:0, v20, v21];

      v23 = v16;
      if (baseName2)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  v23 = 0;
LABEL_15:
  baseName2 = [(PKPaper *)self baseName];
  v16 = v23;
LABEL_16:

  return baseName2;
}

- (BOOL)isEqualSizeAndMediaType:(id)type
{
  typeCopy = type;
  if (typeCopy && (v5 = -[PKPaper height](self, "height"), v5 == [typeCopy height]) && (v6 = -[PKPaper width](self, "width"), v6 == objc_msgSend(typeCopy, "width")))
  {
    mediaType = [(PKPaper *)self mediaType];
    mediaType2 = [typeCopy mediaType];
    v9 = [mediaType isEqualToString:mediaType2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqualSize:(id)size
{
  sizeCopy = size;
  if (sizeCopy && (v5 = -[PKPaper height](self, "height"), v5 == [sizeCopy height]))
  {
    width = [(PKPaper *)self width];
    v7 = width == [sizeCopy width];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)sizeAndImageableCompare:(id)compare
{
  compareCopy = compare;
  width = [(PKPaper *)self width];
  width2 = [compareCopy width];
  v7 = width - width2;
  if (width == width2)
  {
    height = [(PKPaper *)self height];
    height2 = [compareCopy height];
    v7 = height - height2;
    if (height == height2)
    {
      [(PKPaper *)self imageableArea];
      v11 = v10;
      [compareCopy imageableArea];
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

- (int64_t)sizeMediaTypeAndImageableCompare:(id)compare
{
  compareCopy = compare;
  width = [(PKPaper *)self width];
  width2 = [compareCopy width];
  v7 = width - width2;
  if (width == width2)
  {
    height = [(PKPaper *)self height];
    height2 = [compareCopy height];
    v7 = height - height2;
    if (height == height2)
    {
      mediaType = [(PKPaper *)self mediaType];
      mediaType2 = [compareCopy mediaType];
      v7 = [mediaType compare:mediaType2];

      if (!v7)
      {
        [(PKPaper *)self imageableArea];
        v13 = v12;
        [compareCopy imageableArea];
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
  baseName = [(PKPaper *)self baseName];
  v5 = [v3 localizedStringForKey:baseName value:@"." table:@"PaperNames"];

  if ([v5 isEqualToString:@"."])
  {
    localizedNameFromDimensions = [(PKPaper *)self localizedNameFromDimensions];

    v5 = localizedNameFromDimensions;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PKPaper;
  v4 = [(PKPaper *)&v8 description];
  name = [(PKPaper *)self name];
  v6 = [v3 stringWithFormat:@"%@ { %@ }", v4, name];

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
  name = [(PKPaper *)self name];
  width = [(PKPaper *)self width];
  height = [(PKPaper *)self height];
  mediaType = [(PKPaper *)self mediaType];
  v16 = [v11 stringWithFormat:@"%@ width = %.2f height = %.2f imageableAreaRect origin = (%.2f, %.2f), size = (%.2f, %.2f) media-type=%@", name, width * 72.0 / 2540.0, height * 72.0 / 2540.0, v4, v6, v8, v10, mediaType];

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

+ (id)genericWithName:(id)name
{
  v13 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v4 = nameCopy;
  if (nameCopy && (v5 = pwgMediaForPWG(nameCopy, v12)) != 0)
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

+ (id)genericBorderlessWithName:(id)name
{
  v8 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v4 = nameCopy;
  if (nameCopy)
  {
    v5 = pwgMediaForPWG(nameCopy, v7);
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

- (PKPaper)paperWithMarginsAdjustedForDuplexMode:(id)mode
{
  modeCopy = mode;
  selfCopy = self;
  if (([modeCopy isEqualToString:@"one-sided"] & 1) == 0)
  {
    topMargin = [(PKPaper *)selfCopy topMargin];
    bottomMargin = [(PKPaper *)selfCopy bottomMargin];
    leftMargin = [(PKPaper *)selfCopy leftMargin];
    if (leftMargin <= [(PKPaper *)selfCopy rightMargin])
    {
      rightMargin = [(PKPaper *)selfCopy rightMargin];
    }

    else
    {
      rightMargin = [(PKPaper *)selfCopy leftMargin];
    }

    v10 = rightMargin;
    if ([modeCopy isEqualToString:@"two-sided-short-edge"])
    {
      topMargin2 = [(PKPaper *)selfCopy topMargin];
      if (topMargin2 <= [(PKPaper *)selfCopy bottomMargin])
      {
        bottomMargin2 = [(PKPaper *)selfCopy bottomMargin];
      }

      else
      {
        bottomMargin2 = [(PKPaper *)selfCopy topMargin];
      }

      topMargin = bottomMargin2;
      bottomMargin = bottomMargin2;
    }

    v13 = [PKPaper alloc];
    width = [(PKPaper *)selfCopy width];
    height = [(PKPaper *)selfCopy height];
    localizedName = [(PKPaper *)selfCopy localizedName];
    name = [(PKPaper *)selfCopy name];
    v18 = [(PKPaper *)v13 initWithWidth:width Height:height Left:v10 Top:topMargin Right:v10 Bottom:bottomMargin localizedName:localizedName codeName:name mediaInfo:0];

    selfCopy = v18;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    name = [(PKPaper *)self name];
    name2 = [(PKPaper *)v5 name];
    v8 = [name isEqualToString:name2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  name = [(PKPaper *)self name];
  v3 = [name hash];

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

+ (id)mediaNameForWidth:(int)width height:(int)height borderless:(BOOL)borderless simplex:(BOOL)simplex
{
  v6 = *&width;
  v15 = *MEMORY[0x277D85DE8];
  if (height)
  {
    simplexCopy = simplex;
    borderlessCopy = borderless;
    v9 = *&height;
    v10 = pwgMediaForSize(*&width, *&height, v14);
    v11 = "";
    if (simplexCopy)
    {
      v11 = "-simplex";
    }

    if (borderlessCopy)
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
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"roll-%dx0", *&height, borderless, simplex, *&width];
  }

  return v12;
}

- (PKPaper)initWithCoder:(id)coder
{
  v15[4] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = PKPaper;
  v5 = [(PKPaper *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    name = v5->_name;
    v5->_name = v6;

    v5->_width = [coderCopy decodeIntegerForKey:@"_width"];
    v5->_height = [coderCopy decodeIntegerForKey:@"_height"];
    v5->_leftMargin = [coderCopy decodeIntegerForKey:@"_leftMargin"];
    v5->_topMargin = [coderCopy decodeIntegerForKey:@"_topMargin"];
    v5->_rightMargin = [coderCopy decodeIntegerForKey:@"_rightMargin"];
    v5->_bottomMargin = [coderCopy decodeIntegerForKey:@"_bottomMargin"];
    v8 = MEMORY[0x277CBEB98];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v15[2] = objc_opt_class();
    v15[3] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];
    v10 = [v8 setWithArray:v9];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"_mediaInfo"];
    mediaInfo = v5->_mediaInfo;
    v5->_mediaInfo = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_name forKey:@"_name"];
  [coderCopy encodeInteger:self->_width forKey:@"_width"];
  [coderCopy encodeInteger:self->_height forKey:@"_height"];
  [coderCopy encodeInteger:self->_leftMargin forKey:@"_leftMargin"];
  [coderCopy encodeInteger:self->_topMargin forKey:@"_topMargin"];
  [coderCopy encodeInteger:self->_rightMargin forKey:@"_rightMargin"];
  [coderCopy encodeInteger:self->_bottomMargin forKey:@"_bottomMargin"];
  [coderCopy encodeObject:self->_mediaInfo forKey:@"_mediaInfo"];
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

- (PKPaper)initWithUserCodableDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = PKPaper;
  v5 = [(PKPaper *)&v9 init];
  if (v5)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__PKPaper_initWithUserCodableDictionary___block_invoke;
    v7[3] = &unk_279A92468;
    v8 = dictionaryCopy;
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

- (void)visitProperties:(Visitor *)properties
{
  (*(properties->var0 + 2))(properties, a2);
  (*(properties->var0 + 7))(properties, @"name", &self->_name);
  (*(properties->var0 + 4))(properties, @"width", &self->_width);
  (*(properties->var0 + 4))(properties, @"height", &self->_height);
  (*(properties->var0 + 4))(properties, @"leftMargin", &self->_leftMargin);
  (*(properties->var0 + 4))(properties, @"topMargin", &self->_topMargin);
  (*(properties->var0 + 4))(properties, @"rightMargin", &self->_rightMargin);
  (*(properties->var0 + 4))(properties, @"bottomMargin", &self->_bottomMargin);
  v24 = objc_opt_new();
  v23 = objc_opt_new();
  mediaInfo = [(PKPaper *)self mediaInfo];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __27__PKPaper_visitProperties___block_invoke;
  v20[3] = &unk_279A92490;
  v21 = v24;
  v22 = v23;
  [mediaInfo enumerateKeysAndObjectsUsingBlock:v20];

  (*(properties->var0 + 12))(properties, @"_strMediaInfo", &v24);
  (*(properties->var0 + 18))(properties, @"_numMediaInfo", &v23);
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
  (*(properties->var0 + 24))(properties);
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