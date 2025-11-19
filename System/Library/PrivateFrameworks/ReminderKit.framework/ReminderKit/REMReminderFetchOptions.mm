@interface REMReminderFetchOptions
+ (REMReminderFetchOptions)defaultFetchOptions;
+ (id)fetchOptionsIncludingConcealed;
+ (id)fetchOptionsIncludingDueDateDeltaAlerts;
- (BOOL)isEqual:(id)a3;
- (REMReminderFetchOptions)initWithCoder:(id)a3;
- (REMReminderFetchOptions)initWithIncludeConcealed:(BOOL)a3 includeDueDateDeltaAlerts:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)fetchOptionsIncludingConcealed;
- (id)fetchOptionsIncludingDueDateDeltaAlerts;
- (void)copyFromFetchOptions:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (REMReminderFetchOptions)initWithIncludeConcealed:(BOOL)a3 includeDueDateDeltaAlerts:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = REMReminderFetchOptions;
  result = [(REMReminderFetchOptions *)&v7 init];
  if (result)
  {
    result->_includeConcealed = a3;
    result->_includeDueDateDeltaAlerts = a4;
  }

  return result;
}

- (void)copyFromFetchOptions:(id)a3
{
  v4 = a3;
  -[REMReminderFetchOptions setIncludeConcealed:](self, "setIncludeConcealed:", [v4 includeConcealed]);
  v5 = [v4 includeDueDateDeltaAlerts];

  [(REMReminderFetchOptions *)self setIncludeDueDateDeltaAlerts:v5];
}

- (REMReminderFetchOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = REMReminderFetchOptions;
  v5 = [(REMReminderFetchOptions *)&v7 init];
  if (v5)
  {
    v5->_includeConcealed = [v4 decodeBoolForKey:@"includeConcealed"];
    v5->_includeDueDateDeltaAlerts = [v4 decodeBoolForKey:@"includeDueDateDeltaAlerts"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[REMReminderFetchOptions includeConcealed](self forKey:{"includeConcealed"), @"includeConcealed"}];
  [v4 encodeBool:-[REMReminderFetchOptions includeDueDateDeltaAlerts](self forKey:{"includeDueDateDeltaAlerts"), @"includeDueDateDeltaAlerts"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setIncludeConcealed:{-[REMReminderFetchOptions includeConcealed](self, "includeConcealed")}];
  [v4 setIncludeDueDateDeltaAlerts:{-[REMReminderFetchOptions includeDueDateDeltaAlerts](self, "includeDueDateDeltaAlerts")}];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v6 = v4;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v7 = [(REMReminderFetchOptions *)self includeConcealed], v7 == [(REMReminderFetchOptions *)v6 includeConcealed]))
    {
      v9 = [(REMReminderFetchOptions *)self includeDueDateDeltaAlerts];
      v8 = v9 ^ [(REMReminderFetchOptions *)v6 includeDueDateDeltaAlerts]^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

@end