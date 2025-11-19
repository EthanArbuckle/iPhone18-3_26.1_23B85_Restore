@interface NSDictionary
- (BOOL)areRequirementsMetByBrain;
- (BOOL)areRequirementsMetByBrain:(id *)a3 error:(id *)a4;
- (BOOL)areRequirementsMetByBrainFeatures:(id)a3 missingRequirements:(id *)a4 error:(id *)a5;
@end

@implementation NSDictionary

- (BOOL)areRequirementsMetByBrain
{
  v3 = _MADLog(@"Brain");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = _brainSupportedFeatures;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[MAB] Brain features: %@", &v5, 0xCu);
  }

  return [(NSDictionary *)self areRequirementsMetByBrainFeatures:_brainSupportedFeatures];
}

- (BOOL)areRequirementsMetByBrain:(id *)a3 error:(id *)a4
{
  v7 = _MADLog(@"Brain");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = _brainSupportedFeatures;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "[MAB] Brain features: %@", &v9, 0xCu);
  }

  return [(NSDictionary *)self areRequirementsMetByBrainFeatures:_brainSupportedFeatures missingRequirements:a3 error:a4];
}

- (BOOL)areRequirementsMetByBrainFeatures:(id)a3 missingRequirements:(id *)a4 error:(id *)a5
{
  v8 = a3;
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = &__NSDictionary0__struct;
  }

  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v10 = self;
  v11 = [(NSDictionary *)v10 countByEnumeratingWithState:&v45 objects:v59 count:16];
  if (!v11)
  {

    v27 = 0;
LABEL_24:
    v29 = 0;
    v28 = 1;
    if (a4)
    {
      goto LABEL_37;
    }

    goto LABEL_39;
  }

  v12 = v11;
  v40 = a5;
  v41 = a4;
  v43 = v9;
  v44 = 0;
  v13 = *v46;
  p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
  v15 = &off_4F7F10;
  while (2)
  {
    v16 = 0;
    v42 = v12;
    do
    {
      if (*v46 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v17 = *(*(&v45 + 1) + 8 * v16);
      v18 = [(NSDictionary *)v10 objectForKey:v17];
      if (!v18)
      {
        v30 = _MADLog(@"Brain");
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v52 = v17;
          _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "[MAB] Internal Error - no value for required feature: %@", buf, 0xCu);
        }

        v57 = NSDebugDescriptionErrorKey;
        v31 = [NSString stringWithFormat:@"no value for required feature: %@", v17];
        v58 = v31;
        v32 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
        v29 = [NSError errorWithDomain:@"MobileAssetBrainErrorDomain" code:902 userInfo:v32];
        goto LABEL_32;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v33 = _MADLog(@"Brain");
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = objc_opt_class();
          v35 = NSStringFromClass(v34);
          *buf = 138412802;
          v52 = v17;
          v53 = 2112;
          v54 = v18;
          v55 = 2112;
          v56 = v35;
          _os_log_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "[MAB] Required feature '%@' is not a number: %@ [%@]", buf, 0x20u);
        }

        v49 = NSDebugDescriptionErrorKey;
        v36 = objc_opt_class();
        v31 = NSStringFromClass(v36);
        v32 = [NSString stringWithFormat:@"Required feature '%@' is not a number: %@ [%@]", v17, v18, v31];
        v50 = v32;
        v37 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
        v29 = [NSError errorWithDomain:@"MobileAssetBrainErrorDomain" code:903 userInfo:v37];

        v9 = v43;
LABEL_32:

        v28 = 0;
        if (v40)
        {
          a4 = v41;
          if (v29)
          {
            v38 = v29;
            v28 = 0;
            *v40 = v29;
          }
        }

        else
        {
          a4 = v41;
        }

        goto LABEL_36;
      }

      v19 = [v9 objectForKey:v17];
      if (v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = v15;
      }

      if ([v20 compare:v18] == -1)
      {
        v21 = v13;
        v22 = v10;
        v23 = p_weak_ivar_lyt;
        v24 = v15;
        v25 = v44;
        if (!v44)
        {
          v25 = [NSMutableDictionary dictionaryWithCapacity:1];
        }

        v26 = [NSArray arrayWithObjects:v18, v20, 0];
        v44 = v25;
        [v25 setObject:v26 forKey:v17];

        v15 = v24;
        p_weak_ivar_lyt = v23;
        v10 = v22;
        v13 = v21;
        v12 = v42;
        v9 = v43;
      }

      v16 = v16 + 1;
    }

    while (v12 != v16);
    v12 = [(NSDictionary *)v10 countByEnumeratingWithState:&v45 objects:v59 count:16];
    if (v12)
    {
      continue;
    }

    break;
  }

  v27 = v44;
  if (!v44)
  {
    a4 = v41;
    goto LABEL_24;
  }

  a4 = v41;
  if (![v44 count])
  {
    v27 = v44;
    goto LABEL_24;
  }

  v28 = 0;
  v29 = 0;
LABEL_36:
  v27 = v44;
  if (!a4)
  {
    goto LABEL_39;
  }

LABEL_37:
  if (v27)
  {
    v27 = v27;
    *a4 = v27;
  }

LABEL_39:

  return v28;
}

@end