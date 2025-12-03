@interface TRIDownloadOptions
+ (id)inexpensiveOptions;
- (BOOL)allowsExpensiveNetworkAccess;
- (BOOL)isEqual:(id)equal;
- (TRIDownloadOptions)initWithAllowsCellular:(BOOL)cellular discretionaryBehavior:(unint64_t)behavior;
- (TRIDownloadOptions)initWithAllowsCellular:(BOOL)cellular discretionaryBehavior:(unint64_t)behavior activity:(id)activity;
- (TRIDownloadOptions)initWithCoder:(id)coder;
- (id)description;
- (id)initFromPersistedBehavior:(id)behavior;
- (id)serializeToPersistedBehavior;
- (unint64_t)hash;
- (unint64_t)requiredCapability;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRIDownloadOptions

- (TRIDownloadOptions)initWithAllowsCellular:(BOOL)cellular discretionaryBehavior:(unint64_t)behavior
{
  v7.receiver = self;
  v7.super_class = TRIDownloadOptions;
  result = [(TRIDownloadOptions *)&v7 init];
  if (result)
  {
    result->_allowsCellularAccess = cellular;
    *&result->_allowsBatteryUsage = 0;
    result->_discretionaryBehavior = behavior;
  }

  return result;
}

- (TRIDownloadOptions)initWithAllowsCellular:(BOOL)cellular discretionaryBehavior:(unint64_t)behavior activity:(id)activity
{
  activityCopy = activity;
  v13.receiver = self;
  v13.super_class = TRIDownloadOptions;
  v10 = [(TRIDownloadOptions *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_allowsCellularAccess = cellular;
    v10->_allowsBatteryUsage = 0;
    v10->_discretionaryBehavior = behavior;
    objc_storeStrong(&v10->_activity, activity);
    v11->_boostPriority = 0;
  }

  return v11;
}

- (unint64_t)requiredCapability
{
  v2 = 1;
  if (self->_allowsCellularAccess)
  {
    v2 = 2;
  }

  if (self->_discretionaryBehavior - 1 >= 2)
  {
    return v2;
  }

  else
  {
    return v2 | 0x10;
  }
}

- (BOOL)allowsExpensiveNetworkAccess
{
  activity = [(TRIDownloadOptions *)self activity];

  if (activity)
  {
    activity2 = [(TRIDownloadOptions *)self activity];
    v5 = xpc_activity_copy_criteria(activity2);

    LOBYTE(activity2) = xpc_dictionary_get_BOOL(v5, *MEMORY[0x277D86390]);
    return activity2 ^ 1;
  }

  else
  {

    return [(TRIDownloadOptions *)self allowsCellularAccess];
  }
}

+ (id)inexpensiveOptions
{
  if (qword_280ACAEB0 != -1)
  {
    dispatch_once(&qword_280ACAEB0, &__block_literal_global_17);
  }

  v3 = _MergedGlobals_14;

  return v3;
}

void __40__TRIDownloadOptions_inexpensiveOptions__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [[TRIDownloadOptions alloc] initWithAllowsCellular:0 discretionaryBehavior:2];
  v2 = _MergedGlobals_14;
  _MergedGlobals_14 = v1;

  objc_autoreleasePoolPop(v0);
}

- (id)initFromPersistedBehavior:(id)behavior
{
  behaviorCopy = behavior;
  if ([behaviorCopy hasAllowsCellular] && objc_msgSend(behaviorCopy, "hasNetworkBehavior"))
  {
    allowsCellular = [behaviorCopy allowsCellular];
    networkBehavior = [behaviorCopy networkBehavior];
    v7 = 1;
    if (networkBehavior != 2)
    {
      v7 = 2;
    }

    if (networkBehavior == 3)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    self = -[TRIDownloadOptions initWithAllowsCellular:discretionaryBehavior:boostPriority:](self, "initWithAllowsCellular:discretionaryBehavior:boostPriority:", allowsCellular, v8, [behaviorCopy boostPriority]);
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (TRIDownloadOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"cellular"];
  v6 = [coderCopy decodeIntegerForKey:@"networkBehavior"];
  v7 = [coderCopy decodeBoolForKey:@"boostPriority"];

  return [(TRIDownloadOptions *)self initWithAllowsCellular:v5 discretionaryBehavior:v6 boostPriority:v7];
}

- (id)serializeToPersistedBehavior
{
  v3 = objc_opt_new();
  [v3 setAllowsCellular:{-[TRIDownloadOptions allowsCellularAccess](self, "allowsCellularAccess")}];
  discretionaryBehavior = [(TRIDownloadOptions *)self discretionaryBehavior];
  if (discretionaryBehavior == 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  if (discretionaryBehavior == 2)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  [v3 setNetworkBehavior:v6];
  [v3 setBoostPriority:{-[TRIDownloadOptions boostPriority](self, "boostPriority")}];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[TRIDownloadOptions allowsCellularAccess](self forKey:{"allowsCellularAccess"), @"cellular"}];
  [coderCopy encodeInteger:-[TRIDownloadOptions discretionaryBehavior](self forKey:{"discretionaryBehavior"), @"networkBehavior"}];
  [coderCopy encodeBool:-[TRIDownloadOptions boostPriority](self forKey:{"boostPriority"), @"boostPriority"}];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = TRIDownloadOptions;
  v4 = [(TRIDownloadOptions *)&v10 description];
  if ([(TRIDownloadOptions *)self allowsCellularAccess])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  discretionaryBehavior = [(TRIDownloadOptions *)self discretionaryBehavior];
  v7 = @"non-discretionary";
  if (discretionaryBehavior == 1)
  {
    v7 = @"discretionary when backgrounded";
  }

  if (discretionaryBehavior == 2)
  {
    v7 = @"discretionary";
  }

  v8 = [v3 stringWithFormat:@"%@ cellular:%@ network:%@", v4, v5, v7];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      allowsCellularAccess = [(TRIDownloadOptions *)self allowsCellularAccess];
      if (allowsCellularAccess == [(TRIDownloadOptions *)v5 allowsCellularAccess]&& (v7 = [(TRIDownloadOptions *)self discretionaryBehavior], v7 == [(TRIDownloadOptions *)v5 discretionaryBehavior]))
      {
        boostPriority = [(TRIDownloadOptions *)self boostPriority];
        v9 = boostPriority ^ [(TRIDownloadOptions *)v5 boostPriority]^ 1;
      }

      else
      {
        LOBYTE(v9) = 0;
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  if ([(TRIDownloadOptions *)self allowsCellularAccess])
  {
    v3 = 31;
  }

  else
  {
    v3 = 0;
  }

  v4 = 31 * (v3 + [(TRIDownloadOptions *)self discretionaryBehavior]);
  return v4 + [(TRIDownloadOptions *)self boostPriority];
}

@end