@interface RTTripClusterWaypoint
+ (id)divideArray:(id)a3 intoChunks:(int64_t)a4;
+ (id)getWaypointDataFromWaypoints:(id)a3 maxWaypointsPerChunk:(int)a4;
+ (id)getWaypointsFromWaypointData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToWaypoint:(id)a3;
- (RTTripClusterWaypoint)initWithClusterID:(id)a3 clRoadID:(unint64_t)a4 latitude:(double)a5 longitude:(double)a6 course:(double)a7 sequence:(unsigned __int16)a8 followedByUTurn:(BOOL)a9;
- (RTTripClusterWaypoint)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTTripClusterWaypoint

- (RTTripClusterWaypoint)initWithClusterID:(id)a3 clRoadID:(unint64_t)a4 latitude:(double)a5 longitude:(double)a6 course:(double)a7 sequence:(unsigned __int16)a8 followedByUTurn:(BOOL)a9
{
  v17 = a3;
  v21.receiver = self;
  v21.super_class = RTTripClusterWaypoint;
  v18 = [(RTTripClusterWaypoint *)&v21 init];
  v19 = v18;
  if (v18)
  {
    v18->_clRoadID = a4;
    objc_storeStrong(&v18->_clusterID, a3);
    v19->_latitude = a5;
    v19->_longitude = a6;
    v19->_sequence = a8;
    v19->_course = a7;
    v19->_followedByUTurn = a9;
  }

  return v19;
}

- (RTTripClusterWaypoint)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"clRoadID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clusterID"];
  [v4 decodeDoubleForKey:@"latitude"];
  v8 = v7;
  [v4 decodeDoubleForKey:@"longitude"];
  v10 = v9;
  [v4 decodeDoubleForKey:@"course"];
  v12 = v11;
  v13 = [v4 decodeIntForKey:@"sequence"];
  v14 = [v4 decodeBoolForKey:@"uturn"];

  v15 = [(RTTripClusterWaypoint *)self initWithClusterID:v6 clRoadID:v5 latitude:v13 longitude:v14 course:v8 sequence:v10 followedByUTurn:v12];
  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInt64:-[RTTripClusterWaypoint clRoadID](self forKey:{"clRoadID"), @"clRoadID"}];
  v4 = [(RTTripClusterWaypoint *)self clusterID];
  [v5 encodeObject:v4 forKey:@"clusterID"];

  [(RTTripClusterWaypoint *)self latitude];
  [v5 encodeDouble:@"latitude" forKey:?];
  [(RTTripClusterWaypoint *)self longitude];
  [v5 encodeDouble:@"longitude" forKey:?];
  [(RTTripClusterWaypoint *)self course];
  [v5 encodeDouble:@"course" forKey:?];
  [v5 encodeInt:-[RTTripClusterWaypoint sequence](self forKey:{"sequence"), @"sequence"}];
  [v5 encodeBool:-[RTTripClusterWaypoint followedByUTurn](self forKey:{"followedByUTurn"), @"uturn"}];
}

+ (id)divideArray:(id)a3 intoChunks:(int64_t)a4
{
  v5 = a3;
  v6 = MEMORY[0x277CBEBF8];
  if (v5 && a4)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v6 = v7;
    if (a4 < 0)
    {
      [v7 addObject:v5];
    }

    else if ([v5 count])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = [v5 count];
        if (v10 + v8 >= a4)
        {
          v11 = a4;
        }

        else
        {
          v11 = v10 + v8;
        }

        v12 = [v5 subarrayWithRange:{v9, v11}];
        [v6 addObject:v12];

        v9 += a4;
        v8 -= a4;
      }

      while (v9 < [v5 count]);
    }
  }

  return v6;
}

+ (id)getWaypointDataFromWaypoints:(id)a3 maxWaypointsPerChunk:(int)a4
{
  v68 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v52 objects:v67 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v53;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v53 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v52 + 1) + 8 * i);
        v12 = [v11 clusterID];
        v13 = [v6 objectForKey:v12];

        if (v13)
        {
          v14 = [v11 clusterID];
          v15 = [v6 objectForKey:v14];
          [v15 addObject:v11];
        }

        else
        {
          v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v11, 0}];
          v15 = [v11 clusterID];
          [v6 setObject:v14 forKey:v15];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v52 objects:v67 count:16];
    }

    while (v8);
  }

  if ([v6 count] < 2)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v44 = v6;
    v42 = [v44 countByEnumeratingWithState:&v48 objects:v66 count:16];
    if (v42)
    {
      v40 = *v49;
      v41 = v6;
      do
      {
        v18 = 0;
        do
        {
          if (*v49 != v40)
          {
            objc_enumerationMutation(v44);
          }

          v46 = v18;
          v19 = *(*(&v48 + 1) + 8 * v18);
          v20 = [v44 objectForKey:v19];
          v21 = [v20 count];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v22 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              v23 = objc_opt_class();
              v24 = NSStringFromClass(v23);
              v25 = NSStringFromSelector(a2);
              *buf = 138413314;
              v57 = v24;
              v58 = 2112;
              v59 = v25;
              v60 = 2048;
              v61 = v21;
              v62 = 2112;
              v63 = v19;
              v64 = 1024;
              v65 = a4;
              _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "%@,%@,%lu waypoints passed in for clusterID %@, maxWaypoints per chunk, %d", buf, 0x30u);
            }
          }

          v45 = v20;
          v26 = [RTTripClusterWaypoint divideArray:v20 intoChunks:a4];
          if ([v26 count])
          {
            v27 = 0;
            do
            {
              v28 = objc_autoreleasePoolPush();
              v29 = MEMORY[0x277CCAAB0];
              v30 = [v26 objectAtIndex:v27];
              v47 = 0;
              v31 = [v29 archivedDataWithRootObject:v30 requiringSecureCoding:1 error:&v47];
              v32 = v47;

              v33 = [[RTTripClusterWaypointData alloc] initWithClusterID:v19 waypoints:v31];
              [v5 addObject:v33];

              objc_autoreleasePoolPop(v28);
              ++v27;
            }

            while (v27 < [v26 count]);
          }

          v18 = v46 + 1;
          v6 = v41;
        }

        while (v46 + 1 != v42);
        v42 = [v44 countByEnumeratingWithState:&v48 objects:v66 count:16];
      }

      while (v42);
    }

    v17 = v5;
  }

  else
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      v37 = NSStringFromSelector(a2);
      *buf = 138412546;
      v57 = v36;
      v58 = 2112;
      v59 = v37;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "%@,%@,More than one clusterID passed in array for encoding", buf, 0x16u);
    }

    v17 = MEMORY[0x277CBEBF8];
  }

  return v17;
}

+ (id)getWaypointsFromWaypointData:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), +[RTTripClusterWaypoint classForCoder](RTTripClusterWaypoint, "classForCoder"), +[RTTripClusterWaypointData classForCoder](RTTripClusterWaypointData, "classForCoder"), 0}];
  v5 = MEMORY[0x277CCAAC8];
  v6 = [v3 waypoints];
  v30 = 0;
  v7 = [v5 unarchivedObjectOfClasses:v4 fromData:v6 error:&v30];
  v8 = v30;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v39 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v21 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v23 = objc_opt_class();
            v24 = NSStringFromClass(v23);
            *buf = 138412290;
            v32 = v24;
            _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "Decoded object not of type %@", buf, 0xCu);
          }

          v20 = 0;
          goto LABEL_17;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v26 objects:v39 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromSelector(a2);
      v18 = [v9 count];
      v19 = [v3 clusterID];
      *buf = 138413058;
      v32 = v16;
      v33 = 2112;
      v34 = v17;
      v35 = 2048;
      v36 = v18;
      v37 = 2112;
      v38 = v19;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@,%@,converted %lu waypoints for clusterID,%@", buf, 0x2Au);
    }
  }

  v20 = v9;
LABEL_17:

  return v20;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(RTTripClusterWaypoint *)self clusterID];
  v5 = [v4 UUIDString];
  v6 = [(RTTripClusterWaypoint *)self clRoadID];
  v7 = [(RTTripClusterWaypoint *)self sequence];
  [(RTTripClusterWaypoint *)self latitude];
  v9 = v8;
  [(RTTripClusterWaypoint *)self longitude];
  v11 = v10;
  [(RTTripClusterWaypoint *)self course];
  v13 = [v3 stringWithFormat:@"clusterID, %@, clRoadID, %llu, sequence, %d, lat, %.7f, lon, %.7f, course, %.3f, uturn, %d", v5, v6, v7, v9, v11, v12, -[RTTripClusterWaypoint followedByUTurn](self, "followedByUTurn")];

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  clusterID = self->_clusterID;
  clRoadID = self->_clRoadID;
  latitude = self->_latitude;
  longitude = self->_longitude;
  course = self->_course;
  sequence = self->_sequence;
  followedByUTurn = self->_followedByUTurn;

  return [v4 initWithClusterID:clusterID clRoadID:clRoadID latitude:sequence longitude:followedByUTurn course:latitude sequence:longitude followedByUTurn:course];
}

- (BOOL)isEqualToWaypoint:(id)a3
{
  v4 = a3;
  v5 = [(RTTripClusterWaypoint *)self clusterID];
  v6 = [v4 clusterID];
  if ([v5 isEqual:v6] && (v7 = -[RTTripClusterWaypoint clRoadID](self, "clRoadID"), v7 == objc_msgSend(v4, "clRoadID")) && (-[RTTripClusterWaypoint latitude](self, "latitude"), v9 = v8, objc_msgSend(v4, "latitude"), vabdd_f64(v9, v10) < 0.0000001) && (-[RTTripClusterWaypoint longitude](self, "longitude"), v12 = v11, objc_msgSend(v4, "longitude"), vabdd_f64(v12, v13) < 0.0000001) && (-[RTTripClusterWaypoint course](self, "course"), v15 = v14, objc_msgSend(v4, "course"), vabdd_f64(v15, v16) < 0.001) && (v17 = -[RTTripClusterWaypoint sequence](self, "sequence"), v17 == objc_msgSend(v4, "sequence")))
  {
    v18 = [(RTTripClusterWaypoint *)self followedByUTurn];
    v19 = v18 ^ [v4 followedByUTurn] ^ 1;
  }

  else
  {
    LOBYTE(v19) = 0;
  }

  return v19;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTTripClusterWaypoint *)self isEqualToWaypoint:v5];
  }

  return v6;
}

- (id)dictionaryRepresentation
{
  v16[7] = *MEMORY[0x277D85DE8];
  v15[0] = @"clusterID";
  v3 = [(RTTripClusterWaypoint *)self clusterID];
  v16[0] = v3;
  v15[1] = @"clRoadID";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[RTTripClusterWaypoint clRoadID](self, "clRoadID")}];
  v16[1] = v4;
  v15[2] = @"sequence";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[RTTripClusterWaypoint sequence](self, "sequence")}];
  v16[2] = v5;
  v15[3] = @"latitude";
  v6 = MEMORY[0x277CCABB0];
  [(RTTripClusterWaypoint *)self latitude];
  v7 = [v6 numberWithDouble:?];
  v16[3] = v7;
  v15[4] = @"longitude";
  v8 = MEMORY[0x277CCABB0];
  [(RTTripClusterWaypoint *)self longitude];
  v9 = [v8 numberWithDouble:?];
  v16[4] = v9;
  v15[5] = @"course";
  v10 = MEMORY[0x277CCABB0];
  [(RTTripClusterWaypoint *)self course];
  v11 = [v10 numberWithDouble:?];
  v16[5] = v11;
  v15[6] = @"followedByUTurn";
  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[RTTripClusterWaypoint followedByUTurn](self, "followedByUTurn")}];
  v16[6] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:7];

  return v13;
}

@end