@interface PXTimelineEntry
+ (id)descriptionForRejectReason:(unint64_t)a3;
+ (id)descriptionForTimelineContentType:(unint64_t)a3;
+ (id)emptyWidgetURLForContentType:(unint64_t)a3 sourceIdentifier:(id)a4;
+ (id)fallbackEntryForAlbumNotFoundWithLocalIdentifier:(id)a3 size:(unint64_t)a4;
+ (id)fallbackEntryForContentType:(unint64_t)a3 sourceIdentifier:(id)a4 size:(unint64_t)a5;
+ (id)placeholderEntryForContentType:(unint64_t)a3;
+ (id)privacyDisclosureEntryForContentType:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (PXTimelineEntry)initWithAlbumFeaturedPhoto:(id)a3 localAlbumIdentifier:(id)a4 andFeaturedPhotoKeyAsset:(id)a5 suggestedCrop:(id)a6;
- (PXTimelineEntry)initWithAsset:(id)a3 suggestedCrop:(id)a4;
- (PXTimelineEntry)initWithFeaturedPhoto:(id)a3 andFeaturedPhotoKeyAsset:(id)a4 suggestedCrop:(id)a5;
- (PXTimelineEntry)initWithMemory:(id)a3 andMemoryKeyAsset:(id)a4;
- (PXTimelineEntry)initWithTitle:(id)a3 subtitle:(id)a4 localIdentifier:(id)a5 assetLocalIdentifier:(id)a6 deeplink:(id)a7 contentType:(unint64_t)a8 sourceIdentifier:(id)a9 relevanceScore:(double)a10 proactiveCriterion:(id)a11 suggestedCrop:(id)a12 rejectReason:(unint64_t)a13;
- (id)_initWithTimelineEntry:(id)a3;
- (id)_localTimeFormatter;
- (id)_utcTimeFormatter;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setEndTime:(id)a3;
- (void)setStartTime:(id)a3;
@end

@implementation PXTimelineEntry

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PXTimelineEntry allocWithZone:a3];

  return [(PXTimelineEntry *)v4 _initWithTimelineEntry:self];
}

- (unint64_t)hash
{
  v2 = [(PXTimelineEntry *)self localIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = v4;
      v8 = [(PXTimelineEntry *)self localIdentifier];
      v9 = [(PXTimelineEntry *)v7 localIdentifier];

      v6 = [v8 isEqualToString:v9];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [(PXTimelineEntry *)self _localTimeFormatter];
  v4 = [(PXTimelineEntry *)self _utcTimeFormatter];
  v5 = [(PXTimelineEntry *)self startTime];
  v6 = [(PXTimelineEntry *)self endTime];
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = MEMORY[0x1E696AEC0];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 stringWithFormat:@"%@ <%p>:\n", v10, self];
  [v7 setObject:v11 forKeyedSubscript:@"id"];

  v12 = [v3 stringFromDate:v5];
  [v7 setObject:v12 forKeyedSubscript:@"StartTime (Local Time)"];

  v13 = [v3 stringFromDate:v6];
  [v7 setObject:v13 forKeyedSubscript:@"EndTime (Local Time)"];

  v14 = [v4 stringFromDate:v5];
  [v7 setObject:v14 forKeyedSubscript:@"StartTime(UTC)"];

  v15 = [v4 stringFromDate:v6];
  [v7 setObject:v15 forKeyedSubscript:@"EndTime(UTC)"];

  v16 = [PXTimelineEntry descriptionForTimelineContentType:[(PXTimelineEntry *)self contentType]];
  [v7 setObject:v16 forKeyedSubscript:@"ContentType"];

  v17 = [(PXTimelineEntry *)self sourceIdentifier];
  [v7 setObject:v17 forKeyedSubscript:@"SourceIdentifier"];

  v18 = [(PXTimelineEntry *)self title];
  v19 = [v18 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];
  [v7 setObject:v19 forKeyedSubscript:@"Title"];

  v20 = [(PXTimelineEntry *)self subtitle];
  v21 = [v20 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];
  [v7 setObject:v21 forKeyedSubscript:@"Subtitle"];

  v22 = [(PXTimelineEntry *)self localIdentifier];
  [v7 setObject:v22 forKeyedSubscript:@"LocalIdentifier"];

  v23 = [(PXTimelineEntry *)self assetLocalIdentifier];
  [v7 setObject:v23 forKeyedSubscript:@"AssetLocalIdentifier"];

  v24 = [(PXTimelineEntry *)self deeplink];
  v25 = [v24 absoluteString];
  [v7 setObject:v25 forKeyedSubscript:@"Deeplink"];

  v26 = MEMORY[0x1E696AD98];
  [(PXTimelineEntry *)self relevanceScore];
  v27 = [v26 numberWithDouble:?];
  [v7 setObject:v27 forKeyedSubscript:@"RelevanceScore"];

  v28 = [(PXTimelineEntry *)self proactiveCriterion];
  [v7 setObject:v28 forKeyedSubscript:@"ProactiveCriterion"];

  v29 = [(PXTimelineEntry *)self suggestedCrop];
  [v7 setObject:v29 forKeyedSubscript:@"SuggestedCrop"];

  v30 = [PXTimelineEntry descriptionForRejectReason:[(PXTimelineEntry *)self rejectReason]];
  [v7 setObject:v30 forKeyedSubscript:@"RejectReason"];

  return v7;
}

- (id)description
{
  v3 = [(PXTimelineEntry *)self _localTimeFormatter];
  v4 = [(PXTimelineEntry *)self startTime];
  v5 = [(PXTimelineEntry *)self endTime];
  v6 = MEMORY[0x1E696AD60];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 stringWithFormat:@"%@ <%p>:\n", v8, self];

  v10 = [v3 stringFromDate:v4];
  [v9 appendFormat:@" StartTime (Local Time): %@\n", v10];

  v11 = [v3 stringFromDate:v5];
  [v9 appendFormat:@" EndTime (Local Time): %@\n", v11];

  [v9 appendFormat:@" StartTime(UTC): %@\n", v4];
  [v9 appendFormat:@" EndTime(UTC): %@\n", v5];
  v12 = [PXTimelineEntry descriptionForTimelineContentType:[(PXTimelineEntry *)self contentType]];
  [v9 appendFormat:@" ContentType: %@\n", v12];

  v13 = [(PXTimelineEntry *)self sourceIdentifier];
  [v9 appendFormat:@" SourceIdentifier: %@\n", v13];

  v14 = [(PXTimelineEntry *)self title];
  v15 = [v14 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];
  [v9 appendFormat:@" Title: %@\n", v15];

  v16 = [(PXTimelineEntry *)self subtitle];
  v17 = [v16 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];
  [v9 appendFormat:@" Subtitle: %@\n", v17];

  v18 = [(PXTimelineEntry *)self localIdentifier];
  [v9 appendFormat:@" LocalIdentifier: %@\n", v18];

  v19 = [(PXTimelineEntry *)self assetLocalIdentifier];
  [v9 appendFormat:@" AssetLocalIdentifier: %@\n", v19];

  v20 = [(PXTimelineEntry *)self deeplink];
  [v9 appendFormat:@" Deeplink: %@\n", v20];

  [(PXTimelineEntry *)self relevanceScore];
  [v9 appendFormat:@" RelevanceScore: %f\n", v21];
  v22 = [(PXTimelineEntry *)self proactiveCriterion];
  [v9 appendFormat:@" ProactiveCriterion: %@\n", v22];

  v23 = [(PXTimelineEntry *)self suggestedCrop];
  [v9 appendFormat:@" SuggestedCrop: %@\n", v23];

  v24 = [PXTimelineEntry descriptionForRejectReason:[(PXTimelineEntry *)self rejectReason]];
  [v9 appendFormat:@" RejectReason: %@\n", v24];

  return v9;
}

- (id)_utcTimeFormatter
{
  if (_utcTimeFormatter_onceToken != -1)
  {
    dispatch_once(&_utcTimeFormatter_onceToken, &__block_literal_global_272);
  }

  v3 = _utcTimeFormatter_utcTimeFormatter;

  return v3;
}

void __36__PXTimelineEntry__utcTimeFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _utcTimeFormatter_utcTimeFormatter;
  _utcTimeFormatter_utcTimeFormatter = v0;

  [_utcTimeFormatter_utcTimeFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v2 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
  [_utcTimeFormatter_utcTimeFormatter setTimeZone:v2];
}

- (id)_localTimeFormatter
{
  if (_localTimeFormatter_onceToken != -1)
  {
    dispatch_once(&_localTimeFormatter_onceToken, &__block_literal_global_50435);
  }

  v3 = _localTimeFormatter_localTimeFormatter;

  return v3;
}

uint64_t __38__PXTimelineEntry__localTimeFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _localTimeFormatter_localTimeFormatter;
  _localTimeFormatter_localTimeFormatter = v0;

  v2 = _localTimeFormatter_localTimeFormatter;

  return [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
}

- (void)setEndTime:(id)a3
{
  v4 = [a3 copy];
  endTime = self->_endTime;
  self->_endTime = v4;
}

- (void)setStartTime:(id)a3
{
  v4 = [a3 copy];
  startTime = self->_startTime;
  self->_startTime = v4;
}

- (id)_initWithTimelineEntry:(id)a3
{
  v3 = a3;
  v17 = [v3 title];
  v4 = [v3 subtitle];
  v5 = [v3 localIdentifier];
  v6 = [v3 assetLocalIdentifier];
  v7 = [v3 deeplink];
  v8 = [v3 contentType];
  v9 = [v3 sourceIdentifier];
  [v3 relevanceScore];
  v11 = v10;
  v12 = [v3 proactiveCriterion];
  v13 = [v3 suggestedCrop];
  v14 = [v3 rejectReason];

  v15 = [(PXTimelineEntry *)self initWithTitle:v17 subtitle:v4 localIdentifier:v5 assetLocalIdentifier:v6 deeplink:v7 contentType:v8 sourceIdentifier:v11 relevanceScore:v9 proactiveCriterion:v12 suggestedCrop:v13 rejectReason:v14];
  return v15;
}

- (PXTimelineEntry)initWithTitle:(id)a3 subtitle:(id)a4 localIdentifier:(id)a5 assetLocalIdentifier:(id)a6 deeplink:(id)a7 contentType:(unint64_t)a8 sourceIdentifier:(id)a9 relevanceScore:(double)a10 proactiveCriterion:(id)a11 suggestedCrop:(id)a12 rejectReason:(unint64_t)a13
{
  v41 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a9;
  v24 = a11;
  v25 = a12;
  v42.receiver = self;
  v42.super_class = PXTimelineEntry;
  v26 = [(PXTimelineEntry *)&v42 init];
  if (v26)
  {
    v27 = [v41 copy];
    title = v26->_title;
    v26->_title = v27;

    v29 = [v19 copy];
    subtitle = v26->_subtitle;
    v26->_subtitle = v29;

    v31 = [v20 copy];
    localIdentifier = v26->_localIdentifier;
    v26->_localIdentifier = v31;

    v33 = [v21 copy];
    assetLocalIdentifier = v26->_assetLocalIdentifier;
    v26->_assetLocalIdentifier = v33;

    v35 = [v22 copy];
    deeplink = v26->_deeplink;
    v26->_deeplink = v35;

    v26->_contentType = a8;
    v37 = [v23 copy];
    sourceIdentifier = v26->_sourceIdentifier;
    v26->_sourceIdentifier = v37;

    v26->_relevanceScore = a10;
    objc_storeStrong(&v26->_proactiveCriterion, a11);
    objc_storeStrong(&v26->_suggestedCrop, a12);
    v26->_rejectReason = a13;
  }

  return v26;
}

- (PXTimelineEntry)initWithAsset:(id)a3 suggestedCrop:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 localIdentifier];
  v9 = [MEMORY[0x1E6978630] uuidFromLocalIdentifier:v8];
  v10 = MEMORY[0x1E695DFF8];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"photos://asset?uuid=%@", v9];
  v12 = [v10 URLWithString:v11];

  v13 = [v7 localIdentifier];

  v14 = [(PXTimelineEntry *)self initWithTitle:0 subtitle:0 localIdentifier:v13 assetLocalIdentifier:v8 deeplink:v12 contentType:3 sourceIdentifier:0.0 relevanceScore:0 proactiveCriterion:0 suggestedCrop:v6 rejectReason:0];
  return v14;
}

- (PXTimelineEntry)initWithAlbumFeaturedPhoto:(id)a3 localAlbumIdentifier:(id)a4 andFeaturedPhotoKeyAsset:(id)a5 suggestedCrop:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [a5 localIdentifier];
  v14 = [MEMORY[0x1E6978630] uuidFromLocalIdentifier:v13];
  v15 = [MEMORY[0x1E6978650] uuidFromLocalIdentifier:v11];
  v16 = MEMORY[0x1E695DFF8];
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"photos://asset?uuid=%@&albumuuid=%@&oneUp=1&source=widget", v14, v15];
  v18 = [v16 URLWithString:v17];

  v19 = [PXProactiveSuggester proactiveCriterionForFeaturedPhoto:v12];
  v20 = [v12 localIdentifier];

  v21 = [(PXTimelineEntry *)self initWithTitle:0 subtitle:0 localIdentifier:v20 assetLocalIdentifier:v13 deeplink:v18 contentType:2 sourceIdentifier:0.0 relevanceScore:v11 proactiveCriterion:v19 suggestedCrop:v10 rejectReason:0];
  return v21;
}

- (PXTimelineEntry)initWithFeaturedPhoto:(id)a3 andFeaturedPhotoKeyAsset:(id)a4 suggestedCrop:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 localIdentifier];
  v12 = MEMORY[0x1E695DFF8];
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"photos://featuredPhoto?identifier=%@&source=widget", v11];
  v14 = [v12 URLWithString:v13];

  v15 = [PXProactiveSuggester proactiveCriterionForFeaturedPhoto:v10];
  v16 = [v10 localIdentifier];

  v17 = [v9 localIdentifier];

  v18 = [(PXTimelineEntry *)self initWithTitle:0 subtitle:0 localIdentifier:v16 assetLocalIdentifier:v17 deeplink:v14 contentType:1 sourceIdentifier:0.0 relevanceScore:0 proactiveCriterion:v15 suggestedCrop:v8 rejectReason:0];
  return v18;
}

- (PXTimelineEntry)initWithMemory:(id)a3 andMemoryKeyAsset:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E695DFF8];
  v8 = MEMORY[0x1E696AEC0];
  v9 = a3;
  v10 = [v9 localIdentifier];
  v11 = [v8 stringWithFormat:@"photos://memory?identifier=%@&source=widget", v10];
  v12 = [v7 URLWithString:v11];

  v13 = MEMORY[0x1E6978918];
  v14 = [MEMORY[0x1E695DF00] date];
  [v13 relevanceScoreForMemory:v9 atDate:v14];
  v16 = v15;

  v17 = [PXProactiveSuggester proactiveCriterionForMemory:v9];
  v18 = [v9 localizedTitle];
  v19 = [v9 localizedSubtitle];
  v20 = [v9 localIdentifier];

  if (v6)
  {
    v21 = [v6 localIdentifier];
    v22 = [(PXTimelineEntry *)self initWithTitle:v18 subtitle:v19 localIdentifier:v20 assetLocalIdentifier:v21 deeplink:v12 contentType:0 sourceIdentifier:v16 relevanceScore:0 proactiveCriterion:v17 suggestedCrop:0 rejectReason:0];
  }

  else
  {
    v22 = [(PXTimelineEntry *)self initWithTitle:v18 subtitle:v19 localIdentifier:v20 assetLocalIdentifier:&stru_1F1741150 deeplink:v12 contentType:0 sourceIdentifier:v16 relevanceScore:0 proactiveCriterion:v17 suggestedCrop:0 rejectReason:0];
  }

  return v22;
}

+ (id)descriptionForRejectReason:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    return @"None";
  }

  else
  {
    return off_1E7731ED0[a3 - 1];
  }
}

+ (id)descriptionForTimelineContentType:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return @"Memory";
  }

  else
  {
    return off_1E7731EB8[a3 - 1];
  }
}

+ (id)privacyDisclosureEntryForContentType:(unint64_t)a3
{
  v5 = PXLocalizedStringFromTable(@"PXTimelinePrivacyDisclosureRequired", @"PhotosUICore");
  v6 = [a1 emptyWidgetURLForContentType:a3 sourceIdentifier:0];
  v7 = [[PXTimelineEntry alloc] initWithTitle:v5 subtitle:@"-------" localIdentifier:&stru_1F1741150 assetLocalIdentifier:&stru_1F1741150 deeplink:v6 contentType:a3 sourceIdentifier:0.0 relevanceScore:0 proactiveCriterion:0 suggestedCrop:0 rejectReason:0];

  return v7;
}

+ (id)fallbackEntryForAlbumNotFoundWithLocalIdentifier:(id)a3 size:(unint64_t)a4
{
  v6 = a3;
  if (a4 > 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = PXLocalizedStringFromTable(off_1E7731E98[a4], @"PhotosUICore");
  }

  v8 = [a1 emptyWidgetURLForContentType:2 sourceIdentifier:v6];
  v9 = [[PXTimelineEntry alloc] initWithTitle:v7 subtitle:0 localIdentifier:&stru_1F1741150 assetLocalIdentifier:&stru_1F1741150 deeplink:v8 contentType:2 sourceIdentifier:0.0 relevanceScore:v6 proactiveCriterion:0 suggestedCrop:0 rejectReason:0];

  return v9;
}

+ (id)fallbackEntryForContentType:(unint64_t)a3 sourceIdentifier:(id)a4 size:(unint64_t)a5
{
  v7 = a4;
  if (a3 == 2)
  {
    v8 = @"PXTimelineNoAlbumContentTitle";
  }

  else if (PLIsFeaturedContentAllowed())
  {
    v8 = @"PXTimelineNoContentTitle";
  }

  else
  {
    v8 = @"PXTimelineDisabledContentTitle";
  }

  v9 = PXLocalizedStringFromTable(v8, @"PhotosUICore");
  v10 = [a1 emptyWidgetURLForContentType:a3 sourceIdentifier:v7];
  v11 = [[PXTimelineEntry alloc] initWithTitle:v9 subtitle:0 localIdentifier:&stru_1F1741150 assetLocalIdentifier:&stru_1F1741150 deeplink:v10 contentType:a3 sourceIdentifier:0.0 relevanceScore:v7 proactiveCriterion:0 suggestedCrop:0 rejectReason:0];

  return v11;
}

+ (id)placeholderEntryForContentType:(unint64_t)a3
{
  v5 = [PXTimelineEntry alloc];
  v6 = [a1 emptyWidgetURLForContentType:a3 sourceIdentifier:0];
  v7 = [(PXTimelineEntry *)v5 initWithTitle:@"---------------" subtitle:@"-------" localIdentifier:&stru_1F1741150 assetLocalIdentifier:&stru_1F1741150 deeplink:v6 contentType:a3 sourceIdentifier:0.0 relevanceScore:0 proactiveCriterion:0 suggestedCrop:0 rejectReason:0];

  return v7;
}

+ (id)emptyWidgetURLForContentType:(unint64_t)a3 sourceIdentifier:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3 < 2)
  {
    v9 = PLIsFeaturedContentAllowed();
    v7 = MEMORY[0x1E695DFF8];
    if (v9)
    {
      v8 = @"photos://contentmode?id=forYou";
    }

    else
    {
      v8 = @"photos://contentmode?id=photos";
    }
  }

  else if (a3 == 2)
  {
    if (v5)
    {
      v10 = [MEMORY[0x1E6978650] uuidFromLocalIdentifier:v5];
      v11 = MEMORY[0x1E695DFF8];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"photos://album?uuid=%@", v10];
      v13 = [v11 URLWithString:v12];

      goto LABEL_13;
    }

    v7 = MEMORY[0x1E695DFF8];
    v8 = @"photos://contentmode?id=albums";
  }

  else
  {
    if (a3 != 3)
    {
      v13 = 0;
      goto LABEL_13;
    }

    v7 = MEMORY[0x1E695DFF8];
    v8 = @"photos://library?zoomLevel=all-photos";
  }

  v13 = [v7 URLWithString:v8];
LABEL_13:

  return v13;
}

@end