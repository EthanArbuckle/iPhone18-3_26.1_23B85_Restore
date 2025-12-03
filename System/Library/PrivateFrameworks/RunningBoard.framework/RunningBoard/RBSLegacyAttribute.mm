@interface RBSLegacyAttribute
- (BOOL)_isLegacyReasonFinishableTask:(_BOOL8)result;
- (double)_invalidationDurationExpiringTaskCompletionsQuickly:(void *)quickly;
- (uint64_t)_definesRelativeStartTime;
- (uint64_t)_explicitJetsamBand:(void *)band;
- (uint64_t)_invalidateOnThermalLevel;
- (uint64_t)_isOriginatorValidForContext:(__CFString *)context errorReason:;
- (uint64_t)_isTargetValidForContext:(__CFString *)context errorReason:;
- (uint64_t)_maxCPUDuration;
- (uint64_t)_role;
- (uint64_t)_startPolicy;
- (uint64_t)_terminationResistance;
- (void)_mutateReasonWithContext:(void *)context;
@end

@implementation RBSLegacyAttribute

- (uint64_t)_role
{
  if (self)
  {
    if ([self requestedReason] == 9)
    {
      return 6;
    }

    else if (([self flags] & 2) != 0)
    {
      return 4;
    }

    else if ([self flags])
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 0;
  }
}

- (uint64_t)_startPolicy
{
  if (result)
  {
    reason = [result reason];
    result = 1;
    if (reason <= 0x17)
    {
      if (((1 << reason) & 0xBC33AE) != 0)
      {
        return result;
      }

      if (((1 << reason) & 0x10011) != 0)
      {
        return 102;
      }

      if (reason == 10)
      {
        return 103;
      }
    }

    v2 = reason - 16;
    if (reason - 10000 > 8)
    {
LABEL_11:
      v3 = reason - 50000;
      if (v3 > 4 || ((1 << v3) & 0x19) == 0)
      {
        return 101;
      }

      return 102;
    }

    if (((1 << v2) & 0x135) == 0)
    {
      if (((1 << v2) & 0xC0) != 0)
      {
        return 103;
      }

      goto LABEL_11;
    }
  }

  return result;
}

- (uint64_t)_definesRelativeStartTime
{
  if (result)
  {
    reason = [result reason];
    result = 1;
    if (reason > 0x17 || ((1 << reason) & 0xBC33AE) == 0)
    {
      v2 = reason - 10000;
      if (v2 > 8 || ((1 << v2) & 0x135) == 0)
      {
        return 0;
      }
    }
  }

  return result;
}

- (uint64_t)_invalidateOnThermalLevel
{
  if (result)
  {
    reason = [result reason];
    result = 820;
    switch(reason)
    {
      case 1:
      case 2:
      case 3:
      case 12:
      case 16:
      case 19:
      case 23:
LABEL_5:
        result = 840;
        break;
      case 4:
LABEL_10:
        result = 860;
        break;
      case 5:
      case 9:
      case 13:
LABEL_6:
        result = 850;
        break;
      case 6:
      case 10:
      case 11:
      case 14:
      case 15:
      case 17:
      case 22:
        return result;
      case 7:
      case 8:
      case 18:
      case 20:
      case 21:
LABEL_3:
        result = 830;
        break;
      default:
        switch(reason)
        {
          case 10000:
          case 10007:
            goto LABEL_5;
          case 10001:
          case 10002:
          case 10003:
          case 10006:
            return result;
          case 10004:
            goto LABEL_10;
          case 10005:
            goto LABEL_3;
          case 10008:
            goto LABEL_6;
          default:
            v2 = reason - 50000;
            if (v2 <= 4 && ((1 << v2) & 0x19) != 0)
            {
              goto LABEL_10;
            }

            break;
        }

        break;
    }
  }

  return result;
}

- (uint64_t)_terminationResistance
{
  if (result)
  {
    reason = [result reason];
    v2 = reason;
    if (reason <= 0x17 && ((1 << reason) & 0xA9132E) != 0)
    {
      return 40;
    }

    result = 20;
    v3 = v2 - 10000;
    if (v3 <= 8 && ((1 << v3) & 0x181) != 0)
    {
      return 40;
    }
  }

  return result;
}

- (uint64_t)_maxCPUDuration
{
  if (result)
  {
    reason = [result reason];
    switch(reason)
    {
      case 19:
      case 21:
      case 22:
        goto LABEL_6;
      case 20:
      case 23:
        result = 15;
        break;
      default:
        if (reason == 4)
        {
          result = 180;
        }

        else
        {
LABEL_6:
          result = 60;
        }

        break;
    }
  }

  return result;
}

uint64_t __93__RBSLegacyAttribute_RBProcessState__applyToAssertionIntransientState_attributePath_context___block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"BKExpireTaskCompletionsQuickly", @"com.apple.assertiond", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v1 = result == 1;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1;
  applyToAssertionIntransientState_attributePath_context__expireTaskCompletionsQuickly = v2;
  return result;
}

- (void)_mutateReasonWithContext:(void *)context
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (context)
  {
    reason = [context reason];
    if (reason == 4)
    {
      initialProcessState = [v3 initialProcessState];
      legacyFinishTaskReason = [initialProcessState legacyFinishTaskReason];
      if (legacyFinishTaskReason == 16)
      {
        reason = 50004;
      }

      else
      {
        reason = legacyFinishTaskReason;
        if (legacyFinishTaskReason != 50004)
        {
          if (legacyFinishTaskReason == 10007)
          {
            reason = 50003;
          }

          else if (legacyFinishTaskReason != 50000 && legacyFinishTaskReason != 50003)
          {
            if (legacyFinishTaskReason == 10006)
            {
              reason = 50000;
            }

            else
            {
              reason = 4;
            }
          }
        }
      }
    }

    if (reason != [context reason])
    {
      v8 = rbs_assertion_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        reason2 = [context reason];
        assertion = [v3 assertion];
        v12 = 134349570;
        v13 = reason2;
        v14 = 2050;
        v15 = reason;
        v16 = 2114;
        v17 = assertion;
        _os_log_impl(&dword_262485000, v8, OS_LOG_TYPE_DEFAULT, "Mutating assertion reason from %{public}lu to %{public}lu for assertion %{public}@", &v12, 0x20u);
      }

      [context setReason:reason];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (double)_invalidationDurationExpiringTaskCompletionsQuickly:(void *)quickly
{
  result = 0.0;
  if (quickly)
  {
    reason = [quickly reason];
    result = 1.0;
    switch(reason)
    {
      case 1:
      case 2:
      case 3:
      case 5:
      case 7:
      case 8:
      case 9:
      case 12:
      case 13:
      case 18:
      case 19:
      case 20:
      case 21:
      case 23:
        goto LABEL_8;
      case 4:
        result = 30.0;
        if (a2)
        {
          return 10.0;
        }

        return result;
      case 6:
      case 11:
      case 14:
      case 15:
      case 17:
      case 22:
        return result;
      case 10:
        return 10.0;
      case 16:
        return 15.0;
      default:
        if ((reason - 10000) > 8)
        {
          goto LABEL_13;
        }

        if (((1 << (reason - 16)) & 0x135) != 0)
        {
LABEL_8:
          result = 0.0;
        }

        else if (reason == 10006)
        {
          if (qword_2814AA0D0 != -1)
          {
            dispatch_once(&qword_2814AA0D0, &__block_literal_global_90);
          }

          result = *&_MergedGlobals;
        }

        else if (reason == 10007)
        {
          result = 30.0;
        }

        else
        {
LABEL_13:
          if (reason == 50000)
          {
            if (qword_2814AA0D0 != -1)
            {
              dispatch_once(&qword_2814AA0D0, &__block_literal_global_90);
            }

            v5 = *&_MergedGlobals;
            v6 = 10.0;
            if ((a2 & 1) == 0)
            {
              if (qword_2814AA0E0 != -1)
              {
                v7 = _MergedGlobals;
                dispatch_once(&qword_2814AA0E0, &__block_literal_global_95);
                v5 = *&v7;
              }

              v6 = *&qword_2814AA0D8;
            }

            result = v5 + v6;
          }

          else
          {
            if (reason == 50004)
            {
              result = 25.0;
            }

            if (reason == 50003)
            {
              result = 40.0;
            }
          }
        }

        break;
    }
  }

  return result;
}

- (uint64_t)_explicitJetsamBand:(void *)band
{
  v3 = a2;
  if (band)
  {
    flags = [band flags];
    reason = [band reason];
    if (reason == 3 && (flags & 8) != 0)
    {
      v6 = 120;
    }

    else if ((flags & 8) != 0)
    {
      if (reason != 9)
      {
        goto LABEL_21;
      }

      targetProcess = [v3 targetProcess];
      if (!targetProcess)
      {
        goto LABEL_21;
      }

      v10 = targetProcess;
      assertion = [v3 assertion];
      explanation = [assertion explanation];
      v13 = [explanation isEqualToString:@"com.apple.viewservice.session"];

      if (v13)
      {
        entitlementManager = [v3 entitlementManager];
        targetProcess2 = [v3 targetProcess];
        v16 = [entitlementManager entitlementsForProcess:targetProcess2];

        if ([v16 rb_hasEntitlement:*MEMORY[0x277D47040]])
        {
          v6 = 80;
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
LABEL_21:
        v6 = 100;
      }
    }

    else
    {
      v7 = reason == 10006 || reason == 50000;
      v8 = 20;
      if (!v7)
      {
        v8 = 0;
      }

      if (flags)
      {
        v6 = 40;
      }

      else
      {
        v6 = v8;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isLegacyReasonFinishableTask:(_BOOL8)result
{
  if (result)
  {
    result = 1;
    if ((a2 - 50000) > 4 || ((1 << (a2 - 80)) & 0x19) == 0)
    {
      return (a2 - 10006) < 2 || a2 == 16;
    }
  }

  return result;
}

- (uint64_t)_isOriginatorValidForContext:(__CFString *)context errorReason:
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a2;
  if (!self)
  {
    goto LABEL_44;
  }

  if (!context)
  {
    originatorEntitlements4 = sel__isOriginatorValidForContext_errorReason_;
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:sel__isOriginatorValidForContext_errorReason_ object:self file:@"RBSLegacyAttribute+RBProcessState.m" lineNumber:383 description:@"outReason is required"];
  }

  requestedReason = [self requestedReason];
  if (requestedReason <= 0x17)
  {
    if (((1 << requestedReason) & 0xBD15AE) != 0)
    {
LABEL_32:
      originatorEntitlements = [v6 originatorEntitlements];
      originatorEntitlements4 = originatorEntitlements;
      goto LABEL_33;
    }

    if (((1 << requestedReason) & 0x2200) != 0)
    {
      [v6 originatorProcess];
      objc_claimAutoreleasedReturnValue();
      targetProcess = [OUTLINED_FUNCTION_1() targetProcess];

      if (originatorEntitlements4 != targetProcess)
      {
        if ([self reason] != 9 || !objc_msgSend(originatorEntitlements4, "isLifecycleManaged"))
        {
          goto LABEL_34;
        }

        originatorState = [v6 originatorState];
        inheritances = [originatorState inheritances];
        allNamespaces = [inheritances allNamespaces];
        v12 = [allNamespaces containsObject:*MEMORY[0x277D470D0]];

        originatorEntitlements2 = [v6 originatorEntitlements];
        v14 = [originatorEntitlements2 rb_hasEntitlement:@"com.apple.assertiond.background-view-services"];

        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        legacyAssertions = [originatorState legacyAssertions];
        v16 = [legacyAssertions countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v34;
          while (2)
          {
            v19 = 0;
            do
            {
              if (*v34 != v18)
              {
                objc_enumerationMutation(legacyAssertions);
              }

              if ([*(*(&v33 + 1) + 8 * v19) isLegacyAssertionReason:9])
              {

                goto LABEL_49;
              }

              ++v19;
            }

            while (v17 != v19);
            v17 = [legacyAssertions countByEnumeratingWithState:&v33 objects:v41 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        if (((v12 | v14) & 1) == 0)
        {
          *context = @"Originator for view service request is not in a valid state";
LABEL_51:

          goto LABEL_43;
        }

        goto LABEL_49;
      }

      v29 = @"Originator and target must be different processes";
LABEL_42:
      *context = v29;
LABEL_43:

LABEL_44:
      v26 = 0;
      goto LABEL_45;
    }

    if (requestedReason == 4)
    {
      [v6 originatorProcess];
      objc_claimAutoreleasedReturnValue();
      originatorState = [OUTLINED_FUNCTION_1() targetProcess];
      if (originatorEntitlements4 != originatorState)
      {
        originatorEntitlements3 = [v6 originatorEntitlements];
        if (([originatorEntitlements4 isPlatformBinary] & 1) == 0 && (objc_msgSend(originatorEntitlements3, "rb_hasEntitlementDomain:", 63) & 1) == 0)
        {
          entitlementManager = [v6 entitlementManager];
          v22 = [entitlementManager entitlementsForProcess:originatorState];

          if (([originatorState isPlatformBinary] & 1) == 0 && !objc_msgSend(v22, "rb_hasEntitlementDomain:", 63))
          {
            *context = @"Originator and target must be the same process";

            goto LABEL_51;
          }

          v23 = rbs_assertion_log();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v38 = originatorEntitlements4;
            v39 = 2114;
            v40 = originatorState;
            _os_log_impl(&dword_262485000, v23, OS_LOG_TYPE_DEFAULT, "allowing legacy background task: untrusted process %{public}@ is targeting trusted process %{public}@", buf, 0x16u);
          }
        }
      }

LABEL_49:

      goto LABEL_34;
    }
  }

  v24 = requestedReason - 16;
  if (requestedReason - 10000 > 8)
  {
LABEL_46:
    v26 = 0;
    *context = @"Invalid assertion reason provided";
    goto LABEL_45;
  }

  if (((1 << v24) & 0x194) != 0)
  {
    goto LABEL_32;
  }

  if (((1 << v24) & 0x21) == 0)
  {
    if (requestedReason == 10006)
    {
      originatorEntitlements4 = [v6 originatorEntitlements];
      if ([originatorEntitlements4 rb_hasEntitlementDomain:32])
      {
        goto LABEL_34;
      }

      originatorProcess = [v6 originatorProcess];
      isPlatformBinary = [originatorProcess isPlatformBinary];

      if (isPlatformBinary)
      {
        goto LABEL_34;
      }

      goto LABEL_41;
    }

    goto LABEL_46;
  }

  originatorEntitlements4 = [v6 originatorEntitlements];
  if ([originatorEntitlements4 rb_hasEntitlement:@"com.apple.backboard.client"])
  {
    goto LABEL_34;
  }

  originatorEntitlements = originatorEntitlements4;
LABEL_33:
  if (([originatorEntitlements rb_hasEntitlementDomain:32] & 1) == 0)
  {
LABEL_41:
    v29 = @"Client is missing required entitlement";
    goto LABEL_42;
  }

LABEL_34:

  *context = 0;
  v26 = 1;
LABEL_45:

  v30 = *MEMORY[0x277D85DE8];
  return v26;
}

- (uint64_t)_isTargetValidForContext:(__CFString *)context errorReason:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    if ([v5 targetIsSystem])
    {
      self = 0;
      v7 = @"Attribute may not target the system";
LABEL_4:
      *context = v7;
      goto LABEL_20;
    }

    reason = [self reason];
    switch(reason)
    {
      case 9:
        [v6 targetProcess];
        objc_claimAutoreleasedReturnValue();
        entitlementManager = [OUTLINED_FUNCTION_1() entitlementManager];
        v16 = [entitlementManager entitlementsForProcess:self];

        if (([v16 rb_hasEntitlement:*MEMORY[0x277D47040]] & 1) == 0)
        {
          *context = @"Target lacks view service entitlement";

          self = 0;
          goto LABEL_20;
        }

        break;
      case 12:
        if (([v6 ignoreRestrictions] & 1) == 0)
        {
          targetProperties = [v6 targetProperties];
          usesSocketMonitoring = [targetProperties usesSocketMonitoring];

          if ((usesSocketMonitoring & 1) == 0)
          {
            self = 0;
            v7 = @"Target doesn't support socket monitoring";
            goto LABEL_4;
          }
        }

        break;
      case 10006:
        if (([v6 ignoreRestrictions] & 1) == 0)
        {
          targetProperties2 = [v6 targetProperties];
          supportsBackgroundContentFetching = [targetProperties2 supportsBackgroundContentFetching];

          if ((supportsBackgroundContentFetching & 1) == 0)
          {
            self = 0;
            v7 = @"Target doesn't support background content fetching";
            goto LABEL_4;
          }
        }

        break;
      case 13:
        targetIdentity = [v6 targetIdentity];
        isXPCService = [targetIdentity isXPCService];

        if ((isXPCService & 1) == 0)
        {
          self = 0;
          v7 = @"Target is not an xpc service";
          goto LABEL_4;
        }

        break;
    }

    *context = 0;
    self = 1;
  }

LABEL_20:

  return self;
}

@end