@interface RBPersonaManager
- (BOOL)isConcretePersona:(id)persona;
- (BOOL)personaForIdentity:(id)identity context:(id)context personaUID:(unsigned int *)d personaUniqueString:(id *)string;
- (BOOL)personaRequiredForExtensionContext:(id)context serviceDict:(id)dict;
- (RBPersonaManager)init;
- (id)personalPersonaUniqueString;
@end

@implementation RBPersonaManager

- (RBPersonaManager)init
{
  v24 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = RBPersonaManager;
  v2 = [(RBPersonaManager *)&v19 init];
  v3 = v2;
  if (v2)
  {
    v2->_personasSupported = 0;
    v2->_lock._os_unfair_lock_opaque = 0;
    personalPersonaUniqueString = v2->_personalPersonaUniqueString;
    v2->_personalPersonaUniqueString = 0;

    if (objc_opt_class())
    {
      v5 = [MEMORY[0x277D77C18] personaAttributesForPersonaType:3];
      v6 = [MEMORY[0x277D77C18] personaAttributesForPersonaType:0];
      v7 = v6;
      if (v5)
      {
        v8 = v6 == 0;
      }

      else
      {
        v8 = 1;
      }

      v9 = !v8;
      v3->_personasSupported = v9;
      if (!v8)
      {
        v3->_personalPersonaUID = [v6 userPersona_id];
        userPersonaUniqueString = [v7 userPersonaUniqueString];
        v11 = v3->_personalPersonaUniqueString;
        v3->_personalPersonaUniqueString = userPersonaUniqueString;
      }

      mEMORY[0x277D77C00] = [MEMORY[0x277D77C00] sharedManager];
      isSharedIPad = [mEMORY[0x277D77C00] isSharedIPad];

      if (isSharedIPad)
      {
        v14 = "YES";
      }

      else
      {
        v14 = "NO";
      }
    }

    else
    {
      v14 = "NO";
    }

    v15 = rbs_job_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if (v3->_personasSupported)
      {
        v16 = "YES";
      }

      else
      {
        v16 = "NO";
      }

      *buf = 136315394;
      v21 = v16;
      v22 = 2080;
      v23 = v14;
      _os_log_impl(&dword_262485000, v15, OS_LOG_TYPE_DEFAULT, "Personas are supported: %s; isSharedIPad: %s", buf, 0x16u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)personaForIdentity:(id)identity context:(id)context personaUID:(unsigned int *)d personaUniqueString:(id *)string
{
  v37[1] = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  contextCopy = context;
  v30 = identityCopy;
  if (![(RBPersonaManager *)self personasAreSupported])
  {
    v21 = 0;
    goto LABEL_24;
  }

  stringCopy = string;
  Current = CFAbsoluteTimeGetCurrent();
  personaString = [identityCopy personaString];
  managedPersona = [contextCopy managedPersona];
  v14 = 0;
  v15 = 0;
  v16 = &personaString;
  v37[0] = managedPersona;
  personalPersonaUID = -1;
  do
  {
    v18 = *v16;
    if (*v16)
    {
      *buf = 1;
      v19 = v18;
      [v18 UTF8String];
      kpersona_find();
    }

    v20 = v15;
    v15 = 1;
    v16 = v37;
  }

  while ((v20 & 1) == 0);
  if ([contextCopy lsPersona])
  {
    v35 = 0;
    memset(v34, 0, sizeof(v34));
    v33 = 0u;
    v32 = 0u;
    memset(&buf[4], 0, 48);
    *buf = 2;
    if (!kpersona_info())
    {
      personalPersonaUID = *&buf[4];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:v34 + 4];

      goto LABEL_14;
    }
  }

  if (objc_opt_class())
  {
    personalPersonaUID = self->_personalPersonaUID;
    v22 = self->_personalPersonaUniqueString;

LABEL_14:
    v14 = v22;
    if (d)
    {
      *d = personalPersonaUID;
    }

    if (stringCopy)
    {
      v23 = v22;
      *stringCopy = v22;
    }

    v21 = 1;
    goto LABEL_19;
  }

  v21 = 0;
LABEL_19:
  v24 = CFAbsoluteTimeGetCurrent();
  v25 = rbs_job_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544386;
    *&buf[4] = identityCopy;
    *&buf[12] = 2080;
    *&buf[14] = "[RBPersonaManager personaForIdentity:context:personaUID:personaUniqueString:]";
    *&buf[22] = 2048;
    *&buf[24] = (v24 - Current) * 1000.0;
    *&buf[32] = 1024;
    *&buf[34] = personalPersonaUID;
    *&buf[38] = 2114;
    *&buf[40] = v14;
    _os_log_impl(&dword_262485000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: %s required %f ms (wallclock); resolved to {%u, %{public}@}", buf, 0x30u);
  }

  for (i = 1; i != -1; --i)
  {
  }

LABEL_24:
  v27 = *MEMORY[0x277D85DE8];
  return v21;
}

- (id)personalPersonaUniqueString
{
  if ([(RBPersonaManager *)self personasAreSupported])
  {
    v3 = self->_personalPersonaUniqueString;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isConcretePersona:(id)persona
{
  v7 = *MEMORY[0x277D85DE8];
  personaCopy = persona;
  if ([(RBPersonaManager *)self personasAreSupported])
  {
    [personaCopy UTF8String];
    kpersona_find();
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)personaRequiredForExtensionContext:(id)context serviceDict:(id)dict
{
  dictCopy = dict;
  identity = [context identity];
  personaString = [identity personaString];
  if (personaString)
  {
    v8 = xpc_dictionary_get_value(dictCopy, "PersonaEnterprise");
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end