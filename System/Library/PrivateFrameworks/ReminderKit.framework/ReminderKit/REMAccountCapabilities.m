@interface REMAccountCapabilities
- (BOOL)isEqual:(id)a3;
- (REMAccountCapabilities)initWithAccountType:(int64_t)a3;
- (unint64_t)hash;
@end

@implementation REMAccountCapabilities

- (REMAccountCapabilities)initWithAccountType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = REMAccountCapabilities;
  result = [(REMAccountCapabilities *)&v5 init];
  if (!result)
  {
    return result;
  }

  if (a3 <= 3)
  {
    if (a3 != 1)
    {
      if (a3 != 2)
      {
        if (a3 == 3)
        {
          *&result->_supportsSubtasks = 0;
          *&result->_supportsFlagged = 0;
          result->_supportsLocation = 1;
          *&result->_supportsListShareesMutation = 1;
          result->_supportsMoveAcrossSharedLists = 0;
          *&result->_supportsEventKitSync = 16842753;
          result->_defaultReminderPriorityLevel = 0;
          *&result->_supportsReminderActions = 1;
          *&result->_supportsHourlyRecurrence = 0;
          result->_insertsCompletedRecurrentCloneAtTail = 1;
          *&result->_supportsMultipleDateAlarmsOnRecurrence = 16777217;
          *&result->_supportsCustomSmartLists = 0;
          *&result->_supportsDeletionByTTL = 0;
        }

        return result;
      }

      goto LABEL_10;
    }

    *&result->_supportsSubtasks = 0;
    *&result->_supportsFlagged = 0;
    result->_supportsLocation = 1;
    *&result->_supportsEventKitSync = 1;
    *&result->_supportsListShareesMutation = 256;
    result->_supportsMoveAcrossSharedLists = 1;
    result->_defaultReminderPriorityLevel = 0;
    *&result->_supportsReminderActions = 1;
    *&result->_supportsHourlyRecurrence = 0;
    *&result->_supportsMultipleDateAlarmsOnRecurrence = 0;
LABEL_16:
    *&result->_supportsAssignments = 0;
    *&result->_supportsRecentlyDeletedList = 0;
    return result;
  }

  if (a3 == 4)
  {
    *&result->_supportsSubtasks = 0;
    result->_supportsListAppearance = 0;
    *&result->_supportsGroups = 0x1000000000000;
    result->_supportsMoveAcrossSharedLists = 0;
    *&result->_supportsCalDAVNotifications = 65792;
    result->_defaultReminderPriorityLevel = 2;
    *&result->_supportsReminderActions = 0;
LABEL_15:
    *&result->_supportsMultipleDateAlarmsOnRecurrence = 1;
    goto LABEL_16;
  }

  if (a3 == 5)
  {
    *&result->_supportsSubtasks = 256;
    *&result->_supportsFlagged = 257;
    result->_supportsLocation = 1;
    *&result->_supportsEventKitSync = 0;
    *&result->_supportsListShareesMutation = 256;
    result->_supportsMoveAcrossSharedLists = 1;
    result->_defaultReminderPriorityLevel = 0;
    *&result->_supportsReminderActions = 1;
    *&result->_supportsHourlyRecurrence = 1;
    goto LABEL_15;
  }

  if (a3 != 6)
  {
    return result;
  }

LABEL_10:
  *&result->_supportsSubtasks = 257;
  result->_supportsListAppearance = 1;
  *&result->_supportsGroups = 0x100010101010101;
  *&result->_supportsCalDAVNotifications = 16777472;
  result->_supportsMoveAcrossSharedLists = 0;
  result->_defaultReminderPriorityLevel = 0;
  *&result->_supportsReminderActions = 16843009;
  result->_insertsCompletedRecurrentCloneAtTail = 0;
  *&result->_supportsMultipleDateAlarmsOnRecurrence = 16843008;
  *&result->_supportsCustomSmartLists = 16843009;
  *&result->_supportsDeletionByTTL = 16843009;
  if (a3 == 6)
  {
    result->_supportsTemplates = 0;
    result->_supportsPinnedLists = 0;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_34;
  }

  v5 = [(REMAccountCapabilities *)self supportsSubtasks];
  if (v5 != [v4 supportsSubtasks])
  {
    goto LABEL_34;
  }

  v6 = [(REMAccountCapabilities *)self supportsAttachments];
  if (v6 != [v4 supportsAttachments])
  {
    goto LABEL_34;
  }

  v7 = [(REMAccountCapabilities *)self supportsListAppearance];
  if (v7 != [v4 supportsListAppearance])
  {
    goto LABEL_34;
  }

  v8 = [(REMAccountCapabilities *)self supportsCloudKitSync];
  if (v8 != [v4 supportsCloudKitSync])
  {
    goto LABEL_34;
  }

  v9 = [(REMAccountCapabilities *)self supportsEventKitSync];
  if (v9 != [v4 supportsEventKitSync])
  {
    goto LABEL_34;
  }

  v10 = [(REMAccountCapabilities *)self supportsGroups];
  if (v10 != [v4 supportsGroups])
  {
    goto LABEL_34;
  }

  v11 = [(REMAccountCapabilities *)self supportsFlagged];
  if (v11 != [v4 supportsFlagged])
  {
    goto LABEL_34;
  }

  v12 = [(REMAccountCapabilities *)self supportsLocation];
  if (v12 != [v4 supportsLocation])
  {
    goto LABEL_34;
  }

  v13 = [(REMAccountCapabilities *)self supportsPersonTrigger];
  if (v13 != [v4 supportsPersonTrigger])
  {
    goto LABEL_34;
  }

  v14 = [(REMAccountCapabilities *)self supportsCalDAVNotifications];
  if (v14 != [v4 supportsCalDAVNotifications])
  {
    goto LABEL_34;
  }

  v15 = [(REMAccountCapabilities *)self supportsListSharees];
  if (v15 != [v4 supportsListSharees])
  {
    goto LABEL_34;
  }

  v16 = [(REMAccountCapabilities *)self supportsListShareesMutation];
  if (v16 != [v4 supportsListShareesMutation])
  {
    goto LABEL_34;
  }

  v17 = [(REMAccountCapabilities *)self supportsMoveAcrossLists];
  if (v17 != [v4 supportsMoveAcrossLists])
  {
    goto LABEL_34;
  }

  v18 = [(REMAccountCapabilities *)self supportsMoveAcrossSharedLists];
  if (v18 != [v4 supportsMoveAcrossSharedLists])
  {
    goto LABEL_34;
  }

  v19 = [(REMAccountCapabilities *)self supportsCRDTs];
  if (v19 != [v4 supportsCRDTs])
  {
    goto LABEL_34;
  }

  v20 = [(REMAccountCapabilities *)self defaultReminderPriorityLevel];
  if (v20 != [v4 defaultReminderPriorityLevel])
  {
    goto LABEL_34;
  }

  v21 = [(REMAccountCapabilities *)self supportsHandoff];
  if (v21 != [v4 supportsHandoff])
  {
    goto LABEL_34;
  }

  v22 = [(REMAccountCapabilities *)self supportsReminderActions];
  if (v22 != [v4 supportsReminderActions])
  {
    goto LABEL_34;
  }

  v23 = [(REMAccountCapabilities *)self supportsHourlyRecurrence];
  if (v23 != [v4 supportsHourlyRecurrence])
  {
    goto LABEL_34;
  }

  v24 = [(REMAccountCapabilities *)self supportsMultipleDateAlarmsOnRecurrence];
  if (v24 != [v4 supportsMultipleDateAlarmsOnRecurrence])
  {
    goto LABEL_34;
  }

  v25 = [(REMAccountCapabilities *)self supportsAssignments];
  if (v25 != [v4 supportsAssignments])
  {
    goto LABEL_34;
  }

  v26 = [(REMAccountCapabilities *)self supportsHashtags];
  if (v26 != [v4 supportsHashtags])
  {
    goto LABEL_34;
  }

  v27 = [(REMAccountCapabilities *)self insertsCompletedRecurrentCloneAtTail];
  if (v27 != [v4 insertsCompletedRecurrentCloneAtTail])
  {
    goto LABEL_34;
  }

  v28 = [(REMAccountCapabilities *)self supportsCustomSmartLists];
  if (v28 != [v4 supportsCustomSmartLists])
  {
    goto LABEL_34;
  }

  v29 = [(REMAccountCapabilities *)self supportsGroceriesList];
  if (v29 != [v4 supportsGroceriesList])
  {
    goto LABEL_34;
  }

  v30 = [(REMAccountCapabilities *)self supportsTemplates];
  if (v30 == [v4 supportsTemplates] && (v31 = -[REMAccountCapabilities supportsPinnedLists](self, "supportsPinnedLists"), v31 == objc_msgSend(v4, "supportsPinnedLists")) && (v32 = -[REMAccountCapabilities supportsTextStyling](self, "supportsTextStyling"), v32 == objc_msgSend(v4, "supportsTextStyling")) && (v33 = -[REMAccountCapabilities supportsDeletionByTTL](self, "supportsDeletionByTTL"), v33 == objc_msgSend(v4, "supportsDeletionByTTL")) && (v34 = -[REMAccountCapabilities supportsSections](self, "supportsSections"), v34 == objc_msgSend(v4, "supportsSections")) && (v35 = -[REMAccountCapabilities supportsDueDateDeltaAlerts](self, "supportsDueDateDeltaAlerts"), v35 == objc_msgSend(v4, "supportsDueDateDeltaAlerts")) && (v36 = -[REMAccountCapabilities supportsRecentlyDeletedList](self, "supportsRecentlyDeletedList"), v36 == objc_msgSend(v4, "supportsRecentlyDeletedList")))
  {
    v39 = [(REMAccountCapabilities *)self supportsUrgentAlert];
    v37 = v39 ^ [v4 supportsUrgentAlert] ^ 1;
  }

  else
  {
LABEL_34:
    LOBYTE(v37) = 0;
  }

  return v37;
}

- (unint64_t)hash
{
  if ([(REMAccountCapabilities *)self supportsSubtasks])
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 | [(REMAccountCapabilities *)self supportsAttachments];
  if ([(REMAccountCapabilities *)self supportsListAppearance])
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 | (4 * v4) | [(REMAccountCapabilities *)self supportsCloudKitSync];
  if ([(REMAccountCapabilities *)self supportsEventKitSync])
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 | (4 * v6) | [(REMAccountCapabilities *)self supportsGroups];
  if ([(REMAccountCapabilities *)self supportsFlagged])
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 | (4 * v8) | [(REMAccountCapabilities *)self supportsLocation];
  if ([(REMAccountCapabilities *)self supportsPersonTrigger])
  {
    v11 = 2;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11 | (4 * v10) | [(REMAccountCapabilities *)self supportsCalDAVNotifications];
  if ([(REMAccountCapabilities *)self supportsListSharees])
  {
    v13 = 2;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13 | (4 * v12) | [(REMAccountCapabilities *)self supportsListShareesMutation];
  if ([(REMAccountCapabilities *)self supportsMoveAcrossLists])
  {
    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15 | (4 * v14) | [(REMAccountCapabilities *)self supportsMoveAcrossSharedLists];
  if ([(REMAccountCapabilities *)self supportsCRDTs])
  {
    v17 = 2;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17 | (4 * v16);
  if ([(REMAccountCapabilities *)self defaultReminderPriorityLevel])
  {
    ++v18;
  }

  if ([(REMAccountCapabilities *)self supportsHandoff])
  {
    v19 = 2;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19 | (4 * v18) | [(REMAccountCapabilities *)self supportsReminderActions];
  if ([(REMAccountCapabilities *)self supportsHourlyRecurrence])
  {
    v21 = 2;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21 | (4 * v20) | [(REMAccountCapabilities *)self supportsMultipleDateAlarmsOnRecurrence];
  if ([(REMAccountCapabilities *)self supportsAssignments])
  {
    v23 = 2;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23 | (4 * v22) | [(REMAccountCapabilities *)self supportsHashtags];
  if ([(REMAccountCapabilities *)self insertsCompletedRecurrentCloneAtTail])
  {
    v25 = 2;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25 | (4 * v24) | [(REMAccountCapabilities *)self supportsCustomSmartLists];
  if ([(REMAccountCapabilities *)self supportsGroceriesList])
  {
    v27 = 2;
  }

  else
  {
    v27 = 0;
  }

  v28 = v27 | (4 * v26) | [(REMAccountCapabilities *)self supportsTemplates];
  if ([(REMAccountCapabilities *)self supportsPinnedLists])
  {
    v29 = 2;
  }

  else
  {
    v29 = 0;
  }

  v30 = v29 | (4 * v28) | [(REMAccountCapabilities *)self supportsTextStyling];
  if ([(REMAccountCapabilities *)self supportsDeletionByTTL])
  {
    v31 = 2;
  }

  else
  {
    v31 = 0;
  }

  v32 = v31 | (4 * v30) | [(REMAccountCapabilities *)self supportsSections];
  if ([(REMAccountCapabilities *)self supportsDueDateDeltaAlerts])
  {
    v33 = 2;
  }

  else
  {
    v33 = 0;
  }

  v34 = v33 | (4 * v32) | [(REMAccountCapabilities *)self supportsRecentlyDeletedList];
  return [(REMAccountCapabilities *)self supportsUrgentAlert]| (2 * v34);
}

@end