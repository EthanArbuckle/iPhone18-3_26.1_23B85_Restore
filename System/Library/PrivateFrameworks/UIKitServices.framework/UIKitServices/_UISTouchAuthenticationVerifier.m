@interface _UISTouchAuthenticationVerifier
+ (BOOL)shouldAuthenticateServiceBundleId:(id)a3;
+ (id)runOverriddenThresholds;
+ (id)verifierForServiceBundleId:(id)a3;
- (id)failureDescriptionForSecurityAnalysis:(uint64_t)a3 minimumOpacity:(double)a4 occlusionThreshold:(double)a5 transformGrade:;
- (id)verifyRecord:(id)a3;
- (uint64_t)_hostSupportsStrictTouchVerificationForRecord:(uint64_t)a1;
- (unint64_t)transformGradeFailureReasonsForRecord:(id)a3;
@end

@implementation _UISTouchAuthenticationVerifier

+ (id)runOverriddenThresholds
{
  objc_opt_self();
  if (os_variant_allows_internal_security_policies())
  {
    v2 = runOverriddenThresholds_userDefaults;
    if (!runOverriddenThresholds_userDefaults)
    {
      v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.UIKit"];
      v4 = runOverriddenThresholds_userDefaults;
      runOverriddenThresholds_userDefaults = v3;

      v2 = runOverriddenThresholds_userDefaults;
    }

    v0 = [v2 objectForKey:@"touchAuthenticationOverriddenThresholds"];
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

+ (BOOL)shouldAuthenticateServiceBundleId:(id)a3
{
  v3 = a3;
  objc_opt_self();
  v4 = [&unk_1F0A84B68 objectForKeyedSubscript:v3];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = +[_UISTouchAuthenticationVerifier runOverriddenThresholds];
    v7 = [v6 objectForKeyedSubscript:v3];
    v5 = v7 != 0;
  }

  return v5;
}

+ (id)verifierForServiceBundleId:(id)a3
{
  v3 = a3;
  v4 = [verifierForServiceBundleId__verifiersByServiceBundleId objectForKeyedSubscript:v3];
  if (!v4)
  {
    objc_opt_self();
    v5 = [&unk_1F0A84B68 objectForKeyedSubscript:v3];
    v6 = +[_UISTouchAuthenticationVerifier runOverriddenThresholds];
    v7 = [v6 objectForKeyedSubscript:v3];

    v4 = [_UISTouchAuthenticationVerifier alloc];
    v8 = v5;
    v9 = v7;
    if (v4)
    {
      v48.receiver = v4;
      v48.super_class = _UISTouchAuthenticationVerifier;
      v10 = objc_msgSendSuper2(&v48, sel_init);
      if (v10)
      {
        v11 = v10;
        v42 = v8;
        if (v8 | v9)
        {
          v12 = [&unk_1F0A84B90 mutableCopy];
          v13 = v12;
          if (v8)
          {
            [v12 addEntriesFromDictionary:v8];
          }

          if (v9)
          {
            [v13 addEntriesFromDictionary:v9];
          }
        }

        else
        {
          v13 = &unk_1F0A84BB8;
        }

        v14 = v11[1];
        v11[1] = v13;

        v43 = MEMORY[0x1E69E9820];
        v44 = 3221225472;
        v45 = __89___UISTouchAuthenticationVerifier_initWithBuildOverrideThresholds_runOverrideThresholds___block_invoke;
        v46 = &unk_1E74593C8;
        v4 = v11;
        v47 = v4;
        v15 = MEMORY[0x19A8C69E0](&v43);
        v16 = [v11[1] objectForKeyedSubscript:@"lowerScaleMultiplierLenient"];
        [v16 doubleValue];
        v18 = v17;
        v19 = [v11[1] objectForKeyedSubscript:@"upperScaleMultiplierLenient"];
        [v19 doubleValue];
        v21 = v20;
        v22 = [v11[1] objectForKeyedSubscript:@"allowsAllRotations"];
        v23 = v15[2](v15, [v22 BOOLValue], v18, v21);
        lenientGrader = v4->_lenientGrader;
        v4->_lenientGrader = v23;

        v25 = [v11[1] objectForKeyedSubscript:@"lowerScaleMultiplierStrict"];
        [v25 doubleValue];
        v27 = v26;
        v28 = [v11[1] objectForKeyedSubscript:@"upperScaleMultiplierStrict"];
        [v28 doubleValue];
        v30 = v29;
        v31 = [v11[1] objectForKeyedSubscript:@"allowsAllRotations"];
        v32 = v15[2](v15, [v31 BOOLValue], v27, v30);
        strictGrader = v4->_strictGrader;
        v4->_strictGrader = v32;

        if (os_variant_allows_internal_security_policies())
        {
          v4->_shouldSuppressInauthenticTouches = 1;
        }

        else
        {
          v34 = [v11[1] objectForKeyedSubscript:@"suppressTouchOnCustomerOS"];
          v4->_shouldSuppressInauthenticTouches = v34 != 0;
        }

        v8 = v42;
      }

      else
      {
        v4 = 0;
      }
    }

    v35 = verifierForServiceBundleId__verifiersByServiceBundleId;
    if (!verifierForServiceBundleId__verifiersByServiceBundleId)
    {
      v36 = MEMORY[0x1E695DF90];
      objc_opt_self();
      v37 = [&unk_1F0A84B68 allKeys];
      v38 = [v36 sharedKeySetForKeys:v37];
      v39 = [v36 dictionaryWithSharedKeySet:v38];
      v40 = verifierForServiceBundleId__verifiersByServiceBundleId;
      verifierForServiceBundleId__verifiersByServiceBundleId = v39;

      v35 = verifierForServiceBundleId__verifiersByServiceBundleId;
    }

    [v35 setObject:v4 forKeyedSubscript:{v3, v42, v43, v44, v45, v46}];
  }

  return v4;
}

- (uint64_t)_hostSupportsStrictTouchVerificationForRecord:(uint64_t)a1
{
  v3 = a2;
  if (!a1)
  {
    v7 = 0;
    goto LABEL_16;
  }

  v4 = [*(a1 + 8) objectForKeyedSubscript:@"hostsForLenientTouchAuthentication"];
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = [v3 hostBundleId];
  if (([v4 containsObject:v5] & 1) == 0)
  {

LABEL_7:
    v8 = [v3 hostSDKVersion];
    v9 = [*(a1 + 8) objectForKeyedSubscript:@"SDKVersionForStrictTouchAuthentication"];
    if ([v8 length] && objc_msgSend(v9, "length"))
    {
      v10 = [MEMORY[0x1E6963608] defaultWorkspace];
      v7 = [v10 isVersion:v8 greaterThanOrEqualToVersion:v9];
    }

    else
    {
      v7 = ![v8 length] && objc_msgSend(v9, "length");
    }

    goto LABEL_15;
  }

  v6 = [v3 hostIsInternal];

  if ((v6 & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = 0;
LABEL_15:

LABEL_16:
  return v7;
}

- (unint64_t)transformGradeFailureReasonsForRecord:(id)a3
{
  v4 = a3;
  v5 = [(_UISTouchAuthenticationVerifier *)self _hostSupportsStrictTouchVerificationForRecord:v4];
  v6 = 16;
  if (v5)
  {
    v6 = 24;
  }

  v7 = *(&self->super.isa + v6);
  v8 = [v4 securityAnalysis];

  if (v8)
  {
    [v8 cumulativeLayerTransform];
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  v9 = [v7 gradeTransform3D:v11];

  return v9;
}

- (id)failureDescriptionForSecurityAnalysis:(uint64_t)a3 minimumOpacity:(double)a4 occlusionThreshold:(double)a5 transformGrade:
{
  v9 = a2;
  if (!a1 || !os_variant_allows_internal_security_policies())
  {
    v10 = 0;
    goto LABEL_4;
  }

  v12 = objc_opt_new();
  v10 = v12;
  if (!v9)
  {
    [v12 appendString:@" < security analysis missing >"];
    goto LABEL_4;
  }

  [v9 cumulativeOpacity];
  if (v13 < a4)
  {
    v14 = MEMORY[0x1E696AEC0];
    [v9 cumulativeOpacity];
    v16 = [v14 stringWithFormat:@" < computed opacity %.2f%% less than %.2f%% threshold >", (v15 * 100.0), a4 * 100.0];
    [v10 appendString:v16];
  }

  if ([v9 hasInsecureFilter])
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@" < insecure filter detected >"];
    [v10 appendString:v17];
  }

  if (a3)
  {
    memset(&v32, 0, sizeof(v32));
    [v9 cumulativeLayerTransform];
    CATransform3DGetAffineTransform(&transform, &v30);
    CGAffineTransformDecompose(&v32, &transform);
    v18 = objc_opt_new();
    v19 = v18;
    if (a3)
    {
      [v18 appendString:@" non-finite"];
      if ((a3 & 2) == 0)
      {
LABEL_15:
        if ((a3 & 4) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_30;
      }
    }

    else if ((a3 & 2) == 0)
    {
      goto LABEL_15;
    }

    [v19 appendString:@" non-affine"];
    if ((a3 & 4) == 0)
    {
LABEL_16:
      if ((a3 & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_31;
    }

LABEL_30:
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@" invalid-rotation[%.2f]", *&v32.rotation];
    [v19 appendString:v26];

    if ((a3 & 8) == 0)
    {
LABEL_17:
      if ((a3 & 0x10) == 0)
      {
        if ((a3 & 0x20) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_34;
      }

LABEL_32:
      [v19 appendString:@" scale.not-allowed"];
LABEL_33:
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@" scale[width=%.2f, height=%.2f]", *&v32.scale.width, *&v32.scale.height];
      [v19 appendString:v27];

      if ((a3 & 0x20) == 0)
      {
LABEL_19:
        if ((a3 & 0x40) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_35;
      }

LABEL_34:
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@" invalid-shear[%.2f]", *&v32.horizontalShear];
      [v19 appendString:v28];

      if ((a3 & 0x40) == 0)
      {
LABEL_20:
        if ((a3 & 0x80) == 0)
        {
LABEL_22:
          v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@" < failed transforms: %@ >", v19];
          [v10 appendString:v20];

          goto LABEL_23;
        }

LABEL_21:
        [v19 appendString:@" invalid-shift"];
        goto LABEL_22;
      }

LABEL_35:
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@" invalid-translation[dx=%.2f, dy=%.2f]", *&v32.translation.dx, *&v32.translation.dy];
      [v19 appendString:v29];

      if ((a3 & 0x80) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

LABEL_31:
    [v19 appendString:@" scale.not-uniform"];
    if ((a3 & 0x10) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_23:
  [v9 occlusionPercentage];
  if (v21 >= a5)
  {
    v22 = MEMORY[0x1E696AEC0];
    [v9 occlusionPercentage];
    v24 = [v22 stringWithFormat:@" < occlusion %.2f%% greater than %.2f%% threshold >", (v23 * 100.0), a5 * 100.0];
    [v10 appendString:v24];
  }

  if (![v10 length])
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:sel_failureDescriptionForSecurityAnalysis_minimumOpacity_occlusionThreshold_transformGrade_ object:a1 file:@"_UISTouchAuthenticationVerifier.m" lineNumber:460 description:@"touch failed authentication but we were unable to describe why"];
  }

LABEL_4:

  return v10;
}

- (id)verifyRecord:(id)a3
{
  v4 = a3;
  v5 = [(_UISTouchAuthenticationVerifier *)self _hostSupportsStrictTouchVerificationForRecord:v4];
  if (v5)
  {
    v6 = @"minimumOpacityStrict";
  }

  else
  {
    v6 = @"minimumOpacityLenient";
  }

  if (v5)
  {
    v7 = @"occlusionThresholdStrict";
  }

  else
  {
    v7 = @"occlusionThresholdLenient";
  }

  v8 = [(NSDictionary *)self->_thresholds objectForKeyedSubscript:v6];
  [v8 doubleValue];
  v10 = v9;

  v11 = [(NSDictionary *)self->_thresholds objectForKeyedSubscript:v7];
  [v11 doubleValue];
  v13 = v12;

  v14 = [v4 securityAnalysis];
  v15 = [(_UISTouchAuthenticationVerifier *)self transformGradeFailureReasonsForRecord:v4];

  if (!v14 || ([v14 cumulativeOpacity], v10 >= v16) || (objc_msgSend(v14, "hasInsecureFilter") & 1) != 0 || v15 || (objc_msgSend(v14, "occlusionPercentage"), v13 <= v17))
  {
    if (os_variant_allows_internal_security_policies())
    {
      v18 = [(_UISTouchAuthenticationVerifier *)self failureDescriptionForSecurityAnalysis:v14 minimumOpacity:v15 occlusionThreshold:v10 transformGrade:v13];
      v19 = 0;
    }

    else
    {
      v19 = 0;
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
    v19 = 1;
  }

  v20 = [[_UISTouchAuthenticationVerifierResult alloc] initWithPassesSecurityAnalysis:v19 failureReasons:v18];

  return v20;
}

@end