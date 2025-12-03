@interface SRUIFAnalyticsSupplement
- (id)dialogPhaseForAceObject:(id)object;
- (int)computedModeForAceCommand:(id)command;
- (int)computedModeForRefId:(id)id;
- (void)didComputeMode:(int)mode forAceCommand:(id)command generatedAceCommands:(id)commands;
- (void)storeDialogPhasesForItemsAtIndexPaths:(id)paths forConversation:(id)conversation;
@end

@implementation SRUIFAnalyticsSupplement

- (void)didComputeMode:(int)mode forAceCommand:(id)command generatedAceCommands:(id)commands
{
  commandsCopy = commands;
  self->_lastComputedMode = mode;
  refId = [command refId];
  lastComputedRefId = self->_lastComputedRefId;
  self->_lastComputedRefId = refId;

  generatedAceCommands = self->_generatedAceCommands;
  self->_generatedAceCommands = commandsCopy;
}

- (int)computedModeForRefId:(id)id
{
  result = [id isEqualToString:self->_lastComputedRefId];
  if (result)
  {
    return self->_lastComputedMode;
  }

  return result;
}

- (int)computedModeForAceCommand:(id)command
{
  v24 = *MEMORY[0x277D85DE8];
  commandCopy = command;
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
        aceId = [commandCopy aceId];
        if (aceId)
        {
          v12 = aceId;
          aceId2 = [v10 aceId];
          aceId3 = [commandCopy aceId];
          v15 = [aceId2 isEqualToString:aceId3];

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

- (void)storeDialogPhasesForItemsAtIndexPaths:(id)paths forConversation:(id)conversation
{
  v28 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  conversationCopy = conversation;
  selfCopy = self;
  if (!self->_aceObjectDialogPhaseDictionary)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    aceObjectDialogPhaseDictionary = self->_aceObjectDialogPhaseDictionary;
    self->_aceObjectDialogPhaseDictionary = dictionary;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = pathsCopy;
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

        v15 = [conversationCopy itemAtIndexPath:*(*(&v23 + 1) + 8 * i)];
        aceObject = [v15 aceObject];
        dialogPhase = [v15 dialogPhase];
        if (dialogPhase)
        {
          aceId = [aceObject aceId];

          if (aceId)
          {
            v19 = selfCopy->_aceObjectDialogPhaseDictionary;
            aceId2 = [aceObject aceId];
            [(NSMutableDictionary *)v19 setObject:dialogPhase forKey:aceId2];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)dialogPhaseForAceObject:(id)object
{
  aceObjectDialogPhaseDictionary = self->_aceObjectDialogPhaseDictionary;
  aceId = [object aceId];
  v5 = [(NSMutableDictionary *)aceObjectDialogPhaseDictionary objectForKey:aceId];

  return v5;
}

@end