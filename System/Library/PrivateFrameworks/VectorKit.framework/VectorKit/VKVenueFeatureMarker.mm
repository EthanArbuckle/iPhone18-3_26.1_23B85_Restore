@interface VKVenueFeatureMarker
- (GEOMapItemIdentifier)mapIdentifier;
- (NSArray)buildings;
- (id)name;
- (id)shortName;
@end

@implementation VKVenueFeatureMarker

- (id)shortName
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  (*(**[(VKVenueFeatureMarker *)self venueFeatureMarker]+ 24))(v9);
  if (v10 >= 0)
  {
    v3 = v9;
  }

  else
  {
    v3 = v9[0];
  }

  v4 = [v2 stringWithUTF8String:v3];
  v5 = v4;
  if (v10 < 0)
  {
    v6 = v9[0];
    v7 = mdm::zone_mallocator::instance(v4);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v7, v6);
  }

  return v5;
}

- (id)name
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  (*(**[(VKVenueFeatureMarker *)self venueFeatureMarker]+ 16))(v9);
  if (v10 >= 0)
  {
    v3 = v9;
  }

  else
  {
    v3 = v9[0];
  }

  v4 = [v2 stringWithUTF8String:v3];
  v5 = v4;
  if (v10 < 0)
  {
    v6 = v9[0];
    v7 = mdm::zone_mallocator::instance(v4);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v7, v6);
  }

  return v5;
}

- (NSArray)buildings
{
  v3 = *[(VKVenueFeatureMarker *)self venueFeatureMarker];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0xEEEEEEEEEEEEEEEFLL * ((*(v3 + 56) - *(v3 + 48)) >> 3)];
  v5 = *(v3 + 48);
  for (i = *(v3 + 56); v5 != i; v5 += 120)
  {
    v7 = [[VKVenueBuildingFeatureMarker alloc] initWithVenueBuilding:v5 localize:*(&self->super._markerType + 4)];
    [v4 addObject:v7];
  }

  return v4;
}

- (GEOMapItemIdentifier)mapIdentifier
{
  v3 = [(VKVenueFeatureMarker *)self venueFeatureMarker];
  v4 = *(*v3 + 120) * 6.28318531;
  v5 = exp(*(*v3 + 128) * 6.28318531 + -3.14159265);
  v6 = atan(v5);
  v7 = fmod(v4, 6.28318531);
  v8 = [objc_alloc(MEMORY[0x1E69A21C0]) initWithMUID:-[VKVenueFeatureMarker businessID](self coordinate:{"businessID"), v6 * 114.591559 + -90.0, (fmod(v7 + 6.28318531, 6.28318531) * 57.2957795 + -180.0)}];

  return v8;
}

@end