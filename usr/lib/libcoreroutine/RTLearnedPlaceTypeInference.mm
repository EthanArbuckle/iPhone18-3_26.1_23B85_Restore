@interface RTLearnedPlaceTypeInference
+ (id)createWithLearnedPlaceTypeInferenceMO:(id)o;
+ (id)createWithManagedObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (RTLearnedPlaceTypeInference)initWithCoder:(id)coder;
- (RTLearnedPlaceTypeInference)initWithIdentifier:(id)identifier sessionId:(id)id learnedPlaceIdentifier:(id)placeIdentifier placeType:(unint64_t)type metricSource:(unint64_t)source creationDate:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)managedObjectWithContext:(id)context;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTLearnedPlaceTypeInference

- (RTLearnedPlaceTypeInference)initWithIdentifier:(id)identifier sessionId:(id)id learnedPlaceIdentifier:(id)placeIdentifier placeType:(unint64_t)type metricSource:(unint64_t)source creationDate:(id)date
{
  identifierCopy = identifier;
  idCopy = id;
  placeIdentifierCopy = placeIdentifier;
  dateCopy = date;
  v18 = dateCopy;
  if (!identifierCopy)
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

  if (!idCopy)
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

  if (!dateCopy)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v23 = "Invalid parameter not satisfying: creationDate";
      goto LABEL_13;
    }

LABEL_14:

    selfCopy = 0;
    goto LABEL_15;
  }

  v26.receiver = self;
  v26.super_class = RTLearnedPlaceTypeInference;
  v19 = [(RTLearnedPlaceTypeInference *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_identifier, identifier);
    objc_storeStrong(&v20->_sessionId, id);
    objc_storeStrong(&v20->_learnedPlaceIdentifier, placeIdentifier);
    v20->_placeType = type;
    v20->_metricSource = source;
    objc_storeStrong(&v20->_creationDate, date);
  }

  self = v20;
  selfCopy = self;
LABEL_15:

  return selfCopy;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(RTLearnedPlaceTypeInference *)self identifier];
  sessionId = [(RTLearnedPlaceTypeInference *)self sessionId];
  learnedPlaceIdentifier = [(RTLearnedPlaceTypeInference *)self learnedPlaceIdentifier];
  v7 = [RTLearnedPlace placeTypeToString:[(RTLearnedPlaceTypeInference *)self placeType]];
  v8 = [RTPlaceTypeClassifierMetricsCalculator metricsSourceToString:[(RTLearnedPlaceTypeInference *)self metricSource]];
  creationDate = [(RTLearnedPlaceTypeInference *)self creationDate];
  stringFromDate = [creationDate stringFromDate];
  v11 = [v3 stringWithFormat:@"identifier, %@, sessionId, %@, learnedPlaceIdentifier, %@, placeType, %@, metricSource, %@, creationDate, %@, ", identifier, sessionId, learnedPlaceIdentifier, v7, v8, stringFromDate];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v16 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    identifier = [(RTLearnedPlaceTypeInference *)self identifier];
    identifier2 = [(RTLearnedPlaceTypeInference *)v6 identifier];
    if ([identifier isEqual:identifier2])
    {
      sessionId = [(RTLearnedPlaceTypeInference *)self sessionId];
      sessionId2 = [(RTLearnedPlaceTypeInference *)v6 sessionId];
      if ([sessionId isEqual:sessionId2])
      {
        learnedPlaceIdentifier = [(RTLearnedPlaceTypeInference *)self learnedPlaceIdentifier];
        learnedPlaceIdentifier2 = [(RTLearnedPlaceTypeInference *)v6 learnedPlaceIdentifier];
        if ([learnedPlaceIdentifier isEqual:learnedPlaceIdentifier2] && (v13 = -[RTLearnedPlaceTypeInference placeType](self, "placeType"), v13 == -[RTLearnedPlaceTypeInference placeType](v6, "placeType")) && (v14 = -[RTLearnedPlaceTypeInference metricSource](self, "metricSource"), v14 == -[RTLearnedPlaceTypeInference metricSource](v6, "metricSource")))
        {
          creationDate = [(RTLearnedPlaceTypeInference *)self creationDate];
          creationDate2 = [(RTLearnedPlaceTypeInference *)v6 creationDate];
          v16 = [creationDate isEqualToDate:creationDate2];
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
  identifier = [(RTLearnedPlaceTypeInference *)self identifier];
  v4 = [identifier hash];
  sessionId = [(RTLearnedPlaceTypeInference *)self sessionId];
  v6 = [sessionId hash] ^ v4;
  learnedPlaceIdentifier = [(RTLearnedPlaceTypeInference *)self learnedPlaceIdentifier];
  v8 = v6 ^ [learnedPlaceIdentifier hash];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLearnedPlaceTypeInference placeType](self, "placeType")}];
  v10 = v8 ^ [v9 hash];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLearnedPlaceTypeInference metricSource](self, "metricSource")}];
  v12 = [v11 hash];
  creationDate = [(RTLearnedPlaceTypeInference *)self creationDate];
  v14 = v12 ^ [creationDate hash];

  return v10 ^ v14;
}

- (RTLearnedPlaceTypeInference)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SessionId"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LearnedPlaceIdentifier"];
  v8 = [coderCopy decodeIntegerForKey:@"PlaceType"];
  v9 = [coderCopy decodeIntegerForKey:@"MetricSource"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CreationDate"];

  v11 = [(RTLearnedPlaceTypeInference *)self initWithIdentifier:v5 sessionId:v6 learnedPlaceIdentifier:v7 placeType:v8 metricSource:v9 creationDate:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"Identifier"];
  [coderCopy encodeObject:self->_sessionId forKey:@"SessionId"];
  [coderCopy encodeObject:self->_learnedPlaceIdentifier forKey:@"LearnedPlaceIdentifier"];
  [coderCopy encodeInteger:self->_metricSource forKey:@"MetricSource"];
  [coderCopy encodeInteger:self->_placeType forKey:@"PlaceType"];
  [coderCopy encodeObject:self->_creationDate forKey:@"CreationDate"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  identifier = self->_identifier;
  sessionId = self->_sessionId;
  learnedPlaceIdentifier = self->_learnedPlaceIdentifier;
  placeType = self->_placeType;
  metricSource = self->_metricSource;
  creationDate = self->_creationDate;

  return [v4 initWithIdentifier:identifier sessionId:sessionId learnedPlaceIdentifier:learnedPlaceIdentifier placeType:placeType metricSource:metricSource creationDate:creationDate];
}

+ (id)createWithManagedObject:(id)object
{
  v13 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if (objectCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [objc_opt_class() createWithLearnedPlaceTypeInferenceMO:objectCopy];
      goto LABEL_8;
    }

    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412802;
      v8 = objectCopy;
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

+ (id)createWithLearnedPlaceTypeInferenceMO:(id)o
{
  oCopy = o;
  v4 = oCopy;
  if (oCopy)
  {
    *buf = 0;
    v13 = buf;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__148;
    v16 = __Block_byref_object_dispose__148;
    v17 = 0;
    managedObjectContext = [oCopy managedObjectContext];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __94__RTLearnedPlaceTypeInference_RTCoreDataTransformable__createWithLearnedPlaceTypeInferenceMO___block_invoke;
    v9[3] = &unk_2788C7FB0;
    v11 = buf;
    v10 = v4;
    [managedObjectContext performBlockAndWait:v9];

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

- (id)managedObjectWithContext:(id)context
{
  if (context)
  {
    v3 = [RTLearnedPlaceTypeInferenceMO initWithLearnedPlaceTypeInference:self managedObjectContext:context];
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