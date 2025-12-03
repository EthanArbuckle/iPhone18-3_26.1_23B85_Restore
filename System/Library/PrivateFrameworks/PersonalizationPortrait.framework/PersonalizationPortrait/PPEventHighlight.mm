@interface PPEventHighlight
+ (id)describeProminentFeature:(unint64_t)feature;
+ (id)eventHighlightWithEKEvent:(id)event score:(double)score prominentFeature:(unint64_t)feature features:(id)features isExtraordinary:(BOOL)extraordinary;
+ (id)eventHighlightWithEvent:(id)event score:(double)score prominentFeature:(unint64_t)feature features:(id)features isExtraordinary:(BOOL)extraordinary;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEventHighlight:(id)highlight;
- (PPEventHighlight)initWithCoder:(id)coder;
- (PPEventHighlight)initWithEventIdentifier:(id)identifier externalURI:(id)i title:(id)title startDate:(id)date endDate:(id)endDate location:(id)location organizer:(id)organizer calendarColor:(CGColor *)self0 prominentFeature:(unint64_t)self1 features:(id)self2 score:(double)self3 isExtraordinary:(BOOL)self4;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPEventHighlight

- (void)dealloc
{
  CGColorRelease(self->_calendarColor);
  v3.receiver = self;
  v3.super_class = PPEventHighlight;
  [(PPEventHighlight *)&v3 dealloc];
}

- (BOOL)isEqualToEventHighlight:(id)highlight
{
  highlightCopy = highlight;
  if (!highlightCopy)
  {
    goto LABEL_35;
  }

  v5 = self->_eventIdentifier;
  v6 = v5;
  if (v5 == highlightCopy[2])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
LABEL_35:
      v32 = 0;
      goto LABEL_36;
    }
  }

  v8 = self->_externalURI;
  v9 = v8;
  if (v8 == highlightCopy[3])
  {
  }

  else
  {
    v10 = [(NSURL *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  v11 = self->_title;
  v12 = v11;
  if (v11 == highlightCopy[4])
  {
  }

  else
  {
    v13 = [(NSString *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  v14 = self->_startDate;
  v15 = v14;
  if (v14 == highlightCopy[5])
  {
  }

  else
  {
    v16 = [(NSDate *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  v17 = self->_endDate;
  v18 = v17;
  if (v17 == highlightCopy[6])
  {
  }

  else
  {
    v19 = [(NSDate *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  v20 = self->_location;
  v21 = v20;
  if (v20 == highlightCopy[7])
  {
  }

  else
  {
    v22 = [(NSString *)v20 isEqual:?];

    if ((v22 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  v23 = self->_organizer;
  v24 = v23;
  if (v23 == highlightCopy[8])
  {
  }

  else
  {
    v25 = [(NSString *)v23 isEqual:?];

    if ((v25 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  if (!CGColorEqualToColor(self->_calendarColor, [highlightCopy calendarColor]))
  {
    goto LABEL_35;
  }

  prominentFeature = self->_prominentFeature;
  if (prominentFeature != [highlightCopy prominentFeature])
  {
    goto LABEL_35;
  }

  score = self->_score;
  [highlightCopy score];
  if (score != v28)
  {
    goto LABEL_35;
  }

  features = self->_features;
  features = [highlightCopy features];
  if ([(NSArray *)features isEqualToArray:features])
  {
    isExtraordinary = self->_isExtraordinary;
    v32 = isExtraordinary == [highlightCopy isExtraordinary];
  }

  else
  {
    v32 = 0;
  }

LABEL_36:
  return v32;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPEventHighlight *)self isEqualToEventHighlight:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v5 = objc_opt_new();
  if (v5)
  {
    v6 = [(NSString *)self->_eventIdentifier copyWithZone:zone];
    v7 = *(v5 + 16);
    *(v5 + 16) = v6;

    v8 = [(NSURL *)self->_externalURI copyWithZone:zone];
    v9 = *(v5 + 24);
    *(v5 + 24) = v8;

    v10 = [(NSString *)self->_title copyWithZone:zone];
    v11 = *(v5 + 32);
    *(v5 + 32) = v10;

    v12 = [(NSDate *)self->_startDate copyWithZone:zone];
    v13 = *(v5 + 40);
    *(v5 + 40) = v12;

    v14 = [(NSDate *)self->_endDate copyWithZone:zone];
    v15 = *(v5 + 48);
    *(v5 + 48) = v14;

    v16 = [(NSString *)self->_location copyWithZone:zone];
    v17 = *(v5 + 56);
    *(v5 + 56) = v16;

    v18 = [(NSString *)self->_organizer copyWithZone:zone];
    v19 = *(v5 + 64);
    *(v5 + 64) = v18;

    Copy = CGColorCreateCopy(self->_calendarColor);
    prominentFeature = self->_prominentFeature;
    *(v5 + 72) = Copy;
    *(v5 + 80) = prominentFeature;
    *(v5 + 96) = self->_score;
    v22 = [(NSArray *)self->_features copyWithZone:zone];
    v23 = *(v5 + 88);
    *(v5 + 88) = v22;

    *(v5 + 8) = self->_isExtraordinary;
  }

  return v5;
}

- (PPEventHighlight)initWithCoder:(id)coder
{
  v31 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [coderCopy decodeObjectOfClass:v4 forKey:@"eid"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eur"];
  v8 = [coderCopy decodeObjectOfClass:v4 forKey:@"ttl"];
  v9 = [coderCopy decodeObjectOfClass:v5 forKey:@"std"];
  v10 = [coderCopy decodeObjectOfClass:v5 forKey:@"end"];
  v11 = objc_autoreleasePoolPush();
  v12 = objc_alloc(MEMORY[0x1E695DFD8]);
  v13 = objc_opt_class();
  v14 = [v12 initWithObjects:{v13, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v11);
  v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"fea"];

  v16 = v10;
  if (v6 && v7 && v8 && v9 && v10 && v15)
  {
    v17 = PPCreateCalendarColorWithDecoder(coderCopy);
    v27 = [coderCopy decodeObjectOfClass:v4 forKey:@"loc"];
    v18 = [coderCopy decodeObjectOfClass:v4 forKey:@"org"];
    v19 = [coderCopy decodeInt32ForKey:@"pft"];
    [coderCopy decodeDoubleForKey:@"scr"];
    v21 = v20;
    LOBYTE(v26) = [coderCopy decodeBoolForKey:@"ise"];
    v22 = [(PPEventHighlight *)self initWithEventIdentifier:v6 externalURI:v7 title:v8 startDate:v9 endDate:v16 location:v27 organizer:v21 calendarColor:v18 prominentFeature:v17 features:v19 score:v15 isExtraordinary:v26];

    CGColorRelease(v17);
    self = v22;
  }

  else
  {
    v23 = pp_events_log_handle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v30 = coderCopy;
      _os_log_error_impl(&dword_1A7FD3000, v23, OS_LOG_TYPE_ERROR, "failed to decode eventIdentifier, externalURI, title, startDate, endDate, or features from %@", buf, 0xCu);
    }

    v22 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v22;
}

- (void)encodeWithCoder:(id)coder
{
  eventIdentifier = self->_eventIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:eventIdentifier forKey:@"eid"];
  [coderCopy encodeObject:self->_externalURI forKey:@"eur"];
  [coderCopy encodeObject:self->_title forKey:@"ttl"];
  [coderCopy encodeObject:self->_startDate forKey:@"std"];
  [coderCopy encodeObject:self->_endDate forKey:@"end"];
  [coderCopy encodeObject:self->_location forKey:@"loc"];
  [coderCopy encodeObject:self->_organizer forKey:@"org"];
  PPEncodeCalendarColor(coderCopy, self->_calendarColor);
  [coderCopy encodeInt32:LODWORD(self->_prominentFeature) forKey:@"pft"];
  [coderCopy encodeObject:self->_features forKey:@"fea"];
  [coderCopy encodeDouble:@"scr" forKey:self->_score];
  [coderCopy encodeBool:self->_isExtraordinary forKey:@"ise"];
}

- (unint64_t)hash
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(NSString *)self->_eventIdentifier hash];
  v4 = [(NSURL *)self->_externalURI hash]- v3 + 32 * v3;
  v5 = [(NSString *)self->_title hash]- v4 + 32 * v4;
  v6 = [(NSDate *)self->_startDate hash]- v5 + 32 * v5;
  v7 = [(NSDate *)self->_endDate hash]- v6 + 32 * v6;
  v8 = [(NSString *)self->_location hash]- v7 + 32 * v7;
  v9 = [(NSString *)self->_organizer hash];
  features = self->_features;
  v11 = self->_prominentFeature - (v9 - v8 + 32 * v8) + 32 * (v9 - v8 + 32 * v8);
  v12 = self->_score - v11 + 32 * v11;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = features;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      v17 = 0;
      do
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v12 = [*(*(&v22 + 1) + 8 * v17++) unsignedIntegerValue] - v12 + 32 * v12;
      }

      while (v15 != v17);
      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v15);
  }

  v18 = [MEMORY[0x1E696AD98] numberWithBool:self->_isExtraordinary];
  unsignedIntegerValue = [v18 unsignedIntegerValue];

  v20 = *MEMORY[0x1E69E9840];
  return unsignedIntegerValue - v12 + 32 * v12;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  title = self->_title;
  location = self->_location;
  score = self->_score;
  if (self->_isExtraordinary)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [PPEventHighlight describeProminentFeature:self->_prominentFeature];
  v9 = [v3 initWithFormat:@"<PPEventHighlight t:'%@' l:'%@' s:'%f' e:'%@' p:'%@' f:'%@'", title, location, *&score, v7, v8, self->_features];

  return v9;
}

- (PPEventHighlight)initWithEventIdentifier:(id)identifier externalURI:(id)i title:(id)title startDate:(id)date endDate:(id)endDate location:(id)location organizer:(id)organizer calendarColor:(CGColor *)self0 prominentFeature:(unint64_t)self1 features:(id)self2 score:(double)self3 isExtraordinary:(BOOL)self4
{
  identifierCopy = identifier;
  iCopy = i;
  titleCopy = title;
  dateCopy = date;
  endDateCopy = endDate;
  locationCopy = location;
  organizerCopy = organizer;
  featuresCopy = features;
  v39.receiver = self;
  v39.super_class = PPEventHighlight;
  v25 = [(PPEventHighlight *)&v39 init];
  if (v25)
  {
    v26 = [identifierCopy copy];
    eventIdentifier = v25->_eventIdentifier;
    v25->_eventIdentifier = v26;

    objc_storeStrong(&v25->_externalURI, i);
    v28 = [titleCopy copy];
    title = v25->_title;
    v25->_title = v28;

    objc_storeStrong(&v25->_startDate, date);
    objc_storeStrong(&v25->_endDate, endDate);
    v30 = [locationCopy copy];
    location = v25->_location;
    v25->_location = v30;

    v32 = [organizerCopy copy];
    organizer = v25->_organizer;
    v25->_organizer = v32;

    v25->_calendarColor = CGColorRetain(color);
    v25->_prominentFeature = feature;
    objc_storeStrong(&v25->_features, features);
    v25->_score = score;
    v25->_isExtraordinary = extraordinary;
  }

  return v25;
}

+ (id)describeProminentFeature:(unint64_t)feature
{
  if (feature - 1 > 7)
  {
    return @"Calendar";
  }

  else
  {
    return *(&off_1E77F7AC8 + feature - 1);
  }
}

+ (id)eventHighlightWithEvent:(id)event score:(double)score prominentFeature:(unint64_t)feature features:(id)features isExtraordinary:(BOOL)extraordinary
{
  featuresCopy = features;
  eventCopy = event;
  calendar = [eventCopy calendar];
  color = [calendar color];

  v12 = [PPEventHighlight alloc];
  eventIdentifier = [eventCopy eventIdentifier];
  externalURI = [eventCopy externalURI];
  title = [eventCopy title];
  startDate = [eventCopy startDate];
  endDate = [eventCopy endDate];
  location = [eventCopy location];
  organizerName = [eventCopy organizerName];

  LOBYTE(v22) = extraordinary;
  v20 = [(PPEventHighlight *)v12 initWithEventIdentifier:eventIdentifier externalURI:externalURI title:title startDate:startDate endDate:endDate location:location organizer:score calendarColor:organizerName prominentFeature:color features:feature score:featuresCopy isExtraordinary:v22];

  return v20;
}

+ (id)eventHighlightWithEKEvent:(id)event score:(double)score prominentFeature:(unint64_t)feature features:(id)features isExtraordinary:(BOOL)extraordinary
{
  eventCopy = event;
  featuresCopy = features;
  v11 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  calendar = [eventCopy calendar];
  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v11, kCGRenderingIntentDefault, [calendar CGColor], 0);

  CGColorSpaceRelease(v11);
  locationWithoutPrediction = [eventCopy locationWithoutPrediction];
  v14 = [locationWithoutPrediction copy];

  if (![v14 length])
  {

    v14 = 0;
  }

  context = objc_autoreleasePoolPush();
  v24 = [PPEventHighlight alloc];
  eventIdentifier = [eventCopy eventIdentifier];
  externalURI = [eventCopy externalURI];
  title = [eventCopy title];
  startDate = [eventCopy startDate];
  endDate = [eventCopy endDate];
  organizer = [eventCopy organizer];
  name = [organizer name];
  LOBYTE(v23) = extraordinary;
  v26 = [(PPEventHighlight *)v24 initWithEventIdentifier:eventIdentifier externalURI:externalURI title:title startDate:startDate endDate:endDate location:v14 organizer:score calendarColor:name prominentFeature:CopyByMatchingToColorSpace features:feature score:featuresCopy isExtraordinary:v23];

  objc_autoreleasePoolPop(context);
  CGColorRelease(CopyByMatchingToColorSpace);

  return v26;
}

@end