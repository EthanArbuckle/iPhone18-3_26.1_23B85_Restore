@interface RTTripCluster
+ (id)createWithClusterID:(id)a3 commuteID:(id)a4 startLatitude:(double)a5 startLongitude:(double)a6 endLatitude:(double)a7 endLongitude:(double)a8 modeOfTransport:(int64_t)a9 lastTimeTaken:(id)a10 avgBikeDistance:(double)a11 avgBikeTime:(double)a12 avgWalkTime:(double)a13 avgWalkDistance:(double)a14 countOfBikeTraversal:(int)a15 countOfWalkTraversal:(int)a16 clusterOrder:(signed __int16)a17;
+ (id)createWithManagedObject:(id)a3;
+ (id)createWithTripClusterMO:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCluster:(id)a3;
- (NSString)description;
- (RTTripCluster)initWithClusterID:(id)a3 startLatitude:(double)a4 startLongitude:(double)a5 endLatitude:(double)a6 endLongitude:(double)a7 modeOfTransport:(int64_t)a8 lastTimeTaken:(id)a9 countOfTraversal:(int)a10 minTripTime:(double)a11 maxTripTime:(double)a12 avgTripTime:(double)a13 minTripDistance:(double)a14 maxTripDistance:(double)a15 avgTripDistance:(double)a16 commuteID:(id)a17 isLocked:(BOOL)a18 avgBikeDistance:(double)a19 avgBikeTime:(double)a20 avgWalkDistance:(double)a21 avgWalkTime:(double)a22 countOfBikeTraversal:(int)a23 countOfWalkTraversal:(int)a24 clusterOrder:(signed __int16)a25;
- (RTTripCluster)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)managedObjectWithContext:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTTripCluster

+ (id)createWithClusterID:(id)a3 commuteID:(id)a4 startLatitude:(double)a5 startLongitude:(double)a6 endLatitude:(double)a7 endLongitude:(double)a8 modeOfTransport:(int64_t)a9 lastTimeTaken:(id)a10 avgBikeDistance:(double)a11 avgBikeTime:(double)a12 avgWalkTime:(double)a13 avgWalkDistance:(double)a14 countOfBikeTraversal:(int)a15 countOfWalkTraversal:(int)a16 clusterOrder:(signed __int16)a17
{
  v30 = a10;
  v31 = a4;
  v32 = a3;
  LOWORD(v35) = a17;
  v33 = [[RTTripCluster alloc] initWithClusterID:v32 startLatitude:a9 startLongitude:v30 endLatitude:0 endLongitude:v31 modeOfTransport:0 lastTimeTaken:a5 countOfTraversal:a6 minTripTime:a7 maxTripTime:a8 avgTripTime:0.0 minTripDistance:0.0 maxTripDistance:0.0 avgTripDistance:0.0 commuteID:0 isLocked:0 avgBikeDistance:*&a11 avgBikeTime:*&a12 avgWalkDistance:*&a14 avgWalkTime:*&a13 countOfBikeTraversal:__PAIR64__(a16 countOfWalkTraversal:a15) clusterOrder:v35];

  return v33;
}

- (RTTripCluster)initWithClusterID:(id)a3 startLatitude:(double)a4 startLongitude:(double)a5 endLatitude:(double)a6 endLongitude:(double)a7 modeOfTransport:(int64_t)a8 lastTimeTaken:(id)a9 countOfTraversal:(int)a10 minTripTime:(double)a11 maxTripTime:(double)a12 avgTripTime:(double)a13 minTripDistance:(double)a14 maxTripDistance:(double)a15 avgTripDistance:(double)a16 commuteID:(id)a17 isLocked:(BOOL)a18 avgBikeDistance:(double)a19 avgBikeTime:(double)a20 avgWalkDistance:(double)a21 avgWalkTime:(double)a22 countOfBikeTraversal:(int)a23 countOfWalkTraversal:(int)a24 clusterOrder:(signed __int16)a25
{
  v40 = a3;
  v41 = a9;
  v42 = a17;
  v46.receiver = self;
  v46.super_class = RTTripCluster;
  v43 = [(RTTripCluster *)&v46 init];
  v44 = v43;
  if (v43)
  {
    objc_storeStrong(&v43->_clusterID, a3);
    v44->_startLatitude = a4;
    v44->_startLongitude = a5;
    v44->_endLatitude = a6;
    v44->_endLongitude = a7;
    v44->_modeOfTransport = a8;
    objc_storeStrong(&v44->_lastTimeTaken, a9);
    v44->_minTripTime = a11;
    v44->_maxTripTime = a12;
    v44->_avgTripTime = a13;
    v44->_minTripDistance = a14;
    v44->_maxTripDistance = a15;
    v44->_avgTripDistance = a16;
    v44->_countOfTraversal = a10;
    objc_storeStrong(&v44->_commuteID, a17);
    v44->_isLocked = a18;
    v44->_avgBikeDistance = a19;
    v44->_avgBikeTime = a20;
    v44->_avgWalkDistance = a21;
    v44->_avgWalkTime = a22;
    v44->_countOfBikeTraversal = a23;
    v44->_countOfWalkTraversal = a24;
    v44->_clusterOrder = a25;
  }

  return v44;
}

- (RTTripCluster)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectForKey:@"clusterID"];
  [v3 decodeDoubleForKey:@"startLatitude"];
  v43 = v5;
  [v3 decodeDoubleForKey:@"startLongitude"];
  v42 = v6;
  [v3 decodeDoubleForKey:@"endLatitude"];
  v41 = v7;
  [v3 decodeDoubleForKey:@"endLongitude"];
  v40 = v8;
  v9 = [v3 decodeObjectForKey:@"lastTimeTaken"];
  v10 = [v3 decodeIntForKey:@"countOfTraversal"];
  [v3 decodeDoubleForKey:@"minTripTime"];
  v39 = v11;
  [v3 decodeDoubleForKey:@"maxTripTime"];
  v38 = v12;
  [v3 decodeDoubleForKey:@"avgTripTime"];
  v14 = v13;
  [v3 decodeDoubleForKey:@"minTripDistance"];
  v16 = v15;
  [v3 decodeDoubleForKey:@"maxTripDistance"];
  v18 = v17;
  [v3 decodeDoubleForKey:@"avgTripDistance"];
  v20 = v19;
  v21 = [v3 decodeIntegerForKey:@"modeOfTransport"];
  v22 = [v3 decodeObjectForKey:@"commuteID"];
  v23 = [v3 decodeBoolForKey:@"isLocked"];
  [v3 decodeDoubleForKey:@"avgBikeDistance"];
  v25 = v24;
  [v3 decodeDoubleForKey:@"avgBikeTime"];
  v27 = v26;
  [v3 decodeDoubleForKey:@"avgWalkDistance"];
  v29 = v28;
  [v3 decodeDoubleForKey:@"avgWalkTime"];
  v31 = v30;
  v32 = [v3 decodeIntForKey:@"countOfBikeTraversal"];
  v33 = [v3 decodeIntForKey:@"countOfWalkTraversal"];
  v34 = [v3 decodeIntForKey:@"clusterOrder"];

  LOWORD(v37) = v34;
  v35 = [(RTTripCluster *)self initWithClusterID:v4 startLatitude:v21 startLongitude:v9 endLatitude:v10 endLongitude:v22 modeOfTransport:v23 lastTimeTaken:v43 countOfTraversal:v42 minTripTime:v41 maxTripTime:v40 avgTripTime:v39 minTripDistance:v38 maxTripDistance:v14 avgTripDistance:v16 commuteID:v18 isLocked:v20 avgBikeDistance:v25 avgBikeTime:v27 avgWalkDistance:v29 avgWalkTime:v31 countOfBikeTraversal:__PAIR64__(v33 countOfWalkTraversal:v32) clusterOrder:v37];

  return v35;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(RTTripCluster *)self clusterID];
  [v7 encodeObject:v4 forKey:@"clusterID"];

  [(RTTripCluster *)self startLatitude];
  [v7 encodeDouble:@"startLatitude" forKey:?];
  [(RTTripCluster *)self startLongitude];
  [v7 encodeDouble:@"startLongitude" forKey:?];
  [(RTTripCluster *)self endLatitude];
  [v7 encodeDouble:@"endLatitude" forKey:?];
  [(RTTripCluster *)self endLongitude];
  [v7 encodeDouble:@"endLongitude" forKey:?];
  [v7 encodeInteger:-[RTTripCluster modeOfTransport](self forKey:{"modeOfTransport"), @"modeOfTransport"}];
  v5 = [(RTTripCluster *)self lastTimeTaken];
  [v7 encodeObject:v5 forKey:@"lastTimeTaken"];

  [v7 encodeInt:-[RTTripCluster countOfTraversal](self forKey:{"countOfTraversal"), @"countOfTraversal"}];
  [(RTTripCluster *)self minTripTime];
  [v7 encodeDouble:@"minTripTime" forKey:?];
  [(RTTripCluster *)self maxTripTime];
  [v7 encodeDouble:@"maxTripTime" forKey:?];
  [(RTTripCluster *)self avgTripTime];
  [v7 encodeDouble:@"avgTripTime" forKey:?];
  [(RTTripCluster *)self minTripDistance];
  [v7 encodeDouble:@"minTripDistance" forKey:?];
  [(RTTripCluster *)self maxTripDistance];
  [v7 encodeDouble:@"maxTripDistance" forKey:?];
  [(RTTripCluster *)self avgTripDistance];
  [v7 encodeDouble:@"avgTripDistance" forKey:?];
  v6 = [(RTTripCluster *)self commuteID];
  [v7 encodeObject:v6 forKey:@"commuteID"];

  [v7 encodeBool:-[RTTripCluster isLocked](self forKey:{"isLocked"), @"isLocked"}];
  [(RTTripCluster *)self avgBikeDistance];
  [v7 encodeDouble:@"avgBikeDistance" forKey:?];
  [(RTTripCluster *)self avgBikeTime];
  [v7 encodeDouble:@"avgBikeTime" forKey:?];
  [(RTTripCluster *)self avgWalkDistance];
  [v7 encodeDouble:@"avgWalkDistance" forKey:?];
  [(RTTripCluster *)self avgWalkTime];
  [v7 encodeDouble:@"avgWalkTime" forKey:?];
  [v7 encodeInt:-[RTTripCluster countOfBikeTraversal](self forKey:{"countOfBikeTraversal"), @"countOfBikeTraversal"}];
  [v7 encodeInt:-[RTTripCluster countOfWalkTraversal](self forKey:{"countOfWalkTraversal"), @"countOfWalkTraversal"}];
  [v7 encodeInt:-[RTTripCluster clusterOrder](self forKey:{"clusterOrder"), @"clusterOrder"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  LOWORD(v6) = self->_clusterOrder;
  return [v4 initWithClusterID:self->_clusterID startLatitude:self->_modeOfTransport startLongitude:self->_lastTimeTaken endLatitude:self->_countOfTraversal endLongitude:self->_commuteID modeOfTransport:self->_isLocked lastTimeTaken:self->_startLatitude countOfTraversal:self->_startLongitude minTripTime:self->_endLatitude maxTripTime:self->_endLongitude avgTripTime:self->_minTripTime minTripDistance:self->_maxTripTime maxTripDistance:self->_avgTripTime avgTripDistance:self->_minTripDistance commuteID:*&self->_maxTripDistance isLocked:*&self->_avgTripDistance avgBikeDistance:*&self->_avgBikeDistance avgBikeTime:*&self->_avgBikeTime avgWalkDistance:*&self->_avgWalkDistance avgWalkTime:*&self->_avgWalkTime countOfBikeTraversal:*&self->_countOfBikeTraversal countOfWalkTraversal:v6 clusterOrder:?];
}

- (BOOL)isEqualToCluster:(id)a3
{
  v4 = a3;
  clusterID = self->_clusterID;
  v6 = [v4 clusterID];
  if (-[NSUUID isEqual:](clusterID, "isEqual:", v6) && (-[RTTripCluster startLatitude](self, "startLatitude"), v8 = v7, [v4 startLatitude], vabdd_f64(v8, v9) < 2.22044605e-16) && (-[RTTripCluster startLongitude](self, "startLongitude"), v11 = v10, objc_msgSend(v4, "startLongitude"), vabdd_f64(v11, v12) < 2.22044605e-16) && (-[RTTripCluster endLatitude](self, "endLatitude"), v14 = v13, objc_msgSend(v4, "endLatitude"), vabdd_f64(v14, v15) < 2.22044605e-16) && (-[RTTripCluster endLongitude](self, "endLongitude"), v17 = v16, objc_msgSend(v4, "endLongitude"), vabdd_f64(v17, v18) < 2.22044605e-16) && (v19 = -[RTTripCluster modeOfTransport](self, "modeOfTransport"), v19 == objc_msgSend(v4, "modeOfTransport")))
  {
    lastTimeTaken = self->_lastTimeTaken;
    v21 = [v4 lastTimeTaken];
    if (-[NSDate isEqualToDate:](lastTimeTaken, "isEqualToDate:", v21) && (v22 = -[RTTripCluster countOfTraversal](self, "countOfTraversal"), v22 == [v4 countOfTraversal]) && (-[RTTripCluster minTripTime](self, "minTripTime"), v24 = v23, objc_msgSend(v4, "minTripTime"), vabdd_f64(v24, v25) < 2.22044605e-16) && (-[RTTripCluster maxTripTime](self, "maxTripTime"), v27 = v26, objc_msgSend(v4, "maxTripTime"), vabdd_f64(v27, v28) < 2.22044605e-16) && (-[RTTripCluster avgTripTime](self, "avgTripTime"), v30 = v29, objc_msgSend(v4, "avgTripTime"), vabdd_f64(v30, v31) < 2.22044605e-16) && (-[RTTripCluster minTripDistance](self, "minTripDistance"), v33 = v32, objc_msgSend(v4, "minTripDistance"), vabdd_f64(v33, v34) < 2.22044605e-16) && (-[RTTripCluster maxTripDistance](self, "maxTripDistance"), v36 = v35, objc_msgSend(v4, "maxTripDistance"), vabdd_f64(v36, v37) < 2.22044605e-16) && (-[RTTripCluster avgTripDistance](self, "avgTripDistance"), v39 = v38, objc_msgSend(v4, "avgTripDistance"), vabdd_f64(v39, v40) < 2.22044605e-16))
    {
      commuteID = self->_commuteID;
      v42 = [v4 commuteID];
      if (-[NSUUID isEqual:](commuteID, "isEqual:", v42) && (v43 = -[RTTripCluster isLocked](self, "isLocked"), v43 == [v4 isLocked]) && (-[RTTripCluster avgBikeDistance](self, "avgBikeDistance"), v45 = v44, objc_msgSend(v4, "avgBikeDistance"), vabdd_f64(v45, v46) < 2.22044605e-16) && (-[RTTripCluster avgBikeTime](self, "avgBikeTime"), v48 = v47, objc_msgSend(v4, "avgBikeTime"), vabdd_f64(v48, v49) < 2.22044605e-16) && (-[RTTripCluster avgWalkDistance](self, "avgWalkDistance"), v51 = v50, objc_msgSend(v4, "avgWalkDistance"), vabdd_f64(v51, v52) < 2.22044605e-16) && (-[RTTripCluster avgWalkTime](self, "avgWalkTime"), v54 = v53, objc_msgSend(v4, "avgWalkTime"), vabdd_f64(v54, v55) < 2.22044605e-16) && (v56 = -[RTTripCluster countOfBikeTraversal](self, "countOfBikeTraversal"), v56 == objc_msgSend(v4, "countOfBikeTraversal")) && (v57 = -[RTTripCluster countOfWalkTraversal](self, "countOfWalkTraversal"), v57 == objc_msgSend(v4, "countOfWalkTraversal")))
      {
        v58 = [(RTTripCluster *)self clusterOrder];
        v59 = v58 == [v4 clusterOrder];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTTripCluster *)self isEqualToCluster:v5];
  }

  return v6;
}

- (NSString)description
{
  v41 = MEMORY[0x277CCACA8];
  v43 = [(RTTripCluster *)self clusterID];
  v42 = [v43 UUIDString];
  v40 = [v42 UTF8String];
  v39 = [(RTTripCluster *)self countOfTraversal];
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
  v9 = [(RTTripCluster *)self lastTimeTaken];
  [(RTTripCluster *)self maxTripTime];
  v11 = v10;
  [(RTTripCluster *)self minTripTime];
  v13 = v12;
  [(RTTripCluster *)self maxTripDistance];
  v15 = v14;
  [(RTTripCluster *)self minTripDistance];
  v17 = v16;
  v18 = [(RTTripCluster *)self modeOfTransport];
  v19 = [(RTTripCluster *)self countOfTraversal];
  v20 = [(RTTripCluster *)self commuteID];
  v21 = [v20 UUIDString];
  v22 = [v21 UTF8String];
  v23 = [(RTTripCluster *)self isLocked];
  [(RTTripCluster *)self avgBikeDistance];
  v25 = v24;
  [(RTTripCluster *)self avgBikeTime];
  v27 = v26;
  [(RTTripCluster *)self avgWalkDistance];
  v29 = v28;
  [(RTTripCluster *)self avgWalkTime];
  v31 = [v41 stringWithFormat:@"clusterID, %s, countOfTraversal, %ld, startLat, %.7f, startLon, %.7f, endLat, %.7f, endLon, %.7f, avgTripDst, %.6f, avgTripTime, %.6f, lastTime, %@, maxTripTime, %.6f, minTripTime, %.6f, maxTripDst, %.6f, minTripDst, %.6f, modeOfTransport, %ld, countOfTraversal, %d, commuteID, %s, isLocked, %d, avgBikeDst, %.6f, avgBikeTime, %.6f, avgWalkDst, %.6f, avgWalkTime, %.6f, cntBikeTravel, %d, cntWalkTravel, %d, order, %d", v40, v39, v38, v37, v36, v35, v34, v33, v9, v11, v13, v15, v17, v18, v19, v22, v23, v25, v27, v29, v30, -[RTTripCluster countOfBikeTraversal](self, "countOfBikeTraversal"), -[RTTripCluster countOfWalkTraversal](self, "countOfWalkTraversal"), -[RTTripCluster clusterOrder](self, "clusterOrder")];

  return v31;
}

+ (id)createWithManagedObject:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
      v13 = v4;
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

+ (id)createWithTripClusterMO:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 clusterID];

  if (v5)
  {
    v6 = [v3 clusterID];

    v4 = v6;
  }

  v7 = objc_opt_new();
  v8 = [v3 commuteID];

  if (v8)
  {
    v9 = [v3 commuteID];

    v7 = v9;
  }

  v10 = [MEMORY[0x277CBEAA8] date];
  v11 = [v3 lastTimeTaken];

  if (v11)
  {
    v12 = [v3 lastTimeTaken];

    v10 = v12;
  }

  if ([v3 countOfTraversal])
  {
    v13 = [v3 countOfTraversal];
  }

  else
  {
    v13 = 0;
  }

  [v3 startLatitude];
  v14 = 0.0;
  v16 = v15 == 0.0;
  v17 = 0.0;
  if (!v16)
  {
    [v3 startLatitude];
  }

  v65 = v17;
  [v3 startLongitude];
  if (v18 != 0.0)
  {
    [v3 startLongitude];
    v14 = v19;
  }

  [v3 endLatitude];
  v20 = 0.0;
  v16 = v21 == 0.0;
  v22 = 0.0;
  if (!v16)
  {
    [v3 endLatitude];
  }

  v63 = v22;
  [v3 endLongitude];
  if (v23 != 0.0)
  {
    [v3 endLongitude];
    v20 = v24;
  }

  if ([v3 modeOfTransport])
  {
    v25 = [v3 modeOfTransport];
  }

  else
  {
    v25 = 0;
  }

  [v3 avgTripTime];
  v26 = 0.0;
  v16 = v27 == 0.0;
  v28 = 0.0;
  if (!v16)
  {
    [v3 avgTripTime];
  }

  v62 = v28;
  [v3 avgTripTime];
  if (v29 != 0.0)
  {
    [v3 minTripTime];
    v26 = v30;
  }

  [v3 avgTripTime];
  v31 = 0;
  v16 = v32 == 0.0;
  v33 = 0.0;
  if (!v16)
  {
    [v3 maxTripTime];
  }

  v61 = v33;
  v64 = v20;
  v66 = v14;
  [v3 avgTripTime];
  if (v34 != 0.0)
  {
    [v3 avgTripDistance];
    v31 = v35;
  }

  [v3 avgTripTime];
  v36 = 0;
  v37 = 0.0;
  if (v38 != 0.0)
  {
    [v3 minTripDistance];
    v37 = v39;
  }

  [v3 avgTripTime];
  if (v40 != 0.0)
  {
    [v3 maxTripDistance];
    v36 = v41;
  }

  if ([v3 isLocked])
  {
    v42 = [v3 isLocked];
  }

  else
  {
    v42 = 0;
  }

  [v3 avgBikeDistance];
  v43 = 0;
  v44 = 0;
  if (v45 != 0.0)
  {
    [v3 avgBikeDistance];
    v44 = v46;
  }

  [v3 avgBikeTime];
  if (v47 != 0.0)
  {
    [v3 avgBikeTime];
    v43 = v48;
  }

  [v3 avgWalkDistance];
  v49 = 0;
  v50 = 0;
  if (v51 != 0.0)
  {
    [v3 avgWalkDistance];
    v50 = v52;
  }

  [v3 avgWalkTime];
  if (v53 != 0.0)
  {
    [v3 avgWalkTime];
    v49 = v54;
  }

  if ([v3 countOfBikeTraversal])
  {
    v55 = [v3 countOfBikeTraversal];
  }

  else
  {
    v55 = 0;
  }

  if ([v3 countOfWalkTraversal])
  {
    v56 = [v3 countOfWalkTraversal];
  }

  else
  {
    v56 = 0;
  }

  if ([v3 clusterOrder])
  {
    v57 = [v3 clusterOrder];
  }

  else
  {
    v57 = 0;
  }

  LOWORD(v60) = v57;
  v58 = [[RTTripCluster alloc] initWithClusterID:v4 startLatitude:v25 startLongitude:v10 endLatitude:v13 endLongitude:v7 modeOfTransport:v42 lastTimeTaken:v65 countOfTraversal:v66 minTripTime:v63 maxTripTime:v64 avgTripTime:v26 minTripDistance:v61 maxTripDistance:v62 avgTripDistance:v37 commuteID:v36 isLocked:v31 avgBikeDistance:v44 avgBikeTime:v43 avgWalkDistance:v50 avgWalkTime:v49 countOfBikeTraversal:__PAIR64__(v56 countOfWalkTraversal:v55) clusterOrder:v60];

  return v58;
}

- (id)managedObjectWithContext:(id)a3
{
  if (a3)
  {
    v3 = [RTTripClusterMO managedObjectWithTripCluster:self inManagedObjectContext:a3];
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