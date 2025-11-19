@interface REMExporting
+ (BOOL)_updateICSComponentWithReminder:(id)a3 icsCalendarItem:(id)a4;
+ (id)_icsCalendarItemsFromReminders:(id)a3 exportingOption:(int64_t)a4;
+ (id)exportICSCalendarFromReminders:(id)a3 exportingOption:(int64_t)a4;
+ (id)icsTodoFromReminder:(id)a3 exportingOption:(int64_t)a4;
@end

@implementation REMExporting

+ (id)exportICSCalendarFromReminders:(id)a3 exportingOption:(int64_t)a4
{
  v4 = [a1 _icsCalendarItemsFromReminders:a3 exportingOption:a4];
  v5 = objc_alloc_init(MEMORY[0x1E69E3C68]);
  [v5 setComponents:v4 options:2];

  return v5;
}

+ (id)_icsCalendarItemsFromReminders:(id)a3 exportingOption:(int64_t)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (v6 && [v6 count])
  {
    v18 = v7;
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        v12 = 0;
        do
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [a1 icsTodoFromReminder:*(*(&v20 + 1) + 8 * v12) exportingOption:{a4, v18}];
          if (v13 && ([MEMORY[0x1E695DEC8] arrayWithObject:v13], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v15 = v14;
            [v19 addObjectsFromArray:v14];
          }

          else
          {
            v15 = +[REMLogStore read];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              +[REMExporting(ICSExport) _icsCalendarItemsFromReminders:exportingOption:];
            }
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    v7 = v18;
  }

  else
  {
    v19 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (id)icsTodoFromReminder:(id)a3 exportingOption:(int64_t)a4
{
  v4 = a4;
  v58 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 importedICSData];

  if (!v7)
  {
    goto LABEL_21;
  }

  v8 = [v6 importedICSData];
  v55 = 0;
  v9 = [objc_alloc(MEMORY[0x1E69E3CB0]) initWithData:v8 options:0 error:&v55];
  v10 = v55;
  if (v10 || !v9)
  {
    v13 = +[REMLogStore read];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [REMExporting(ICSExport) icsTodoFromReminder:v10 exportingOption:v13];
    }

    v21 = 0;
  }

  else
  {
    v11 = [v9 calendar];
    v12 = [v11 components];

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v51 objects:v57 count:16];
    if (v14)
    {
      v15 = v14;
      v50 = v4;
      v16 = *v52;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v52 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v51 + 1) + 8 * i);
          v19 = objc_opt_class();
          v20 = REMDynamicCast(v19, v18);
          if (v20)
          {
            v21 = v20;
            goto LABEL_17;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v51 objects:v57 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }

      v21 = 0;
LABEL_17:
      v4 = v50;
    }

    else
    {
      v21 = 0;
    }
  }

  if (!v21)
  {
LABEL_21:
    v21 = objc_alloc_init(MEMORY[0x1E69E3CF0]);
  }

  v22 = [v6 dueDateComponents];
  if (v22)
  {
    if ([v6 allDay])
    {
      v23 = [objc_alloc(MEMORY[0x1E69E3C90]) initWithYear:objc_msgSend(v22 month:"year") day:{objc_msgSend(v22, "month"), objc_msgSend(v22, "day")}];
      [v21 setDue:v23];
    }

    else if ((v4 & 1) != 0 || ([v6 timeZone], v24 = objc_claimAutoreleasedReturnValue(), v24, v24))
    {
      v25 = MEMORY[0x1E695DFE8];
      v26 = [v6 timeZone];
      v27 = [v25 timeZoneWithName:v26];

      if (!v27)
      {
        if ((v4 & 1) == 0)
        {
          v28 = +[REMLogStore read];
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            [REMExporting(ICSExport) icsTodoFromReminder:v6 exportingOption:v28];
          }
        }

        v27 = [MEMORY[0x1E695DFE8] defaultTimeZone];
      }

      v29 = [objc_alloc(MEMORY[0x1E69E3C90]) initWithYear:objc_msgSend(v22 month:"year") day:objc_msgSend(v22 hour:"month") minute:objc_msgSend(v22 second:"day") timeZone:{objc_msgSend(v22, "hour"), objc_msgSend(v22, "minute"), objc_msgSend(v22, "second"), v27}];
      [v21 setDue:v29];
    }

    else
    {
      v49 = [objc_alloc(MEMORY[0x1E69E3C90]) initWithYear:objc_msgSend(v22 month:"year") day:objc_msgSend(v22 hour:"month") minute:objc_msgSend(v22 second:{"day"), objc_msgSend(v22, "hour"), objc_msgSend(v22, "minute"), objc_msgSend(v22, "second")}];
      [v21 setDue:v49];
    }
  }

  else
  {
    [v21 setDue:0];
  }

  v30 = [v21 due];

  if (v30)
  {
    v31 = [v21 due];
    [v21 setDtstart:v31];
  }

  else
  {
    [v21 setDtstart:0];
  }

  if ([a1 _updateICSComponentWithReminder:v6 icsCalendarItem:v21])
  {
    v32 = [v6 daCalendarItemUniqueIdentifier];
    if (v32)
    {
      [v21 setUid:v32];
    }

    v33 = [v6 userActivity];
    v34 = v33;
    if (!v33)
    {
      goto LABEL_51;
    }

    v35 = [v33 type];
    if (v35 == 2)
    {
      v36 = [v34 userActivityData];
      if (v36)
      {
        [v21 setX_apple_appLinkData:v36];
      }
    }

    else
    {
      if (v35 != 1)
      {
LABEL_51:
        v39 = [v6 completionDate];
        if (v39)
        {
          v40 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
          v41 = rem_ICSDateFromNSDate(v39, v40);
          [v21 setCompleted:v41];

          v42 = 4;
          v43 = 100;
        }

        else
        {
          [v21 setCompleted:0];
          v43 = 0;
          v42 = 3;
        }

        [v21 setPercentComplete:v43];
        [v21 setStatus:v42];
        [v21 setX_apple_sort_order:{objc_msgSend(v6, "icsDisplayOrder")}];
        v44 = [v6 alternativeDisplayDateDate_forCalendar];
        if (v44)
        {
          v45 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
          v46 = rem_ICSDateFromNSDate(v44, v45);

          [v21 setX_apple_alternative_due_date_for_calendar:v46];
        }

        else
        {
          [v21 setX_apple_alternative_due_date_for_calendar:0];
        }

        goto LABEL_58;
      }

      v36 = [v34 universalLink];
      if (v36)
      {
        v37 = [objc_alloc(MEMORY[0x1E69E3CD0]) initWithValue:v36 type:5013];
        v56 = v37;
        v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
        [v21 setX_apple_activity:v38];
      }
    }

    goto LABEL_51;
  }

  v32 = +[REMLogStore read];
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    [REMExporting(ICSExport) icsTodoFromReminder:v32 exportingOption:?];
  }

LABEL_58:

  v47 = *MEMORY[0x1E69E9840];

  return v21;
}

+ (BOOL)_updateICSComponentWithReminder:(id)a3 icsCalendarItem:(id)a4
{
  v288 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (v8)
  {
    goto LABEL_219;
  }

  v223 = v7;
  v10 = [v6 titleAsString];
  if (v10)
  {
    [v223 setSummary:v10];
  }

  v220 = v9;
  v11 = [v6 notesAsString];
  if (v11)
  {
    [v223 setDescription:v11];
  }

  v219 = v11;
  v244 = v10;
  v12 = [v6 icsUrl];

  if (v12)
  {
    v13 = [v6 icsUrl];
    [v223 setUrl:v13];
  }

  v14 = [MEMORY[0x1E695DF00] date];
  [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
  v15 = v241 = v6;
  v16 = rem_ICSDateFromNSDateInTimezone(v14, v15);
  [v223 setDtstamp:v16];

  v6 = v241;
  v17 = [v241 lastModifiedDate];
  if (v17)
  {
    v18 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
    v19 = rem_ICSDateFromNSDateInTimezone(v17, v18);
    [v223 setLast_modified:v19];

    v6 = v241;
  }

  v218 = v17;
  v20 = [v6 creationDate];
  if (v20)
  {
    v21 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
    v22 = rem_ICSDateFromNSDateInTimezone(v20, v21);
    [v223 setCreated:v22];

    v6 = v241;
  }

  v217 = v20;
  [v223 setPriority:{objc_msgSend(v6, "priority")}];
  v222 = v6;
  v242 = v223;
  v23 = v244;
  if (_setSubcomponentsOnICSComponent_onceToken != -1)
  {
    +[REMExporting(ICSExport) _updateICSComponentWithReminder:icsCalendarItem:];
  }

  v233 = [MEMORY[0x1E695DF70] array];
  v221 = [v222 alarms];
  if (v221)
  {
    v245 = [MEMORY[0x1E695DF70] array];
    memset(v280, 0, sizeof(v280));
    v281 = 0u;
    v282 = 0u;
    v24 = [v242 components];
    v25 = [v24 countByEnumeratingWithState:v280 objects:buf count:16];
    if (v25)
    {
      v26 = v25;
      v27 = **&v280[16];
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (**&v280[16] != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*&v280[8] + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v245 addObject:v29];
          }
        }

        v26 = [v24 countByEnumeratingWithState:v280 objects:buf count:16];
      }

      while (v26);
    }

    v278 = 0u;
    v279 = 0u;
    v276 = 0u;
    v277 = 0u;
    obj = v221;
    v6 = v241;
    v23 = v244;
    v235 = [obj countByEnumeratingWithState:&v276 objects:v283 count:16];
    if (v235)
    {
      v231 = *v277;
      do
      {
        v30 = 0;
        do
        {
          if (*v277 != v231)
          {
            objc_enumerationMutation(obj);
          }

          v249 = v30;
          v251 = v4;
          v31 = *(*(&v276 + 1) + 8 * v30);
          v272 = 0u;
          v273 = 0u;
          v274 = 0u;
          v275 = 0u;
          v253 = v245;
          v32 = [v253 countByEnumeratingWithState:&v272 objects:&v268 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = *v273;
            while (2)
            {
              for (j = 0; j != v33; ++j)
              {
                if (*v273 != v34)
                {
                  objc_enumerationMutation(v253);
                }

                v36 = *(*(&v272 + 1) + 8 * j);
                v37 = [v36 uid];
                v38 = [v31 alarmUID];
                if ([v37 isEqual:v38])
                {

LABEL_47:
                  v42 = v36;
                  goto LABEL_48;
                }

                v39 = [v36 x_wr_alarmuid];
                v40 = [v31 alarmUID];
                v41 = [v39 isEqual:v40];

                if (v41)
                {
                  goto LABEL_47;
                }
              }

              v33 = [v253 countByEnumeratingWithState:&v272 objects:&v268 count:16];
              v42 = 0;
              if (v33)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            v42 = 0;
          }

LABEL_48:

          v258 = 0u;
          v259 = 0u;
          v256 = 0u;
          v257 = 0u;
          v43 = v233;
          v44 = [v43 countByEnumeratingWithState:&v256 objects:&v264 count:16];
          if (v44)
          {
            v45 = v44;
            v46 = *v257;
            v4 = v251;
            while (2)
            {
              for (k = 0; k != v45; ++k)
              {
                if (*v257 != v46)
                {
                  objc_enumerationMutation(v43);
                }

                if (*(*(&v256 + 1) + 8 * k) == v42)
                {
                  v254 = 1;
                  goto LABEL_59;
                }
              }

              v45 = [v43 countByEnumeratingWithState:&v256 objects:&v264 count:16];
              if (v45)
              {
                continue;
              }

              break;
            }

            v254 = 0;
          }

          else
          {
            v254 = 0;
            v4 = v251;
          }

LABEL_59:

          if (!v42)
          {
            v42 = objc_alloc_init(MEMORY[0x1E69E3C40]);
          }

          v48 = v31;
          v49 = v42;
          if (!v48)
          {
            v62 = 0;
            v23 = v244;
            goto LABEL_131;
          }

          v50 = [v48 trigger];
          objc_opt_class();
          v247 = v50;
          if (objc_opt_isKindOfClass())
          {
            v51 = v48;
            v52 = objc_opt_class();
            v53 = REMDynamicCast(v52, v50);
            v54 = [v53 dateComponents];
            v55 = REMIsInvalidICSAlarmDateComponents(v54);

            if (v55)
            {
              [REMExporting(ICSExport) _updateICSComponentWithReminder:v261 icsCalendarItem:?];
            }

            v56 = v49;
            v57 = [v53 dateComponents];
            v58 = [v57 timeZone];
            v59 = v58;
            if (v58)
            {
              v60 = v58;
              v61 = 0x1E695D000;
            }

            else
            {
              v61 = 0x1E695D000uLL;
              v60 = [MEMORY[0x1E695DFE8] defaultTimeZone];
            }

            v68 = MEMORY[0x1E695DF10];
            v69 = [v53 dateComponents];
            v70 = [v68 rem_dateWithDateComponents:v69 timeZone:v60];

            v71 = [*(v61 + 4072) timeZoneWithName:@"UTC"];
            v72 = rem_ICSDateFromNSDateInTimezone(v70, v71);

            v73 = objc_alloc(MEMORY[0x1E69E3D08]);
            v74 = [v72 value];
            v66 = [v73 initWithDate:v74];

            v49 = v56;
            v48 = v51;
            v4 = v251;
            v50 = v247;
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v67 = +[REMLogStore read];
                  if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
                  {
                    +[REMExporting(ICSExport) _updateICSComponentWithReminder:icsCalendarItem:];
                  }
                }
              }

              goto LABEL_78;
            }

            v63 = objc_opt_class();
            v53 = REMDynamicCast(v63, v50);
            v64 = objc_alloc(MEMORY[0x1E69E3CB8]);
            [v53 timeInterval];
            v60 = [v64 initWithWeeks:0 days:0 hours:0 minutes:0 seconds:v65];
            v66 = [objc_alloc(MEMORY[0x1E69E3D08]) initWithDuration:v60];
          }

          if (v66)
          {
            goto LABEL_80;
          }

LABEL_78:
          v75 = [v49 trigger];

          if (!v75)
          {
            v76 = REMInvalidICSAlarmDateComponents();
            v77 = objc_alloc(MEMORY[0x1E69E3C98]);
            v78 = [v76 year];
            v79 = [v76 month];
            v80 = [v76 day];
            v81 = [v76 hour];
            v82 = [v76 minute];
            v83 = [v76 second];
            v84 = v79;
            v50 = v247;
            v85 = v82;
            v4 = v251;
            v86 = [v77 initWithYear:v78 month:v84 day:v80 hour:v81 minute:v85 second:v83];
            v66 = [objc_alloc(MEMORY[0x1E69E3D08]) initWithDate:v86];

            if (v66)
            {
LABEL_80:
              [v49 setTrigger:v66];
            }
          }

          if (![v49 action])
          {
            [v49 setAction:1];
          }

          v87 = [v49 description];
          v88 = 0x1E695D000;
          if (v87)
          {
          }

          else if ([v49 action] != 2)
          {
            [v49 setDescription:@"Reminder"];
          }

          v89 = [v48 alarmUID];
          if (v89)
          {
            [v49 setUid:v89];
            [v49 setX_wr_alarmuid:v89];
          }

          else
          {
            v90 = [MEMORY[0x1E69E3C80] makeUID];
            [v49 setUid:v90];
            [v49 setX_wr_alarmuid:v90];
            v91 = +[REMLogStore read];
            if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
            {
              +[REMExporting(ICSExport) _updateICSComponentWithReminder:icsCalendarItem:];
            }

            v88 = 0x1E695D000uLL;
          }

          v92 = objc_opt_class();
          v93 = REMDynamicCast(v92, v50);
          v94 = objc_opt_class();
          v95 = REMDynamicCast(v94, v50);
          v96 = v95;
          v237 = v93;
          v239 = v89;
          if (v93)
          {
            v97 = [v93 proximity];
            if (v97 == 1)
            {
              v98 = MEMORY[0x1E69E4078];
LABEL_101:
              v101 = *v98;
            }

            else
            {
              if (v97 == 2)
              {
                v98 = MEMORY[0x1E69E4088];
                goto LABEL_101;
              }

              v101 = 0;
            }

            [v49 setX_apple_proximity:v101];

            v102 = v49;
            v103 = [v93 structuredLocation];
            v104 = [v103 contactLabel];
            [v103 longitude];
            if (fabs(v105) < 2.22044605e-16)
            {
              v106 = 0;
              goto LABEL_106;
            }

            [v103 latitude];
            v106 = fabs(v107) >= 2.22044605e-16;
            if (!v106)
            {
LABEL_106:
              if (!v104)
              {
                v108 = 0;
LABEL_109:
                v109 = [v103 title];
                [v108 setTitle:v109];

                v110 = [v103 address];
                [v108 setAddress:v110];

                v111 = [v103 routing];
                [v108 setRouting:v111];

                if (v106)
                {
                  v112 = MEMORY[0x1E696AEC0];
                  [v103 latitude];
                  v114 = v113;
                  [v103 longitude];
                  v116 = [v112 stringWithFormat:@"geo:%f, %f", v114, v115];
                  v117 = [MEMORY[0x1E695DFF8] URLWithString:v116];
                  [v108 setValue:v117 type:5013];

                  v118 = [v103 referenceFrameString];

                  if (v118)
                  {
                    v119 = [v103 referenceFrameString];
                    [v108 setParameterValue:v119 forName:@"X-APPLE-REFERENCEFRAME"];
                  }
                }

                else
                {
                  [v108 setValue:0 type:5013];
                  [v108 setParameterValue:0 forName:@"X-APPLE-REFERENCEFRAME"];
                }

                [v108 setParameterValue:v104 forName:@"X-APPLE-ABUID"];
                v120 = MEMORY[0x1E696AD98];
                [v103 radius];
                v121 = [v120 numberWithDouble:?];
                v122 = [v121 stringValue];
                [v108 setParameterValue:v122 forName:@"X-APPLE-RADIUS"];

                v123 = [v103 mapKitHandle];
                if (v123)
                {
                  v229 = v104;
                  v124 = v96;
                  [v108 setMapKitHandle:v123];
                  v125 = [v108 ICSStringWithOptions:0];
                  v126 = [v125 UTF8String];
                  if (v126 && strlen(v126) >= 0x3DF)
                  {
                    v127 = +[REMLogStore read];
                    if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
                    {
                      [(REMExporting(ICSExport) *)&v262 _updateICSComponentWithReminder:v263 icsCalendarItem:v127];
                    }

                    [v108 setMapKitHandle:0];
                    v4 = v251;
                  }

                  v96 = v124;
                  v104 = v229;
                }

                v88 = 0x1E695D000;
                goto LABEL_127;
              }
            }

            v108 = objc_alloc_init(MEMORY[0x1E69E3CE8]);
            [v102 setX_apple_structured_location:v108];
            goto LABEL_109;
          }

          if (v95)
          {
            v99 = [v95 event];
            if (v99 == 1)
            {
              v100 = MEMORY[0x1E69E4080];
LABEL_123:
              v128 = *v100;
            }

            else
            {
              if (v99 == 2)
              {
                v100 = MEMORY[0x1E69E4090];
                goto LABEL_123;
              }

              v128 = 0;
            }

            [v49 setX_apple_proximity:v128];
          }

          [v49 setX_apple_structured_location:0];
LABEL_127:

          v129 = [v48 acknowledgedDate];
          if (v129)
          {
            v227 = [*(v88 + 4072) timeZoneWithName:@"UTC"];
            [v129 timeIntervalSinceReferenceDate];
            v131 = rem_DateComponentsFromAbsoluteTime(v227, v130);
            v225 = objc_alloc(MEMORY[0x1E69E3C98]);
            v230 = v96;
            v132 = [v131 year];
            v133 = [v131 month];
            v134 = [v131 day];
            v135 = v43;
            v136 = v48;
            v137 = [v131 hour];
            v138 = v49;
            v139 = [v131 minute];
            v140 = [v131 second];
            v141 = v132;
            v96 = v230;
            v142 = v134;
            v4 = v251;
            v143 = v137;
            v48 = v136;
            v43 = v135;
            v144 = [v225 initWithYear:v141 month:v133 day:v142 hour:v143 minute:v139 second:v140];
            [v138 setAcknowledged:v144];

            v49 = v138;
          }

          else
          {
            [v49 setAcknowledged:0];
          }

          v23 = v244;
          v145 = [v48 originalAlarmUID];
          [v49 setRelatedTo:v145];

          v62 = v49;
LABEL_131:

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_140;
          }

          v146 = [v62 trigger];
          if (v146)
          {
            v4 = [v62 trigger];
            if (([v4 isDurationBased] & 1) == 0)
            {

LABEL_140:
              v148 = v249;
              goto LABEL_141;
            }
          }

          v147 = [v242 dtstart];

          if (v146)
          {
          }

          v148 = v249;
          if (!v147)
          {
            [v62 setTrigger:_setSubcomponentsOnICSComponent_sInvalidTrigger];
          }

          v23 = v244;
LABEL_141:
          if (v62)
          {
            v149 = v254;
          }

          else
          {
            v149 = 1;
          }

          if ((v149 & 1) == 0)
          {
            [v43 addObject:v62];
          }

          v30 = v148 + 1;
          v6 = v241;
        }

        while (v30 != v235);
        v235 = [obj countByEnumeratingWithState:&v276 objects:v283 count:16];
      }

      while (v235);
    }
  }

  [v242 setComponents:v233];

  v150 = v222;
  v228 = v242;
  v151 = [v150 recurrenceRules];
  if (!v151)
  {
    v214 = 0;
    goto LABEL_218;
  }

  v152 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v151, "count")}];
  v264 = 0u;
  v265 = 0u;
  v266 = 0u;
  v267 = 0u;
  v226 = v151;
  v240 = v151;
  v153 = [v240 countByEnumeratingWithState:&v264 objects:v283 count:16];
  if (!v153)
  {
    goto LABEL_213;
  }

  v154 = v153;
  v155 = *v265;
  v234 = v150;
  v236 = *v265;
  v232 = v152;
  do
  {
    v156 = 0;
    v238 = v154;
    do
    {
      if (*v265 != v155)
      {
        objc_enumerationMutation(v240);
      }

      v157 = *(*(&v264 + 1) + 8 * v156);
      v158 = v150;
      v252 = v158;
      if (!v157)
      {
        v161 = 0;
        goto LABEL_206;
      }

      v246 = v156;
      v159 = [v157 frequency];
      if (v159 >= 5)
      {
        v162 = v157;
        v163 = +[REMLogStore read];
        if (os_log_type_enabled(v163, OS_LOG_TYPE_ERROR))
        {
          +[REMExporting(ICSExport) _updateICSComponentWithReminder:icsCalendarItem:];
        }

        v160 = 4;
        v157 = v162;
      }

      else
      {
        v160 = qword_19A231338[v159];
      }

      v255 = [objc_alloc(MEMORY[0x1E69E3CD8]) initWithFrequency:v160];
      v164 = [v157 interval];
      if (v164 > 1)
      {
        v165 = [MEMORY[0x1E696AD98] numberWithInteger:v164];
        [v255 setInterval:v165];
      }

      if ([v157 firstDayOfTheWeek] >= 1 && objc_msgSend(v157, "firstDayOfTheWeek") != 2)
      {
        v166 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v157, "firstDayOfTheWeek")}];
        [v255 setWkst:v166];
      }

      v167 = [v157 recurrenceEnd];
      v168 = [v167 endDate];

      v250 = v157;
      v169 = [v157 recurrenceEnd];
      v170 = [v169 occurrenceCount];

      v248 = v168;
      if (v170)
      {
        v171 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v170];
        [v255 setCount:v171];
      }

      else
      {
        if (!v168)
        {
          goto LABEL_179;
        }

        v172 = [v252 timeZone];

        if (v172)
        {
          v173 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
          v174 = rem_ICSDateFromNSDateInTimezone(v168, v173);
        }

        else if ([v252 allDay])
        {
          [v168 timeIntervalSinceReferenceDate];
          v173 = rem_DateComponentsFromAbsoluteTime(0, v175);
          v176 = objc_alloc(MEMORY[0x1E69E3C90]);
          v177 = [v173 year];
          v178 = [v173 month];
          v179 = [v173 day];
          v180 = v178;
          v155 = v236;
          v174 = [v176 initWithYear:v177 month:v180 day:v179];
        }

        else
        {
          v173 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
          v174 = rem_ICSFloatingDateTimeFromNSDateInTimezone(v168, v173);
        }

        v171 = v174;

        v181 = +[REMLogStore read];
        if (os_log_type_enabled(v181, OS_LOG_TYPE_DEBUG))
        {
          v213 = [v171 value];
          *buf = 138412546;
          v285 = v213;
          v286 = 2112;
          v287 = v168;
          _os_log_debug_impl(&dword_19A0DB000, v181, OS_LOG_TYPE_DEBUG, "Setting ICS recurrence until date: untilDate=%@ remEndDate=%@)", buf, 0x16u);
        }

        v182 = [v171 value];
        [v255 setUntil:v182];

        v154 = v238;
      }

LABEL_179:
      v157 = v250;
      v183 = [v250 daysOfTheWeek];
      v243 = v183;
      if (v183)
      {
        v184 = v183;
        if ([v183 count])
        {
          v185 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v268 = 0u;
          v269 = 0u;
          v270 = 0u;
          v271 = 0u;
          v186 = v184;
          v187 = [v186 countByEnumeratingWithState:&v268 objects:buf count:16];
          if (v187)
          {
            v188 = v187;
            v189 = *v269;
            do
            {
              for (m = 0; m != v188; ++m)
              {
                if (*v269 != v189)
                {
                  objc_enumerationMutation(v186);
                }

                v191 = *(*(&v268 + 1) + 8 * m);
                v192 = [v191 dayOfTheWeek];
                if ((v192 - 1) >= 7)
                {
                  v193 = +[REMLogStore read];
                  if (os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
                  {
                    +[REMExporting(ICSExport) _updateICSComponentWithReminder:icsCalendarItem:];
                  }

                  v192 = 1;
                }

                v194 = objc_alloc(MEMORY[0x1E69E3C60]);
                v195 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v191, "weekNumber")}];
                v196 = [v194 initWithWeekday:v192 number:v195];

                [v185 addObject:v196];
              }

              v188 = [v186 countByEnumeratingWithState:&v268 objects:buf count:16];
            }

            while (v188);
          }

          v197 = +[REMLogStore read];
          if (os_log_type_enabled(v197, OS_LOG_TYPE_DEBUG))
          {
            *v280 = 138412546;
            *&v280[4] = v185;
            *&v280[12] = 2112;
            *&v280[14] = v186;
            _os_log_debug_impl(&dword_19A0DB000, v197, OS_LOG_TYPE_DEBUG, "Setting ICS byday days array: %@ %@", v280, 0x16u);
          }

          [v255 setByday:v185];
          v6 = v241;
          v152 = v232;
          v150 = v234;
          v155 = v236;
          v154 = v238;
          v157 = v250;
        }
      }

      v198 = [v157 monthsOfTheYear];

      if (v198)
      {
        v199 = [v157 monthsOfTheYear];
        [v255 setBymonth:v199];
      }

      v200 = [v157 daysOfTheMonth];

      if (v200)
      {
        v201 = [v157 daysOfTheMonth];
        [v255 setBymonthday:v201];
      }

      v202 = [v157 weeksOfTheYear];

      if (v202)
      {
        v203 = [v157 weeksOfTheYear];
        [v255 setByweekno:v203];
      }

      v204 = [v157 daysOfTheYear];

      if (v204)
      {
        v205 = [v157 daysOfTheYear];
        [v255 setByyearday:v205];
      }

      v206 = [v157 setPositions];

      if (v206)
      {
        v207 = [v157 setPositions];
        [v255 setBysetpos:v207];
      }

      v156 = v246;
      v158 = v252;
      v161 = v255;
LABEL_206:

      if (v161)
      {
        [v152 addObject:v161];
      }

      else
      {
        v208 = v156;
        v209 = +[REMLogStore read];
        if (os_log_type_enabled(v209, OS_LOG_TYPE_ERROR))
        {
          v210 = [v252 objectID];
          v211 = v157;
          v212 = v210;
          *buf = 138412546;
          v285 = v211;
          v286 = 2112;
          v287 = v210;
          _os_log_error_impl(&dword_19A0DB000, v209, OS_LOG_TYPE_ERROR, "Couldn't create an ICSRecurrence from REMRecurrenceRule %@ {reminderID: %@}", buf, 0x16u);
        }

        v156 = v208;
      }

      ++v156;
    }

    while (v156 != v154);
    v154 = [v240 countByEnumeratingWithState:&v264 objects:v283 count:16];
  }

  while (v154);
LABEL_213:

  if ([v152 count])
  {
    v214 = [v152 copy];
  }

  else
  {
    v214 = 0;
  }

  v23 = v244;
  v151 = v226;

LABEL_218:
  [v228 setRrule:v214];

  v9 = v220;
  v7 = v223;
LABEL_219:

  v215 = *MEMORY[0x1E69E9840];
  return v9;
}

@end