@interface NWNetworkOfInterest
- (BOOL)_isEqualToNOI:(id)i;
- (BOOL)isEqual:(id)equal;
- (NWNetworkOfInterest)initWithCoder:(id)coder;
- (id)_descriptionFull:(BOOL)full;
- (id)_thinCopy;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)addObserverForAllKeyPaths:(id)paths;
- (void)encodeWithCoder:(id)coder;
- (void)removeObserverForAllKeyPaths:(id)paths;
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

- (NWNetworkOfInterest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = NWNetworkOfInterest;
  v5 = [(NWNetworkOfInterest *)&v24 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v5->_version = [coderCopy decodeIntegerForKey:@"version"];
    v7 = [coderCopy decodeIntegerForKey:@"interfaceType"];
    v5->_functionalInterfaceType = v7;
    v5->_interface = [FunctionalInterfaceUtils nwInterfaceTypeForNWFunctionalInterfaceType:v7];
    v5->_interfaceSubtype = [FunctionalInterfaceUtils nwInterfaceSubtypeForNWFunctionalInterfaceType:v5->_functionalInterfaceType];
    v5->_isAny = [coderCopy decodeBoolForKey:@"isAny"];
    v5->_isBuiltin = [coderCopy decodeBoolForKey:@"isBuiltin"];
    v5->_scopedToLOI = [coderCopy decodeIntegerForKey:@"scopedToLOI"];
    v5->_flags = [coderCopy decodeIntegerForKey:@"flags"];
    v8 = [coderCopy decodeObjectForKey:@"customSignature"];
    customSignature = v5->_customSignature;
    v5->_customSignature = v8;

    v5->_isTrafficEligible = [coderCopy decodeBoolForKey:@"isTrafficEligible"];
    v5->_willGetDiscretionaryTrafficInvites = [coderCopy decodeBoolForKey:@"willGetDiscretionaryTrafficInvites"];
    v5->_discretionaryTrafficInvited = [coderCopy decodeBoolForKey:@"discretionaryTrafficInvited"];
    v5->_interfaceClass = [coderCopy decodeIntegerForKey:@"interfaceClass"];
    v5->_considerAlternate = [coderCopy decodeIntegerForKey:@"considerAlternate"];
    v10 = objc_alloc(MEMORY[0x277CBEB98]);
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v10 initWithObjects:{v11, v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"considerAlternateUpdate"];
    considerAlternateUpdate = v5->_considerAlternateUpdate;
    v5->_considerAlternateUpdate = v14;

    v5->_linkQuality = [coderCopy decodeIntegerForKey:@"linkQuality"];
    v5->_powerCostDL = [coderCopy decodeIntegerForKey:@"powerCostDL"];
    v5->_powerCostUL = [coderCopy decodeIntegerForKey:@"powerCostUL"];
    v16 = [coderCopy decodeObjectForKey:@"predictionsGeneratedAt"];
    predictionsGeneratedAt = v5->_predictionsGeneratedAt;
    v5->_predictionsGeneratedAt = v16;

    v18 = objc_alloc(MEMORY[0x277CBEB98]);
    v19 = objc_opt_class();
    v20 = [v18 initWithObjects:{v19, objc_opt_class(), 0}];

    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"predictions"];
    predictions = v5->_predictions;
    v5->_predictions = v21;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  [coderCopy encodeInteger:-[NWNetworkOfInterest version](self forKey:{"version"), @"version"}];
  [coderCopy encodeInteger:-[NWNetworkOfInterest functionalInterfaceType](self forKey:{"functionalInterfaceType"), @"interfaceType"}];
  [coderCopy encodeBool:-[NWNetworkOfInterest isAny](self forKey:{"isAny"), @"isAny"}];
  [coderCopy encodeBool:-[NWNetworkOfInterest isBuiltin](self forKey:{"isBuiltin"), @"isBuiltin"}];
  [coderCopy encodeInteger:-[NWNetworkOfInterest scopedToLOI](self forKey:{"scopedToLOI"), @"scopedToLOI"}];
  [coderCopy encodeInteger:-[NWNetworkOfInterest flags](self forKey:{"flags"), @"flags"}];
  customSignature = [(NWNetworkOfInterest *)self customSignature];
  [coderCopy encodeObject:customSignature forKey:@"customSignature"];

  [coderCopy encodeBool:-[NWNetworkOfInterest isTrafficEligible](self forKey:{"isTrafficEligible"), @"isTrafficEligible"}];
  [coderCopy encodeBool:-[NWNetworkOfInterest willGetDiscretionaryTrafficInvites](self forKey:{"willGetDiscretionaryTrafficInvites"), @"willGetDiscretionaryTrafficInvites"}];
  [coderCopy encodeBool:-[NWNetworkOfInterest discretionaryTrafficInvited](self forKey:{"discretionaryTrafficInvited"), @"discretionaryTrafficInvited"}];
  [coderCopy encodeInteger:-[NWNetworkOfInterest interfaceClass](self forKey:{"interfaceClass"), @"interfaceClass"}];
  [coderCopy encodeInteger:-[NWNetworkOfInterest considerAlternate](self forKey:{"considerAlternate"), @"considerAlternate"}];
  considerAlternateUpdate = [(NWNetworkOfInterest *)self considerAlternateUpdate];
  [coderCopy encodeObject:considerAlternateUpdate forKey:@"considerAlternateUpdate"];

  [coderCopy encodeInteger:-[NWNetworkOfInterest linkQuality](self forKey:{"linkQuality"), @"linkQuality"}];
  [coderCopy encodeInteger:-[NWNetworkOfInterest powerCostDL](self forKey:{"powerCostDL"), @"powerCostDL"}];
  [coderCopy encodeInteger:-[NWNetworkOfInterest powerCostUL](self forKey:{"powerCostUL"), @"powerCostUL"}];
  predictionsGeneratedAt = [(NWNetworkOfInterest *)self predictionsGeneratedAt];
  [coderCopy encodeObject:predictionsGeneratedAt forKey:@"predictionsGeneratedAt"];

  predictions = [(NWNetworkOfInterest *)self predictions];
  [coderCopy encodeObject:predictions forKey:@"predictions"];

  objc_autoreleasePoolPop(v4);
}

- (id)_descriptionFull:(BOOL)full
{
  v5 = [FunctionalInterfaceUtils stringForFunctionalInterfaceType:[(NWNetworkOfInterest *)self functionalInterfaceType]];
  v6 = v5;
  if (full)
  {
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    version = [(NWNetworkOfInterest *)self version];
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

    v13 = [v7 initWithFormat:@"NOI(%@): v:%ld type:%@, isAny:%s, isBuiltin:%s, loi:%ld, flags:%lu", v9, version, v6, v12, v11, -[NWNetworkOfInterest scopedToLOI](self, "scopedToLOI"), -[NWNetworkOfInterest flags](self, "flags")];
  }

  else
  {
    v13 = v5;
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NWNetworkOfInterest *)self _isEqualToNOI:equalCopy];
  }

  return v5;
}

- (BOOL)_isEqualToNOI:(id)i
{
  iCopy = i;
  version = [(NWNetworkOfInterest *)self version];
  if (version == [iCopy version])
  {
    functionalInterfaceType = [(NWNetworkOfInterest *)self functionalInterfaceType];
    if (functionalInterfaceType == [iCopy functionalInterfaceType])
    {
      isAny = [(NWNetworkOfInterest *)self isAny];
      if (isAny == [iCopy isAny])
      {
        isBuiltin = [(NWNetworkOfInterest *)self isBuiltin];
        if (isBuiltin == [iCopy isBuiltin])
        {
          scopedToLOI = [(NWNetworkOfInterest *)self scopedToLOI];
          if (scopedToLOI == [iCopy scopedToLOI])
          {
            flags = [(NWNetworkOfInterest *)self flags];
            if (flags == [iCopy flags])
            {
              customSignature = [(NWNetworkOfInterest *)self customSignature];
              if (customSignature || ([iCopy customSignature], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                customSignature2 = [(NWNetworkOfInterest *)self customSignature];
                customSignature3 = [iCopy customSignature];
                v15 = [customSignature2 isEqual:customSignature3];

                if (customSignature)
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

- (id)copyWithZone:(_NSZone *)zone
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NWNetworkAdviceUpdate *)selfCopy->_considerAlternateUpdate copy];
  considerAlternateUpdate = v4->_considerAlternateUpdate;
  v4->_considerAlternateUpdate = v6;

  v8 = [(NSDate *)selfCopy->_predictionsGeneratedAt copy];
  predictionsGeneratedAt = v4->_predictionsGeneratedAt;
  v4->_predictionsGeneratedAt = v8;

  v10 = [(NSArray *)selfCopy->_predictions copy];
  predictions = v4->_predictions;
  v4->_predictions = v10;

  objc_sync_exit(selfCopy);
  return v4;
}

- (void)addObserverForAllKeyPaths:(id)paths
{
  pathsCopy = paths;
  [(NWNetworkOfInterest *)self addObserver:pathsCopy forKeyPath:@"isTrafficEligible" options:1 context:1];
  [(NWNetworkOfInterest *)self addObserver:pathsCopy forKeyPath:@"willGetDiscretionaryTrafficInvites" options:1 context:2];
  [(NWNetworkOfInterest *)self addObserver:pathsCopy forKeyPath:@"discretionaryTrafficInvited" options:1 context:3];
  [(NWNetworkOfInterest *)self addObserver:pathsCopy forKeyPath:@"interfaceClass" options:1 context:4];
  [(NWNetworkOfInterest *)self addObserver:pathsCopy forKeyPath:@"considerAlternate" options:1 context:5];
  [(NWNetworkOfInterest *)self addObserver:pathsCopy forKeyPath:@"considerAlternateUpdate" options:1 context:6];
  [(NWNetworkOfInterest *)self addObserver:pathsCopy forKeyPath:@"linkQuality" options:1 context:7];
  [(NWNetworkOfInterest *)self addObserver:pathsCopy forKeyPath:@"powerCostDL" options:1 context:8];
  [(NWNetworkOfInterest *)self addObserver:pathsCopy forKeyPath:@"powerCostUL" options:1 context:9];
  [(NWNetworkOfInterest *)self addObserver:pathsCopy forKeyPath:@"predictionsGeneratedAt" options:1 context:0];
}

- (void)removeObserverForAllKeyPaths:(id)paths
{
  pathsCopy = paths;
  [(NWNetworkOfInterest *)self removeObserver:pathsCopy forKeyPath:@"isTrafficEligible"];
  [(NWNetworkOfInterest *)self removeObserver:pathsCopy forKeyPath:@"willGetDiscretionaryTrafficInvites"];
  [(NWNetworkOfInterest *)self removeObserver:pathsCopy forKeyPath:@"discretionaryTrafficInvited"];
  [(NWNetworkOfInterest *)self removeObserver:pathsCopy forKeyPath:@"interfaceClass"];
  [(NWNetworkOfInterest *)self removeObserver:pathsCopy forKeyPath:@"considerAlternate"];
  [(NWNetworkOfInterest *)self removeObserver:pathsCopy forKeyPath:@"considerAlternateUpdate"];
  [(NWNetworkOfInterest *)self removeObserver:pathsCopy forKeyPath:@"linkQuality"];
  [(NWNetworkOfInterest *)self removeObserver:pathsCopy forKeyPath:@"powerCostDL"];
  [(NWNetworkOfInterest *)self removeObserver:pathsCopy forKeyPath:@"powerCostUL"];
  [(NWNetworkOfInterest *)self removeObserver:pathsCopy forKeyPath:@"predictionsGeneratedAt"];
}

@end