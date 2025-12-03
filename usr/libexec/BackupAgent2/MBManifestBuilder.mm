@interface MBManifestBuilder
+ (id)manifestBuilderWithDirectory:(id)directory error:(id *)error;
- (BOOL)closeWithError:(id *)error;
- (MBManifestBuilder)initWithDirectory:(id)directory error:(id *)error;
@end

@implementation MBManifestBuilder

+ (id)manifestBuilderWithDirectory:(id)directory error:(id *)error
{
  directoryCopy = directory;
  v6 = [[MBManifestBuilder alloc] initWithDirectory:directoryCopy error:error];

  return v6;
}

- (MBManifestBuilder)initWithDirectory:(id)directory error:(id *)error
{
  directoryCopy = directory;
  v17.receiver = self;
  v17.super_class = MBManifestBuilder;
  v8 = [(MBManifestBuilder *)&v17 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v8->_directory, directory);
  v10 = objc_alloc_init(MBProperties);
  properties = v9->_properties;
  v9->_properties = v10;

  databasePath = [(MBManifestBuilder *)v9 databasePath];
  v13 = [MBEncoder encoderToFile:databasePath error:error];

  if (v13)
  {
    v14 = [[MBDatabaseBuilder alloc] initWithEncoder:v13];
    databaseBuilder = v9->_databaseBuilder;
    v9->_databaseBuilder = v14;

LABEL_4:
    v13 = v9;
  }

  return v13;
}

- (BOOL)closeWithError:(id *)error
{
  properties = self->_properties;
  propertiesPath = [(MBManifestBuilder *)self propertiesPath];
  v7 = [(MBProperties *)properties writeToFile:propertiesPath error:error];

  if (v7)
  {
    [(MBDatabaseBuilder *)self->_databaseBuilder close];
  }

  return v7;
}

@end