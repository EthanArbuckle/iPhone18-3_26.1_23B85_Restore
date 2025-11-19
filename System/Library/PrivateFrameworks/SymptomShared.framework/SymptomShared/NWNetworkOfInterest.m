@interface NWNetworkOfInterest
- (BOOL)_isEqualToNOI:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NWNetworkOfInterest)initWithCoder:(id)a3;
- (id)_descriptionFull:(BOOL)a3;
- (id)_thinCopy;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)addObserverForAllKeyPaths:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)removeObserverForAllKeyPaths:(id)a3;
@end

@implementation NWNetworkOfInterest

- (unint64_t)hash
{
  v2 = [(NWNetworkOfInterest *)self description];
  v3 = [v2 hash];

  return v3;
}

- (id)_thinCopy
{
  v3 = objc_alloc_init(NWNetworkOfInterest);
  v3->_version = self->_version;
  v3->_functionalInterfaceType = self->_functionalInterfaceType;
  v3->_isAny = self->_isAny;
  v3->_isBuiltin = self->_isBuiltin;
  v3->_scopedToLOI = self->_scopedToLOI;
  v3->_flags = self->_flags;
  objc_storeStrong(&v3->_customSignature, self->_customSignature);
  v3->_isThinnedOut = 1;

  return v3;
}

- (NWNetworkOfInterest)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = NWNetworkOfInterest;
  v5 = [(NWNetworkOfInterest *)&v24 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v5->_version = [v4 decodeIntegerForKey:@"version"];
    v7 = [v4 decodeIntegerForKey:@"interfaceType"];
    v5->_functionalInterfaceType = v7;
    v5->_interface = [FunctionalInterfaceUtils nwInterfaceTypeForNWFunctionalInterfaceType:v7];
    v5->_interfaceSubtype = [FunctionalInterfaceUtils nwInterfaceSubtypeForNWFunctionalInterfaceType:v5->_functionalInterfaceType];
    v5->_isAny = [v4 decodeBoolForKey:@"isAny"];
    v5->_isBuiltin = [v4 decodeBoolForKey:@"isBuiltin"];
    v5->_scopedToLOI = [v4 decodeIntegerForKey:@"scopedToLOI"];
    v5->_flags = [v4 decodeIntegerForKey:@"flags"];
    v8 = [v4 decodeObjectForKey:@"customSignature"];
    customSignature = v5->_customSignature;
    v5->_customSignature = v8;

    v5->_isTrafficEligible = [v4 decodeBoolForKey:@"isTrafficEligible"];
    v5->_willGetDiscretionaryTrafficInvites = [v4 decodeBoolForKey:@"willGetDiscretionaryTrafficInvites"];
    v5->_discretionaryTrafficInvited = [v4 decodeBoolForKey:@"discretionaryTrafficInvited"];
    v5->_interfaceClass = [v4 decodeIntegerForKey:@"interfaceClass"];
    v5->_considerAlternate = [v4 decodeIntegerForKey:@"considerAlternate"];
    v10 = objc_alloc(MEMORY[0x277CBEB98]);
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v10 initWithObjects:{v11, v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"considerAlternateUpdate"];
    considerAlternateUpdate = v5->_considerAlternateUpdate;
    v5->_considerAlternateUpdate = v14;

    v5->_linkQuality = [v4 decodeIntegerForKey:@"linkQuality"];
    v5->_powerCostDL = [v4 decodeIntegerForKey:@"powerCostDL"];
    v5->_powerCostUL = [v4 decodeIntegerForKey:@"powerCostUL"];
    v16 = [v4 decodeObjectForKey:@"predictionsGeneratedAt"];
    predictionsGeneratedAt = v5->_predictionsGeneratedAt;
    v5->_predictionsGeneratedAt = v16;

    v18 = objc_alloc(MEMORY[0x277CBEB98]);
    v19 = objc_opt_class();
    v20 = [v18 initWithObjects:{v19, objc_opt_class(), 0}];

    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"predictions"];
    predictions = v5->_predictions;
    v5->_predictions = v21;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = objc_autoreleasePoolPush();
  [v9 encodeInteger:-[NWNetworkOfInterest version](self forKey:{"version"), @"version"}];
  [v9 encodeInteger:-[NWNetworkOfInterest functionalInterfaceType](self forKey:{"functionalInterfaceType"), @"interfaceType"}];
  [v9 encodeBool:-[NWNetworkOfInterest isAny](self forKey:{"isAny"), @"isAny"}];
  [v9 encodeBool:-[NWNetworkOfInterest isBuiltin](self forKey:{"isBuiltin"), @"isBuiltin"}];
  [v9 encodeInteger:-[NWNetworkOfInterest scopedToLOI](self forKey:{"scopedToLOI"), @"scopedToLOI"}];
  [v9 encodeInteger:-[NWNetworkOfInterest flags](self forKey:{"flags"), @"flags"}];
  v5 = [(NWNetworkOfInterest *)self customSignature];
  [v9 encodeObject:v5 forKey:@"customSignature"];

  [v9 encodeBool:-[NWNetworkOfInterest isTrafficEligible](self forKey:{"isTrafficEligible"), @"isTrafficEligible"}];
  [v9 encodeBool:-[NWNetworkOfInterest willGetDiscretionaryTrafficInvites](self forKey:{"willGetDiscretionaryTrafficInvites"), @"willGetDiscretionaryTrafficInvites"}];
  [v9 encodeBool:-[NWNetworkOfInterest discretionaryTrafficInvited](self forKey:{"discretionaryTrafficInvited"), @"discretionaryTrafficInvited"}];
  [v9 encodeInteger:-[NWNetworkOfInterest interfaceClass](self forKey:{"interfaceClass"), @"interfaceClass"}];
  [v9 encodeInteger:-[NWNetworkOfInterest considerAlternate](self forKey:{"considerAlternate"), @"considerAlternate"}];
  v6 = [(NWNetworkOfInterest *)self considerAlternateUpdate];
  [v9 encodeObject:v6 forKey:@"considerAlternateUpdate"];

  [v9 encodeInteger:-[NWNetworkOfInterest linkQuality](self forKey:{"linkQuality"), @"linkQuality"}];
  [v9 encodeInteger:-[NWNetworkOfInterest powerCostDL](self forKey:{"powerCostDL"), @"powerCostDL"}];
  [v9 encodeInteger:-[NWNetworkOfInterest powerCostUL](self forKey:{"powerCostUL"), @"powerCostUL"}];
  v7 = [(NWNetworkOfInterest *)self predictionsGeneratedAt];
  [v9 encodeObject:v7 forKey:@"predictionsGeneratedAt"];

  v8 = [(NWNetworkOfInterest *)self predictions];
  [v9 encodeObject:v8 forKey:@"predictions"];

  objc_autoreleasePoolPop(v4);
}

- (id)_descriptionFull:(BOOL)a3
{
  v5 = [FunctionalInterfaceUtils stringForFunctionalInterfaceType:[(NWNetworkOfInterest *)self functionalInterfaceType]];
  v6 = v5;
  if (a3)
  {
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [(NWNetworkOfInterest *)self version];
    v11 = "yes";
    if ([(NWNetworkOfInterest *)self isAny])
    {
      v12 = "yes";
    }

    else
    {
      v12 = "no";
    }

    if (![(NWNetworkOfInterest *)self isBuiltin])
    {
      v11 = "no";
    }

    v13 = [v7 initWithFormat:@"NOI(%@): v:%ld type:%@, isAny:%s, isBuiltin:%s, loi:%ld, flags:%lu", v9, v10, v6, v12, v11, -[NWNetworkOfInterest scopedToLOI](self, "scopedToLOI"), -[NWNetworkOfInterest flags](self, "flags")];
  }

  else
  {
    v13 = v5;
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NWNetworkOfInterest *)self _isEqualToNOI:v4];
  }

  return v5;
}

- (BOOL)_isEqualToNOI:(id)a3
{
  v5 = a3;
  v6 = [(NWNetworkOfInterest *)self version];
  if (v6 == [v5 version])
  {
    v7 = [(NWNetworkOfInterest *)self functionalInterfaceType];
    if (v7 == [v5 functionalInterfaceType])
    {
      v8 = [(NWNetworkOfInterest *)self isAny];
      if (v8 == [v5 isAny])
      {
        v9 = [(NWNetworkOfInterest *)self isBuiltin];
        if (v9 == [v5 isBuiltin])
        {
          v10 = [(NWNetworkOfInterest *)self scopedToLOI];
          if (v10 == [v5 scopedToLOI])
          {
            v11 = [(NWNetworkOfInterest *)self flags];
            if (v11 == [v5 flags])
            {
              v12 = [(NWNetworkOfInterest *)self customSignature];
              if (v12 || ([v5 customSignature], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v13 = [(NWNetworkOfInterest *)self customSignature];
                v14 = [v5 customSignature];
                v15 = [v13 isEqual:v14];

                if (v12)
                {
LABEL_15:

                  goto LABEL_12;
                }
              }

              else
              {
                v15 = 1;
              }

              goto LABEL_15;
            }
          }
        }
      }
    }
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(NWNetworkOfInterest);
  v4->_version = self->_version;
  v4->_functionalInterfaceType = self->_functionalInterfaceType;
  v4->_isAny = self->_isAny;
  v4->_isBuiltin = self->_isBuiltin;
  v4->_scopedToLOI = self->_scopedToLOI;
  v4->_flags = self->_flags;
  objc_storeStrong(&v4->_customSignature, self->_customSignature);
  v4->_isTrafficEligible = self->_isTrafficEligible;
  v4->_willGetDiscretionaryTrafficInvites = self->_willGetDiscretionaryTrafficInvites;
  v4->_discretionaryTrafficInvited = self->_discretionaryTrafficInvited;
  v4->_interfaceClass = self->_interfaceClass;
  v4->_considerAlternate = self->_considerAlternate;
  v4->_linkQuality = self->_linkQuality;
  v4->_powerCostDL = self->_powerCostDL;
  v4->_powerCostUL = self->_powerCostUL;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NWNetworkAdviceUpdate *)v5->_considerAlternateUpdate copy];
  considerAlternateUpdate = v4->_considerAlternateUpdate;
  v4->_considerAlternateUpdate = v6;

  v8 = [(NSDate *)v5->_predictionsGeneratedAt copy];
  predictionsGeneratedAt = v4->_predictionsGeneratedAt;
  v4->_predictionsGeneratedAt = v8;

  v10 = [(NSArray *)v5->_predictions copy];
  predictions = v4->_predictions;
  v4->_predictions = v10;

  objc_sync_exit(v5);
  return v4;
}

- (void)addObserverForAllKeyPaths:(id)a3
{
  v4 = a3;
  [(NWNetworkOfInterest *)self addObserver:v4 forKeyPath:@"isTrafficEligible" options:1 context:1];
  [(NWNetworkOfInterest *)self addObserver:v4 forKeyPath:@"willGetDiscretionaryTrafficInvites" options:1 context:2];
  [(NWNetworkOfInterest *)self addObserver:v4 forKeyPath:@"discretionaryTrafficInvited" options:1 context:3];
  [(NWNetworkOfInterest *)self addObserver:v4 forKeyPath:@"interfaceClass" options:1 context:4];
  [(NWNetworkOfInterest *)self addObserver:v4 forKeyPath:@"considerAlternate" options:1 context:5];
  [(NWNetworkOfInterest *)self addObserver:v4 forKeyPath:@"considerAlternateUpdate" options:1 context:6];
  [(NWNetworkOfInterest *)self addObserver:v4 forKeyPath:@"linkQuality" options:1 context:7];
  [(NWNetworkOfInterest *)self addObserver:v4 forKeyPath:@"powerCostDL" options:1 context:8];
  [(NWNetworkOfInterest *)self addObserver:v4 forKeyPath:@"powerCostUL" options:1 context:9];
  [(NWNetworkOfInterest *)self addObserver:v4 forKeyPath:@"predictionsGeneratedAt" options:1 context:0];
}

- (void)removeObserverForAllKeyPaths:(id)a3
{
  v4 = a3;
  [(NWNetworkOfInterest *)self removeObserver:v4 forKeyPath:@"isTrafficEligible"];
  [(NWNetworkOfInterest *)self removeObserver:v4 forKeyPath:@"willGetDiscretionaryTrafficInvites"];
  [(NWNetworkOfInterest *)self removeObserver:v4 forKeyPath:@"discretionaryTrafficInvited"];
  [(NWNetworkOfInterest *)self removeObserver:v4 forKeyPath:@"interfaceClass"];
  [(NWNetworkOfInterest *)self removeObserver:v4 forKeyPath:@"considerAlternate"];
  [(NWNetworkOfInterest *)self removeObserver:v4 forKeyPath:@"considerAlternateUpdate"];
  [(NWNetworkOfInterest *)self removeObserver:v4 forKeyPath:@"linkQuality"];
  [(NWNetworkOfInterest *)self removeObserver:v4 forKeyPath:@"powerCostDL"];
  [(NWNetworkOfInterest *)self removeObserver:v4 forKeyPath:@"powerCostUL"];
  [(NWNetworkOfInterest *)self removeObserver:v4 forKeyPath:@"predictionsGeneratedAt"];
}

@end