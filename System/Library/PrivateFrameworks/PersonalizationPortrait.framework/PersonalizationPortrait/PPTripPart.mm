@interface PPTripPart
+ (id)descriptionForTripMode:(unsigned __int8)mode;
- (PPTripPart)initWithCoder:(id)coder;
- (PPTripPart)initWithStartDate:(id)date endDate:(id)endDate eventIdentifiers:(id)identifiers mode:(unsigned __int8)mode location:(id)location fallbackLocationString:(id)string;
- (id)description;
- (id)destinationString;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPTripPart

- (id)description
{
  v3 = objc_opt_new();
  [v3 setDateFormat:@"d MMM yyyy"];
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = [objc_opt_class() descriptionForTripMode:{-[PPTripPart tripMode](self, "tripMode")}];
  destinationString = [(PPTripPart *)self destinationString];
  startDate = [(PPTripPart *)self startDate];
  v8 = [v3 stringFromDate:startDate];
  endDate = [(PPTripPart *)self endDate];
  v10 = [v3 stringFromDate:endDate];
  v11 = [v4 initWithFormat:@"[%@] %@, %@ -> %@ ", v5, destinationString, v8, v10];

  return v11;
}

- (id)destinationString
{
  mainLocation = [(PPTripPart *)self mainLocation];

  if (mainLocation)
  {
    mainLocation2 = [(PPTripPart *)self mainLocation];
    locality = [mainLocation2 locality];

    mainLocation3 = [(PPTripPart *)self mainLocation];
    country = [mainLocation3 country];

    if (locality && country)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@, %@", locality, country];
LABEL_11:
      fallbackLocationString2 = v8;

      goto LABEL_13;
    }

    if (locality)
    {
      v8 = locality;
      goto LABEL_11;
    }

    if (country)
    {
      v8 = country;
      goto LABEL_11;
    }
  }

  else
  {
    fallbackLocationString = [(PPTripPart *)self fallbackLocationString];

    if (fallbackLocationString)
    {
      fallbackLocationString2 = [(PPTripPart *)self fallbackLocationString];
      goto LABEL_13;
    }
  }

  fallbackLocationString2 = &stru_1F1B327D8;
LABEL_13:

  return fallbackLocationString2;
}

- (void)encodeWithCoder:(id)coder
{
  startDate = self->_startDate;
  coderCopy = coder;
  [coderCopy encodeObject:startDate forKey:@"sdt"];
  [coderCopy encodeObject:self->_endDate forKey:@"edt"];
  [coderCopy encodeInt32:self->_tripMode forKey:@"tpm"];
  [coderCopy encodeObject:self->_eventIdentifiers forKey:@"eid"];
  [coderCopy encodeObject:self->_mainLocation forKey:@"tploc"];
  [coderCopy encodeObject:self->_fallbackLocationString forKey:@"tpfallloc"];
}

- (PPTripPart)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"sdt"];
  v8 = [coderCopy decodeObjectOfClass:v6 forKey:@"edt"];
  v9 = [coderCopy decodeInt32ForKey:@"tpm"];
  v10 = objc_autoreleasePoolPush();
  v11 = objc_alloc(MEMORY[0x1E695DFD8]);
  v12 = objc_opt_class();
  v13 = [v11 initWithObjects:{v12, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v10);
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"eid"];

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tploc"];
  v16 = [coderCopy decodeObjectOfClass:v5 forKey:@"tpfallloc"];
  selfCopy = 0;
  if (v7 && v8 && v14)
  {
    self = [(PPTripPart *)self initWithStartDate:v7 endDate:v8 eventIdentifiers:v14 mode:v9 location:v15 fallbackLocationString:v16];
    selfCopy = self;
  }

  return selfCopy;
}

- (PPTripPart)initWithStartDate:(id)date endDate:(id)endDate eventIdentifiers:(id)identifiers mode:(unsigned __int8)mode location:(id)location fallbackLocationString:(id)string
{
  dateCopy = date;
  endDateCopy = endDate;
  identifiersCopy = identifiers;
  locationCopy = location;
  stringCopy = string;
  v23.receiver = self;
  v23.super_class = PPTripPart;
  v18 = [(PPTripPart *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_startDate, date);
    objc_storeStrong(&v19->_endDate, endDate);
    objc_storeStrong(&v19->_eventIdentifiers, identifiers);
    v19->_tripMode = mode;
    objc_storeStrong(&v19->_mainLocation, location);
    objc_storeStrong(&v19->_fallbackLocationString, string);
  }

  return v19;
}

+ (id)descriptionForTripMode:(unsigned __int8)mode
{
  modeCopy = mode;
  v8 = *MEMORY[0x1E69E9840];
  if (mode >= 9u)
  {
    v5 = pp_default_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v7[0] = 67109120;
      v7[1] = modeCopy;
      _os_log_fault_impl(&dword_1A7FD3000, v5, OS_LOG_TYPE_FAULT, "PPScoredEvent::descriptionForTripMode, unsupported trip mode: %hhu", v7, 8u);
    }

    result = @"Unknown";
  }

  else
  {
    result = off_1E77F7C38[mode];
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

@end