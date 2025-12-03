@interface SUCoreSimulateEvent
+ (id)nameForSimulateEventBoolean:(int64_t)boolean;
- (SUCoreSimulateEvent)initWithCoder:(id)coder;
- (id)_actionName;
- (id)_descriptionFSM;
- (id)_descriptionStandard;
- (id)_initWithAction:(int64_t)action onTrigger:(int64_t)trigger forModule:(id)module atIdentity:(id)identity atEvent:(id)event inState:(id)state alteration:(id)alteration startAt:(int)self0 endAt:(int)self1 duration:(int)self2 untilStop:(id)self3 assetBuildVersions:(id)self4 assetProductVersions:(id)self5 assetAttributesPlist:(id)self6 assetState:(id)self7 updateInfoPlist:(id)self8 errorDomain:(id)self9 errorCode:(int64_t)code errorUserInfo:(id)info errorRecoverable:(int64_t)recoverable;
- (id)_triggerName;
- (id)buildErrorWithDescription:(id)description;
- (id)description;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUCoreSimulateEvent

- (id)_initWithAction:(int64_t)action onTrigger:(int64_t)trigger forModule:(id)module atIdentity:(id)identity atEvent:(id)event inState:(id)state alteration:(id)alteration startAt:(int)self0 endAt:(int)self1 duration:(int)self2 untilStop:(id)self3 assetBuildVersions:(id)self4 assetProductVersions:(id)self5 assetAttributesPlist:(id)self6 assetState:(id)self7 updateInfoPlist:(id)self8 errorDomain:(id)self9 errorCode:(int64_t)code errorUserInfo:(id)info errorRecoverable:(int64_t)recoverable
{
  moduleCopy = module;
  identityCopy = identity;
  identityCopy2 = identity;
  eventCopy = event;
  eventCopy2 = event;
  stateCopy = state;
  stateCopy2 = state;
  alterationCopy = alteration;
  stopCopy = stop;
  versionsCopy = versions;
  productVersionsCopy = productVersions;
  plistCopy = plist;
  assetStateCopy = assetState;
  infoPlistCopy = infoPlist;
  domainCopy = domain;
  infoCopy = info;
  v48.receiver = self;
  v48.super_class = SUCoreSimulateEvent;
  v31 = [(SUCoreSimulateEvent *)&v48 init];
  v32 = v31;
  if (v31)
  {
    v31->_simAction = action;
    v31->_simTrigger = trigger;
    objc_storeStrong(&v31->_moduleName, module);
    objc_storeStrong(&v32->_identityName, identityCopy);
    objc_storeStrong(&v32->_fsmEvent, eventCopy);
    objc_storeStrong(&v32->_fsmState, stateCopy);
    objc_storeStrong(&v32->_alteration, alteration);
    v32->_count = 0;
    v32->_startAt = at;
    v32->_endAt = endAt;
    v32->_duration = duration;
    objc_storeStrong(&v32->_untilStop, stop);
    objc_storeStrong(&v32->_assetBuildVersions, versions);
    objc_storeStrong(&v32->_assetProductVersions, productVersions);
    objc_storeStrong(&v32->_assetAttributesPlist, plist);
    objc_storeStrong(&v32->_assetState, assetState);
    objc_storeStrong(&v32->_updateInfoPlist, infoPlist);
    objc_storeStrong(&v32->_errorDomain, domain);
    v32->_errorCode = code;
    objc_storeStrong(&v32->_errorUserInfo, info);
    v32->_errorRecoverable = recoverable;
  }

  return v32;
}

- (SUCoreSimulateEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v39.receiver = self;
  v39.super_class = SUCoreSimulateEvent;
  v5 = [(SUCoreSimulateEvent *)&v39 init];
  if (v5)
  {
    v5->_simAction = [coderCopy decodeInt64ForKey:@"simAction"];
    v5->_simTrigger = [coderCopy decodeInt64ForKey:@"simTrigger"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"moduleName"];
    moduleName = v5->_moduleName;
    v5->_moduleName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identityName"];
    identityName = v5->_identityName;
    v5->_identityName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fsmEvent"];
    fsmEvent = v5->_fsmEvent;
    v5->_fsmEvent = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fsmState"];
    fsmState = v5->_fsmState;
    v5->_fsmState = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alteration"];
    alteration = v5->_alteration;
    v5->_alteration = v14;

    v5->_count = [coderCopy decodeIntForKey:@"count"];
    v5->_startAt = [coderCopy decodeIntForKey:@"startAt"];
    v5->_endAt = [coderCopy decodeIntForKey:@"endAt"];
    v5->_duration = [coderCopy decodeIntForKey:@"duration"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"untilStop"];
    untilStop = v5->_untilStop;
    v5->_untilStop = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"assetBuildVersions"];
    assetBuildVersions = v5->_assetBuildVersions;
    v5->_assetBuildVersions = v21;

    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"assetProductVersions"];
    assetProductVersions = v5->_assetProductVersions;
    v5->_assetProductVersions = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetAttributesPlist"];
    assetAttributesPlist = v5->_assetAttributesPlist;
    v5->_assetAttributesPlist = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetState"];
    assetState = v5->_assetState;
    v5->_assetState = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"updateInfoPlist"];
    updateInfoPlist = v5->_updateInfoPlist;
    v5->_updateInfoPlist = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"errorDomain"];
    errorDomain = v5->_errorDomain;
    v5->_errorDomain = v34;

    v5->_errorCode = [coderCopy decodeInt64ForKey:@"errorCode"];
    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"errorUserInfo"];
    errorUserInfo = v5->_errorUserInfo;
    v5->_errorUserInfo = v36;

    v5->_errorRecoverable = [coderCopy decodeIntForKey:@"errorRecoverable"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  simAction = self->_simAction;
  coderCopy = coder;
  [coderCopy encodeInt64:simAction forKey:@"simAction"];
  [coderCopy encodeInt64:self->_simTrigger forKey:@"simTrigger"];
  [coderCopy encodeObject:self->_moduleName forKey:@"moduleName"];
  [coderCopy encodeObject:self->_identityName forKey:@"identityName"];
  [coderCopy encodeObject:self->_fsmEvent forKey:@"fsmEvent"];
  [coderCopy encodeObject:self->_fsmState forKey:@"fsmState"];
  [coderCopy encodeObject:self->_alteration forKey:@"alteration"];
  [coderCopy encodeInt:self->_count forKey:@"count"];
  [coderCopy encodeInt:self->_startAt forKey:@"startAt"];
  [coderCopy encodeInt:self->_endAt forKey:@"endAt"];
  [coderCopy encodeInt:self->_duration forKey:@"duration"];
  [coderCopy encodeObject:self->_untilStop forKey:@"untilStop"];
  [coderCopy encodeObject:self->_assetBuildVersions forKey:@"assetBuildVersions"];
  [coderCopy encodeObject:self->_assetProductVersions forKey:@"assetProductVersions"];
  [coderCopy encodeObject:self->_assetAttributesPlist forKey:@"assetAttributesPlist"];
  [coderCopy encodeObject:self->_assetState forKey:@"assetState"];
  [coderCopy encodeObject:self->_updateInfoPlist forKey:@"updateInfoPlist"];
  [coderCopy encodeObject:self->_errorDomain forKey:@"errorDomain"];
  [coderCopy encodeInt64:self->_errorCode forKey:@"errorCode"];
  [coderCopy encodeObject:self->_errorUserInfo forKey:@"errorUserInfo"];
  [coderCopy encodeInt:LODWORD(self->_errorRecoverable) forKey:@"errorRecoverable"];
}

- (id)buildErrorWithDescription:(id)description
{
  descriptionCopy = description;
  errorDomain = [(SUCoreSimulateEvent *)self errorDomain];
  if (errorDomain)
  {
    errorDomain2 = [(SUCoreSimulateEvent *)self errorDomain];
  }

  else
  {
    errorDomain2 = @"SUCoreError";
  }

  v7 = errorDomain2;

  if ([(SUCoreSimulateEvent *)self errorCode])
  {
    errorCode = [(SUCoreSimulateEvent *)self errorCode];
  }

  else
  {
    errorCode = 9900;
  }

  errorUserInfo = [(SUCoreSimulateEvent *)self errorUserInfo];
  v10 = MEMORY[0x1E695DF90];
  if (errorUserInfo)
  {
    errorUserInfo2 = [(SUCoreSimulateEvent *)self errorUserInfo];
    dictionary = [v10 dictionaryWithDictionary:errorUserInfo2];
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  [dictionary setSafeObject:descriptionCopy forKey:*MEMORY[0x1E696A578]];
  errorRecoverable = [(SUCoreSimulateEvent *)self errorRecoverable];
  if (errorRecoverable)
  {
    if (errorRecoverable == 2)
    {
      v14 = MEMORY[0x1E695E118];
      goto LABEL_15;
    }

    if (errorRecoverable == 1)
    {
      v14 = MEMORY[0x1E695E110];
LABEL_15:
      [dictionary setSafeObject:v14 forKey:@"Recoverable"];
      goto LABEL_17;
    }

    v15 = +[SUCoreDiag sharedDiag];
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unknown value for errorRecoverable:%d", -[SUCoreSimulateEvent errorRecoverable](self, "errorRecoverable")];
    [v15 trackError:@"[SIMULATE] EVENT" forReason:v16 withResult:8116 withError:0];
  }

LABEL_17:
  v17 = [MEMORY[0x1E696ABC0] errorWithDomain:v7 code:errorCode userInfo:dictionary];

  return v17;
}

- (id)description
{
  if ([(SUCoreSimulateEvent *)self simTrigger]== 3)
  {
    [(SUCoreSimulateEvent *)self _descriptionFSM];
  }

  else
  {
    [(SUCoreSimulateEvent *)self _descriptionStandard];
  }
  v3 = ;

  return v3;
}

- (id)summary
{
  moduleName = [(SUCoreSimulateEvent *)self moduleName];
  v4 = [moduleName isEqualToString:@"fsm"];

  v27 = objc_alloc(MEMORY[0x1E696AEC0]);
  _actionName = [(SUCoreSimulateEvent *)self _actionName];
  _triggerName = [(SUCoreSimulateEvent *)self _triggerName];
  if (v4)
  {
    identityName = [(SUCoreSimulateEvent *)self identityName];
    fsmEvent = [(SUCoreSimulateEvent *)self fsmEvent];
    fsmState = [(SUCoreSimulateEvent *)self fsmState];
    alteration = [(SUCoreSimulateEvent *)self alteration];
    v25 = [(SUCoreSimulateEvent *)self count];
    startAt = [(SUCoreSimulateEvent *)self startAt];
    endAt = [(SUCoreSimulateEvent *)self endAt];
    assetBuildVersions = [(SUCoreSimulateEvent *)self assetBuildVersions];
    assetProductVersions = [(SUCoreSimulateEvent *)self assetProductVersions];
    assetAttributesPlist = [(SUCoreSimulateEvent *)self assetAttributesPlist];
    assetState = [(SUCoreSimulateEvent *)self assetState];
    updateInfoPlist = [(SUCoreSimulateEvent *)self updateInfoPlist];
    errorDomain = [(SUCoreSimulateEvent *)self errorDomain];
    if (errorDomain)
    {
      errorDomain2 = [(SUCoreSimulateEvent *)self errorDomain];
    }

    else
    {
      errorDomain2 = @"SUCoreError";
    }

    v14 = [SUCore errorNameForCode:[(SUCoreSimulateEvent *)self errorCode]];
    v15 = [SUCoreSimulateEvent nameForSimulateEventBoolean:[(SUCoreSimulateEvent *)self errorRecoverable]];
    v22 = endAt;
    v16 = _actionName;
    v17 = [v27 initWithFormat:@"action:%@ trigger:%@ fsm:%@ event:%@ state:%@ alteration:%@ count:%d startAt:%d endAt:%d assetBuildVersions:%@ assetProductVersions:%@ assetAttributesPlist:%@ assetState:%@ updateInfoPlist:%@ errorDomain:%@ errorCode:%@ errorRecoverable:%@", _actionName, _triggerName, identityName, fsmEvent, fsmState, alteration, v25, startAt, v22, assetBuildVersions, assetProductVersions, assetAttributesPlist, assetState, updateInfoPlist, errorDomain2, v14, v15];

    if (errorDomain)
    {
    }
  }

  else
  {
    identityName = [(SUCoreSimulateEvent *)self moduleName];
    fsmEvent = [(SUCoreSimulateEvent *)self identityName];
    v26 = [(SUCoreSimulateEvent *)self count];
    startAt2 = [(SUCoreSimulateEvent *)self startAt];
    endAt2 = [(SUCoreSimulateEvent *)self endAt];
    duration = [(SUCoreSimulateEvent *)self duration];
    fsmState = [(SUCoreSimulateEvent *)self untilStop];
    alteration = [(SUCoreSimulateEvent *)self assetBuildVersions];
    assetBuildVersions = [(SUCoreSimulateEvent *)self assetProductVersions];
    assetProductVersions = [(SUCoreSimulateEvent *)self assetAttributesPlist];
    assetAttributesPlist = [(SUCoreSimulateEvent *)self assetState];
    assetState = [(SUCoreSimulateEvent *)self updateInfoPlist];
    updateInfoPlist = [(SUCoreSimulateEvent *)self errorDomain];
    if (updateInfoPlist)
    {
      errorDomain = [(SUCoreSimulateEvent *)self errorDomain];
    }

    else
    {
      errorDomain = @"SUCoreError";
    }

    v18 = [SUCore errorNameForCode:[(SUCoreSimulateEvent *)self errorCode]];
    v19 = [SUCoreSimulateEvent nameForSimulateEventBoolean:[(SUCoreSimulateEvent *)self errorRecoverable]];
    v21 = endAt2;
    v16 = _actionName;
    v17 = [v27 initWithFormat:@"action:%@ trigger:%@ module:%@ function:%@ count:%d startAt:%d endAt:%d duration:%d untilStop:%@ assetBuildVersions:%@ assetProductVersions:%@ assetAttributesPlist:%@ assetState:%@ updateInfoPlist:%@ errorDomain:%@ errorCode:%@ errorRecoverable:%@", _actionName, _triggerName, identityName, fsmEvent, v26, startAt2, v21, duration, fsmState, alteration, assetBuildVersions, assetProductVersions, assetAttributesPlist, assetState, errorDomain, v18, v19];

    if (!updateInfoPlist)
    {
      goto LABEL_12;
    }
  }

LABEL_12:

  return v17;
}

- (id)_descriptionFSM
{
  v17 = objc_alloc(MEMORY[0x1E696AEC0]);
  _actionName = [(SUCoreSimulateEvent *)self _actionName];
  _triggerName = [(SUCoreSimulateEvent *)self _triggerName];
  identityName = [(SUCoreSimulateEvent *)self identityName];
  fsmEvent = [(SUCoreSimulateEvent *)self fsmEvent];
  fsmState = [(SUCoreSimulateEvent *)self fsmState];
  alteration = [(SUCoreSimulateEvent *)self alteration];
  v16 = [(SUCoreSimulateEvent *)self count];
  startAt = [(SUCoreSimulateEvent *)self startAt];
  endAt = [(SUCoreSimulateEvent *)self endAt];
  assetBuildVersions = [(SUCoreSimulateEvent *)self assetBuildVersions];
  assetProductVersions = [(SUCoreSimulateEvent *)self assetProductVersions];
  assetAttributesPlist = [(SUCoreSimulateEvent *)self assetAttributesPlist];
  assetState = [(SUCoreSimulateEvent *)self assetState];
  updateInfoPlist = [(SUCoreSimulateEvent *)self updateInfoPlist];
  errorDomain = [(SUCoreSimulateEvent *)self errorDomain];
  if (errorDomain)
  {
    errorDomain2 = [(SUCoreSimulateEvent *)self errorDomain];
  }

  else
  {
    errorDomain2 = @"SUCoreError";
  }

  v9 = [SUCore errorNameForCode:[(SUCoreSimulateEvent *)self errorCode]];
  errorUserInfo = [(SUCoreSimulateEvent *)self errorUserInfo];
  v11 = [SUCoreSimulateEvent nameForSimulateEventBoolean:[(SUCoreSimulateEvent *)self errorRecoverable]];
  v12 = [v17 initWithFormat:@"\n[>>>\n               action: %@\n              trigger: %@\n                  fsm: %@\n                event: %@\n                state: %@\n           alteration: %@\n                count: %d\n              startAt: %d\n                endAt: %d\n   assetBuildVersions: %@\n assetProductVersions: %@\n assetAttributesPlist: %@\n           assetState: %@\n      updateInfoPlist: %@\n          errorDomain: %@\n            errorCode: %@\n        errorUserInfo: %@\n     errorRecoverable: %@\n<<<]", _actionName, _triggerName, identityName, fsmEvent, fsmState, alteration, v16, startAt, endAt, assetBuildVersions, assetProductVersions, assetAttributesPlist, assetState, updateInfoPlist, errorDomain2, v9, errorUserInfo, v11];

  if (errorDomain)
  {
  }

  return v12;
}

- (id)_descriptionStandard
{
  v18 = objc_alloc(MEMORY[0x1E696AEC0]);
  _actionName = [(SUCoreSimulateEvent *)self _actionName];
  _triggerName = [(SUCoreSimulateEvent *)self _triggerName];
  moduleName = [(SUCoreSimulateEvent *)self moduleName];
  identityName = [(SUCoreSimulateEvent *)self identityName];
  v17 = [(SUCoreSimulateEvent *)self count];
  startAt = [(SUCoreSimulateEvent *)self startAt];
  endAt = [(SUCoreSimulateEvent *)self endAt];
  duration = [(SUCoreSimulateEvent *)self duration];
  untilStop = [(SUCoreSimulateEvent *)self untilStop];
  assetBuildVersions = [(SUCoreSimulateEvent *)self assetBuildVersions];
  assetProductVersions = [(SUCoreSimulateEvent *)self assetProductVersions];
  assetAttributesPlist = [(SUCoreSimulateEvent *)self assetAttributesPlist];
  assetState = [(SUCoreSimulateEvent *)self assetState];
  updateInfoPlist = [(SUCoreSimulateEvent *)self updateInfoPlist];
  errorDomain = [(SUCoreSimulateEvent *)self errorDomain];
  if (errorDomain)
  {
    errorDomain2 = [(SUCoreSimulateEvent *)self errorDomain];
  }

  else
  {
    errorDomain2 = @"SUCoreError";
  }

  v9 = [SUCore errorNameForCode:[(SUCoreSimulateEvent *)self errorCode]];
  errorUserInfo = [(SUCoreSimulateEvent *)self errorUserInfo];
  v11 = [SUCoreSimulateEvent nameForSimulateEventBoolean:[(SUCoreSimulateEvent *)self errorRecoverable]];
  v12 = [v18 initWithFormat:@"\n[>>>\n               action: %@\n              trigger: %@\n               module: %@\n             function: %@\n                count: %d\n              startAt: %d\n                endAt: %d\n             duration: %d\n            untilStop: %@\n   assetBuildVersions: %@\n assetProductVersions: %@\n assetAttributesPlist: %@\n           assetState: %@\n      updateInfoPlist: %@\n          errorDomain: %@\n            errorCode: %@\n        errorUserInfo: %@\n     errorRecoverable: %@\n<<<]", _actionName, _triggerName, moduleName, identityName, v17, startAt, endAt, duration, untilStop, assetBuildVersions, assetProductVersions, assetAttributesPlist, assetState, updateInfoPlist, errorDomain2, v9, errorUserInfo, v11];

  if (errorDomain)
  {
  }

  return v12;
}

- (id)_actionName
{
  if ([(SUCoreSimulateEvent *)self simAction]< 0 || [(SUCoreSimulateEvent *)self simAction]> 11)
  {
    v3 = @"UNKNOWN";
  }

  else
  {
    v3 = kSUCoreSimulateEventActionName[[(SUCoreSimulateEvent *)self simAction]];
  }

  return v3;
}

- (id)_triggerName
{
  if ([(SUCoreSimulateEvent *)self simTrigger]< 0 || [(SUCoreSimulateEvent *)self simTrigger]> 3)
  {
    v3 = @"UNKNOWN";
  }

  else
  {
    v3 = kSUCoreSimulateEventTriggerName[[(SUCoreSimulateEvent *)self simTrigger]];
  }

  return v3;
}

+ (id)nameForSimulateEventBoolean:(int64_t)boolean
{
  if (boolean >= 3)
  {
    boolean = [MEMORY[0x1E696AEC0] stringWithFormat:@"SUCoreSimulateEventBoolean(%d)", boolean];
  }

  else
  {
    boolean = off_1E86FC700[boolean];
  }

  return boolean;
}

@end