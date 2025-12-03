@interface PGTripMemoryTitleGenerator
- (PGTripMemoryTitleGenerator)initWithHighlightGroupNodeAsCollection:(id)collection type:(unint64_t)type titleGenerationContext:(id)context;
- (PGTripMemoryTitleGenerator)initWithHighlightNode:(id)node titleGenerationContext:(id)context;
- (PGTripMemoryTitleGenerator)initWithMomentNodes:(id)nodes locationNodes:(id)locationNodes areaNodes:(id)areaNodes type:(unint64_t)type titleGenerationContext:(id)context;
- (id)_locationTitle;
- (id)_timeTitleForTripAndWeekend;
- (id)_timeTitleForWeekend;
- (id)_typeString;
- (id)initForTestingWithHighlightGroupNodeAsCollection:(id)collection type:(unint64_t)type titleGenerationContext:(id)context;
- (void)_generateTitleAndSubtitleWithResult:(id)result;
@end

@implementation PGTripMemoryTitleGenerator

- (id)_typeString
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"PGTripMemoryTypeStringTrip" value:@"PGTripMemoryTypeStringTrip" table:@"Localizable"];

  return v3;
}

- (id)_timeTitleForTripAndWeekend
{
  v3 = objc_alloc_init(PGTimeTitleOptions);
  momentNodes = [(PGTitleGenerator *)self momentNodes];
  [(PGTimeTitleOptions *)v3 setMomentNodes:momentNodes];

  usedLocationNodes = [(PGTitleGenerator *)self usedLocationNodes];
  [(PGTimeTitleOptions *)v3 setLocationNodes:usedLocationNodes];

  locale = [(PGTitleGenerator *)self locale];
  [(PGTimeTitleOptions *)v3 setLocale:locale];

  v7 = [PGTimeTitleUtility timeTitleWithOptions:v3];
  _typeString = [(PGTripMemoryTitleGenerator *)self _typeString];
  if (!_typeString)
  {
    v13 = v7;
LABEL_6:
    v12 = v13;
    goto LABEL_7;
  }

  if (![v7 length])
  {
    v13 = _typeString;
    goto LABEL_6;
  }

  v9 = MEMORY[0x277CCACA8];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"PGTripMemorySubtitleFormatWithLocalizedDate %@" value:@"PGTripMemorySubtitleFormatWithLocalizedDate %@" table:@"Localizable"];
  v12 = [v9 localizedStringWithFormat:v11, v7];

LABEL_7:
  v14 = v12;

  return v12;
}

- (id)_timeTitleForWeekend
{
  dateMatching = [(PGTitleGenerator *)self dateMatching];
  type = [dateMatching type];

  if (type != 9)
  {
    goto LABEL_3;
  }

  dateMatching2 = [(PGTitleGenerator *)self dateMatching];
  title = [dateMatching2 title];
  stringValue = [title stringValue];

  if (!stringValue)
  {
LABEL_3:
    stringValue = [(PGTripMemoryTitleGenerator *)self _timeTitleForTripAndWeekend];
  }

  return stringValue;
}

- (id)_locationTitle
{
  v19 = *MEMORY[0x277D85DE8];
  momentNodes = [(PGTitleGenerator *)self momentNodes];
  v4 = [momentNodes count];

  if (v4)
  {
    titleGenerationContext = [(PGTitleGenerator *)self titleGenerationContext];
    locationHelper = [titleGenerationContext locationHelper];

    highlightGroupNodeAsCollection = self->_highlightGroupNodeAsCollection;
    v16 = 0;
    v8 = [PGTripTitleGenerator titleForTripNodeAsCollection:highlightGroupNodeAsCollection locationHelper:locationHelper error:&v16];
    v9 = v16;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v11 = +[PGLogging sharedLogging];
      loggingConnection = [v11 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v9 localizedDescription];
        *buf = 138412290;
        v18 = localizedDescription;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGTripMemoryTitleGenerator] %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_generateTitleAndSubtitleWithResult:(id)result
{
  resultCopy = result;
  type = self->_type;
  v11 = resultCopy;
  if (type == 1)
  {
    _locationTitle = [(PGTripMemoryTitleGenerator *)self _locationTitle];
    _timeTitleForWeekend = [(PGTripMemoryTitleGenerator *)self _timeTitleForWeekend];
LABEL_5:
    v8 = _timeTitleForWeekend;
    if (_locationTitle)
    {
      v9 = [PGTitle titleWithString:_locationTitle category:4];
      if (v8)
      {
LABEL_7:
        v10 = [PGTitle titleWithString:v8 category:5];
        goto LABEL_12;
      }
    }

    else
    {
      v9 = 0;
      if (_timeTitleForWeekend)
      {
        goto LABEL_7;
      }
    }

    v10 = 0;
LABEL_12:
    if (!v11)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (!type)
  {
    _locationTitle = [(PGTripMemoryTitleGenerator *)self _locationTitle];
    _timeTitleForWeekend = [(PGTripMemoryTitleGenerator *)self _timeTitleForTrip];
    goto LABEL_5;
  }

  v9 = 0;
  _locationTitle = 0;
  v8 = 0;
  v10 = 0;
  if (resultCopy)
  {
LABEL_13:
    v11[2](v11, v9, v10);
  }

LABEL_14:
}

- (id)initForTestingWithHighlightGroupNodeAsCollection:(id)collection type:(unint64_t)type titleGenerationContext:(id)context
{
  collectionCopy = collection;
  contextCopy = context;
  momentNodes = [collectionCopy momentNodes];
  v12 = [momentNodes set];
  v13 = [(PGTripMemoryTitleGenerator *)self initWithMomentNodes:v12 locationNodes:0 type:type titleGenerationContext:contextCopy];

  if (v13)
  {
    objc_storeStrong(&v13->_highlightGroupNodeAsCollection, collection);
    featuredLocationOrAreaNodes = [collectionCopy featuredLocationOrAreaNodes];
    v15 = [featuredLocationOrAreaNodes set];
    [(PGTitleGenerator *)v13 setUsedLocationNodes:v15];
  }

  return v13;
}

- (PGTripMemoryTitleGenerator)initWithHighlightGroupNodeAsCollection:(id)collection type:(unint64_t)type titleGenerationContext:(id)context
{
  collectionCopy = collection;
  contextCopy = context;
  momentNodes = [collectionCopy momentNodes];
  v12 = [momentNodes set];
  v13 = [(PGTripMemoryTitleGenerator *)self initWithMomentNodes:v12 locationNodes:0 type:type titleGenerationContext:contextCopy];

  if (v13)
  {
    objc_storeStrong(&v13->_highlightGroupNodeAsCollection, collection);
    featuredLocationOrAreaNodes = [collectionCopy featuredLocationOrAreaNodes];
    v15 = [featuredLocationOrAreaNodes set];
    [(PGTitleGenerator *)v13 setUsedLocationNodes:v15];
  }

  return v13;
}

- (PGTripMemoryTitleGenerator)initWithHighlightNode:(id)node titleGenerationContext:(id)context
{
  nodeCopy = node;
  contextCopy = context;
  collection = [nodeCopy collection];
  momentNodes = [collection momentNodes];

  if ([momentNodes count] && objc_msgSend(nodeCopy, "isTrip"))
  {
    isShortTrip = [nodeCopy isShortTrip];
    temporarySet = [momentNodes temporarySet];
    self = [(PGTripMemoryTitleGenerator *)self initWithMomentNodes:temporarySet locationNodes:0 type:isShortTrip titleGenerationContext:contextCopy];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PGTripMemoryTitleGenerator)initWithMomentNodes:(id)nodes locationNodes:(id)locationNodes areaNodes:(id)areaNodes type:(unint64_t)type titleGenerationContext:(id)context
{
  locationNodesCopy = locationNodes;
  areaNodesCopy = areaNodes;
  v18.receiver = self;
  v18.super_class = PGTripMemoryTitleGenerator;
  v15 = [(PGTitleGenerator *)&v18 initWithMomentNodes:nodes referenceDateInterval:0 keyAsset:0 curatedAssetCollection:0 assetCollection:0 type:0 titleGenerationContext:context];
  v16 = v15;
  if (v15)
  {
    v15->_type = type;
    objc_storeStrong(&v15->_locationNodes, locationNodes);
    objc_storeStrong(&v16->_areaNodes, areaNodes);
  }

  return v16;
}

@end