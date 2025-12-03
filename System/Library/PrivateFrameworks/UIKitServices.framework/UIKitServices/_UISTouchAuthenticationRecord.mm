@interface _UISTouchAuthenticationRecord
+ (id)build:(id)build;
+ (id)new;
- (BOOL)isEqual:(id)equal;
- (_UISTouchAuthenticationRecord)init;
- (_UISTouchAuthenticationRecord)initWithSecurityAnalysis:(id)analysis timestamp:(double)timestamp hostBundleId:(id)id hostSDKVersion:(id)version hostIsInternal:(BOOL)internal serviceBundleId:(id)bundleId;
- (double)timeSinceCreation;
- (id)_init;
- (id)analyticsPayloadWithDuration:(uint64_t)duration;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
@end

@implementation _UISTouchAuthenticationRecord

+ (id)build:(id)build
{
  v60 = *MEMORY[0x1E69E9840];
  buildCopy = build;
  _init = [(_UISTouchAuthenticationRecord *)[_UISMutableTouchAuthenticationRecord alloc] _init];
  buildCopy[2](buildCopy, _init);

  v7 = [_init copy];
  serviceBundleId = [v7 serviceBundleId];

  if (!serviceBundleId)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISTouchAuthenticationRecord.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"[record serviceBundleId]"}];
  }

  serviceBundleId2 = [v7 serviceBundleId];
  v10 = [_UISTouchAuthenticationVerifier verifierForServiceBundleId:serviceBundleId2];

  v11 = [v10 verifyRecord:v7];
  *(v7 + 65) = [v11 passesSecurityAnalysis];
  if ([v10 shouldSuppressInauthenticTouches])
  {
    passesSecurityAnalysis = [v11 passesSecurityAnalysis];
  }

  else
  {
    passesSecurityAnalysis = 1;
  }

  if ([v7 hostIsInternal])
  {
    v13 = os_variant_allows_internal_security_policies() ^ 1;
  }

  else
  {
    v13 = 0;
  }

  *(v7 + 66) = v13 | passesSecurityAnalysis;
  if ((*(v7 + 65) & 1) == 0)
  {
    v14 = _UISViewServiceHitTestLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
      securityAnalysis = [v7 securityAnalysis];
      hostBundleId = [v7 hostBundleId];
      v18 = hostBundleId;
      if (hostBundleId)
      {
        v19 = hostBundleId;
      }

      else
      {
        v19 = @"(unknown)";
      }

      [v15 setValue:v19 forKey:@"host"];

      if (*(v7 + 40))
      {
        v20 = *(v7 + 40);
      }

      else
      {
        v20 = @"(unknown)";
      }

      [v15 setValue:v20 forKey:@"service"];
      v21 = NSStringFromBOOL();
      [v15 setValue:v21 forKey:@"hti"];

      if (securityAnalysis)
      {
        v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(securityAnalysis, "hasInsecureFilter")}];
        [v15 setValue:v22 forKey:@"inf"];

        v23 = MEMORY[0x1E696AD98];
        [securityAnalysis cumulativeOpacity];
        *&v25 = v24;
        v26 = 0.0;
        v27 = v24 == 0.0;
        v28 = 0.0;
        if (!v27)
        {
          v29 = fabs(*&v25);
          v30 = *&v25 / v29;
          v31 = log10(v29);
          v32 = __exp10(2.0 - vcvtpd_s64_f64(v31));
          v25 = round(v29 * v32);
          v28 = v30 * (v25 / v32);
        }

        v33 = [v23 numberWithDouble:{v28, v25}];
        [v15 setValue:v33 forKey:@"a"];

        v34 = [_UISTouchAuthenticationVerifier verifierForServiceBundleId:*(v7 + 40)];
        LODWORD(v33) = [v34 transformGradeFailureReasonsForRecord:v7];

        v35 = NSStringFromBOOL();
        [v15 setValue:v35 forKey:@"tf"];

        memset(&v58, 0, sizeof(v58));
        [securityAnalysis cumulativeLayerTransform];
        CATransform3DGetAffineTransform(&transform, &v59);
        CGAffineTransformDecompose(&v58, &transform);
        v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d %d %d (%.2f) %d %d (%.2f, %.2f) %d (%.2f) %d (%.2f, %.2f) %d", v33 & 1, (v33 >> 1) & 1, (v33 >> 2) & 1, *&v58.rotation, (v33 >> 3) & 1, (v33 >> 4) & 1, *&v58.scale.width, *&v58.scale.height, (v33 >> 5) & 1, *&v58.horizontalShear, (v33 >> 6) & 1, *&v58.translation.dx, *&v58.translation.dy, (v33 >> 7) & 1];
        [v15 setValue:? forKey:?];
        securityAnalysis2 = [v7 securityAnalysis];
        LODWORD(v35) = [securityAnalysis2 occlusionMask];

        v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d %d %d %d", (v35 >> 1) & 1, (v35 >> 2) & 1, (v35 >> 3) & 1, (v35 >> 4) & 1];
        [v15 setValue:v37 forKey:@"occ_components"];
        v38 = MEMORY[0x1E696AD98];
        securityAnalysis3 = [v7 securityAnalysis];
        [securityAnalysis3 occlusionPercentage];
        if (v40 != 0.0)
        {
          v41 = v40;
          v42 = fabs(v41);
          v43 = v41 / v42;
          v44 = log10(v42);
          v45 = __exp10(2.0 - vcvtpd_s64_f64(v44));
          v26 = v43 * (round(v42 * v45) / v45);
        }

        v46 = [v38 numberWithDouble:v26];
        [v15 setValue:v46 forKey:@"ocp"];

        v47 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(securityAnalysis, "parentsHaveInsecureLayerProperties")}];
        [v15 setValue:v47 forKey:@"pip"];

        v48 = [MEMORY[0x1E696AD98] numberWithBool:*(v7 + 65)];
        [v15 setValue:v48 forKey:@"default"];

        [v15 setValue:*(v7 + 24) forKey:@"sdkVersion"];
      }

      LODWORD(v59.m11) = 134349314;
      *(&v59.m11 + 4) = v7;
      WORD2(v59.m12) = 2114;
      *(&v59.m12 + 6) = v15;
      _os_log_impl(&dword_195FF3000, v14, OS_LOG_TYPE_DEFAULT, "Hit test info for record %{public}p: %{public}@", &v59, 0x16u);
    }

    failureReasons = [v11 failureReasons];

    if (failureReasons)
    {
      v50 = _UISViewServiceHitTestLogger();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = objc_opt_class();
        v52 = v51;
        failureReasons2 = [v11 failureReasons];
        LODWORD(v59.m11) = 138543874;
        *(&v59.m11 + 4) = v51;
        WORD2(v59.m12) = 2050;
        *(&v59.m12 + 6) = v7;
        HIWORD(v59.m13) = 2114;
        *&v59.m14 = failureReasons2;
        _os_log_impl(&dword_195FF3000, v50, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p> Touch failed authentication for the following reasons:%{public}@", &v59, 0x20u);
      }
    }
  }

  *(v7 + 56) = mach_continuous_time();

  return v7;
}

- (id)_init
{
  if (result)
  {
    v1 = result;
    v2 = objc_opt_class();
    if (v2 != objc_opt_class())
    {
      v3 = objc_opt_class();
      if (v3 != objc_opt_class())
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:sel__init object:v1 file:@"_UISTouchAuthenticationRecord.m" lineNumber:127 description:@"_UISTouchAuthenticationRecord cannot be subclassed"];
      }
    }

    v5.receiver = v1;
    v5.super_class = _UISTouchAuthenticationRecord;
    return objc_msgSendSuper2(&v5, sel_init);
  }

  return result;
}

- (_UISTouchAuthenticationRecord)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_UISTouchAuthenticationRecord init]"];
  [currentHandler handleFailureInFunction:v4 file:@"_UISTouchAuthenticationRecord.m" lineNumber:116 description:@"cannot directly allocate _UISTouchAuthenticationRecord"];

  return 0;
}

+ (id)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[_UISTouchAuthenticationRecord new]"];
  [currentHandler handleFailureInFunction:v3 file:@"_UISTouchAuthenticationRecord.m" lineNumber:121 description:@"cannot directly allocate _UISTouchAuthenticationRecord"];

  return 0;
}

- (unint64_t)hash
{
  v3 = [(BKSWindowServerHitTestSecurityAnalysis *)self->_securityAnalysis hash];
  v4 = [(NSString *)self->_hostBundleId hash];
  v5 = [(NSString *)self->_hostSDKVersion hash];
  v6 = [(NSString *)self->_serviceBundleId hash];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_serviceInstanceIdentifier];
  v8 = [v7 hash];

  v9 = 0x10000;
  if (!self->_hostIsInternal)
  {
    v9 = 0;
  }

  return MEMORY[0x1EEDF0120](v4 ^ v3 ^ v5 ^ v6 ^ v8 ^ v9);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = BSEqualObjects() && BSEqualObjects() && BSEqualObjects() && *(v5 + 32) == self->_hostIsInternal && BSEqualObjects() && v5[6] == self->_serviceInstanceIdentifier;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v4 = [formatterCopy appendObject:self->_securityAnalysis withName:@"securityAnalysis"];
  v5 = [formatterCopy appendObject:self->_hostBundleId withName:@"hostBundleId"];
  v6 = [formatterCopy appendObject:self->_hostSDKVersion withName:@"hostSDKVersion"];
  v7 = [formatterCopy appendBool:self->_hostIsInternal withName:@"hostIsInternal"];
  v8 = [formatterCopy appendObject:self->_serviceBundleId withName:@"serviceBundleId"];
  v9 = [formatterCopy appendInteger:self->_serviceInstanceIdentifier withName:@"serviceInstanceIdentifier"];
}

- (id)analyticsPayloadWithDuration:(uint64_t)duration
{
  if (duration)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    securityAnalysis = [duration securityAnalysis];
    hostBundleId = [duration hostBundleId];
    v7 = hostBundleId;
    if (hostBundleId)
    {
      v8 = hostBundleId;
    }

    else
    {
      v8 = @"(unknown)";
    }

    [v4 setValue:v8 forKey:@"hostBundleId"];

    if (*(duration + 40))
    {
      v9 = *(duration + 40);
    }

    else
    {
      v9 = @"(unknown)";
    }

    [v4 setValue:v9 forKey:@"serviceBundleId"];
    v10 = [MEMORY[0x1E696AD98] numberWithBool:*(duration + 65)];
    [v4 setValue:v10 forKey:@"touchIsAuthentic"];

    v11 = NSStringFromBOOL();
    [v4 setValue:v11 forKey:@"hasHitTestInfo"];

    if (securityAnalysis)
    {
      v12 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(securityAnalysis, "occlusionMask") != 0}];
      [v4 setValue:v12 forKey:@"detectedOcclusion"];

      v13 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(securityAnalysis, "hasInsecureFilter")}];
      [v4 setValue:v13 forKey:@"hasInsecureFilter"];

      v14 = MEMORY[0x1E696AD98];
      [securityAnalysis cumulativeOpacity];
      *&v16 = v15;
      v17 = 0.0;
      v18 = v15 == 0.0;
      v19 = 0.0;
      if (!v18)
      {
        v20 = fabs(*&v16);
        v21 = *&v16 / v20;
        v22 = log10(v20);
        v23 = __exp10(2.0 - vcvtpd_s64_f64(v22));
        v16 = round(v20 * v23);
        v19 = v21 * (v16 / v23);
      }

      v24 = [v14 numberWithDouble:{v19, v16}];
      [v4 setValue:v24 forKey:@"cumulativeOpacity"];

      v25 = [_UISTouchAuthenticationVerifier verifierForServiceBundleId:*(duration + 40)];
      LODWORD(v24) = [v25 transformGradeFailureReasonsForRecord:duration];

      v26 = NSStringFromBOOL();
      [v4 setValue:v26 forKey:@"hasInvalidTransform"];

      v27 = [MEMORY[0x1E696AD98] numberWithInt:v24 & 1];
      [v4 setValue:v27 forKey:@"transformFailFiniteTransform"];

      v28 = [MEMORY[0x1E696AD98] numberWithInt:(v24 >> 1) & 1];
      [v4 setValue:v28 forKey:@"transformFailAffineTransform"];

      v29 = [MEMORY[0x1E696AD98] numberWithInt:(v24 >> 2) & 1];
      [v4 setValue:v29 forKey:@"transformFailAllowedRotation"];

      v30 = [MEMORY[0x1E696AD98] numberWithInt:(v24 >> 3) & 1];
      [v4 setValue:v30 forKey:@"transformFailUniformScale"];

      v31 = [MEMORY[0x1E696AD98] numberWithInt:(v24 >> 4) & 1];
      [v4 setValue:v31 forKey:@"transformFailAllowedScale"];

      v32 = [MEMORY[0x1E696AD98] numberWithInt:(v24 >> 5) & 1];
      [v4 setValue:v32 forKey:@"transformFailAllowedShear"];

      v33 = [MEMORY[0x1E696AD98] numberWithInt:(v24 >> 6) & 1];
      [v4 setValue:v33 forKey:@"transformFailAllowedTranslation"];

      v34 = [MEMORY[0x1E696AD98] numberWithInt:(v24 >> 7) & 1];
      [v4 setValue:v34 forKey:@"transformFailAllowedShift"];

      v35 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(securityAnalysis, "parentsHaveInsecureLayerProperties")}];
      [v4 setValue:v35 forKey:@"parentsHaveInsecureLayerProperties"];

      v36 = MEMORY[0x1E696AD98];
      securityAnalysis2 = [duration securityAnalysis];
      [securityAnalysis2 occlusionPercentage];
      if (v38 != 0.0)
      {
        v39 = v38;
        v40 = fabs(v39);
        v41 = v39 / v40;
        v42 = log10(v40);
        v43 = __exp10(2.0 - vcvtpd_s64_f64(v42));
        v17 = v41 * (round(v40 * v43) / v43);
      }

      v44 = [v36 numberWithDouble:v17];
      [v4 setValue:v44 forKey:@"occlusionPercentage"];

      if (a2)
      {
        v45 = MEMORY[0x1E696AD98];
        timeSinceCreation = [(_UISTouchAuthenticationRecord *)duration timeSinceCreation];
        if (timeSinceCreation == 0.0)
        {
          v51 = 0.0;
        }

        else
        {
          v47 = fabs(timeSinceCreation);
          v48 = timeSinceCreation / v47;
          v49 = log10(v47);
          v50 = __exp10(2.0 - vcvtpd_s64_f64(v49));
          v51 = v48 * (round(v47 * v50) / v50);
        }

        v52 = [v45 numberWithDouble:v51];
        [v4 setValue:v52 forKey:@"duration"];
      }

      securityAnalysis3 = [duration securityAnalysis];
      occlusionMask = [securityAnalysis3 occlusionMask];

      v55 = ((occlusionMask << 62) >> 63) & 3;
      if ((occlusionMask & 4) != 0)
      {
        v55 = 2;
      }

      if ((occlusionMask & 8) != 0)
      {
        v56 = 1;
      }

      else
      {
        v56 = v55;
      }

      v57 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v56];
      [v4 setValue:v57 forKey:@"occlusionType"];

      v58 = [MEMORY[0x1E696AD98] numberWithInt:(occlusionMask >> 1) & 1];
      [v4 setValue:v58 forKey:@"occlusionTypeLayer"];

      v59 = [MEMORY[0x1E696AD98] numberWithInt:(occlusionMask >> 2) & 1];
      [v4 setValue:v59 forKey:@"occlusionTypeClipped"];

      v60 = [MEMORY[0x1E696AD98] numberWithInt:(occlusionMask & 8) >> 3];
      [v4 setValue:v60 forKey:@"occlusionTypeBorder"];

      v61 = [MEMORY[0x1E696AD98] numberWithInt:(occlusionMask >> 4) & 1];
      [v4 setValue:v61 forKey:@"occlusionTypeLayerLimit"];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)timeSinceCreation
{
  if (!self)
  {
    return 0.0;
  }

  info = 0;
  mach_timebase_info(&info);
  v2 = mach_continuous_time();
  LODWORD(v4) = info.denom;
  LODWORD(v3) = info.numer;
  return (v2 - *(self + 56)) * v3 / v4 / 1000000000.0;
}

- (_UISTouchAuthenticationRecord)initWithSecurityAnalysis:(id)analysis timestamp:(double)timestamp hostBundleId:(id)id hostSDKVersion:(id)version hostIsInternal:(BOOL)internal serviceBundleId:(id)bundleId
{
  analysisCopy = analysis;
  idCopy = id;
  versionCopy = version;
  bundleIdCopy = bundleId;
  v17 = objc_opt_class();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __127___UISTouchAuthenticationRecord_initWithSecurityAnalysis_timestamp_hostBundleId_hostSDKVersion_hostIsInternal_serviceBundleId___block_invoke;
  v24[3] = &unk_1E7459008;
  v25 = analysisCopy;
  v26 = idCopy;
  internalCopy = internal;
  v27 = versionCopy;
  v28 = bundleIdCopy;
  v18 = bundleIdCopy;
  v19 = versionCopy;
  v20 = idCopy;
  v21 = analysisCopy;
  v22 = [v17 build:v24];

  return v22;
}

@end