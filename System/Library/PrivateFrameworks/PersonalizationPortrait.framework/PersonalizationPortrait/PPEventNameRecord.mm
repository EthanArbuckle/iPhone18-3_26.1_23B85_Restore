@interface PPEventNameRecord
+ (id)describeChangeType:(unsigned __int8)type;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEventNameRecord:(id)record;
- (PPEventNameRecord)initWithCoder:(id)coder;
- (PPEventNameRecord)initWithIdentifier:(id)identifier score:(double)score eventIdentifier:(id)eventIdentifier changeType:(unsigned __int8)type title:(id)title location:(id)location participantNames:(id)names;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPEventNameRecord

- (BOOL)isEqualToEventNameRecord:(id)record
{
  recordCopy = record;
  if (!recordCopy)
  {
    goto LABEL_14;
  }

  v5 = self->_title;
  v6 = v5;
  if (v5 == recordCopy[5])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if (self->_score != *(recordCopy + 3) || self->_changeType != *(recordCopy + 8))
  {
    goto LABEL_14;
  }

  v8 = self->_eventIdentifier;
  v9 = v8;
  if (v8 == recordCopy[4])
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v11 = self->_location;
  v12 = v11;
  if (v11 == recordCopy[6])
  {
  }

  else
  {
    v13 = [(NSString *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
LABEL_14:
      v14 = 0;
      goto LABEL_15;
    }
  }

  v16 = self->_participantNames;
  v17 = v16;
  if (v16 == recordCopy[7])
  {
    v14 = 1;
  }

  else
  {
    v14 = [(NSArray *)v16 isEqual:?];
  }

LABEL_15:
  return v14;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPEventNameRecord *)self isEqualToEventNameRecord:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v5 = objc_opt_new();
  if (v5)
  {
    v6 = [(NSString *)self->_identifier copyWithZone:zone];
    v7 = *(v5 + 16);
    *(v5 + 16) = v6;

    *(v5 + 8) = self->_changeType;
    *(v5 + 24) = self->_score;
    v8 = [(NSString *)self->_eventIdentifier copyWithZone:zone];
    v9 = *(v5 + 32);
    *(v5 + 32) = v8;

    v10 = [(NSString *)self->_title copyWithZone:zone];
    v11 = *(v5 + 40);
    *(v5 + 40) = v10;

    v12 = [(NSString *)self->_location copyWithZone:zone];
    v13 = *(v5 + 48);
    *(v5 + 48) = v12;

    v14 = [(NSArray *)self->_participantNames copyWithZone:zone];
    v15 = *(v5 + 56);
    *(v5 + 56) = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"ide"];
  [coderCopy encodeDouble:@"scr" forKey:self->_score];
  [coderCopy encodeObject:self->_eventIdentifier forKey:@"eid"];
  [coderCopy encodeInt32:self->_changeType forKey:@"cht"];
  [coderCopy encodeObject:self->_title forKey:@"ttl"];
  [coderCopy encodeObject:self->_location forKey:@"loc"];
  [coderCopy encodeObject:self->_participantNames forKey:@"pnm"];
}

- (PPEventNameRecord)initWithCoder:(id)coder
{
  v25 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:@"ide"];
  v8 = [coderCopy decodeObjectOfClass:v5 forKey:@"eid"];
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = pp_events_log_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = coderCopy;
      _os_log_error_impl(&dword_1A7FD3000, v11, OS_LOG_TYPE_ERROR, "failed to decode identifier or eventIdentifier from %@", buf, 0xCu);
    }

    selfCopy = 0;
  }

  else
  {
    [coderCopy decodeDoubleForKey:@"scr"];
    v13 = v12;
    v14 = [coderCopy decodeInt32ForKey:@"cht"];
    v15 = [coderCopy decodeObjectOfClass:v5 forKey:@"ttl"];
    v16 = [coderCopy decodeObjectOfClass:v5 forKey:@"loc"];
    v17 = objc_autoreleasePoolPush();
    v18 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v6, v5, 0}];
    objc_autoreleasePoolPop(v17);
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"pnm"];
    self = [(PPEventNameRecord *)self initWithIdentifier:v7 score:v9 eventIdentifier:v14 changeType:v15 title:v16 location:v19 participantNames:v13];

    selfCopy = self;
  }

  v21 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = self->_score - v3 + 32 * v3;
  v5 = self->_changeType - v4 + 32 * v4;
  v6 = [(NSString *)self->_title hash]- v5 + 32 * v5;
  v7 = [(NSString *)self->_location hash]- v6 + 32 * v6;
  v8 = [(NSArray *)self->_participantNames hash]- v7 + 32 * v7;
  return [(NSString *)self->_eventIdentifier hash]- v8 + 32 * v8;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v9 = *&self->_title;
  participantNames = self->_participantNames;
  score = self->_score;
  v6 = [PPEventNameRecord describeChangeType:[(PPEventNameRecord *)self changeType]];
  v7 = [v3 initWithFormat:@"<PPEventNameRecord t:'%@' l:'%@' p:%@ s:%f ct:%@>", v9, participantNames, *&score, v6];

  return v7;
}

- (PPEventNameRecord)initWithIdentifier:(id)identifier score:(double)score eventIdentifier:(id)eventIdentifier changeType:(unsigned __int8)type title:(id)title location:(id)location participantNames:(id)names
{
  identifierCopy = identifier;
  eventIdentifierCopy = eventIdentifier;
  titleCopy = title;
  locationCopy = location;
  namesCopy = names;
  v31.receiver = self;
  v31.super_class = PPEventNameRecord;
  v21 = [(PPEventNameRecord *)&v31 init];
  if (v21)
  {
    v22 = [identifierCopy copy];
    identifier = v21->_identifier;
    v21->_identifier = v22;

    v21->_score = score;
    v24 = [eventIdentifierCopy copy];
    eventIdentifier = v21->_eventIdentifier;
    v21->_eventIdentifier = v24;

    v21->_changeType = type;
    v26 = [titleCopy copy];
    title = v21->_title;
    v21->_title = v26;

    v28 = [locationCopy copy];
    location = v21->_location;
    v21->_location = v28;

    objc_storeStrong(&v21->_participantNames, names);
  }

  return v21;
}

+ (id)describeChangeType:(unsigned __int8)type
{
  if (type >= 4u)
  {
    type = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid (%lu)", type];
  }

  else
  {
    type = off_1E77F69B0[type];
  }

  return type;
}

@end