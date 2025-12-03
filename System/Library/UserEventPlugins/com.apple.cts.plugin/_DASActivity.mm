@interface _DASActivity
+ (_DASActivity)activityWithCTSActivity:(id)activity;
- (void)linkToCTSActivity:(id)activity;
@end

@implementation _DASActivity

+ (_DASActivity)activityWithCTSActivity:(id)activity
{
  activityCopy = activity;
  priority = [activityCopy priority];
  v5 = &_DASSchedulingPriorityUtility;
  if (priority != 1)
  {
    v5 = &_DASSchedulingPriorityMaintenance;
  }

  v6 = *v5;
  sub_2BAC([activityCopy eligibleTime]);
  v7 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  sub_2BAC([activityCopy deadlineTime]);
  v8 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  name = [activityCopy name];
  v10 = +[_DASActivity activityWithName:priority:duration:startingAfter:startingBefore:](_DASActivity, "activityWithName:priority:duration:startingAfter:startingBefore:", name, v6, [activityCopy expected_duration], v7, v8);
  serviceName = [activityCopy serviceName];
  [v10 setServiceName:serviceName];

  bundle_id = [activityCopy bundle_id];
  [v10 setBundleId:bundle_id];

  related_applications = [activityCopy related_applications];
  [v10 setRelatedApplications:related_applications];

  involved_processes = [activityCopy involved_processes];
  [v10 setInvolvedProcesses:involved_processes];

  [v10 setRunOnAppForeground:{objc_msgSend(activityCopy, "runOnAppForeground")}];
  [v10 setBudgeted:{objc_msgSend(activityCopy, "duet_power_budgeted")}];
  [v10 setDataBudgeted:{objc_msgSend(activityCopy, "data_budgeted")}];
  if ([activityCopy repeating])
  {
    [v10 setInterval:{objc_msgSend(activityCopy, "interval")}];
  }

  if ([activityCopy requires_protection_class] == 1)
  {
    v15 = +[_DASFileProtection complete];
  }

  else if ([activityCopy requires_protection_class] == 2)
  {
    v15 = +[_DASFileProtection completeUnlessOpen];
  }

  else
  {
    if ([activityCopy requires_protection_class] != 3)
    {
      goto LABEL_12;
    }

    v15 = +[_DASFileProtection completeUntilFirstUserAuthentication];
  }

  v16 = v15;
  [v10 setFileProtection:v15];

LABEL_12:
  [v10 setRequiresBuddyComplete:{objc_msgSend(activityCopy, "requires_buddy_complete")}];
  if ([activityCopy schedule_rtc_wake])
  {
    [v10 setSchedulingPriority:_DASSchedulingPriorityDefault];
  }

  [v10 setDarkWakeEligible:{objc_msgSend(activityCopy, "power_nap")}];
  [v10 setBeforeDaysFirstActivity:{objc_msgSend(activityCopy, "app_refresh")}];
  [v10 setRequiresDeviceInactivity:{objc_msgSend(activityCopy, "requires_screen_sleep")}];
  [v10 setRequiresSignificantUserInactivity:{objc_msgSend(activityCopy, "requires_significant_user_inactivity")}];
  [v10 setPreventDeviceSleep:{objc_msgSend(activityCopy, "prevents_device_sleep")}];
  [v10 setRequiresPlugin:{objc_msgSend(activityCopy, "allow_battery") ^ 1}];
  [v10 setTriggersRestart:{objc_msgSend(activityCopy, "may_reboot_device")}];
  [v10 setMemoryIntensive:{objc_msgSend(activityCopy, "memory_intensive")}];
  [v10 setCpuIntensive:{objc_msgSend(activityCopy, "cpu_intensive")}];
  [v10 setDiskIntensive:{objc_msgSend(activityCopy, "disk_intensive")}];
  [v10 setRequiresNetwork:{objc_msgSend(activityCopy, "requires_network_connectivity")}];
  [v10 setRequiresInexpensiveNetworking:{objc_msgSend(activityCopy, "requires_inexpensive_network")}];
  if ([activityCopy expected_network_download_size_bytes])
  {
    [v10 setDownloadSize:{objc_msgSend(activityCopy, "expected_network_download_size_bytes") / 1024}];
  }

  if ([activityCopy expected_network_upload_size_bytes])
  {
    [v10 setUploadSize:{objc_msgSend(activityCopy, "expected_network_upload_size_bytes") / 1024}];
  }

  network_endpoint = [activityCopy network_endpoint];

  if (network_endpoint)
  {
    v18 = objc_alloc_init(NSMutableDictionary);
    network_endpoint2 = [activityCopy network_endpoint];
    v20 = [NWEndpoint endpointWithCEndpoint:network_endpoint2];
    [v18 setObject:v20 forKeyedSubscript:kNWEndpointKey];

    network_parameters = [activityCopy network_parameters];

    if (network_parameters)
    {
      network_parameters2 = [activityCopy network_parameters];
      v23 = [NWParameters parametersWithCParameters:network_parameters2];
      [v18 setObject:v23 forKeyedSubscript:kNWParametersKey];
    }

    [v10 setUserInfo:v18];
  }

  [v10 setUserRequestedBackupTask:{objc_msgSend(activityCopy, "user_requested_backup_task")}];
  if ([activityCopy communicates_with_paired_device])
  {
    [v10 setTargetDevice:1];
  }

  desired_motion_state = [activityCopy desired_motion_state];
  if (desired_motion_state == XPC_ACTIVITY_MOTION_STATE_STATIONARY)
  {
    v31 = &_DASMotionStateStationary;
  }

  else
  {
    desired_motion_state2 = [activityCopy desired_motion_state];
    if (desired_motion_state2 == XPC_ACTIVITY_MOTION_STATE_WALKING)
    {
      v31 = &_DASMotionStateWalking;
    }

    else
    {
      desired_motion_state3 = [activityCopy desired_motion_state];
      if (desired_motion_state3 == XPC_ACTIVITY_MOTION_STATE_RUNNING)
      {
        v31 = &_DASMotionStateRunning;
      }

      else
      {
        desired_motion_state4 = [activityCopy desired_motion_state];
        if (desired_motion_state4 == XPC_ACTIVITY_MOTION_STATE_CYCLING)
        {
          v31 = &_DASMotionStateCycling;
        }

        else
        {
          desired_motion_state5 = [activityCopy desired_motion_state];
          if (desired_motion_state5 == XPC_ACTIVITY_MOTION_STATE_AUTOMOTIVE)
          {
            v31 = &_DASMotionStateAutomotive;
          }

          else
          {
            desired_motion_state6 = [activityCopy desired_motion_state];
            if (desired_motion_state6 == XPC_ACTIVITY_MOTION_STATE_AUTOMOTIVE_MOVING)
            {
              v31 = &_DASMotionStateAutomotiveMoving;
            }

            else
            {
              desired_motion_state7 = [activityCopy desired_motion_state];
              if (desired_motion_state7 != XPC_ACTIVITY_MOTION_STATE_AUTOMOTIVE_STATIONARY)
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
  das_data = [activityCopy das_data];

  if (das_data)
  {
    das_data2 = [activityCopy das_data];
    [v10 setConstraintsWithXPCDictionary:das_data2];
  }

  [v10 setHandlerQueue:qword_15498];
  [v10 setDelayedStart:1];
  [v10 linkToCTSActivity:activityCopy];
  [activityCopy setDas_eligible:0];
  [activityCopy setDas_started:0];

  return v10;
}

- (void)linkToCTSActivity:(id)activity
{
  activityCopy = activity;
  objc_initWeak(&location, activityCopy);
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