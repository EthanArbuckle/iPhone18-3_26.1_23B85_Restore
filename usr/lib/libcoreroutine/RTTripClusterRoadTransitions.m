@interface RTTripClusterRoadTransitions
+ (id)createWithManagedObject:(id)a3;
+ (id)createWithTripClusterRoadTransitionsMO:(id)a3;
+ (id)getRoadTransitionsDataFromRoadTransitions:(id)a3;
+ (id)getRoadTransitionsFromRoadTransitionsData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRoadTransition:(id)a3;
- (BOOL)isSameFromAndToStartandEndCoordinates:(id)a3;
- (NSString)description;
- (RTTripClusterRoadTransitions)initWithCoder:(id)a3;
- (RTTripClusterRoadTransitions)initWithclusterID:(id)a3 clRoadIDFrom:(unint64_t)a4 clRoadIDTo:(unint64_t)a5 fromStartLatitude:(double)a6 fromStartLongitude:(double)a7 fromEndLatitude:(double)a8 fromEndLongitude:(double)a9 toStartLatitude:(double)a10 toStartLongitude:(double)a11 toEndLatitude:(double)a12 toEndLongitude:(double)a13 count:(unsigned int)a14 startDate:(id)a15 startRoadCount:(unsigned int)a16 endRoadCount:(unsigned int)a17 roadSequenceNumber:(unsigned int)a18 familiarityMetric:(double)a19;
- (id)managedObjectWithContext:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)incrementCountBy:(unsigned int)a3;
@end

@implementation RTTripClusterRoadTransitions

- (RTTripClusterRoadTransitions)initWithclusterID:(id)a3 clRoadIDFrom:(unint64_t)a4 clRoadIDTo:(unint64_t)a5 fromStartLatitude:(double)a6 fromStartLongitude:(double)a7 fromEndLatitude:(double)a8 fromEndLongitude:(double)a9 toStartLatitude:(double)a10 toStartLongitude:(double)a11 toEndLatitude:(double)a12 toEndLongitude:(double)a13 count:(unsigned int)a14 startDate:(id)a15 startRoadCount:(unsigned int)a16 endRoadCount:(unsigned int)a17 roadSequenceNumber:(unsigned int)a18 familiarityMetric:(double)a19
{
  v34 = a3;
  v35 = a15;
  v39.receiver = self;
  v39.super_class = RTTripClusterRoadTransitions;
  v36 = [(RTTripClusterRoadTransitions *)&v39 init];
  v37 = v36;
  if (v36)
  {
    objc_storeStrong(&v36->_clusterID, a3);
    v37->_clRoadIDTo = a5;
    v37->_clRoadIDFrom = a4;
    v37->_fromStartLatitude = a6;
    v37->_fromStartLongitude = a7;
    v37->_fromEndLatitude = a8;
    v37->_fromEndLongitude = a9;
    v37->_toStartLatitude = a10;
    v37->_toStartLongitude = a11;
    v37->_toEndLatitude = a12;
    v37->_toEndLongitude = a13;
    v37->_count = a14;
    objc_storeStrong(&v37->_startDate, a15);
    v37->_startRoadCount = a16;
    v37->_endRoadCount = a17;
    v37->_roadSequenceNumber = a18;
    v37->_familiarityMetric = a19;
  }

  return v37;
}

- (RTTripClusterRoadTransitions)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"clusterID"];
  [v3 decodeDoubleForKey:@"fromStartLatitude"];
  v34 = v5;
  [v3 decodeDoubleForKey:@"fromStartLongitude"];
  v7 = v6;
  [v3 decodeDoubleForKey:@"fromEndLatitude"];
  v9 = v8;
  [v3 decodeDoubleForKey:@"fromEndLongitude"];
  v11 = v10;
  [v3 decodeDoubleForKey:@"toStartLatitude"];
  v13 = v12;
  [v3 decodeDoubleForKey:@"toStartLongitude"];
  v15 = v14;
  [v3 decodeDoubleForKey:@"toEndLatitude"];
  v17 = v16;
  [v3 decodeDoubleForKey:@"toEndLongitude"];
  v19 = v18;
  v20 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"startdate"];
  [v3 decodeDoubleForKey:@"familiaritymetric"];
  v22 = v21;
  v23 = [v3 decodeObjectForKey:@"clRoadIDTo"];
  v24 = [v23 unsignedLongLongValue];
  v25 = [v3 decodeObjectForKey:@"clRoadIDFrom"];

  v26 = [v25 unsignedLongLongValue];
  v27 = [v3 decodeObjectForKey:@"startroadcount"];

  v28 = [v27 unsignedIntValue];
  v29 = [v3 decodeObjectForKey:@"endroadcount"];

  LODWORD(v27) = [v29 unsignedIntValue];
  v30 = [v3 decodeObjectForKey:@"roadsequencenumber"];

  LODWORD(v29) = [v30 unsignedIntValue];
  v31 = [v3 decodeObjectForKey:@"count"];

  v32 = -[RTTripClusterRoadTransitions initWithclusterID:clRoadIDFrom:clRoadIDTo:fromStartLatitude:fromStartLongitude:fromEndLatitude:fromEndLongitude:toStartLatitude:toStartLongitude:toEndLatitude:toEndLongitude:count:startDate:startRoadCount:endRoadCount:roadSequenceNumber:familiarityMetric:](self, "initWithclusterID:clRoadIDFrom:clRoadIDTo:fromStartLatitude:fromStartLongitude:fromEndLatitude:fromEndLongitude:toStartLatitude:toStartLongitude:toEndLatitude:toEndLongitude:count:startDate:startRoadCount:endRoadCount:roadSequenceNumber:familiarityMetric:", v4, v26, v24, [v31 unsignedIntValue], v20, v28, v34, v7, v9, v11, v13, v15, v17, v19, __PAIR64__(v29, v27), v22);
  return v32;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RTTripClusterRoadTransitions *)self clusterID];
  [v4 encodeObject:v5 forKey:@"clusterID"];

  [(RTTripClusterRoadTransitions *)self fromStartLatitude];
  [v4 encodeDouble:@"fromStartLatitude" forKey:?];
  [(RTTripClusterRoadTransitions *)self fromStartLongitude];
  [v4 encodeDouble:@"fromStartLongitude" forKey:?];
  [(RTTripClusterRoadTransitions *)self fromEndLatitude];
  [v4 encodeDouble:@"fromEndLatitude" forKey:?];
  [(RTTripClusterRoadTransitions *)self fromEndLongitude];
  [v4 encodeDouble:@"fromEndLongitude" forKey:?];
  [(RTTripClusterRoadTransitions *)self toStartLatitude];
  [v4 encodeDouble:@"toStartLatitude" forKey:?];
  [(RTTripClusterRoadTransitions *)self toStartLongitude];
  [v4 encodeDouble:@"toStartLongitude" forKey:?];
  [(RTTripClusterRoadTransitions *)self toEndLatitude];
  [v4 encodeDouble:@"toEndLatitude" forKey:?];
  [(RTTripClusterRoadTransitions *)self toEndLongitude];
  [v4 encodeDouble:@"toEndLongitude" forKey:?];
  v6 = [(RTTripClusterRoadTransitions *)self startDate];
  [v4 encodeObject:v6 forKey:@"startdate"];

  [(RTTripClusterRoadTransitions *)self familiarityMetric];
  [v4 encodeDouble:@"familiaritymetric" forKey:?];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[RTTripClusterRoadTransitions clRoadIDFrom](self, "clRoadIDFrom")}];
  [v4 encodeObject:v7 forKey:@"clRoadIDFrom"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[RTTripClusterRoadTransitions clRoadIDTo](self, "clRoadIDTo")}];
  [v4 encodeObject:v8 forKey:@"clRoadIDTo"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[RTTripClusterRoadTransitions startRoadCount](self, "startRoadCount")}];
  [v4 encodeObject:v9 forKey:@"startroadcount"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[RTTripClusterRoadTransitions endRoadCount](self, "endRoadCount")}];
  [v4 encodeObject:v10 forKey:@"endroadcount"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[RTTripClusterRoadTransitions roadSequenceNumber](self, "roadSequenceNumber")}];
  [v4 encodeObject:v11 forKey:@"roadsequencenumber"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[RTTripClusterRoadTransitions count](self, "count")}];
  [v4 encodeObject:v12 forKey:@"count"];
}

- (BOOL)isEqualToRoadTransition:(id)a3
{
  v4 = a3;
  v5 = [(RTTripClusterRoadTransitions *)self clusterID];
  v6 = [v4 clusterID];
  if ([v5 isEqual:v6] && (v7 = -[RTTripClusterRoadTransitions clRoadIDFrom](self, "clRoadIDFrom"), v7 == objc_msgSend(v4, "clRoadIDFrom")) && (v8 = -[RTTripClusterRoadTransitions clRoadIDTo](self, "clRoadIDTo"), v8 == objc_msgSend(v4, "clRoadIDTo")) && (-[RTTripClusterRoadTransitions fromStartLatitude](self, "fromStartLatitude"), v10 = v9, objc_msgSend(v4, "fromStartLatitude"), vabdd_f64(v10, v11) < 0.0000001) && (-[RTTripClusterRoadTransitions fromStartLongitude](self, "fromStartLongitude"), v13 = v12, objc_msgSend(v4, "fromStartLongitude"), vabdd_f64(v13, v14) < 0.0000001) && (-[RTTripClusterRoadTransitions fromEndLatitude](self, "fromEndLatitude"), v16 = v15, objc_msgSend(v4, "fromEndLatitude"), vabdd_f64(v16, v17) < 0.0000001) && (-[RTTripClusterRoadTransitions fromEndLongitude](self, "fromEndLongitude"), v19 = v18, objc_msgSend(v4, "fromEndLongitude"), vabdd_f64(v19, v20) < 0.0000001) && (-[RTTripClusterRoadTransitions toStartLatitude](self, "toStartLatitude"), v22 = v21, objc_msgSend(v4, "toStartLatitude"), vabdd_f64(v22, v23) < 0.0000001) && (-[RTTripClusterRoadTransitions toStartLongitude](self, "toStartLongitude"), v25 = v24, objc_msgSend(v4, "toStartLongitude"), vabdd_f64(v25, v26) < 0.0000001) && (-[RTTripClusterRoadTransitions toEndLatitude](self, "toEndLatitude"), v28 = v27, objc_msgSend(v4, "toEndLatitude"), vabdd_f64(v28, v29) < 0.0000001) && (-[RTTripClusterRoadTransitions toEndLongitude](self, "toEndLongitude"), v31 = v30, objc_msgSend(v4, "toEndLongitude"), vabdd_f64(v31, v32) < 0.0000001) && (v33 = -[RTTripClusterRoadTransitions count](self, "count"), v33 == objc_msgSend(v4, "count")))
  {
    v34 = [(RTTripClusterRoadTransitions *)self startDate];
    v35 = [v4 startDate];
    if ([v34 isEqual:v35] && (v36 = -[RTTripClusterRoadTransitions startRoadCount](self, "startRoadCount"), v36 == objc_msgSend(v4, "startRoadCount")) && (v37 = -[RTTripClusterRoadTransitions endRoadCount](self, "endRoadCount"), v37 == objc_msgSend(v4, "endRoadCount")) && (v38 = -[RTTripClusterRoadTransitions roadSequenceNumber](self, "roadSequenceNumber"), v38 == objc_msgSend(v4, "roadSequenceNumber")))
    {
      [(RTTripClusterRoadTransitions *)self familiarityMetric];
      v40 = v39;
      [v4 familiarityMetric];
      v42 = vabdd_f64(v40, v41) < 0.0000001;
    }

    else
    {
      v42 = 0;
    }
  }

  else
  {
    v42 = 0;
  }

  return v42;
}

- (BOOL)isSameFromAndToStartandEndCoordinates:(id)a3
{
  v4 = a3;
  [(RTTripClusterRoadTransitions *)self fromStartLatitude];
  v6 = v5;
  [v4 fromStartLatitude];
  if (vabdd_f64(v6, v7) >= 0.0000001 || (-[RTTripClusterRoadTransitions fromStartLongitude](self, "fromStartLongitude"), v9 = v8, [v4 fromStartLongitude], vabdd_f64(v9, v10) >= 0.0000001) || (-[RTTripClusterRoadTransitions fromEndLatitude](self, "fromEndLatitude"), v12 = v11, objc_msgSend(v4, "fromEndLatitude"), vabdd_f64(v12, v13) >= 0.0000001) || (-[RTTripClusterRoadTransitions fromEndLongitude](self, "fromEndLongitude"), v15 = v14, objc_msgSend(v4, "fromEndLongitude"), vabdd_f64(v15, v16) >= 0.0000001) || (-[RTTripClusterRoadTransitions toStartLatitude](self, "toStartLatitude"), v18 = v17, objc_msgSend(v4, "toStartLatitude"), vabdd_f64(v18, v19) >= 0.0000001) || (-[RTTripClusterRoadTransitions toStartLongitude](self, "toStartLongitude"), v21 = v20, objc_msgSend(v4, "toStartLongitude"), vabdd_f64(v21, v22) >= 0.0000001) || (-[RTTripClusterRoadTransitions toEndLatitude](self, "toEndLatitude"), v24 = v23, objc_msgSend(v4, "toEndLatitude"), vabdd_f64(v24, v25) >= 0.0000001))
  {
    v29 = 0;
  }

  else
  {
    [(RTTripClusterRoadTransitions *)self toEndLongitude];
    v27 = v26;
    [v4 toEndLongitude];
    v29 = vabdd_f64(v27, v28) < 0.0000001;
  }

  return v29;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTTripClusterRoadTransitions *)self isEqualToRoadTransition:v5];
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(RTTripClusterRoadTransitions *)self clusterID];
  v5 = [(RTTripClusterRoadTransitions *)self clRoadIDFrom];
  v6 = [(RTTripClusterRoadTransitions *)self clRoadIDTo];
  v7 = [(RTTripClusterRoadTransitions *)self count];
  [(RTTripClusterRoadTransitions *)self toEndLatitude];
  v9 = v8;
  [(RTTripClusterRoadTransitions *)self toEndLongitude];
  v11 = v10;
  [(RTTripClusterRoadTransitions *)self fromEndLatitude];
  v13 = v12;
  [(RTTripClusterRoadTransitions *)self fromEndLongitude];
  v15 = v14;
  [(RTTripClusterRoadTransitions *)self toStartLatitude];
  v17 = v16;
  [(RTTripClusterRoadTransitions *)self toStartLongitude];
  v19 = v18;
  [(RTTripClusterRoadTransitions *)self fromStartLatitude];
  v21 = v20;
  [(RTTripClusterRoadTransitions *)self fromStartLongitude];
  v23 = v22;
  v24 = [(RTTripClusterRoadTransitions *)self startDate];
  v25 = [(RTTripClusterRoadTransitions *)self startRoadCount];
  v26 = [(RTTripClusterRoadTransitions *)self endRoadCount];
  v27 = [(RTTripClusterRoadTransitions *)self roadSequenceNumber];
  [(RTTripClusterRoadTransitions *)self familiarityMetric];
  v29 = [v3 stringWithFormat:@"clusterID, %@, clRoadIDFrom, %llu, clRoadIDTo, %llu, count, %u, toEndLat, %{sensitive}.6f, toEndLon, %{sensitive}.6f, fromEndLat, %{sensitive}.6f, fromEndLon, %{sensitive}.6f, toStartLat, %{sensitive}.6f, toStartLon, %{sensitive}.6f, fromStartLat, %{sensitive}.6f, fromStartLon, %{sensitive}.6f, startDate, %@, startRoadCnt, %u, endRoadCnt, %u, roadSeqNum, %u, familiarityMetric, %.6f", v4, v5, v6, v7, v9, v11, v13, v15, v17, v19, v21, v23, v24, v25, v26, v27, v28];

  return v29;
}

- (void)incrementCountBy:(unsigned int)a3
{
  v4 = [(RTTripClusterRoadTransitions *)self count]+ a3;

  [(RTTripClusterRoadTransitions *)self setCount:v4];
}

+ (id)getRoadTransitionsDataFromRoadTransitions:(id)a3
{
  aSelector = a2;
  v50 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v41;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v41 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v40 + 1) + 8 * i);
        v11 = [v10 clusterID];
        v12 = [v4 objectForKey:v11];

        if (v12)
        {
          v13 = [v10 clusterID];
          v14 = [v4 objectForKey:v13];
          [v14 addObject:v10];
        }

        else
        {
          v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v10, 0, aSelector}];
          v14 = [v10 clusterID];
          [v4 setObject:v13 forKey:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v7);
  }

  if ([v4 count] < 2)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v18 = v4;
    v19 = [v18 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v37;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v37 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v36 + 1) + 8 * j);
          v24 = MEMORY[0x277CCAAB0];
          v25 = [v18 objectForKey:v23];
          v35 = 0;
          v26 = [v24 archivedDataWithRootObject:v25 requiringSecureCoding:1 error:&v35];
          v27 = v35;

          v28 = [[RTTripClusterRoadTransitionsData alloc] initWithClusterID:v23 roadTransitions:v26];
          [v34 addObject:v28];
        }

        v20 = [v18 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v20);
    }

    v17 = v34;
    v16 = v34;
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      v32 = NSStringFromSelector(aSelector);
      *buf = 138412546;
      v46 = v31;
      v47 = 2112;
      v48 = v32;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "%@,%@,More than one clusterID passed in array for encoding", buf, 0x16u);
    }

    v16 = 0;
    v17 = v34;
  }

  return v16;
}

+ (id)getRoadTransitionsFromRoadTransitionsData:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, +[RTTripClusterRoadTransitions classForCoder](RTTripClusterRoadTransitions, "classForCoder"), +[RTTripClusterRoadTransitionsData classForCoder](RTTripClusterRoadTransitionsData, "classForCoder"), objc_opt_class(), 0}];
  v7 = MEMORY[0x277CCAAC8];
  v8 = [v3 roadTransitions];
  v31 = 0;
  v9 = [v7 unarchivedObjectOfClasses:v6 fromData:v8 error:&v31];
  v10 = v31;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v11);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v22 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v24 = objc_opt_class();
            v25 = NSStringFromClass(v24);
            *buf = 138412290;
            v33 = v25;
            _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Decoded object not of type %@", buf, 0xCu);
          }

          v21 = 0;
          goto LABEL_17;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v27 objects:v38 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = NSStringFromSelector(a2);
      v20 = [v11 count];
      *buf = 138412802;
      v33 = v18;
      v34 = 2112;
      v35 = v19;
      v36 = 2048;
      v37 = v20;
      _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@,%@,converted %lu road transitions", buf, 0x20u);
    }
  }

  v21 = v11;
LABEL_17:

  return v21;
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
      v6 = [objc_opt_class() createWithTripClusterRoadTransitionsMO:v5];

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
      v15 = "+[RTTripClusterRoadTransitions(RTCoreDataTransformable) createWithManagedObject:]";
      v16 = 1024;
      v17 = 33;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@, managedObject, %@, is not supported by RTTripClusterRoadTransitions+CoreDataReadable (in %s:%d)", &v10, 0x26u);
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)createWithTripClusterRoadTransitionsMO:(id)a3
{
  v3 = a3;
  if ([v3 clRoadIDTo])
  {
    v4 = [v3 clRoadIDTo];
  }

  else
  {
    v4 = 0;
  }

  if ([v3 clRoadIDFrom])
  {
    v5 = [v3 clRoadIDFrom];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x277CCAD78] UUID];
  v7 = [v3 clusterID];

  if (v7)
  {
    v8 = [v3 clusterID];

    v6 = v8;
  }

  v9 = [RTTripClusterRoadTransitions alloc];
  [v3 fromStartLatitude];
  v11 = v10;
  [v3 fromStartLongitude];
  v13 = v12;
  [v3 fromEndLatitude];
  v15 = v14;
  [v3 fromEndLongitude];
  v17 = v16;
  [v3 toStartLatitude];
  v19 = v18;
  [v3 toStartLongitude];
  v21 = v20;
  [v3 toEndLatitude];
  v23 = v22;
  [v3 toEndLongitude];
  v25 = v24;
  v26 = [v3 count];
  v27 = [v3 startDate];
  v28 = [v3 startRoadCount];
  v29 = [v3 endRoadCount];
  v30 = [v3 roadSequenceNumber];
  [v3 familiarityMetric];
  v32 = [(RTTripClusterRoadTransitions *)v9 initWithclusterID:v6 clRoadIDFrom:v5 clRoadIDTo:v4 fromStartLatitude:v26 fromStartLongitude:v27 fromEndLatitude:v28 fromEndLongitude:v11 toStartLatitude:v13 toStartLongitude:v15 toEndLatitude:v17 toEndLongitude:v19 count:v21 startDate:v23 startRoadCount:v25 endRoadCount:__PAIR64__(v30 roadSequenceNumber:v29) familiarityMetric:v31];

  return v32;
}

- (id)managedObjectWithContext:(id)a3
{
  if (a3)
  {
    v3 = [RTTripClusterRoadTransitionsMO managedObjectWithTripClusterRoadTransitions:self inManagedObjectContext:a3];
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