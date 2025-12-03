@interface XBApplicationSnapshotPredicate
+ (id)predicate;
- (BOOL)_hasClientObjectForKey:(unint64_t)key;
- (BOOL)evaluateWithObject:(id)object;
- (CGSize)referenceSize;
- (XBApplicationSnapshotPredicate)init;
- (double)imageScale;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (int64_t)userInterfaceStyle;
- (unint64_t)contentTypeMask;
- (unint64_t)interfaceOrientationMask;
- (unint64_t)statusBarState;
- (unint64_t)statusBarStateMask;
- (void)_removeClientObjectForKey:(unint64_t)key;
- (void)_setClientObject:(id)object forKey:(unint64_t)key;
- (void)setContentTypeMask:(unint64_t)mask;
- (void)setImageScale:(double)scale;
- (void)setInterfaceOrientationMask:(unint64_t)mask;
- (void)setLaunchInterfaceIdentifier:(id)identifier;
- (void)setName:(id)name;
- (void)setReferenceSize:(CGSize)size;
- (void)setRequiredOSVersion:(id)version;
- (void)setScheme:(id)scheme;
- (void)setStatusBarState:(unint64_t)state;
- (void)setStatusBarStateMask:(unint64_t)mask;
- (void)setUserInterfaceStyle:(int64_t)style;
@end

@implementation XBApplicationSnapshotPredicate

+ (id)predicate
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (XBApplicationSnapshotPredicate)init
{
  v6.receiver = self;
  v6.super_class = XBApplicationSnapshotPredicate;
  v2 = [(XBApplicationSnapshotPredicate *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CF0C80]);
    clientSettings = v2->_clientSettings;
    v2->_clientSettings = v3;
  }

  return v2;
}

- (unint64_t)contentTypeMask
{
  v2 = [(XBApplicationSnapshotPredicate *)self _clientObjectForKey:7];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (CGSize)referenceSize
{
  v2 = [(XBApplicationSnapshotPredicate *)self _clientObjectForKey:5];
  [v2 CGSizeValue];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (unint64_t)statusBarStateMask
{
  v2 = [(XBApplicationSnapshotPredicate *)self _clientObjectForKey:8];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (int64_t)userInterfaceStyle
{
  v2 = [(XBApplicationSnapshotPredicate *)self _clientObjectForKey:12];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (unint64_t)interfaceOrientationMask
{
  v2 = [(XBApplicationSnapshotPredicate *)self _clientObjectForKey:4];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (BOOL)evaluateWithObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_35;
  }

  if ([(XBApplicationSnapshotPredicate *)self _hasClientObjectForKey:7])
  {
    contentTypeMask = [(XBApplicationSnapshotPredicate *)self contentTypeMask];
    if ((contentTypeMask & (1 << [objectCopy contentType])) == 0)
    {
      goto LABEL_35;
    }
  }

  if ([(XBApplicationSnapshotPredicate *)self _hasClientObjectForKey:4])
  {
    interfaceOrientationMask = [(XBApplicationSnapshotPredicate *)self interfaceOrientationMask];
    if ((interfaceOrientationMask & (1 << [objectCopy interfaceOrientation])) == 0)
    {
      goto LABEL_35;
    }
  }

  if ([(XBApplicationSnapshotPredicate *)self _hasClientObjectForKey:5])
  {
    [(XBApplicationSnapshotPredicate *)self referenceSize];
    v8 = v7;
    v10 = v9;
    [objectCopy referenceSize];
    LOBYTE(v12) = 0;
    if (v8 != v13 || v10 != v11)
    {
      goto LABEL_36;
    }
  }

  if ([(XBApplicationSnapshotPredicate *)self _hasClientObjectForKey:1])
  {
    name = [(XBApplicationSnapshotPredicate *)self name];
    name2 = [objectCopy name];
    v16 = BSEqualStrings();

    if (!v16)
    {
      goto LABEL_35;
    }
  }

  if ([(XBApplicationSnapshotPredicate *)self _hasClientObjectForKey:2])
  {
    scheme = [(XBApplicationSnapshotPredicate *)self scheme];
    scheme2 = [objectCopy scheme];
    v19 = BSEqualStrings();

    if (!v19)
    {
      goto LABEL_35;
    }
  }

  if ([(XBApplicationSnapshotPredicate *)self _hasClientObjectForKey:9])
  {
    requiredOSVersion = [(XBApplicationSnapshotPredicate *)self requiredOSVersion];
    if (requiredOSVersion)
    {
    }

    else
    {
      requiredOSVersion2 = [objectCopy requiredOSVersion];

      if (requiredOSVersion2)
      {
        goto LABEL_35;
      }
    }

    requiredOSVersion3 = [objectCopy requiredOSVersion];
    requiredOSVersion4 = [(XBApplicationSnapshotPredicate *)self requiredOSVersion];
    v23 = [requiredOSVersion3 compare:requiredOSVersion4 options:64];

    if (v23 == 1)
    {
      goto LABEL_35;
    }
  }

  if ([(XBApplicationSnapshotPredicate *)self _hasClientObjectForKey:3])
  {
    launchInterfaceIdentifier = [(XBApplicationSnapshotPredicate *)self launchInterfaceIdentifier];
    launchInterfaceIdentifier2 = [objectCopy launchInterfaceIdentifier];
    v26 = BSEqualStrings();

    if (!v26)
    {
      goto LABEL_35;
    }
  }

  if ([(XBApplicationSnapshotPredicate *)self _hasClientObjectForKey:6])
  {
    [(XBApplicationSnapshotPredicate *)self imageScale];
    [objectCopy imageScale];
    if (!BSFloatEqualToFloat())
    {
      goto LABEL_35;
    }
  }

  if ([(XBApplicationSnapshotPredicate *)self _hasClientObjectForKey:8])
  {
    statusBarStateMask = [(XBApplicationSnapshotPredicate *)self statusBarStateMask];
    statusBarSettings = [objectCopy statusBarSettings];
    v12 = XBStatusBarStateMaskMatchesSettings(statusBarStateMask, statusBarSettings);

    if (!v12)
    {
      goto LABEL_36;
    }
  }

  if (-[XBApplicationSnapshotPredicate _hasClientObjectForKey:](self, "_hasClientObjectForKey:", 10) && (-[XBApplicationSnapshotPredicate _clientObjectForKey:](self, "_clientObjectForKey:", 10), v29 = objc_claimAutoreleasedReturnValue(), [objectCopy creationDate], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v29, "isEqual:", v30), v30, v29, !v31) || -[XBApplicationSnapshotPredicate _hasClientObjectForKey:](self, "_hasClientObjectForKey:", 12) && (v32 = -[XBApplicationSnapshotPredicate userInterfaceStyle](self, "userInterfaceStyle"), v33 = objc_msgSend(objectCopy, "userInterfaceStyle"), v32) && v33 && v32 != v33)
  {
LABEL_35:
    LOBYTE(v12) = 0;
    goto LABEL_36;
  }

  if ([(XBApplicationSnapshotPredicate *)self _hasClientObjectForKey:13])
  {
    v34 = [(XBApplicationSnapshotPredicate *)self _clientObjectForKey:13];
    if (v34 && [objectCopy contentType] != 2)
    {
      customSafeAreaInsets = [objectCopy customSafeAreaInsets];
      v39 = [v34 isEqual:customSafeAreaInsets];

      if ((v39 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      customSafeAreaInsets2 = [objectCopy customSafeAreaInsets];

      if (customSafeAreaInsets2)
      {
LABEL_33:
        LOBYTE(v12) = 0;
LABEL_40:

        goto LABEL_36;
      }
    }

    LOBYTE(v12) = 1;
    goto LABEL_40;
  }

  LOBYTE(v12) = 1;
LABEL_36:

  return v12;
}

- (void)setName:(id)name
{
  v4 = [name copy];
  [(XBApplicationSnapshotPredicate *)self _setClientObject:v4 forKey:1];
}

- (void)setScheme:(id)scheme
{
  v4 = [scheme copy];
  [(XBApplicationSnapshotPredicate *)self _setClientObject:v4 forKey:2];
}

- (void)setLaunchInterfaceIdentifier:(id)identifier
{
  v4 = [identifier copy];
  [(XBApplicationSnapshotPredicate *)self _setClientObject:v4 forKey:3];
}

- (void)setRequiredOSVersion:(id)version
{
  v4 = [version copy];
  [(XBApplicationSnapshotPredicate *)self _setClientObject:v4 forKey:9];
}

- (void)setInterfaceOrientationMask:(unint64_t)mask
{
  if (mask)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [(XBApplicationSnapshotPredicate *)self _setClientObject:v4 forKey:4];
  }

  else
  {

    [(XBApplicationSnapshotPredicate *)self _removeClientObjectForKey:4];
  }
}

- (void)setReferenceSize:(CGSize)size
{
  v4 = [MEMORY[0x277CCAE60] valueWithCGSize:{size.width, size.height}];
  [(XBApplicationSnapshotPredicate *)self _setClientObject:v4 forKey:5];
}

- (void)setImageScale:(double)scale
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:scale];
  [(XBApplicationSnapshotPredicate *)self _setClientObject:v4 forKey:6];
}

- (void)setContentTypeMask:(unint64_t)mask
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mask];
  [(XBApplicationSnapshotPredicate *)self _setClientObject:v4 forKey:7];
}

- (void)setStatusBarState:(unint64_t)state
{
  v4 = XBStatusBarStateMaskForStatusBarState(state);

  [(XBApplicationSnapshotPredicate *)self setStatusBarStateMask:v4];
}

- (void)setStatusBarStateMask:(unint64_t)mask
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mask];
  [(XBApplicationSnapshotPredicate *)self _setClientObject:v4 forKey:8];
}

- (void)setUserInterfaceStyle:(int64_t)style
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:style];
  [(XBApplicationSnapshotPredicate *)self _setClientObject:v4 forKey:12];
}

- (double)imageScale
{
  v2 = [(XBApplicationSnapshotPredicate *)self _clientObjectForKey:6];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (unint64_t)statusBarState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  statusBarStateMask = [(XBApplicationSnapshotPredicate *)self statusBarStateMask];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__XBApplicationSnapshotPredicate_statusBarState__block_invoke;
  v5[3] = &unk_279CF9648;
  v5[4] = &v6;
  XBEnumerateStatusBarStatesMatchingMask(statusBarStateMask, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __48__XBApplicationSnapshotPredicate_statusBarState__block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *a3 = 1;
  return result;
}

- (void)_setClientObject:(id)object forKey:(unint64_t)key
{
  [(BSMutableSettings *)self->_clientSettings setObject:object forSetting:?];
  clientSettings = self->_clientSettings;

  [(BSMutableSettings *)clientSettings setFlag:1 forSetting:key];
}

- (void)_removeClientObjectForKey:(unint64_t)key
{
  [(BSMutableSettings *)self->_clientSettings setObject:0 forSetting:key];
  clientSettings = self->_clientSettings;

  [(BSMutableSettings *)clientSettings setFlag:0x7FFFFFFFFFFFFFFFLL forSetting:key];
}

- (BOOL)_hasClientObjectForKey:(unint64_t)key
{
  v3 = [(BSMutableSettings *)self->_clientSettings flagForSetting:key];

  return MEMORY[0x282143B10](v3);
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(XBApplicationSnapshotPredicate *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(XBApplicationSnapshotPredicate *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(XBApplicationSnapshotPredicate *)self succinctDescriptionBuilder];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__XBApplicationSnapshotPredicate_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_279CF9508;
  v10[4] = self;
  v6 = succinctDescriptionBuilder;
  v11 = v6;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];

  v7 = v11;
  v8 = v6;

  return v6;
}

id __72__XBApplicationSnapshotPredicate_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _hasClientObjectForKey:1])
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) name];
    v4 = [v2 appendObject:v3 withName:@"name" skipIfNil:0];
  }

  if ([*(a1 + 32) _hasClientObjectForKey:2])
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) scheme];
    v7 = [v5 appendObject:v6 withName:@"scheme" skipIfNil:0];
  }

  if ([*(a1 + 32) _hasClientObjectForKey:3])
  {
    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) launchInterfaceIdentifier];
    v10 = [v8 appendObject:v9 withName:@"launchInterfaceIdentifier" skipIfNil:0];
  }

  if ([*(a1 + 32) _hasClientObjectForKey:9])
  {
    v11 = *(a1 + 40);
    v12 = [*(a1 + 32) requiredOSVersion];
    v13 = [v11 appendObject:v12 withName:@"requiredOSVersion" skipIfNil:0];
  }

  if ([*(a1 + 32) _hasClientObjectForKey:4])
  {
    v14 = [*(a1 + 40) appendUnsignedInteger:objc_msgSend(*(a1 + 32) withName:{"interfaceOrientationMask"), @"orientationMask"}];
  }

  if ([*(a1 + 32) _hasClientObjectForKey:7])
  {
    v15 = *(a1 + 40);
    v16 = XBApplicationSnapshotContentTypeMaskDescription([*(a1 + 32) contentTypeMask]);
    v17 = [v15 appendObject:v16 withName:@"contentTypeMask"];
  }

  if ([*(a1 + 32) _hasClientObjectForKey:8])
  {
    v18 = *(a1 + 40);
    v19 = XBStatusBarStateMaskDescription([*(a1 + 32) statusBarStateMask]);
    v20 = [v18 appendObject:v19 withName:@"statusBarStateMask"];
  }

  if ([*(a1 + 32) _hasClientObjectForKey:5])
  {
    v21 = *(a1 + 40);
    [*(a1 + 32) referenceSize];
    v22 = [v21 appendSize:@"size" withName:?];
  }

  if ([*(a1 + 32) _hasClientObjectForKey:6])
  {
    v23 = *(a1 + 40);
    [*(a1 + 32) imageScale];
    v24 = [v23 appendFloat:@"scale" withName:1 decimalPrecision:?];
  }

  result = [*(a1 + 32) _hasClientObjectForKey:12];
  if (result)
  {
    return [*(a1 + 40) appendInteger:objc_msgSend(*(a1 + 32) withName:{"userInterfaceStyle"), @"userInterfaceStyle"}];
  }

  return result;
}

@end