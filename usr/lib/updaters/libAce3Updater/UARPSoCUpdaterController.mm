@interface UARPSoCUpdaterController
- (BOOL)applyStagedFirmware;
- (BOOL)initializeUpdatersWithOptions:(id)options;
- (BOOL)offerFirmwareDataWithDictionary:(id)dictionary;
- (BOOL)offerFirmwareForUpdater:(id)updater inputDict:(id)dict;
- (BOOL)offerPersonalizationDataWithDictionary:(id)dictionary;
- (UARPSoCUpdaterController)initWithOptions:(id)options logFunction:(void *)function logContext:(void *)context;
- (id)firmwareTags;
- (id)queryInfo;
- (id)ticketNameTags;
@end

@implementation UARPSoCUpdaterController

- (UARPSoCUpdaterController)initWithOptions:(id)options logFunction:(void *)function logContext:(void *)context
{
  optionsCopy = options;
  v29.receiver = self;
  v29.super_class = UARPSoCUpdaterController;
  v9 = [(UARPSoCUpdaterController *)&v29 init];
  if (v9)
  {
    v10 = [[SoCUpdaterHelper alloc] initWithOptions:optionsCopy logFunction:function logContext:context];
    log = v9->_log;
    v9->_log = v10;

    v12 = objc_opt_new();
    updaters = v9->_updaters;
    v9->_updaters = v12;

    v9->_isDone = 0;
    if (![(UARPSoCUpdaterController *)v9 initializeUpdatersWithOptions:optionsCopy])
    {
      v27 = 0;
      goto LABEL_10;
    }

    ShouldSkipSameVersion = SoCUpdaterShouldSkipSameVersion(optionsCopy);
    v9->_skipSameVersion = ShouldSkipSameVersion;
    v15 = "No";
    if (ShouldSkipSameVersion)
    {
      v15 = "Yes";
    }

    [(SoCUpdaterHelper *)v9->_log log:@"Ace3 skip same version: %s", v15];
    v16 = [optionsCopy objectForKeyedSubscript:@"Options"];
    v17 = v9->_log;
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    [(SoCUpdaterHelper *)v17 log:@"%@: options = %@", v19, v16];

    v20 = [v16 objectForKeyedSubscript:@"RestoreSystemPartition"];
    restorePartition = v9->_restorePartition;
    v9->_restorePartition = v20;

    if (!v9->_restorePartition)
    {
      v9->_restorePartition = &stru_2A2021A68;
    }

    v22 = [v16 objectForKeyedSubscript:@"ForceLocalSigning"];
    v9->_forceLocalSigning = [v22 BOOLValue];

    v23 = v9->_log;
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    [(SoCUpdaterHelper *)v23 log:@"%@: _forceLocalSigning = %d", v25, v9->_forceLocalSigning];

    personalizationRequests = v9->_personalizationRequests;
    v9->_personalizationRequests = 0;
  }

  v27 = v9;
LABEL_10:

  return v27;
}

- (id)firmwareTags
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_updaters;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        firmwareTagName = [*(*(&v13 + 1) + 8 * i) firmwareTagName];
        [v3 addObject:firmwareTagName];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x29EDB8D80] arrayWithArray:v3];

  v11 = *MEMORY[0x29EDCA608];

  return v10;
}

- (id)ticketNameTags
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_updaters;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        ticketName = [*(*(&v13 + 1) + 8 * i) ticketName];
        [v3 addObject:ticketName];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x29EDB8D80] arrayWithArray:v3];

  v11 = *MEMORY[0x29EDCA608];

  return v10;
}

- (id)queryInfo
{
  v25 = *MEMORY[0x29EDCA608];
  if ([(NSMutableArray *)self->_updaters count])
  {
    if (self->_forceLocalSigning)
    {
      v3 = 1;
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v5 = self->_updaters;
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v19;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v19 != v8)
            {
              objc_enumerationMutation(v5);
            }

            if ([*(*(&v18 + 1) + 8 * i) useLocalSigning])
            {
              v3 = 1;
              goto LABEL_15;
            }
          }

          v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

      v3 = 0;
LABEL_15:
    }

    v23[0] = self;
    v22[0] = @"UpdaterRef";
    v22[1] = @"TicketName";
    v10 = [(NSMutableArray *)self->_updaters objectAtIndexedSubscript:0, v18];
    ticketName = [v10 ticketName];
    v23[1] = ticketName;
    v22[2] = @"RestoreSystemPartition";
    restorePartition = [(UARPSoCUpdaterController *)self restorePartition];
    v23[2] = restorePartition;
    v22[3] = @"LocalSigningID";
    v13 = [MEMORY[0x29EDBA070] numberWithBool:v3];
    v23[3] = v13;
    v22[4] = @"ManifestPrefix";
    v14 = [(NSMutableArray *)self->_updaters objectAtIndexedSubscript:0];
    manifestPrefix = [v14 manifestPrefix];
    v23[4] = manifestPrefix;
    v4 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v23 forKeys:v22 count:5];
  }

  else
  {
    v4 = 0;
  }

  v16 = *MEMORY[0x29EDCA608];

  return v4;
}

- (BOOL)offerFirmwareDataWithDictionary:(id)dictionary
{
  v22 = *MEMORY[0x29EDCA608];
  dictionaryCopy = dictionary;
  v5 = objc_opt_new();
  [(SoCUpdaterHelper *)self->_log log:@"%s: options = %@", "[UARPSoCUpdaterController offerFirmwareDataWithDictionary:]", dictionaryCopy];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  personalizationRequests = self->_updaters;
  v7 = [(NSMutableArray *)personalizationRequests countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(personalizationRequests);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if ([v11 isDone])
        {
          -[SoCUpdaterHelper log:](self->_log, "log:", @"%s: Skipping Offer Firmware. Updater(LUN:%d,RouterID:%d) has finished.", "-[UARPSoCUpdaterController offerFirmwareDataWithDictionary:]", [v11 logicUnitNumber], objc_msgSend(v11, "routerID"));
        }

        else
        {
          if (![(UARPSoCUpdaterController *)self offerFirmwareForUpdater:v11 inputDict:dictionaryCopy])
          {
            v14 = 0;
            goto LABEL_14;
          }

          personalizationRequestDict = [v11 personalizationRequestDict];
          [v5 addEntriesFromDictionary:personalizationRequestDict];
        }
      }

      v8 = [(NSMutableArray *)personalizationRequests countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = [MEMORY[0x29EDB8DC0] dictionaryWithDictionary:v5];
  personalizationRequests = self->_personalizationRequests;
  self->_personalizationRequests = v13;
  v14 = 1;
LABEL_14:

  v15 = *MEMORY[0x29EDCA608];
  return v14;
}

- (BOOL)offerPersonalizationDataWithDictionary:(id)dictionary
{
  v23 = *MEMORY[0x29EDCA608];
  dictionaryCopy = dictionary;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_updaters;
  v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        -[SoCUpdaterHelper log:](self->_log, "log:", @"%s: Maybe Offer IM4M Asset to Updater(LUN:%d,RouterID:%d); %@", "-[UARPSoCUpdaterController offerPersonalizationDataWithDictionary:]", [v9 logicUnitNumber], objc_msgSend(v9, "routerID"), dictionaryCopy);
        isDone = [v9 isDone];
        log = self->_log;
        logicUnitNumber = [v9 logicUnitNumber];
        routerID = [v9 routerID];
        if (isDone)
        {
          [(SoCUpdaterHelper *)log log:@"%s: Don't offer IM4M Asset to Updater(LUN:%d, RouterID:%d); is done", "[UARPSoCUpdaterController offerPersonalizationDataWithDictionary:]", logicUnitNumber, routerID];
        }

        else
        {
          [(SoCUpdaterHelper *)log log:@"%s: Offer IM4M Asset to Updater(LUN:%d, RouterID:%d)", "[UARPSoCUpdaterController offerPersonalizationDataWithDictionary:]", logicUnitNumber, routerID];
          if (![v9 offerPersonalizationResponse:dictionaryCopy])
          {
            v14 = 0;
            goto LABEL_13;
          }
        }
      }

      v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_13:

  v15 = *MEMORY[0x29EDCA608];
  return v14;
}

- (BOOL)applyStagedFirmware
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = 1;
  self->_isDone = 1;
  [(SoCUpdaterHelper *)self->_log log:@"%s", "[UARPSoCUpdaterController applyStagedFirmware]"];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_updaters;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 isDone])
        {
          -[SoCUpdaterHelper log:](self->_log, "log:", @"%s: Skipping Apply. Updater(LUN:%d,RouterID:%d) has finished.", "-[UARPSoCUpdaterController applyStagedFirmware]", [v9 logicUnitNumber], objc_msgSend(v9, "routerID"));
        }

        else
        {
          if (![v9 applyStagedFirmware])
          {
            v3 = 0;
            goto LABEL_15;
          }

          if (([v9 isDone] & 1) == 0)
          {
            -[SoCUpdaterHelper log:](self->_log, "log:", @"%s: Updating is not finish yet for unit with LUN: %d, RouterID: %d", "-[UARPSoCUpdaterController applyStagedFirmware]", [v9 logicUnitNumber], objc_msgSend(v9, "routerID"));
            self->_isDone = 0;
          }
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }

    v3 = 1;
  }

LABEL_15:

  v10 = *MEMORY[0x29EDCA608];
  return v3;
}

- (BOOL)initializeUpdatersWithOptions:(id)options
{
  optionsCopy = options;
  numberOfAvailableUnits = [(UARPSoCUpdaterController *)self numberOfAvailableUnits];
  if (numberOfAvailableUnits)
  {
    v6 = numberOfAvailableUnits;
    v7 = 1;
    while (1)
    {
      v8 = [(UARPSoCUpdaterController *)self createUpdaterInstanceFor:v7 helper:self->_log options:optionsCopy];
      if (!v8)
      {
        break;
      }

      v9 = v8;
      [(NSMutableArray *)self->_updaters addObject:v8];
      [(SoCUpdaterHelper *)self->_log log:@"Created updater instance for LUN %d", v7];

      v7 = (v7 + 1);
      if (v7 > v6)
      {
        v10 = 1;
        goto LABEL_9;
      }
    }

    log = self->_log;
    v14 = v7;
    v12 = @"Failed to create updater instance for LUN %d";
  }

  else
  {
    log = self->_log;
    v12 = @"No available units to be updated";
  }

  [(SoCUpdaterHelper *)log log:v12, v14];
  v10 = 0;
LABEL_9:

  return v10;
}

- (BOOL)offerFirmwareForUpdater:(id)updater inputDict:(id)dict
{
  updaterCopy = updater;
  log = self->_log;
  dictCopy = dict;
  [(SoCUpdaterHelper *)log log:@"%s: options = %@", "[UARPSoCUpdaterController offerFirmwareForUpdater:inputDict:]", dictCopy];
  v9 = [dictCopy objectForKeyedSubscript:@"FirmwareData"];

  if (v9)
  {
    v10 = [updaterCopy offerFirmwareData:v9];
  }

  else
  {
    [(SoCUpdaterHelper *)self->_log log:@"%s: Unable to locate firmware data.", "[UARPSoCUpdaterController offerFirmwareForUpdater:inputDict:]"];
    v10 = 0;
  }

  return v10;
}

@end