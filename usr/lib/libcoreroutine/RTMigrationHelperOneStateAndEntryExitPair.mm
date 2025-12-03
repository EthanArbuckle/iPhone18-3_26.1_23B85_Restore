@interface RTMigrationHelperOneStateAndEntryExitPair
- (BOOL)isEqual:(id)equal;
- (RTMigrationHelperOneStateAndEntryExitPair)initWithOneState:(id)state entryExit:(id)exit;
- (unint64_t)hash;
@end

@implementation RTMigrationHelperOneStateAndEntryExitPair

- (RTMigrationHelperOneStateAndEntryExitPair)initWithOneState:(id)state entryExit:(id)exit
{
  stateCopy = state;
  exitCopy = exit;
  v12.receiver = self;
  v12.super_class = RTMigrationHelperOneStateAndEntryExitPair;
  v9 = [(RTMigrationHelperOneStateAndEntryExitPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_oneState, state);
    objc_storeStrong(&v10->_entryExit, exit);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v15 = 1;
    goto LABEL_20;
  }

  if (!equalCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v15 = 0;
    goto LABEL_20;
  }

  v6 = v5;
  oneState = [(RTMigrationHelperOneStateAndEntryExitPair *)self oneState];
  uniqueId = [oneState uniqueId];
  if (!uniqueId)
  {
    oneState2 = [(RTMigrationHelperOneStateAndEntryExitPair *)v6 oneState];
    uniqueId2 = [oneState2 uniqueId];
    if (!uniqueId2)
    {
      v31 = 0;
      v14 = 1;
LABEL_12:

      goto LABEL_13;
    }

    v30 = uniqueId2;
  }

  oneState3 = [(RTMigrationHelperOneStateAndEntryExitPair *)self oneState];
  uniqueId3 = [oneState3 uniqueId];
  oneState4 = [(RTMigrationHelperOneStateAndEntryExitPair *)v6 oneState];
  uniqueId4 = [oneState4 uniqueId];
  v14 = [uniqueId3 isEqual:uniqueId4];

  if (!uniqueId)
  {
    goto LABEL_12;
  }

LABEL_13:

  entryExit = [(RTMigrationHelperOneStateAndEntryExitPair *)self entryExit];
  [entryExit entry_s];
  v18 = v17;
  entryExit2 = [(RTMigrationHelperOneStateAndEntryExitPair *)v6 entryExit];
  [entryExit2 entry_s];
  v21 = v20;

  entryExit3 = [(RTMigrationHelperOneStateAndEntryExitPair *)self entryExit];
  [entryExit3 exit_s];
  v24 = v23;
  entryExit4 = [(RTMigrationHelperOneStateAndEntryExitPair *)v6 entryExit];
  [entryExit4 exit_s];
  v27 = v26;

  if (v18 == v21)
  {
    v28 = v14;
  }

  else
  {
    v28 = 0;
  }

  if (v24 == v27)
  {
    v15 = v28;
  }

  else
  {
    v15 = 0;
  }

LABEL_20:
  return v15;
}

- (unint64_t)hash
{
  uniqueId = [(RTStateModelOneState *)self->_oneState uniqueId];
  v4 = [uniqueId hash];
  v5 = MEMORY[0x277CCABB0];
  [(RTStateModelEntryExit *)self->_entryExit entry_s];
  v6 = [v5 numberWithDouble:?];
  v7 = [v6 hash] ^ v4;
  v8 = MEMORY[0x277CCABB0];
  [(RTStateModelEntryExit *)self->_entryExit exit_s];
  v9 = [v8 numberWithDouble:?];
  v10 = [v9 hash];

  return v7 ^ v10;
}

@end