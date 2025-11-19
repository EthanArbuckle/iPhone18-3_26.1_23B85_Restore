@interface TIUserModelDataStore
@end

@implementation TIUserModelDataStore

uint64_t __52__TIUserModelDataStore_Keyboards__singletonInstance__block_invoke()
{
  v0 = [TI_KB_USER_DIRECTORY() stringByAppendingPathComponent:@"user_model_database.sqlite"];
  v1 = singletonInstance_path;
  singletonInstance_path = v0;

  singletonInstance_singletonInstance = [MEMORY[0x277D6F548] initializeDataStoreAtPath:singletonInstance_path];

  return MEMORY[0x2821F96F8]();
}

@end