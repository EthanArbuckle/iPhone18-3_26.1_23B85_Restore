@interface RMSPairingRecordStore
+ (id)sharedRecordStore;
- (RMSPairingRecordStore)init;
- (id)allPairingRecords;
- (void)_synchronizePreferences;
- (void)removePairingRecordForServiceWithNetworkName:(id)a3;
- (void)savePairingRecord:(id)a3 forServiceWithNetworkName:(id)a4;
@end

@implementation RMSPairingRecordStore

+ (id)sharedRecordStore
{
  if (sharedRecordStore_onceToken != -1)
  {
    +[RMSPairingRecordStore sharedRecordStore];
  }

  v3 = sharedRecordStore_sharedRecordStore;

  return v3;
}

uint64_t __42__RMSPairingRecordStore_sharedRecordStore__block_invoke()
{
  sharedRecordStore_sharedRecordStore = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (RMSPairingRecordStore)init
{
  v9.receiver = self;
  v9.super_class = RMSPairingRecordStore;
  v2 = [(RMSPairingRecordStore *)&v9 init];
  if (v2)
  {
    CFPreferencesAppSynchronize(@"com.apple.RemoteMediaServices");
    v3 = CFPreferencesCopyAppValue(@"PairingRecordStore", @"com.apple.RemoteMediaServices");
    v4 = [v3 mutableCopy];
    pairingRecords = v2->_pairingRecords;
    v2->_pairingRecords = v4;

    if (!v2->_pairingRecords)
    {
      v6 = objc_opt_new();
      v7 = v2->_pairingRecords;
      v2->_pairingRecords = v6;
    }
  }

  return v2;
}

- (id)allPairingRecords
{
  v2 = [(NSMutableDictionary *)self->_pairingRecords copy];

  return v2;
}

- (void)savePairingRecord:(id)a3 forServiceWithNetworkName:(id)a4
{
  [(NSMutableDictionary *)self->_pairingRecords setObject:a3 forKeyedSubscript:a4];

  [(RMSPairingRecordStore *)self _synchronizePreferences];
}

- (void)removePairingRecordForServiceWithNetworkName:(id)a3
{
  [(NSMutableDictionary *)self->_pairingRecords removeObjectForKey:a3];

  [(RMSPairingRecordStore *)self _synchronizePreferences];
}

- (void)_synchronizePreferences
{
  CFPreferencesSetAppValue(@"PairingRecordStore", self->_pairingRecords, @"com.apple.RemoteMediaServices");

  CFPreferencesAppSynchronize(@"com.apple.RemoteMediaServices");
}

@end