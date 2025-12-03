@interface REMExporting
+ (BOOL)_updateICSComponentWithReminder:(id)reminder icsCalendarItem:(id)item;
+ (id)_icsCalendarItemsFromReminders:(id)reminders exportingOption:(int64_t)option;
+ (id)exportICSCalendarFromReminders:(id)reminders exportingOption:(int64_t)option;
+ (id)icsTodoFromReminder:(id)reminder exportingOption:(int64_t)option;
@end

@implementation REMExporting

+ (id)exportICSCalendarFromReminders:(id)reminders exportingOption:(int64_t)option
{
  v4 = [self _icsCalendarItemsFromReminders:reminders exportingOption:option];
  v5 = objc_alloc_init(MEMORY[0x1E69E3C68]);
  [v5 setComponents:v4 options:2];

  return v5;
}

+ (id)_icsCalendarItemsFromReminders:(id)reminders exportingOption:(int64_t)option
{
  v25 = *MEMORY[0x1E69E9840];
  remindersCopy = reminders;
  v7 = remindersCopy;
  if (remindersCopy && [remindersCopy count])
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

          v13 = [self icsTodoFromReminder:*(*(&v20 + 1) + 8 * v12) exportingOption:{option, v18}];
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

+ (id)icsTodoFromReminder:(id)reminder exportingOption:(int64_t)option
{
  optionCopy = option;
  v58 = *MEMORY[0x1E69E9840];
  reminderCopy = reminder;
  importedICSData = [reminderCopy importedICSData];

  if (!importedICSData)
  {
    goto LABEL_21;
  }

  importedICSData2 = [reminderCopy importedICSData];
  v55 = 0;
  v9 = [objc_alloc(MEMORY[0x1E69E3CB0]) initWithData:importedICSData2 options:0 error:&v55];
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
    calendar = [v9 calendar];
    components = [calendar components];

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v13 = components;
    v14 = [v13 countByEnumeratingWithState:&v51 objects:v57 count:16];
    if (v14)
    {
      v15 = v14;
      v50 = optionCopy;
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
      optionCopy = v50;
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

  dueDateComponents = [reminderCopy dueDateComponents];
  if (dueDateComponents)
  {
    if ([reminderCopy allDay])
    {
      v23 = [objc_alloc(MEMORY[0x1E69E3C90]) initWithYear:objc_msgSend(dueDateComponents month:"year") day:{objc_msgSend(dueDateComponents, "month"), objc_msgSend(dueDateComponents, "day")}];
      [v21 setDue:v23];
    }

    else if ((optionCopy & 1) != 0 || ([reminderCopy timeZone], v24 = objc_claimAutoreleasedReturnValue(), v24, v24))
    {
      v25 = MEMORY[0x1E695DFE8];
      timeZone = [reminderCopy timeZone];
      defaultTimeZone = [v25 timeZoneWithName:timeZone];

      if (!defaultTimeZone)
      {
        if ((optionCopy & 1) == 0)
        {
          v28 = +[REMLogStore read];
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            [REMExporting(ICSExport) icsTodoFromReminder:reminderCopy exportingOption:v28];
          }
        }

        defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
      }

      v29 = [objc_alloc(MEMORY[0x1E69E3C90]) initWithYear:objc_msgSend(dueDateComponents month:"year") day:objc_msgSend(dueDateComponents hour:"month") minute:objc_msgSend(dueDateComponents second:"day") timeZone:{objc_msgSend(dueDateComponents, "hour"), objc_msgSend(dueDateComponents, "minute"), objc_msgSend(dueDateComponents, "second"), defaultTimeZone}];
      [v21 setDue:v29];
    }

    else
    {
      v49 = [objc_alloc(MEMORY[0x1E69E3C90]) initWithYear:objc_msgSend(dueDateComponents month:"year") day:objc_msgSend(dueDateComponents hour:"month") minute:objc_msgSend(dueDateComponents second:{"day"), objc_msgSend(dueDateComponents, "hour"), objc_msgSend(dueDateComponents, "minute"), objc_msgSend(dueDateComponents, "second")}];
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

  if ([self _updateICSComponentWithReminder:reminderCopy icsCalendarItem:v21])
  {
    daCalendarItemUniqueIdentifier = [reminderCopy daCalendarItemUniqueIdentifier];
    if (daCalendarItemUniqueIdentifier)
    {
      [v21 setUid:daCalendarItemUniqueIdentifier];
    }

    userActivity = [reminderCopy userActivity];
    v34 = userActivity;
    if (!userActivity)
    {
      goto LABEL_51;
    }

    type = [userActivity type];
    if (type == 2)
    {
      userActivityData = [v34 userActivityData];
      if (userActivityData)
      {
        [v21 setX_apple_appLinkData:userActivityData];
      }
    }

    else
    {
      if (type != 1)
      {
LABEL_51:
        completionDate = [reminderCopy completionDate];
        if (completionDate)
        {
          v40 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
          v41 = rem_ICSDateFromNSDate(completionDate, v40);
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
        [v21 setX_apple_sort_order:{objc_msgSend(reminderCopy, "icsDisplayOrder")}];
        alternativeDisplayDateDate_forCalendar = [reminderCopy alternativeDisplayDateDate_forCalendar];
        if (alternativeDisplayDateDate_forCalendar)
        {
          v45 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
          v46 = rem_ICSDateFromNSDate(alternativeDisplayDateDate_forCalendar, v45);

          [v21 setX_apple_alternative_due_date_for_calendar:v46];
        }

        else
        {
          [v21 setX_apple_alternative_due_date_for_calendar:0];
        }

        goto LABEL_58;
      }

      userActivityData = [v34 universalLink];
      if (userActivityData)
      {
        v37 = [objc_alloc(MEMORY[0x1E69E3CD0]) initWithValue:userActivityData type:5013];
        v56 = v37;
        v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
        [v21 setX_apple_activity:v38];
      }
    }

    goto LABEL_51;
  }

  daCalendarItemUniqueIdentifier = +[REMLogStore read];
  if (os_log_type_enabled(daCalendarItemUniqueIdentifier, OS_LOG_TYPE_ERROR))
  {
    [REMExporting(ICSExport) icsTodoFromReminder:daCalendarItemUniqueIdentifier exportingOption:?];
  }

LABEL_58:

  v47 = *MEMORY[0x1E69E9840];

  return v21;
}

+ (BOOL)_updateICSComponentWithReminder:(id)reminder icsCalendarItem:(id)item
{
  v288 = *MEMORY[0x1E69E9840];
  reminderCopy = reminder;
  itemCopy = item;
  if (reminderCopy)
  {
    v8 = itemCopy == 0;
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

  v223 = itemCopy;
  titleAsString = [reminderCopy titleAsString];
  if (titleAsString)
  {
    [v223 setSummary:titleAsString];
  }

  v220 = v9;
  notesAsString = [reminderCopy notesAsString];
  if (notesAsString)
  {
    [v223 setDescription:notesAsString];
  }

  v219 = notesAsString;
  v244 = titleAsString;
  icsUrl = [reminderCopy icsUrl];

  if (icsUrl)
  {
    icsUrl2 = [reminderCopy icsUrl];
    [v223 setUrl:icsUrl2];
  }

  date = [MEMORY[0x1E695DF00] date];
  [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
  v15 = v241 = reminderCopy;
  v16 = rem_ICSDateFromNSDateInTimezone(date, v15);
  [v223 setDtstamp:v16];

  reminderCopy = v241;
  lastModifiedDate = [v241 lastModifiedDate];
  if (lastModifiedDate)
  {
    v18 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
    v19 = rem_ICSDateFromNSDateInTimezone(lastModifiedDate, v18);
    [v223 setLast_modified:v19];

    reminderCopy = v241;
  }

  v218 = lastModifiedDate;
  creationDate = [reminderCopy creationDate];
  if (creationDate)
  {
    v21 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
    v22 = rem_ICSDateFromNSDateInTimezone(creationDate, v21);
    [v223 setCreated:v22];

    reminderCopy = v241;
  }

  v217 = creationDate;
  [v223 setPriority:{objc_msgSend(reminderCopy, "priority")}];
  v222 = reminderCopy;
  v242 = v223;
  v23 = v244;
  if (_setSubcomponentsOnICSComponent_onceToken != -1)
  {
    +[REMExporting(ICSExport) _updateICSComponentWithReminder:icsCalendarItem:];
  }

  array = [MEMORY[0x1E695DF70] array];
  alarms = [v222 alarms];
  if (alarms)
  {
    array2 = [MEMORY[0x1E695DF70] array];
    memset(v280, 0, sizeof(v280));
    v281 = 0u;
    v282 = 0u;
    components = [v242 components];
    v25 = [components countByEnumeratingWithState:v280 objects:buf count:16];
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
            objc_enumerationMutation(components);
          }

          v29 = *(*&v280[8] + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [array2 addObject:v29];
          }
        }

        v26 = [components countByEnumeratingWithState:v280 objects:buf count:16];
      }

      while (v26);
    }

    v278 = 0u;
    v279 = 0u;
    v276 = 0u;
    v277 = 0u;
    obj = alarms;
    reminderCopy = v241;
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
          v251 = trigger4;
          v31 = *(*(&v276 + 1) + 8 * v30);
          v272 = 0u;
          v273 = 0u;
          v274 = 0u;
          v275 = 0u;
          v253 = array2;
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
                alarmUID = [v31 alarmUID];
                if ([v37 isEqual:alarmUID])
                {

LABEL_47:
                  v42 = v36;
                  goto LABEL_48;
                }

                x_wr_alarmuid = [v36 x_wr_alarmuid];
                alarmUID2 = [v31 alarmUID];
                v41 = [x_wr_alarmuid isEqual:alarmUID2];

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
          v43 = array;
          v44 = [v43 countByEnumeratingWithState:&v256 objects:&v264 count:16];
          if (v44)
          {
            v45 = v44;
            v46 = *v257;
            trigger4 = v251;
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
            trigger4 = v251;
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

          trigger = [v48 trigger];
          objc_opt_class();
          v247 = trigger;
          if (objc_opt_isKindOfClass())
          {
            v51 = v48;
            v52 = objc_opt_class();
            v53 = REMDynamicCast(v52, trigger);
            dateComponents = [v53 dateComponents];
            v55 = REMIsInvalidICSAlarmDateComponents(dateComponents);

            if (v55)
            {
              [REMExporting(ICSExport) _updateICSComponentWithReminder:v261 icsCalendarItem:?];
            }

            v56 = v49;
            dateComponents2 = [v53 dateComponents];
            timeZone = [dateComponents2 timeZone];
            v59 = timeZone;
            if (timeZone)
            {
              defaultTimeZone = timeZone;
              v61 = 0x1E695D000;
            }

            else
            {
              v61 = 0x1E695D000uLL;
              defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
            }

            v68 = MEMORY[0x1E695DF10];
            dateComponents3 = [v53 dateComponents];
            v70 = [v68 rem_dateWithDateComponents:dateComponents3 timeZone:defaultTimeZone];

            v71 = [*(v61 + 4072) timeZoneWithName:@"UTC"];
            v72 = rem_ICSDateFromNSDateInTimezone(v70, v71);

            v73 = objc_alloc(MEMORY[0x1E69E3D08]);
            value = [v72 value];
            v66 = [v73 initWithDate:value];

            v49 = v56;
            v48 = v51;
            trigger4 = v251;
            trigger = v247;
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
            v53 = REMDynamicCast(v63, trigger);
            v64 = objc_alloc(MEMORY[0x1E69E3CB8]);
            [v53 timeInterval];
            defaultTimeZone = [v64 initWithWeeks:0 days:0 hours:0 minutes:0 seconds:v65];
            v66 = [objc_alloc(MEMORY[0x1E69E3D08]) initWithDuration:defaultTimeZone];
          }

          if (v66)
          {
            goto LABEL_80;
          }

LABEL_78:
          trigger2 = [v49 trigger];

          if (!trigger2)
          {
            v76 = REMInvalidICSAlarmDateComponents();
            v77 = objc_alloc(MEMORY[0x1E69E3C98]);
            year = [v76 year];
            month = [v76 month];
            v80 = [v76 day];
            hour = [v76 hour];
            minute = [v76 minute];
            second = [v76 second];
            v84 = month;
            trigger = v247;
            v85 = minute;
            trigger4 = v251;
            v86 = [v77 initWithYear:year month:v84 day:v80 hour:hour minute:v85 second:second];
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

          alarmUID3 = [v48 alarmUID];
          if (alarmUID3)
          {
            [v49 setUid:alarmUID3];
            [v49 setX_wr_alarmuid:alarmUID3];
          }

          else
          {
            makeUID = [MEMORY[0x1E69E3C80] makeUID];
            [v49 setUid:makeUID];
            [v49 setX_wr_alarmuid:makeUID];
            v91 = +[REMLogStore read];
            if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
            {
              +[REMExporting(ICSExport) _updateICSComponentWithReminder:icsCalendarItem:];
            }

            v88 = 0x1E695D000uLL;
          }

          v92 = objc_opt_class();
          v93 = REMDynamicCast(v92, trigger);
          v94 = objc_opt_class();
          v95 = REMDynamicCast(v94, trigger);
          v96 = v95;
          v237 = v93;
          v239 = alarmUID3;
          if (v93)
          {
            proximity = [v93 proximity];
            if (proximity == 1)
            {
              v98 = MEMORY[0x1E69E4078];
LABEL_101:
              v101 = *v98;
            }

            else
            {
              if (proximity == 2)
              {
                v98 = MEMORY[0x1E69E4088];
                goto LABEL_101;
              }

              v101 = 0;
            }

            [v49 setX_apple_proximity:v101];

            v102 = v49;
            structuredLocation = [v93 structuredLocation];
            contactLabel = [structuredLocation contactLabel];
            [structuredLocation longitude];
            if (fabs(v105) < 2.22044605e-16)
            {
              v106 = 0;
              goto LABEL_106;
            }

            [structuredLocation latitude];
            v106 = fabs(v107) >= 2.22044605e-16;
            if (!v106)
            {
LABEL_106:
              if (!contactLabel)
              {
                v108 = 0;
LABEL_109:
                title = [structuredLocation title];
                [v108 setTitle:title];

                address = [structuredLocation address];
                [v108 setAddress:address];

                routing = [structuredLocation routing];
                [v108 setRouting:routing];

                if (v106)
                {
                  v112 = MEMORY[0x1E696AEC0];
                  [structuredLocation latitude];
                  v114 = v113;
                  [structuredLocation longitude];
                  v115 = [v112 stringWithFormat:@"geo:%f, %f", v114, v115];
                  v117 = [MEMORY[0x1E695DFF8] URLWithString:v115];
                  [v108 setValue:v117 type:5013];

                  referenceFrameString = [structuredLocation referenceFrameString];

                  if (referenceFrameString)
                  {
                    referenceFrameString2 = [structuredLocation referenceFrameString];
                    [v108 setParameterValue:referenceFrameString2 forName:@"X-APPLE-REFERENCEFRAME"];
                  }
                }

                else
                {
                  [v108 setValue:0 type:5013];
                  [v108 setParameterValue:0 forName:@"X-APPLE-REFERENCEFRAME"];
                }

                [v108 setParameterValue:contactLabel forName:@"X-APPLE-ABUID"];
                v120 = MEMORY[0x1E696AD98];
                [structuredLocation radius];
                v121 = [v120 numberWithDouble:?];
                stringValue = [v121 stringValue];
                [v108 setParameterValue:stringValue forName:@"X-APPLE-RADIUS"];

                mapKitHandle = [structuredLocation mapKitHandle];
                if (mapKitHandle)
                {
                  v229 = contactLabel;
                  v124 = v96;
                  [v108 setMapKitHandle:mapKitHandle];
                  v125 = [v108 ICSStringWithOptions:0];
                  uTF8String = [v125 UTF8String];
                  if (uTF8String && strlen(uTF8String) >= 0x3DF)
                  {
                    v127 = +[REMLogStore read];
                    if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
                    {
                      [(REMExporting(ICSExport) *)&v262 _updateICSComponentWithReminder:v263 icsCalendarItem:v127];
                    }

                    [v108 setMapKitHandle:0];
                    trigger4 = v251;
                  }

                  v96 = v124;
                  contactLabel = v229;
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
            event = [v95 event];
            if (event == 1)
            {
              v100 = MEMORY[0x1E69E4080];
LABEL_123:
              v128 = *v100;
            }

            else
            {
              if (event == 2)
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

          acknowledgedDate = [v48 acknowledgedDate];
          if (acknowledgedDate)
          {
            v227 = [*(v88 + 4072) timeZoneWithName:@"UTC"];
            [acknowledgedDate timeIntervalSinceReferenceDate];
            v131 = rem_DateComponentsFromAbsoluteTime(v227, v130);
            v225 = objc_alloc(MEMORY[0x1E69E3C98]);
            v230 = v96;
            year2 = [v131 year];
            month2 = [v131 month];
            v134 = [v131 day];
            v135 = v43;
            v136 = v48;
            hour2 = [v131 hour];
            v138 = v49;
            minute2 = [v131 minute];
            second2 = [v131 second];
            v141 = year2;
            v96 = v230;
            v142 = v134;
            trigger4 = v251;
            v143 = hour2;
            v48 = v136;
            v43 = v135;
            v144 = [v225 initWithYear:v141 month:month2 day:v142 hour:v143 minute:minute2 second:second2];
            [v138 setAcknowledged:v144];

            v49 = v138;
          }

          else
          {
            [v49 setAcknowledged:0];
          }

          v23 = v244;
          originalAlarmUID = [v48 originalAlarmUID];
          [v49 setRelatedTo:originalAlarmUID];

          v62 = v49;
LABEL_131:

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_140;
          }

          trigger3 = [v62 trigger];
          if (trigger3)
          {
            trigger4 = [v62 trigger];
            if (([trigger4 isDurationBased] & 1) == 0)
            {

LABEL_140:
              v148 = v249;
              goto LABEL_141;
            }
          }

          dtstart = [v242 dtstart];

          if (trigger3)
          {
          }

          v148 = v249;
          if (!dtstart)
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
          reminderCopy = v241;
        }

        while (v30 != v235);
        v235 = [obj countByEnumeratingWithState:&v276 objects:v283 count:16];
      }

      while (v235);
    }
  }

  [v242 setComponents:array];

  v150 = v222;
  v228 = v242;
  recurrenceRules = [v150 recurrenceRules];
  if (!recurrenceRules)
  {
    v214 = 0;
    goto LABEL_218;
  }

  v152 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(recurrenceRules, "count")}];
  v264 = 0u;
  v265 = 0u;
  v266 = 0u;
  v267 = 0u;
  v226 = recurrenceRules;
  v240 = recurrenceRules;
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
      frequency = [v157 frequency];
      if (frequency >= 5)
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
        v160 = qword_19A231338[frequency];
      }

      v255 = [objc_alloc(MEMORY[0x1E69E3CD8]) initWithFrequency:v160];
      interval = [v157 interval];
      if (interval > 1)
      {
        v165 = [MEMORY[0x1E696AD98] numberWithInteger:interval];
        [v255 setInterval:v165];
      }

      if ([v157 firstDayOfTheWeek] >= 1 && objc_msgSend(v157, "firstDayOfTheWeek") != 2)
      {
        v166 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v157, "firstDayOfTheWeek")}];
        [v255 setWkst:v166];
      }

      recurrenceEnd = [v157 recurrenceEnd];
      endDate = [recurrenceEnd endDate];

      v250 = v157;
      recurrenceEnd2 = [v157 recurrenceEnd];
      occurrenceCount = [recurrenceEnd2 occurrenceCount];

      v248 = endDate;
      if (occurrenceCount)
      {
        v171 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:occurrenceCount];
        [v255 setCount:v171];
      }

      else
      {
        if (!endDate)
        {
          goto LABEL_179;
        }

        timeZone2 = [v252 timeZone];

        if (timeZone2)
        {
          v173 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
          v174 = rem_ICSDateFromNSDateInTimezone(endDate, v173);
        }

        else if ([v252 allDay])
        {
          [endDate timeIntervalSinceReferenceDate];
          v173 = rem_DateComponentsFromAbsoluteTime(0, v175);
          v176 = objc_alloc(MEMORY[0x1E69E3C90]);
          year3 = [v173 year];
          month3 = [v173 month];
          v179 = [v173 day];
          v180 = month3;
          v155 = v236;
          v174 = [v176 initWithYear:year3 month:v180 day:v179];
        }

        else
        {
          v173 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
          v174 = rem_ICSFloatingDateTimeFromNSDateInTimezone(endDate, v173);
        }

        v171 = v174;

        v181 = +[REMLogStore read];
        if (os_log_type_enabled(v181, OS_LOG_TYPE_DEBUG))
        {
          value2 = [v171 value];
          *buf = 138412546;
          v285 = value2;
          v286 = 2112;
          v287 = endDate;
          _os_log_debug_impl(&dword_19A0DB000, v181, OS_LOG_TYPE_DEBUG, "Setting ICS recurrence until date: untilDate=%@ remEndDate=%@)", buf, 0x16u);
        }

        value3 = [v171 value];
        [v255 setUntil:value3];

        v154 = v238;
      }

LABEL_179:
      v157 = v250;
      daysOfTheWeek = [v250 daysOfTheWeek];
      v243 = daysOfTheWeek;
      if (daysOfTheWeek)
      {
        v184 = daysOfTheWeek;
        if ([daysOfTheWeek count])
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
                dayOfTheWeek = [v191 dayOfTheWeek];
                if ((dayOfTheWeek - 1) >= 7)
                {
                  v193 = +[REMLogStore read];
                  if (os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
                  {
                    +[REMExporting(ICSExport) _updateICSComponentWithReminder:icsCalendarItem:];
                  }

                  dayOfTheWeek = 1;
                }

                v194 = objc_alloc(MEMORY[0x1E69E3C60]);
                v195 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v191, "weekNumber")}];
                v196 = [v194 initWithWeekday:dayOfTheWeek number:v195];

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
          reminderCopy = v241;
          v152 = v232;
          v150 = v234;
          v155 = v236;
          v154 = v238;
          v157 = v250;
        }
      }

      monthsOfTheYear = [v157 monthsOfTheYear];

      if (monthsOfTheYear)
      {
        monthsOfTheYear2 = [v157 monthsOfTheYear];
        [v255 setBymonth:monthsOfTheYear2];
      }

      daysOfTheMonth = [v157 daysOfTheMonth];

      if (daysOfTheMonth)
      {
        daysOfTheMonth2 = [v157 daysOfTheMonth];
        [v255 setBymonthday:daysOfTheMonth2];
      }

      weeksOfTheYear = [v157 weeksOfTheYear];

      if (weeksOfTheYear)
      {
        weeksOfTheYear2 = [v157 weeksOfTheYear];
        [v255 setByweekno:weeksOfTheYear2];
      }

      daysOfTheYear = [v157 daysOfTheYear];

      if (daysOfTheYear)
      {
        daysOfTheYear2 = [v157 daysOfTheYear];
        [v255 setByyearday:daysOfTheYear2];
      }

      setPositions = [v157 setPositions];

      if (setPositions)
      {
        setPositions2 = [v157 setPositions];
        [v255 setBysetpos:setPositions2];
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
          objectID = [v252 objectID];
          v211 = v157;
          v212 = objectID;
          *buf = 138412546;
          v285 = v211;
          v286 = 2112;
          v287 = objectID;
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
  recurrenceRules = v226;

LABEL_218:
  [v228 setRrule:v214];

  v9 = v220;
  itemCopy = v223;
LABEL_219:

  v215 = *MEMORY[0x1E69E9840];
  return v9;
}

@end