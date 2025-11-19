@interface RTMigrationHelperOneStateAndEntryExitPair
- (BOOL)isEqual:(id)a3;
- (RTMigrationHelperOneStateAndEntryExitPair)initWithOneState:(id)a3 entryExit:(id)a4;
- (unint64_t)hash;
@end

@implementation RTMigrationHelperOneStateAndEntryExitPair

- (RTMigrationHelperOneStateAndEntryExitPair)initWithOneState:(id)a3 entryExit:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = RTMigrationHelperOneStateAndEntryExitPair;
  v9 = [(RTMigrationHelperOneStateAndEntryExitPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_oneState, a3);
    objc_storeStrong(&v10->_entryExit, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v15 = 1;
    goto LABEL_20;
  }

  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v15 = 0;
    goto LABEL_20;
  }

  v6 = v5;
  v7 = [(RTMigrationHelperOneStateAndEntryExitPair *)self oneState];
  v8 = [v7 uniqueId];
  if (!v8)
  {
    v32 = [(RTMigrationHelperOneStateAndEntryExitPair *)v6 oneState];
    v9 = [v32 uniqueId];
    if (!v9)
    {
      v31 = 0;
      v14 = 1;
LABEL_12:

      goto LABEL_13;
    }

    v30 = v9;
  }

  v10 = [(RTMigrationHelperOneStateAndEntryExitPair *)self oneState];
  v11 = [v10 uniqueId];
  v12 = [(RTMigrationHelperOneStateAndEntryExitPair *)v6 oneState];
  v13 = [v12 uniqueId];
  v14 = [v11 isEqual:v13];

  if (!v8)
  {
    goto LABEL_12;
  }

LABEL_13:

  v16 = [(RTMigrationHelperOneStateAndEntryExitPair *)self entryExit];
  [v16 entry_s];
  v18 = v17;
  v19 = [(RTMigrationHelperOneStateAndEntryExitPair *)v6 entryExit];
  [v19 entry_s];
  v21 = v20;

  v22 = [(RTMigrationHelperOneStateAndEntryExitPair *)self entryExit];
  [v22 exit_s];
  v24 = v23;
  v25 = [(RTMigrationHelperOneStateAndEntryExitPair *)v6 entryExit];
  [v25 exit_s];
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
  v3 = [(RTStateModelOneState *)self->_oneState uniqueId];
  v4 = [v3 hash];
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