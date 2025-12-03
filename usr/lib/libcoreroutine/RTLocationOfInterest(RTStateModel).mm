@interface RTLocationOfInterest(RTStateModel)
- (id)initWithOneState:()RTStateModel;
@end

@implementation RTLocationOfInterest(RTStateModel)

- (id)initWithOneState:()RTStateModel
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    selfCopy = self;
    stateDepiction = [v4 stateDepiction];
    location = [stateDepiction location];
    [location Latitude_deg];
    v9 = v8;

    stateDepiction2 = [v5 stateDepiction];
    location2 = [stateDepiction2 location];
    [location2 Longitude_deg];
    v13 = v12;

    stateDepiction3 = [v5 stateDepiction];
    location3 = [stateDepiction3 location];
    [location3 uncertainty_m];
    v17 = v16;

    stateDepiction4 = [v5 stateDepiction];
    location4 = [stateDepiction4 location];
    referenceFrame = [location4 referenceFrame];

    stateDepiction5 = [v5 stateDepiction];
    mapItem = [stateDepiction5 mapItem];
    v23 = [mapItem source] & 0xC;

    if (v23)
    {
      stateDepiction6 = [v5 stateDepiction];
      mapItem2 = [stateDepiction6 mapItem];
      location5 = [mapItem2 location];
      [location5 latitude];
      v9 = v27;

      stateDepiction7 = [v5 stateDepiction];
      mapItem3 = [stateDepiction7 mapItem];
      location6 = [mapItem3 location];
      [location6 longitude];
      v13 = v31;

      stateDepiction8 = [v5 stateDepiction];
      mapItem4 = [stateDepiction8 mapItem];
      location7 = [mapItem4 location];
      referenceFrame = [location7 referenceFrame];
    }

    stateDepiction9 = [v5 stateDepiction];
    v36 = [stateDepiction9 getRecentVisits:0.0];

    v58 = v36;
    if ([v36 count])
    {
      v37 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v36, "count")}];
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __55__RTLocationOfInterest_RTStateModel__initWithOneState___block_invoke;
      v61[3] = &unk_2788CFB90;
      v63 = v9;
      v64 = v13;
      v65 = v17;
      v59 = v37;
      v62 = v59;
      [v36 enumerateObjectsUsingBlock:v61];
    }

    else
    {
      v59 = 0;
    }

    v39 = objc_alloc(MEMORY[0x277D01160]);
    stateDepiction10 = [v5 stateDepiction];
    location8 = [stateDepiction10 location];
    [location8 uncertainty_m];
    v54 = [v39 initWithLatitude:0 longitude:referenceFrame horizontalUncertainty:v9 date:v13 referenceFrame:v42];

    stateDepiction11 = [v5 stateDepiction];
    location9 = [stateDepiction11 location];
    [location9 confidence];
    v44 = v43;
    uniqueId = [v5 uniqueId];
    stateDepiction12 = [v5 stateDepiction];
    type = [stateDepiction12 type];
    stateDepiction13 = [v5 stateDepiction];
    typeSource = [stateDepiction13 typeSource];
    stateDepiction14 = [v5 stateDepiction];
    customLabel = [stateDepiction14 customLabel];
    stateDepiction15 = [v5 stateDepiction];
    mapItem5 = [stateDepiction15 mapItem];
    self = [selfCopy initWithLocation:v54 confidence:uniqueId identifier:type type:typeSource typeSource:v59 visits:customLabel customLabel:v44 mapItem:mapItem5];

    selfCopy2 = self;
  }

  else
  {
    selfCopy2 = 0;
  }

  return selfCopy2;
}

@end