@interface REMReminderFetchOptions
+ (REMReminderFetchOptions)defaultFetchOptions;
+ (id)fetchOptionsIncludingConcealed;
+ (id)fetchOptionsIncludingDueDateDeltaAlerts;
- (BOOL)isEqual:(id)equal;
- (REMReminderFetchOptions)initWithCoder:(id)coder;
- (REMReminderFetchOptions)initWithIncludeConcealed:(BOOL)concealed includeDueDateDeltaAlerts:(BOOL)alerts;
- (id)copyWithZone:(_NSZone *)zone;
- (id)fetchOptionsIncludingConcealed;
- (id)fetchOptionsIncludingDueDateDeltaAlerts;
- (void)copyFromFetchOptions:(id)options;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMReminderFetchOptions

+ (REMReminderFetchOptions)defaultFetchOptions
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)fetchOptionsIncludingConcealed
{
  v2 = objc_opt_new();
  [v2 setIncludeConcealed:1];

  return v2;
}

+ (id)fetchOptionsIncludingDueDateDeltaAlerts
{
  v2 = objc_opt_new();
  [v2 setIncludeDueDateDeltaAlerts:1];

  return v2;
}

- (id)fetchOptionsIncludingConcealed
{
  v2 = [(REMReminderFetchOptions *)self copy];
  [v2 setIncludeConcealed:1];

  return v2;
}

- (id)fetchOptionsIncludingDueDateDeltaAlerts
{
  v2 = [(REMReminderFetchOptions *)self copy];
  [v2 setIncludeDueDateDeltaAlerts:1];

  return v2;
}

- (REMReminderFetchOptions)initWithIncludeConcealed:(BOOL)concealed includeDueDateDeltaAlerts:(BOOL)alerts
{
  v7.receiver = self;
  v7.super_class = REMReminderFetchOptions;
  result = [(REMReminderFetchOptions *)&v7 init];
  if (result)
  {
    result->_includeConcealed = concealed;
    result->_includeDueDateDeltaAlerts = alerts;
  }

  return result;
}

- (void)copyFromFetchOptions:(id)options
{
  optionsCopy = options;
  -[REMReminderFetchOptions setIncludeConcealed:](self, "setIncludeConcealed:", [optionsCopy includeConcealed]);
  includeDueDateDeltaAlerts = [optionsCopy includeDueDateDeltaAlerts];

  [(REMReminderFetchOptions *)self setIncludeDueDateDeltaAlerts:includeDueDateDeltaAlerts];
}

- (REMReminderFetchOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = REMReminderFetchOptions;
  v5 = [(REMReminderFetchOptions *)&v7 init];
  if (v5)
  {
    v5->_includeConcealed = [coderCopy decodeBoolForKey:@"includeConcealed"];
    v5->_includeDueDateDeltaAlerts = [coderCopy decodeBoolForKey:@"includeDueDateDeltaAlerts"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[REMReminderFetchOptions includeConcealed](self forKey:{"includeConcealed"), @"includeConcealed"}];
  [coderCopy encodeBool:-[REMReminderFetchOptions includeDueDateDeltaAlerts](self forKey:{"includeDueDateDeltaAlerts"), @"includeDueDateDeltaAlerts"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setIncludeConcealed:{-[REMReminderFetchOptions includeConcealed](self, "includeConcealed")}];
  [v4 setIncludeDueDateDeltaAlerts:{-[REMReminderFetchOptions includeDueDateDeltaAlerts](self, "includeDueDateDeltaAlerts")}];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v6 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v7 = [(REMReminderFetchOptions *)self includeConcealed], v7 == [(REMReminderFetchOptions *)v6 includeConcealed]))
    {
      includeDueDateDeltaAlerts = [(REMReminderFetchOptions *)self includeDueDateDeltaAlerts];
      v8 = includeDueDateDeltaAlerts ^ [(REMReminderFetchOptions *)v6 includeDueDateDeltaAlerts]^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

@end