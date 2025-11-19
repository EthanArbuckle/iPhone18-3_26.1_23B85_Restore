@interface LogCategory
@end

@implementation LogCategory

uint64_t __LogCategory_BeaconManager_block_invoke()
{
  LogCategory_BeaconManager_log = os_log_create("com.apple.icloud.SPOwner", "beaconManager");

  return MEMORY[0x2821F96F8]();
}

uint64_t __LogCategory_OwnerSession_block_invoke()
{
  LogCategory_OwnerSession_log = os_log_create("com.apple.icloud.SPOwner", "ownerSession");

  return MEMORY[0x2821F96F8]();
}

uint64_t __LogCategory_AccessoryDiscovery_block_invoke()
{
  LogCategory_AccessoryDiscovery_log = os_log_create("com.apple.icloud.SPOwner", "accessoryDiscovery");

  return MEMORY[0x2821F96F8]();
}

uint64_t __LogCategory_LocalFindableConnectionMaterialMonitoring_block_invoke()
{
  LogCategory_LocalFindableConnectionMaterialMonitoring_log = os_log_create("com.apple.icloud.SPOwner", "localFindableConnectionMaterial");

  return MEMORY[0x2821F96F8]();
}

uint64_t __LogCategory_BTFinding_block_invoke()
{
  LogCategory_BTFinding_log = os_log_create("com.apple.icloud.SPOwner", "btFinding");

  return MEMORY[0x2821F96F8]();
}

uint64_t __LogCategory_SimpleBeaconUpdateInterface_block_invoke()
{
  LogCategory_SimpleBeaconUpdateInterface_log = os_log_create("com.apple.icloud.SPOwner", "simpleBeaconUpdateInterface");

  return MEMORY[0x2821F96F8]();
}

uint64_t __LogCategory_BeaconScanning_block_invoke()
{
  LogCategory_BeaconScanning_log = os_log_create("com.apple.icloud.SPOwner", "beaconScanning");

  return MEMORY[0x2821F96F8]();
}

uint64_t __LogCategory_BeaconSharing_block_invoke()
{
  LogCategory_BeaconSharing_log = os_log_create("com.apple.icloud.SPOwner", "beaconSharing");

  return MEMORY[0x2821F96F8]();
}

uint64_t __LogCategory_CBPeripheralManagement_block_invoke()
{
  LogCategory_CBPeripheralManagement_log = os_log_create("com.apple.icloud.SPOwner", "CBPeripheralManagement");

  return MEMORY[0x2821F96F8]();
}

uint64_t __LogCategory_Crypto_block_invoke()
{
  LogCategory_Crypto_log = os_log_create("com.apple.icloud.SPOwner", "crypto");

  return MEMORY[0x2821F96F8]();
}

uint64_t __LogCategory_FirmwareUpdate_block_invoke()
{
  LogCategory_FirmwareUpdate_log = os_log_create("com.apple.icloud.SPOwner", "firmwareUpdate");

  return MEMORY[0x2821F96F8]();
}

uint64_t __LogCategory_LocationFetch_block_invoke()
{
  LogCategory_LocationFetch_log = os_log_create("com.apple.icloud.SPOwner", "locationFetch");

  return MEMORY[0x2821F96F8]();
}

uint64_t __LogCategory_MaintenanceConnection_block_invoke()
{
  LogCategory_MaintenanceConnection_log = os_log_create("com.apple.icloud.SPOwner", "maintenanceConnection");

  return MEMORY[0x2821F96F8]();
}

uint64_t __LogCategory_NVRAM_block_invoke()
{
  LogCategory_NVRAM_log = os_log_create("com.apple.icloud.SPOwner", "NVRAM");

  return MEMORY[0x2821F96F8]();
}

uint64_t __LogCategory_OfflineAdvertising_block_invoke()
{
  LogCategory_OfflineAdvertising_log = os_log_create("com.apple.icloud.SPOwner", "offlineAdvertising");

  return MEMORY[0x2821F96F8]();
}

uint64_t __LogCategory_PowerManagement_block_invoke()
{
  LogCategory_PowerManagement_log = os_log_create("com.apple.icloud.SPOwner", "powerManagement");

  return MEMORY[0x2821F96F8]();
}

uint64_t __LogCategory_SecureLocations_block_invoke()
{
  LogCategory_SecureLocations_log = os_log_create("com.apple.icloud.SPOwner", "secureLocations");

  return MEMORY[0x2821F96F8]();
}

uint64_t __LogCategory_ServiceState_block_invoke()
{
  LogCategory_ServiceState_log = os_log_create("com.apple.icloud.SPOwner", "serviceState");

  return MEMORY[0x2821F96F8]();
}

uint64_t __LogCategory_SystemHealth_block_invoke()
{
  LogCategory_SystemHealth_log = os_log_create("com.apple.icloud.SPOwner", "FreshDurian");

  return MEMORY[0x2821F96F8]();
}

uint64_t __LogCategory_UnknownDiscovery_block_invoke()
{
  LogCategory_UnknownDiscovery_log = os_log_create("com.apple.icloud.SPOwner", "unknownDiscovery");

  return MEMORY[0x2821F96F8]();
}

uint64_t __LogCategory_Unspecified_block_invoke()
{
  LogCategory_Unspecified_log = os_log_create("com.apple.icloud.SPOwner", "_");

  return MEMORY[0x2821F96F8]();
}

@end