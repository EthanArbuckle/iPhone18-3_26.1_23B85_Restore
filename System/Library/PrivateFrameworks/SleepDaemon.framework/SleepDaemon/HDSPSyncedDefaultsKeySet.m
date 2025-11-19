@interface HDSPSyncedDefaultsKeySet
- (HDSPSyncedDefaultsKeySet)initWithIdentifier:(id)a3 modficationDateKey:(id)a4 keysToPersist:(id)a5 keysToSync:(id)a6;
- (HDSPSyncedDefaultsKeySet)initWithIdentifier:(id)a3 modficationDateKey:(id)a4 keysToPersist:(id)a5 keysToSync:(id)a6 perGizmoKeys:(id)a7 defaultValues:(id)a8;
@end

@implementation HDSPSyncedDefaultsKeySet

- (HDSPSyncedDefaultsKeySet)initWithIdentifier:(id)a3 modficationDateKey:(id)a4 keysToPersist:(id)a5 keysToSync:(id)a6
{
  v10 = MEMORY[0x277CBEB98];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = objc_alloc_init(v10);
  v16 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  v17 = [(HDSPSyncedDefaultsKeySet *)self initWithIdentifier:v14 modficationDateKey:v13 keysToPersist:v12 keysToSync:v11 perGizmoKeys:v15 defaultValues:v16];

  return v17;
}

- (HDSPSyncedDefaultsKeySet)initWithIdentifier:(id)a3 modficationDateKey:(id)a4 keysToPersist:(id)a5 keysToSync:(id)a6 perGizmoKeys:(id)a7 defaultValues:(id)a8
{
  v14 = a3;
  v15 = a4;
  v26 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v27.receiver = self;
  v27.super_class = HDSPSyncedDefaultsKeySet;
  v19 = [(HDSPSyncedDefaultsKeySet *)&v27 init];
  if (v19)
  {
    v20 = [v14 copy];
    identifier = v19->_identifier;
    v19->_identifier = v20;

    v22 = [v15 copy];
    modificationDateKey = v19->_modificationDateKey;
    v19->_modificationDateKey = v22;

    objc_storeStrong(&v19->_keysToPersist, a5);
    objc_storeStrong(&v19->_keysToSync, a6);
    objc_storeStrong(&v19->_perGizmoKeys, a7);
    objc_storeStrong(&v19->_defaultValues, a8);
    v24 = v19;
  }

  return v19;
}

@end