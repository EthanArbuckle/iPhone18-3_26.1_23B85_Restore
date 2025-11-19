@interface RBPersonaManager
- (BOOL)isConcretePersona:(id)a3;
- (BOOL)personaForIdentity:(id)a3 context:(id)a4 personaUID:(unsigned int *)a5 personaUniqueString:(id *)a6;
- (BOOL)personaRequiredForExtensionContext:(id)a3 serviceDict:(id)a4;
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
        v10 = [v7 userPersonaUniqueString];
        v11 = v3->_personalPersonaUniqueString;
        v3->_personalPersonaUniqueString = v10;
      }

      v12 = [MEMORY[0x277D77C00] sharedManager];
      v13 = [v12 isSharedIPad];

      if (v13)
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

- (BOOL)personaForIdentity:(id)a3 context:(id)a4 personaUID:(unsigned int *)a5 personaUniqueString:(id *)a6
{
  v37[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v30 = v10;
  if (![(RBPersonaManager *)self personasAreSupported])
  {
    v21 = 0;
    goto LABEL_24;
  }

  v29 = a6;
  Current = CFAbsoluteTimeGetCurrent();
  v36 = [v10 personaString];
  v13 = [v11 managedPersona];
  v14 = 0;
  v15 = 0;
  v16 = &v36;
  v37[0] = v13;
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
  if ([v11 lsPersona])
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
    if (a5)
    {
      *a5 = personalPersonaUID;
    }

    if (v29)
    {
      v23 = v22;
      *v29 = v22;
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
    *&buf[4] = v10;
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

- (BOOL)isConcretePersona:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(RBPersonaManager *)self personasAreSupported])
  {
    [v4 UTF8String];
    kpersona_find();
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)personaRequiredForExtensionContext:(id)a3 serviceDict:(id)a4
{
  v5 = a4;
  v6 = [a3 identity];
  v7 = [v6 personaString];
  if (v7)
  {
    v8 = xpc_dictionary_get_value(v5, "PersonaEnterprise");
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end