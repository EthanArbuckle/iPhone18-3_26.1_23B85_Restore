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
    v60 = a1;
    v6 = [v4 stateDepiction];
    v7 = [v6 location];
    [v7 Latitude_deg];
    v9 = v8;

    v10 = [v5 stateDepiction];
    v11 = [v10 location];
    [v11 Longitude_deg];
    v13 = v12;

    v14 = [v5 stateDepiction];
    v15 = [v14 location];
    [v15 uncertainty_m];
    v17 = v16;

    v18 = [v5 stateDepiction];
    v19 = [v18 location];
    v20 = [v19 referenceFrame];

    v21 = [v5 stateDepiction];
    v22 = [v21 mapItem];
    v23 = [v22 source] & 0xC;

    if (v23)
    {
      v24 = [v5 stateDepiction];
      v25 = [v24 mapItem];
      v26 = [v25 location];
      [v26 latitude];
      v9 = v27;

      v28 = [v5 stateDepiction];
      v29 = [v28 mapItem];
      v30 = [v29 location];
      [v30 longitude];
      v13 = v31;

      v32 = [v5 stateDepiction];
      v33 = [v32 mapItem];
      v34 = [v33 location];
      v20 = [v34 referenceFrame];
    }

    v35 = [v5 stateDepiction];
    v36 = [v35 getRecentVisits:0.0];

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
    v40 = [v5 stateDepiction];
    v41 = [v40 location];
    [v41 uncertainty_m];
    v54 = [v39 initWithLatitude:0 longitude:v20 horizontalUncertainty:v9 date:v13 referenceFrame:v42];

    v57 = [v5 stateDepiction];
    v56 = [v57 location];
    [v56 confidence];
    v44 = v43;
    v45 = [v5 uniqueId];
    v55 = [v5 stateDepiction];
    v46 = [v55 type];
    v47 = [v5 stateDepiction];
    v48 = [v47 typeSource];
    v49 = [v5 stateDepiction];
    v50 = [v49 customLabel];
    v51 = [v5 stateDepiction];
    v52 = [v51 mapItem];
    a1 = [v60 initWithLocation:v54 confidence:v45 identifier:v46 type:v48 typeSource:v59 visits:v50 customLabel:v44 mapItem:v52];

    v38 = a1;
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

@end