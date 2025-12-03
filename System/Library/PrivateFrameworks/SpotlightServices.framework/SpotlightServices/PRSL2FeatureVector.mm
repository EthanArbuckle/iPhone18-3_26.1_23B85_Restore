@interface PRSL2FeatureVector
+ (FeatureInfo)featureForName:(id)name;
+ (__CFSet)getL2FeatureSet;
+ (id)allowedAttributeSetForAnonPipeline;
+ (id)contextWithFeatureOrder:(id)order withInflation:(unint64_t)inflation withInflatedIndexToSize:(id)size;
+ (void)initialize;
- (BOOL)displayNameFuzzySpecialInsertion;
- (BOOL)isAppInDock;
- (BOOL)isSiriAction;
- (BOOL)serializeToJSON:(void *)n options:(int64_t)options;
- (PRSL2FeatureVector)init;
- (PRSL2FeatureVector)initWithCache:(PRSL2FeatureScoreSmallCache *)cache featureData:(void *)data featureDataSize:(unsigned __int16)size flags:(unsigned __int8)flags values:(unsigned __int8)values;
- (PRSRankingItem)rankingItem;
- (float)getAllScores:(float)scores[3235];
- (float)scoreForFeature:(unsigned __int16)feature;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)restoreFromJazzkonPlusHacks:(float *)hacks;
- (void)setDisplayNameFuzzySpecialInsertion:(BOOL)insertion;
- (void)setIsAppInDock:(BOOL)dock;
- (void)setIsSiriAction:(BOOL)action;
- (void)setScores:(float *)scores forFeatures:(unsigned __int16 *)features count:(unint64_t)count;
- (void)swapAllContentCreationDateFeatures:(float *)features;
- (void)swapAllLastUsedDateFeatures:(float *)features;
- (void)swapAllRecenyFeatures:(float *)features;
- (void)swapFeature:(unsigned __int16)feature withSubstitute:(unsigned __int16)substitute scores:(float *)scores;
@end

@implementation PRSL2FeatureVector

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = &byte_1E8596CA2;
    v3 = 3235;
    do
    {
      v4 = *(v2 - 1);
      v6 = *v2;
      v2 += 16;
      v5 = v6;
      if ((v6 & 2) != 0)
      {
        v7 = 0.0;
      }

      else
      {
        v7 = -1.0;
      }

      sDefaultScores[v4] = v7;
      sFeatureFlags[v4] = v5;
      --v3;
    }

    while (v3);
  }
}

+ (__CFSet)getL2FeatureSet
{
  if (getL2FeatureSet_onceToken != -1)
  {
    +[PRSL2FeatureVector getL2FeatureSet];
  }

  return getL2FeatureSet_sL2FeatureSet;
}

CFSetRef __37__PRSL2FeatureVector_getL2FeatureSet__block_invoke()
{
  values[3235] = *MEMORY[0x1E69E9840];
  bzero(values, 0x6518uLL);
  v0 = 0;
  v1 = xmmword_1DA0D54A0;
  v2 = &sFeatureInfo;
  v3 = vdupq_n_s64(0xCA3uLL);
  v4 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v3, v1)).u8[0])
    {
      values[v0] = v2;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xCA3uLL), *&v1)).i32[1])
    {
      values[v0 + 1] = v2 + 2;
    }

    v0 += 2;
    v1 = vaddq_s64(v1, v4);
    v2 += 4;
  }

  while (v0 != 3236);
  v7 = *byte_1F556EAB0;
  result = CFSetCreate(*MEMORY[0x1E695E480], values, 3235, &v7);
  getL2FeatureSet_sL2FeatureSet = result;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)contextWithFeatureOrder:(id)order withInflation:(unint64_t)inflation withInflatedIndexToSize:(id)size
{
  sizeCopy = size;
  orderCopy = order;
  v9 = [[PRSL2FeatureVectorProcessingContext alloc] initWithFeatureOrder:orderCopy withInflation:inflation withInflatedIndexToSize:sizeCopy];

  return v9;
}

+ (FeatureInfo)featureForName:(id)name
{
  v6[1] = 0;
  nameCopy = name;
  v6[0] = nameCopy;
  Value = CFSetGetValue(+[PRSL2FeatureVector getL2FeatureSet], v6);

  return Value;
}

+ (id)allowedAttributeSetForAnonPipeline
{
  if (allowedAttributeSetForAnonPipeline_onceToken != -1)
  {
    +[PRSL2FeatureVector allowedAttributeSetForAnonPipeline];
  }

  v3 = allowedAttributeSetForAnonPipeline_allowedAttrSet;

  return v3;
}

uint64_t __56__PRSL2FeatureVector_allowedAttributeSetForAnonPipeline__block_invoke()
{
  allowedAttributeSetForAnonPipeline_allowedAttrSet = [MEMORY[0x1E695DFD8] setWithObjects:{@"kMDItemSubject", @"kMDItemTitle", @"kMDItemPath", @"kMDItemContentURL", @"redirectSourceTitle", @"redirectSourceURL", @"kMDItemFilename", @"FPFilename", @"kMDItemAlternateNames", @"kMDItemDisplayName", @"kMDItemAuthors", @"kMDItemAuthorEmailAddresses", @"kMDItemRecipients", @"kMDItemPrimaryRecipientEmailAddresses", @"kMDItemEmailAddresses", @"kMDItemLastEditorName", @"kMDItemContactKeywords", @"kMDItemTextContent", @"kMDItemComment", @"kMDItemDescription", @"kMDItemAttachmentNames", @"com_apple_mail_attachmentKinds", @"kMDItemAttachmentTypes", 0}];

  return MEMORY[0x1EEE66BB8]();
}

- (PRSL2FeatureVector)init
{
  v7.receiver = self;
  v7.super_class = PRSL2FeatureVector;
  v2 = [(PRSL2FeatureVector *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_cache.count = 0;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    topicalityAnonFeatDict = v3->_topicalityAnonFeatDict;
    v3->_topicalityAnonFeatDict = dictionary;

    v3->_featureDataLock._os_unfair_lock_opaque = 0;
  }

  return v3;
}

- (PRSL2FeatureVector)initWithCache:(PRSL2FeatureScoreSmallCache *)cache featureData:(void *)data featureDataSize:(unsigned __int16)size flags:(unsigned __int8)flags values:(unsigned __int8)values
{
  sizeCopy = size;
  v12 = [(PRSL2FeatureVector *)self init];
  v13 = v12;
  if (v12)
  {
    count = cache->count;
    v12->_cache.count = count;
    if (count)
    {
      v15 = 0;
      scores = v12->_cache.scores;
      do
      {
        *(scores + v15 - 32) = cache->features[v15];
        scores[v15] = cache->scores[v15];
        ++v15;
      }

      while (v15 < cache->count);
    }

    v17 = malloc_type_malloc(sizeCopy, 0x98C0A12DuLL);
    v13->_featureData = v17;
    memcpy(v17, data, sizeCopy);
    v13->_featureDataSize = sizeCopy;
    v13->_flags = flags;
    v13->_values = values;
  }

  return v13;
}

- (void)setDisplayNameFuzzySpecialInsertion:(BOOL)insertion
{
  os_unfair_lock_lock(&self->_featureDataLock);
  self->_flags |= 1u;

  os_unfair_lock_unlock(&self->_featureDataLock);
}

- (BOOL)displayNameFuzzySpecialInsertion
{
  os_unfair_lock_lock(&self->_featureDataLock);
  os_unfair_lock_unlock(&self->_featureDataLock);
  return 0;
}

- (void)setIsSiriAction:(BOOL)action
{
  os_unfair_lock_lock(&self->_featureDataLock);
  self->_flags |= 2u;
  self->_values = self->_values & 0xFE | action;

  os_unfair_lock_unlock(&self->_featureDataLock);
}

- (BOOL)isSiriAction
{
  os_unfair_lock_lock(&self->_featureDataLock);
  v3 = self->_values & ((self->_flags & 2) >> 1);
  os_unfair_lock_unlock(&self->_featureDataLock);
  return v3;
}

- (void)setIsAppInDock:(BOOL)dock
{
  dockCopy = dock;
  os_unfair_lock_lock(&self->_featureDataLock);
  self->_flags |= 4u;
  if (dockCopy)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  self->_values = self->_values & 0xFD | v5;

  os_unfair_lock_unlock(&self->_featureDataLock);
}

- (BOOL)isAppInDock
{
  os_unfair_lock_lock(&self->_featureDataLock);
  v3 = (self->_flags >> 2) & ((self->_values & 2) >> 1);
  os_unfair_lock_unlock(&self->_featureDataLock);
  return v3;
}

- (float)scoreForFeature:(unsigned __int16)feature
{
  featureCopy = feature;
  os_unfair_lock_lock(&self->_featureDataLock);
  count = self->_cache.count;
  if (self->_cache.count)
  {
    p_cache = &self->_cache;
    scores = self->_cache.scores;
    do
    {
      v8 = p_cache->features[0];
      p_cache = (p_cache + 2);
      if (v8 == featureCopy)
      {
        v16 = *scores;
        goto LABEL_28;
      }

      ++scores;
      --count;
    }

    while (count);
  }

  if ((sFeatureFlags[featureCopy] & 0x20) != 0)
  {
    BoolFromFlaggedFeature = getBoolFromFlaggedFeature(featureCopy, self->_flags, self->_values);
    os_unfair_lock_unlock(&self->_featureDataLock);
    return BoolFromFlaggedFeature;
  }

  if (!self->_featureDataSize)
  {
LABEL_25:
    v16 = sDefaultScores[featureCopy];
    goto LABEL_28;
  }

  v9 = 0;
  v10 = 0;
  featureData = self->_featureData;
  while (1)
  {
    v12 = *featureData;
    if ((v12 & 0xC0) != 0x40)
    {
      v13 = featureData + 1;
      if ((v12 & 0x3F) != 0)
      {
        v14 = v12 & 0x1F;
        if ((v12 & 0x20) != 0)
        {
          v13 = featureData + 2;
          v14 = featureData[1] | (v14 << 8);
        }

        if ((v12 & 0xC0) != 0)
        {
LABEL_15:
          if ((v12 & 0xC0) == 0x80)
          {
            if (v9 + v14 >= featureCopy)
            {
              goto LABEL_25;
            }
          }

          else if (v12 >= 0xC0 && v9 + v14 >= featureCopy)
          {
            v16 = 0.0;
            goto LABEL_28;
          }

          goto LABEL_23;
        }
      }

      else
      {
        v14 = 0;
        if ((v12 & 0xC0) != 0)
        {
          goto LABEL_15;
        }
      }

      if (v9 + v14 >= featureCopy)
      {
        v16 = *&v13[4 * (featureCopy - v9)];
        goto LABEL_28;
      }

      v13 += (4 * v14 + 4);
LABEL_23:
      v10 += v14;
      goto LABEL_24;
    }

    if (featureCopy == v10)
    {
      break;
    }

    v13 = featureData + 1;
LABEL_24:
    v15 = v10++;
    v9 = v10;
    featureData = v13;
    if (v15 >= 0xCA2)
    {
      goto LABEL_25;
    }
  }

  if ((v12 & 0x3F) == 0x3F)
  {
    v16 = 2147500000.0;
  }

  else
  {
    v16 = (v12 & 0x3F);
  }

LABEL_28:
  os_unfair_lock_unlock(&self->_featureDataLock);
  return v16;
}

- (float)getAllScores:(float)scores[3235]
{
  os_unfair_lock_lock(&self->_featureDataLock);
  decodeRankingScores(self->_featureData, self->_featureDataSize, scores);
  count = self->_cache.count;
  if (self->_cache.count)
  {
    p_cache = &self->_cache;
    scores = self->_cache.scores;
    do
    {
      v8 = *scores++;
      v9 = v8;
      v10 = p_cache->features[0];
      p_cache = (p_cache + 2);
      scores[v10] = v9;
      --count;
    }

    while (count);
  }

  for (i = 0; i != 6; ++i)
  {
    v12 = sFlaggedFeatureList[i];
    if ((sFeatureFlags[v12] & 0x20) == 0)
    {
      continue;
    }

    if (sFlaggedFeatureList[i] > 0x78Au)
    {
      switch(v12)
      {
        case 0x78B:
          v13 = 1;
          break;
        case 0x7AD:
          v13 = 4;
          break;
        case 0x7AE:
          v13 = 2;
          break;
        default:
          continue;
      }
    }

    else
    {
      switch(v12)
      {
        case 0x73C:
          v13 = 16;
          break;
        case 0x73D:
          v13 = 8;
          break;
        case 0x73E:
          v13 = 32;
          break;
        default:
          continue;
      }
    }

    if ((self->_flags & v13) != 0)
    {
      if ((self->_values & (v13 >> 1)) != 0)
      {
        v14 = 1.0;
      }

      else
      {
        v14 = 0.0;
      }

      scores[v12] = v14;
    }
  }

  os_unfair_lock_unlock(&self->_featureDataLock);
  return scores;
}

- (void)setScores:(float *)scores forFeatures:(unsigned __int16 *)features count:(unint64_t)count
{
  v5 = (MEMORY[0x1EEE9AC00])(self, a2, scores, features, count);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v5;
  v61 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(v5 + 2);
  v13 = v12 + 3;
  os_unfair_lock_opaque_low = LOWORD(v12[51]._os_unfair_lock_opaque);
  if ((os_unfair_lock_opaque_low + v7) <= 0x1F)
  {
    if (!v7)
    {
LABEL_23:
      v23 = *MEMORY[0x1E69E9840];

      os_unfair_lock_unlock(v12 + 2);
      return;
    }

    os_unfair_lock_opaque = v12[51]._os_unfair_lock_opaque;
    while (1)
    {
      v17 = *v9++;
      v16 = v17;
      v18 = *v11;
      *(&v13->_os_unfair_lock_opaque + os_unfair_lock_opaque) = v17;
      v19 = LOWORD(v12[51]._os_unfair_lock_opaque);
      os_unfair_lock_opaque = v19 + 1;
      LOWORD(v12[51]._os_unfair_lock_opaque) = v19 + 1;
      *&v12[v19 + 19]._os_unfair_lock_opaque = v18;
      if ((sFeatureFlags[v17] & 0x20) != 0)
      {
        if (v16 > 1930)
        {
          switch(v16)
          {
            case 1931:
              v20 = 1;
              goto LABEL_18;
            case 1965:
              v20 = 4;
              goto LABEL_18;
            case 1966:
              v20 = 2;
              goto LABEL_18;
          }
        }

        else
        {
          switch(v16)
          {
            case 1852:
              v20 = 16;
              goto LABEL_18;
            case 1853:
              v20 = 8;
              goto LABEL_18;
            case 1854:
              v20 = 32;
LABEL_18:
              BYTE2(v12[54]._os_unfair_lock_opaque) |= v20;
              v21 = v20 >> 1;
              if (v18 == 1.0)
              {
                v22 = HIBYTE(v12[54]._os_unfair_lock_opaque) | v21;
              }

              else
              {
                v22 = HIBYTE(v12[54]._os_unfair_lock_opaque) & ~v21;
              }

              HIBYTE(v12[54]._os_unfair_lock_opaque) = v22;
              break;
          }
        }
      }

      ++v11;
      if (!--v7)
      {
        goto LABEL_23;
      }
    }
  }

  bzero(v60, 0x328CuLL);
  decodeRankingScores(*&v12[52]._os_unfair_lock_opaque, LOWORD(v12[54]._os_unfair_lock_opaque), v60);
  if (os_unfair_lock_opaque_low)
  {
    v24 = v12 + 19;
    do
    {
      v25 = v24->_os_unfair_lock_opaque;
      ++v24;
      v26 = v25;
      v27 = LOWORD(v13->_os_unfair_lock_opaque);
      v13 = (v13 + 2);
      v60[v27] = v26;
      --os_unfair_lock_opaque_low;
    }

    while (os_unfair_lock_opaque_low);
  }

  for (LOWORD(v12[51]._os_unfair_lock_opaque) = 0; v7; --v7)
  {
    v29 = *v9++;
    v28 = v29;
    v30 = *v11;
    v60[v29] = *v11;
    if ((sFeatureFlags[v29] & 0x20) != 0)
    {
      if (v28 > 1930)
      {
        switch(v28)
        {
          case 1931:
            v31 = 1;
            goto LABEL_44;
          case 1965:
            v31 = 4;
            goto LABEL_44;
          case 1966:
            v31 = 2;
            goto LABEL_44;
        }
      }

      else
      {
        switch(v28)
        {
          case 1852:
            v31 = 16;
            goto LABEL_44;
          case 1853:
            v31 = 8;
            goto LABEL_44;
          case 1854:
            v31 = 32;
LABEL_44:
            BYTE2(v12[54]._os_unfair_lock_opaque) |= v31;
            v32 = v31 >> 1;
            if (v30 == 1.0)
            {
              v33 = HIBYTE(v12[54]._os_unfair_lock_opaque) | v32;
            }

            else
            {
              v33 = HIBYTE(v12[54]._os_unfair_lock_opaque) & ~v32;
            }

            HIBYTE(v12[54]._os_unfair_lock_opaque) = v33;
            break;
        }
      }
    }

    ++v11;
  }

  v34 = *&v12[52]._os_unfair_lock_opaque;
  v35 = __src;
  bzero(__src, 0x1F978uLL);
  v36 = 0;
  while (1)
  {
    v37 = &v60[v36];
    v38 = *v37;
    if (*v37 == sDefaultScores[v36])
    {
      v39 = 128;
      goto LABEL_54;
    }

    if (v38 == 0.0)
    {
      break;
    }

    if (v38 == 2147500000.0 || ((v38 - 1) <= 0x3D ? (v45 = v38 == v38) : (v45 = 0), v45))
    {
      if (v38 == 2147500000.0)
      {
        v54 = 127;
      }

      else
      {
        v54 = v38 & 0x3F | 0x40;
      }

      *v35++ = v54;
      goto LABEL_68;
    }

    if (v36 > 0xCA1u)
    {
      v51 = 0;
      v46 = 0;
LABEL_95:
      v53 = v35 + 1;
      LOBYTE(v52) = v46;
      goto LABEL_96;
    }

    v46 = 0;
    v47 = v36 + 1;
    while (1)
    {
      v48 = *&v60[v47];
      if (v48 == 2147500000.0)
      {
        break;
      }

      if (v48 == 0.0 || v48 == sDefaultScores[v47])
      {
        break;
      }

      if ((v48 - 1) <= 0x3D && v48 == v48)
      {
        break;
      }

      ++v46;
      if (++v47 == 3235)
      {
        v46 = 3234 - v36;
        break;
      }
    }

    v51 = v46;
    if (v46 < 0x20u)
    {
      goto LABEL_95;
    }

    v52 = (v46 >> 8) & 0x1F | 0x20;
    v53 = v35 + 2;
    v35[1] = v46;
LABEL_96:
    *v35 = v52;
    v55 = 4 * v51 + 4;
    memcpy(v53, v37, v55);
    v35 = &v53[v55];
    v36 += v46;
LABEL_68:
    if (++v36 >= 0xCA3u)
    {
      goto LABEL_98;
    }
  }

  v39 = 192;
LABEL_54:
  if ((v36 + 1) != 3235)
  {
    v40 = 0;
    v41 = (v36 + 1);
    while (v41 <= 0xCA2)
    {
      v42 = *&v60[v41];
      if (v42 == sDefaultScores[v41])
      {
        v43 = 128;
      }

      else
      {
        if (v42 != 0.0)
        {
          break;
        }

        v43 = 192;
      }

      if (v43 != v39)
      {
        break;
      }

      --v40;
      ++v41;
      if (v40 == -2047)
      {
        LODWORD(v44) = 2047;
LABEL_65:
        *v35 = v39 | BYTE1(v44) & 0x1F | 0x20;
        v35[1] = v44;
        v35 += 2;
        goto LABEL_67;
      }
    }

    v44 = -v40;
    if (v44 >= 0x20)
    {
      goto LABEL_65;
    }

    *v35++ = v39 | v44;
LABEL_67:
    v36 += v44;
    goto LABEL_68;
  }

  *v35++ = v39;
LABEL_98:
  v56 = v35 - __src;
  v57 = malloc_type_malloc(v56, 0x23F7DD91uLL);
  memcpy(v57, __src, v56);
  *&v12[52]._os_unfair_lock_opaque = v57;
  LOWORD(v12[54]._os_unfair_lock_opaque) = v56;
  os_unfair_lock_unlock(v12 + 2);
  free(v34);
  v58 = *MEMORY[0x1E69E9840];
}

- (void)restoreFromJazzkonPlusHacks:(float *)hacks
{
  v5 = hacks[372];
  if ([(NSString *)self->_bundleID isEqualToString:@"com.apple.Preferences"])
  {
    [(PRSL2FeatureVector *)self swapAllLastUsedDateFeatures:hacks];
    [(PRSL2FeatureVector *)self swapAllRecenyFeatures:hacks];
  }

  else if ([(NSString *)self->_bundleID isEqualToString:@"com.apple.MobileAddressBook"])
  {
    [(PRSL2FeatureVector *)self swapAllLastUsedDateFeatures:hacks];
  }

  if (v5 == 0.0 && (![(NSString *)self->_bundleID hasPrefix:@"com.apple."]|| [(NSString *)self->_bundleID isEqualToString:@"com.apple.Preferences"]|| [(NSString *)self->_bundleID isEqualToString:@"com.apple.CoreSuggestions"]))
  {
    [(PRSL2FeatureVector *)self swapFeature:1911 withSubstitute:2355 scores:hacks];
  }

  if ([(NSString *)self->_bundleID isEqualToString:@"com.apple.mobilecal"]&& hacks[2354] != -1.0)
  {
    [(PRSL2FeatureVector *)self swapFeature:42 withSubstitute:2354 scores:hacks];
  }

  if ([(NSString *)self->_bundleID isEqualToString:@"com.apple.mobilenotes"]|| [(NSString *)self->_bundleID isEqualToString:@"com.apple.MobileAddressBook"])
  {
    [(PRSL2FeatureVector *)self swapFeature:42 withSubstitute:2354 scores:hacks];
  }

  if ([(NSString *)self->_bundleID isEqualToString:@"com.apple.mobilenotes"])
  {
    if (hacks[2338] != -1.0)
    {
      [(PRSL2FeatureVector *)self swapFeature:10 withSubstitute:2338 scores:hacks];
    }

    if (hacks[2339] != -1.0)
    {
      [(PRSL2FeatureVector *)self swapFeature:8 withSubstitute:2339 scores:hacks];
    }

    if (hacks[2340] != -1.0)
    {
      [(PRSL2FeatureVector *)self swapFeature:6 withSubstitute:2340 scores:hacks];
    }
  }

  if ([(NSString *)self->_bundleID isEqualToString:@"com.apple.application"]|| [(NSString *)self->_bundleID isEqualToString:@"com.apple.Preferences"]|| [(NSString *)self->_bundleID isEqualToString:@"com.apple.DocumentsApp"]|| [(NSString *)self->_bundleID isEqualToString:@"com.apple.FileProvider.LocalStorage"]|| [(NSString *)self->_bundleID isEqualToString:@"com.apple.CloudDocs.MobileDocumentsFileProvider"])
  {
    if (hacks[2354] == 1.0)
    {
      [(PRSL2FeatureVector *)self swapFeature:42 withSubstitute:2354 scores:hacks];
    }
  }

  else if ([(NSString *)self->_bundleID isEqualToString:@"com.apple.Passbook"])
  {
    [(PRSL2FeatureVector *)self swapAllContentCreationDateFeatures:hacks];
  }

  if ([(NSString *)self->_bundleID isEqualToString:@"com.apple.photos"]&& hacks[3085] != -1.0)
  {
    [(PRSL2FeatureVector *)self swapFeature:204 withSubstitute:3085 scores:hacks];
  }

  if (v5 != 0.0)
  {

    [(PRSL2FeatureVector *)self swapFeature:377 withSubstitute:378 scores:hacks];
  }
}

- (void)swapAllContentCreationDateFeatures:(float *)features
{
  [(PRSL2FeatureVector *)self swapFeature:1874 withSubstitute:2341 scores:features];
  [(PRSL2FeatureVector *)self swapFeature:9 withSubstitute:2342 scores:features];
  [(PRSL2FeatureVector *)self swapFeature:3 withSubstitute:2343 scores:features];
  [(PRSL2FeatureVector *)self swapFeature:7 withSubstitute:2344 scores:features];

  [(PRSL2FeatureVector *)self swapFeature:5 withSubstitute:2345 scores:features];
}

- (void)swapAllLastUsedDateFeatures:(float *)features
{
  [(PRSL2FeatureVector *)self swapFeature:10 withSubstitute:2338 scores:features];
  [(PRSL2FeatureVector *)self swapFeature:8 withSubstitute:2339 scores:features];

  [(PRSL2FeatureVector *)self swapFeature:6 withSubstitute:2340 scores:features];
}

- (void)swapAllRecenyFeatures:(float *)features
{
  [(PRSL2FeatureVector *)self swapFeature:1972 withSubstitute:2346 scores:features];
  [(PRSL2FeatureVector *)self swapFeature:1973 withSubstitute:2347 scores:features];
  [(PRSL2FeatureVector *)self swapFeature:1974 withSubstitute:2348 scores:features];
  [(PRSL2FeatureVector *)self swapFeature:1975 withSubstitute:2349 scores:features];
  [(PRSL2FeatureVector *)self swapFeature:1976 withSubstitute:2350 scores:features];
  [(PRSL2FeatureVector *)self swapFeature:1977 withSubstitute:2351 scores:features];
  [(PRSL2FeatureVector *)self swapFeature:1978 withSubstitute:2352 scores:features];

  [(PRSL2FeatureVector *)self swapFeature:1979 withSubstitute:2353 scores:features];
}

- (void)swapFeature:(unsigned __int16)feature withSubstitute:(unsigned __int16)substitute scores:(float *)scores
{
  v5 = scores[substitute];
  if (v5 != -1.0)
  {
    v6 = scores[feature];
    scores[feature] = v5;
    scores[substitute] = v6;
  }
}

- (BOOL)serializeToJSON:(void *)n options:(int64_t)options
{
  v4 = (MEMORY[0x1EEE9AC00])(self, a2, n, options);
  v6 = v5;
  v8 = v7;
  v9 = v4;
  v71 = *MEMORY[0x1E69E9840];
  bzero(v70, 0x328CuLL);
  v10 = [v9 getAllScores:v70];
  if ((v6 & 2) == 0)
  {
    [v9 restoreFromJazzkonPlusHacks:v10];
  }

  v11 = -1;
  v12 = &byte_1E8596CA2;
  v13 = 3235;
  do
  {
    v14 = *(v10 + 4 * *(v12 - 1));
    if (*(v12 - 1) == 363)
    {
      v11 = v14;
    }

    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }

    if ((*(v12 - 1) - 2397) < 0x20u)
    {
      goto LABEL_26;
    }

    v17 = fabsf(v14 + 1.0);
    if (v17 <= 0.001)
    {
      goto LABEL_26;
    }

    v18 = *(v12 - 1);
    if ((v18 - 397) < 2 || v18 == 2391)
    {
      goto LABEL_26;
    }

    if ((*v12 & 0x10) != 0)
    {
      LODWORD(v17) = *(v10 + 4 * *(v12 - 1));
      v19 = 4;
      goto LABEL_31;
    }

    if ((*v12 & 8) != 0)
    {
      goto LABEL_29;
    }

    if ((*v12 & 4) != 0)
    {
      goto LABEL_30;
    }

    if ((*v12 & 0x40) != 0)
    {
      if (v14 <= 30.0)
      {
LABEL_29:
        LODWORD(v17) = *(v10 + 4 * *(v12 - 1));
        v19 = 2;
      }

      else
      {
LABEL_30:
        LODWORD(v17) = *(v10 + 4 * *(v12 - 1));
        v19 = 1;
      }

LABEL_31:
      [PRSRankingUtilities floatValue:v19 withSigFigs:v17];
      v14 = v20;
    }

LABEL_7:
    json_writer_add_key(v8, [*(v12 - 10) UTF8String], 0xFFFFFFFFFFFFFFFFLL, 1);
    if (v14 == 0.0 || v14 == 1.0 || v14 == -1.0)
    {
      json_writer_add_int64(v8, v14);
    }

    else
    {
      json_writer_add_double(v8, v14);
    }

LABEL_26:
    v12 += 16;
    --v13;
  }

  while (v13);
  WeakRetained = objc_loadWeakRetained((v9 + 280));

  if (WeakRetained && v11 >= 1)
  {
    for (i = 0; i != v11; ++i)
    {
      v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"attrCountWordQueryTerm%lu", i];
      json_writer_add_key(v8, [v23 UTF8String], 0xFFFFFFFFFFFFFFFFLL, 1);
      v24 = objc_loadWeakRetained((v9 + 280));
      json_writer_add_uint64(v8, [v24 attrCountWord:i]);

      v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"attrCountWord2QueryTerm%lu", i];
      json_writer_add_key(v8, [v25 UTF8String], 0xFFFFFFFFFFFFFFFFLL, 1);
      v26 = objc_loadWeakRetained((v9 + 280));
      json_writer_add_uint64(v8, [v26 attrCountWord2:i]);

      v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"attrCountWord3QueryTerm%lu", i];
      json_writer_add_key(v8, [v27 UTF8String], 0xFFFFFFFFFFFFFFFFLL, 1);
      v28 = objc_loadWeakRetained((v9 + 280));
      json_writer_add_uint64(v8, [v28 attrCountWord3:i]);

      v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"attrCountPrefixQueryTerm%lu", i];
      json_writer_add_key(v8, [v29 UTF8String], 0xFFFFFFFFFFFFFFFFLL, 1);
      v30 = objc_loadWeakRetained((v9 + 280));
      json_writer_add_uint64(v8, [v30 attrCountPrefix:i]);

      v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"attrCountPrefix2QueryTerm%lu", i];
      json_writer_add_key(v8, [v31 UTF8String], 0xFFFFFFFFFFFFFFFFLL, 1);
      v32 = objc_loadWeakRetained((v9 + 280));
      json_writer_add_uint64(v8, [v32 attrCountPrefix2:i]);

      v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"attrCountPrefix3QueryTerm%lu", i];
      json_writer_add_key(v8, [v33 UTF8String], 0xFFFFFFFFFFFFFFFFLL, 1);
      v34 = objc_loadWeakRetained((v9 + 280));
      json_writer_add_uint64(v8, [v34 attrCountPrefix3:i]);

      v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"attrCountPrefixLastQueryTerm%lu", i];
      json_writer_add_key(v8, [v35 UTF8String], 0xFFFFFFFFFFFFFFFFLL, 1);
      v36 = objc_loadWeakRetained((v9 + 280));
      json_writer_add_uint64(v8, [v36 attrCountPrefixLast:i]);

      v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"attrCountPrefixLast2QueryTerm%lu", i];
      json_writer_add_key(v8, [v37 UTF8String], 0xFFFFFFFFFFFFFFFFLL, 1);
      v38 = objc_loadWeakRetained((v9 + 280));
      json_writer_add_uint64(v8, [v38 attrCountPrefixLast2:i]);

      v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"attrCountPrefixLast3QueryTerm%lu", i];
      json_writer_add_key(v8, [v39 UTF8String], 0xFFFFFFFFFFFFFFFFLL, 1);
      v40 = objc_loadWeakRetained((v9 + 280));
      json_writer_add_uint64(v8, [v40 attrCountPrefixLast3:i]);
    }
  }

  if (!*(v9 + 248))
  {
    goto LABEL_48;
  }

  json_writer_add_key(v8, "bundleID", 8uLL, 1);
  v41 = *(v9 + 248);
  v42 = objc_loadWeakRetained((v9 + 280));
  bundleIDType = [v42 bundleIDType];

  if ((bundleIDType & 0x2000000) == 0)
  {
    goto LABEL_47;
  }

  v44 = objc_loadWeakRetained((v9 + 280));
  bundleIDType2 = [v44 bundleIDType];

  if ((bundleIDType2 & 0x4000000) != 0)
  {
    v52 = SSSectionIdentifierSyndicatedPhotosMessages;
LABEL_46:
    v53 = *v52;

    v41 = v53;
    goto LABEL_47;
  }

  v46 = objc_loadWeakRetained((v9 + 280));
  bundleIDType3 = [v46 bundleIDType];

  if ((bundleIDType3 & 0x8000000) != 0)
  {
    v52 = SSSectionIdentifierSyndicatedPhotosNotes;
    goto LABEL_46;
  }

  v48 = objc_loadWeakRetained((v9 + 280));
  bundleIDType4 = [v48 bundleIDType];

  if ((bundleIDType4 & 0x10000000) != 0)
  {
    v52 = SSSectionIdentifierSyndicatedPhotosFiles;
    goto LABEL_46;
  }

  v50 = objc_loadWeakRetained((v9 + 280));
  bundleIDType5 = [v50 bundleIDType];

  if ((bundleIDType5 & 0x20000000) != 0)
  {
    v52 = SSSectionIdentifierSyndicatedPhotosFromPhotos;
    goto LABEL_46;
  }

LABEL_47:
  json_writer_add_string(v8, [(__CFString *)v41 UTF8String], 0xFFFFFFFFFFFFFFFFLL, 1);

LABEL_48:
  if ((v6 & 1) == 0)
  {
    json_writer_add_key(v8, "l2Score", 7uLL, 1);
    json_writer_add_double(v8, *(v9 + 220));
    json_writer_add_key(v8, "l2ScoreExperimental", 0x13uLL, 1);
    json_writer_add_double(v8, *(v9 + 224));
  }

  json_writer_add_key(v8, "lscore_0_2", 0xAuLL, 1);
  json_writer_add_uint64(v8, *(v9 + 480));
  json_writer_add_key(v8, "lscore_1_2", 0xAuLL, 1);
  json_writer_add_uint64(v8, *(v9 + 488));
  if ((v6 & 4) == 0)
  {
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    allKeys = [*(v9 + 272) allKeys];
    v55 = [allKeys countByEnumeratingWithState:&v65 objects:v69 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v66;
      do
      {
        for (j = 0; j != v56; ++j)
        {
          if (*v66 != v57)
          {
            objc_enumerationMutation(allKeys);
          }

          v59 = *(*(&v65 + 1) + 8 * j);
          v60 = [*(v9 + 272) objectForKey:v59];
          [v60 floatValue];
          v62 = v61;
          json_writer_add_key(v8, [v59 UTF8String], 0xFFFFFFFFFFFFFFFFLL, 1);
          json_writer_add_double(v8, v62);
        }

        v56 = [allKeys countByEnumeratingWithState:&v65 objects:v69 count:16];
      }

      while (v56);
    }
  }

  v63 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)dealloc
{
  free(self->_featureData);
  v3.receiver = self;
  v3.super_class = PRSL2FeatureVector;
  [(PRSL2FeatureVector *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  os_unfair_lock_lock(&self->_featureDataLock);
  v4 = objc_alloc(objc_opt_class());
  featureData = self->_featureData;
  featureDataSize = self->_featureDataSize;
  flags = self->_flags;
  values = self->_values;
  v9 = *&self->_cache.scores[20];
  v10 = *&self->_cache.scores[28];
  v27[10] = *&self->_cache.scores[24];
  v27[11] = v10;
  v28 = *&self->_cache.count;
  v11 = *&self->_cache.scores[4];
  v12 = *&self->_cache.scores[12];
  v27[6] = *&self->_cache.scores[8];
  v27[7] = v12;
  v27[8] = *&self->_cache.scores[16];
  v27[9] = v9;
  v13 = *&self->_cache.features[8];
  v14 = *&self->_cache.features[24];
  v27[2] = *&self->_cache.features[16];
  v27[3] = v14;
  v27[4] = *self->_cache.scores;
  v27[5] = v11;
  v27[0] = *self->_cache.features;
  v27[1] = v13;
  v15 = [v4 initWithCache:v27 featureData:featureData featureDataSize:featureDataSize flags:flags values:values];
  [(PRSL2FeatureVector *)self originalL2Score];
  [v15 setOriginalL2Score:?];
  [(PRSL2FeatureVector *)self experimentalScore];
  [v15 setExperimentalScore:?];
  [(PRSL2FeatureVector *)self withinBundleScore];
  [v15 setWithinBundleScore:?];
  bundleID = [(PRSL2FeatureVector *)self bundleID];
  [v15 setBundleID:bundleID];

  device_type = [(PRSL2FeatureVector *)self device_type];
  [v15 setDevice_type:device_type];

  searchThroughCEPData = [(PRSL2FeatureVector *)self searchThroughCEPData];
  v19 = [searchThroughCEPData copy];
  [v15 setSearchThroughCEPData:v19];

  indexScore = [(PRSL2FeatureVector *)self indexScore];
  [v15 setIndexScore:{indexScore, v21}];
  [v15 setDisplayNameFuzzySpecialInsertion:{-[PRSL2FeatureVector displayNameFuzzySpecialInsertion](self, "displayNameFuzzySpecialInsertion")}];
  [v15 setIsSiriAction:{-[PRSL2FeatureVector isSiriAction](self, "isSiriAction")}];
  [v15 setIsAppInDock:{-[PRSL2FeatureVector isAppInDock](self, "isAppInDock")}];
  roundTripFeatures = [(PRSL2FeatureVector *)self roundTripFeatures];
  if (roundTripFeatures)
  {
    v23 = objc_alloc(MEMORY[0x1E695DF20]);
    roundTripFeatures2 = [(PRSL2FeatureVector *)self roundTripFeatures];
    v25 = [v23 initWithDictionary:roundTripFeatures2 copyItems:1];
    [v15 setRoundTripFeatures:v25];
  }

  else
  {
    [v15 setRoundTripFeatures:0];
  }

  os_unfair_lock_unlock(&self->_featureDataLock);
  return v15;
}

- (PRSRankingItem)rankingItem
{
  WeakRetained = objc_loadWeakRetained(&self->_rankingItem);

  return WeakRetained;
}

@end