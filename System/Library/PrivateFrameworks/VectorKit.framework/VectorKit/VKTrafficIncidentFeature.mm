@interface VKTrafficIncidentFeature
+ (id)stringForIncidentSignificance:(int64_t)significance;
+ (id)stringForIncidentType:(int64_t)type;
+ (id)stringForRouteRelevance:(int64_t)relevance;
+ (int64_t)incidentTypeForGeoRouteIncident:(id)incident;
- (VKTrafficIncidentFeature)initWithIncidentData:(const void *)data;
- (VKTrafficIncidentFeature)initWithRouteIncident:(id)incident routeOffsetInMeters:(unsigned int)meters routeRelevance:(int64_t)relevance onRoute:(id)route;
- (id)copyWithZone:(_NSZone *)zone;
- (void)populateDebugNode:(void *)node;
@end

@implementation VKTrafficIncidentFeature

- (void)populateDebugNode:(void *)node
{
  v19.receiver = self;
  v19.super_class = VKTrafficIncidentFeature;
  [(VKTrafficFeature *)&v19 populateDebugNode:?];
  std::string::basic_string[abi:nn200100]<0>(&v17, "TrafficIncidentType");
  v5 = [VKTrafficIncidentFeature stringForIncidentType:self->_type];
  gdc::DebugTreeValue::DebugTreeValue(v14, [v5 UTF8String]);
  gdc::DebugTreeNode::addProperty(node, &v17, v14);
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
  gdc::DebugTreeNode::addProperty(node, &v17, v11);
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
  gdc::DebugTreeNode::addProperty(node, &v17, v8);
  if (v10 < 0)
  {
    operator delete(v9);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = VKTrafficIncidentFeature;
  v4 = [(VKTrafficFeature *)&v7 copyWithZone:zone];
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

- (VKTrafficIncidentFeature)initWithRouteIncident:(id)incident routeOffsetInMeters:(unsigned int)meters routeRelevance:(int64_t)relevance onRoute:(id)route
{
  incidentCopy = incident;
  routeCopy = route;
  v12 = routeCopy;
  if (!incidentCopy)
  {
    goto LABEL_39;
  }

  v13 = *MEMORY[0x1E69A1918];
  v60 = *MEMORY[0x1E69A1918];
  if (routeCopy)
  {
    v13 = [routeCopy coordinateAtOffset:meters];
    v60 = v13;
    [v12 pointAtRouteCoordinate:v13];
    v15 = v14;
  }

  else
  {
    v15 = 1.79769313e308;
  }

  position = [incidentCopy position];
  [position lat];
  v18 = v17;
  position2 = [incidentCopy position];
  [position2 lng];
  v21 = v20;

  v22 = v12 ? VKTrafficFeatureDirection(&v60, v12) : -1.0;
  incidentId = [incidentCopy incidentId];
  v59.receiver = self;
  v59.super_class = VKTrafficIncidentFeature;
  self = [(VKTrafficFeature *)&v59 initWithFeatureType:0 uniqueIdentifier:incidentId position:v13 direction:v18 routeOffset:v21 routeOffsetInMeters:v15, v22, meters];

  if (!self)
  {
    goto LABEL_39;
  }

  incidentId2 = [incidentCopy incidentId];
  uniqueString = self->_uniqueString;
  self->_uniqueString = incidentId2;

  type = [incidentCopy type];
  if (type > 0xE)
  {
    v27 = 0;
  }

  else
  {
    v27 = qword_1B33B42B0[type];
  }

  self->_type = v27;
  if ([incidentCopy type] == 100)
  {
    v28 = 1;
  }

  else if ([incidentCopy hasShouldDisplayOnMap])
  {
    v28 = [incidentCopy shouldDisplayOnMap] ^ 1;
  }

  else
  {
    v28 = 0;
  }

  self->_isNotForDisplay = v28;
  self->_routeRelevance = relevance;
  self->super._maxZoom = 99.0;
  v29 = [incidentCopy significance] - 1;
  if (v29 >= 5)
  {
    v30 = 1;
  }

  else
  {
    v30 = v29 + 2;
  }

  self->_significance = v30;
  v31 = [incidentCopy laneClosureType] - 1;
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
    v34 = (*(_titleBlock + 16))(_titleBlock, self->_type, v32, [incidentCopy laneClosureCount]);
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
    street = [incidentCopy street];
    street = self->_street;
    self->_street = street;

    crossStreet = [incidentCopy crossStreet];
    crossStreet = self->_crossStreet;
    self->_crossStreet = crossStreet;

    info = [incidentCopy info];
    info = self->_info;
    self->_info = info;

    if ([incidentCopy startTime] >= 1)
    {
      v45 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:{objc_msgSend(incidentCopy, "startTime") * 0.001}];
      startDate = self->_startDate;
      self->_startDate = v45;
    }

    if ([incidentCopy endTime] >= 1)
    {
      v47 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:{objc_msgSend(incidentCopy, "endTime") * 0.001}];
      endDate = self->_endDate;
      self->_endDate = v47;
    }

    if ([incidentCopy updateTime] >= 1)
    {
      v49 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:{objc_msgSend(incidentCopy, "updateTime") * 0.001}];
      lastUpdatedDate = self->_lastUpdatedDate;
      self->_lastUpdatedDate = v49;
    }

    restrictionInfo = [incidentCopy restrictionInfo];

    if (restrictionInfo)
    {
      restrictionInfo2 = [incidentCopy restrictionInfo];
      restrictionInfo = self->_restrictionInfo;
      self->_restrictionInfo = restrictionInfo2;
    }

    artwork = [incidentCopy artwork];

    if (artwork)
    {
      artwork2 = [incidentCopy artwork];
      artwork = self->_artwork;
      self->_artwork = artwork2;
    }

    self->_dataSource = 257;
    selfCopy = self;
  }

  else
  {
LABEL_39:
    selfCopy = 0;
  }

  return selfCopy;
}

- (VKTrafficIncidentFeature)initWithIncidentData:(const void *)data
{
  if (zilch::GeoCoordinates::has_elevation(data))
  {
    v5 = zilch::GeoCoordinates::z(data) * 0.01;
  }

  else
  {
    v5 = 1.79769313e308;
  }

  v65 = zilch::GeoCoordinates::y(data);
  zilch::Latitude::toDegrees(&v65);
  v7 = v6;
  v64 = zilch::GeoCoordinates::x(data);
  zilch::Longitude::toDegrees(&v64);
  isa = (data + 16);
  if (*(data + 39) >= 0)
  {
    v10 = data + 16;
  }

  else
  {
    v10 = *(data + 2);
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
  v24 = *(data + 16);
  if (v24 < 8)
  {
    v25 = v24 + 1;
  }

  else
  {
    v25 = 0;
  }

  v13->_type = v25;
  LOBYTE(v17) = *(data + 164);
  v26 = v17;
  LOBYTE(v23.f64[0]) = *(data + 165);
  v13->super._minZoom = v26;
  v13->super._maxZoom = LODWORD(v23.f64[0]);
  LOBYTE(v26) = *(data + 166);
  v13->_elevationMinZoom = LODWORD(v26);
  v27 = (*(data + 40) - 1);
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

  v35 = *(data + 39);
  if (v35 < 0)
  {
    v35 = *(data + 3);
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

  if (*(data + 39))
  {
LABEL_25:
    isa = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:isa length:v35 encoding:4];
    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v38 = [(NSString *)isa stringByTrimmingCharactersInSet:whitespaceCharacterSet];

    if (![v38 length])
    {

      isa = 0;
    }

LABEL_28:
    uniqueString = v13->_uniqueString;
    v13->_uniqueString = isa;
  }

LABEL_29:
  v40 = (data + 72);
  v41 = *(data + 95);
  if (v41 < 0)
  {
    v41 = *(data + 10);
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

  if (*(data + 95))
  {
LABEL_34:
    v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v40 length:v41 encoding:4];
    whitespaceCharacterSet2 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v43 = [(NSString *)v40 stringByTrimmingCharactersInSet:whitespaceCharacterSet2];

    if (![v43 length])
    {

      v40 = 0;
    }

LABEL_37:
    street = v13->_street;
    v13->_street = v40;
  }

LABEL_38:
  v45 = (data + 96);
  v46 = *(data + 119);
  if (v46 < 0)
  {
    v46 = *(data + 13);
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

  if (*(data + 119))
  {
LABEL_43:
    v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v45 length:v46 encoding:4];
    whitespaceCharacterSet3 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v48 = [(NSString *)v45 stringByTrimmingCharactersInSet:whitespaceCharacterSet3];

    if (![v48 length])
    {

      v45 = 0;
    }

LABEL_46:
    crossStreet = v13->_crossStreet;
    v13->_crossStreet = v45;
  }

LABEL_47:
  v50 = (data + 40);
  v51 = *(data + 63);
  if ((v51 & 0x8000000000000000) == 0)
  {
    if (!*(data + 63))
    {
      goto LABEL_56;
    }

    goto LABEL_52;
  }

  v51 = *(data + 6);
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
    whitespaceCharacterSet4 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v53 = [(NSString *)v50 stringByTrimmingCharactersInSet:whitespaceCharacterSet4];

    if (![v53 length])
    {

      v50 = 0;
    }

    goto LABEL_55;
  }

LABEL_56:
  if (*(data + 15) >= 1)
  {
    v55 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:*(data + 15) * 0.001];
    startDate = v13->_startDate;
    v13->_startDate = v55;
  }

  if (*(data + 16) >= 1)
  {
    v57 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:*(data + 16) * 0.001];
    endDate = v13->_endDate;
    v13->_endDate = v57;
  }

  if (*(data + 17) >= 1)
  {
    v59 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:*(data + 17) * 0.001];
    lastUpdatedDate = v13->_lastUpdatedDate;
    v13->_lastUpdatedDate = v59;
  }

  v13->_dataSource = 258;
  v36 = v13;
LABEL_63:

  return v36;
}

+ (id)stringForIncidentSignificance:(int64_t)significance
{
  if (significance > 6)
  {
    return 0;
  }

  else
  {
    return off_1E7B36060[significance];
  }
}

+ (id)stringForRouteRelevance:(int64_t)relevance
{
  if (relevance > 3)
  {
    return 0;
  }

  else
  {
    return off_1E7B36040[relevance];
  }
}

+ (id)stringForIncidentType:(int64_t)type
{
  if (type > 0xE)
  {
    return 0;
  }

  else
  {
    return off_1E7B35FC8[type];
  }
}

+ (int64_t)incidentTypeForGeoRouteIncident:(id)incident
{
  incidentCopy = incident;
  v4 = incidentCopy;
  if (incidentCopy && (v5 = [incidentCopy type], v5 < 0xF))
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