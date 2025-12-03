@interface RTTripClusterRoadTransitions
+ (id)createWithManagedObject:(id)object;
+ (id)createWithTripClusterRoadTransitionsMO:(id)o;
+ (id)getRoadTransitionsDataFromRoadTransitions:(id)transitions;
+ (id)getRoadTransitionsFromRoadTransitionsData:(id)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRoadTransition:(id)transition;
- (BOOL)isSameFromAndToStartandEndCoordinates:(id)coordinates;
- (NSString)description;
- (RTTripClusterRoadTransitions)initWithCoder:(id)coder;
- (RTTripClusterRoadTransitions)initWithclusterID:(id)d clRoadIDFrom:(unint64_t)from clRoadIDTo:(unint64_t)to fromStartLatitude:(double)latitude fromStartLongitude:(double)longitude fromEndLatitude:(double)endLatitude fromEndLongitude:(double)endLongitude toStartLatitude:(double)self0 toStartLongitude:(double)self1 toEndLatitude:(double)self2 toEndLongitude:(double)self3 count:(unsigned int)self4 startDate:(id)self5 startRoadCount:(unsigned int)self6 endRoadCount:(unsigned int)self7 roadSequenceNumber:(unsigned int)self8 familiarityMetric:(double)self9;
- (id)managedObjectWithContext:(id)context;
- (void)encodeWithCoder:(id)coder;
- (void)incrementCountBy:(unsigned int)by;
@end

@implementation RTTripClusterRoadTransitions

- (RTTripClusterRoadTransitions)initWithclusterID:(id)d clRoadIDFrom:(unint64_t)from clRoadIDTo:(unint64_t)to fromStartLatitude:(double)latitude fromStartLongitude:(double)longitude fromEndLatitude:(double)endLatitude fromEndLongitude:(double)endLongitude toStartLatitude:(double)self0 toStartLongitude:(double)self1 toEndLatitude:(double)self2 toEndLongitude:(double)self3 count:(unsigned int)self4 startDate:(id)self5 startRoadCount:(unsigned int)self6 endRoadCount:(unsigned int)self7 roadSequenceNumber:(unsigned int)self8 familiarityMetric:(double)self9
{
  dCopy = d;
  dateCopy = date;
  v39.receiver = self;
  v39.super_class = RTTripClusterRoadTransitions;
  v36 = [(RTTripClusterRoadTransitions *)&v39 init];
  v37 = v36;
  if (v36)
  {
    objc_storeStrong(&v36->_clusterID, d);
    v37->_clRoadIDTo = to;
    v37->_clRoadIDFrom = from;
    v37->_fromStartLatitude = latitude;
    v37->_fromStartLongitude = longitude;
    v37->_fromEndLatitude = endLatitude;
    v37->_fromEndLongitude = endLongitude;
    v37->_toStartLatitude = startLatitude;
    v37->_toStartLongitude = startLongitude;
    v37->_toEndLatitude = toEndLatitude;
    v37->_toEndLongitude = toEndLongitude;
    v37->_count = count;
    objc_storeStrong(&v37->_startDate, date);
    v37->_startRoadCount = roadCount;
    v37->_endRoadCount = endRoadCount;
    v37->_roadSequenceNumber = number;
    v37->_familiarityMetric = metric;
  }

  return v37;
}

- (RTTripClusterRoadTransitions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clusterID"];
  [coderCopy decodeDoubleForKey:@"fromStartLatitude"];
  v34 = v5;
  [coderCopy decodeDoubleForKey:@"fromStartLongitude"];
  v7 = v6;
  [coderCopy decodeDoubleForKey:@"fromEndLatitude"];
  v9 = v8;
  [coderCopy decodeDoubleForKey:@"fromEndLongitude"];
  v11 = v10;
  [coderCopy decodeDoubleForKey:@"toStartLatitude"];
  v13 = v12;
  [coderCopy decodeDoubleForKey:@"toStartLongitude"];
  v15 = v14;
  [coderCopy decodeDoubleForKey:@"toEndLatitude"];
  v17 = v16;
  [coderCopy decodeDoubleForKey:@"toEndLongitude"];
  v19 = v18;
  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startdate"];
  [coderCopy decodeDoubleForKey:@"familiaritymetric"];
  v22 = v21;
  v23 = [coderCopy decodeObjectForKey:@"clRoadIDTo"];
  unsignedLongLongValue = [v23 unsignedLongLongValue];
  v25 = [coderCopy decodeObjectForKey:@"clRoadIDFrom"];

  unsignedLongLongValue2 = [v25 unsignedLongLongValue];
  v27 = [coderCopy decodeObjectForKey:@"startroadcount"];

  unsignedIntValue = [v27 unsignedIntValue];
  v29 = [coderCopy decodeObjectForKey:@"endroadcount"];

  LODWORD(v27) = [v29 unsignedIntValue];
  v30 = [coderCopy decodeObjectForKey:@"roadsequencenumber"];

  LODWORD(v29) = [v30 unsignedIntValue];
  v31 = [coderCopy decodeObjectForKey:@"count"];

  v32 = -[RTTripClusterRoadTransitions initWithclusterID:clRoadIDFrom:clRoadIDTo:fromStartLatitude:fromStartLongitude:fromEndLatitude:fromEndLongitude:toStartLatitude:toStartLongitude:toEndLatitude:toEndLongitude:count:startDate:startRoadCount:endRoadCount:roadSequenceNumber:familiarityMetric:](self, "initWithclusterID:clRoadIDFrom:clRoadIDTo:fromStartLatitude:fromStartLongitude:fromEndLatitude:fromEndLongitude:toStartLatitude:toStartLongitude:toEndLatitude:toEndLongitude:count:startDate:startRoadCount:endRoadCount:roadSequenceNumber:familiarityMetric:", v4, unsignedLongLongValue2, unsignedLongLongValue, [v31 unsignedIntValue], v20, unsignedIntValue, v34, v7, v9, v11, v13, v15, v17, v19, __PAIR64__(v29, v27), v22);
  return v32;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clusterID = [(RTTripClusterRoadTransitions *)self clusterID];
  [coderCopy encodeObject:clusterID forKey:@"clusterID"];

  [(RTTripClusterRoadTransitions *)self fromStartLatitude];
  [coderCopy encodeDouble:@"fromStartLatitude" forKey:?];
  [(RTTripClusterRoadTransitions *)self fromStartLongitude];
  [coderCopy encodeDouble:@"fromStartLongitude" forKey:?];
  [(RTTripClusterRoadTransitions *)self fromEndLatitude];
  [coderCopy encodeDouble:@"fromEndLatitude" forKey:?];
  [(RTTripClusterRoadTransitions *)self fromEndLongitude];
  [coderCopy encodeDouble:@"fromEndLongitude" forKey:?];
  [(RTTripClusterRoadTransitions *)self toStartLatitude];
  [coderCopy encodeDouble:@"toStartLatitude" forKey:?];
  [(RTTripClusterRoadTransitions *)self toStartLongitude];
  [coderCopy encodeDouble:@"toStartLongitude" forKey:?];
  [(RTTripClusterRoadTransitions *)self toEndLatitude];
  [coderCopy encodeDouble:@"toEndLatitude" forKey:?];
  [(RTTripClusterRoadTransitions *)self toEndLongitude];
  [coderCopy encodeDouble:@"toEndLongitude" forKey:?];
  startDate = [(RTTripClusterRoadTransitions *)self startDate];
  [coderCopy encodeObject:startDate forKey:@"startdate"];

  [(RTTripClusterRoadTransitions *)self familiarityMetric];
  [coderCopy encodeDouble:@"familiaritymetric" forKey:?];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[RTTripClusterRoadTransitions clRoadIDFrom](self, "clRoadIDFrom")}];
  [coderCopy encodeObject:v7 forKey:@"clRoadIDFrom"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[RTTripClusterRoadTransitions clRoadIDTo](self, "clRoadIDTo")}];
  [coderCopy encodeObject:v8 forKey:@"clRoadIDTo"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[RTTripClusterRoadTransitions startRoadCount](self, "startRoadCount")}];
  [coderCopy encodeObject:v9 forKey:@"startroadcount"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[RTTripClusterRoadTransitions endRoadCount](self, "endRoadCount")}];
  [coderCopy encodeObject:v10 forKey:@"endroadcount"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[RTTripClusterRoadTransitions roadSequenceNumber](self, "roadSequenceNumber")}];
  [coderCopy encodeObject:v11 forKey:@"roadsequencenumber"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[RTTripClusterRoadTransitions count](self, "count")}];
  [coderCopy encodeObject:v12 forKey:@"count"];
}

- (BOOL)isEqualToRoadTransition:(id)transition
{
  transitionCopy = transition;
  clusterID = [(RTTripClusterRoadTransitions *)self clusterID];
  clusterID2 = [transitionCopy clusterID];
  if ([clusterID isEqual:clusterID2] && (v7 = -[RTTripClusterRoadTransitions clRoadIDFrom](self, "clRoadIDFrom"), v7 == objc_msgSend(transitionCopy, "clRoadIDFrom")) && (v8 = -[RTTripClusterRoadTransitions clRoadIDTo](self, "clRoadIDTo"), v8 == objc_msgSend(transitionCopy, "clRoadIDTo")) && (-[RTTripClusterRoadTransitions fromStartLatitude](self, "fromStartLatitude"), v10 = v9, objc_msgSend(transitionCopy, "fromStartLatitude"), vabdd_f64(v10, v11) < 0.0000001) && (-[RTTripClusterRoadTransitions fromStartLongitude](self, "fromStartLongitude"), v13 = v12, objc_msgSend(transitionCopy, "fromStartLongitude"), vabdd_f64(v13, v14) < 0.0000001) && (-[RTTripClusterRoadTransitions fromEndLatitude](self, "fromEndLatitude"), v16 = v15, objc_msgSend(transitionCopy, "fromEndLatitude"), vabdd_f64(v16, v17) < 0.0000001) && (-[RTTripClusterRoadTransitions fromEndLongitude](self, "fromEndLongitude"), v19 = v18, objc_msgSend(transitionCopy, "fromEndLongitude"), vabdd_f64(v19, v20) < 0.0000001) && (-[RTTripClusterRoadTransitions toStartLatitude](self, "toStartLatitude"), v22 = v21, objc_msgSend(transitionCopy, "toStartLatitude"), vabdd_f64(v22, v23) < 0.0000001) && (-[RTTripClusterRoadTransitions toStartLongitude](self, "toStartLongitude"), v25 = v24, objc_msgSend(transitionCopy, "toStartLongitude"), vabdd_f64(v25, v26) < 0.0000001) && (-[RTTripClusterRoadTransitions toEndLatitude](self, "toEndLatitude"), v28 = v27, objc_msgSend(transitionCopy, "toEndLatitude"), vabdd_f64(v28, v29) < 0.0000001) && (-[RTTripClusterRoadTransitions toEndLongitude](self, "toEndLongitude"), v31 = v30, objc_msgSend(transitionCopy, "toEndLongitude"), vabdd_f64(v31, v32) < 0.0000001) && (v33 = -[RTTripClusterRoadTransitions count](self, "count"), v33 == objc_msgSend(transitionCopy, "count")))
  {
    startDate = [(RTTripClusterRoadTransitions *)self startDate];
    startDate2 = [transitionCopy startDate];
    if ([startDate isEqual:startDate2] && (v36 = -[RTTripClusterRoadTransitions startRoadCount](self, "startRoadCount"), v36 == objc_msgSend(transitionCopy, "startRoadCount")) && (v37 = -[RTTripClusterRoadTransitions endRoadCount](self, "endRoadCount"), v37 == objc_msgSend(transitionCopy, "endRoadCount")) && (v38 = -[RTTripClusterRoadTransitions roadSequenceNumber](self, "roadSequenceNumber"), v38 == objc_msgSend(transitionCopy, "roadSequenceNumber")))
    {
      [(RTTripClusterRoadTransitions *)self familiarityMetric];
      v40 = v39;
      [transitionCopy familiarityMetric];
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

- (BOOL)isSameFromAndToStartandEndCoordinates:(id)coordinates
{
  coordinatesCopy = coordinates;
  [(RTTripClusterRoadTransitions *)self fromStartLatitude];
  v6 = v5;
  [coordinatesCopy fromStartLatitude];
  if (vabdd_f64(v6, v7) >= 0.0000001 || (-[RTTripClusterRoadTransitions fromStartLongitude](self, "fromStartLongitude"), v9 = v8, [coordinatesCopy fromStartLongitude], vabdd_f64(v9, v10) >= 0.0000001) || (-[RTTripClusterRoadTransitions fromEndLatitude](self, "fromEndLatitude"), v12 = v11, objc_msgSend(coordinatesCopy, "fromEndLatitude"), vabdd_f64(v12, v13) >= 0.0000001) || (-[RTTripClusterRoadTransitions fromEndLongitude](self, "fromEndLongitude"), v15 = v14, objc_msgSend(coordinatesCopy, "fromEndLongitude"), vabdd_f64(v15, v16) >= 0.0000001) || (-[RTTripClusterRoadTransitions toStartLatitude](self, "toStartLatitude"), v18 = v17, objc_msgSend(coordinatesCopy, "toStartLatitude"), vabdd_f64(v18, v19) >= 0.0000001) || (-[RTTripClusterRoadTransitions toStartLongitude](self, "toStartLongitude"), v21 = v20, objc_msgSend(coordinatesCopy, "toStartLongitude"), vabdd_f64(v21, v22) >= 0.0000001) || (-[RTTripClusterRoadTransitions toEndLatitude](self, "toEndLatitude"), v24 = v23, objc_msgSend(coordinatesCopy, "toEndLatitude"), vabdd_f64(v24, v25) >= 0.0000001))
  {
    v29 = 0;
  }

  else
  {
    [(RTTripClusterRoadTransitions *)self toEndLongitude];
    v27 = v26;
    [coordinatesCopy toEndLongitude];
    v29 = vabdd_f64(v27, v28) < 0.0000001;
  }

  return v29;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTTripClusterRoadTransitions *)self isEqualToRoadTransition:v5];
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  clusterID = [(RTTripClusterRoadTransitions *)self clusterID];
  clRoadIDFrom = [(RTTripClusterRoadTransitions *)self clRoadIDFrom];
  clRoadIDTo = [(RTTripClusterRoadTransitions *)self clRoadIDTo];
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
  startDate = [(RTTripClusterRoadTransitions *)self startDate];
  startRoadCount = [(RTTripClusterRoadTransitions *)self startRoadCount];
  endRoadCount = [(RTTripClusterRoadTransitions *)self endRoadCount];
  roadSequenceNumber = [(RTTripClusterRoadTransitions *)self roadSequenceNumber];
  [(RTTripClusterRoadTransitions *)self familiarityMetric];
  v29 = [v3 stringWithFormat:@"clusterID, %@, clRoadIDFrom, %llu, clRoadIDTo, %llu, count, %u, toEndLat, %{sensitive}.6f, toEndLon, %{sensitive}.6f, fromEndLat, %{sensitive}.6f, fromEndLon, %{sensitive}.6f, toStartLat, %{sensitive}.6f, toStartLon, %{sensitive}.6f, fromStartLat, %{sensitive}.6f, fromStartLon, %{sensitive}.6f, startDate, %@, startRoadCnt, %u, endRoadCnt, %u, roadSeqNum, %u, familiarityMetric, %.6f", clusterID, clRoadIDFrom, clRoadIDTo, v7, v9, v11, v13, v15, v17, v19, v21, v23, startDate, startRoadCount, endRoadCount, roadSequenceNumber, v28];

  return v29;
}

- (void)incrementCountBy:(unsigned int)by
{
  v4 = [(RTTripClusterRoadTransitions *)self count]+ by;

  [(RTTripClusterRoadTransitions *)self setCount:v4];
}

+ (id)getRoadTransitionsDataFromRoadTransitions:(id)transitions
{
  aSelector = a2;
  v50 = *MEMORY[0x277D85DE8];
  transitionsCopy = transitions;
  v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v5 = transitionsCopy;
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
        clusterID = [v10 clusterID];
        v12 = [v4 objectForKey:clusterID];

        if (v12)
        {
          clusterID2 = [v10 clusterID];
          clusterID3 = [v4 objectForKey:clusterID2];
          [clusterID3 addObject:v10];
        }

        else
        {
          clusterID2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v10, 0, aSelector}];
          clusterID3 = [v10 clusterID];
          [v4 setObject:clusterID2 forKey:clusterID3];
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

+ (id)getRoadTransitionsFromRoadTransitionsData:(id)data
{
  v39 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, +[RTTripClusterRoadTransitions classForCoder](RTTripClusterRoadTransitions, "classForCoder"), +[RTTripClusterRoadTransitionsData classForCoder](RTTripClusterRoadTransitionsData, "classForCoder"), objc_opt_class(), 0}];
  v7 = MEMORY[0x277CCAAC8];
  roadTransitions = [dataCopy roadTransitions];
  v31 = 0;
  v9 = [v7 unarchivedObjectOfClasses:v6 fromData:roadTransitions error:&v31];
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
      v13 = objectCopy;
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

+ (id)createWithTripClusterRoadTransitionsMO:(id)o
{
  oCopy = o;
  if ([oCopy clRoadIDTo])
  {
    clRoadIDTo = [oCopy clRoadIDTo];
  }

  else
  {
    clRoadIDTo = 0;
  }

  if ([oCopy clRoadIDFrom])
  {
    clRoadIDFrom = [oCopy clRoadIDFrom];
  }

  else
  {
    clRoadIDFrom = 0;
  }

  uUID = [MEMORY[0x277CCAD78] UUID];
  clusterID = [oCopy clusterID];

  if (clusterID)
  {
    clusterID2 = [oCopy clusterID];

    uUID = clusterID2;
  }

  v9 = [RTTripClusterRoadTransitions alloc];
  [oCopy fromStartLatitude];
  v11 = v10;
  [oCopy fromStartLongitude];
  v13 = v12;
  [oCopy fromEndLatitude];
  v15 = v14;
  [oCopy fromEndLongitude];
  v17 = v16;
  [oCopy toStartLatitude];
  v19 = v18;
  [oCopy toStartLongitude];
  v21 = v20;
  [oCopy toEndLatitude];
  v23 = v22;
  [oCopy toEndLongitude];
  v25 = v24;
  v26 = [oCopy count];
  startDate = [oCopy startDate];
  startRoadCount = [oCopy startRoadCount];
  endRoadCount = [oCopy endRoadCount];
  roadSequenceNumber = [oCopy roadSequenceNumber];
  [oCopy familiarityMetric];
  v32 = [(RTTripClusterRoadTransitions *)v9 initWithclusterID:uUID clRoadIDFrom:clRoadIDFrom clRoadIDTo:clRoadIDTo fromStartLatitude:v26 fromStartLongitude:startDate fromEndLatitude:startRoadCount fromEndLongitude:v11 toStartLatitude:v13 toStartLongitude:v15 toEndLatitude:v17 toEndLongitude:v19 count:v21 startDate:v23 startRoadCount:v25 endRoadCount:__PAIR64__(roadSequenceNumber roadSequenceNumber:endRoadCount) familiarityMetric:v31];

  return v32;
}

- (id)managedObjectWithContext:(id)context
{
  if (context)
  {
    v3 = [RTTripClusterRoadTransitionsMO managedObjectWithTripClusterRoadTransitions:self inManagedObjectContext:context];
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