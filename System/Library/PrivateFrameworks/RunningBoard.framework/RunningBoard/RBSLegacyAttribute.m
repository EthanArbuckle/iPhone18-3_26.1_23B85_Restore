@interface RBSLegacyAttribute
- (BOOL)_isLegacyReasonFinishableTask:(_BOOL8)result;
- (double)_invalidationDurationExpiringTaskCompletionsQuickly:(void *)a1;
- (uint64_t)_definesRelativeStartTime;
- (uint64_t)_explicitJetsamBand:(void *)a1;
- (uint64_t)_invalidateOnThermalLevel;
- (uint64_t)_isOriginatorValidForContext:(__CFString *)a3 errorReason:;
- (uint64_t)_isTargetValidForContext:(__CFString *)a3 errorReason:;
- (uint64_t)_maxCPUDuration;
- (uint64_t)_role;
- (uint64_t)_startPolicy;
- (uint64_t)_terminationResistance;
- (void)_mutateReasonWithContext:(void *)a1;
@end

@implementation RBSLegacyAttribute

- (uint64_t)_role
{
  if (a1)
  {
    if ([a1 requestedReason] == 9)
    {
      return 6;
    }

    else if (([a1 flags] & 2) != 0)
    {
      return 4;
    }

    else if ([a1 flags])
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
    v1 = [result reason];
    result = 1;
    if (v1 <= 0x17)
    {
      if (((1 << v1) & 0xBC33AE) != 0)
      {
        return result;
      }

      if (((1 << v1) & 0x10011) != 0)
      {
        return 102;
      }

      if (v1 == 10)
      {
        return 103;
      }
    }

    v2 = v1 - 16;
    if (v1 - 10000 > 8)
    {
LABEL_11:
      v3 = v1 - 50000;
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
    v1 = [result reason];
    result = 1;
    if (v1 > 0x17 || ((1 << v1) & 0xBC33AE) == 0)
    {
      v2 = v1 - 10000;
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
    v1 = [result reason];
    result = 820;
    switch(v1)
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
        switch(v1)
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
            v2 = v1 - 50000;
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
    v1 = [result reason];
    v2 = v1;
    if (v1 <= 0x17 && ((1 << v1) & 0xA9132E) != 0)
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
    v1 = [result reason];
    switch(v1)
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
        if (v1 == 4)
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

- (void)_mutateReasonWithContext:(void *)a1
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = [a1 reason];
    if (v4 == 4)
    {
      v5 = [v3 initialProcessState];
      v6 = [v5 legacyFinishTaskReason];
      if (v6 == 16)
      {
        v4 = 50004;
      }

      else
      {
        v4 = v6;
        if (v6 != 50004)
        {
          if (v6 == 10007)
          {
            v4 = 50003;
          }

          else if (v6 != 50000 && v6 != 50003)
          {
            if (v6 == 10006)
            {
              v4 = 50000;
            }

            else
            {
              v4 = 4;
            }
          }
        }
      }
    }

    if (v4 != [a1 reason])
    {
      v8 = rbs_assertion_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [a1 reason];
        v10 = [v3 assertion];
        v12 = 134349570;
        v13 = v9;
        v14 = 2050;
        v15 = v4;
        v16 = 2114;
        v17 = v10;
        _os_log_impl(&dword_262485000, v8, OS_LOG_TYPE_DEFAULT, "Mutating assertion reason from %{public}lu to %{public}lu for assertion %{public}@", &v12, 0x20u);
      }

      [a1 setReason:v4];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (double)_invalidationDurationExpiringTaskCompletionsQuickly:(void *)a1
{
  result = 0.0;
  if (a1)
  {
    v4 = [a1 reason];
    result = 1.0;
    switch(v4)
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
        if ((v4 - 10000) > 8)
        {
          goto LABEL_13;
        }

        if (((1 << (v4 - 16)) & 0x135) != 0)
        {
LABEL_8:
          result = 0.0;
        }

        else if (v4 == 10006)
        {
          if (qword_2814AA0D0 != -1)
          {
            dispatch_once(&qword_2814AA0D0, &__block_literal_global_90);
          }

          result = *&_MergedGlobals;
        }

        else if (v4 == 10007)
        {
          result = 30.0;
        }

        else
        {
LABEL_13:
          if (v4 == 50000)
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
            if (v4 == 50004)
            {
              result = 25.0;
            }

            if (v4 == 50003)
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

- (uint64_t)_explicitJetsamBand:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 flags];
    v5 = [a1 reason];
    if (v5 == 3 && (v4 & 8) != 0)
    {
      v6 = 120;
    }

    else if ((v4 & 8) != 0)
    {
      if (v5 != 9)
      {
        goto LABEL_21;
      }

      v9 = [v3 targetProcess];
      if (!v9)
      {
        goto LABEL_21;
      }

      v10 = v9;
      v11 = [v3 assertion];
      v12 = [v11 explanation];
      v13 = [v12 isEqualToString:@"com.apple.viewservice.session"];

      if (v13)
      {
        v14 = [v3 entitlementManager];
        v15 = [v3 targetProcess];
        v16 = [v14 entitlementsForProcess:v15];

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
      v7 = v5 == 10006 || v5 == 50000;
      v8 = 20;
      if (!v7)
      {
        v8 = 0;
      }

      if (v4)
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

- (uint64_t)_isOriginatorValidForContext:(__CFString *)a3 errorReason:
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a2;
  if (!a1)
  {
    goto LABEL_44;
  }

  if (!a3)
  {
    v3 = sel__isOriginatorValidForContext_errorReason_;
    v32 = [MEMORY[0x277CCA890] currentHandler];
    [v32 handleFailureInMethod:sel__isOriginatorValidForContext_errorReason_ object:a1 file:@"RBSLegacyAttribute+RBProcessState.m" lineNumber:383 description:@"outReason is required"];
  }

  v7 = [a1 requestedReason];
  if (v7 <= 0x17)
  {
    if (((1 << v7) & 0xBD15AE) != 0)
    {
LABEL_32:
      v25 = [v6 originatorEntitlements];
      v3 = v25;
      goto LABEL_33;
    }

    if (((1 << v7) & 0x2200) != 0)
    {
      [v6 originatorProcess];
      objc_claimAutoreleasedReturnValue();
      v8 = [OUTLINED_FUNCTION_1() targetProcess];

      if (v3 != v8)
      {
        if ([a1 reason] != 9 || !objc_msgSend(v3, "isLifecycleManaged"))
        {
          goto LABEL_34;
        }

        v9 = [v6 originatorState];
        v10 = [v9 inheritances];
        v11 = [v10 allNamespaces];
        v12 = [v11 containsObject:*MEMORY[0x277D470D0]];

        v13 = [v6 originatorEntitlements];
        v14 = [v13 rb_hasEntitlement:@"com.apple.assertiond.background-view-services"];

        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v15 = [v9 legacyAssertions];
        v16 = [v15 countByEnumeratingWithState:&v33 objects:v41 count:16];
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
                objc_enumerationMutation(v15);
              }

              if ([*(*(&v33 + 1) + 8 * v19) isLegacyAssertionReason:9])
              {

                goto LABEL_49;
              }

              ++v19;
            }

            while (v17 != v19);
            v17 = [v15 countByEnumeratingWithState:&v33 objects:v41 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        if (((v12 | v14) & 1) == 0)
        {
          *a3 = @"Originator for view service request is not in a valid state";
LABEL_51:

          goto LABEL_43;
        }

        goto LABEL_49;
      }

      v29 = @"Originator and target must be different processes";
LABEL_42:
      *a3 = v29;
LABEL_43:

LABEL_44:
      v26 = 0;
      goto LABEL_45;
    }

    if (v7 == 4)
    {
      [v6 originatorProcess];
      objc_claimAutoreleasedReturnValue();
      v9 = [OUTLINED_FUNCTION_1() targetProcess];
      if (v3 != v9)
      {
        v20 = [v6 originatorEntitlements];
        if (([v3 isPlatformBinary] & 1) == 0 && (objc_msgSend(v20, "rb_hasEntitlementDomain:", 63) & 1) == 0)
        {
          v21 = [v6 entitlementManager];
          v22 = [v21 entitlementsForProcess:v9];

          if (([v9 isPlatformBinary] & 1) == 0 && !objc_msgSend(v22, "rb_hasEntitlementDomain:", 63))
          {
            *a3 = @"Originator and target must be the same process";

            goto LABEL_51;
          }

          v23 = rbs_assertion_log();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v38 = v3;
            v39 = 2114;
            v40 = v9;
            _os_log_impl(&dword_262485000, v23, OS_LOG_TYPE_DEFAULT, "allowing legacy background task: untrusted process %{public}@ is targeting trusted process %{public}@", buf, 0x16u);
          }
        }
      }

LABEL_49:

      goto LABEL_34;
    }
  }

  v24 = v7 - 16;
  if (v7 - 10000 > 8)
  {
LABEL_46:
    v26 = 0;
    *a3 = @"Invalid assertion reason provided";
    goto LABEL_45;
  }

  if (((1 << v24) & 0x194) != 0)
  {
    goto LABEL_32;
  }

  if (((1 << v24) & 0x21) == 0)
  {
    if (v7 == 10006)
    {
      v3 = [v6 originatorEntitlements];
      if ([v3 rb_hasEntitlementDomain:32])
      {
        goto LABEL_34;
      }

      v27 = [v6 originatorProcess];
      v28 = [v27 isPlatformBinary];

      if (v28)
      {
        goto LABEL_34;
      }

      goto LABEL_41;
    }

    goto LABEL_46;
  }

  v3 = [v6 originatorEntitlements];
  if ([v3 rb_hasEntitlement:@"com.apple.backboard.client"])
  {
    goto LABEL_34;
  }

  v25 = v3;
LABEL_33:
  if (([v25 rb_hasEntitlementDomain:32] & 1) == 0)
  {
LABEL_41:
    v29 = @"Client is missing required entitlement";
    goto LABEL_42;
  }

LABEL_34:

  *a3 = 0;
  v26 = 1;
LABEL_45:

  v30 = *MEMORY[0x277D85DE8];
  return v26;
}

- (uint64_t)_isTargetValidForContext:(__CFString *)a3 errorReason:
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    if ([v5 targetIsSystem])
    {
      a1 = 0;
      v7 = @"Attribute may not target the system";
LABEL_4:
      *a3 = v7;
      goto LABEL_20;
    }

    v8 = [a1 reason];
    switch(v8)
    {
      case 9:
        [v6 targetProcess];
        objc_claimAutoreleasedReturnValue();
        v15 = [OUTLINED_FUNCTION_1() entitlementManager];
        v16 = [v15 entitlementsForProcess:a1];

        if (([v16 rb_hasEntitlement:*MEMORY[0x277D47040]] & 1) == 0)
        {
          *a3 = @"Target lacks view service entitlement";

          a1 = 0;
          goto LABEL_20;
        }

        break;
      case 12:
        if (([v6 ignoreRestrictions] & 1) == 0)
        {
          v11 = [v6 targetProperties];
          v12 = [v11 usesSocketMonitoring];

          if ((v12 & 1) == 0)
          {
            a1 = 0;
            v7 = @"Target doesn't support socket monitoring";
            goto LABEL_4;
          }
        }

        break;
      case 10006:
        if (([v6 ignoreRestrictions] & 1) == 0)
        {
          v13 = [v6 targetProperties];
          v14 = [v13 supportsBackgroundContentFetching];

          if ((v14 & 1) == 0)
          {
            a1 = 0;
            v7 = @"Target doesn't support background content fetching";
            goto LABEL_4;
          }
        }

        break;
      case 13:
        v9 = [v6 targetIdentity];
        v10 = [v9 isXPCService];

        if ((v10 & 1) == 0)
        {
          a1 = 0;
          v7 = @"Target is not an xpc service";
          goto LABEL_4;
        }

        break;
    }

    *a3 = 0;
    a1 = 1;
  }

LABEL_20:

  return a1;
}

@end