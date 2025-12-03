@interface PNTimelineEntry
+ (id)descriptionForRejectReason:(unint64_t)reason;
+ (id)descriptionForTimelineContentType:(unint64_t)type;
+ (id)emptyWidgetURLForContentType:(unint64_t)type sourceIdentifier:(id)identifier;
+ (id)placeholderEntryForContentType:(unint64_t)type;
- (BOOL)isEqual:(id)equal;
- (PNTimelineEntry)initWithAlbumFeaturedPhoto:(id)photo localAlbumIdentifier:(id)identifier andFeaturedPhotoKeyAsset:(id)asset suggestedCrop:(id)crop;
- (PNTimelineEntry)initWithFeaturedPhoto:(id)photo andFeaturedPhotoKeyAsset:(id)asset suggestedCrop:(id)crop;
- (PNTimelineEntry)initWithMemory:(id)memory andMemoryKeyAsset:(id)asset;
- (PNTimelineEntry)initWithTitle:(id)title subtitle:(id)subtitle localIdentifier:(id)identifier assetLocalIdentifier:(id)localIdentifier deeplink:(id)deeplink contentType:(unint64_t)type sourceIdentifier:(id)sourceIdentifier relevanceScore:(double)self0 proactiveCriterion:(id)self1 suggestedCrop:(id)self2 rejectReason:(unint64_t)self3;
- (id)_initWithTimelineEntry:(id)entry;
- (id)_localTimeFormatter;
- (id)_utcTimeFormatter;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setEndTime:(id)time;
- (void)setStartTime:(id)time;
@end

@implementation PNTimelineEntry

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PNTimelineEntry allocWithZone:zone];

  return [(PNTimelineEntry *)v4 _initWithTimelineEntry:self];
}

- (unint64_t)hash
{
  localIdentifier = [(PNTimelineEntry *)self localIdentifier];
  v3 = [localIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = equalCopy;
      localIdentifier = [(PNTimelineEntry *)self localIdentifier];
      localIdentifier2 = [(PNTimelineEntry *)v7 localIdentifier];

      v6 = [localIdentifier isEqualToString:localIdentifier2];
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
  _localTimeFormatter = [(PNTimelineEntry *)self _localTimeFormatter];
  _utcTimeFormatter = [(PNTimelineEntry *)self _utcTimeFormatter];
  startTime = [(PNTimelineEntry *)self startTime];
  endTime = [(PNTimelineEntry *)self endTime];
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = MEMORY[0x1E696AEC0];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 stringWithFormat:@"%@ <%p>:\n", v10, self];
  [v7 setObject:v11 forKeyedSubscript:@"id"];

  v12 = [_localTimeFormatter stringFromDate:startTime];
  [v7 setObject:v12 forKeyedSubscript:@"StartTime (Local Time)"];

  v13 = [_localTimeFormatter stringFromDate:endTime];
  [v7 setObject:v13 forKeyedSubscript:@"EndTime (Local Time)"];

  v14 = [_utcTimeFormatter stringFromDate:startTime];
  [v7 setObject:v14 forKeyedSubscript:@"StartTime(UTC)"];

  v15 = [_utcTimeFormatter stringFromDate:endTime];
  [v7 setObject:v15 forKeyedSubscript:@"EndTime(UTC)"];

  v16 = [PNTimelineEntry descriptionForTimelineContentType:[(PNTimelineEntry *)self contentType]];
  [v7 setObject:v16 forKeyedSubscript:@"ContentType"];

  sourceIdentifier = [(PNTimelineEntry *)self sourceIdentifier];
  [v7 setObject:sourceIdentifier forKeyedSubscript:@"SourceIdentifier"];

  title = [(PNTimelineEntry *)self title];
  v19 = [title stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];
  [v7 setObject:v19 forKeyedSubscript:@"Title"];

  subtitle = [(PNTimelineEntry *)self subtitle];
  v21 = [subtitle stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];
  [v7 setObject:v21 forKeyedSubscript:@"Subtitle"];

  localIdentifier = [(PNTimelineEntry *)self localIdentifier];
  [v7 setObject:localIdentifier forKeyedSubscript:@"LocalIdentifier"];

  assetLocalIdentifier = [(PNTimelineEntry *)self assetLocalIdentifier];
  [v7 setObject:assetLocalIdentifier forKeyedSubscript:@"AssetLocalIdentifier"];

  deeplink = [(PNTimelineEntry *)self deeplink];
  absoluteString = [deeplink absoluteString];
  [v7 setObject:absoluteString forKeyedSubscript:@"Deeplink"];

  v26 = MEMORY[0x1E696AD98];
  [(PNTimelineEntry *)self relevanceScore];
  v27 = [v26 numberWithDouble:?];
  [v7 setObject:v27 forKeyedSubscript:@"RelevanceScore"];

  proactiveCriterion = [(PNTimelineEntry *)self proactiveCriterion];
  [v7 setObject:proactiveCriterion forKeyedSubscript:@"ProactiveCriterion"];

  suggestedCrop = [(PNTimelineEntry *)self suggestedCrop];
  [v7 setObject:suggestedCrop forKeyedSubscript:@"SuggestedCrop"];

  v30 = [PNTimelineEntry descriptionForRejectReason:[(PNTimelineEntry *)self rejectReason]];
  [v7 setObject:v30 forKeyedSubscript:@"RejectReason"];

  return v7;
}

- (id)description
{
  _localTimeFormatter = [(PNTimelineEntry *)self _localTimeFormatter];
  startTime = [(PNTimelineEntry *)self startTime];
  endTime = [(PNTimelineEntry *)self endTime];
  v6 = MEMORY[0x1E696AD60];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 stringWithFormat:@"%@ <%p>:\n", v8, self];

  v10 = [_localTimeFormatter stringFromDate:startTime];
  [v9 appendFormat:@" StartTime (Local Time): %@\n", v10];

  v11 = [_localTimeFormatter stringFromDate:endTime];
  [v9 appendFormat:@" EndTime (Local Time): %@\n", v11];

  [v9 appendFormat:@" StartTime(UTC): %@\n", startTime];
  [v9 appendFormat:@" EndTime(UTC): %@\n", endTime];
  v12 = [PNTimelineEntry descriptionForTimelineContentType:[(PNTimelineEntry *)self contentType]];
  [v9 appendFormat:@" ContentType: %@\n", v12];

  sourceIdentifier = [(PNTimelineEntry *)self sourceIdentifier];
  [v9 appendFormat:@" SourceIdentifier: %@\n", sourceIdentifier];

  title = [(PNTimelineEntry *)self title];
  v15 = [title stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];
  [v9 appendFormat:@" Title: %@\n", v15];

  subtitle = [(PNTimelineEntry *)self subtitle];
  v17 = [subtitle stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];
  [v9 appendFormat:@" Subtitle: %@\n", v17];

  localIdentifier = [(PNTimelineEntry *)self localIdentifier];
  [v9 appendFormat:@" LocalIdentifier: %@\n", localIdentifier];

  assetLocalIdentifier = [(PNTimelineEntry *)self assetLocalIdentifier];
  [v9 appendFormat:@" AssetLocalIdentifier: %@\n", assetLocalIdentifier];

  deeplink = [(PNTimelineEntry *)self deeplink];
  [v9 appendFormat:@" Deeplink: %@\n", deeplink];

  [(PNTimelineEntry *)self relevanceScore];
  [v9 appendFormat:@" RelevanceScore: %f\n", v21];
  proactiveCriterion = [(PNTimelineEntry *)self proactiveCriterion];
  [v9 appendFormat:@" ProactiveCriterion: %@\n", proactiveCriterion];

  suggestedCrop = [(PNTimelineEntry *)self suggestedCrop];
  [v9 appendFormat:@" SuggestedCrop: %@\n", suggestedCrop];

  v24 = [PNTimelineEntry descriptionForRejectReason:[(PNTimelineEntry *)self rejectReason]];
  [v9 appendFormat:@" RejectReason: %@\n", v24];

  return v9;
}

- (id)_utcTimeFormatter
{
  if (_utcTimeFormatter_onceToken != -1)
  {
    dispatch_once(&_utcTimeFormatter_onceToken, &__block_literal_global_247);
  }

  v3 = _utcTimeFormatter_utcTimeFormatter;

  return v3;
}

void __36__PNTimelineEntry__utcTimeFormatter__block_invoke()
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
    dispatch_once(&_localTimeFormatter_onceToken, &__block_literal_global);
  }

  v3 = _localTimeFormatter_localTimeFormatter;

  return v3;
}

uint64_t __38__PNTimelineEntry__localTimeFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _localTimeFormatter_localTimeFormatter;
  _localTimeFormatter_localTimeFormatter = v0;

  v2 = _localTimeFormatter_localTimeFormatter;

  return [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
}

- (void)setEndTime:(id)time
{
  v4 = [time copy];
  endTime = self->_endTime;
  self->_endTime = v4;

  MEMORY[0x1EEE66BB8](v4, endTime, v5);
}

- (void)setStartTime:(id)time
{
  v4 = [time copy];
  startTime = self->_startTime;
  self->_startTime = v4;

  MEMORY[0x1EEE66BB8](v4, startTime, v5);
}

- (id)_initWithTimelineEntry:(id)entry
{
  entryCopy = entry;
  title = [entryCopy title];
  subtitle = [entryCopy subtitle];
  localIdentifier = [entryCopy localIdentifier];
  assetLocalIdentifier = [entryCopy assetLocalIdentifier];
  deeplink = [entryCopy deeplink];
  contentType = [entryCopy contentType];
  sourceIdentifier = [entryCopy sourceIdentifier];
  [entryCopy relevanceScore];
  v11 = v10;
  proactiveCriterion = [entryCopy proactiveCriterion];
  suggestedCrop = [entryCopy suggestedCrop];
  rejectReason = [entryCopy rejectReason];

  v15 = [(PNTimelineEntry *)self initWithTitle:title subtitle:subtitle localIdentifier:localIdentifier assetLocalIdentifier:assetLocalIdentifier deeplink:deeplink contentType:contentType sourceIdentifier:v11 relevanceScore:sourceIdentifier proactiveCriterion:proactiveCriterion suggestedCrop:suggestedCrop rejectReason:rejectReason];
  return v15;
}

- (PNTimelineEntry)initWithTitle:(id)title subtitle:(id)subtitle localIdentifier:(id)identifier assetLocalIdentifier:(id)localIdentifier deeplink:(id)deeplink contentType:(unint64_t)type sourceIdentifier:(id)sourceIdentifier relevanceScore:(double)self0 proactiveCriterion:(id)self1 suggestedCrop:(id)self2 rejectReason:(unint64_t)self3
{
  titleCopy = title;
  subtitleCopy = subtitle;
  identifierCopy = identifier;
  localIdentifierCopy = localIdentifier;
  deeplinkCopy = deeplink;
  sourceIdentifierCopy = sourceIdentifier;
  criterionCopy = criterion;
  cropCopy = crop;
  v42.receiver = self;
  v42.super_class = PNTimelineEntry;
  v26 = [(PNTimelineEntry *)&v42 init];
  if (v26)
  {
    v27 = [titleCopy copy];
    title = v26->_title;
    v26->_title = v27;

    v29 = [subtitleCopy copy];
    subtitle = v26->_subtitle;
    v26->_subtitle = v29;

    v31 = [identifierCopy copy];
    localIdentifier = v26->_localIdentifier;
    v26->_localIdentifier = v31;

    v33 = [localIdentifierCopy copy];
    assetLocalIdentifier = v26->_assetLocalIdentifier;
    v26->_assetLocalIdentifier = v33;

    v35 = [deeplinkCopy copy];
    deeplink = v26->_deeplink;
    v26->_deeplink = v35;

    v26->_contentType = type;
    v37 = [sourceIdentifierCopy copy];
    sourceIdentifier = v26->_sourceIdentifier;
    v26->_sourceIdentifier = v37;

    v26->_relevanceScore = score;
    objc_storeStrong(&v26->_proactiveCriterion, criterion);
    objc_storeStrong(&v26->_suggestedCrop, crop);
    v26->_rejectReason = reason;
  }

  return v26;
}

- (PNTimelineEntry)initWithAlbumFeaturedPhoto:(id)photo localAlbumIdentifier:(id)identifier andFeaturedPhotoKeyAsset:(id)asset suggestedCrop:(id)crop
{
  cropCopy = crop;
  identifierCopy = identifier;
  photoCopy = photo;
  localIdentifier = [asset localIdentifier];
  v14 = [MEMORY[0x1E6978630] uuidFromLocalIdentifier:localIdentifier];
  v15 = [MEMORY[0x1E6978650] uuidFromLocalIdentifier:identifierCopy];
  v16 = MEMORY[0x1E695DFF8];
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"photos://asset?uuid=%@&albumuuid=%@&oneUp=1&source=widget", v14, v15];
  v18 = [v16 URLWithString:v17];

  localIdentifier2 = [photoCopy localIdentifier];

  v20 = [(PNTimelineEntry *)self initWithTitle:0 subtitle:0 localIdentifier:localIdentifier2 assetLocalIdentifier:localIdentifier deeplink:v18 contentType:2 sourceIdentifier:0.0 relevanceScore:identifierCopy proactiveCriterion:0 suggestedCrop:cropCopy rejectReason:0];
  return v20;
}

- (PNTimelineEntry)initWithFeaturedPhoto:(id)photo andFeaturedPhotoKeyAsset:(id)asset suggestedCrop:(id)crop
{
  cropCopy = crop;
  assetCopy = asset;
  photoCopy = photo;
  localIdentifier = [photoCopy localIdentifier];
  v12 = MEMORY[0x1E695DFF8];
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"photos://featuredPhoto?identifier=%@&source=widget", localIdentifier];
  v14 = [v12 URLWithString:v13];

  localIdentifier2 = [photoCopy localIdentifier];

  localIdentifier3 = [assetCopy localIdentifier];

  v17 = [(PNTimelineEntry *)self initWithTitle:0 subtitle:0 localIdentifier:localIdentifier2 assetLocalIdentifier:localIdentifier3 deeplink:v14 contentType:1 sourceIdentifier:0.0 relevanceScore:0 proactiveCriterion:0 suggestedCrop:cropCopy rejectReason:0];
  return v17;
}

- (PNTimelineEntry)initWithMemory:(id)memory andMemoryKeyAsset:(id)asset
{
  assetCopy = asset;
  v7 = MEMORY[0x1E695DFF8];
  v8 = MEMORY[0x1E696AEC0];
  memoryCopy = memory;
  localIdentifier = [memoryCopy localIdentifier];
  v11 = [v8 stringWithFormat:@"photos://memory?identifier=%@&source=widget", localIdentifier];
  v12 = [v7 URLWithString:v11];

  v13 = MEMORY[0x1E6978918];
  date = [MEMORY[0x1E695DF00] date];
  [v13 relevanceScoreForMemory:memoryCopy atDate:date];
  v16 = v15;

  localizedTitle = [memoryCopy localizedTitle];
  localizedSubtitle = [memoryCopy localizedSubtitle];
  localIdentifier2 = [memoryCopy localIdentifier];

  if (assetCopy)
  {
    localIdentifier3 = [assetCopy localIdentifier];
    v21 = [(PNTimelineEntry *)self initWithTitle:localizedTitle subtitle:localizedSubtitle localIdentifier:localIdentifier2 assetLocalIdentifier:localIdentifier3 deeplink:v12 contentType:0 sourceIdentifier:v16 relevanceScore:0 proactiveCriterion:0 suggestedCrop:0 rejectReason:0];
  }

  else
  {
    v21 = [(PNTimelineEntry *)self initWithTitle:localizedTitle subtitle:localizedSubtitle localIdentifier:localIdentifier2 assetLocalIdentifier:&stru_1F46CD000 deeplink:v12 contentType:0 sourceIdentifier:v16 relevanceScore:0 proactiveCriterion:0 suggestedCrop:0 rejectReason:0];
  }

  return v21;
}

+ (id)descriptionForRejectReason:(unint64_t)reason
{
  if (reason - 1 > 3)
  {
    return @"None";
  }

  else
  {
    return off_1E82A1AB0[reason - 1];
  }
}

+ (id)descriptionForTimelineContentType:(unint64_t)type
{
  v3 = @"Memory";
  if (type == 1)
  {
    v3 = @"Featured Photo";
  }

  if (type == 2)
  {
    return @"Album";
  }

  else
  {
    return v3;
  }
}

+ (id)placeholderEntryForContentType:(unint64_t)type
{
  v5 = [PNTimelineEntry alloc];
  v6 = [self emptyWidgetURLForContentType:type sourceIdentifier:0];
  v7 = [(PNTimelineEntry *)v5 initWithTitle:@"---------------" subtitle:@"-------" localIdentifier:&stru_1F46CD000 assetLocalIdentifier:&stru_1F46CD000 deeplink:v6 contentType:type sourceIdentifier:0.0 relevanceScore:0 proactiveCriterion:0 suggestedCrop:0 rejectReason:0];

  return v7;
}

+ (id)emptyWidgetURLForContentType:(unint64_t)type sourceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = identifierCopy;
  if (type >= 2)
  {
    if (type != 2)
    {
      v13 = 0;
      goto LABEL_11;
    }

    if (identifierCopy)
    {
      v10 = [MEMORY[0x1E6978650] uuidFromLocalIdentifier:identifierCopy];
      v11 = MEMORY[0x1E695DFF8];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"photos://album?uuid=%@", v10];
      v13 = [v11 URLWithString:v12];

      goto LABEL_11;
    }

    v8 = MEMORY[0x1E695DFF8];
    v9 = @"photos://contentmode?id=albums";
  }

  else
  {
    v7 = PLIsFeaturedContentAllowed();
    v8 = MEMORY[0x1E695DFF8];
    if (v7)
    {
      v9 = @"photos://contentmode?id=forYou";
    }

    else
    {
      v9 = @"photos://contentmode?id=photos";
    }
  }

  v13 = [v8 URLWithString:v9];
LABEL_11:

  return v13;
}

@end