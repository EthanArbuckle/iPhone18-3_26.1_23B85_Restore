@interface UIInputContextHistory
- (BOOL)isEqual:(id)a3;
- (NSString)senderIdentifier;
- (UIInputContextHistory)initWithInputContextHistory:(id)a3;
- (UIInputContextHistory)initWithRecipientIdentifiers:(id)a3 senderIdentifier:(id)a4;
- (UIInputContextHistory)initWithRecipientIdentifiers:(id)a3 senderIdentifiers:(id)a4;
- (UIInputContextHistory)initWithThreadID:(unint64_t)a3 participantsIDtoNamesMap:(id)a4 firstPersonIDs:(id)a5 primaryRecipients:(id)a6 secondaryRecipients:(id)a7 infoDict:(id)a8;
- (UIInputContextHistory)initWithThreadIdentifier:(id)a3 participantsIDtoNames:(id)a4 firstPerson:(id)a5 primaryRecipients:(id)a6 secondaryRecipients:(id)a7 info:(id)a8;
- (id)mostRecentTextEntries:(unint64_t)a3;
- (void)addEntry:(id)a3;
- (void)addNewParticipantWithIdentifier:(id)a3 name:(id)a4;
- (void)addTextEntry:(id)a3 timestamp:(id)a4 senderIdentifier:(id)a5 entryIdentifier:(id)a6;
@end

@implementation UIInputContextHistory

- (UIInputContextHistory)initWithRecipientIdentifiers:(id)a3 senderIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = UIInputContextHistory;
  v8 = [(UIInputContextHistory *)&v12 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E69D95B0]) initWithRecipientIdentifiers:v6 senderIdentifiers:v7];
    tiInputContextHistory = v8->_tiInputContextHistory;
    v8->_tiInputContextHistory = v9;
  }

  return v8;
}

- (UIInputContextHistory)initWithInputContextHistory:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v9.receiver = self;
    v9.super_class = UIInputContextHistory;
    v6 = [(UIInputContextHistory *)&v9 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_tiInputContextHistory, a3);
    }
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

- (UIInputContextHistory)initWithThreadID:(unint64_t)a3 participantsIDtoNamesMap:(id)a4 firstPersonIDs:(id)a5 primaryRecipients:(id)a6 secondaryRecipients:(id)a7 infoDict:(id)a8
{
  v55 = *MEMORY[0x1E69E9840];
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v53.receiver = self;
  v53.super_class = UIInputContextHistory;
  v19 = [(UIInputContextHistory *)&v53 init];
  if (v19)
  {
    if ([MEMORY[0x1E69D95B0] instancesRespondToSelector:sel_threadIdentifier])
    {
      v20 = objc_alloc(MEMORY[0x1E69D95B0]);
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", a3];
      v22 = [v20 initWithThreadIdentifier:v21 participantsIDtoNamesMap:v14 firstPersonIDs:v15 primaryRecipients:v16 secondaryRecipients:v17 infoDict:v18];
      tiInputContextHistory = v19->_tiInputContextHistory;
      v19->_tiInputContextHistory = v22;
    }

    else if ([MEMORY[0x1E69D95B0] instancesRespondToSelector:sel_firstPersonIdentifiers])
    {
      v24 = [objc_alloc(MEMORY[0x1E69D95B0]) initWithThreadID:a3 participantsIDtoNamesMap:v14 firstPersonIDs:v15 primaryRecipients:v16 secondaryRecipients:v17];
      v25 = v19->_tiInputContextHistory;
      v19->_tiInputContextHistory = v24;

      [(TIInputContextHistory *)v19->_tiInputContextHistory setInfoDict:v18];
    }

    else
    {
      v26 = [MEMORY[0x1E69D95B0] instancesRespondToSelector:sel_participantsMap];
      v27 = objc_alloc(MEMORY[0x1E69D95B0]);
      if (v26)
      {
        v47 = v14;
        v45 = v17;
        v46 = v16;
        v28 = [v27 initWithThreadID:a3 participantsIDtoNamesMap:v14 primaryRecipients:v16 secondaryRecipients:v17];
        v29 = v19->_tiInputContextHistory;
        v44 = v19;
        v19->_tiInputContextHistory = v28;

        v43 = v18;
        v30 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v18];
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        obj = v15;
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

        v14 = v47;
        v17 = v45;
        v16 = v46;
        v18 = v43;
      }

      else
      {
        v40 = [v27 initWithRecipientIdentifiers:v16 senderIdentifiers:v15];
        v41 = v19->_tiInputContextHistory;
        v19->_tiInputContextHistory = v40;
      }
    }
  }

  return v19;
}

- (UIInputContextHistory)initWithThreadIdentifier:(id)a3 participantsIDtoNames:(id)a4 firstPerson:(id)a5 primaryRecipients:(id)a6 secondaryRecipients:(id)a7 info:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if ([MEMORY[0x1E69D95B0] instancesRespondToSelector:sel_initWithThreadIdentifier_participantsIDtoNamesMap_firstPersonIDs_primaryRecipients_secondaryRecipients_infoDict_])
  {
    v25.receiver = self;
    v25.super_class = UIInputContextHistory;
    v20 = [(UIInputContextHistory *)&v25 init];
    if (v20)
    {
      v21 = [objc_alloc(MEMORY[0x1E69D95B0]) initWithThreadIdentifier:v14 participantsIDtoNamesMap:v15 firstPersonIDs:v16 primaryRecipients:v17 secondaryRecipients:v18 infoDict:v19];
      tiInputContextHistory = v20->_tiInputContextHistory;
      v20->_tiInputContextHistory = v21;
    }

    self = v20;
    v23 = self;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)addNewParticipantWithIdentifier:(id)a3 name:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([MEMORY[0x1E69D95B0] instancesRespondToSelector:sel_addNewParticipantWithIdentifier_name_])
  {
    v7 = [(UIInputContextHistory *)self tiInputContextHistory];
    [v7 addNewParticipantWithIdentifier:v8 name:v6];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(UIInputContextHistory *)self tiInputContextHistory];
    v7 = [v6 recipientIdentifiers];
    v8 = [v5 tiInputContextHistory];

    v9 = [v8 recipientIdentifiers];
    v10 = [v7 isEqualToSet:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)addEntry:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(TIInputContextHistory *)self->_tiInputContextHistory addEntry:v4];
  }
}

- (void)addTextEntry:(id)a3 timestamp:(id)a4 senderIdentifier:(id)a5 entryIdentifier:(id)a6
{
  v13 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (objc_opt_respondsToSelector())
  {
    [(TIInputContextHistory *)self->_tiInputContextHistory addTextEntry:v13 timestamp:v10 senderIdentifier:v11 entryIdentifier:v12];
  }
}

- (NSString)senderIdentifier
{
  v2 = [(UIInputContextHistory *)self senderIdentifiers];
  v3 = [v2 anyObject];

  return v3;
}

- (UIInputContextHistory)initWithRecipientIdentifiers:(id)a3 senderIdentifier:(id)a4
{
  v6 = MEMORY[0x1E695DFD8];
  v7 = a3;
  v8 = [v6 setWithObject:a4];
  v9 = [(UIInputContextHistory *)self initWithRecipientIdentifiers:v7 senderIdentifiers:v8];

  return v9;
}

- (id)mostRecentTextEntries:(unint64_t)a3
{
  v4 = [(UIInputContextHistory *)self tiInputContextHistory];
  v5 = [v4 mostRecentTextEntries:a3];

  return v5;
}

@end