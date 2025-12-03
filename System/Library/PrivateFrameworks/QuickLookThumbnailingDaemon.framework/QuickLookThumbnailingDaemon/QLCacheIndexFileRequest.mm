@interface QLCacheIndexFileRequest
- (QLCacheIndexFileRequest)initWithFileIdentifier:(id)identifier version:(id)version;
- (QLCacheIndexFileRequest)initWithVersionedFileIdentifier:(id)identifier;
- (float)minimumSizeAtIndex:(unint64_t)index;
- (float)sizeAtIndex:(int64_t)index;
- (int)interpolationQualityAtIndex:(unint64_t)index;
- (int64_t)iconVariantAtIndex:(unint64_t)index;
- (unint64_t)badgeTypeAtIndex:(unint64_t)index;
- (unint64_t)externalGeneratorDataHashAtIndex:(unint64_t)index;
- (unsigned)iconModeAtIndex:(int64_t)index;
- (unsigned)lowQualityAtIndex:(int64_t)index;
- (void)appendSize:(float)size minimumSize:(float)minimumSize withIconMode:(unsigned __int8)mode lowQuality:(BOOL)quality badgeType:(unint64_t)type iconVariant:(int64_t)variant interpolationQuality:(int)interpolationQuality externalGeneratorDataHash:(unint64_t)self0;
- (void)dealloc;
@end

@implementation QLCacheIndexFileRequest

- (void)dealloc
{
  sizes = self->_sizes;
  if (sizes)
  {
    CFRelease(sizes);
  }

  iconModes = self->_iconModes;
  if (iconModes)
  {
    CFRelease(iconModes);
  }

  lowQualities = self->_lowQualities;
  if (lowQualities)
  {
    CFRelease(lowQualities);
  }

  v6.receiver = self;
  v6.super_class = QLCacheIndexFileRequest;
  [(QLCacheIndexFileRequest *)&v6 dealloc];
}

- (QLCacheIndexFileRequest)initWithFileIdentifier:(id)identifier version:(id)version
{
  identifierCopy = identifier;
  versionCopy = version;
  v23.receiver = self;
  v23.super_class = QLCacheIndexFileRequest;
  v9 = [(QLCacheIndexFileRequest *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fileIdentifier, identifier);
    v11 = MEMORY[0x277CBF128];
    v10->_sizes = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    array = [MEMORY[0x277CBEB18] array];
    minimumSizes = v10->_minimumSizes;
    v10->_minimumSizes = array;

    array2 = [MEMORY[0x277CBEB18] array];
    badgeTypes = v10->_badgeTypes;
    v10->_badgeTypes = array2;

    array3 = [MEMORY[0x277CBEB18] array];
    externalGeneratorDataHashs = v10->_externalGeneratorDataHashs;
    v10->_externalGeneratorDataHashs = array3;

    v10->_iconModes = CFArrayCreateMutable(0, 0, v11);
    v10->_lowQualities = CFArrayCreateMutable(0, 0, v11);
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    iconVariants = v10->_iconVariants;
    v10->_iconVariants = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
    interpolationQualities = v10->_interpolationQualities;
    v10->_interpolationQualities = v20;

    objc_storeStrong(&v10->_version, version);
  }

  return v10;
}

- (QLCacheIndexFileRequest)initWithVersionedFileIdentifier:(id)identifier
{
  identifierCopy = identifier;
  fileIdentifier = [identifierCopy fileIdentifier];
  version = [identifierCopy version];

  v7 = [(QLCacheIndexFileRequest *)self initWithFileIdentifier:fileIdentifier version:version];
  return v7;
}

- (void)appendSize:(float)size minimumSize:(float)minimumSize withIconMode:(unsigned __int8)mode lowQuality:(BOOL)quality badgeType:(unint64_t)type iconVariant:(int64_t)variant interpolationQuality:(int)interpolationQuality externalGeneratorDataHash:(unint64_t)self0
{
  qualityCopy = quality;
  modeCopy = mode;
  valuePtr = size;
  v18 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  sizes = self->_sizes;
  v40.length = CFArrayGetCount(sizes);
  v40.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(sizes, v40, v18);
  if (FirstIndexOfValue == -1)
  {
LABEL_10:
    minimumSizes = self->_minimumSizes;
    *&v21 = minimumSize;
    v26 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
    [(NSMutableArray *)minimumSizes addObject:v26];

    badgeTypes = self->_badgeTypes;
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
    [(NSMutableArray *)badgeTypes addObject:v28];

    externalGeneratorDataHashs = self->_externalGeneratorDataHashs;
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:hash];
    [(NSMutableArray *)externalGeneratorDataHashs addObject:v30];

    CFArrayAppendValue(self->_sizes, v18);
    v31 = *MEMORY[0x277CBED28];
    v32 = *MEMORY[0x277CBED10];
    if (qualityCopy)
    {
      v33 = *MEMORY[0x277CBED28];
    }

    else
    {
      v33 = *MEMORY[0x277CBED10];
    }

    CFArrayAppendValue(self->_lowQualities, v33);
    self->_atLeastOneLowQuality |= qualityCopy;
    if (modeCopy)
    {
      v34 = v31;
    }

    else
    {
      v34 = v32;
    }

    CFArrayAppendValue(self->_iconModes, v34);
    iconVariants = self->_iconVariants;
    v36 = [MEMORY[0x277CCABB0] numberWithInteger:variant];
    [(NSMutableArray *)iconVariants addObject:v36];

    interpolationQualities = self->_interpolationQualities;
    v38 = [MEMORY[0x277CCABB0] numberWithInt:interpolationQuality];
    [(NSMutableArray *)interpolationQualities addObject:v38];
  }

  else
  {
    v22 = FirstIndexOfValue;
    while ([(QLCacheIndexFileRequest *)self iconModeAtIndex:v22]!= modeCopy || [(QLCacheIndexFileRequest *)self lowQualityAtIndex:v22]!= qualityCopy || [(QLCacheIndexFileRequest *)self badgeTypeAtIndex:v22]!= type || [(QLCacheIndexFileRequest *)self iconVariantAtIndex:v22]!= variant || [(QLCacheIndexFileRequest *)self interpolationQualityAtIndex:v22]!= interpolationQuality || [(QLCacheIndexFileRequest *)self externalGeneratorDataHashAtIndex:v22]!= hash)
    {
      v23 = v22 + 1;
      v24 = self->_sizes;
      v41.length = CFArrayGetCount(v24) - v23;
      v41.location = v23;
      v22 = CFArrayGetFirstIndexOfValue(v24, v41, v18);
      if (v22 == -1)
      {
        goto LABEL_10;
      }
    }
  }

  CFRelease(v18);
}

- (float)minimumSizeAtIndex:(unint64_t)index
{
  v3 = [(NSMutableArray *)self->_minimumSizes objectAtIndexedSubscript:index];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (unint64_t)badgeTypeAtIndex:(unint64_t)index
{
  v3 = [(NSMutableArray *)self->_badgeTypes objectAtIndexedSubscript:index];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)externalGeneratorDataHashAtIndex:(unint64_t)index
{
  v3 = [(NSMutableArray *)self->_externalGeneratorDataHashs objectAtIndexedSubscript:index];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (float)sizeAtIndex:(int64_t)index
{
  valuePtr = 0.0;
  ValueAtIndex = CFArrayGetValueAtIndex(self->_sizes, index);
  Value = CFNumberGetValue(ValueAtIndex, kCFNumberFloatType, &valuePtr);
  result = valuePtr;
  if (!Value)
  {
    return 0.0;
  }

  return result;
}

- (unsigned)iconModeAtIndex:(int64_t)index
{
  ValueAtIndex = CFArrayGetValueAtIndex(self->_iconModes, index);

  return CFBooleanGetValue(ValueAtIndex);
}

- (unsigned)lowQualityAtIndex:(int64_t)index
{
  ValueAtIndex = CFArrayGetValueAtIndex(self->_lowQualities, index);

  return CFBooleanGetValue(ValueAtIndex);
}

- (int64_t)iconVariantAtIndex:(unint64_t)index
{
  v3 = [(NSMutableArray *)self->_iconVariants objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (int)interpolationQualityAtIndex:(unint64_t)index
{
  v3 = [(NSMutableArray *)self->_interpolationQualities objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

@end