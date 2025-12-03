@interface HDSPSyncedDefaultsKeySet
- (HDSPSyncedDefaultsKeySet)initWithIdentifier:(id)identifier modficationDateKey:(id)key keysToPersist:(id)persist keysToSync:(id)sync;
- (HDSPSyncedDefaultsKeySet)initWithIdentifier:(id)identifier modficationDateKey:(id)key keysToPersist:(id)persist keysToSync:(id)sync perGizmoKeys:(id)keys defaultValues:(id)values;
@end

@implementation HDSPSyncedDefaultsKeySet

- (HDSPSyncedDefaultsKeySet)initWithIdentifier:(id)identifier modficationDateKey:(id)key keysToPersist:(id)persist keysToSync:(id)sync
{
  v10 = MEMORY[0x277CBEB98];
  syncCopy = sync;
  persistCopy = persist;
  keyCopy = key;
  identifierCopy = identifier;
  v15 = objc_alloc_init(v10);
  v16 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  v17 = [(HDSPSyncedDefaultsKeySet *)self initWithIdentifier:identifierCopy modficationDateKey:keyCopy keysToPersist:persistCopy keysToSync:syncCopy perGizmoKeys:v15 defaultValues:v16];

  return v17;
}

- (HDSPSyncedDefaultsKeySet)initWithIdentifier:(id)identifier modficationDateKey:(id)key keysToPersist:(id)persist keysToSync:(id)sync perGizmoKeys:(id)keys defaultValues:(id)values
{
  identifierCopy = identifier;
  keyCopy = key;
  persistCopy = persist;
  syncCopy = sync;
  keysCopy = keys;
  valuesCopy = values;
  v27.receiver = self;
  v27.super_class = HDSPSyncedDefaultsKeySet;
  v19 = [(HDSPSyncedDefaultsKeySet *)&v27 init];
  if (v19)
  {
    v20 = [identifierCopy copy];
    identifier = v19->_identifier;
    v19->_identifier = v20;

    v22 = [keyCopy copy];
    modificationDateKey = v19->_modificationDateKey;
    v19->_modificationDateKey = v22;

    objc_storeStrong(&v19->_keysToPersist, persist);
    objc_storeStrong(&v19->_keysToSync, sync);
    objc_storeStrong(&v19->_perGizmoKeys, keys);
    objc_storeStrong(&v19->_defaultValues, values);
    v24 = v19;
  }

  return v19;
}

@end