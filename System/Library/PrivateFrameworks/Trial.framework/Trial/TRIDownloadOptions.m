@interface TRIDownloadOptions
+ (id)inexpensiveOptions;
- (BOOL)allowsExpensiveNetworkAccess;
- (BOOL)isEqual:(id)a3;
- (TRIDownloadOptions)initWithAllowsCellular:(BOOL)a3 discretionaryBehavior:(unint64_t)a4;
- (TRIDownloadOptions)initWithAllowsCellular:(BOOL)a3 discretionaryBehavior:(unint64_t)a4 activity:(id)a5;
- (TRIDownloadOptions)initWithCoder:(id)a3;
- (id)description;
- (id)initFromPersistedBehavior:(id)a3;
- (id)serializeToPersistedBehavior;
- (unint64_t)hash;
- (unint64_t)requiredCapability;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRIDownloadOptions

- (TRIDownloadOptions)initWithAllowsCellular:(BOOL)a3 discretionaryBehavior:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = TRIDownloadOptions;
  result = [(TRIDownloadOptions *)&v7 init];
  if (result)
  {
    result->_allowsCellularAccess = a3;
    *&result->_allowsBatteryUsage = 0;
    result->_discretionaryBehavior = a4;
  }

  return result;
}

- (TRIDownloadOptions)initWithAllowsCellular:(BOOL)a3 discretionaryBehavior:(unint64_t)a4 activity:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = TRIDownloadOptions;
  v10 = [(TRIDownloadOptions *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_allowsCellularAccess = a3;
    v10->_allowsBatteryUsage = 0;
    v10->_discretionaryBehavior = a4;
    objc_storeStrong(&v10->_activity, a5);
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
  v3 = [(TRIDownloadOptions *)self activity];

  if (v3)
  {
    v4 = [(TRIDownloadOptions *)self activity];
    v5 = xpc_activity_copy_criteria(v4);

    LOBYTE(v4) = xpc_dictionary_get_BOOL(v5, *MEMORY[0x277D86390]);
    return v4 ^ 1;
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

- (id)initFromPersistedBehavior:(id)a3
{
  v4 = a3;
  if ([v4 hasAllowsCellular] && objc_msgSend(v4, "hasNetworkBehavior"))
  {
    v5 = [v4 allowsCellular];
    v6 = [v4 networkBehavior];
    v7 = 1;
    if (v6 != 2)
    {
      v7 = 2;
    }

    if (v6 == 3)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    self = -[TRIDownloadOptions initWithAllowsCellular:discretionaryBehavior:boostPriority:](self, "initWithAllowsCellular:discretionaryBehavior:boostPriority:", v5, v8, [v4 boostPriority]);
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (TRIDownloadOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"cellular"];
  v6 = [v4 decodeIntegerForKey:@"networkBehavior"];
  v7 = [v4 decodeBoolForKey:@"boostPriority"];

  return [(TRIDownloadOptions *)self initWithAllowsCellular:v5 discretionaryBehavior:v6 boostPriority:v7];
}

- (id)serializeToPersistedBehavior
{
  v3 = objc_opt_new();
  [v3 setAllowsCellular:{-[TRIDownloadOptions allowsCellularAccess](self, "allowsCellularAccess")}];
  v4 = [(TRIDownloadOptions *)self discretionaryBehavior];
  if (v4 == 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  if (v4 == 2)
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[TRIDownloadOptions allowsCellularAccess](self forKey:{"allowsCellularAccess"), @"cellular"}];
  [v4 encodeInteger:-[TRIDownloadOptions discretionaryBehavior](self forKey:{"discretionaryBehavior"), @"networkBehavior"}];
  [v4 encodeBool:-[TRIDownloadOptions boostPriority](self forKey:{"boostPriority"), @"boostPriority"}];
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

  v6 = [(TRIDownloadOptions *)self discretionaryBehavior];
  v7 = @"non-discretionary";
  if (v6 == 1)
  {
    v7 = @"discretionary when backgrounded";
  }

  if (v6 == 2)
  {
    v7 = @"discretionary";
  }

  v8 = [v3 stringWithFormat:@"%@ cellular:%@ network:%@", v4, v5, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(TRIDownloadOptions *)self allowsCellularAccess];
      if (v6 == [(TRIDownloadOptions *)v5 allowsCellularAccess]&& (v7 = [(TRIDownloadOptions *)self discretionaryBehavior], v7 == [(TRIDownloadOptions *)v5 discretionaryBehavior]))
      {
        v8 = [(TRIDownloadOptions *)self boostPriority];
        v9 = v8 ^ [(TRIDownloadOptions *)v5 boostPriority]^ 1;
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