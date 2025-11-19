@interface QLCacheIndexFileRequest
- (QLCacheIndexFileRequest)initWithFileIdentifier:(id)a3 version:(id)a4;
- (QLCacheIndexFileRequest)initWithVersionedFileIdentifier:(id)a3;
- (float)minimumSizeAtIndex:(unint64_t)a3;
- (float)sizeAtIndex:(int64_t)a3;
- (int)interpolationQualityAtIndex:(unint64_t)a3;
- (int64_t)iconVariantAtIndex:(unint64_t)a3;
- (unint64_t)badgeTypeAtIndex:(unint64_t)a3;
- (unint64_t)externalGeneratorDataHashAtIndex:(unint64_t)a3;
- (unsigned)iconModeAtIndex:(int64_t)a3;
- (unsigned)lowQualityAtIndex:(int64_t)a3;
- (void)appendSize:(float)a3 minimumSize:(float)a4 withIconMode:(unsigned __int8)a5 lowQuality:(BOOL)a6 badgeType:(unint64_t)a7 iconVariant:(int64_t)a8 interpolationQuality:(int)a9 externalGeneratorDataHash:(unint64_t)a10;
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

- (QLCacheIndexFileRequest)initWithFileIdentifier:(id)a3 version:(id)a4
{
  v7 = a3;
  v8 = a4;
  v23.receiver = self;
  v23.super_class = QLCacheIndexFileRequest;
  v9 = [(QLCacheIndexFileRequest *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fileIdentifier, a3);
    v11 = MEMORY[0x277CBF128];
    v10->_sizes = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    v12 = [MEMORY[0x277CBEB18] array];
    minimumSizes = v10->_minimumSizes;
    v10->_minimumSizes = v12;

    v14 = [MEMORY[0x277CBEB18] array];
    badgeTypes = v10->_badgeTypes;
    v10->_badgeTypes = v14;

    v16 = [MEMORY[0x277CBEB18] array];
    externalGeneratorDataHashs = v10->_externalGeneratorDataHashs;
    v10->_externalGeneratorDataHashs = v16;

    v10->_iconModes = CFArrayCreateMutable(0, 0, v11);
    v10->_lowQualities = CFArrayCreateMutable(0, 0, v11);
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    iconVariants = v10->_iconVariants;
    v10->_iconVariants = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
    interpolationQualities = v10->_interpolationQualities;
    v10->_interpolationQualities = v20;

    objc_storeStrong(&v10->_version, a4);
  }

  return v10;
}

- (QLCacheIndexFileRequest)initWithVersionedFileIdentifier:(id)a3
{
  v4 = a3;
  v5 = [v4 fileIdentifier];
  v6 = [v4 version];

  v7 = [(QLCacheIndexFileRequest *)self initWithFileIdentifier:v5 version:v6];
  return v7;
}

- (void)appendSize:(float)a3 minimumSize:(float)a4 withIconMode:(unsigned __int8)a5 lowQuality:(BOOL)a6 badgeType:(unint64_t)a7 iconVariant:(int64_t)a8 interpolationQuality:(int)a9 externalGeneratorDataHash:(unint64_t)a10
{
  v14 = a6;
  v15 = a5;
  valuePtr = a3;
  v18 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  sizes = self->_sizes;
  v40.length = CFArrayGetCount(sizes);
  v40.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(sizes, v40, v18);
  if (FirstIndexOfValue == -1)
  {
LABEL_10:
    minimumSizes = self->_minimumSizes;
    *&v21 = a4;
    v26 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
    [(NSMutableArray *)minimumSizes addObject:v26];

    badgeTypes = self->_badgeTypes;
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a7];
    [(NSMutableArray *)badgeTypes addObject:v28];

    externalGeneratorDataHashs = self->_externalGeneratorDataHashs;
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a10];
    [(NSMutableArray *)externalGeneratorDataHashs addObject:v30];

    CFArrayAppendValue(self->_sizes, v18);
    v31 = *MEMORY[0x277CBED28];
    v32 = *MEMORY[0x277CBED10];
    if (v14)
    {
      v33 = *MEMORY[0x277CBED28];
    }

    else
    {
      v33 = *MEMORY[0x277CBED10];
    }

    CFArrayAppendValue(self->_lowQualities, v33);
    self->_atLeastOneLowQuality |= v14;
    if (v15)
    {
      v34 = v31;
    }

    else
    {
      v34 = v32;
    }

    CFArrayAppendValue(self->_iconModes, v34);
    iconVariants = self->_iconVariants;
    v36 = [MEMORY[0x277CCABB0] numberWithInteger:a8];
    [(NSMutableArray *)iconVariants addObject:v36];

    interpolationQualities = self->_interpolationQualities;
    v38 = [MEMORY[0x277CCABB0] numberWithInt:a9];
    [(NSMutableArray *)interpolationQualities addObject:v38];
  }

  else
  {
    v22 = FirstIndexOfValue;
    while ([(QLCacheIndexFileRequest *)self iconModeAtIndex:v22]!= v15 || [(QLCacheIndexFileRequest *)self lowQualityAtIndex:v22]!= v14 || [(QLCacheIndexFileRequest *)self badgeTypeAtIndex:v22]!= a7 || [(QLCacheIndexFileRequest *)self iconVariantAtIndex:v22]!= a8 || [(QLCacheIndexFileRequest *)self interpolationQualityAtIndex:v22]!= a9 || [(QLCacheIndexFileRequest *)self externalGeneratorDataHashAtIndex:v22]!= a10)
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

- (float)minimumSizeAtIndex:(unint64_t)a3
{
  v3 = [(NSMutableArray *)self->_minimumSizes objectAtIndexedSubscript:a3];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (unint64_t)badgeTypeAtIndex:(unint64_t)a3
{
  v3 = [(NSMutableArray *)self->_badgeTypes objectAtIndexedSubscript:a3];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (unint64_t)externalGeneratorDataHashAtIndex:(unint64_t)a3
{
  v3 = [(NSMutableArray *)self->_externalGeneratorDataHashs objectAtIndexedSubscript:a3];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (float)sizeAtIndex:(int64_t)a3
{
  valuePtr = 0.0;
  ValueAtIndex = CFArrayGetValueAtIndex(self->_sizes, a3);
  Value = CFNumberGetValue(ValueAtIndex, kCFNumberFloatType, &valuePtr);
  result = valuePtr;
  if (!Value)
  {
    return 0.0;
  }

  return result;
}

- (unsigned)iconModeAtIndex:(int64_t)a3
{
  ValueAtIndex = CFArrayGetValueAtIndex(self->_iconModes, a3);

  return CFBooleanGetValue(ValueAtIndex);
}

- (unsigned)lowQualityAtIndex:(int64_t)a3
{
  ValueAtIndex = CFArrayGetValueAtIndex(self->_lowQualities, a3);

  return CFBooleanGetValue(ValueAtIndex);
}

- (int64_t)iconVariantAtIndex:(unint64_t)a3
{
  v3 = [(NSMutableArray *)self->_iconVariants objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (int)interpolationQualityAtIndex:(unint64_t)a3
{
  v3 = [(NSMutableArray *)self->_interpolationQualities objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

@end