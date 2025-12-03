@interface TIUserModelDataStoreEntry
- (TIUserModelDataStoreEntry)initWithTimestamp:(id)timestamp withKey:(id)key withInputMode:(id)mode withValue:(id)value withSecondaryValue:(id)secondaryValue withRealValue:(id)realValue withProperties:(id)properties;
@end

@implementation TIUserModelDataStoreEntry

- (TIUserModelDataStoreEntry)initWithTimestamp:(id)timestamp withKey:(id)key withInputMode:(id)mode withValue:(id)value withSecondaryValue:(id)secondaryValue withRealValue:(id)realValue withProperties:(id)properties
{
  timestampCopy = timestamp;
  keyCopy = key;
  modeCopy = mode;
  valueCopy = value;
  secondaryValueCopy = secondaryValue;
  realValueCopy = realValue;
  propertiesCopy = properties;
  v25.receiver = self;
  v25.super_class = TIUserModelDataStoreEntry;
  v22 = [(TIUserModelDataStoreEntry *)&v25 init];
  v23 = v22;
  if (v22)
  {
    [(TIUserModelDataStoreEntry *)v22 setTimestamp:timestampCopy];
    [(TIUserModelDataStoreEntry *)v23 setKey:keyCopy];
    [(TIUserModelDataStoreEntry *)v23 setInputMode:modeCopy];
    [(TIUserModelDataStoreEntry *)v23 setValue:valueCopy];
    [(TIUserModelDataStoreEntry *)v23 setSecondaryValue:secondaryValueCopy];
    [(TIUserModelDataStoreEntry *)v23 setRealValue:realValueCopy];
    [(TIUserModelDataStoreEntry *)v23 setProperties:propertiesCopy];
  }

  return v23;
}

@end