@interface PGTripMemoryTitleGenerator
- (PGTripMemoryTitleGenerator)initWithHighlightGroupNodeAsCollection:(id)a3 type:(unint64_t)a4 titleGenerationContext:(id)a5;
- (PGTripMemoryTitleGenerator)initWithHighlightNode:(id)a3 titleGenerationContext:(id)a4;
- (PGTripMemoryTitleGenerator)initWithMomentNodes:(id)a3 locationNodes:(id)a4 areaNodes:(id)a5 type:(unint64_t)a6 titleGenerationContext:(id)a7;
- (id)_locationTitle;
- (id)_timeTitleForTripAndWeekend;
- (id)_timeTitleForWeekend;
- (id)_typeString;
- (id)initForTestingWithHighlightGroupNodeAsCollection:(id)a3 type:(unint64_t)a4 titleGenerationContext:(id)a5;
- (void)_generateTitleAndSubtitleWithResult:(id)a3;
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
  v4 = [(PGTitleGenerator *)self momentNodes];
  [(PGTimeTitleOptions *)v3 setMomentNodes:v4];

  v5 = [(PGTitleGenerator *)self usedLocationNodes];
  [(PGTimeTitleOptions *)v3 setLocationNodes:v5];

  v6 = [(PGTitleGenerator *)self locale];
  [(PGTimeTitleOptions *)v3 setLocale:v6];

  v7 = [PGTimeTitleUtility timeTitleWithOptions:v3];
  v8 = [(PGTripMemoryTitleGenerator *)self _typeString];
  if (!v8)
  {
    v13 = v7;
LABEL_6:
    v12 = v13;
    goto LABEL_7;
  }

  if (![v7 length])
  {
    v13 = v8;
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
  v3 = [(PGTitleGenerator *)self dateMatching];
  v4 = [v3 type];

  if (v4 != 9)
  {
    goto LABEL_3;
  }

  v5 = [(PGTitleGenerator *)self dateMatching];
  v6 = [v5 title];
  v7 = [v6 stringValue];

  if (!v7)
  {
LABEL_3:
    v7 = [(PGTripMemoryTitleGenerator *)self _timeTitleForTripAndWeekend];
  }

  return v7;
}

- (id)_locationTitle
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(PGTitleGenerator *)self momentNodes];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(PGTitleGenerator *)self titleGenerationContext];
    v6 = [v5 locationHelper];

    highlightGroupNodeAsCollection = self->_highlightGroupNodeAsCollection;
    v16 = 0;
    v8 = [PGTripTitleGenerator titleForTripNodeAsCollection:highlightGroupNodeAsCollection locationHelper:v6 error:&v16];
    v9 = v16;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v11 = +[PGLogging sharedLogging];
      v12 = [v11 loggingConnection];

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v15 = [v9 localizedDescription];
        *buf = 138412290;
        v18 = v15;
        _os_log_error_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_ERROR, "[PGTripMemoryTitleGenerator] %@", buf, 0xCu);
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

- (void)_generateTitleAndSubtitleWithResult:(id)a3
{
  v4 = a3;
  type = self->_type;
  v11 = v4;
  if (type == 1)
  {
    v6 = [(PGTripMemoryTitleGenerator *)self _locationTitle];
    v7 = [(PGTripMemoryTitleGenerator *)self _timeTitleForWeekend];
LABEL_5:
    v8 = v7;
    if (v6)
    {
      v9 = [PGTitle titleWithString:v6 category:4];
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
      if (v7)
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
    v6 = [(PGTripMemoryTitleGenerator *)self _locationTitle];
    v7 = [(PGTripMemoryTitleGenerator *)self _timeTitleForTrip];
    goto LABEL_5;
  }

  v9 = 0;
  v6 = 0;
  v8 = 0;
  v10 = 0;
  if (v4)
  {
LABEL_13:
    v11[2](v11, v9, v10);
  }

LABEL_14:
}

- (id)initForTestingWithHighlightGroupNodeAsCollection:(id)a3 type:(unint64_t)a4 titleGenerationContext:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = [v9 momentNodes];
  v12 = [v11 set];
  v13 = [(PGTripMemoryTitleGenerator *)self initWithMomentNodes:v12 locationNodes:0 type:a4 titleGenerationContext:v10];

  if (v13)
  {
    objc_storeStrong(&v13->_highlightGroupNodeAsCollection, a3);
    v14 = [v9 featuredLocationOrAreaNodes];
    v15 = [v14 set];
    [(PGTitleGenerator *)v13 setUsedLocationNodes:v15];
  }

  return v13;
}

- (PGTripMemoryTitleGenerator)initWithHighlightGroupNodeAsCollection:(id)a3 type:(unint64_t)a4 titleGenerationContext:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = [v9 momentNodes];
  v12 = [v11 set];
  v13 = [(PGTripMemoryTitleGenerator *)self initWithMomentNodes:v12 locationNodes:0 type:a4 titleGenerationContext:v10];

  if (v13)
  {
    objc_storeStrong(&v13->_highlightGroupNodeAsCollection, a3);
    v14 = [v9 featuredLocationOrAreaNodes];
    v15 = [v14 set];
    [(PGTitleGenerator *)v13 setUsedLocationNodes:v15];
  }

  return v13;
}

- (PGTripMemoryTitleGenerator)initWithHighlightNode:(id)a3 titleGenerationContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 collection];
  v9 = [v8 momentNodes];

  if ([v9 count] && objc_msgSend(v6, "isTrip"))
  {
    v10 = [v6 isShortTrip];
    v11 = [v9 temporarySet];
    self = [(PGTripMemoryTitleGenerator *)self initWithMomentNodes:v11 locationNodes:0 type:v10 titleGenerationContext:v7];

    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (PGTripMemoryTitleGenerator)initWithMomentNodes:(id)a3 locationNodes:(id)a4 areaNodes:(id)a5 type:(unint64_t)a6 titleGenerationContext:(id)a7
{
  v13 = a4;
  v14 = a5;
  v18.receiver = self;
  v18.super_class = PGTripMemoryTitleGenerator;
  v15 = [(PGTitleGenerator *)&v18 initWithMomentNodes:a3 referenceDateInterval:0 keyAsset:0 curatedAssetCollection:0 assetCollection:0 type:0 titleGenerationContext:a7];
  v16 = v15;
  if (v15)
  {
    v15->_type = a6;
    objc_storeStrong(&v15->_locationNodes, a4);
    objc_storeStrong(&v16->_areaNodes, a5);
  }

  return v16;
}

@end