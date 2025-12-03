@interface DADeviceState
- (BOOL)object:(id)object isEqualToObject:(id)toObject;
- (DADeviceState)init;
- (DADeviceState)initWithCoder:(id)coder;
- (DADeviceState)initWithSerialNumber:(id)number attributes:(id)attributes;
- (id)_stringForPhase:(int64_t)phase;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)overriddenSerialNumberFor:(id)for;
- (void)_sendChangeNotification;
- (void)_sendChangeNotificationIfNeeded;
- (void)addErrorCode:(int64_t)code userInfo:(id)info;
- (void)encodeWithCoder:(id)coder;
- (void)removeErrorCode:(int64_t)code;
- (void)removeErrorCodes:(id)codes;
- (void)resetState;
- (void)setDiagnosticEventID:(id)d;
- (void)setDurationRemaining:(double)remaining;
- (void)setErrors:(id)errors;
- (void)setHistory:(id)history;
- (void)setPhase:(int64_t)phase;
- (void)setProgress:(id)progress;
- (void)setSessionSettings:(id)settings;
- (void)setSuiteDescription:(id)description;
- (void)setSuiteID:(id)d;
- (void)setSuiteName:(id)name;
- (void)setSuitesAvailable:(id)available;
- (void)setTimestamp:(id)timestamp;
- (void)transactionWithBlock:(id)block;
- (void)updateWithDeviceState:(id)state;
@end

@implementation DADeviceState

- (DADeviceState)init
{
  v20.receiver = self;
  v20.super_class = DADeviceState;
  v2 = [(DADeviceState *)&v20 init];
  v3 = v2;
  if (v2)
  {
    v2->_phase = 0;
    diagnosticEventID = v2->_diagnosticEventID;
    v2->_diagnosticEventID = 0;

    suiteID = v3->_suiteID;
    v3->_suiteID = 0;

    suiteName = v3->_suiteName;
    v3->_suiteName = 0;

    suiteDescription = v3->_suiteDescription;
    v3->_suiteDescription = 0;

    suitesAvailable = v3->_suitesAvailable;
    v3->_suitesAvailable = &__NSArray0__struct;

    progress = v3->_progress;
    v3->_progress = &off_10001DA18;

    v3->_durationRemaining = 0.0;
    history = v3->_history;
    v3->_history = &__NSArray0__struct;

    errors = v3->_errors;
    v3->_errors = &__NSArray0__struct;

    timestamp = v3->_timestamp;
    v3->_timestamp = 0;

    attributes = v3->_attributes;
    v3->_attributes = &__NSDictionary0__struct;

    serialNumber = v3->_serialNumber;
    v3->_serialNumber = @"unknown";

    v15 = objc_opt_new();
    sessionSettings = v3->_sessionSettings;
    v3->_sessionSettings = v15;

    v3->_pendingChanges = 0;
    v3->_freezeNotifications = 0;
    v17 = dispatch_queue_create("com.apple.Diagnostics.deviceState.notificationQueue", 0);
    notificationQueue = v3->_notificationQueue;
    v3->_notificationQueue = v17;
  }

  return v3;
}

- (DADeviceState)initWithSerialNumber:(id)number attributes:(id)attributes
{
  numberCopy = number;
  attributesCopy = attributes;
  v8 = [(DADeviceState *)self init];
  if (v8)
  {
    if (os_variant_has_internal_content())
    {
      v9 = [(DADeviceState *)v8 overriddenSerialNumberFor:numberCopy];
    }

    else
    {
      v9 = numberCopy;
    }

    serialNumber = v8->_serialNumber;
    v8->_serialNumber = v9;

    objc_storeStrong(&v8->_attributes, attributes);
  }

  return v8;
}

- (DADeviceState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(DADeviceState *)self init];
  if (v5)
  {
    v5->_phase = [coderCopy decodeIntegerForKey:@"phase"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"diagnosticEventID"];
    diagnosticEventID = v5->_diagnosticEventID;
    v5->_diagnosticEventID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suiteID"];
    suiteID = v5->_suiteID;
    v5->_suiteID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suiteName"];
    suiteName = v5->_suiteName;
    v5->_suiteName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suiteDescription"];
    suiteDescription = v5->_suiteDescription;
    v5->_suiteDescription = v12;

    v14 = objc_opt_class();
    v15 = [NSSet setWithObjects:v14, objc_opt_class(), 0];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"suitesAvailable"];
    suitesAvailable = v5->_suitesAvailable;
    v5->_suitesAvailable = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"progress"];
    progress = v5->_progress;
    v5->_progress = v18;

    [coderCopy decodeDoubleForKey:@"durationRemaining"];
    v5->_durationRemaining = v20;
    v21 = objc_opt_class();
    v22 = [NSSet setWithObjects:v21, objc_opt_class(), 0];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"history"];
    history = v5->_history;
    v5->_history = v23;

    v25 = objc_opt_class();
    v26 = [NSSet setWithObjects:v25, objc_opt_class(), 0];
    v27 = [coderCopy decodeObjectOfClasses:v26 forKey:@"errors"];
    errors = v5->_errors;
    v5->_errors = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v29;

    v5->_pendingChanges = 0;
    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = v31;

    v33 = objc_opt_class();
    v34 = objc_opt_class();
    v35 = objc_opt_class();
    v36 = objc_opt_class();
    v37 = objc_opt_class();
    v38 = [NSSet setWithObjects:v33, v34, v35, v36, v37, objc_opt_class(), 0];
    v39 = [coderCopy decodeObjectOfClasses:v38 forKey:@"attributes"];
    attributes = v5->_attributes;
    v5->_attributes = v39;

    if (!v5->_attributes)
    {
      v5->_attributes = &__NSDictionary0__struct;
    }

    if (!v5->_serialNumber)
    {
      v5->_serialNumber = @"unknown";
    }

    v41 = +[DASessionSettings acceptableValueClasses];
    v42 = [coderCopy decodeObjectOfClasses:v41 forKey:@"sessionSettings"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = [DASessionSettings sessionSettingsWithDictionary:v42];
      sessionSettings = v5->_sessionSettings;
      v5->_sessionSettings = v43;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[DADeviceState phase](self forKey:{"phase"), @"phase"}];
  diagnosticEventID = [(DADeviceState *)self diagnosticEventID];
  [coderCopy encodeObject:diagnosticEventID forKey:@"diagnosticEventID"];

  suiteID = [(DADeviceState *)self suiteID];
  [coderCopy encodeObject:suiteID forKey:@"suiteID"];

  suiteName = [(DADeviceState *)self suiteName];
  [coderCopy encodeObject:suiteName forKey:@"suiteName"];

  suiteDescription = [(DADeviceState *)self suiteDescription];
  [coderCopy encodeObject:suiteDescription forKey:@"suiteDescription"];

  suitesAvailable = [(DADeviceState *)self suitesAvailable];
  [coderCopy encodeObject:suitesAvailable forKey:@"suitesAvailable"];

  progress = [(DADeviceState *)self progress];
  [coderCopy encodeObject:progress forKey:@"progress"];

  history = [(DADeviceState *)self history];
  [coderCopy encodeObject:history forKey:@"history"];

  errors = [(DADeviceState *)self errors];
  [coderCopy encodeObject:errors forKey:@"errors"];

  timestamp = [(DADeviceState *)self timestamp];
  [coderCopy encodeObject:timestamp forKey:@"timestamp"];

  attributes = [(DADeviceState *)self attributes];
  [coderCopy encodeObject:attributes forKey:@"attributes"];

  serialNumber = [(DADeviceState *)self serialNumber];
  [coderCopy encodeObject:serialNumber forKey:@"serialNumber"];

  sessionSettings = [(DADeviceState *)self sessionSettings];
  dictionary = [sessionSettings dictionary];
  [coderCopy encodeObject:dictionary forKey:@"sessionSettings"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[4] = self->_phase;
  v6 = [(NSString *)self->_diagnosticEventID copyWithZone:zone];
  v7 = v5[7];
  v5[7] = v6;

  v8 = [(NSNumber *)self->_suiteID copyWithZone:zone];
  v9 = v5[8];
  v5[8] = v8;

  v10 = [(NSString *)self->_suiteName copyWithZone:zone];
  v11 = v5[9];
  v5[9] = v10;

  v12 = [(NSString *)self->_suiteDescription copyWithZone:zone];
  v13 = v5[10];
  v5[10] = v12;

  v14 = [(NSArray *)self->_suitesAvailable copyWithZone:zone];
  v15 = v5[12];
  v5[12] = v14;

  v16 = [(NSNumber *)self->_progress copyWithZone:zone];
  v17 = v5[13];
  v5[13] = v16;

  v5[14] = *&self->_durationRemaining;
  v18 = [(NSArray *)self->_history copyWithZone:zone];
  v19 = v5[16];
  v5[16] = v18;

  v20 = [(NSArray *)self->_errors copyWithZone:zone];
  v21 = v5[17];
  v5[17] = v20;

  v22 = [(NSNumber *)self->_timestamp copyWithZone:zone];
  v23 = v5[18];
  v5[18] = v22;

  v24 = [(NSDictionary *)self->_attributes copyWithZone:zone];
  v25 = v5[6];
  v5[6] = v24;

  v26 = [(NSString *)self->_serialNumber copyWithZone:zone];
  v27 = v5[5];
  v5[5] = v26;

  dictionary = [(DASessionSettings *)self->_sessionSettings dictionary];
  v29 = [dictionary copyWithZone:zone];
  v30 = [DASessionSettings sessionSettingsWithDictionary:v29];
  v31 = v5[15];
  v5[15] = v30;

  return v5;
}

- (void)setPhase:(int64_t)phase
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_phase != phase)
  {
    obj->_phase = phase;
    obj->_pendingChanges |= 1uLL;
    [(DADeviceState *)obj _sendChangeNotificationIfNeeded];
  }

  objc_sync_exit(obj);
}

- (void)setDiagnosticEventID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(DADeviceState *)selfCopy object:selfCopy->_diagnosticEventID isEqualToObject:dCopy])
  {
    objc_storeStrong(&selfCopy->_diagnosticEventID, d);
    selfCopy->_pendingChanges |= 0x200uLL;
    [(DADeviceState *)selfCopy _sendChangeNotificationIfNeeded];
  }

  objc_sync_exit(selfCopy);
}

- (void)setSuiteID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(DADeviceState *)selfCopy object:selfCopy->_suiteID isEqualToObject:dCopy])
  {
    objc_storeStrong(&selfCopy->_suiteID, d);
    selfCopy->_pendingChanges |= 0x400uLL;
    [(DADeviceState *)selfCopy _sendChangeNotificationIfNeeded];
  }

  objc_sync_exit(selfCopy);
}

- (void)setSuitesAvailable:(id)available
{
  availableCopy = available;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(DADeviceState *)selfCopy object:selfCopy->_suitesAvailable isEqualToObject:availableCopy])
  {
    objc_storeStrong(&selfCopy->_suitesAvailable, available);
    selfCopy->_pendingChanges |= 0x800uLL;
    [(DADeviceState *)selfCopy _sendChangeNotificationIfNeeded];
  }

  objc_sync_exit(selfCopy);
}

- (void)setSuiteName:(id)name
{
  nameCopy = name;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(DADeviceState *)selfCopy object:selfCopy->_suiteName isEqualToObject:nameCopy])
  {
    objc_storeStrong(&selfCopy->_suiteName, name);
    selfCopy->_pendingChanges |= 2uLL;
    [(DADeviceState *)selfCopy _sendChangeNotificationIfNeeded];
  }

  objc_sync_exit(selfCopy);
}

- (void)setSuiteDescription:(id)description
{
  descriptionCopy = description;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(DADeviceState *)selfCopy object:selfCopy->_suiteDescription isEqualToObject:descriptionCopy])
  {
    objc_storeStrong(&selfCopy->_suiteDescription, description);
    selfCopy->_pendingChanges |= 4uLL;
    [(DADeviceState *)selfCopy _sendChangeNotificationIfNeeded];
  }

  objc_sync_exit(selfCopy);
}

- (void)setProgress:(id)progress
{
  progressCopy = progress;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(DADeviceState *)selfCopy object:selfCopy->_progress isEqualToObject:progressCopy])
  {
    objc_storeStrong(&selfCopy->_progress, progress);
    selfCopy->_pendingChanges |= 8uLL;
    [(DADeviceState *)selfCopy _sendChangeNotificationIfNeeded];
  }

  objc_sync_exit(selfCopy);
}

- (void)setDurationRemaining:(double)remaining
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_durationRemaining != remaining)
  {
    obj->_durationRemaining = remaining;
    obj->_pendingChanges |= 0x100uLL;
    [(DADeviceState *)obj _sendChangeNotificationIfNeeded];
  }

  objc_sync_exit(obj);
}

- (void)setSessionSettings:(id)settings
{
  settingsCopy = settings;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(DADeviceState *)selfCopy object:selfCopy->_sessionSettings isEqualToObject:settingsCopy])
  {
    objc_storeStrong(&selfCopy->_sessionSettings, settings);
    selfCopy->_pendingChanges |= 0x10uLL;
    [(DADeviceState *)selfCopy _sendChangeNotificationIfNeeded];
  }

  objc_sync_exit(selfCopy);
}

- (void)setHistory:(id)history
{
  historyCopy = history;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(DADeviceState *)selfCopy object:selfCopy->_history isEqualToObject:historyCopy])
  {
    objc_storeStrong(&selfCopy->_history, history);
    selfCopy->_pendingChanges |= 0x20uLL;
    [(DADeviceState *)selfCopy _sendChangeNotificationIfNeeded];
  }

  objc_sync_exit(selfCopy);
}

- (void)setErrors:(id)errors
{
  errorsCopy = errors;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(DADeviceState *)selfCopy object:selfCopy->_errors isEqualToObject:errorsCopy])
  {
    objc_storeStrong(&selfCopy->_errors, errors);
    selfCopy->_pendingChanges |= 0x40uLL;
    [(DADeviceState *)selfCopy _sendChangeNotificationIfNeeded];
  }

  objc_sync_exit(selfCopy);
}

- (void)setTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(DADeviceState *)selfCopy object:selfCopy->_timestamp isEqualToObject:timestampCopy])
  {
    objc_storeStrong(&selfCopy->_timestamp, timestamp);
    selfCopy->_pendingChanges |= 0x80uLL;
    [(DADeviceState *)selfCopy _sendChangeNotificationIfNeeded];
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)object:(id)object isEqualToObject:(id)toObject
{
  if (object | toObject)
  {
    return [object isEqual:toObject];
  }

  else
  {
    return 1;
  }
}

- (void)transactionWithBlock:(id)block
{
  blockCopy = block;
  v5 = [(DADeviceState *)self copy];
  v5[16] = 1;
  blockCopy[2](blockCopy, v5);

  [(DADeviceState *)self updateWithDeviceState:v5];
}

- (void)updateWithDeviceState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_freezeNotifications = 1;
  -[DADeviceState setPhase:](selfCopy, "setPhase:", [stateCopy phase]);
  diagnosticEventID = [stateCopy diagnosticEventID];
  [(DADeviceState *)selfCopy setDiagnosticEventID:diagnosticEventID];

  suiteID = [stateCopy suiteID];
  [(DADeviceState *)selfCopy setSuiteID:suiteID];

  suiteName = [stateCopy suiteName];
  [(DADeviceState *)selfCopy setSuiteName:suiteName];

  suiteDescription = [stateCopy suiteDescription];
  [(DADeviceState *)selfCopy setSuiteDescription:suiteDescription];

  suitesAvailable = [stateCopy suitesAvailable];
  [(DADeviceState *)selfCopy setSuitesAvailable:suitesAvailable];

  progress = [stateCopy progress];
  [(DADeviceState *)selfCopy setProgress:progress];

  [stateCopy durationRemaining];
  [(DADeviceState *)selfCopy setDurationRemaining:?];
  sessionSettings = [stateCopy sessionSettings];
  [(DADeviceState *)selfCopy setSessionSettings:sessionSettings];

  history = [stateCopy history];
  [(DADeviceState *)selfCopy setHistory:history];

  errors = [stateCopy errors];
  [(DADeviceState *)selfCopy setErrors:errors];

  timestamp = [stateCopy timestamp];
  [(DADeviceState *)selfCopy setTimestamp:timestamp];

  [(DADeviceState *)selfCopy _sendChangeNotification];
  selfCopy->_freezeNotifications = 0;
  objc_sync_exit(selfCopy);
}

- (void)addErrorCode:(int64_t)code userInfo:(id)info
{
  infoCopy = info;
  v6 = [NSError errorWithDomain:@"DADeviceStateErrorDomain" code:code userInfo:?];
  errors = [(DADeviceState *)self errors];
  objc_sync_enter(errors);
  errors2 = [(DADeviceState *)self errors];
  v9 = [errors2 arrayByAddingObject:v6];
  [(DADeviceState *)self setErrors:v9];

  objc_sync_exit(errors);
}

- (void)removeErrorCode:(int64_t)code
{
  v5 = [NSNumber numberWithInteger:code];
  v4 = [NSSet setWithObject:v5];
  [(DADeviceState *)self removeErrorCodes:v4];
}

- (void)removeErrorCodes:(id)codes
{
  codesCopy = codes;
  obj = [(DADeviceState *)self errors];
  objc_sync_enter(obj);
  errors = [(DADeviceState *)self errors];
  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [errors count]);

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  errors2 = [(DADeviceState *)self errors];
  v8 = [errors2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(errors2);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v11 code]);
        v13 = [codesCopy containsObject:v12];

        if ((v13 & 1) == 0)
        {
          [v6 addObject:v11];
        }
      }

      v8 = [errors2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v6 copy];
  [(DADeviceState *)self setErrors:v14];

  objc_sync_exit(obj);
}

- (id)description
{
  v18 = [(DADeviceState *)self _stringForPhase:[(DADeviceState *)self phase]];
  diagnosticEventID = [(DADeviceState *)self diagnosticEventID];
  suiteID = [(DADeviceState *)self suiteID];
  suiteName = [(DADeviceState *)self suiteName];
  suiteDescription = [(DADeviceState *)self suiteDescription];
  suitesAvailable = [(DADeviceState *)self suitesAvailable];
  progress = [(DADeviceState *)self progress];
  [(DADeviceState *)self durationRemaining];
  v9 = v8;
  sessionSettings = [(DADeviceState *)self sessionSettings];
  history = [(DADeviceState *)self history];
  errors = [(DADeviceState *)self errors];
  timestamp = [(DADeviceState *)self timestamp];
  attributes = [(DADeviceState *)self attributes];
  v16 = [NSString stringWithFormat:@"phase: %@ diagnosticEventID: %@; suiteID: %@; suiteName: %@; suiteDescription: %@; suitesAvailable: %@; progress: %@; durationRemaining: %f; sessionSettings: %@; history: %@; errors: %@; timestamp: %@; attributes: %@", v18, diagnosticEventID, suiteID, suiteName, suiteDescription, suitesAvailable, progress, v9, sessionSettings, history, errors, timestamp, attributes];;

  return v16;
}

- (id)_stringForPhase:(int64_t)phase
{
  if (phase > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_10001CA38[phase];
  }
}

- (void)_sendChangeNotificationIfNeeded
{
  if (!self->_freezeNotifications)
  {
    [(DADeviceState *)self _sendChangeNotification];
  }
}

- (void)_sendChangeNotification
{
  pendingChanges = self->_pendingChanges;
  v4 = [(DADeviceState *)self copy];
  v5 = [DADeviceStateChangeNotificationInfo infoWithChangedProperties:pendingChanges snapshot:v4];

  self->_pendingChanges = 0;
  notificationQueue = self->_notificationQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000A134;
  v8[3] = &unk_10001C5F0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(notificationQueue, v8);
}

- (void)resetState
{
  obj = self;
  objc_sync_enter(obj);
  diagnosticEventID = obj->_diagnosticEventID;
  obj->_diagnosticEventID = 0;

  suiteID = obj->_suiteID;
  obj->_suiteID = 0;

  suiteName = obj->_suiteName;
  obj->_suiteName = 0;

  suiteDescription = obj->_suiteDescription;
  obj->_suiteDescription = 0;

  suitesAvailable = obj->_suitesAvailable;
  obj->_suitesAvailable = &__NSArray0__struct;

  progress = obj->_progress;
  obj->_progress = &off_10001DA18;

  obj->_durationRemaining = 0.0;
  errors = obj->_errors;
  obj->_errors = &__NSArray0__struct;

  timestamp = obj->_timestamp;
  obj->_timestamp = 0;

  obj->_pendingChanges = 0;
  obj->_freezeNotifications = 0;
  objc_sync_exit(obj);
}

- (id)overriddenSerialNumberFor:(id)for
{
  forCopy = for;
  if (os_variant_has_internal_content())
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = [v4 valueForKey:@"SNOverrideTable"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 objectForKeyedSubscript:forCopy];
      v7 = v6;
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = forCopy;
      }

      v9 = v8;
    }

    else
    {
      v9 = forCopy;
    }
  }

  else
  {
    v9 = forCopy;
  }

  return v9;
}

@end