@interface PCSMigrationState
- (BOOL)BOOLOption:(__CFString *)a3;
- (void)clearMetadata;
- (void)clearOldRegistry;
- (void)clearSet;
- (void)clearStableMetadata;
- (void)dealloc;
- (void)softReset;
@end

@implementation PCSMigrationState

- (void)clearMetadata
{
  metadata = self->_metadata;
  if (metadata)
  {
    self->_metadata = 0;
    CFRelease(metadata);
  }
}

- (void)clearOldRegistry
{
  oldRegistry = self->_oldRegistry;
  if (oldRegistry)
  {
    self->_oldRegistry = 0;
    CFRelease(oldRegistry);
  }
}

- (void)clearStableMetadata
{
  stableMetadata = self->_stableMetadata;
  if (stableMetadata)
  {
    self->_stableMetadata = 0;
    CFRelease(stableMetadata);
  }
}

- (void)clearSet
{
  set = self->_set;
  if (set)
  {
    self->_set = 0;
    CFRelease(set);
  }
}

- (void)softReset
{
  self->_modified = 0;
  self->_restart = 0;
  set = self->_set;
  if (set)
  {
    self->_set = 0;
    CFRelease(set);
  }

  escrowIdentity = self->_escrowIdentity;
  if (escrowIdentity)
  {
    self->_escrowIdentity = 0;
    CFRelease(escrowIdentity);
  }

  newHSMContent = self->_newHSMContent;
  if (newHSMContent)
  {
    self->_newHSMContent = 0;
    CFRelease(newHSMContent);
  }

  metadata = self->_metadata;
  if (metadata)
  {
    self->_metadata = 0;
    CFRelease(metadata);
  }

  classicContent = self->_classicContent;
  if (classicContent)
  {
    self->_classicContent = 0;
    CFRelease(classicContent);
  }

  escrowMergeNeeded = self->_escrowMergeNeeded;
  if (escrowMergeNeeded)
  {
    self->_escrowMergeNeeded = 0;
    CFRelease(escrowMergeNeeded);
  }

  stableMetadata = self->_stableMetadata;
  if (stableMetadata)
  {
    self->_stableMetadata = 0;
    CFRelease(stableMetadata);
  }

  oldRegistry = self->_oldRegistry;
  if (oldRegistry)
  {
    self->_oldRegistry = 0;
    CFRelease(oldRegistry);
  }

  missingFromRegistry = self->_missingFromRegistry;
  if (missingFromRegistry)
  {
    self->_missingFromRegistry = 0;
    CFRelease(missingFromRegistry);
  }

  removeFromRegistry = self->_removeFromRegistry;
  if (removeFromRegistry)
  {
    self->_removeFromRegistry = 0;

    CFRelease(removeFromRegistry);
  }
}

- (void)dealloc
{
  [(PCSMigrationState *)self softReset];
  initialOptions = self->_initialOptions;
  if (initialOptions)
  {
    self->_initialOptions = 0;
    CFRelease(initialOptions);
  }

  options = self->_options;
  if (options)
  {
    self->_options = 0;
    CFRelease(options);
  }

  limitLocalStoring = self->_limitLocalStoring;
  if (limitLocalStoring)
  {
    self->_limitLocalStoring = 0;
    CFRelease(limitLocalStoring);
  }

  type = self->_type;
  if (type)
  {
    self->_type = 0;
    CFRelease(type);
  }

  log = self->_log;
  if (log)
  {
    self->_log = 0;
    CFRelease(log);
  }

  v8.receiver = self;
  v8.super_class = PCSMigrationState;
  [(PCSMigrationState *)&v8 dealloc];
}

- (BOOL)BOOLOption:(__CFString *)a3
{
  v3 = [(__CFDictionary *)[(PCSMigrationState *)self options] objectForKeyedSubscript:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

@end