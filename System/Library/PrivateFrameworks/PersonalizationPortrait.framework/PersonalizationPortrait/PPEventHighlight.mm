@interface PPEventHighlight
+ (id)describeProminentFeature:(unint64_t)a3;
+ (id)eventHighlightWithEKEvent:(id)a3 score:(double)a4 prominentFeature:(unint64_t)a5 features:(id)a6 isExtraordinary:(BOOL)a7;
+ (id)eventHighlightWithEvent:(id)a3 score:(double)a4 prominentFeature:(unint64_t)a5 features:(id)a6 isExtraordinary:(BOOL)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEventHighlight:(id)a3;
- (PPEventHighlight)initWithCoder:(id)a3;
- (PPEventHighlight)initWithEventIdentifier:(id)a3 externalURI:(id)a4 title:(id)a5 startDate:(id)a6 endDate:(id)a7 location:(id)a8 organizer:(id)a9 calendarColor:(CGColor *)a10 prominentFeature:(unint64_t)a11 features:(id)a12 score:(double)a13 isExtraordinary:(BOOL)a14;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPEventHighlight

- (void)dealloc
{
  CGColorRelease(self->_calendarColor);
  v3.receiver = self;
  v3.super_class = PPEventHighlight;
  [(PPEventHighlight *)&v3 dealloc];
}

- (BOOL)isEqualToEventHighlight:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_35;
  }

  v5 = self->_eventIdentifier;
  v6 = v5;
  if (v5 == v4[2])
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
  if (v8 == v4[3])
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
  if (v11 == v4[4])
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
  if (v14 == v4[5])
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
  if (v17 == v4[6])
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
  if (v20 == v4[7])
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
  if (v23 == v4[8])
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

  if (!CGColorEqualToColor(self->_calendarColor, [v4 calendarColor]))
  {
    goto LABEL_35;
  }

  prominentFeature = self->_prominentFeature;
  if (prominentFeature != [v4 prominentFeature])
  {
    goto LABEL_35;
  }

  score = self->_score;
  [v4 score];
  if (score != v28)
  {
    goto LABEL_35;
  }

  features = self->_features;
  v30 = [v4 features];
  if ([(NSArray *)features isEqualToArray:v30])
  {
    isExtraordinary = self->_isExtraordinary;
    v32 = isExtraordinary == [v4 isExtraordinary];
  }

  else
  {
    v32 = 0;
  }

LABEL_36:
  return v32;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPEventHighlight *)self isEqualToEventHighlight:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v5 = objc_opt_new();
  if (v5)
  {
    v6 = [(NSString *)self->_eventIdentifier copyWithZone:a3];
    v7 = *(v5 + 16);
    *(v5 + 16) = v6;

    v8 = [(NSURL *)self->_externalURI copyWithZone:a3];
    v9 = *(v5 + 24);
    *(v5 + 24) = v8;

    v10 = [(NSString *)self->_title copyWithZone:a3];
    v11 = *(v5 + 32);
    *(v5 + 32) = v10;

    v12 = [(NSDate *)self->_startDate copyWithZone:a3];
    v13 = *(v5 + 40);
    *(v5 + 40) = v12;

    v14 = [(NSDate *)self->_endDate copyWithZone:a3];
    v15 = *(v5 + 48);
    *(v5 + 48) = v14;

    v16 = [(NSString *)self->_location copyWithZone:a3];
    v17 = *(v5 + 56);
    *(v5 + 56) = v16;

    v18 = [(NSString *)self->_organizer copyWithZone:a3];
    v19 = *(v5 + 64);
    *(v5 + 64) = v18;

    Copy = CGColorCreateCopy(self->_calendarColor);
    prominentFeature = self->_prominentFeature;
    *(v5 + 72) = Copy;
    *(v5 + 80) = prominentFeature;
    *(v5 + 96) = self->_score;
    v22 = [(NSArray *)self->_features copyWithZone:a3];
    v23 = *(v5 + 88);
    *(v5 + 88) = v22;

    *(v5 + 8) = self->_isExtraordinary;
  }

  return v5;
}

- (PPEventHighlight)initWithCoder:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v3 decodeObjectOfClass:v4 forKey:@"eid"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"eur"];
  v8 = [v3 decodeObjectOfClass:v4 forKey:@"ttl"];
  v9 = [v3 decodeObjectOfClass:v5 forKey:@"std"];
  v10 = [v3 decodeObjectOfClass:v5 forKey:@"end"];
  v11 = objc_autoreleasePoolPush();
  v12 = objc_alloc(MEMORY[0x1E695DFD8]);
  v13 = objc_opt_class();
  v14 = [v12 initWithObjects:{v13, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v11);
  v15 = [v3 decodeObjectOfClasses:v14 forKey:@"fea"];

  v16 = v10;
  if (v6 && v7 && v8 && v9 && v10 && v15)
  {
    v17 = PPCreateCalendarColorWithDecoder(v3);
    v27 = [v3 decodeObjectOfClass:v4 forKey:@"loc"];
    v18 = [v3 decodeObjectOfClass:v4 forKey:@"org"];
    v19 = [v3 decodeInt32ForKey:@"pft"];
    [v3 decodeDoubleForKey:@"scr"];
    v21 = v20;
    LOBYTE(v26) = [v3 decodeBoolForKey:@"ise"];
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
      v30 = v3;
      _os_log_error_impl(&dword_1A7FD3000, v23, OS_LOG_TYPE_ERROR, "failed to decode eventIdentifier, externalURI, title, startDate, endDate, or features from %@", buf, 0xCu);
    }

    v22 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v22;
}

- (void)encodeWithCoder:(id)a3
{
  eventIdentifier = self->_eventIdentifier;
  v5 = a3;
  [v5 encodeObject:eventIdentifier forKey:@"eid"];
  [v5 encodeObject:self->_externalURI forKey:@"eur"];
  [v5 encodeObject:self->_title forKey:@"ttl"];
  [v5 encodeObject:self->_startDate forKey:@"std"];
  [v5 encodeObject:self->_endDate forKey:@"end"];
  [v5 encodeObject:self->_location forKey:@"loc"];
  [v5 encodeObject:self->_organizer forKey:@"org"];
  PPEncodeCalendarColor(v5, self->_calendarColor);
  [v5 encodeInt32:LODWORD(self->_prominentFeature) forKey:@"pft"];
  [v5 encodeObject:self->_features forKey:@"fea"];
  [v5 encodeDouble:@"scr" forKey:self->_score];
  [v5 encodeBool:self->_isExtraordinary forKey:@"ise"];
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
  v19 = [v18 unsignedIntegerValue];

  v20 = *MEMORY[0x1E69E9840];
  return v19 - v12 + 32 * v12;
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

- (PPEventHighlight)initWithEventIdentifier:(id)a3 externalURI:(id)a4 title:(id)a5 startDate:(id)a6 endDate:(id)a7 location:(id)a8 organizer:(id)a9 calendarColor:(CGColor *)a10 prominentFeature:(unint64_t)a11 features:(id)a12 score:(double)a13 isExtraordinary:(BOOL)a14
{
  v38 = a3;
  v37 = a4;
  v21 = a5;
  v36 = a6;
  v35 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a12;
  v39.receiver = self;
  v39.super_class = PPEventHighlight;
  v25 = [(PPEventHighlight *)&v39 init];
  if (v25)
  {
    v26 = [v38 copy];
    eventIdentifier = v25->_eventIdentifier;
    v25->_eventIdentifier = v26;

    objc_storeStrong(&v25->_externalURI, a4);
    v28 = [v21 copy];
    title = v25->_title;
    v25->_title = v28;

    objc_storeStrong(&v25->_startDate, a6);
    objc_storeStrong(&v25->_endDate, a7);
    v30 = [v22 copy];
    location = v25->_location;
    v25->_location = v30;

    v32 = [v23 copy];
    organizer = v25->_organizer;
    v25->_organizer = v32;

    v25->_calendarColor = CGColorRetain(a10);
    v25->_prominentFeature = a11;
    objc_storeStrong(&v25->_features, a12);
    v25->_score = a13;
    v25->_isExtraordinary = a14;
  }

  return v25;
}

+ (id)describeProminentFeature:(unint64_t)a3
{
  if (a3 - 1 > 7)
  {
    return @"Calendar";
  }

  else
  {
    return *(&off_1E77F7AC8 + a3 - 1);
  }
}

+ (id)eventHighlightWithEvent:(id)a3 score:(double)a4 prominentFeature:(unint64_t)a5 features:(id)a6 isExtraordinary:(BOOL)a7
{
  v9 = a6;
  v10 = a3;
  v11 = [v10 calendar];
  v23 = [v11 color];

  v12 = [PPEventHighlight alloc];
  v13 = [v10 eventIdentifier];
  v14 = [v10 externalURI];
  v15 = [v10 title];
  v16 = [v10 startDate];
  v17 = [v10 endDate];
  v18 = [v10 location];
  v19 = [v10 organizerName];

  LOBYTE(v22) = a7;
  v20 = [(PPEventHighlight *)v12 initWithEventIdentifier:v13 externalURI:v14 title:v15 startDate:v16 endDate:v17 location:v18 organizer:a4 calendarColor:v19 prominentFeature:v23 features:a5 score:v9 isExtraordinary:v22];

  return v20;
}

+ (id)eventHighlightWithEKEvent:(id)a3 score:(double)a4 prominentFeature:(unint64_t)a5 features:(id)a6 isExtraordinary:(BOOL)a7
{
  v10 = a3;
  v29 = a6;
  v11 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  v12 = [v10 calendar];
  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v11, kCGRenderingIntentDefault, [v12 CGColor], 0);

  CGColorSpaceRelease(v11);
  v13 = [v10 locationWithoutPrediction];
  v14 = [v13 copy];

  if (![v14 length])
  {

    v14 = 0;
  }

  context = objc_autoreleasePoolPush();
  v24 = [PPEventHighlight alloc];
  v15 = [v10 eventIdentifier];
  v16 = [v10 externalURI];
  v17 = [v10 title];
  v18 = [v10 startDate];
  v19 = [v10 endDate];
  v20 = [v10 organizer];
  v21 = [v20 name];
  LOBYTE(v23) = a7;
  v26 = [(PPEventHighlight *)v24 initWithEventIdentifier:v15 externalURI:v16 title:v17 startDate:v18 endDate:v19 location:v14 organizer:a4 calendarColor:v21 prominentFeature:CopyByMatchingToColorSpace features:a5 score:v29 isExtraordinary:v23];

  objc_autoreleasePoolPop(context);
  CGColorRelease(CopyByMatchingToColorSpace);

  return v26;
}

@end