@interface ATXHeroEntry
- (ATXHeroEntry)initWithAdamId:(unint64_t)a3 urlHash:(id)a4 location:(CLLocationCoordinate2D)a5 radiusInMeters:(unint64_t)a6 rank:(unint64_t)a7 isTouristApp:(BOOL)a8 poiCategory:(id)a9 poiMuid:(id)a10;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAppAndClipEntry:(id)a3;
- (CLLocationCoordinate2D)location;
- (id)heroDataForLocation:(id)a3;
@end

@implementation ATXHeroEntry

- (ATXHeroEntry)initWithAdamId:(unint64_t)a3 urlHash:(id)a4 location:(CLLocationCoordinate2D)a5 radiusInMeters:(unint64_t)a6 rank:(unint64_t)a7 isTouristApp:(BOOL)a8 poiCategory:(id)a9 poiMuid:(id)a10
{
  longitude = a5.longitude;
  latitude = a5.latitude;
  v18 = a4;
  v19 = a9;
  v20 = a10;
  v25.receiver = self;
  v25.super_class = ATXHeroEntry;
  v21 = [(ATXHeroEntry *)&v25 init];
  v22 = v21;
  if (v21)
  {
    v21->_adamId = a3;
    objc_storeStrong(&v21->_urlHash, a4);
    v22->_location.latitude = latitude;
    v22->_location.longitude = longitude;
    v22->_radiusInMeters = a6;
    v22->_rank = a7;
    v22->_isTouristApp = a8;
    objc_storeStrong(&v22->_poiCategory, a9);
    objc_storeStrong(&v22->_poiMuid, a10);
  }

  return v22;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXHeroEntry *)self isEqualToAppAndClipEntry:v5];
  }

  return v6;
}

- (BOOL)isEqualToAppAndClipEntry:(id)a3
{
  v4 = a3;
  adamId = self->_adamId;
  if (adamId != [v4 adamId])
  {
    v8 = 0;
    goto LABEL_6;
  }

  urlHash = self->_urlHash;
  v7 = [v4 urlHash];
  if (urlHash == v7 && (latitude = self->_location.latitude, [v4 location], latitude == v11) && (longitude = self->_location.longitude, objc_msgSend(v4, "location"), longitude == v13) && (radiusInMeters = self->_radiusInMeters, radiusInMeters == objc_msgSend(v4, "radiusInMeters")) && (rank = self->_rank, rank == objc_msgSend(v4, "rank")) && (isTouristApp = self->_isTouristApp, isTouristApp == objc_msgSend(v4, "isTouristApp")))
  {
    poiCategory = self->_poiCategory;
    if (!poiCategory)
    {
      isTouristApp = [v4 poiCategory];
      if (!isTouristApp)
      {
        v8 = 1;
LABEL_20:

        goto LABEL_4;
      }
    }

    v18 = [v4 poiCategory];
    if (v18)
    {
      v19 = v18;
      v20 = self->_poiCategory;
      v21 = [v4 poiCategory];
      v8 = [(NSString *)v20 isEqualToString:v21];

      if (!poiCategory)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v8 = 0;
      if (!poiCategory)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_4:

LABEL_6:
  return v8;
}

- (id)heroDataForLocation:(id)a3
{
  v4 = objc_alloc(MEMORY[0x277D131B8]);
  v5 = [v4 initWithPredictedAdamId:self->_adamId bundleId:*MEMORY[0x277D131F8] latitude:self->_radiusInMeters longitude:self->_rank radiusInMeters:self->_isTouristApp rank:self->_urlHash isTouristApp:self->_location.latitude score:self->_location.longitude urlHash:*MEMORY[0x277D131E8] clipMetadata:0 poiCategory:self->_poiCategory poiMuid:self->_poiMuid];

  return v5;
}

- (CLLocationCoordinate2D)location
{
  latitude = self->_location.latitude;
  longitude = self->_location.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

@end