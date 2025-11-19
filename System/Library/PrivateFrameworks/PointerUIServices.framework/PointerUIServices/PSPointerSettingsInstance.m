@interface PSPointerSettingsInstance
@end

@implementation PSPointerSettingsInstance

uint64_t ___PSPointerSettingsInstance_block_invoke()
{
  _PSPointerSettingsInstance___psPointerSettings = +[PSPointerSettingsDomain rootSettings];

  return MEMORY[0x2821F96F8]();
}

@end