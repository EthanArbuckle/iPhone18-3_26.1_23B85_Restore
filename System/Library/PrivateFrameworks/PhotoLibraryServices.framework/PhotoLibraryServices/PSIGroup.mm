@interface PSIGroup
+ (void)_getTokenRanges:(_NSRange)a3[8] fromCompressedRanges:(unint64_t)a4[2];
+ (void)getCompressedRanges:(unint64_t)a3[2] fromTokenRanges:(id *)a4 count:(int64_t)a5;
- (BOOL)isEqual:(id)a3;
- (PSIGroup)init;
- (PSIGroup)initWithContentString:(id)a3 normalizedString:(id)a4 lookupIdentifier:(id)a5 category:(signed __int16)a6 groupId:(unint64_t)a7 owningGroupId:(int64_t)a8 score:(double)a9;
- (_NSRange)tokenRangeAtIndex:(unint64_t)a3;
- (id)_tokenRangesDescription;
- (id)description;
- (int)_assetIdsCount;
- (int)_collectionIdsCount;
- (int64_t)compareToGroup:(id)a3;
- (unint64_t)groupIdForObjectLookup;
- (unint64_t)hash;
- (void)_resetTokenRangesForContentString;
- (void)_updateWithIntersectedAssetIds:(__CFArray *)a3;
- (void)_updateWithIntersectedCollectionIds:(__CFArray *)a3;
- (void)dealloc;
- (void)prepareForReuse;
- (void)prepareFromFilenameStatement:(sqlite3_stmt *)a3;
- (void)prepareFromStatement:(sqlite3_stmt *)a3;
- (void)resetIntersectedIds;
- (void)unionCollectionIdsWithGroup:(id)a3;
- (void)unionIdsWithGroup:(id)a3;
- (void)updateWithIntersectedIds:(__CFArray *)a3 searchResultType:(unint64_t)a4;
@end

@implementation PSIGroup

- (void)resetIntersectedIds
{
  intersectedAssetIds = self->_intersectedAssetIds;
  if (intersectedAssetIds)
  {
    CFRelease(intersectedAssetIds);
  }

  intersectedCollectionIds = self->_intersectedCollectionIds;
  if (intersectedCollectionIds)
  {
    CFRelease(intersectedCollectionIds);
  }

  self->_intersectedAssetIds = 0;
  self->_intersectedCollectionIds = 0;
}

- (void)_updateWithIntersectedCollectionIds:(__CFArray *)a3
{
  if (self->_intersectedCollectionIds)
  {

    [PLScopedSearchUtilities intersectSortedArray:&self->_intersectedCollectionIds withOtherSortedArray:a3 intersectionLimit:0];
  }

  else
  {
    self->_intersectedCollectionIds = CFArrayCreateCopy(0, a3);
  }
}

- (void)_updateWithIntersectedAssetIds:(__CFArray *)a3
{
  if (self->_intersectedAssetIds)
  {

    [PLScopedSearchUtilities intersectSortedArray:&self->_intersectedAssetIds withOtherSortedArray:a3 intersectionLimit:0];
  }

  else
  {
    self->_intersectedAssetIds = CFArrayCreateCopy(0, a3);
  }
}

- (void)updateWithIntersectedIds:(__CFArray *)a3 searchResultType:(unint64_t)a4
{
  if (a4)
  {
    if (a4)
    {

      [(PSIGroup *)self _updateWithIntersectedAssetIds:a3];
    }

    else if ((a4 & 2) != 0)
    {

      [(PSIGroup *)self _updateWithIntersectedCollectionIds:a3];
    }
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PSIGroup.m" lineNumber:296 description:{@"Invalid parameter not satisfying: %@", @"searchResultType != (PLSearchResultTypeAsset & PLSearchResultTypeCollection)"}];
  }
}

- (void)_resetTokenRangesForContentString
{
  self->_tokenRanges[0] = 0u;
  self->_tokenRanges[1] = 0u;
  self->_tokenRanges[2] = 0u;
  self->_tokenRanges[3] = 0u;
  self->_tokenRanges[4] = 0u;
  self->_tokenRanges[5] = 0u;
  self->_tokenRanges[6] = 0u;
  self->_tokenRanges[7] = 0u;
  self->_tokenRanges[0].length = [(NSMutableString *)self->_contentString length];
  self->_tokenRangesCount = 1;
}

- (void)unionIdsWithGroup:(id)a3
{
  v4 = a3;
  assetIds = self->_assetIds;
  v33 = v4;
  v6 = [v4 assetIds];
  if (!assetIds || (Count = CFArrayGetCount(assetIds)) == 0)
  {
    v18 = v6;
LABEL_20:
    Mutable = CFRetain(v18);
    goto LABEL_21;
  }

  if (!v6 || (v8 = Count, (v9 = CFArrayGetCount(v6)) == 0))
  {
    v18 = assetIds;
    goto LABEL_20;
  }

  v10 = v9;
  Mutable = CFArrayCreateMutable(0, v9 + v8, 0);
  v12 = 0;
  v13 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(assetIds, v12);
    v15 = CFArrayGetValueAtIndex(v6, v13);
    if (ValueAtIndex < v15)
    {
      v16 = ValueAtIndex;
    }

    else
    {
      v16 = v15;
    }

    if (ValueAtIndex <= v15)
    {
      ++v12;
    }

    if (ValueAtIndex >= v15)
    {
      ++v13;
    }

    CFArrayAppendValue(Mutable, v16);
  }

  while (v8 > v12 && v10 > v13);
  v35.location = v12;
  v35.length = v8 - v12;
  CFArrayAppendArray(Mutable, assetIds, v35);
  v36.length = v10 - v13;
  v36.location = v13;
  CFArrayAppendArray(Mutable, v6, v36);
LABEL_21:
  [(PSIGroup *)self setAssetIds:CFAutorelease(Mutable)];
  collectionIds = self->_collectionIds;
  v20 = [v33 collectionIds];
  if (!collectionIds || (v21 = CFArrayGetCount(collectionIds)) == 0)
  {
    v32 = v20;
LABEL_40:
    v25 = CFRetain(v32);
    goto LABEL_41;
  }

  if (!v20 || (v22 = v21, (v23 = CFArrayGetCount(v20)) == 0))
  {
    v32 = collectionIds;
    goto LABEL_40;
  }

  v24 = v23;
  v25 = CFArrayCreateMutable(0, v23 + v22, 0);
  v26 = 0;
  v27 = 0;
  do
  {
    v28 = CFArrayGetValueAtIndex(collectionIds, v26);
    v29 = CFArrayGetValueAtIndex(v20, v27);
    if (v28 < v29)
    {
      v30 = v28;
    }

    else
    {
      v30 = v29;
    }

    if (v28 <= v29)
    {
      ++v26;
    }

    if (v28 >= v29)
    {
      ++v27;
    }

    CFArrayAppendValue(v25, v30);
  }

  while (v22 > v26 && v24 > v27);
  v37.location = v26;
  v37.length = v22 - v26;
  CFArrayAppendArray(v25, collectionIds, v37);
  v38.length = v24 - v27;
  v38.location = v27;
  CFArrayAppendArray(v25, v20, v38);
LABEL_41:
  [(PSIGroup *)self setCollectionIds:CFAutorelease(v25)];
}

- (void)unionCollectionIdsWithGroup:(id)a3
{
  collectionIds = self->_collectionIds;
  v5 = [a3 collectionIds];
  if (!collectionIds || (Count = CFArrayGetCount(collectionIds)) == 0)
  {
    v17 = v5;
LABEL_20:
    Mutable = CFRetain(v17);
    goto LABEL_21;
  }

  if (!v5 || (v7 = Count, (v8 = CFArrayGetCount(v5)) == 0))
  {
    v17 = collectionIds;
    goto LABEL_20;
  }

  v9 = v8;
  Mutable = CFArrayCreateMutable(0, v8 + v7, 0);
  v11 = 0;
  v12 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(collectionIds, v11);
    v14 = CFArrayGetValueAtIndex(v5, v12);
    if (ValueAtIndex < v14)
    {
      v15 = ValueAtIndex;
    }

    else
    {
      v15 = v14;
    }

    if (ValueAtIndex <= v14)
    {
      ++v11;
    }

    if (ValueAtIndex >= v14)
    {
      ++v12;
    }

    CFArrayAppendValue(Mutable, v15);
  }

  while (v7 > v11 && v9 > v12);
  v20.location = v11;
  v20.length = v7 - v11;
  CFArrayAppendArray(Mutable, collectionIds, v20);
  v21.length = v9 - v12;
  v21.location = v12;
  CFArrayAppendArray(Mutable, v5, v21);
LABEL_21:
  v18 = CFAutorelease(Mutable);

  [(PSIGroup *)self setCollectionIds:v18];
}

- (unint64_t)groupIdForObjectLookup
{
  IsSynonym = PLSearchIndexCategoryIsSynonym(self->_category);
  v4 = &OBJC_IVAR___PSIGroup__groupId;
  if (IsSynonym)
  {
    v4 = &OBJC_IVAR___PSIGroup__owningGroupId;
  }

  return *(&self->super.super.isa + *v4);
}

- (void)prepareFromFilenameStatement:(sqlite3_stmt *)a3
{
  v9.receiver = self;
  v9.super_class = PSIGroup;
  [(PSIReusableObject *)&v9 prepareFromStatement:?];
  self->_groupId = sqlite3_column_int64(a3, 0);
  self->_category = 2100;
  self->_owningGroupId = 0;
  v5 = sqlite3_column_text(a3, 1);
  v6 = sqlite3_column_text(a3, 2);
  self->_compressedRanges[0] = sqlite3_column_int64(a3, 3);
  self->_compressedRanges[1] = sqlite3_column_int64(a3, 4);
  CFStringAppendCString(self->_contentString, v5, 0x8000100u);
  CFStringAppendCString(self->_normalizedString, v6, 0x8000100u);
  [objc_opt_class() _getTokenRanges:self->_tokenRanges fromCompressedRanges:self->_compressedRanges];
  v7 = 0;
  self->_tokenRangesCount = 8;
  v8 = 64;
  while (*(&self->super.super.isa + v8))
  {
    ++v7;
    v8 += 16;
    if (v7 == 8)
    {
      goto LABEL_6;
    }
  }

  self->_tokenRangesCount = v7;
LABEL_6:
  [(PSIReusableObject *)self didPrepareFromStatement:a3];
}

- (void)prepareFromStatement:(sqlite3_stmt *)a3
{
  v10.receiver = self;
  v10.super_class = PSIGroup;
  [(PSIReusableObject *)&v10 prepareFromStatement:?];
  self->_groupId = sqlite3_column_int64(a3, 0);
  self->_category = sqlite3_column_int(a3, 1);
  self->_owningGroupId = sqlite3_column_int64(a3, 2);
  v5 = sqlite3_column_text(a3, 3);
  v6 = sqlite3_column_text(a3, 4);
  v7 = sqlite3_column_text(a3, 5);
  self->_score = sqlite3_column_double(a3, 6);
  self->_compressedRanges[0] = sqlite3_column_int64(a3, 7);
  self->_compressedRanges[1] = sqlite3_column_int64(a3, 8);
  CFStringAppendCString(self->_contentString, v5, 0x8000100u);
  CFStringAppendCString(self->_normalizedString, v6, 0x8000100u);
  CFStringAppendCString(self->_lookupIdentifier, v7, 0x8000100u);
  [objc_opt_class() _getTokenRanges:self->_tokenRanges fromCompressedRanges:self->_compressedRanges];
  v8 = 0;
  self->_tokenRangesCount = 8;
  v9 = 64;
  while (*(&self->super.super.isa + v9))
  {
    ++v8;
    v9 += 16;
    if (v8 == 8)
    {
      goto LABEL_6;
    }
  }

  self->_tokenRangesCount = v8;
LABEL_6:
  [(PSIReusableObject *)self didPrepareFromStatement:a3];
}

- (void)prepareForReuse
{
  v7.receiver = self;
  v7.super_class = PSIGroup;
  [(PSIReusableObject *)&v7 prepareForReuse];
  self->_groupId = 0;
  self->_category = 0;
  self->_owningGroupId = 0;
  self->_score = 0.0;
  CFStringReplaceAll(self->_contentString, &stru_1F0F06D80);
  CFStringReplaceAll(self->_normalizedString, &stru_1F0F06D80);
  CFStringReplaceAll(self->_lookupIdentifier, &stru_1F0F06D80);
  assetIds = self->_assetIds;
  if (assetIds)
  {
    CFRelease(assetIds);
    self->_assetIds = 0;
  }

  collectionIds = self->_collectionIds;
  if (collectionIds)
  {
    CFRelease(collectionIds);
    self->_collectionIds = 0;
  }

  intersectedAssetIds = self->_intersectedAssetIds;
  if (intersectedAssetIds)
  {
    CFRelease(intersectedAssetIds);
    self->_intersectedAssetIds = 0;
  }

  intersectedCollectionIds = self->_intersectedCollectionIds;
  if (intersectedCollectionIds)
  {
    CFRelease(intersectedCollectionIds);
    self->_intersectedCollectionIds = 0;
  }

  self->_tokenRangesCount = 0;
}

- (_NSRange)tokenRangeAtIndex:(unint64_t)a3
{
  v3 = &self->_tokenRanges[a3];
  location = v3->location;
  length = v3->length;
  result.length = length;
  result.location = location;
  return result;
}

- (int64_t)compareToGroup:(id)a3
{
  v4 = a3;
  category = self->_category;
  v6 = v4[96];
  if (category >= v6)
  {
    if (category <= v6)
    {
      v7 = [(NSMutableString *)self->_contentString compare:*(v4 + 2)];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = PSIGroup;
  return self->_groupId ^ [(PSIGroup *)&v3 hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_groupId == v4->_groupId;
  }

  return v5;
}

- (id)_tokenRangesDescription
{
  v3 = [MEMORY[0x1E696AD60] string];
  [v3 appendString:@"token ranges: "];
  if (self->_tokenRangesCount)
  {
    v4 = 0;
    p_length = &self->_tokenRanges[0].length;
    do
    {
      v6 = NSStringFromRange(*(p_length - 1));
      [v3 appendFormat:@"%@, ", v6];

      ++v4;
      p_length += 2;
    }

    while (v4 < self->_tokenRangesCount);
  }

  return v3;
}

- (int)_collectionIdsCount
{
  collectionIds = self->_collectionIds;
  if (collectionIds)
  {
    LODWORD(collectionIds) = CFArrayGetCount(collectionIds);
  }

  return collectionIds;
}

- (int)_assetIdsCount
{
  assetIds = self->_assetIds;
  if (assetIds)
  {
    LODWORD(assetIds) = CFArrayGetCount(assetIds);
  }

  return assetIds;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = PSIGroup;
  v3 = [(PSIGroup *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" id=%d, category=%d, contentString=%@, normalizedString=%@, lookupIdentifier=%@, score=%f, nAssetIds=%d, nCollectionIds=%d", self->_groupId, self->_category, self->_contentString, self->_normalizedString, self->_lookupIdentifier, *&self->_score, -[PSIGroup _assetIdsCount](self, "_assetIdsCount"), -[PSIGroup _collectionIdsCount](self, "_collectionIdsCount")];

  return v4;
}

- (void)dealloc
{
  assetIds = self->_assetIds;
  if (assetIds)
  {
    CFRelease(assetIds);
  }

  collectionIds = self->_collectionIds;
  if (collectionIds)
  {
    CFRelease(collectionIds);
  }

  intersectedAssetIds = self->_intersectedAssetIds;
  if (intersectedAssetIds)
  {
    CFRelease(intersectedAssetIds);
  }

  intersectedCollectionIds = self->_intersectedCollectionIds;
  if (intersectedCollectionIds)
  {
    CFRelease(intersectedCollectionIds);
  }

  v7.receiver = self;
  v7.super_class = PSIGroup;
  [(PSIGroup *)&v7 dealloc];
}

- (PSIGroup)initWithContentString:(id)a3 normalizedString:(id)a4 lookupIdentifier:(id)a5 category:(signed __int16)a6 groupId:(unint64_t)a7 owningGroupId:(int64_t)a8 score:(double)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v27.receiver = self;
  v27.super_class = PSIGroup;
  v19 = [(PSIReusableObject *)&v27 init];
  if (v19)
  {
    v20 = [v16 mutableCopy];
    contentString = v19->_contentString;
    v19->_contentString = v20;

    v22 = [v17 mutableCopy];
    normalizedString = v19->_normalizedString;
    v19->_normalizedString = v22;

    v24 = [v18 mutableCopy];
    lookupIdentifier = v19->_lookupIdentifier;
    v19->_lookupIdentifier = v24;

    v19->_category = a6;
    v19->_groupId = a7;
    v19->_owningGroupId = a8;
    v19->_score = a9;
    [(PSIGroup *)v19 _resetTokenRangesForContentString];
  }

  return v19;
}

- (PSIGroup)init
{
  v11.receiver = self;
  v11.super_class = PSIGroup;
  v2 = [(PSIReusableObject *)&v11 init];
  if (v2)
  {
    v3 = *MEMORY[0x1E695E480];
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    contentString = v2->_contentString;
    v2->_contentString = Mutable;

    v6 = CFStringCreateMutable(v3, 0);
    normalizedString = v2->_normalizedString;
    v2->_normalizedString = v6;

    v8 = CFStringCreateMutable(v3, 0);
    lookupIdentifier = v2->_lookupIdentifier;
    v2->_lookupIdentifier = v8;
  }

  return v2;
}

+ (void)_getTokenRanges:(_NSRange)a3[8] fromCompressedRanges:(unint64_t)a4[2]
{
  for (i = 0; i != 8; ++i)
  {
    v7 = lldiv(i, 4);
    v8 = &a4[v7.quot];
    v9 = vdupq_n_s64(16 * v7.rem);
    v10 = vld1q_dup_f64(v8);
    v11 = vandq_s8(vshlq_u64(xmmword_19C60AFE0, v9), v10);
    v9.i64[1] = (16 * v7.rem) | 8;
    a3[i] = vshlq_u64(v11, vnegq_s64(v9));
  }
}

+ (void)getCompressedRanges:(unint64_t)a3[2] fromTokenRanges:(id *)a4 count:(int64_t)a5
{
  v6 = 0;
  if (a5 >= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = a5;
  }

  p_var1 = &a4->var1;
  do
  {
    if (v6 >= v7)
    {
      v10 = 0;
      v9 = 0;
    }

    else
    {
      v9 = *(p_var1 - 1);
      v10 = *p_var1;
    }

    v12 = v9 > 256 || v10 > 256;
    v13 = v10;
    v14 = v9;
    v15 = lldiv(v6, 4);
    if (v12)
    {
      v16 = 0;
    }

    else
    {
      v16 = v14;
    }

    v17 = v16 << (16 * LOBYTE(v15.rem));
    if (v12)
    {
      v18 = 0;
    }

    else
    {
      v18 = v13;
    }

    a3[v15.quot] |= v17 | (v18 << ((16 * LOBYTE(v15.rem)) | 8u));
    ++v6;
    p_var1 += 2;
  }

  while (v6 != 8);
}

@end