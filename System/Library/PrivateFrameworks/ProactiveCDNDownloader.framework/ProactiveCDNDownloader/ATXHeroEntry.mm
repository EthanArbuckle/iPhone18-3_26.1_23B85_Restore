@interface ATXHeroEntry
- (ATXHeroEntry)initWithAdamId:(unint64_t)id urlHash:(id)hash location:(CLLocationCoordinate2D)location radiusInMeters:(unint64_t)meters rank:(unint64_t)rank isTouristApp:(BOOL)app poiCategory:(id)category poiMuid:(id)self0;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAppAndClipEntry:(id)entry;
- (CLLocationCoordinate2D)location;
- (id)heroDataForLocation:(id)location;
@end

@implementation ATXHeroEntry

- (ATXHeroEntry)initWithAdamId:(unint64_t)id urlHash:(id)hash location:(CLLocationCoordinate2D)location radiusInMeters:(unint64_t)meters rank:(unint64_t)rank isTouristApp:(BOOL)app poiCategory:(id)category poiMuid:(id)self0
{
  longitude = location.longitude;
  latitude = location.latitude;
  hashCopy = hash;
  categoryCopy = category;
  muidCopy = muid;
  v25.receiver = self;
  v25.super_class = ATXHeroEntry;
  v21 = [(ATXHeroEntry *)&v25 init];
  v22 = v21;
  if (v21)
  {
    v21->_adamId = id;
    objc_storeStrong(&v21->_urlHash, hash);
    v22->_location.latitude = latitude;
    v22->_location.longitude = longitude;
    v22->_radiusInMeters = meters;
    v22->_rank = rank;
    v22->_isTouristApp = app;
    objc_storeStrong(&v22->_poiCategory, category);
    objc_storeStrong(&v22->_poiMuid, muid);
  }

  return v22;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXHeroEntry *)self isEqualToAppAndClipEntry:v5];
  }

  return v6;
}

- (BOOL)isEqualToAppAndClipEntry:(id)entry
{
  entryCopy = entry;
  adamId = self->_adamId;
  if (adamId != [entryCopy adamId])
  {
    v8 = 0;
    goto LABEL_6;
  }

  urlHash = self->_urlHash;
  urlHash = [entryCopy urlHash];
  if (urlHash == urlHash && (latitude = self->_location.latitude, [entryCopy location], latitude == v11) && (longitude = self->_location.longitude, objc_msgSend(entryCopy, "location"), longitude == v13) && (radiusInMeters = self->_radiusInMeters, radiusInMeters == objc_msgSend(entryCopy, "radiusInMeters")) && (rank = self->_rank, rank == objc_msgSend(entryCopy, "rank")) && (isTouristApp = self->_isTouristApp, isTouristApp == objc_msgSend(entryCopy, "isTouristApp")))
  {
    poiCategory = self->_poiCategory;
    if (!poiCategory)
    {
      isTouristApp = [entryCopy poiCategory];
      if (!isTouristApp)
      {
        v8 = 1;
LABEL_20:

        goto LABEL_4;
      }
    }

    poiCategory = [entryCopy poiCategory];
    if (poiCategory)
    {
      v19 = poiCategory;
      v20 = self->_poiCategory;
      poiCategory2 = [entryCopy poiCategory];
      v8 = [(NSString *)v20 isEqualToString:poiCategory2];

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

- (id)heroDataForLocation:(id)location
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