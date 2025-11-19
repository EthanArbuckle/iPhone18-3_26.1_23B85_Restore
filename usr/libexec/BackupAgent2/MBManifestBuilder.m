@interface MBManifestBuilder
+ (id)manifestBuilderWithDirectory:(id)a3 error:(id *)a4;
- (BOOL)closeWithError:(id *)a3;
- (MBManifestBuilder)initWithDirectory:(id)a3 error:(id *)a4;
@end

@implementation MBManifestBuilder

+ (id)manifestBuilderWithDirectory:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [[MBManifestBuilder alloc] initWithDirectory:v5 error:a4];

  return v6;
}

- (MBManifestBuilder)initWithDirectory:(id)a3 error:(id *)a4
{
  v7 = a3;
  v17.receiver = self;
  v17.super_class = MBManifestBuilder;
  v8 = [(MBManifestBuilder *)&v17 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v8->_directory, a3);
  v10 = objc_alloc_init(MBProperties);
  properties = v9->_properties;
  v9->_properties = v10;

  v12 = [(MBManifestBuilder *)v9 databasePath];
  v13 = [MBEncoder encoderToFile:v12 error:a4];

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

- (BOOL)closeWithError:(id *)a3
{
  properties = self->_properties;
  v6 = [(MBManifestBuilder *)self propertiesPath];
  v7 = [(MBProperties *)properties writeToFile:v6 error:a3];

  if (v7)
  {
    [(MBDatabaseBuilder *)self->_databaseBuilder close];
  }

  return v7;
}

@end