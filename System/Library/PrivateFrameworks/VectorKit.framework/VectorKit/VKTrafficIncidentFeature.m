@interface VKTrafficIncidentFeature
+ (id)stringForIncidentSignificance:(int64_t)a3;
+ (id)stringForIncidentType:(int64_t)a3;
+ (id)stringForRouteRelevance:(int64_t)a3;
+ (int64_t)incidentTypeForGeoRouteIncident:(id)a3;
- (VKTrafficIncidentFeature)initWithIncidentData:(const void *)a3;
- (VKTrafficIncidentFeature)initWithRouteIncident:(id)a3 routeOffsetInMeters:(unsigned int)a4 routeRelevance:(int64_t)a5 onRoute:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (void)populateDebugNode:(void *)a3;
@end

@implementation VKTrafficIncidentFeature

- (void)populateDebugNode:(void *)a3
{
  v19.receiver = self;
  v19.super_class = VKTrafficIncidentFeature;
  [(VKTrafficFeature *)&v19 populateDebugNode:?];
  std::string::basic_string[abi:nn200100]<0>(&v17, "TrafficIncidentType");
  v5 = [VKTrafficIncidentFeature stringForIncidentType:self->_type];
  gdc::DebugTreeValue::DebugTreeValue(v14, [v5 UTF8String]);
  gdc::DebugTreeNode::addProperty(a3, &v17, v14);
  if (v16 < 0)
  {
    operator delete(__p);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  std::string::basic_string[abi:nn200100]<0>(&v17, "RouteRelevance");
  v6 = [VKTrafficIncidentFeature stringForRouteRelevance:self->_routeRelevance];
  gdc::DebugTreeValue::DebugTreeValue(v11, [v6 UTF8String]);
  gdc::DebugTreeNode::addProperty(a3, &v17, v11);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  std::string::basic_string[abi:nn200100]<0>(&v17, "Significance");
  v7 = [VKTrafficIncidentFeature stringForIncidentSignificance:self->_significance];
  gdc::DebugTreeValue::DebugTreeValue(v8, [v7 UTF8String]);
  gdc::DebugTreeNode::addProperty(a3, &v17, v8);
  if (v10 < 0)
  {
    operator delete(v9);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = VKTrafficIncidentFeature;
  v4 = [(VKTrafficFeature *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 20, self->_title);
    objc_storeStrong(v5 + 21, self->_subtitle);
    v5[22] = self->_type;
    *(v5 + 200) = self->_isNotForDisplay;
    v5[23] = self->_routeRelevance;
    *(v5 + 201) = self->_isOnSelectedRoute;
    objc_storeStrong(v5 + 26, self->_street);
    objc_storeStrong(v5 + 27, self->_crossStreet);
    objc_storeStrong(v5 + 28, self->_info);
    objc_storeStrong(v5 + 29, self->_startDate);
    objc_storeStrong(v5 + 30, self->_endDate);
    objc_storeStrong(v5 + 31, self->_lastUpdatedDate);
    v5[24] = self->_significance;
    *(v5 + 66) = LODWORD(self->_elevationMinZoom);
    objc_storeStrong(v5 + 32, self->_uniqueString);
    objc_storeStrong(v5 + 35, self->_restrictionInfo);
    objc_storeStrong(v5 + 34, self->_artwork);
  }

  return v5;
}

- (VKTrafficIncidentFeature)initWithRouteIncident:(id)a3 routeOffsetInMeters:(unsigned int)a4 routeRelevance:(int64_t)a5 onRoute:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = v11;
  if (!v10)
  {
    goto LABEL_39;
  }

  v13 = *MEMORY[0x1E69A1918];
  v60 = *MEMORY[0x1E69A1918];
  if (v11)
  {
    v13 = [v11 coordinateAtOffset:a4];
    v60 = v13;
    [v12 pointAtRouteCoordinate:v13];
    v15 = v14;
  }

  else
  {
    v15 = 1.79769313e308;
  }

  v16 = [v10 position];
  [v16 lat];
  v18 = v17;
  v19 = [v10 position];
  [v19 lng];
  v21 = v20;

  v22 = v12 ? VKTrafficFeatureDirection(&v60, v12) : -1.0;
  v23 = [v10 incidentId];
  v59.receiver = self;
  v59.super_class = VKTrafficIncidentFeature;
  self = [(VKTrafficFeature *)&v59 initWithFeatureType:0 uniqueIdentifier:v23 position:v13 direction:v18 routeOffset:v21 routeOffsetInMeters:v15, v22, a4];

  if (!self)
  {
    goto LABEL_39;
  }

  v24 = [v10 incidentId];
  uniqueString = self->_uniqueString;
  self->_uniqueString = v24;

  v26 = [v10 type];
  if (v26 > 0xE)
  {
    v27 = 0;
  }

  else
  {
    v27 = qword_1B33B42B0[v26];
  }

  self->_type = v27;
  if ([v10 type] == 100)
  {
    v28 = 1;
  }

  else if ([v10 hasShouldDisplayOnMap])
  {
    v28 = [v10 shouldDisplayOnMap] ^ 1;
  }

  else
  {
    v28 = 0;
  }

  self->_isNotForDisplay = v28;
  self->_routeRelevance = a5;
  self->super._maxZoom = 99.0;
  v29 = [v10 significance] - 1;
  if (v29 >= 5)
  {
    v30 = 1;
  }

  else
  {
    v30 = v29 + 2;
  }

  self->_significance = v30;
  v31 = [v10 laneClosureType] - 1;
  if (v31 < 6)
  {
    v32 = v31 + 1;
  }

  else
  {
    v32 = 0;
  }

  v33 = blockMutex();
  std::__shared_mutex_base::lock_shared(v33);
  if (_titleBlock)
  {
    v34 = (*(_titleBlock + 16))(_titleBlock, self->_type, v32, [v10 laneClosureCount]);
    title = self->_title;
    self->_title = v34;
  }

  if (_subtitleBlock)
  {
    v36 = (*(_subtitleBlock + 16))();
    v37 = [v36 copy];
    subtitle = self->_subtitle;
    self->_subtitle = v37;
  }

  std::__shared_mutex_base::unlock_shared(v33);
  if (self->_title)
  {
    v39 = [v10 street];
    street = self->_street;
    self->_street = v39;

    v41 = [v10 crossStreet];
    crossStreet = self->_crossStreet;
    self->_crossStreet = v41;

    v43 = [v10 info];
    info = self->_info;
    self->_info = v43;

    if ([v10 startTime] >= 1)
    {
      v45 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:{objc_msgSend(v10, "startTime") * 0.001}];
      startDate = self->_startDate;
      self->_startDate = v45;
    }

    if ([v10 endTime] >= 1)
    {
      v47 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:{objc_msgSend(v10, "endTime") * 0.001}];
      endDate = self->_endDate;
      self->_endDate = v47;
    }

    if ([v10 updateTime] >= 1)
    {
      v49 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:{objc_msgSend(v10, "updateTime") * 0.001}];
      lastUpdatedDate = self->_lastUpdatedDate;
      self->_lastUpdatedDate = v49;
    }

    v51 = [v10 restrictionInfo];

    if (v51)
    {
      v52 = [v10 restrictionInfo];
      restrictionInfo = self->_restrictionInfo;
      self->_restrictionInfo = v52;
    }

    v54 = [v10 artwork];

    if (v54)
    {
      v55 = [v10 artwork];
      artwork = self->_artwork;
      self->_artwork = v55;
    }

    self->_dataSource = 257;
    v57 = self;
  }

  else
  {
LABEL_39:
    v57 = 0;
  }

  return v57;
}

- (VKTrafficIncidentFeature)initWithIncidentData:(const void *)a3
{
  if (zilch::GeoCoordinates::has_elevation(a3))
  {
    v5 = zilch::GeoCoordinates::z(a3) * 0.01;
  }

  else
  {
    v5 = 1.79769313e308;
  }

  v65 = zilch::GeoCoordinates::y(a3);
  zilch::Latitude::toDegrees(&v65);
  v7 = v6;
  v64 = zilch::GeoCoordinates::x(a3);
  zilch::Longitude::toDegrees(&v64);
  isa = (a3 + 16);
  if (*(a3 + 39) >= 0)
  {
    v10 = a3 + 16;
  }

  else
  {
    v10 = *(a3 + 2);
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v10, v8}];
  v12 = *MEMORY[0x1E69A1918];
  v63.receiver = self;
  v63.super_class = VKTrafficIncidentFeature;
  v13 = [(VKTrafficFeature *)&v63 initWithFeatureType:0 uniqueIdentifier:v11 position:v12 direction:v7 routeOffset:v62 routeOffsetInMeters:v5, -1.0, 0.0];

  if (!v13)
  {
    goto LABEL_22;
  }

  v14 = tan(v7 * 0.00872664626 + 0.785398163);
  v15 = log(v14);
  v16.f64[0] = v62;
  v16.f64[1] = v15;
  v17 = 381774871;
  __asm { FMOV            V1.2D, #0.5 }

  v23 = vmlaq_f64(_Q1, xmmword_1B33B0700, v16);
  *&v13->super._worldPoint.x = v23;
  v13->super._worldPoint.z = v5;
  v24 = *(a3 + 16);
  if (v24 < 8)
  {
    v25 = v24 + 1;
  }

  else
  {
    v25 = 0;
  }

  v13->_type = v25;
  LOBYTE(v17) = *(a3 + 164);
  v26 = v17;
  LOBYTE(v23.f64[0]) = *(a3 + 165);
  v13->super._minZoom = v26;
  v13->super._maxZoom = LODWORD(v23.f64[0]);
  LOBYTE(v26) = *(a3 + 166);
  v13->_elevationMinZoom = LODWORD(v26);
  v27 = (*(a3 + 40) - 1);
  if (v27 >= 5)
  {
    v28 = 1;
  }

  else
  {
    v28 = v27 + 2;
  }

  v13->_significance = v28;
  v29 = blockMutex();
  std::__shared_mutex_base::lock_shared(v29);
  if (_titleBlock)
  {
    v30 = (*(_titleBlock + 16))();
    title = v13->_title;
    v13->_title = v30;
  }

  if (_subtitleBlock)
  {
    v32 = (*(_subtitleBlock + 16))();
    v33 = [v32 copy];
    subtitle = v13->_subtitle;
    v13->_subtitle = v33;
  }

  std::__shared_mutex_base::unlock_shared(v29);
  if (!v13->_title)
  {
LABEL_22:
    v36 = 0;
    goto LABEL_63;
  }

  v35 = *(a3 + 39);
  if (v35 < 0)
  {
    v35 = *(a3 + 3);
    if (!v35)
    {
      goto LABEL_29;
    }

    isa = isa->super.isa;
    if (!isa)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  if (*(a3 + 39))
  {
LABEL_25:
    isa = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:isa length:v35 encoding:4];
    v37 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v38 = [(NSString *)isa stringByTrimmingCharactersInSet:v37];

    if (![v38 length])
    {

      isa = 0;
    }

LABEL_28:
    uniqueString = v13->_uniqueString;
    v13->_uniqueString = isa;
  }

LABEL_29:
  v40 = (a3 + 72);
  v41 = *(a3 + 95);
  if (v41 < 0)
  {
    v41 = *(a3 + 10);
    if (!v41)
    {
      goto LABEL_38;
    }

    v40 = v40->super.isa;
    if (!v40)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (*(a3 + 95))
  {
LABEL_34:
    v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v40 length:v41 encoding:4];
    v42 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v43 = [(NSString *)v40 stringByTrimmingCharactersInSet:v42];

    if (![v43 length])
    {

      v40 = 0;
    }

LABEL_37:
    street = v13->_street;
    v13->_street = v40;
  }

LABEL_38:
  v45 = (a3 + 96);
  v46 = *(a3 + 119);
  if (v46 < 0)
  {
    v46 = *(a3 + 13);
    if (!v46)
    {
      goto LABEL_47;
    }

    v45 = v45->super.isa;
    if (!v45)
    {
      goto LABEL_46;
    }

    goto LABEL_43;
  }

  if (*(a3 + 119))
  {
LABEL_43:
    v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v45 length:v46 encoding:4];
    v47 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v48 = [(NSString *)v45 stringByTrimmingCharactersInSet:v47];

    if (![v48 length])
    {

      v45 = 0;
    }

LABEL_46:
    crossStreet = v13->_crossStreet;
    v13->_crossStreet = v45;
  }

LABEL_47:
  v50 = (a3 + 40);
  v51 = *(a3 + 63);
  if ((v51 & 0x8000000000000000) == 0)
  {
    if (!*(a3 + 63))
    {
      goto LABEL_56;
    }

    goto LABEL_52;
  }

  v51 = *(a3 + 6);
  if (v51)
  {
    v50 = v50->super.isa;
    if (!v50)
    {
LABEL_55:
      info = v13->_info;
      v13->_info = v50;

      goto LABEL_56;
    }

LABEL_52:
    v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v50 length:v51 encoding:4];
    v52 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v53 = [(NSString *)v50 stringByTrimmingCharactersInSet:v52];

    if (![v53 length])
    {

      v50 = 0;
    }

    goto LABEL_55;
  }

LABEL_56:
  if (*(a3 + 15) >= 1)
  {
    v55 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:*(a3 + 15) * 0.001];
    startDate = v13->_startDate;
    v13->_startDate = v55;
  }

  if (*(a3 + 16) >= 1)
  {
    v57 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:*(a3 + 16) * 0.001];
    endDate = v13->_endDate;
    v13->_endDate = v57;
  }

  if (*(a3 + 17) >= 1)
  {
    v59 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:*(a3 + 17) * 0.001];
    lastUpdatedDate = v13->_lastUpdatedDate;
    v13->_lastUpdatedDate = v59;
  }

  v13->_dataSource = 258;
  v36 = v13;
LABEL_63:

  return v36;
}

+ (id)stringForIncidentSignificance:(int64_t)a3
{
  if (a3 > 6)
  {
    return 0;
  }

  else
  {
    return off_1E7B36060[a3];
  }
}

+ (id)stringForRouteRelevance:(int64_t)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E7B36040[a3];
  }
}

+ (id)stringForIncidentType:(int64_t)a3
{
  if (a3 > 0xE)
  {
    return 0;
  }

  else
  {
    return off_1E7B35FC8[a3];
  }
}

+ (int64_t)incidentTypeForGeoRouteIncident:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && (v5 = [v3 type], v5 < 0xF))
  {
    v6 = qword_1B33B42B0[v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end