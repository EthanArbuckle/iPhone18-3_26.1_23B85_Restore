@interface TIUserModelDataStoreEntry
- (TIUserModelDataStoreEntry)initWithTimestamp:(id)a3 withKey:(id)a4 withInputMode:(id)a5 withValue:(id)a6 withSecondaryValue:(id)a7 withRealValue:(id)a8 withProperties:(id)a9;
@end

@implementation TIUserModelDataStoreEntry

- (TIUserModelDataStoreEntry)initWithTimestamp:(id)a3 withKey:(id)a4 withInputMode:(id)a5 withValue:(id)a6 withSecondaryValue:(id)a7 withRealValue:(id)a8 withProperties:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v25.receiver = self;
  v25.super_class = TIUserModelDataStoreEntry;
  v22 = [(TIUserModelDataStoreEntry *)&v25 init];
  v23 = v22;
  if (v22)
  {
    [(TIUserModelDataStoreEntry *)v22 setTimestamp:v15];
    [(TIUserModelDataStoreEntry *)v23 setKey:v16];
    [(TIUserModelDataStoreEntry *)v23 setInputMode:v17];
    [(TIUserModelDataStoreEntry *)v23 setValue:v18];
    [(TIUserModelDataStoreEntry *)v23 setSecondaryValue:v19];
    [(TIUserModelDataStoreEntry *)v23 setRealValue:v20];
    [(TIUserModelDataStoreEntry *)v23 setProperties:v21];
  }

  return v23;
}

@end