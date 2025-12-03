@interface RTTripCluster
+ (id)createWithClusterID:(id)d commuteID:(id)iD startLatitude:(double)latitude startLongitude:(double)longitude endLatitude:(double)endLatitude endLongitude:(double)endLongitude modeOfTransport:(int64_t)transport lastTimeTaken:(id)self0 avgBikeDistance:(double)self1 avgBikeTime:(double)self2 avgWalkTime:(double)self3 avgWalkDistance:(double)self4 countOfBikeTraversal:(int)self5 countOfWalkTraversal:(int)self6 clusterOrder:(signed __int16)self7;
+ (id)createWithManagedObject:(id)object;
+ (id)createWithTripClusterMO:(id)o;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCluster:(id)cluster;
- (NSString)description;
- (RTTripCluster)initWithClusterID:(id)d startLatitude:(double)latitude startLongitude:(double)longitude endLatitude:(double)endLatitude endLongitude:(double)endLongitude modeOfTransport:(int64_t)transport lastTimeTaken:(id)taken countOfTraversal:(int)self0 minTripTime:(double)self1 maxTripTime:(double)self2 avgTripTime:(double)self3 minTripDistance:(double)self4 maxTripDistance:(double)self5 avgTripDistance:(double)self6 commuteID:(id)self7 isLocked:(BOOL)self8 avgBikeDistance:(double)self9 avgBikeTime:(double)bikeTime avgWalkDistance:(double)walkDistance avgWalkTime:(double)walkTime countOfBikeTraversal:(int)bikeTraversal countOfWalkTraversal:(int)walkTraversal clusterOrder:(signed __int16)order;
- (RTTripCluster)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)managedObjectWithContext:(id)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTTripCluster

+ (id)createWithClusterID:(id)d commuteID:(id)iD startLatitude:(double)latitude startLongitude:(double)longitude endLatitude:(double)endLatitude endLongitude:(double)endLongitude modeOfTransport:(int64_t)transport lastTimeTaken:(id)self0 avgBikeDistance:(double)self1 avgBikeTime:(double)self2 avgWalkTime:(double)self3 avgWalkDistance:(double)self4 countOfBikeTraversal:(int)self5 countOfWalkTraversal:(int)self6 clusterOrder:(signed __int16)self7
{
  takenCopy = taken;
  iDCopy = iD;
  dCopy = d;
  LOWORD(v35) = order;
  v33 = [[RTTripCluster alloc] initWithClusterID:dCopy startLatitude:transport startLongitude:takenCopy endLatitude:0 endLongitude:iDCopy modeOfTransport:0 lastTimeTaken:latitude countOfTraversal:longitude minTripTime:endLatitude maxTripTime:endLongitude avgTripTime:0.0 minTripDistance:0.0 maxTripDistance:0.0 avgTripDistance:0.0 commuteID:0 isLocked:0 avgBikeDistance:*&distance avgBikeTime:*&time avgWalkDistance:*&walkDistance avgWalkTime:*&walkTime countOfBikeTraversal:__PAIR64__(walkTraversal countOfWalkTraversal:traversal) clusterOrder:v35];

  return v33;
}

- (RTTripCluster)initWithClusterID:(id)d startLatitude:(double)latitude startLongitude:(double)longitude endLatitude:(double)endLatitude endLongitude:(double)endLongitude modeOfTransport:(int64_t)transport lastTimeTaken:(id)taken countOfTraversal:(int)self0 minTripTime:(double)self1 maxTripTime:(double)self2 avgTripTime:(double)self3 minTripDistance:(double)self4 maxTripDistance:(double)self5 avgTripDistance:(double)self6 commuteID:(id)self7 isLocked:(BOOL)self8 avgBikeDistance:(double)self9 avgBikeTime:(double)bikeTime avgWalkDistance:(double)walkDistance avgWalkTime:(double)walkTime countOfBikeTraversal:(int)bikeTraversal countOfWalkTraversal:(int)walkTraversal clusterOrder:(signed __int16)order
{
  dCopy = d;
  takenCopy = taken;
  iDCopy = iD;
  v46.receiver = self;
  v46.super_class = RTTripCluster;
  v43 = [(RTTripCluster *)&v46 init];
  v44 = v43;
  if (v43)
  {
    objc_storeStrong(&v43->_clusterID, d);
    v44->_startLatitude = latitude;
    v44->_startLongitude = longitude;
    v44->_endLatitude = endLatitude;
    v44->_endLongitude = endLongitude;
    v44->_modeOfTransport = transport;
    objc_storeStrong(&v44->_lastTimeTaken, taken);
    v44->_minTripTime = time;
    v44->_maxTripTime = tripTime;
    v44->_avgTripTime = avgTripTime;
    v44->_minTripDistance = distance;
    v44->_maxTripDistance = tripDistance;
    v44->_avgTripDistance = avgTripDistance;
    v44->_countOfTraversal = traversal;
    objc_storeStrong(&v44->_commuteID, iD);
    v44->_isLocked = locked;
    v44->_avgBikeDistance = bikeDistance;
    v44->_avgBikeTime = bikeTime;
    v44->_avgWalkDistance = walkDistance;
    v44->_avgWalkTime = walkTime;
    v44->_countOfBikeTraversal = bikeTraversal;
    v44->_countOfWalkTraversal = walkTraversal;
    v44->_clusterOrder = order;
  }

  return v44;
}

- (RTTripCluster)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectForKey:@"clusterID"];
  [coderCopy decodeDoubleForKey:@"startLatitude"];
  v43 = v5;
  [coderCopy decodeDoubleForKey:@"startLongitude"];
  v42 = v6;
  [coderCopy decodeDoubleForKey:@"endLatitude"];
  v41 = v7;
  [coderCopy decodeDoubleForKey:@"endLongitude"];
  v40 = v8;
  v9 = [coderCopy decodeObjectForKey:@"lastTimeTaken"];
  v10 = [coderCopy decodeIntForKey:@"countOfTraversal"];
  [coderCopy decodeDoubleForKey:@"minTripTime"];
  v39 = v11;
  [coderCopy decodeDoubleForKey:@"maxTripTime"];
  v38 = v12;
  [coderCopy decodeDoubleForKey:@"avgTripTime"];
  v14 = v13;
  [coderCopy decodeDoubleForKey:@"minTripDistance"];
  v16 = v15;
  [coderCopy decodeDoubleForKey:@"maxTripDistance"];
  v18 = v17;
  [coderCopy decodeDoubleForKey:@"avgTripDistance"];
  v20 = v19;
  v21 = [coderCopy decodeIntegerForKey:@"modeOfTransport"];
  v22 = [coderCopy decodeObjectForKey:@"commuteID"];
  v23 = [coderCopy decodeBoolForKey:@"isLocked"];
  [coderCopy decodeDoubleForKey:@"avgBikeDistance"];
  v25 = v24;
  [coderCopy decodeDoubleForKey:@"avgBikeTime"];
  v27 = v26;
  [coderCopy decodeDoubleForKey:@"avgWalkDistance"];
  v29 = v28;
  [coderCopy decodeDoubleForKey:@"avgWalkTime"];
  v31 = v30;
  v32 = [coderCopy decodeIntForKey:@"countOfBikeTraversal"];
  v33 = [coderCopy decodeIntForKey:@"countOfWalkTraversal"];
  v34 = [coderCopy decodeIntForKey:@"clusterOrder"];

  LOWORD(v37) = v34;
  v35 = [(RTTripCluster *)self initWithClusterID:v4 startLatitude:v21 startLongitude:v9 endLatitude:v10 endLongitude:v22 modeOfTransport:v23 lastTimeTaken:v43 countOfTraversal:v42 minTripTime:v41 maxTripTime:v40 avgTripTime:v39 minTripDistance:v38 maxTripDistance:v14 avgTripDistance:v16 commuteID:v18 isLocked:v20 avgBikeDistance:v25 avgBikeTime:v27 avgWalkDistance:v29 avgWalkTime:v31 countOfBikeTraversal:__PAIR64__(v33 countOfWalkTraversal:v32) clusterOrder:v37];

  return v35;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clusterID = [(RTTripCluster *)self clusterID];
  [coderCopy encodeObject:clusterID forKey:@"clusterID"];

  [(RTTripCluster *)self startLatitude];
  [coderCopy encodeDouble:@"startLatitude" forKey:?];
  [(RTTripCluster *)self startLongitude];
  [coderCopy encodeDouble:@"startLongitude" forKey:?];
  [(RTTripCluster *)self endLatitude];
  [coderCopy encodeDouble:@"endLatitude" forKey:?];
  [(RTTripCluster *)self endLongitude];
  [coderCopy encodeDouble:@"endLongitude" forKey:?];
  [coderCopy encodeInteger:-[RTTripCluster modeOfTransport](self forKey:{"modeOfTransport"), @"modeOfTransport"}];
  lastTimeTaken = [(RTTripCluster *)self lastTimeTaken];
  [coderCopy encodeObject:lastTimeTaken forKey:@"lastTimeTaken"];

  [coderCopy encodeInt:-[RTTripCluster countOfTraversal](self forKey:{"countOfTraversal"), @"countOfTraversal"}];
  [(RTTripCluster *)self minTripTime];
  [coderCopy encodeDouble:@"minTripTime" forKey:?];
  [(RTTripCluster *)self maxTripTime];
  [coderCopy encodeDouble:@"maxTripTime" forKey:?];
  [(RTTripCluster *)self avgTripTime];
  [coderCopy encodeDouble:@"avgTripTime" forKey:?];
  [(RTTripCluster *)self minTripDistance];
  [coderCopy encodeDouble:@"minTripDistance" forKey:?];
  [(RTTripCluster *)self maxTripDistance];
  [coderCopy encodeDouble:@"maxTripDistance" forKey:?];
  [(RTTripCluster *)self avgTripDistance];
  [coderCopy encodeDouble:@"avgTripDistance" forKey:?];
  commuteID = [(RTTripCluster *)self commuteID];
  [coderCopy encodeObject:commuteID forKey:@"commuteID"];

  [coderCopy encodeBool:-[RTTripCluster isLocked](self forKey:{"isLocked"), @"isLocked"}];
  [(RTTripCluster *)self avgBikeDistance];
  [coderCopy encodeDouble:@"avgBikeDistance" forKey:?];
  [(RTTripCluster *)self avgBikeTime];
  [coderCopy encodeDouble:@"avgBikeTime" forKey:?];
  [(RTTripCluster *)self avgWalkDistance];
  [coderCopy encodeDouble:@"avgWalkDistance" forKey:?];
  [(RTTripCluster *)self avgWalkTime];
  [coderCopy encodeDouble:@"avgWalkTime" forKey:?];
  [coderCopy encodeInt:-[RTTripCluster countOfBikeTraversal](self forKey:{"countOfBikeTraversal"), @"countOfBikeTraversal"}];
  [coderCopy encodeInt:-[RTTripCluster countOfWalkTraversal](self forKey:{"countOfWalkTraversal"), @"countOfWalkTraversal"}];
  [coderCopy encodeInt:-[RTTripCluster clusterOrder](self forKey:{"clusterOrder"), @"clusterOrder"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  LOWORD(v6) = self->_clusterOrder;
  return [v4 initWithClusterID:self->_clusterID startLatitude:self->_modeOfTransport startLongitude:self->_lastTimeTaken endLatitude:self->_countOfTraversal endLongitude:self->_commuteID modeOfTransport:self->_isLocked lastTimeTaken:self->_startLatitude countOfTraversal:self->_startLongitude minTripTime:self->_endLatitude maxTripTime:self->_endLongitude avgTripTime:self->_minTripTime minTripDistance:self->_maxTripTime maxTripDistance:self->_avgTripTime avgTripDistance:self->_minTripDistance commuteID:*&self->_maxTripDistance isLocked:*&self->_avgTripDistance avgBikeDistance:*&self->_avgBikeDistance avgBikeTime:*&self->_avgBikeTime avgWalkDistance:*&self->_avgWalkDistance avgWalkTime:*&self->_avgWalkTime countOfBikeTraversal:*&self->_countOfBikeTraversal countOfWalkTraversal:v6 clusterOrder:?];
}

- (BOOL)isEqualToCluster:(id)cluster
{
  clusterCopy = cluster;
  clusterID = self->_clusterID;
  clusterID = [clusterCopy clusterID];
  if (-[NSUUID isEqual:](clusterID, "isEqual:", clusterID) && (-[RTTripCluster startLatitude](self, "startLatitude"), v8 = v7, [clusterCopy startLatitude], vabdd_f64(v8, v9) < 2.22044605e-16) && (-[RTTripCluster startLongitude](self, "startLongitude"), v11 = v10, objc_msgSend(clusterCopy, "startLongitude"), vabdd_f64(v11, v12) < 2.22044605e-16) && (-[RTTripCluster endLatitude](self, "endLatitude"), v14 = v13, objc_msgSend(clusterCopy, "endLatitude"), vabdd_f64(v14, v15) < 2.22044605e-16) && (-[RTTripCluster endLongitude](self, "endLongitude"), v17 = v16, objc_msgSend(clusterCopy, "endLongitude"), vabdd_f64(v17, v18) < 2.22044605e-16) && (v19 = -[RTTripCluster modeOfTransport](self, "modeOfTransport"), v19 == objc_msgSend(clusterCopy, "modeOfTransport")))
  {
    lastTimeTaken = self->_lastTimeTaken;
    lastTimeTaken = [clusterCopy lastTimeTaken];
    if (-[NSDate isEqualToDate:](lastTimeTaken, "isEqualToDate:", lastTimeTaken) && (v22 = -[RTTripCluster countOfTraversal](self, "countOfTraversal"), v22 == [clusterCopy countOfTraversal]) && (-[RTTripCluster minTripTime](self, "minTripTime"), v24 = v23, objc_msgSend(clusterCopy, "minTripTime"), vabdd_f64(v24, v25) < 2.22044605e-16) && (-[RTTripCluster maxTripTime](self, "maxTripTime"), v27 = v26, objc_msgSend(clusterCopy, "maxTripTime"), vabdd_f64(v27, v28) < 2.22044605e-16) && (-[RTTripCluster avgTripTime](self, "avgTripTime"), v30 = v29, objc_msgSend(clusterCopy, "avgTripTime"), vabdd_f64(v30, v31) < 2.22044605e-16) && (-[RTTripCluster minTripDistance](self, "minTripDistance"), v33 = v32, objc_msgSend(clusterCopy, "minTripDistance"), vabdd_f64(v33, v34) < 2.22044605e-16) && (-[RTTripCluster maxTripDistance](self, "maxTripDistance"), v36 = v35, objc_msgSend(clusterCopy, "maxTripDistance"), vabdd_f64(v36, v37) < 2.22044605e-16) && (-[RTTripCluster avgTripDistance](self, "avgTripDistance"), v39 = v38, objc_msgSend(clusterCopy, "avgTripDistance"), vabdd_f64(v39, v40) < 2.22044605e-16))
    {
      commuteID = self->_commuteID;
      commuteID = [clusterCopy commuteID];
      if (-[NSUUID isEqual:](commuteID, "isEqual:", commuteID) && (v43 = -[RTTripCluster isLocked](self, "isLocked"), v43 == [clusterCopy isLocked]) && (-[RTTripCluster avgBikeDistance](self, "avgBikeDistance"), v45 = v44, objc_msgSend(clusterCopy, "avgBikeDistance"), vabdd_f64(v45, v46) < 2.22044605e-16) && (-[RTTripCluster avgBikeTime](self, "avgBikeTime"), v48 = v47, objc_msgSend(clusterCopy, "avgBikeTime"), vabdd_f64(v48, v49) < 2.22044605e-16) && (-[RTTripCluster avgWalkDistance](self, "avgWalkDistance"), v51 = v50, objc_msgSend(clusterCopy, "avgWalkDistance"), vabdd_f64(v51, v52) < 2.22044605e-16) && (-[RTTripCluster avgWalkTime](self, "avgWalkTime"), v54 = v53, objc_msgSend(clusterCopy, "avgWalkTime"), vabdd_f64(v54, v55) < 2.22044605e-16) && (v56 = -[RTTripCluster countOfBikeTraversal](self, "countOfBikeTraversal"), v56 == objc_msgSend(clusterCopy, "countOfBikeTraversal")) && (v57 = -[RTTripCluster countOfWalkTraversal](self, "countOfWalkTraversal"), v57 == objc_msgSend(clusterCopy, "countOfWalkTraversal")))
      {
        clusterOrder = [(RTTripCluster *)self clusterOrder];
        v59 = clusterOrder == [clusterCopy clusterOrder];
      }

      else
      {
        v59 = 0;
      }
    }

    else
    {
      v59 = 0;
    }
  }

  else
  {
    v59 = 0;
  }

  return v59;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTTripCluster *)self isEqualToCluster:v5];
  }

  return v6;
}

- (NSString)description
{
  v41 = MEMORY[0x277CCACA8];
  clusterID = [(RTTripCluster *)self clusterID];
  uUIDString = [clusterID UUIDString];
  uTF8String = [uUIDString UTF8String];
  countOfTraversal = [(RTTripCluster *)self countOfTraversal];
  [(RTTripCluster *)self startLatitude];
  v38 = v3;
  [(RTTripCluster *)self startLongitude];
  v37 = v4;
  [(RTTripCluster *)self endLatitude];
  v36 = v5;
  [(RTTripCluster *)self endLongitude];
  v35 = v6;
  [(RTTripCluster *)self avgTripDistance];
  v34 = v7;
  [(RTTripCluster *)self avgTripTime];
  v33 = v8;
  lastTimeTaken = [(RTTripCluster *)self lastTimeTaken];
  [(RTTripCluster *)self maxTripTime];
  v11 = v10;
  [(RTTripCluster *)self minTripTime];
  v13 = v12;
  [(RTTripCluster *)self maxTripDistance];
  v15 = v14;
  [(RTTripCluster *)self minTripDistance];
  v17 = v16;
  modeOfTransport = [(RTTripCluster *)self modeOfTransport];
  countOfTraversal2 = [(RTTripCluster *)self countOfTraversal];
  commuteID = [(RTTripCluster *)self commuteID];
  uUIDString2 = [commuteID UUIDString];
  uTF8String2 = [uUIDString2 UTF8String];
  isLocked = [(RTTripCluster *)self isLocked];
  [(RTTripCluster *)self avgBikeDistance];
  v25 = v24;
  [(RTTripCluster *)self avgBikeTime];
  v27 = v26;
  [(RTTripCluster *)self avgWalkDistance];
  v29 = v28;
  [(RTTripCluster *)self avgWalkTime];
  v31 = [v41 stringWithFormat:@"clusterID, %s, countOfTraversal, %ld, startLat, %.7f, startLon, %.7f, endLat, %.7f, endLon, %.7f, avgTripDst, %.6f, avgTripTime, %.6f, lastTime, %@, maxTripTime, %.6f, minTripTime, %.6f, maxTripDst, %.6f, minTripDst, %.6f, modeOfTransport, %ld, countOfTraversal, %d, commuteID, %s, isLocked, %d, avgBikeDst, %.6f, avgBikeTime, %.6f, avgWalkDst, %.6f, avgWalkTime, %.6f, cntBikeTravel, %d, cntWalkTravel, %d, order, %d", uTF8String, countOfTraversal, v38, v37, v36, v35, v34, v33, lastTimeTaken, v11, v13, v15, v17, modeOfTransport, countOfTraversal2, uTF8String2, isLocked, v25, v27, v29, v30, -[RTTripCluster countOfBikeTraversal](self, "countOfBikeTraversal"), -[RTTripCluster countOfWalkTraversal](self, "countOfWalkTraversal"), -[RTTripCluster clusterOrder](self, "clusterOrder")];

  return v31;
}

+ (id)createWithManagedObject:(id)object
{
  v18 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if (objectCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = objectCopy;
      v6 = [objc_opt_class() createWithTripClusterMO:v5];

      goto LABEL_8;
    }

    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = 138413058;
      v11 = v9;
      v12 = 2112;
      v14 = 2080;
      v13 = objectCopy;
      v15 = "+[RTTripCluster(RTCoreDataTransformable) createWithManagedObject:]";
      v16 = 1024;
      v17 = 33;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@, managedObject, %@, is not supported by RTTripSegment+CoreDataReadable (in %s:%d)", &v10, 0x26u);
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)createWithTripClusterMO:(id)o
{
  oCopy = o;
  v4 = objc_opt_new();
  clusterID = [oCopy clusterID];

  if (clusterID)
  {
    clusterID2 = [oCopy clusterID];

    v4 = clusterID2;
  }

  v7 = objc_opt_new();
  commuteID = [oCopy commuteID];

  if (commuteID)
  {
    commuteID2 = [oCopy commuteID];

    v7 = commuteID2;
  }

  date = [MEMORY[0x277CBEAA8] date];
  lastTimeTaken = [oCopy lastTimeTaken];

  if (lastTimeTaken)
  {
    lastTimeTaken2 = [oCopy lastTimeTaken];

    date = lastTimeTaken2;
  }

  if ([oCopy countOfTraversal])
  {
    countOfTraversal = [oCopy countOfTraversal];
  }

  else
  {
    countOfTraversal = 0;
  }

  [oCopy startLatitude];
  v14 = 0.0;
  v16 = v15 == 0.0;
  v17 = 0.0;
  if (!v16)
  {
    [oCopy startLatitude];
  }

  v65 = v17;
  [oCopy startLongitude];
  if (v18 != 0.0)
  {
    [oCopy startLongitude];
    v14 = v19;
  }

  [oCopy endLatitude];
  v20 = 0.0;
  v16 = v21 == 0.0;
  v22 = 0.0;
  if (!v16)
  {
    [oCopy endLatitude];
  }

  v63 = v22;
  [oCopy endLongitude];
  if (v23 != 0.0)
  {
    [oCopy endLongitude];
    v20 = v24;
  }

  if ([oCopy modeOfTransport])
  {
    modeOfTransport = [oCopy modeOfTransport];
  }

  else
  {
    modeOfTransport = 0;
  }

  [oCopy avgTripTime];
  v26 = 0.0;
  v16 = v27 == 0.0;
  v28 = 0.0;
  if (!v16)
  {
    [oCopy avgTripTime];
  }

  v62 = v28;
  [oCopy avgTripTime];
  if (v29 != 0.0)
  {
    [oCopy minTripTime];
    v26 = v30;
  }

  [oCopy avgTripTime];
  v31 = 0;
  v16 = v32 == 0.0;
  v33 = 0.0;
  if (!v16)
  {
    [oCopy maxTripTime];
  }

  v61 = v33;
  v64 = v20;
  v66 = v14;
  [oCopy avgTripTime];
  if (v34 != 0.0)
  {
    [oCopy avgTripDistance];
    v31 = v35;
  }

  [oCopy avgTripTime];
  v36 = 0;
  v37 = 0.0;
  if (v38 != 0.0)
  {
    [oCopy minTripDistance];
    v37 = v39;
  }

  [oCopy avgTripTime];
  if (v40 != 0.0)
  {
    [oCopy maxTripDistance];
    v36 = v41;
  }

  if ([oCopy isLocked])
  {
    isLocked = [oCopy isLocked];
  }

  else
  {
    isLocked = 0;
  }

  [oCopy avgBikeDistance];
  v43 = 0;
  v44 = 0;
  if (v45 != 0.0)
  {
    [oCopy avgBikeDistance];
    v44 = v46;
  }

  [oCopy avgBikeTime];
  if (v47 != 0.0)
  {
    [oCopy avgBikeTime];
    v43 = v48;
  }

  [oCopy avgWalkDistance];
  v49 = 0;
  v50 = 0;
  if (v51 != 0.0)
  {
    [oCopy avgWalkDistance];
    v50 = v52;
  }

  [oCopy avgWalkTime];
  if (v53 != 0.0)
  {
    [oCopy avgWalkTime];
    v49 = v54;
  }

  if ([oCopy countOfBikeTraversal])
  {
    countOfBikeTraversal = [oCopy countOfBikeTraversal];
  }

  else
  {
    countOfBikeTraversal = 0;
  }

  if ([oCopy countOfWalkTraversal])
  {
    countOfWalkTraversal = [oCopy countOfWalkTraversal];
  }

  else
  {
    countOfWalkTraversal = 0;
  }

  if ([oCopy clusterOrder])
  {
    clusterOrder = [oCopy clusterOrder];
  }

  else
  {
    clusterOrder = 0;
  }

  LOWORD(v60) = clusterOrder;
  v58 = [[RTTripCluster alloc] initWithClusterID:v4 startLatitude:modeOfTransport startLongitude:date endLatitude:countOfTraversal endLongitude:v7 modeOfTransport:isLocked lastTimeTaken:v65 countOfTraversal:v66 minTripTime:v63 maxTripTime:v64 avgTripTime:v26 minTripDistance:v61 maxTripDistance:v62 avgTripDistance:v37 commuteID:v36 isLocked:v31 avgBikeDistance:v44 avgBikeTime:v43 avgWalkDistance:v50 avgWalkTime:v49 countOfBikeTraversal:__PAIR64__(countOfWalkTraversal countOfWalkTraversal:countOfBikeTraversal) clusterOrder:v60];

  return v58;
}

- (id)managedObjectWithContext:(id)context
{
  if (context)
  {
    v3 = [RTTripClusterMO managedObjectWithTripCluster:self inManagedObjectContext:context];
  }

  else
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", v6, 2u);
    }

    v3 = 0;
  }

  return v3;
}

@end