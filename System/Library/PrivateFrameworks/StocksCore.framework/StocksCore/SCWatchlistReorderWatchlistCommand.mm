@interface SCWatchlistReorderWatchlistCommand
- (SCWatchlistReorderWatchlistCommand)initWithCoder:(id)coder;
- (SCWatchlistReorderWatchlistCommand)initWithWatchlistIdentifier:(id)identifier precedingWatchlistIdentifier:(id)watchlistIdentifier;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithZone:(id)zone;
@end

@implementation SCWatchlistReorderWatchlistCommand

- (SCWatchlistReorderWatchlistCommand)initWithWatchlistIdentifier:(id)identifier precedingWatchlistIdentifier:(id)watchlistIdentifier
{
  identifierCopy = identifier;
  watchlistIdentifierCopy = watchlistIdentifier;
  v14.receiver = self;
  v14.super_class = SCWatchlistReorderWatchlistCommand;
  v8 = [(SCWatchlistReorderWatchlistCommand *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    watchlistIdentifier = v8->_watchlistIdentifier;
    v8->_watchlistIdentifier = v9;

    v11 = [watchlistIdentifierCopy copy];
    precedingWatchlistIdentifier = v8->_precedingWatchlistIdentifier;
    v8->_precedingWatchlistIdentifier = v11;
  }

  return v8;
}

- (void)executeWithZone:(id)zone
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__SCWatchlistReorderWatchlistCommand_executeWithZone___block_invoke;
  aBlock[3] = &unk_1E85E3320;
  aBlock[4] = self;
  zoneCopy = zone;
  v4 = _Block_copy(aBlock);
  [zoneCopy createOrUpdateRecordWithName:@"watchlistorder" recordType:@"WatchlistOrder" modifyBlock:v4];
}

void __54__SCWatchlistReorderWatchlistCommand_executeWithZone___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E695DFA0];
  v24 = v3;
  v5 = [v3 encryptedValues];
  v6 = [v5 objectForKeyedSubscript:@"watchlistIDs"];
  v7 = [v4 orderedSetWithArray:v6];

  v8 = [*(a1 + 32) watchlistIdentifier];
  v9 = [*(a1 + 32) precedingWatchlistIdentifier];
  v10 = [v8 isEqualToString:v9];

  if ((v10 & 1) == 0)
  {
    v11 = [*(a1 + 32) watchlistIdentifier];
    v12 = [v7 containsObject:v11];

    if (v12)
    {
      v13 = [*(a1 + 32) precedingWatchlistIdentifier];
      if (!v13 || (v14 = v13, [*(a1 + 32) precedingWatchlistIdentifier], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v7, "containsObject:", v15), v15, v14, v16))
      {
        v17 = [*(a1 + 32) precedingWatchlistIdentifier];

        v18 = *(a1 + 32);
        if (v17)
        {
          v19 = [v18 precedingWatchlistIdentifier];
          v17 = [v7 indexOfObject:v19];

          if (v17 == 0x7FFFFFFFFFFFFFFFLL)
          {
LABEL_9:
            v22 = [v7 array];
            v23 = [v24 encryptedValues];
            [v23 setObject:v22 forKeyedSubscript:@"watchlistIDs"];

            goto LABEL_10;
          }

          v18 = *(a1 + 32);
        }

        v20 = [v18 watchlistIdentifier];
        [v7 removeObject:v20];

        v21 = [*(a1 + 32) watchlistIdentifier];
        [v7 insertObject:v21 atIndex:v17];

        goto LABEL_9;
      }
    }
  }

LABEL_10:
}

- (SCWatchlistReorderWatchlistCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"precedingWatchlistIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"watchlistIdentifier"];

  if (v6)
  {
    self = [(SCWatchlistReorderWatchlistCommand *)self initWithWatchlistIdentifier:v6 precedingWatchlistIdentifier:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v8 = selfCopy;

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  watchlistIdentifier = [(SCWatchlistReorderWatchlistCommand *)self watchlistIdentifier];
  [coderCopy encodeObject:watchlistIdentifier forKey:@"watchlistIdentifier"];

  precedingWatchlistIdentifier = [(SCWatchlistReorderWatchlistCommand *)self precedingWatchlistIdentifier];
  [coderCopy encodeObject:precedingWatchlistIdentifier forKey:@"precedingWatchlistIdentifier"];
}

@end