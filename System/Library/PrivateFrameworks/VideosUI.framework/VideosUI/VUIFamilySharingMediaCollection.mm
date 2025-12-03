@interface VUIFamilySharingMediaCollection
- (NSString)amsSeasonIdentifier;
- (NSString)amsShowIdentifier;
- (NSString)artworkURL;
- (VUIFamilySharingMediaCollection)initWithAMSEntity:(id)entity requestedProperties:(id)properties mediaEntityType:(id)type;
- (id)contentDescription;
- (id)contentRating;
- (id)duration;
- (id)genreTitle;
- (id)releaseDate;
- (id)releaseYear;
- (id)seasonCount;
- (id)seasonNumber;
- (id)showTitle;
- (id)title;
@end

@implementation VUIFamilySharingMediaCollection

- (VUIFamilySharingMediaCollection)initWithAMSEntity:(id)entity requestedProperties:(id)properties mediaEntityType:(id)type
{
  entityCopy = entity;
  typeCopy = type;
  propertiesCopy = properties;
  v12 = [VUIFamilySharingMediaEntityIdentifier alloc];
  identifier = [entityCopy identifier];
  v14 = [(VUIFamilySharingMediaEntityIdentifier *)v12 initWithEntityIdentifier:identifier mediaEntityType:typeCopy];

  v15 = VUIFamilySharingMediaCollectionKind();
  v20.receiver = self;
  v20.super_class = VUIFamilySharingMediaCollection;
  v16 = [(VUIMediaEntity *)&v20 initWithMediaLibrary:0 identifier:v14 requestedProperties:propertiesCopy kind:v15];

  if (v16)
  {
    objc_storeStrong(&v16->_entity, entity);
    v17 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    seasonNumbers = v16->_seasonNumbers;
    v16->_seasonNumbers = v17;
  }

  return v16;
}

- (id)title
{
  entity = [(VUIFamilySharingMediaCollection *)self entity];
  showTitle = [entity showTitle];

  return showTitle;
}

- (NSString)artworkURL
{
  artworkURL = self->_artworkURL;
  if (!artworkURL)
  {
    entity = [(VUIFamilySharingMediaCollection *)self entity];
    artworkURL = [entity artworkURL];
    v6 = self->_artworkURL;
    self->_artworkURL = artworkURL;

    artworkURL = self->_artworkURL;
  }

  return artworkURL;
}

- (id)seasonNumber
{
  entity = [(VUIFamilySharingMediaCollection *)self entity];
  seasonNumber = [entity seasonNumber];

  if (seasonNumber)
  {
    entity2 = [(VUIFamilySharingMediaCollection *)self entity];
    seasonNumber2 = [entity2 seasonNumber];
  }

  else
  {
    seasonNumber2 = 0;
  }

  return seasonNumber2;
}

- (NSString)amsShowIdentifier
{
  amsShowIdentifier = self->_amsShowIdentifier;
  if (!amsShowIdentifier)
  {
    entity = [(VUIFamilySharingMediaCollection *)self entity];
    relationships = [entity relationships];
    show = [relationships show];

    if (show)
    {
      identifier = [show identifier];
      v8 = self->_amsShowIdentifier;
      self->_amsShowIdentifier = identifier;
    }

    amsShowIdentifier = self->_amsShowIdentifier;
  }

  return amsShowIdentifier;
}

- (NSString)amsSeasonIdentifier
{
  amsSeasonIdentifier = self->_amsSeasonIdentifier;
  if (!amsSeasonIdentifier)
  {
    entity = [(VUIFamilySharingMediaCollection *)self entity];
    relationships = [entity relationships];
    season = [relationships season];

    if (season)
    {
      identifier = [season identifier];
      v8 = self->_amsSeasonIdentifier;
      self->_amsSeasonIdentifier = identifier;
    }

    amsSeasonIdentifier = self->_amsSeasonIdentifier;
  }

  return amsSeasonIdentifier;
}

- (id)seasonCount
{
  seasonNumbers = [(VUIFamilySharingMediaCollection *)self seasonNumbers];

  if (seasonNumbers)
  {
    v4 = MEMORY[0x1E696AD98];
    seasonNumbers2 = [(VUIFamilySharingMediaCollection *)self seasonNumbers];
    v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(seasonNumbers2, "count")}];
  }

  else
  {
    v6 = &unk_1F5E5E7C0;
  }

  return v6;
}

- (id)contentRating
{
  entity = [(VUIFamilySharingMediaCollection *)self entity];
  contentRating = [entity contentRating];

  return contentRating;
}

- (id)contentDescription
{
  entity = [(VUIFamilySharingMediaCollection *)self entity];
  standardDescription = [entity standardDescription];

  return standardDescription;
}

- (id)releaseDate
{
  entity = [(VUIFamilySharingMediaCollection *)self entity];
  releaseDate = [entity releaseDate];

  return releaseDate;
}

- (id)releaseYear
{
  releaseDate = [(VUIFamilySharingMediaCollection *)self releaseDate];
  v3 = objc_alloc(MEMORY[0x1E695DEE8]);
  v4 = [v3 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v5 = [v4 components:4 fromDate:releaseDate];
  year = [v5 year];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:year];

  return v7;
}

- (id)genreTitle
{
  entity = [(VUIFamilySharingMediaCollection *)self entity];
  genreTitle = [entity genreTitle];

  return genreTitle;
}

- (id)duration
{
  entity = [(VUIFamilySharingMediaCollection *)self entity];
  offerListing = [entity offerListing];
  bestStoreBuyOffer = [offerListing bestStoreBuyOffer];

  if (bestStoreBuyOffer)
  {
    dictionary = [bestStoreBuyOffer dictionary];
    v6 = [dictionary vui_numberForKey:@"durationInMilliseconds"];

    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v6 doubleValue], v7 / 1000.0 > 0.0))
    {
      v8 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)showTitle
{
  entity = [(VUIFamilySharingMediaCollection *)self entity];
  showTitle = [entity showTitle];

  return showTitle;
}

@end