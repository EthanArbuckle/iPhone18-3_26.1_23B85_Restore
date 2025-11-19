@interface SRUIFAnalyticsSupplement
- (id)dialogPhaseForAceObject:(id)a3;
- (int)computedModeForAceCommand:(id)a3;
- (int)computedModeForRefId:(id)a3;
- (void)didComputeMode:(int)a3 forAceCommand:(id)a4 generatedAceCommands:(id)a5;
- (void)storeDialogPhasesForItemsAtIndexPaths:(id)a3 forConversation:(id)a4;
@end

@implementation SRUIFAnalyticsSupplement

- (void)didComputeMode:(int)a3 forAceCommand:(id)a4 generatedAceCommands:(id)a5
{
  v8 = a5;
  self->_lastComputedMode = a3;
  v9 = [a4 refId];
  lastComputedRefId = self->_lastComputedRefId;
  self->_lastComputedRefId = v9;

  generatedAceCommands = self->_generatedAceCommands;
  self->_generatedAceCommands = v8;
}

- (int)computedModeForRefId:(id)a3
{
  result = [a3 isEqualToString:self->_lastComputedRefId];
  if (result)
  {
    return self->_lastComputedMode;
  }

  return result;
}

- (int)computedModeForAceCommand:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_generatedAceCommands;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v4 aceId];
        if (v11)
        {
          v12 = v11;
          v13 = [v10 aceId];
          v14 = [v4 aceId];
          v15 = [v13 isEqualToString:v14];

          if (v15)
          {
            lastComputedMode = self->_lastComputedMode;
            goto LABEL_12;
          }
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  lastComputedMode = 0;
LABEL_12:

  v17 = *MEMORY[0x277D85DE8];
  return lastComputedMode;
}

- (void)storeDialogPhasesForItemsAtIndexPaths:(id)a3 forConversation:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v22 = self;
  if (!self->_aceObjectDialogPhaseDictionary)
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
    aceObjectDialogPhaseDictionary = self->_aceObjectDialogPhaseDictionary;
    self->_aceObjectDialogPhaseDictionary = v8;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [v7 itemAtIndexPath:*(*(&v23 + 1) + 8 * i)];
        v16 = [v15 aceObject];
        v17 = [v15 dialogPhase];
        if (v17)
        {
          v18 = [v16 aceId];

          if (v18)
          {
            v19 = v22->_aceObjectDialogPhaseDictionary;
            v20 = [v16 aceId];
            [(NSMutableDictionary *)v19 setObject:v17 forKey:v20];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)dialogPhaseForAceObject:(id)a3
{
  aceObjectDialogPhaseDictionary = self->_aceObjectDialogPhaseDictionary;
  v4 = [a3 aceId];
  v5 = [(NSMutableDictionary *)aceObjectDialogPhaseDictionary objectForKey:v4];

  return v5;
}

@end