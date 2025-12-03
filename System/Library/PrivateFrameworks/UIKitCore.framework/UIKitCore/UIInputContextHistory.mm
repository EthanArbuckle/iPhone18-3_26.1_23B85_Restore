@interface UIInputContextHistory
- (BOOL)isEqual:(id)equal;
- (NSString)senderIdentifier;
- (UIInputContextHistory)initWithInputContextHistory:(id)history;
- (UIInputContextHistory)initWithRecipientIdentifiers:(id)identifiers senderIdentifier:(id)identifier;
- (UIInputContextHistory)initWithRecipientIdentifiers:(id)identifiers senderIdentifiers:(id)senderIdentifiers;
- (UIInputContextHistory)initWithThreadID:(unint64_t)d participantsIDtoNamesMap:(id)map firstPersonIDs:(id)ds primaryRecipients:(id)recipients secondaryRecipients:(id)secondaryRecipients infoDict:(id)dict;
- (UIInputContextHistory)initWithThreadIdentifier:(id)identifier participantsIDtoNames:(id)names firstPerson:(id)person primaryRecipients:(id)recipients secondaryRecipients:(id)secondaryRecipients info:(id)info;
- (id)mostRecentTextEntries:(unint64_t)entries;
- (void)addEntry:(id)entry;
- (void)addNewParticipantWithIdentifier:(id)identifier name:(id)name;
- (void)addTextEntry:(id)entry timestamp:(id)timestamp senderIdentifier:(id)identifier entryIdentifier:(id)entryIdentifier;
@end

@implementation UIInputContextHistory

- (UIInputContextHistory)initWithRecipientIdentifiers:(id)identifiers senderIdentifiers:(id)senderIdentifiers
{
  identifiersCopy = identifiers;
  senderIdentifiersCopy = senderIdentifiers;
  v12.receiver = self;
  v12.super_class = UIInputContextHistory;
  v8 = [(UIInputContextHistory *)&v12 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E69D95B0]) initWithRecipientIdentifiers:identifiersCopy senderIdentifiers:senderIdentifiersCopy];
    tiInputContextHistory = v8->_tiInputContextHistory;
    v8->_tiInputContextHistory = v9;
  }

  return v8;
}

- (UIInputContextHistory)initWithInputContextHistory:(id)history
{
  historyCopy = history;
  if (historyCopy)
  {
    v9.receiver = self;
    v9.super_class = UIInputContextHistory;
    v6 = [(UIInputContextHistory *)&v9 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_tiInputContextHistory, history);
    }
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

- (UIInputContextHistory)initWithThreadID:(unint64_t)d participantsIDtoNamesMap:(id)map firstPersonIDs:(id)ds primaryRecipients:(id)recipients secondaryRecipients:(id)secondaryRecipients infoDict:(id)dict
{
  v55 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  dsCopy = ds;
  recipientsCopy = recipients;
  secondaryRecipientsCopy = secondaryRecipients;
  dictCopy = dict;
  v53.receiver = self;
  v53.super_class = UIInputContextHistory;
  v19 = [(UIInputContextHistory *)&v53 init];
  if (v19)
  {
    if ([MEMORY[0x1E69D95B0] instancesRespondToSelector:sel_threadIdentifier])
    {
      v20 = objc_alloc(MEMORY[0x1E69D95B0]);
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", d];
      v22 = [v20 initWithThreadIdentifier:v21 participantsIDtoNamesMap:mapCopy firstPersonIDs:dsCopy primaryRecipients:recipientsCopy secondaryRecipients:secondaryRecipientsCopy infoDict:dictCopy];
      tiInputContextHistory = v19->_tiInputContextHistory;
      v19->_tiInputContextHistory = v22;
    }

    else if ([MEMORY[0x1E69D95B0] instancesRespondToSelector:sel_firstPersonIdentifiers])
    {
      v24 = [objc_alloc(MEMORY[0x1E69D95B0]) initWithThreadID:d participantsIDtoNamesMap:mapCopy firstPersonIDs:dsCopy primaryRecipients:recipientsCopy secondaryRecipients:secondaryRecipientsCopy];
      v25 = v19->_tiInputContextHistory;
      v19->_tiInputContextHistory = v24;

      [(TIInputContextHistory *)v19->_tiInputContextHistory setInfoDict:dictCopy];
    }

    else
    {
      v26 = [MEMORY[0x1E69D95B0] instancesRespondToSelector:sel_participantsMap];
      v27 = objc_alloc(MEMORY[0x1E69D95B0]);
      if (v26)
      {
        v47 = mapCopy;
        v45 = secondaryRecipientsCopy;
        v46 = recipientsCopy;
        v28 = [v27 initWithThreadID:d participantsIDtoNamesMap:mapCopy primaryRecipients:recipientsCopy secondaryRecipients:secondaryRecipientsCopy];
        v29 = v19->_tiInputContextHistory;
        v44 = v19;
        v19->_tiInputContextHistory = v28;

        v43 = dictCopy;
        v30 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:dictCopy];
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        obj = dsCopy;
        v31 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = 0;
          v34 = *v50;
          do
          {
            for (i = 0; i != v32; ++i)
            {
              if (*v50 != v34)
              {
                objc_enumerationMutation(obj);
              }

              v36 = *(*(&v49 + 1) + 8 * i);
              v37 = MEMORY[0x1E696AEC0];
              v38 = [MEMORY[0x1E696AD98] numberWithInt:v33];
              v39 = [v37 stringWithFormat:@"firstPerson-%@", v38];

              [v30 setObject:v36 forKeyedSubscript:v39];
              v33 = (v33 + 1);
            }

            v32 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
          }

          while (v32);
        }

        v19 = v44;
        [(TIInputContextHistory *)v44->_tiInputContextHistory setInfoDict:v30];

        mapCopy = v47;
        secondaryRecipientsCopy = v45;
        recipientsCopy = v46;
        dictCopy = v43;
      }

      else
      {
        v40 = [v27 initWithRecipientIdentifiers:recipientsCopy senderIdentifiers:dsCopy];
        v41 = v19->_tiInputContextHistory;
        v19->_tiInputContextHistory = v40;
      }
    }
  }

  return v19;
}

- (UIInputContextHistory)initWithThreadIdentifier:(id)identifier participantsIDtoNames:(id)names firstPerson:(id)person primaryRecipients:(id)recipients secondaryRecipients:(id)secondaryRecipients info:(id)info
{
  identifierCopy = identifier;
  namesCopy = names;
  personCopy = person;
  recipientsCopy = recipients;
  secondaryRecipientsCopy = secondaryRecipients;
  infoCopy = info;
  if ([MEMORY[0x1E69D95B0] instancesRespondToSelector:sel_initWithThreadIdentifier_participantsIDtoNamesMap_firstPersonIDs_primaryRecipients_secondaryRecipients_infoDict_])
  {
    v25.receiver = self;
    v25.super_class = UIInputContextHistory;
    v20 = [(UIInputContextHistory *)&v25 init];
    if (v20)
    {
      v21 = [objc_alloc(MEMORY[0x1E69D95B0]) initWithThreadIdentifier:identifierCopy participantsIDtoNamesMap:namesCopy firstPersonIDs:personCopy primaryRecipients:recipientsCopy secondaryRecipients:secondaryRecipientsCopy infoDict:infoCopy];
      tiInputContextHistory = v20->_tiInputContextHistory;
      v20->_tiInputContextHistory = v21;
    }

    self = v20;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)addNewParticipantWithIdentifier:(id)identifier name:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  if ([MEMORY[0x1E69D95B0] instancesRespondToSelector:sel_addNewParticipantWithIdentifier_name_])
  {
    tiInputContextHistory = [(UIInputContextHistory *)self tiInputContextHistory];
    [tiInputContextHistory addNewParticipantWithIdentifier:identifierCopy name:nameCopy];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    tiInputContextHistory = [(UIInputContextHistory *)self tiInputContextHistory];
    recipientIdentifiers = [tiInputContextHistory recipientIdentifiers];
    tiInputContextHistory2 = [v5 tiInputContextHistory];

    recipientIdentifiers2 = [tiInputContextHistory2 recipientIdentifiers];
    v10 = [recipientIdentifiers isEqualToSet:recipientIdentifiers2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)addEntry:(id)entry
{
  entryCopy = entry;
  if (objc_opt_respondsToSelector())
  {
    [(TIInputContextHistory *)self->_tiInputContextHistory addEntry:entryCopy];
  }
}

- (void)addTextEntry:(id)entry timestamp:(id)timestamp senderIdentifier:(id)identifier entryIdentifier:(id)entryIdentifier
{
  entryCopy = entry;
  timestampCopy = timestamp;
  identifierCopy = identifier;
  entryIdentifierCopy = entryIdentifier;
  if (objc_opt_respondsToSelector())
  {
    [(TIInputContextHistory *)self->_tiInputContextHistory addTextEntry:entryCopy timestamp:timestampCopy senderIdentifier:identifierCopy entryIdentifier:entryIdentifierCopy];
  }
}

- (NSString)senderIdentifier
{
  senderIdentifiers = [(UIInputContextHistory *)self senderIdentifiers];
  anyObject = [senderIdentifiers anyObject];

  return anyObject;
}

- (UIInputContextHistory)initWithRecipientIdentifiers:(id)identifiers senderIdentifier:(id)identifier
{
  v6 = MEMORY[0x1E695DFD8];
  identifiersCopy = identifiers;
  v8 = [v6 setWithObject:identifier];
  v9 = [(UIInputContextHistory *)self initWithRecipientIdentifiers:identifiersCopy senderIdentifiers:v8];

  return v9;
}

- (id)mostRecentTextEntries:(unint64_t)entries
{
  tiInputContextHistory = [(UIInputContextHistory *)self tiInputContextHistory];
  v5 = [tiInputContextHistory mostRecentTextEntries:entries];

  return v5;
}

@end