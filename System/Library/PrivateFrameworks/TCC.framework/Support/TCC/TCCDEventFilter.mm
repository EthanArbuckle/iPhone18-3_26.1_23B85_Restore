@interface TCCDEventFilter
- (BOOL)matches:(id)matches;
- (TCCDEventFilter)initWithCriteria:(id)criteria;
@end

@implementation TCCDEventFilter

- (TCCDEventFilter)initWithCriteria:(id)criteria
{
  criteriaCopy = criteria;
  v38.receiver = self;
  v38.super_class = TCCDEventFilter;
  v5 = [(TCCDEventFilter *)&v38 init];
  if (!v5)
  {
    goto LABEL_25;
  }

  v6 = _CFXPCCreateCFObjectFromXPCObject();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = tcc_events_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100038248();
    }

LABEL_32:

    v21 = 0;
    goto LABEL_33;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = v6;
  v29 = [v7 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (!v29)
  {
    goto LABEL_24;
  }

  v8 = *v35;
  p_superclass = TCCDAuthorizationRightState.superclass;
  v26 = v6;
  v27 = criteriaCopy;
  v28 = v7;
  v25 = *v35;
  while (2)
  {
    v10 = 0;
    do
    {
      if (*v35 != v8)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v34 + 1) + 8 * v10);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v24 = tcc_events_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_1000382CC();
        }

        goto LABEL_38;
      }

      currentPlatform = [p_superclass + 149 currentPlatform];
      v13 = [currentPlatform serviceByName:v11];

      if (!v13)
      {
        v24 = tcc_events_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_10003846C(v11, v24);
        }

LABEL_38:

        v6 = v26;
        criteriaCopy = v27;
        goto LABEL_32;
      }

      v14 = [v7 objectForKeyedSubscript:v11];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v15 = tcc_events_log();
          v6 = v26;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_100038350();
          }

LABEL_31:

          criteriaCopy = v27;
          goto LABEL_32;
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v15 = v14;
        v16 = [v15 countByEnumeratingWithState:&v30 objects:v39 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v31;
          while (2)
          {
            v19 = 0;
            do
            {
              if (*v31 != v18)
              {
                objc_enumerationMutation(v15);
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v22 = tcc_events_log();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                {
                  sub_1000383D4();
                }

                v6 = v26;
                v7 = v28;
                goto LABEL_31;
              }

              ++v19;
            }

            while (v17 != v19);
            v17 = [v15 countByEnumeratingWithState:&v30 objects:v39 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        v7 = v28;
        v8 = v25;
        p_superclass = (TCCDAuthorizationRightState + 8);
      }

      v10 = v10 + 1;
    }

    while (v10 != v29);
    criteriaCopy = v27;
    v29 = [v7 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v29)
    {
      continue;
    }

    break;
  }

LABEL_24:

  servicesToSubjects = v5->_servicesToSubjects;
  v5->_servicesToSubjects = v7;

LABEL_25:
  v21 = v5;
LABEL_33:

  return v21;
}

- (BOOL)matches:(id)matches
{
  matchesCopy = matches;
  if ([(NSDictionary *)self->_servicesToSubjects count])
  {
    servicesToSubjects = self->_servicesToSubjects;
    service = [matchesCopy service];
    name = [service name];
    v8 = [(NSDictionary *)servicesToSubjects objectForKeyedSubscript:name];

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v8 BOOLValue] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_msgSend(matchesCopy, "subjectIdentifier"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "containsObject:", v9), v9, (v10))
    {
      v11 = 1;
    }

    else
    {
      v12 = [(NSDictionary *)self->_servicesToSubjects objectForKeyedSubscript:@"kTCCServiceAll"];
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([v12 BOOLValue])
      {
        v11 = 1;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          subjectIdentifier = [matchesCopy subjectIdentifier];
          v11 = [v12 containsObject:subjectIdentifier];
        }

        else
        {
          v11 = 0;
        }
      }
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

@end