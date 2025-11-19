@interface RTLearnedPlaceTypeInference
+ (id)createWithLearnedPlaceTypeInferenceMO:(id)a3;
+ (id)createWithManagedObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (RTLearnedPlaceTypeInference)initWithCoder:(id)a3;
- (RTLearnedPlaceTypeInference)initWithIdentifier:(id)a3 sessionId:(id)a4 learnedPlaceIdentifier:(id)a5 placeType:(unint64_t)a6 metricSource:(unint64_t)a7 creationDate:(id)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)managedObjectWithContext:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTLearnedPlaceTypeInference

- (RTLearnedPlaceTypeInference)initWithIdentifier:(id)a3 sessionId:(id)a4 learnedPlaceIdentifier:(id)a5 placeType:(unint64_t)a6 metricSource:(unint64_t)a7 creationDate:(id)a8
{
  v15 = a3;
  v16 = a4;
  v25 = a5;
  v17 = a8;
  v18 = v17;
  if (!v15)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: identifier";
LABEL_13:
    _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, v23, buf, 2u);
    goto LABEL_14;
  }

  if (!v16)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: sessionId";
    goto LABEL_13;
  }

  if (!v17)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v23 = "Invalid parameter not satisfying: creationDate";
      goto LABEL_13;
    }

LABEL_14:

    v21 = 0;
    goto LABEL_15;
  }

  v26.receiver = self;
  v26.super_class = RTLearnedPlaceTypeInference;
  v19 = [(RTLearnedPlaceTypeInference *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_identifier, a3);
    objc_storeStrong(&v20->_sessionId, a4);
    objc_storeStrong(&v20->_learnedPlaceIdentifier, a5);
    v20->_placeType = a6;
    v20->_metricSource = a7;
    objc_storeStrong(&v20->_creationDate, a8);
  }

  self = v20;
  v21 = self;
LABEL_15:

  return v21;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(RTLearnedPlaceTypeInference *)self identifier];
  v5 = [(RTLearnedPlaceTypeInference *)self sessionId];
  v6 = [(RTLearnedPlaceTypeInference *)self learnedPlaceIdentifier];
  v7 = [RTLearnedPlace placeTypeToString:[(RTLearnedPlaceTypeInference *)self placeType]];
  v8 = [RTPlaceTypeClassifierMetricsCalculator metricsSourceToString:[(RTLearnedPlaceTypeInference *)self metricSource]];
  v9 = [(RTLearnedPlaceTypeInference *)self creationDate];
  v10 = [v9 stringFromDate];
  v11 = [v3 stringWithFormat:@"identifier, %@, sessionId, %@, learnedPlaceIdentifier, %@, placeType, %@, metricSource, %@, creationDate, %@, ", v4, v5, v6, v7, v8, v10];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v16 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(RTLearnedPlaceTypeInference *)self identifier];
    v8 = [(RTLearnedPlaceTypeInference *)v6 identifier];
    if ([v7 isEqual:v8])
    {
      v9 = [(RTLearnedPlaceTypeInference *)self sessionId];
      v10 = [(RTLearnedPlaceTypeInference *)v6 sessionId];
      if ([v9 isEqual:v10])
      {
        v11 = [(RTLearnedPlaceTypeInference *)self learnedPlaceIdentifier];
        v12 = [(RTLearnedPlaceTypeInference *)v6 learnedPlaceIdentifier];
        if ([v11 isEqual:v12] && (v13 = -[RTLearnedPlaceTypeInference placeType](self, "placeType"), v13 == -[RTLearnedPlaceTypeInference placeType](v6, "placeType")) && (v14 = -[RTLearnedPlaceTypeInference metricSource](self, "metricSource"), v14 == -[RTLearnedPlaceTypeInference metricSource](v6, "metricSource")))
        {
          v18 = [(RTLearnedPlaceTypeInference *)self creationDate];
          v15 = [(RTLearnedPlaceTypeInference *)v6 creationDate];
          v16 = [v18 isEqualToDate:v15];
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (unint64_t)hash
{
  v3 = [(RTLearnedPlaceTypeInference *)self identifier];
  v4 = [v3 hash];
  v5 = [(RTLearnedPlaceTypeInference *)self sessionId];
  v6 = [v5 hash] ^ v4;
  v7 = [(RTLearnedPlaceTypeInference *)self learnedPlaceIdentifier];
  v8 = v6 ^ [v7 hash];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLearnedPlaceTypeInference placeType](self, "placeType")}];
  v10 = v8 ^ [v9 hash];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLearnedPlaceTypeInference metricSource](self, "metricSource")}];
  v12 = [v11 hash];
  v13 = [(RTLearnedPlaceTypeInference *)self creationDate];
  v14 = v12 ^ [v13 hash];

  return v10 ^ v14;
}

- (RTLearnedPlaceTypeInference)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SessionId"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LearnedPlaceIdentifier"];
  v8 = [v4 decodeIntegerForKey:@"PlaceType"];
  v9 = [v4 decodeIntegerForKey:@"MetricSource"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CreationDate"];

  v11 = [(RTLearnedPlaceTypeInference *)self initWithIdentifier:v5 sessionId:v6 learnedPlaceIdentifier:v7 placeType:v8 metricSource:v9 creationDate:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"Identifier"];
  [v5 encodeObject:self->_sessionId forKey:@"SessionId"];
  [v5 encodeObject:self->_learnedPlaceIdentifier forKey:@"LearnedPlaceIdentifier"];
  [v5 encodeInteger:self->_metricSource forKey:@"MetricSource"];
  [v5 encodeInteger:self->_placeType forKey:@"PlaceType"];
  [v5 encodeObject:self->_creationDate forKey:@"CreationDate"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  identifier = self->_identifier;
  sessionId = self->_sessionId;
  learnedPlaceIdentifier = self->_learnedPlaceIdentifier;
  placeType = self->_placeType;
  metricSource = self->_metricSource;
  creationDate = self->_creationDate;

  return [v4 initWithIdentifier:identifier sessionId:sessionId learnedPlaceIdentifier:learnedPlaceIdentifier placeType:placeType metricSource:metricSource creationDate:creationDate];
}

+ (id)createWithManagedObject:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [objc_opt_class() createWithLearnedPlaceTypeInferenceMO:v3];
      goto LABEL_8;
    }

    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412802;
      v8 = v3;
      v9 = 2080;
      v10 = "+[RTLearnedPlaceTypeInference(RTCoreDataTransformable) createWithManagedObject:]";
      v11 = 1024;
      v12 = 34;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "managedObject, %@, is not supported by RTLearnedPlaceTypeInferenceMO+CoreDataTransformable (in %s:%d)", &v7, 0x1Cu);
    }
  }

  v4 = 0;
LABEL_8:

  return v4;
}

+ (id)createWithLearnedPlaceTypeInferenceMO:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    *buf = 0;
    v13 = buf;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__148;
    v16 = __Block_byref_object_dispose__148;
    v17 = 0;
    v5 = [v3 managedObjectContext];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __94__RTLearnedPlaceTypeInference_RTCoreDataTransformable__createWithLearnedPlaceTypeInferenceMO___block_invoke;
    v9[3] = &unk_2788C7FB0;
    v11 = buf;
    v10 = v4;
    [v5 performBlockAndWait:v9];

    v6 = *(v13 + 5);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: learnedPlaceTypeInferenceMO", buf, 2u);
    }

    v6 = 0;
  }

  return v6;
}

void __94__RTLearnedPlaceTypeInference_RTCoreDataTransformable__createWithLearnedPlaceTypeInferenceMO___block_invoke(uint64_t a1)
{
  v2 = [RTLearnedPlaceTypeInference alloc];
  v11 = [*(a1 + 32) identifier];
  v3 = [*(a1 + 32) sessionId];
  v4 = [*(a1 + 32) learnedPlaceIdentifier];
  v5 = [*(a1 + 32) placeType];
  v6 = [*(a1 + 32) metricSource];
  v7 = [*(a1 + 32) creationDate];
  v8 = [(RTLearnedPlaceTypeInference *)v2 initWithIdentifier:v11 sessionId:v3 learnedPlaceIdentifier:v4 placeType:v5 metricSource:v6 creationDate:v7];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (id)managedObjectWithContext:(id)a3
{
  if (a3)
  {
    v3 = [RTLearnedPlaceTypeInferenceMO initWithLearnedPlaceTypeInference:self managedObjectContext:a3];
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