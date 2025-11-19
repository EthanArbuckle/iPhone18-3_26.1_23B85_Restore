@interface TIInputContextHistory
+ (BOOL)isMail;
+ (BOOL)nameComponentsAreEmpty:(id)a3;
+ (unint64_t)maxEntryLength;
- (BOOL)allParticipantsKnown;
- (BOOL)hasPendingEntries;
- (BOOL)isEqual:(id)a3;
- (BOOL)mostRecentTextEntryIsByMe;
- (BOOL)validateForSmartReplyGeneration;
- (NSString)aggregateText;
- (NSString)mostRecentNonSenderTextEntry;
- (NSString)mostRecentTextEntryLogString;
- (TIInputContextHistory)initWithCoder:(id)a3;
- (TIInputContextHistory)initWithRecipientIdentifiers:(id)a3 senderIdentifier:(id)a4;
- (TIInputContextHistory)initWithThreadID:(unint64_t)a3 participantsIDtoNamesMap:(id)a4 firstPersonIDs:(id)a5 primaryRecipients:(id)a6 secondaryRecipients:(id)a7;
- (TIInputContextHistory)initWithThreadIdentifier:(id)a3 participantsIDtoNamesMap:(id)a4 firstPersonIDs:(id)a5 primaryRecipients:(id)a6 secondaryRecipients:(id)a7 infoDict:(id)a8;
- (id).cxx_construct;
- (id)_addEntry:(id)a3;
- (id)_addTextEntry:(id)a3 timestamp:(id)a4 senderIdentifier:(id)a5 entryIdentifier:(id)a6 primaryRecipientIdentifiers:(id)a7 secondaryRecipientIdentifiers:(id)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (id)invalidReasonsForSmartReplyGeneration;
- (id)mostRecentTextEntries:(unint64_t)a3;
- (id)mostRecentTextEntry;
- (void)_enumerateAllEntriesAsInputContextEntries:(id)a3;
- (void)_withLockPerformBlock:(id)a3;
- (void)_withLocksOnSelfAnd:(id)a3 performBlock:(id)a4;
- (void)addNewParticipantWithIdentifier:(id)a3 name:(id)a4;
- (void)appendPendingEntriesFromInputContextHistory:(id)a3;
- (void)assertCheckpointForCoding;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateAllContextEntries:(id)a3;
- (void)enumerateAllContextEntriesWithEntryId:(id)a3;
- (void)enumerateAllContextEntryObjects:(id)a3;
- (void)enumerateAllEntries:(id)a3;
- (void)enumeratePendingEntries:(id)a3;
- (void)updateRecipientNames:(id)a3;
@end

@implementation TIInputContextHistory

- (id)debugDescription
{
  v3 = [(TIInputContextHistory *)self mostRecentTextEntry];
  v4 = [v3 text];
  v5 = [v4 length];

  if ([(TIInputContextHistory *)self validateForSmartReplyGeneration])
  {
    v19 = @"Valid";
    v20 = 0;
  }

  else
  {
    v19 = [(TIInputContextHistory *)self invalidReasonsForSmartReplyGeneration];
    v20 = v19;
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __41__TIInputContextHistory_debugDescription__block_invoke;
  v21[3] = &unk_1E6F4DA78;
  v21[4] = self;
  v21[5] = &v26;
  v21[6] = &v22;
  [(TIInputContextHistory *)self _withLockPerformBlock:v21];
  v18 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v17 = v27[3];
  v8 = v23[3];
  v9 = [(TIInputContextHistory *)self threadIdentifier];
  if (v5)
  {
    v10 = @"Valid";
  }

  else
  {
    v10 = @"Invalid";
  }

  v11 = [(TIInputContextHistory *)self mostRecentTextEntry];
  v12 = [v11 entryIdentifier];
  if ([(TIInputContextHistory *)self mostRecentTextEntryIsByMe])
  {
    v13 = @"Y";
  }

  else
  {
    v13 = @"N";
  }

  if ([(TIInputContextHistory *)self allParticipantsKnown])
  {
    v14 = @"Y";
  }

  else
  {
    v14 = @"N";
  }

  v15 = [v18 stringWithFormat:@"<%@ %p (%@) entries: %lu (pending: %lu), threadIdentifier: %@, lastEntry (%@) entryId: %@, byMe: %@, known: %@>", v7, self, v19, v17, v8, v9, v10, v12, v13, v14];

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);

  return v15;
}

- (id)mostRecentTextEntry
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3812000000;
  v8 = __Block_byref_object_copy__57;
  v9 = __Block_byref_object_dispose__58;
  v10 = 256;
  v11 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__TIInputContextHistory_mostRecentTextEntry__block_invoke;
  v4[3] = &unk_1E6F4D988;
  v4[4] = self;
  v4[5] = &v5;
  [(TIInputContextHistory *)self _withLockPerformBlock:v4];
  v2 = v6[6];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)invalidReasonsForSmartReplyGeneration
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = [(TIInputContextHistory *)self threadIdentifier];
  v5 = [v4 length];

  if (!v5)
  {
    [v3 addObject:@"Invalid thread identifier"];
  }

  v6 = [(TIInputContextHistory *)self recipientIdentifiers];
  v7 = [v6 count];

  if (!v7)
  {
    [v3 addObject:@"Invalid recipient identifiers"];
  }

  v8 = [(TIInputContextHistory *)self primaryRecipientIdentifiers];
  v9 = [v8 count];

  if (!v9)
  {
    [v3 addObject:@"Invalid primary recipient identifiers"];
  }

  v10 = [(TIInputContextHistory *)self firstPersonIdentifiers];
  v11 = [v10 count];

  if (!v11)
  {
    [v3 addObject:@"Invalid first person identifiers"];
  }

  v12 = [(TIInputContextHistory *)self participantsIDtoNamesMap];
  v13 = [v12 count];

  if (!v13)
  {
    [v3 addObject:@"Invalid participants map"];
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __62__TIInputContextHistory_invalidReasonsForSmartReplyGeneration__block_invoke;
  v19[3] = &unk_1E6F4DA78;
  v19[4] = self;
  v19[5] = &v24;
  v19[6] = &v20;
  [(TIInputContextHistory *)self _withLockPerformBlock:v19];
  if (v25[3] || v21[3])
  {
    v14 = [(TIInputContextHistory *)self mostRecentTextEntry];
    v15 = [v14 text];
    v16 = [v15 length];

    if (v16)
    {
      goto LABEL_17;
    }

    v17 = @"Invalid most recent text entry";
  }

  else
  {
    v17 = @"Invalid entries (no regular or pending)";
  }

  [v3 addObject:v17];
LABEL_17:
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v3;
}

- (BOOL)mostRecentTextEntryIsByMe
{
  v3 = [(TIInputContextHistory *)self mostRecentTextEntry];
  v4 = [(TIInputContextHistory *)self firstPersonIdentifiers];
  v5 = [v3 senderIdentifier];
  if ([v4 containsObject:v5])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v3 isFromMe];
  }

  return v6;
}

- (BOOL)allParticipantsKnown
{
  v2 = self;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  v3 = [(TIInputContextHistory *)self primaryRecipientIdentifiers];
  v4 = [(TIInputContextHistory *)v2 secondaryRecipientIdentifiers];
  v5 = [v3 setByAddingObjectsFromSet:v4];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__TIInputContextHistory_allParticipantsKnown__block_invoke;
  v7[3] = &unk_1E6F4CF68;
  v7[4] = v2;
  v7[5] = &v8;
  [v5 enumerateObjectsUsingBlock:v7];
  LOBYTE(v2) = *(v9 + 24);

  _Block_object_dispose(&v8, 8);
  return v2;
}

void __45__TIInputContextHistory_allParticipantsKnown__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 participantsIDtoNamesMap];
  v8 = [v7 objectForKeyedSubscript:v6];

  if ([objc_opt_class() nameComponentsAreEmpty:v8])
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a3 = 1;
  }
}

- (NSString)mostRecentNonSenderTextEntry
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3812000000;
  v8 = __Block_byref_object_copy__57;
  v9 = __Block_byref_object_dispose__58;
  v10 = 256;
  v11 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__TIInputContextHistory_mostRecentNonSenderTextEntry__block_invoke;
  v4[3] = &unk_1E6F4D988;
  v4[4] = self;
  v4[5] = &v5;
  [(TIInputContextHistory *)self _withLockPerformBlock:v4];
  v2 = [v6[6] text];
  _Block_object_dispose(&v5, 8);

  return v2;
}

+ (unint64_t)maxEntryLength
{
  if (+[TIInputContextHistory isMail])
  {
    return 0x2000;
  }

  else
  {
    return 1024;
  }
}

+ (BOOL)isMail
{
  if (+[TIInputContextHistory isMail]::onceToken != -1)
  {
    dispatch_once(&+[TIInputContextHistory isMail]::onceToken, &__block_literal_global_9066);
  }

  return +[TIInputContextHistory isMail]::isMail;
}

- (BOOL)validateForSmartReplyGeneration
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v3 = [(TIInputContextHistory *)self threadIdentifier];
  if ([v3 length])
  {
    v4 = [(TIInputContextHistory *)self recipientIdentifiers];
    if ([v4 count])
    {
      v5 = [(TIInputContextHistory *)self primaryRecipientIdentifiers];
      if ([v5 count])
      {
        v6 = [(TIInputContextHistory *)self firstPersonIdentifiers];
        if ([v6 count])
        {
          v7 = [(TIInputContextHistory *)self participantsIDtoNamesMap];
          if ([v7 count])
          {
            v8 = [(TIInputContextHistory *)self mostRecentTextEntry];
            v9 = [v8 text];
            v10 = [v9 length] != 0;
          }

          else
          {
            v10 = 0;
          }
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v17 = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__TIInputContextHistory_validateForSmartReplyGeneration__block_invoke;
  v13[3] = &unk_1E6F4D988;
  v13[4] = self;
  v13[5] = &v14;
  [(TIInputContextHistory *)self _withLockPerformBlock:v13];
  v11 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v11;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  *(self + 6) = 0;
  *(self + 5) = 0;
  *(self + 3) = 0;
  *(self + 4) = self + 40;
  return self;
}

- (void)assertCheckpointForCoding
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __50__TIInputContextHistory_assertCheckpointForCoding__block_invoke;
  v2[3] = &unk_1E6F4D860;
  v2[4] = self;
  [(TIInputContextHistory *)self _withLockPerformBlock:v2];
}

- (BOOL)hasPendingEntries
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__TIInputContextHistory_hasPendingEntries__block_invoke;
  v4[3] = &unk_1E6F4D988;
  v4[4] = self;
  v4[5] = &v5;
  [(TIInputContextHistory *)self _withLockPerformBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)enumerateAllContextEntriesWithEntryId:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__TIInputContextHistory_enumerateAllContextEntriesWithEntryId___block_invoke;
  v6[3] = &unk_1E6F4CEF0;
  v7 = v4;
  v5 = v4;
  [(TIInputContextHistory *)self _enumerateAllEntriesAsInputContextEntries:v6];
}

void __63__TIInputContextHistory_enumerateAllContextEntriesWithEntryId___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v10 = [v5 text];
  v6 = [v5 timestamp];
  v7 = [v5 senderIdentifier];
  v8 = [v5 senderName];
  v9 = [v5 entryIdentifier];

  (*(v4 + 16))(v4, v10, v6, v7, v8, v9, a3);
}

- (void)enumerateAllContextEntries:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__TIInputContextHistory_enumerateAllContextEntries___block_invoke;
  v6[3] = &unk_1E6F4CEF0;
  v7 = v4;
  v5 = v4;
  [(TIInputContextHistory *)self _enumerateAllEntriesAsInputContextEntries:v6];
}

void __52__TIInputContextHistory_enumerateAllContextEntries___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v9 = [v5 text];
  v6 = [v5 timestamp];
  v7 = [v5 senderIdentifier];
  v8 = [v5 senderName];

  (*(v4 + 16))(v4, v9, v6, v7, v8, a3);
}

- (void)enumerateAllEntries:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__TIInputContextHistory_enumerateAllEntries___block_invoke;
  v6[3] = &unk_1E6F4CEF0;
  v7 = v4;
  v5 = v4;
  [(TIInputContextHistory *)self _enumerateAllEntriesAsInputContextEntries:v6];
}

void __45__TIInputContextHistory_enumerateAllEntries___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v8 = [v5 text];
  v6 = [v5 timestamp];
  v7 = [v5 senderIdentifier];

  (*(v4 + 16))(v4, v8, v6, v7, a3);
}

void *__62__TIInputContextHistory_invalidReasonsForSmartReplyGeneration__block_invoke(void *result)
{
  *(*(result[5] + 8) + 24) = *(result[4] + 24);
  *(*(result[6] + 8) + 24) = *(result[4] + 48);
  return result;
}

uint64_t __56__TIInputContextHistory_validateForSmartReplyGeneration__block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if (*(v1 + 24) == 1)
  {
    v2 = *(result + 32);
    if (*(v2 + 24))
    {
      v3 = 1;
    }

    else
    {
      v3 = *(v2 + 48) != 0;
    }
  }

  else
  {
    v3 = 0;
  }

  *(v1 + 24) = v3;
  return result;
}

void *__41__TIInputContextHistory_debugDescription__block_invoke(void *result)
{
  *(*(result[5] + 8) + 24) = *(result[4] + 24);
  *(*(result[6] + 8) + 24) = *(result[4] + 48);
  return result;
}

- (id)description
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__72;
  v9 = __Block_byref_object_dispose__73;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__TIInputContextHistory_description__block_invoke;
  v4[3] = &unk_1E6F4D988;
  v4[4] = self;
  v4[5] = &v5;
  [(TIInputContextHistory *)self _withLockPerformBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __36__TIInputContextHistory_description__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v7 = NSStringFromClass(v3);
  v4 = [v2 stringWithFormat:@"<%@: %p: pendingEntries: %lu, entries: %lu>", v7, *(a1 + 32), *(*(a1 + 32) + 48), *(*(a1 + 32) + 24)];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)addNewParticipantWithIdentifier:(id)a3 name:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [(TIInputContextHistory *)self participantsIDtoNamesMap];
    [v8 setObject:v6 forKeyedSubscript:v7];
  }
}

- (id)mostRecentTextEntries:(unint64_t)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__72;
  v12 = __Block_byref_object_dispose__73;
  v13 = [MEMORY[0x1E695DF70] array];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__TIInputContextHistory_mostRecentTextEntries___block_invoke;
  v7[3] = &unk_1E6F4CF40;
  v7[5] = &v8;
  v7[6] = a3;
  v7[4] = self;
  [(TIInputContextHistory *)self _withLockPerformBlock:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __47__TIInputContextHistory_mostRecentTextEntries___block_invoke(void *a1)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v16[0] = 0;
  v16[1] = 0;
  v15 = v16;
  std::set<NSHolder<TIInputContextEntry>>::insert[abi:nn200100]<std::__tree_const_iterator<NSHolder<TIInputContextEntry>,std::__tree_node<NSHolder<TIInputContextEntry>,void *> *,long>>(&v15, *(v2 + 32), (v2 + 40));
  v3 = a1[4];
  v18[0] = 0;
  v18[1] = 0;
  v17 = v18;
  std::set<NSHolder<TIInputContextEntry>>::insert[abi:nn200100]<std::__tree_const_iterator<NSHolder<TIInputContextEntry>,std::__tree_node<NSHolder<TIInputContextEntry>,void *> *,long>>(&v17, *(v3 + 8), (v3 + 16));
  LODWORD(v4) = 0;
  v5 = 0;
  while (1)
  {
    v6 = &v16[v5];
    if (v6 != v16[v5 - 1])
    {
      break;
    }

LABEL_16:
    v5 += 3;
    if (v5 == 6)
    {
      goto LABEL_17;
    }
  }

  v4 = v4;
  while (a1[6] > v4)
  {
    v7 = *v6;
    v8 = v6;
    if (*v6)
    {
      do
      {
        v9 = v7;
        v7 = *(v7 + 8);
      }

      while (v7);
    }

    else
    {
      do
      {
        v9 = v8[2];
        v10 = *v9 == v8;
        v8 = v9;
      }

      while (v10);
    }

    v11 = [*(v9 + 32) text];
    if (v11)
    {
      [*(*(a1[5] + 8) + 40) insertObject:v11 atIndex:0];
    }

    v12 = *v6;
    if (*v6)
    {
      do
      {
        v13 = v12;
        v12 = v12[1];
      }

      while (v12);
    }

    else
    {
      do
      {
        v13 = v6[2];
        v10 = *v13 == v6;
        v6 = v13;
      }

      while (v10);
    }

    ++v4;
    v6 = v13;
    if (v13 == v16[v5 - 1])
    {
      goto LABEL_16;
    }
  }

LABEL_17:
  for (i = 4; i != -2; i -= 3)
  {
    std::__tree<NSHolder<TIInputContextEntry>>::destroy(v16[i - 1]);
  }
}

- (NSString)mostRecentTextEntryLogString
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [(TIInputContextHistory *)self mostRecentTextEntry];
  v4 = [(TIInputContextHistory *)self firstPersonIdentifiers];
  v5 = [v3 senderIdentifier];
  v22 = [v4 containsObject:v5];

  v6 = [v3 text];
  v7 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v8 = [v6 componentsSeparatedByCharactersInSet:v7];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v8;
  v10 = [(__CFString *)v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    v13 = &stru_1EF56D550;
    do
    {
      v14 = 0;
      v15 = v13;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v23 + 1) + 8 * v14);
        v17 = [v16 length];
        if (v17)
        {
          v8 = [v16 substringToIndex:1];
          v18 = v8;
        }

        else
        {
          v18 = &stru_1EF56D550;
        }

        v13 = [(__CFString *)v15 stringByAppendingString:v18];

        if (v17)
        {
        }

        ++v14;
        v15 = v13;
      }

      while (v11 != v14);
      v11 = [(__CFString *)v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  else
  {
    v13 = &stru_1EF56D550;
  }

  v19 = @"n";
  if (v22)
  {
    v19 = @"y";
  }

  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@|%@", v13, v19];

  return v20;
}

void __44__TIInputContextHistory_mostRecentTextEntry__block_invoke(uint64_t a1)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v17 = 0;
  v18 = 0;
  v16 = &v17;
  std::set<NSHolder<TIInputContextEntry>>::insert[abi:nn200100]<std::__tree_const_iterator<NSHolder<TIInputContextEntry>,std::__tree_node<NSHolder<TIInputContextEntry>,void *> *,long>>(&v16, *(v2 + 8), (v2 + 16));
  v3 = *(a1 + 32);
  v20[0] = 0;
  v20[1] = 0;
  v19 = v20;
  std::set<NSHolder<TIInputContextEntry>>::insert[abi:nn200100]<std::__tree_const_iterator<NSHolder<TIInputContextEntry>,std::__tree_node<NSHolder<TIInputContextEntry>,void *> *,long>>(&v19, *(v3 + 32), (v3 + 40));
  for (i = 0; i != 6; i += 3)
  {
    v5 = &(&v16)[i];
    if (*(&v18 + i * 8))
    {
      v6 = *(*(*(a1 + 40) + 8) + 48);
      if (!v6)
      {
        goto LABEL_10;
      }

      v7 = (v5 + 1);
      v8 = v5[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *(v8 + 1);
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = *(v7 + 2);
          v10 = *v9 == v7;
          v7 = v9;
        }

        while (v10);
      }

      if (*(v9 + 4) && ([v6 compare:?] & 0x80000000) != 0)
      {
LABEL_10:
        v13 = v5[1];
        v12 = (v5 + 1);
        v11 = v13;
        if (v13)
        {
          do
          {
            v14 = v11;
            v11 = v11[1];
          }

          while (v11);
        }

        else
        {
          do
          {
            v14 = *(v12 + 2);
            v10 = *v14 == v12;
            v12 = v14;
          }

          while (v10);
        }

        objc_storeStrong((*(*(a1 + 40) + 8) + 48), v14[4]);
      }
    }
  }

  for (j = 4; j != -2; j -= 3)
  {
    std::__tree<NSHolder<TIInputContextEntry>>::destroy((&v16)[j]);
  }
}

void __53__TIInputContextHistory_mostRecentNonSenderTextEntry__block_invoke(uint64_t a1)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v23[0] = 0;
  v23[1] = 0;
  v22 = v23;
  std::set<NSHolder<TIInputContextEntry>>::insert[abi:nn200100]<std::__tree_const_iterator<NSHolder<TIInputContextEntry>,std::__tree_node<NSHolder<TIInputContextEntry>,void *> *,long>>(&v22, *(v2 + 8), (v2 + 16));
  v3 = *(a1 + 32);
  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  std::set<NSHolder<TIInputContextEntry>>::insert[abi:nn200100]<std::__tree_const_iterator<NSHolder<TIInputContextEntry>,std::__tree_node<NSHolder<TIInputContextEntry>,void *> *,long>>(&v24, *(v3 + 32), (v3 + 40));
  for (i = 0; i != 6; i += 3)
  {
    v5 = &v23[i];
    if (v5 != v23[i - 1])
    {
      while (1)
      {
        v6 = [*(a1 + 32) firstPersonIdentifiers];
        v7 = *v5;
        v8 = v5;
        if (*v5)
        {
          do
          {
            v9 = v7;
            v7 = *(v7 + 8);
          }

          while (v7);
        }

        else
        {
          do
          {
            v9 = v8[2];
            v10 = *v9 == v8;
            v8 = v9;
          }

          while (v10);
        }

        v11 = [*(v9 + 32) senderIdentifier];
        v12 = [v6 containsObject:v11];

        if ((v12 & 1) == 0)
        {
          break;
        }

        v13 = *v5;
        if (*v5)
        {
          do
          {
            v14 = v13;
            v13 = v13[1];
          }

          while (v13);
        }

        else
        {
          do
          {
            v14 = v5[2];
            v10 = *v14 == v5;
            v5 = v14;
          }

          while (v10);
        }

        v5 = v14;
        if (v14 == v23[i - 1])
        {
          goto LABEL_26;
        }
      }

      v15 = *(*(*(a1 + 40) + 8) + 48);
      if (!v15)
      {
        goto LABEL_21;
      }

      v16 = *v5;
      v17 = v5;
      if (*v5)
      {
        do
        {
          v18 = v16;
          v16 = v16[1];
        }

        while (v16);
      }

      else
      {
        do
        {
          v18 = v17[2];
          v10 = *v18 == v17;
          v17 = v18;
        }

        while (v10);
      }

      if (v18[4] && ([v15 compare:?] & 0x80000000) != 0)
      {
LABEL_21:
        v19 = *v5;
        if (*v5)
        {
          do
          {
            v20 = v19;
            v19 = *(v19 + 8);
          }

          while (v19);
        }

        else
        {
          do
          {
            v20 = v5[2];
            v10 = *v20 == v5;
            v5 = v20;
          }

          while (v10);
        }

        objc_storeStrong((*(*(a1 + 40) + 8) + 48), *(v20 + 32));
      }
    }

LABEL_26:
    ;
  }

  for (j = 4; j != -2; j -= 3)
  {
    std::__tree<NSHolder<TIInputContextEntry>>::destroy(v23[j - 1]);
  }
}

- (NSString)aggregateText
{
  v3 = [MEMORY[0x1E696AD60] string];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__TIInputContextHistory_aggregateText__block_invoke;
  v6[3] = &unk_1E6F4CF18;
  v4 = v3;
  v7 = v4;
  [(TIInputContextHistory *)self enumerateAllEntries:v6];

  return v4;
}

- (void)appendPendingEntriesFromInputContextHistory:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 && self != v4)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __69__TIInputContextHistory_appendPendingEntriesFromInputContextHistory___block_invoke;
    v17[3] = &unk_1E6F4D3A8;
    v18 = v5;
    v19 = self;
    v7 = v6;
    v20 = v7;
    [(TIInputContextHistory *)self _withLocksOnSelfAnd:v18 performBlock:v17];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [(TIInputContextHistory *)self addEntry:*(*(&v13 + 1) + 8 * v12++), v13];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
      }

      while (v10);
    }
  }
}

void __69__TIInputContextHistory_appendPendingEntriesFromInputContextHistory___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  v3 = (v1 + 40);
  if (v2 != (v1 + 40))
  {
    v5 = MEMORY[0x1E69E9C10];
    do
    {
      if (!std::__tree<NSHolder<TIInputContextEntry>>::__count_unique<NSHolder<TIInputContextEntry>>(*(*(a1 + 40) + 40), v2 + 4) && !std::__tree<NSHolder<TIInputContextEntry>>::__count_unique<NSHolder<TIInputContextEntry>>(*(*(a1 + 40) + 16), v2 + 4))
      {
        if (v2[4])
        {
          [*(a1 + 48) addObject:?];
        }

        else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v10 = "[TIInputContextHistory appendPendingEntriesFromInputContextHistory:]_block_invoke";
          _os_log_error_impl(&dword_1863F7000, v5, OS_LOG_TYPE_ERROR, "%s  appendPendingEntriesFromInputContextHistory() skipped an NSHolder because it holds a nil object.", buf, 0xCu);
        }
      }

      v6 = v2[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v2[2];
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != v3);
  }
}

- (void)enumeratePendingEntries:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x4812000000;
    v18 = __Block_byref_object_copy__9000;
    v19 = __Block_byref_object_dispose__9001;
    v20 = &unk_18659682B;
    v22[0] = 0;
    v22[1] = 0;
    v21 = v22;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __49__TIInputContextHistory_enumeratePendingEntries___block_invoke;
    v14[3] = &unk_1E6F4D988;
    v14[4] = self;
    v14[5] = &v15;
    [(TIInputContextHistory *)self _withLockPerformBlock:v14];
    v13 = 0;
    v5 = v16[6];
    v6 = v16 + 7;
    if (v5 != v16 + 7)
    {
      do
      {
        v7 = [v5[4] text];
        v8 = [v5[4] timestamp];
        v9 = [v5[4] senderIdentifier];
        v4[2](v4, v7, v8, v9, self->_recipientIdentifiers, &v13);

        if (v13)
        {
          break;
        }

        v10 = v5[1];
        if (v10)
        {
          do
          {
            v11 = v10;
            v10 = *v10;
          }

          while (v10);
        }

        else
        {
          do
          {
            v11 = v5[2];
            v12 = *v11 == v5;
            v5 = v11;
          }

          while (!v12);
        }

        v5 = v11;
      }

      while (v11 != v6);
    }

    _Block_object_dispose(&v15, 8);
    std::__tree<NSHolder<TIInputContextEntry>>::destroy(v22[0]);
  }
}

void __49__TIInputContextHistory_enumeratePendingEntries___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 40) + 8) + 48;
  if (v2 != v1 + 32)
  {
    std::__tree<NSHolder<TIInputContextEntry>>::__assign_multi<std::__tree_const_iterator<NSHolder<TIInputContextEntry>,std::__tree_node<NSHolder<TIInputContextEntry>,void *> *,long>>(v2, *(v1 + 32), (v1 + 40));
  }
}

- (void)_enumerateAllEntriesAsInputContextEntries:(id)a3
{
  v33[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x4812000000;
    v25 = __Block_byref_object_copy__9000;
    v26 = __Block_byref_object_dispose__9001;
    v27 = &unk_18659682B;
    v29[0] = 0;
    v29[1] = 0;
    v28 = v29;
    v14 = 0;
    v15 = &v14;
    v16 = 0x4812000000;
    v17 = __Block_byref_object_copy__9000;
    v18 = __Block_byref_object_dispose__9001;
    v19 = &unk_18659682B;
    v21[0] = 0;
    v21[1] = 0;
    v20 = v21;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __67__TIInputContextHistory__enumerateAllEntriesAsInputContextEntries___block_invoke;
    v13[3] = &unk_1E6F4DA78;
    v13[4] = self;
    v13[5] = &v22;
    v13[6] = &v14;
    [(TIInputContextHistory *)self _withLockPerformBlock:v13];
    v12 = 0;
    v31[0] = 0;
    v31[1] = 0;
    v30 = v31;
    std::set<NSHolder<TIInputContextEntry>>::insert[abi:nn200100]<std::__tree_const_iterator<NSHolder<TIInputContextEntry>,std::__tree_node<NSHolder<TIInputContextEntry>,void *> *,long>>(&v30, v23[6], v23 + 7);
    v33[0] = 0;
    v33[1] = 0;
    v32 = v33;
    std::set<NSHolder<TIInputContextEntry>>::insert[abi:nn200100]<std::__tree_const_iterator<NSHolder<TIInputContextEntry>,std::__tree_node<NSHolder<TIInputContextEntry>,void *> *,long>>(&v32, v15[6], v15 + 7);
    v5 = 0;
    while (1)
    {
      v6 = &v31[v5];
      v7 = v31[v5 - 1];
      if (v7 != v6)
      {
        break;
      }

LABEL_11:
      v5 += 3;
      if (v5 == 6)
      {
        goto LABEL_12;
      }
    }

    while (1)
    {
      v4[2](v4, v7[4], &v12);
      if (v12)
      {
        break;
      }

      v8 = v7[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v7[2];
          v10 = *v9 == v7;
          v7 = v9;
        }

        while (!v10);
      }

      v7 = v9;
      if (v9 == v6)
      {
        goto LABEL_11;
      }
    }

LABEL_12:
    for (i = 4; i != -2; i -= 3)
    {
      std::__tree<NSHolder<TIInputContextEntry>>::destroy(v31[i - 1]);
    }

    _Block_object_dispose(&v14, 8);
    std::__tree<NSHolder<TIInputContextEntry>>::destroy(v21[0]);
    _Block_object_dispose(&v22, 8);
    std::__tree<NSHolder<TIInputContextEntry>>::destroy(v29[0]);
  }
}

void __67__TIInputContextHistory__enumerateAllEntriesAsInputContextEntries___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[5] + 8) + 48;
  if (v3 != v2 + 8)
  {
    std::__tree<NSHolder<TIInputContextEntry>>::__assign_multi<std::__tree_const_iterator<NSHolder<TIInputContextEntry>,std::__tree_node<NSHolder<TIInputContextEntry>,void *> *,long>>(v3, *(v2 + 8), (v2 + 16));
    v2 = a1[4];
  }

  v4 = *(a1[6] + 8) + 48;
  if (v4 != v2 + 32)
  {
    v5 = *(v2 + 32);

    std::__tree<NSHolder<TIInputContextEntry>>::__assign_multi<std::__tree_const_iterator<NSHolder<TIInputContextEntry>,std::__tree_node<NSHolder<TIInputContextEntry>,void *> *,long>>(v4, v5, (v2 + 40));
  }
}

- (void)enumerateAllContextEntryObjects:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__TIInputContextHistory_enumerateAllContextEntryObjects___block_invoke;
  v6[3] = &unk_1E6F4CEF0;
  v7 = v4;
  v5 = v4;
  [(TIInputContextHistory *)self _enumerateAllEntriesAsInputContextEntries:v6];
}

- (id)_addEntry:(id)a3
{
  v4 = a3;
  v5 = [(TIInputContextHistory *)self participantsIDtoNamesMap];
  if (![v5 count])
  {
    goto LABEL_4;
  }

  v6 = [v4 senderIdentifier];

  if (v6)
  {
    v7 = [(TIInputContextHistory *)self participantsIDtoNamesMap];
    v8 = [v4 senderIdentifier];
    v5 = [v7 objectForKey:v8];

    [v4 setSenderName:v5];
LABEL_4:
  }

  [v4 enforceMaxContextLength:{-[TIInputContextHistory maxContextLength](self, "maxContextLength")}];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __35__TIInputContextHistory__addEntry___block_invoke;
  v13[3] = &unk_1E6F4D8D8;
  v13[4] = self;
  v9 = v4;
  v14 = v9;
  [(TIInputContextHistory *)self _withLockPerformBlock:v13];
  v10 = v14;
  v11 = v9;

  return v9;
}

void __35__TIInputContextHistory__addEntry___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v51 = *(a1 + 40);
  std::__tree<NSHolder<TIInputContextEntry>>::__emplace_unique_key_args<NSHolder<TIInputContextEntry>,NSHolder<TIInputContextEntry>>(v2 + 32, &v51);

  v3 = *(a1 + 32);
  v4 = v3[3];
  if ((v4 + v3[6]) < 0x10)
  {
    return;
  }

  do
  {
    if (v4)
    {
      v5 = *(v3[1] + 32);
      v6 = *(v3[4] + 32);
      if (v5)
      {
        v7 = v6 == 0;
      }

      else
      {
        v7 = 1;
      }

      if (v7)
      {
        if (v6)
        {
          v8 = -1;
        }

        else
        {
          v8 = 0;
        }

        if (v5)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        if (v9 < 0)
        {
LABEL_15:
          v10 = v3 + 1;
          goto LABEL_18;
        }
      }

      else
      {
        v11 = [v5 compare:?];
        v3 = *(a1 + 32);
        if (v11 < 0)
        {
          goto LABEL_15;
        }
      }
    }

    v10 = v3 + 4;
LABEL_18:
    v12 = *v10;
    v13 = *(*v10 + 8);
    v14 = *v10;
    if (v13)
    {
      do
      {
        v15 = v13;
        v13 = *v13;
      }

      while (v13);
    }

    else
    {
      do
      {
        v15 = v14[2];
        v7 = *v15 == v14;
        v14 = v15;
      }

      while (!v7);
    }

    *v10 = v15;
    v16 = v10[1];
    --v10[2];
    v17 = *v12;
    v18 = v12;
    if (*v12)
    {
      v19 = v12[1];
      if (!v19)
      {
        v18 = v12;
LABEL_29:
        v21 = 0;
        v20 = v18[2];
        *(v17 + 16) = v20;
        goto LABEL_30;
      }

      do
      {
        v18 = v19;
        v19 = *v19;
      }

      while (v19);
    }

    v17 = v18[1];
    if (v17)
    {
      goto LABEL_29;
    }

    v20 = v18[2];
    v21 = 1;
LABEL_30:
    v22 = *v20;
    if (*v20 == v18)
    {
      *v20 = v17;
      if (v18 == v16)
      {
        v22 = 0;
        v16 = v17;
      }

      else
      {
        v22 = v20[1];
      }
    }

    else
    {
      v20[1] = v17;
    }

    v23 = *(v18 + 24);
    if (v18 != v12)
    {
      v24 = v12[2];
      v18[2] = v24;
      v24[*v24 != v12] = v18;
      v26 = *v12;
      v25 = v12[1];
      *(v26 + 16) = v18;
      *v18 = v26;
      v18[1] = v25;
      if (v25)
      {
        *(v25 + 16) = v18;
      }

      *(v18 + 24) = *(v12 + 24);
      if (v16 == v12)
      {
        v16 = v18;
      }
    }

    if (!v16 || !v23)
    {
      goto LABEL_93;
    }

    if (!v21)
    {
      *(v17 + 24) = 1;
      goto LABEL_93;
    }

    while (1)
    {
      v27 = v22[2];
      v28 = *v27;
      if (*v27 == v22)
      {
        break;
      }

      if ((v22[3] & 1) == 0)
      {
        *(v22 + 24) = 1;
        *(v27 + 24) = 0;
        v29 = v27[1];
        v30 = *v29;
        v27[1] = *v29;
        if (v30)
        {
          *(v30 + 16) = v27;
        }

        v31 = v27[2];
        v29[2] = v31;
        v31[*v31 != v27] = v29;
        *v29 = v27;
        v27[2] = v29;
        if (v16 == *v22)
        {
          v16 = v22;
        }

        v22 = *(*v22 + 8);
      }

      v32 = *v22;
      if (*v22 && *(v32 + 24) != 1)
      {
        v33 = v22[1];
        if (v33 && (v33[3] & 1) == 0)
        {
LABEL_79:
          v32 = v22;
        }

        else
        {
          *(v32 + 24) = 1;
          *(v22 + 24) = 0;
          v41 = v32[1];
          *v22 = v41;
          if (v41)
          {
            *(v41 + 16) = v22;
          }

          v42 = v22[2];
          v32[2] = v42;
          v42[*v42 != v22] = v32;
          v32[1] = v22;
          v22[2] = v32;
          v33 = v22;
        }

        v43 = v32[2];
        *(v32 + 24) = *(v43 + 24);
        *(v43 + 24) = 1;
        *(v33 + 24) = 1;
        v44 = *(v43 + 8);
        v45 = *v44;
        *(v43 + 8) = *v44;
        if (v45)
        {
          *(v45 + 16) = v43;
        }

        v46 = *(v43 + 16);
        v44[2] = v46;
        v46[*v46 != v43] = v44;
        *v44 = v43;
        goto LABEL_92;
      }

      v33 = v22[1];
      if (v33 && *(v33 + 24) != 1)
      {
        goto LABEL_79;
      }

      *(v22 + 24) = 0;
      v34 = v22[2];
      if (v34 == v16 || (v34[24] & 1) == 0)
      {
        goto LABEL_73;
      }

LABEL_71:
      v22 = *(*(v34 + 2) + 8 * (**(v34 + 2) == v34));
    }

    if ((v22[3] & 1) == 0)
    {
      *(v22 + 24) = 1;
      *(v27 + 24) = 0;
      v35 = v28[1];
      *v27 = v35;
      if (v35)
      {
        *(v35 + 16) = v27;
      }

      v36 = v27[2];
      v28[2] = v36;
      v36[*v36 != v27] = v28;
      v28[1] = v27;
      v27[2] = v28;
      v37 = v22[1];
      if (v16 == v37)
      {
        v16 = v22;
      }

      v22 = *v37;
    }

    v38 = *v22;
    if (*v22 && *(v38 + 24) != 1)
    {
      goto LABEL_88;
    }

    v39 = v22[1];
    if (!v39 || *(v39 + 24) == 1)
    {
      *(v22 + 24) = 0;
      v34 = v22[2];
      if (v34[24] != 1 || v34 == v16)
      {
LABEL_73:
        v34[24] = 1;
        goto LABEL_93;
      }

      goto LABEL_71;
    }

    if (v38 && (v38[3] & 1) == 0)
    {
LABEL_88:
      v39 = v22;
      goto LABEL_89;
    }

    *(v39 + 24) = 1;
    *(v22 + 24) = 0;
    v47 = *v39;
    v22[1] = *v39;
    if (v47)
    {
      *(v47 + 16) = v22;
    }

    v48 = v22[2];
    v39[2] = v48;
    v48[*v48 != v22] = v39;
    *v39 = v22;
    v22[2] = v39;
    v38 = v22;
LABEL_89:
    v43 = v39[2];
    *(v39 + 24) = *(v43 + 24);
    *(v43 + 24) = 1;
    *(v38 + 24) = 1;
    v44 = *v43;
    v49 = *(*v43 + 8);
    *v43 = v49;
    if (v49)
    {
      *(v49 + 16) = v43;
    }

    v50 = *(v43 + 16);
    v44[2] = v50;
    v50[*v50 != v43] = v44;
    v44[1] = v43;
LABEL_92:
    *(v43 + 16) = v44;
LABEL_93:

    operator delete(v12);
    v3 = *(a1 + 32);
    v4 = v3[3];
  }

  while ((v4 + v3[6]) > 0xF);
}

- (id)_addTextEntry:(id)a3 timestamp:(id)a4 senderIdentifier:(id)a5 entryIdentifier:(id)a6 primaryRecipientIdentifiers:(id)a7 secondaryRecipientIdentifiers:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = objc_alloc_init(TIMutableInputContextEntry);
  [(TIInputContextEntry *)v20 setText:v19];

  [(TIInputContextEntry *)v20 setSenderIdentifier:v17];
  [(TIInputContextEntry *)v20 setEntryIdentifier:v16];

  [(TIInputContextEntry *)v20 setTimestamp:v18];
  [(TIInputContextEntry *)v20 setPrimaryRecipientIdentifiers:v15];

  [(TIInputContextEntry *)v20 setSecondaryRecipientIdentifiers:v14];
  v21 = [(TIInputContextHistory *)self _addEntry:v20];

  return v20;
}

- (void)updateRecipientNames:(id)a3
{
  v4 = [a3 copy];
  recipientNames = self->_recipientNames;
  self->_recipientNames = v4;

  MEMORY[0x1EEE66BB8](v4, recipientNames);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = 1;
    if (self == v5)
    {
LABEL_26:

      goto LABEL_27;
    }

    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 1;
    v7 = [(TIInputContextHistory *)self recipientIdentifiers];
    v8 = [(TIInputContextHistory *)v5 recipientIdentifiers];
    if (v7 == v8)
    {
      *(v42 + 24) = 1;
    }

    else
    {
      v9 = [(TIInputContextHistory *)v5 recipientIdentifiers];
      if (v9)
      {
        v10 = [(TIInputContextHistory *)self recipientIdentifiers];
        v11 = [(TIInputContextHistory *)v5 recipientIdentifiers];
        v12 = [v10 isEqualToSet:v11];
        *(v42 + 24) = v12;
      }

      else
      {
        *(v42 + 24) = 0;
      }
    }

    v13 = v42;
    if (*(v42 + 24) == 1)
    {
      v14 = [(TIInputContextHistory *)self firstPersonIdentifiers];
      v15 = [(TIInputContextHistory *)v5 firstPersonIdentifiers];
      if (v14 == v15)
      {
        *(v42 + 24) = 1;
      }

      else
      {
        v16 = [(TIInputContextHistory *)v5 firstPersonIdentifiers];
        if (v16)
        {
          v17 = [(TIInputContextHistory *)self firstPersonIdentifiers];
          v18 = [(TIInputContextHistory *)v5 firstPersonIdentifiers];
          v19 = [v17 isEqualToSet:v18];
          *(v42 + 24) = v19;
        }

        else
        {
          *(v42 + 24) = 0;
        }
      }

      v13 = v42;
      if (v42[3])
      {
        v20 = [(TIInputContextHistory *)self recipientNames];
        v21 = [(TIInputContextHistory *)v5 recipientNames];
        if (v20 == v21)
        {
          *(v42 + 24) = 1;
        }

        else
        {
          v22 = [(TIInputContextHistory *)v5 recipientNames];
          if (v22)
          {
            v23 = [(TIInputContextHistory *)self recipientNames];
            v24 = [(TIInputContextHistory *)v5 recipientNames];
            v25 = [v23 isEqualToSet:v24];
            *(v42 + 24) = v25;
          }

          else
          {
            *(v42 + 24) = 0;
          }
        }

        v13 = v42;
        v28 = v42 + 3;
        if (v42[3])
        {
          primaryRecipientIdentifiers = self->_primaryRecipientIdentifiers;
          if (primaryRecipientIdentifiers == v5->_primaryRecipientIdentifiers || ([(TIInputContextHistory *)v5 primaryRecipientIdentifiers], v30 = objc_claimAutoreleasedReturnValue(), v31 = [(NSSet *)primaryRecipientIdentifiers isEqualToSet:v30], *(v42 + 24) = v31, v30, v13 = v42, v28 = v42 + 3, (v42[3] & 1) != 0))
          {
            infoDict = self->_infoDict;
            if (infoDict == v5->_infoDict)
            {
              *v28 = 1;
              goto LABEL_38;
            }

            v33 = [(NSDictionary *)infoDict isEqualToDictionary:?];
            v13 = v42;
            *(v42 + 24) = v33;
            if (v33)
            {
LABEL_38:
              secondaryRecipientIdentifiers = self->_secondaryRecipientIdentifiers;
              if (secondaryRecipientIdentifiers == v5->_secondaryRecipientIdentifiers)
              {
                *(v13 + 24) = 1;
              }

              else
              {
                v35 = [(TIInputContextHistory *)v5 secondaryRecipientIdentifiers];
                v36 = [(NSSet *)secondaryRecipientIdentifiers isEqualToSet:v35];
                *(v42 + 24) = v36;

                v13 = v42;
                if ((v42[3] & 1) == 0)
                {
                  v26 = 0;
                  goto LABEL_25;
                }
              }

              focusedEntryIdentifier = self->_focusedEntryIdentifier;
              if (focusedEntryIdentifier == v5->_focusedEntryIdentifier)
              {
                v26 = 1;
              }

              else
              {
                v26 = [(NSString *)focusedEntryIdentifier isEqualToString:?];
                v13 = v42;
              }

              goto LABEL_25;
            }

LABEL_24:
            v26 = 0;
            *(v13 + 24) = 0;
LABEL_25:
            *(v13 + 24) = v26;
            v38[0] = MEMORY[0x1E69E9820];
            v38[1] = 3221225472;
            v38[2] = __33__TIInputContextHistory_isEqual___block_invoke;
            v38[3] = &unk_1E6F4DA50;
            v40 = &v41;
            v38[4] = self;
            v39 = v5;
            [(TIInputContextHistory *)self _withLocksOnSelfAnd:v39 performBlock:v38];
            v6 = *(v42 + 24);

            _Block_object_dispose(&v41, 8);
            goto LABEL_26;
          }
        }

LABEL_23:
        *(v13 + 24) = 0;
        goto LABEL_24;
      }
    }

    else
    {
      *(v42 + 24) = 0;
    }

    *(v13 + 24) = 0;
    goto LABEL_23;
  }

  v6 = 0;
LABEL_27:

  return v6 & 1;
}

uint64_t __33__TIInputContextHistory_isEqual___block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(*(result + 48) + 8);
  if (*(v2 + 24) == 1 && (v4 = *(result + 32), v3 = *(result + 40), v4[3] == *(v3 + 24)))
  {
    v5 = v4[1];
    v6 = v4 + 2;
    if (v5 == v4 + 2)
    {
      v12 = 1;
    }

    else
    {
      v7 = *(v3 + 8);
      do
      {
        v8 = v5[4];
        v9 = v7[4];
        if (v8)
        {
          v10 = v9 == 0;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
          if (v9)
          {
            v11 = -1;
          }

          else
          {
            v11 = 0;
          }

          if (v8)
          {
            result = 1;
          }

          else
          {
            result = v11;
          }
        }

        else
        {
          result = [v8 compare:?];
        }

        v12 = result == 0;
        if (result)
        {
          break;
        }

        v13 = v5[1];
        v14 = v5;
        if (v13)
        {
          do
          {
            v5 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v5 = v14[2];
            v10 = *v5 == v14;
            v14 = v5;
          }

          while (!v10);
        }

        v15 = v7[1];
        if (v15)
        {
          do
          {
            v16 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v16 = v7[2];
            v10 = *v16 == v7;
            v7 = v16;
          }

          while (!v10);
        }

        v7 = v16;
      }

      while (v5 != v6);
      v2 = *(v1[6] + 8);
    }
  }

  else
  {
    v12 = 0;
  }

  *(v2 + 24) = v12;
  v17 = *(v1[6] + 8);
  if (*(v17 + 24) == 1 && (v19 = v1[4], v18 = v1[5], v19[6] == *(v18 + 48)))
  {
    v20 = v19[4];
    v21 = v19 + 5;
    if (v20 == v19 + 5)
    {
      v27 = 1;
    }

    else
    {
      v22 = *(v18 + 32);
      do
      {
        v23 = v20[4];
        v24 = v22[4];
        if (v23)
        {
          v25 = v24 == 0;
        }

        else
        {
          v25 = 1;
        }

        if (v25)
        {
          if (v24)
          {
            v26 = -1;
          }

          else
          {
            v26 = 0;
          }

          if (v23)
          {
            result = 1;
          }

          else
          {
            result = v26;
          }
        }

        else
        {
          result = [v23 compare:?];
        }

        v27 = result == 0;
        if (result)
        {
          break;
        }

        v28 = v20[1];
        v29 = v20;
        if (v28)
        {
          do
          {
            v20 = v28;
            v28 = *v28;
          }

          while (v28);
        }

        else
        {
          do
          {
            v20 = v29[2];
            v10 = *v20 == v29;
            v29 = v20;
          }

          while (!v10);
        }

        v30 = v22[1];
        if (v30)
        {
          do
          {
            v31 = v30;
            v30 = *v30;
          }

          while (v30);
        }

        else
        {
          do
          {
            v31 = v22[2];
            v10 = *v31 == v22;
            v22 = v31;
          }

          while (!v10);
        }

        v22 = v31;
      }

      while (v20 != v21);
      v17 = *(v1[6] + 8);
    }
  }

  else
  {
    v27 = 0;
  }

  *(v17 + 24) = v27;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(NSSet *)self->_recipientIdentifiers copy];
  v6 = [v4 initWithRecipientIdentifiers:v5 senderIdentifiers:self->_firstPersonIdentifiers];

  if (v6)
  {
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __38__TIInputContextHistory_copyWithZone___block_invoke;
    v14 = &unk_1E6F4D8D8;
    v7 = v6;
    v15 = v7;
    v16 = self;
    [(TIInputContextHistory *)self _withLockPerformBlock:&v11];
    v8 = [(NSSet *)self->_recipientNames copy:v11];
    v9 = v7[9];
    v7[9] = v8;

    v7[14] = self->_threadID;
    objc_storeStrong(v7 + 15, self->_threadIdentifier);
    objc_storeStrong(v7 + 13, self->_participantsIDtoNamesMap);
    objc_storeStrong(v7 + 10, self->_primaryRecipientIdentifiers);
    objc_storeStrong(v7 + 11, self->_secondaryRecipientIdentifiers);
    objc_storeStrong(v7 + 18, self->_infoDict);
    objc_storeStrong(v7 + 12, self->_firstPersonIdentifiers);
    objc_storeStrong(v7 + 16, self->_focusedEntryIdentifier);
  }

  return v6;
}

void __38__TIInputContextHistory_copyWithZone___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v2 != v1)
  {
    std::__tree<NSHolder<TIInputContextEntry>>::__assign_multi<std::__tree_const_iterator<NSHolder<TIInputContextEntry>,std::__tree_node<NSHolder<TIInputContextEntry>,void *> *,long>>(v2 + 8, *(v1 + 8), (v1 + 16));
    v2 = *(a1 + 32);
    v1 = *(a1 + 40);
  }

  if (v2 != v1)
  {
    v4 = *(v1 + 32);

    std::__tree<NSHolder<TIInputContextEntry>>::__assign_multi<std::__tree_const_iterator<NSHolder<TIInputContextEntry>,std::__tree_node<NSHolder<TIInputContextEntry>,void *> *,long>>(v2 + 32, v4, (v1 + 40));
  }
}

- (TIInputContextHistory)initWithCoder:(id)a3
{
  v4 = a3;
  v50.receiver = self;
  v50.super_class = TIInputContextHistory;
  v5 = [(TIInputContextHistory *)&v50 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v9 setWithObjects:{v10, v11, v12, v13, objc_opt_class(), 0}];
    v5->_entriesLock._os_unfair_lock_opaque = 0;
    v5->_threadID = [v4 decodeIntegerForKey:@"threadID"];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"threadIdentifier"];
    threadIdentifier = v5->_threadIdentifier;
    v5->_threadIdentifier = v15;

    v17 = [v4 decodeIntegerForKey:@"maxContextLength"];
    v5->_maxContextLength = v17;
    if (!v17)
    {
      v5->_maxContextLength = +[TIInputContextHistory maxEntryLength];
    }

    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __39__TIInputContextHistory_initWithCoder___block_invoke;
    v46[3] = &unk_1E6F4D3A8;
    v18 = v5;
    v47 = v18;
    v19 = v4;
    v48 = v19;
    v45 = v14;
    v49 = v45;
    [(TIInputContextHistory *)v18 _withLockPerformBlock:v46];
    v20 = [v19 decodeObjectOfClasses:v8 forKey:@"firstPersonIdentifiers"];
    firstPersonIdentifiers = v18->_firstPersonIdentifiers;
    v18->_firstPersonIdentifiers = v20;

    v22 = [v19 decodeObjectOfClasses:v8 forKey:@"recipientNames"];
    recipientNames = v18->_recipientNames;
    v18->_recipientNames = v22;

    v24 = [v19 decodeObjectOfClasses:v8 forKey:@"primaryRecipientIdentifiers"];
    primaryRecipientIdentifiers = v18->_primaryRecipientIdentifiers;
    v18->_primaryRecipientIdentifiers = v24;

    v26 = [v19 decodeObjectOfClasses:v8 forKey:@"secondaryRecipientIdentifiers"];
    secondaryRecipientIdentifiers = v18->_secondaryRecipientIdentifiers;
    v18->_secondaryRecipientIdentifiers = v26;

    if ([(NSSet *)v18->_primaryRecipientIdentifiers count])
    {
      [(NSSet *)v18->_primaryRecipientIdentifiers setByAddingObjectsFromSet:v18->_secondaryRecipientIdentifiers];
    }

    else
    {
      [v19 decodeObjectOfClasses:v8 forKey:@"recipientIdentifiers"];
    }
    v28 = ;
    recipientIdentifiers = v18->_recipientIdentifiers;
    v18->_recipientIdentifiers = v28;

    v30 = MEMORY[0x1E695DFD8];
    v31 = objc_opt_class();
    v32 = objc_opt_class();
    v33 = [v30 setWithObjects:{v31, v32, objc_opt_class(), 0}];
    v34 = [v19 decodeObjectOfClasses:v33 forKey:@"participantsIDtoNamesMap"];
    participantsIDtoNamesMap = v18->_participantsIDtoNamesMap;
    v18->_participantsIDtoNamesMap = v34;

    v36 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v37 = MEMORY[0x1E695DFD8];
    v38 = objc_opt_class();
    v39 = [v37 setWithObjects:{v38, objc_opt_class(), 0}];
    v40 = [v19 decodeDictionaryWithKeysOfClasses:v36 objectsOfClasses:v39 forKey:@"infoDict"];
    infoDict = v18->_infoDict;
    v18->_infoDict = v40;

    v42 = [v19 decodeObjectOfClass:objc_opt_class() forKey:@"focusedEntryIdentifier"];
    focusedEntryIdentifier = v18->_focusedEntryIdentifier;
    v18->_focusedEntryIdentifier = v42;
  }

  return v5;
}

void __39__TIInputContextHistory_initWithCoder___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) decodeObjectOfClasses:*(a1 + 48) forKey:@"pendingEntries"];
  setFromArray<TIInputContextEntry>(&v13, v2);
  v3 = *(a1 + 32);
  v4 = v3 + 40;
  std::__tree<NSHolder<TIInputContextEntry>>::destroy(*(v3 + 40));
  v5 = v14;
  *(v3 + 32) = v13;
  *(v3 + 40) = v5;
  v6 = v15;
  *(v3 + 48) = v15;
  if (v6)
  {
    v5[2] = v4;
    v13 = &v14;
    v14 = 0;
    v15 = 0;
    v5 = 0;
  }

  else
  {
    *(v3 + 32) = v4;
  }

  std::__tree<NSHolder<TIInputContextEntry>>::destroy(v5);

  v7 = [*(a1 + 40) decodeObjectOfClasses:*(a1 + 48) forKey:@"entries"];
  setFromArray<TIInputContextEntry>(&v13, v7);
  v8 = *(a1 + 32);
  v9 = v8 + 16;
  std::__tree<NSHolder<TIInputContextEntry>>::destroy(*(v8 + 16));
  *(v8 + 8) = v13;
  v10 = v14;
  *(v8 + 16) = v14;
  v11 = v15;
  *(v8 + 24) = v15;
  if (v11)
  {
    v12 = 0;
    v10[2] = v9;
    v13 = &v14;
    v14 = 0;
    v15 = 0;
  }

  else
  {
    *(v8 + 8) = v9;
    v12 = v14;
  }

  std::__tree<NSHolder<TIInputContextEntry>>::destroy(v12);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:self->_threadID forKey:@"threadID"];
  [v4 encodeObject:self->_threadIdentifier forKey:@"threadIdentifier"];
  [v4 encodeInteger:self->_maxContextLength forKey:@"maxContextLength"];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __41__TIInputContextHistory_encodeWithCoder___block_invoke;
  v23 = &unk_1E6F4D8D8;
  v24 = self;
  v5 = v4;
  v25 = v5;
  [(TIInputContextHistory *)self _withLockPerformBlock:&v20];
  if ([(NSSet *)self->_firstPersonIdentifiers count:v20])
  {
    firstPersonIdentifiers = self->_firstPersonIdentifiers;
    v7 = objc_opt_class();
    v8 = TI_filteredSetWithClass(firstPersonIdentifiers, v7);
    [v5 encodeObject:v8 forKey:@"firstPersonIdentifiers"];
  }

  p_primaryRecipientIdentifiers = &self->_primaryRecipientIdentifiers;
  if ([(NSSet *)self->_primaryRecipientIdentifiers count])
  {
    v10 = @"primaryRecipientIdentifiers";
  }

  else
  {
    recipientIdentifiers = self->_recipientIdentifiers;
    v12 = objc_opt_class();
    v13 = TI_filteredSetWithClass(recipientIdentifiers, v12);
    [v5 encodeObject:v13 forKey:@"recipientIdentifiers"];

    p_primaryRecipientIdentifiers = &self->_recipientNames;
    if (![(NSSet *)self->_recipientNames count])
    {
      goto LABEL_8;
    }

    v10 = @"recipientNames";
  }

  v14 = *p_primaryRecipientIdentifiers;
  v15 = objc_opt_class();
  v16 = TI_filteredSetWithClass(v14, v15);
  [v5 encodeObject:v16 forKey:v10];

LABEL_8:
  if ([(NSSet *)self->_secondaryRecipientIdentifiers count])
  {
    secondaryRecipientIdentifiers = self->_secondaryRecipientIdentifiers;
    v18 = objc_opt_class();
    v19 = TI_filteredSetWithClass(secondaryRecipientIdentifiers, v18);
    [v5 encodeObject:v19 forKey:@"secondaryRecipientIdentifiers"];
  }

  if ([(NSDictionary *)self->_infoDict count])
  {
    [v5 encodeObject:self->_infoDict forKey:@"infoDict"];
  }

  if ([(NSMutableDictionary *)self->_participantsIDtoNamesMap count])
  {
    [v5 encodeObject:self->_participantsIDtoNamesMap forKey:@"participantsIDtoNamesMap"];
  }

  if ([(NSString *)self->_focusedEntryIdentifier length])
  {
    [v5 encodeObject:self->_focusedEntryIdentifier forKey:@"focusedEntryIdentifier"];
  }
}

void __41__TIInputContextHistory_encodeWithCoder___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[6])
  {
    v3 = *(a1 + 40);
    v4 = arrayFromSet<TIInputContextEntry>(v2 + 4);
    [v3 encodeObject:v4 forKey:@"pendingEntries"];

    v2 = *(a1 + 32);
  }

  if (v2[3])
  {
    v5 = *(a1 + 40);
    v6 = arrayFromSet<TIInputContextEntry>(v2 + 1);
    [v5 encodeObject:v6 forKey:@"entries"];
  }
}

void __50__TIInputContextHistory_assertCheckpointForCoding__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  if (v2 != (v1 + 40))
  {
    do
    {
      if (!*std::__tree<NSHolder<TIInputContextEntry>>::__find_equal<NSHolder<TIInputContextEntry>>(*(a1 + 32) + 8, &v9, v2 + 4))
      {
        operator new();
      }

      v4 = v2[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v2[2];
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != (v1 + 40));
    v1 = *(a1 + 32);
  }

  v8 = *(v1 + 40);
  v7 = (v1 + 40);
  std::__tree<NSHolder<TIInputContextEntry>>::destroy(v8);
  *v7 = 0;
  v7[1] = 0;
  *(v7 - 1) = v7;
}

- (TIInputContextHistory)initWithThreadIdentifier:(id)a3 participantsIDtoNamesMap:(id)a4 firstPersonIDs:(id)a5 primaryRecipients:(id)a6 secondaryRecipients:(id)a7 infoDict:(id)a8
{
  v15 = a3;
  v16 = a4;
  v29 = a5;
  v28 = a6;
  v17 = a7;
  v18 = a8;
  v30.receiver = self;
  v30.super_class = TIInputContextHistory;
  v19 = [(TIInputContextHistory *)&v30 init];
  v20 = v19;
  if (v19)
  {
    v19->_entriesLock._os_unfair_lock_opaque = 0;
    v19->_threadID = [v15 integerValue];
    objc_storeStrong(&v20->_threadIdentifier, a3);
    v21 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v16];
    participantsIDtoNamesMap = v20->_participantsIDtoNamesMap;
    v20->_participantsIDtoNamesMap = v21;

    objc_storeStrong(&v20->_primaryRecipientIdentifiers, a6);
    objc_storeStrong(&v20->_secondaryRecipientIdentifiers, a7);
    v23 = [(TIInputContextHistory *)v20 primaryRecipientIdentifiers];
    v24 = [(TIInputContextHistory *)v20 secondaryRecipientIdentifiers];
    v25 = [v23 setByAddingObjectsFromSet:v24];
    recipientIdentifiers = v20->_recipientIdentifiers;
    v20->_recipientIdentifiers = v25;

    v20->_maxContextLength = +[TIInputContextHistory maxEntryLength];
    objc_storeStrong(&v20->_firstPersonIdentifiers, a5);
    objc_storeStrong(&v20->_infoDict, a8);
  }

  return v20;
}

- (TIInputContextHistory)initWithThreadID:(unint64_t)a3 participantsIDtoNamesMap:(id)a4 firstPersonIDs:(id)a5 primaryRecipients:(id)a6 secondaryRecipients:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v27.receiver = self;
  v27.super_class = TIInputContextHistory;
  v16 = [(TIInputContextHistory *)&v27 init];
  v17 = v16;
  if (v16)
  {
    v16->_entriesLock._os_unfair_lock_opaque = 0;
    v16->_threadID = a3;
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", a3];
    threadIdentifier = v17->_threadIdentifier;
    v17->_threadIdentifier = v18;

    v20 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v12];
    participantsIDtoNamesMap = v17->_participantsIDtoNamesMap;
    v17->_participantsIDtoNamesMap = v20;

    objc_storeStrong(&v17->_primaryRecipientIdentifiers, a6);
    objc_storeStrong(&v17->_secondaryRecipientIdentifiers, a7);
    v22 = [(TIInputContextHistory *)v17 primaryRecipientIdentifiers];
    v23 = [(TIInputContextHistory *)v17 secondaryRecipientIdentifiers];
    v24 = [v22 setByAddingObjectsFromSet:v23];
    recipientIdentifiers = v17->_recipientIdentifiers;
    v17->_recipientIdentifiers = v24;

    v17->_maxContextLength = +[TIInputContextHistory maxEntryLength];
    objc_storeStrong(&v17->_firstPersonIdentifiers, a5);
  }

  return v17;
}

- (TIInputContextHistory)initWithRecipientIdentifiers:(id)a3 senderIdentifier:(id)a4
{
  v6 = MEMORY[0x1E695DFD8];
  v7 = a3;
  v8 = [v6 setWithObject:a4];
  v9 = [(TIInputContextHistory *)self initWithRecipientIdentifiers:v7 senderIdentifiers:v8];

  return v9;
}

- (void)_withLocksOnSelfAnd:(id)a3 performBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v10 = v6;
  if (v8 <= v10)
  {
    v9 = v10;
  }

  else
  {

    v9 = v8;
    v8 = v10;
  }

  os_unfair_lock_lock(&v8->_entriesLock);
  os_unfair_lock_lock(v9 + 14);
  v7[2](v7);
  os_unfair_lock_unlock(v9 + 14);
  os_unfair_lock_unlock(&v8->_entriesLock);
}

- (void)_withLockPerformBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_entriesLock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_entriesLock);
}

void __31__TIInputContextHistory_isMail__block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  +[TIInputContextHistory isMail]::isMail = [v0 isEqualToString:@"com.apple.mobilemail"];
}

+ (BOOL)nameComponentsAreEmpty:(id)a3
{
  v4 = a3;
  v5 = [v4 givenName];
  if (v5 && (v6 = v5, [v4 givenName], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", &stru_1EF56D550), v7, v6, !v8) || (objc_msgSend(v4, "middleName"), (v9 = objc_claimAutoreleasedReturnValue()) != 0) && (v10 = v9, objc_msgSend(v4, "middleName"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", &stru_1EF56D550), v11, v10, !v12) || (objc_msgSend(v4, "familyName"), (v13 = objc_claimAutoreleasedReturnValue()) != 0) && (v14 = v13, objc_msgSend(v4, "familyName"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqualToString:", &stru_1EF56D550), v15, v14, !v16) || (objc_msgSend(v4, "nameSuffix"), (v17 = objc_claimAutoreleasedReturnValue()) != 0) && (v18 = v17, objc_msgSend(v4, "nameSuffix"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isEqualToString:", &stru_1EF56D550), v19, v18, !v20) || (objc_msgSend(v4, "nickname"), (v21 = objc_claimAutoreleasedReturnValue()) != 0) && (v22 = v21, objc_msgSend(v4, "nickname"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "isEqualToString:", &stru_1EF56D550), v23, v22, !v24))
  {
    v27 = 0;
  }

  else
  {
    v25 = [v4 phoneticRepresentation];
    if (v25)
    {
      v26 = [v4 phoneticRepresentation];
      v27 = [a1 nameComponentsAreEmpty:v26];
    }

    else
    {
      v27 = 1;
    }
  }

  return v27;
}

@end