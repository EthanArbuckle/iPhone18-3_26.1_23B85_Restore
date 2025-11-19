@interface _DASActivity
+ (_DASActivity)activityWithCTSActivity:(id)a3;
- (void)linkToCTSActivity:(id)a3;
@end

@implementation _DASActivity

+ (_DASActivity)activityWithCTSActivity:(id)a3
{
  v3 = a3;
  v4 = [v3 priority];
  v5 = &_DASSchedulingPriorityUtility;
  if (v4 != 1)
  {
    v5 = &_DASSchedulingPriorityMaintenance;
  }

  v6 = *v5;
  sub_2BAC([v3 eligibleTime]);
  v7 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  sub_2BAC([v3 deadlineTime]);
  v8 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  v9 = [v3 name];
  v10 = +[_DASActivity activityWithName:priority:duration:startingAfter:startingBefore:](_DASActivity, "activityWithName:priority:duration:startingAfter:startingBefore:", v9, v6, [v3 expected_duration], v7, v8);
  v11 = [v3 serviceName];
  [v10 setServiceName:v11];

  v12 = [v3 bundle_id];
  [v10 setBundleId:v12];

  v13 = [v3 related_applications];
  [v10 setRelatedApplications:v13];

  v14 = [v3 involved_processes];
  [v10 setInvolvedProcesses:v14];

  [v10 setRunOnAppForeground:{objc_msgSend(v3, "runOnAppForeground")}];
  [v10 setBudgeted:{objc_msgSend(v3, "duet_power_budgeted")}];
  [v10 setDataBudgeted:{objc_msgSend(v3, "data_budgeted")}];
  if ([v3 repeating])
  {
    [v10 setInterval:{objc_msgSend(v3, "interval")}];
  }

  if ([v3 requires_protection_class] == 1)
  {
    v15 = +[_DASFileProtection complete];
  }

  else if ([v3 requires_protection_class] == 2)
  {
    v15 = +[_DASFileProtection completeUnlessOpen];
  }

  else
  {
    if ([v3 requires_protection_class] != 3)
    {
      goto LABEL_12;
    }

    v15 = +[_DASFileProtection completeUntilFirstUserAuthentication];
  }

  v16 = v15;
  [v10 setFileProtection:v15];

LABEL_12:
  [v10 setRequiresBuddyComplete:{objc_msgSend(v3, "requires_buddy_complete")}];
  if ([v3 schedule_rtc_wake])
  {
    [v10 setSchedulingPriority:_DASSchedulingPriorityDefault];
  }

  [v10 setDarkWakeEligible:{objc_msgSend(v3, "power_nap")}];
  [v10 setBeforeDaysFirstActivity:{objc_msgSend(v3, "app_refresh")}];
  [v10 setRequiresDeviceInactivity:{objc_msgSend(v3, "requires_screen_sleep")}];
  [v10 setRequiresSignificantUserInactivity:{objc_msgSend(v3, "requires_significant_user_inactivity")}];
  [v10 setPreventDeviceSleep:{objc_msgSend(v3, "prevents_device_sleep")}];
  [v10 setRequiresPlugin:{objc_msgSend(v3, "allow_battery") ^ 1}];
  [v10 setTriggersRestart:{objc_msgSend(v3, "may_reboot_device")}];
  [v10 setMemoryIntensive:{objc_msgSend(v3, "memory_intensive")}];
  [v10 setCpuIntensive:{objc_msgSend(v3, "cpu_intensive")}];
  [v10 setDiskIntensive:{objc_msgSend(v3, "disk_intensive")}];
  [v10 setRequiresNetwork:{objc_msgSend(v3, "requires_network_connectivity")}];
  [v10 setRequiresInexpensiveNetworking:{objc_msgSend(v3, "requires_inexpensive_network")}];
  if ([v3 expected_network_download_size_bytes])
  {
    [v10 setDownloadSize:{objc_msgSend(v3, "expected_network_download_size_bytes") / 1024}];
  }

  if ([v3 expected_network_upload_size_bytes])
  {
    [v10 setUploadSize:{objc_msgSend(v3, "expected_network_upload_size_bytes") / 1024}];
  }

  v17 = [v3 network_endpoint];

  if (v17)
  {
    v18 = objc_alloc_init(NSMutableDictionary);
    v19 = [v3 network_endpoint];
    v20 = [NWEndpoint endpointWithCEndpoint:v19];
    [v18 setObject:v20 forKeyedSubscript:kNWEndpointKey];

    v21 = [v3 network_parameters];

    if (v21)
    {
      v22 = [v3 network_parameters];
      v23 = [NWParameters parametersWithCParameters:v22];
      [v18 setObject:v23 forKeyedSubscript:kNWParametersKey];
    }

    [v10 setUserInfo:v18];
  }

  [v10 setUserRequestedBackupTask:{objc_msgSend(v3, "user_requested_backup_task")}];
  if ([v3 communicates_with_paired_device])
  {
    [v10 setTargetDevice:1];
  }

  v24 = [v3 desired_motion_state];
  if (v24 == XPC_ACTIVITY_MOTION_STATE_STATIONARY)
  {
    v31 = &_DASMotionStateStationary;
  }

  else
  {
    v25 = [v3 desired_motion_state];
    if (v25 == XPC_ACTIVITY_MOTION_STATE_WALKING)
    {
      v31 = &_DASMotionStateWalking;
    }

    else
    {
      v26 = [v3 desired_motion_state];
      if (v26 == XPC_ACTIVITY_MOTION_STATE_RUNNING)
      {
        v31 = &_DASMotionStateRunning;
      }

      else
      {
        v27 = [v3 desired_motion_state];
        if (v27 == XPC_ACTIVITY_MOTION_STATE_CYCLING)
        {
          v31 = &_DASMotionStateCycling;
        }

        else
        {
          v28 = [v3 desired_motion_state];
          if (v28 == XPC_ACTIVITY_MOTION_STATE_AUTOMOTIVE)
          {
            v31 = &_DASMotionStateAutomotive;
          }

          else
          {
            v29 = [v3 desired_motion_state];
            if (v29 == XPC_ACTIVITY_MOTION_STATE_AUTOMOTIVE_MOVING)
            {
              v31 = &_DASMotionStateAutomotiveMoving;
            }

            else
            {
              v30 = [v3 desired_motion_state];
              if (v30 != XPC_ACTIVITY_MOTION_STATE_AUTOMOTIVE_STATIONARY)
              {
                goto LABEL_39;
              }

              v31 = &_DASMotionStateAutomotiveStationary;
            }
          }
        }
      }
    }
  }

  [v10 setMotionState:*v31];
LABEL_39:
  v32 = [v3 das_data];

  if (v32)
  {
    v33 = [v3 das_data];
    [v10 setConstraintsWithXPCDictionary:v33];
  }

  [v10 setHandlerQueue:qword_15498];
  [v10 setDelayedStart:1];
  [v10 linkToCTSActivity:v3];
  [v3 setDas_eligible:0];
  [v3 setDas_started:0];

  return v10;
}

- (void)linkToCTSActivity:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, v4);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_5EE4;
  v7[3] = &unk_10860;
  objc_copyWeak(&v8, &location);
  [(_DASActivity *)self setStartHandler:v7];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_6068;
  v5[3] = &unk_10860;
  objc_copyWeak(&v6, &location);
  [(_DASActivity *)self setSuspendHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

@end