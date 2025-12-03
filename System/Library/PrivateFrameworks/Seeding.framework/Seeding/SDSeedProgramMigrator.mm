@interface SDSeedProgramMigrator
+ (BOOL)_enrollInSeedProgram:(int64_t)program;
+ (BOOL)_enrollInSeedProgramFromCookie;
+ (BOOL)fixupSeedProgramSettings;
@end

@implementation SDSeedProgramMigrator

+ (BOOL)fixupSeedProgramSettings
{
  v2 = +[SDSeedingLogging migrateHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [(SDSeedProgramMigrator *)v2 fixupSeedProgramSettings:v3];
  }

  return 0;
}

+ (BOOL)_enrollInSeedProgramFromCookie
{
  v2 = +[SDSeedingLogging migrateHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [(SDSeedProgramMigrator *)v2 _enrollInSeedProgramFromCookie:v3];
  }

  return 0;
}

+ (BOOL)_enrollInSeedProgram:(int64_t)program
{
  v3 = +[SDSeedingLogging migrateHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(SDSeedProgramMigrator *)v3 _enrollInSeedProgram:v4, v5, v6, v7, v8, v9, v10];
  }

  return 0;
}

@end