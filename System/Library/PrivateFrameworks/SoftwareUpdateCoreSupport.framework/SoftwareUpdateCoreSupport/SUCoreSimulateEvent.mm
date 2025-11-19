@interface SUCoreSimulateEvent
+ (id)nameForSimulateEventBoolean:(int64_t)a3;
- (SUCoreSimulateEvent)initWithCoder:(id)a3;
- (id)_actionName;
- (id)_descriptionFSM;
- (id)_descriptionStandard;
- (id)_initWithAction:(int64_t)a3 onTrigger:(int64_t)a4 forModule:(id)a5 atIdentity:(id)a6 atEvent:(id)a7 inState:(id)a8 alteration:(id)a9 startAt:(int)a10 endAt:(int)a11 duration:(int)a12 untilStop:(id)a13 assetBuildVersions:(id)a14 assetProductVersions:(id)a15 assetAttributesPlist:(id)a16 assetState:(id)a17 updateInfoPlist:(id)a18 errorDomain:(id)a19 errorCode:(int64_t)a20 errorUserInfo:(id)a21 errorRecoverable:(int64_t)a22;
- (id)_triggerName;
- (id)buildErrorWithDescription:(id)a3;
- (id)description;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUCoreSimulateEvent

- (id)_initWithAction:(int64_t)a3 onTrigger:(int64_t)a4 forModule:(id)a5 atIdentity:(id)a6 atEvent:(id)a7 inState:(id)a8 alteration:(id)a9 startAt:(int)a10 endAt:(int)a11 duration:(int)a12 untilStop:(id)a13 assetBuildVersions:(id)a14 assetProductVersions:(id)a15 assetAttributesPlist:(id)a16 assetState:(id)a17 updateInfoPlist:(id)a18 errorDomain:(id)a19 errorCode:(int64_t)a20 errorUserInfo:(id)a21 errorRecoverable:(int64_t)a22
{
  v46 = a5;
  v37 = a6;
  v43 = a6;
  v38 = a7;
  v45 = a7;
  v39 = a8;
  v42 = a8;
  v41 = a9;
  v25 = a13;
  v47 = a14;
  v44 = a15;
  v26 = a16;
  v27 = a17;
  v28 = a18;
  v29 = a19;
  v30 = a21;
  v48.receiver = self;
  v48.super_class = SUCoreSimulateEvent;
  v31 = [(SUCoreSimulateEvent *)&v48 init];
  v32 = v31;
  if (v31)
  {
    v31->_simAction = a3;
    v31->_simTrigger = a4;
    objc_storeStrong(&v31->_moduleName, a5);
    objc_storeStrong(&v32->_identityName, v37);
    objc_storeStrong(&v32->_fsmEvent, v38);
    objc_storeStrong(&v32->_fsmState, v39);
    objc_storeStrong(&v32->_alteration, a9);
    v32->_count = 0;
    v32->_startAt = a10;
    v32->_endAt = a11;
    v32->_duration = a12;
    objc_storeStrong(&v32->_untilStop, a13);
    objc_storeStrong(&v32->_assetBuildVersions, a14);
    objc_storeStrong(&v32->_assetProductVersions, a15);
    objc_storeStrong(&v32->_assetAttributesPlist, a16);
    objc_storeStrong(&v32->_assetState, a17);
    objc_storeStrong(&v32->_updateInfoPlist, a18);
    objc_storeStrong(&v32->_errorDomain, a19);
    v32->_errorCode = a20;
    objc_storeStrong(&v32->_errorUserInfo, a21);
    v32->_errorRecoverable = a22;
  }

  return v32;
}

- (SUCoreSimulateEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = SUCoreSimulateEvent;
  v5 = [(SUCoreSimulateEvent *)&v39 init];
  if (v5)
  {
    v5->_simAction = [v4 decodeInt64ForKey:@"simAction"];
    v5->_simTrigger = [v4 decodeInt64ForKey:@"simTrigger"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"moduleName"];
    moduleName = v5->_moduleName;
    v5->_moduleName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identityName"];
    identityName = v5->_identityName;
    v5->_identityName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fsmEvent"];
    fsmEvent = v5->_fsmEvent;
    v5->_fsmEvent = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fsmState"];
    fsmState = v5->_fsmState;
    v5->_fsmState = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"alteration"];
    alteration = v5->_alteration;
    v5->_alteration = v14;

    v5->_count = [v4 decodeIntForKey:@"count"];
    v5->_startAt = [v4 decodeIntForKey:@"startAt"];
    v5->_endAt = [v4 decodeIntForKey:@"endAt"];
    v5->_duration = [v4 decodeIntForKey:@"duration"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"untilStop"];
    untilStop = v5->_untilStop;
    v5->_untilStop = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"assetBuildVersions"];
    assetBuildVersions = v5->_assetBuildVersions;
    v5->_assetBuildVersions = v21;

    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"assetProductVersions"];
    assetProductVersions = v5->_assetProductVersions;
    v5->_assetProductVersions = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetAttributesPlist"];
    assetAttributesPlist = v5->_assetAttributesPlist;
    v5->_assetAttributesPlist = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetState"];
    assetState = v5->_assetState;
    v5->_assetState = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"updateInfoPlist"];
    updateInfoPlist = v5->_updateInfoPlist;
    v5->_updateInfoPlist = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"errorDomain"];
    errorDomain = v5->_errorDomain;
    v5->_errorDomain = v34;

    v5->_errorCode = [v4 decodeInt64ForKey:@"errorCode"];
    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"errorUserInfo"];
    errorUserInfo = v5->_errorUserInfo;
    v5->_errorUserInfo = v36;

    v5->_errorRecoverable = [v4 decodeIntForKey:@"errorRecoverable"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  simAction = self->_simAction;
  v5 = a3;
  [v5 encodeInt64:simAction forKey:@"simAction"];
  [v5 encodeInt64:self->_simTrigger forKey:@"simTrigger"];
  [v5 encodeObject:self->_moduleName forKey:@"moduleName"];
  [v5 encodeObject:self->_identityName forKey:@"identityName"];
  [v5 encodeObject:self->_fsmEvent forKey:@"fsmEvent"];
  [v5 encodeObject:self->_fsmState forKey:@"fsmState"];
  [v5 encodeObject:self->_alteration forKey:@"alteration"];
  [v5 encodeInt:self->_count forKey:@"count"];
  [v5 encodeInt:self->_startAt forKey:@"startAt"];
  [v5 encodeInt:self->_endAt forKey:@"endAt"];
  [v5 encodeInt:self->_duration forKey:@"duration"];
  [v5 encodeObject:self->_untilStop forKey:@"untilStop"];
  [v5 encodeObject:self->_assetBuildVersions forKey:@"assetBuildVersions"];
  [v5 encodeObject:self->_assetProductVersions forKey:@"assetProductVersions"];
  [v5 encodeObject:self->_assetAttributesPlist forKey:@"assetAttributesPlist"];
  [v5 encodeObject:self->_assetState forKey:@"assetState"];
  [v5 encodeObject:self->_updateInfoPlist forKey:@"updateInfoPlist"];
  [v5 encodeObject:self->_errorDomain forKey:@"errorDomain"];
  [v5 encodeInt64:self->_errorCode forKey:@"errorCode"];
  [v5 encodeObject:self->_errorUserInfo forKey:@"errorUserInfo"];
  [v5 encodeInt:LODWORD(self->_errorRecoverable) forKey:@"errorRecoverable"];
}

- (id)buildErrorWithDescription:(id)a3
{
  v4 = a3;
  v5 = [(SUCoreSimulateEvent *)self errorDomain];
  if (v5)
  {
    v6 = [(SUCoreSimulateEvent *)self errorDomain];
  }

  else
  {
    v6 = @"SUCoreError";
  }

  v7 = v6;

  if ([(SUCoreSimulateEvent *)self errorCode])
  {
    v8 = [(SUCoreSimulateEvent *)self errorCode];
  }

  else
  {
    v8 = 9900;
  }

  v9 = [(SUCoreSimulateEvent *)self errorUserInfo];
  v10 = MEMORY[0x1E695DF90];
  if (v9)
  {
    v11 = [(SUCoreSimulateEvent *)self errorUserInfo];
    v12 = [v10 dictionaryWithDictionary:v11];
  }

  else
  {
    v12 = [MEMORY[0x1E695DF90] dictionary];
  }

  [v12 setSafeObject:v4 forKey:*MEMORY[0x1E696A578]];
  v13 = [(SUCoreSimulateEvent *)self errorRecoverable];
  if (v13)
  {
    if (v13 == 2)
    {
      v14 = MEMORY[0x1E695E118];
      goto LABEL_15;
    }

    if (v13 == 1)
    {
      v14 = MEMORY[0x1E695E110];
LABEL_15:
      [v12 setSafeObject:v14 forKey:@"Recoverable"];
      goto LABEL_17;
    }

    v15 = +[SUCoreDiag sharedDiag];
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unknown value for errorRecoverable:%d", -[SUCoreSimulateEvent errorRecoverable](self, "errorRecoverable")];
    [v15 trackError:@"[SIMULATE] EVENT" forReason:v16 withResult:8116 withError:0];
  }

LABEL_17:
  v17 = [MEMORY[0x1E696ABC0] errorWithDomain:v7 code:v8 userInfo:v12];

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
  v3 = [(SUCoreSimulateEvent *)self moduleName];
  v4 = [v3 isEqualToString:@"fsm"];

  v27 = objc_alloc(MEMORY[0x1E696AEC0]);
  v28 = [(SUCoreSimulateEvent *)self _actionName];
  v34 = [(SUCoreSimulateEvent *)self _triggerName];
  if (v4)
  {
    v33 = [(SUCoreSimulateEvent *)self identityName];
    v32 = [(SUCoreSimulateEvent *)self fsmEvent];
    v31 = [(SUCoreSimulateEvent *)self fsmState];
    v30 = [(SUCoreSimulateEvent *)self alteration];
    v25 = [(SUCoreSimulateEvent *)self count];
    v23 = [(SUCoreSimulateEvent *)self startAt];
    v5 = [(SUCoreSimulateEvent *)self endAt];
    v29 = [(SUCoreSimulateEvent *)self assetBuildVersions];
    v6 = [(SUCoreSimulateEvent *)self assetProductVersions];
    v7 = [(SUCoreSimulateEvent *)self assetAttributesPlist];
    v8 = [(SUCoreSimulateEvent *)self assetState];
    v9 = [(SUCoreSimulateEvent *)self updateInfoPlist];
    v10 = [(SUCoreSimulateEvent *)self errorDomain];
    if (v10)
    {
      v11 = [(SUCoreSimulateEvent *)self errorDomain];
    }

    else
    {
      v11 = @"SUCoreError";
    }

    v14 = [SUCore errorNameForCode:[(SUCoreSimulateEvent *)self errorCode]];
    v15 = [SUCoreSimulateEvent nameForSimulateEventBoolean:[(SUCoreSimulateEvent *)self errorRecoverable]];
    v22 = v5;
    v16 = v28;
    v17 = [v27 initWithFormat:@"action:%@ trigger:%@ fsm:%@ event:%@ state:%@ alteration:%@ count:%d startAt:%d endAt:%d assetBuildVersions:%@ assetProductVersions:%@ assetAttributesPlist:%@ assetState:%@ updateInfoPlist:%@ errorDomain:%@ errorCode:%@ errorRecoverable:%@", v28, v34, v33, v32, v31, v30, v25, v23, v22, v29, v6, v7, v8, v9, v11, v14, v15];

    if (v10)
    {
    }
  }

  else
  {
    v33 = [(SUCoreSimulateEvent *)self moduleName];
    v32 = [(SUCoreSimulateEvent *)self identityName];
    v26 = [(SUCoreSimulateEvent *)self count];
    v24 = [(SUCoreSimulateEvent *)self startAt];
    v12 = [(SUCoreSimulateEvent *)self endAt];
    v13 = [(SUCoreSimulateEvent *)self duration];
    v31 = [(SUCoreSimulateEvent *)self untilStop];
    v30 = [(SUCoreSimulateEvent *)self assetBuildVersions];
    v29 = [(SUCoreSimulateEvent *)self assetProductVersions];
    v6 = [(SUCoreSimulateEvent *)self assetAttributesPlist];
    v7 = [(SUCoreSimulateEvent *)self assetState];
    v8 = [(SUCoreSimulateEvent *)self updateInfoPlist];
    v9 = [(SUCoreSimulateEvent *)self errorDomain];
    if (v9)
    {
      v10 = [(SUCoreSimulateEvent *)self errorDomain];
    }

    else
    {
      v10 = @"SUCoreError";
    }

    v18 = [SUCore errorNameForCode:[(SUCoreSimulateEvent *)self errorCode]];
    v19 = [SUCoreSimulateEvent nameForSimulateEventBoolean:[(SUCoreSimulateEvent *)self errorRecoverable]];
    v21 = v12;
    v16 = v28;
    v17 = [v27 initWithFormat:@"action:%@ trigger:%@ module:%@ function:%@ count:%d startAt:%d endAt:%d duration:%d untilStop:%@ assetBuildVersions:%@ assetProductVersions:%@ assetAttributesPlist:%@ assetState:%@ updateInfoPlist:%@ errorDomain:%@ errorCode:%@ errorRecoverable:%@", v28, v34, v33, v32, v26, v24, v21, v13, v31, v30, v29, v6, v7, v8, v10, v18, v19];

    if (!v9)
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
  v24 = [(SUCoreSimulateEvent *)self _actionName];
  v23 = [(SUCoreSimulateEvent *)self _triggerName];
  v22 = [(SUCoreSimulateEvent *)self identityName];
  v21 = [(SUCoreSimulateEvent *)self fsmEvent];
  v20 = [(SUCoreSimulateEvent *)self fsmState];
  v19 = [(SUCoreSimulateEvent *)self alteration];
  v16 = [(SUCoreSimulateEvent *)self count];
  v15 = [(SUCoreSimulateEvent *)self startAt];
  v14 = [(SUCoreSimulateEvent *)self endAt];
  v18 = [(SUCoreSimulateEvent *)self assetBuildVersions];
  v3 = [(SUCoreSimulateEvent *)self assetProductVersions];
  v4 = [(SUCoreSimulateEvent *)self assetAttributesPlist];
  v5 = [(SUCoreSimulateEvent *)self assetState];
  v6 = [(SUCoreSimulateEvent *)self updateInfoPlist];
  v7 = [(SUCoreSimulateEvent *)self errorDomain];
  if (v7)
  {
    v8 = [(SUCoreSimulateEvent *)self errorDomain];
  }

  else
  {
    v8 = @"SUCoreError";
  }

  v9 = [SUCore errorNameForCode:[(SUCoreSimulateEvent *)self errorCode]];
  v10 = [(SUCoreSimulateEvent *)self errorUserInfo];
  v11 = [SUCoreSimulateEvent nameForSimulateEventBoolean:[(SUCoreSimulateEvent *)self errorRecoverable]];
  v12 = [v17 initWithFormat:@"\n[>>>\n               action: %@\n              trigger: %@\n                  fsm: %@\n                event: %@\n                state: %@\n           alteration: %@\n                count: %d\n              startAt: %d\n                endAt: %d\n   assetBuildVersions: %@\n assetProductVersions: %@\n assetAttributesPlist: %@\n           assetState: %@\n      updateInfoPlist: %@\n          errorDomain: %@\n            errorCode: %@\n        errorUserInfo: %@\n     errorRecoverable: %@\n<<<]", v24, v23, v22, v21, v20, v19, v16, v15, v14, v18, v3, v4, v5, v6, v8, v9, v10, v11];

  if (v7)
  {
  }

  return v12;
}

- (id)_descriptionStandard
{
  v18 = objc_alloc(MEMORY[0x1E696AEC0]);
  v24 = [(SUCoreSimulateEvent *)self _actionName];
  v23 = [(SUCoreSimulateEvent *)self _triggerName];
  v22 = [(SUCoreSimulateEvent *)self moduleName];
  v21 = [(SUCoreSimulateEvent *)self identityName];
  v17 = [(SUCoreSimulateEvent *)self count];
  v16 = [(SUCoreSimulateEvent *)self startAt];
  v15 = [(SUCoreSimulateEvent *)self endAt];
  v14 = [(SUCoreSimulateEvent *)self duration];
  v20 = [(SUCoreSimulateEvent *)self untilStop];
  v19 = [(SUCoreSimulateEvent *)self assetBuildVersions];
  v3 = [(SUCoreSimulateEvent *)self assetProductVersions];
  v4 = [(SUCoreSimulateEvent *)self assetAttributesPlist];
  v5 = [(SUCoreSimulateEvent *)self assetState];
  v6 = [(SUCoreSimulateEvent *)self updateInfoPlist];
  v7 = [(SUCoreSimulateEvent *)self errorDomain];
  if (v7)
  {
    v8 = [(SUCoreSimulateEvent *)self errorDomain];
  }

  else
  {
    v8 = @"SUCoreError";
  }

  v9 = [SUCore errorNameForCode:[(SUCoreSimulateEvent *)self errorCode]];
  v10 = [(SUCoreSimulateEvent *)self errorUserInfo];
  v11 = [SUCoreSimulateEvent nameForSimulateEventBoolean:[(SUCoreSimulateEvent *)self errorRecoverable]];
  v12 = [v18 initWithFormat:@"\n[>>>\n               action: %@\n              trigger: %@\n               module: %@\n             function: %@\n                count: %d\n              startAt: %d\n                endAt: %d\n             duration: %d\n            untilStop: %@\n   assetBuildVersions: %@\n assetProductVersions: %@\n assetAttributesPlist: %@\n           assetState: %@\n      updateInfoPlist: %@\n          errorDomain: %@\n            errorCode: %@\n        errorUserInfo: %@\n     errorRecoverable: %@\n<<<]", v24, v23, v22, v21, v17, v16, v15, v14, v20, v19, v3, v4, v5, v6, v8, v9, v10, v11];

  if (v7)
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

+ (id)nameForSimulateEventBoolean:(int64_t)a3
{
  if (a3 >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SUCoreSimulateEventBoolean(%d)", a3];
  }

  else
  {
    v4 = off_1E86FC700[a3];
  }

  return v4;
}

@end