@interface MBStatus
+ (MBStatus)statusWithDrive:(id)drive path:(id)path error:(id *)error;
+ (id)status;
+ (int)backupStateWithString:(id)string;
+ (int)snapshotStateWithString:(id)string;
- (BOOL)writeToDrive:(id)drive path:(id)path error:(id *)error;
- (MBStatus)init;
- (MBStatus)initWithPropertyList:(id)list;
- (id)description;
- (id)propertyList;
@end

@implementation MBStatus

+ (int)backupStateWithString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"empty"])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"old"])
  {
    v4 = 1;
  }

  else
  {
    if (([stringCopy isEqualToString:@"new"] & 1) == 0)
    {
      objc_exception_throw([[MBException alloc] initWithCode:11 format:{@"Invalid backup state name: %@", stringCopy}]);
    }

    v4 = 2;
  }

  return v4;
}

+ (int)snapshotStateWithString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"uploading"])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"moving"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"removing"])
  {
    v4 = 2;
  }

  else
  {
    if (([stringCopy isEqualToString:@"finished"] & 1) == 0)
    {
      objc_exception_throw([[MBException alloc] initWithCode:11 format:{@"Invalid snapshot state name: %@", stringCopy}]);
    }

    v4 = 3;
  }

  return v4;
}

+ (id)status
{
  v2 = objc_alloc_init(MBStatus);

  return v2;
}

+ (MBStatus)statusWithDrive:(id)drive path:(id)path error:(id *)error
{
  driveCopy = drive;
  pathCopy = path;
  v9 = [driveCopy propertyListAtPath:pathCopy options:0 error:error];
  if (v9)
  {
    v10 = [[MBStatus alloc] initWithPropertyList:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (MBStatus)init
{
  v3.receiver = self;
  v3.super_class = MBStatus;
  result = [(MBStatus *)&v3 init];
  if (result)
  {
    result->_version = 3.3;
  }

  return result;
}

- (MBStatus)initWithPropertyList:(id)list
{
  listCopy = list;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = [MBException alloc];
    v16 = @"Status.plist not a dictionary";
    goto LABEL_26;
  }

  v19.receiver = self;
  v19.super_class = MBStatus;
  v5 = [(MBStatus *)&v19 init];
  if (v5)
  {
    v6 = [listCopy objectForKeyedSubscript:@"Backup Success"];
    v7 = [listCopy objectForKeyedSubscript:@"Version"];
    if (!v7)
    {
      v5->_version = 0.0;
      v5->_versionAmbiguous = 0;
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      v5->_version = v8;
      if (v8 != 0.0 && (v8 < 2.4 || v8 >= 4.0))
      {
        v17 = [[MBException alloc] initWithCode:203 format:{@"Unsupported status version: %0.1f", *&v5->_version}];
LABEL_27:
        objc_exception_throw(v17);
      }

      v5->_versionAmbiguous = v6 != 0;
      if (v8 >= 2.0)
      {
        v9 = [listCopy objectForKeyedSubscript:@"UUID"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(&v5->_uuid, v9);
          v10 = [listCopy objectForKeyedSubscript:@"Date"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_storeStrong(&v5->_date, v10);
            v11 = [listCopy objectForKeyedSubscript:@"BackupState"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v5->_backupState = [MBStatus backupStateWithString:v11];
              v12 = [listCopy objectForKeyedSubscript:@"SnapshotState"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v5->_snapshotState = [MBStatus snapshotStateWithString:v12];
                v13 = [listCopy objectForKeyedSubscript:@"IsFullBackup"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v5->_fullBackup = [v13 BOOLValue];

LABEL_17:
                  goto LABEL_18;
                }

                v15 = [MBException alloc];
                v16 = @"IsFullBackup value not a number";
              }

              else
              {
                v15 = [MBException alloc];
                v16 = @"SnapshotState not a string";
              }
            }

            else
            {
              v15 = [MBException alloc];
              v16 = @"BackupState not a string";
            }
          }

          else
          {
            v15 = [MBException alloc];
            v16 = @"Date value not a date";
          }
        }

        else
        {
          v15 = [MBException alloc];
          v16 = @"UUID value not a string";
        }

        goto LABEL_26;
      }

LABEL_16:
      v5->_backupState = 1;
      goto LABEL_17;
    }

    v15 = [MBException alloc];
    v16 = @"Version value not a NSNumber";
LABEL_26:
    v17 = [v15 initWithCode:11 format:{v16, v18}];
    goto LABEL_27;
  }

LABEL_18:

  return v5;
}

- (id)propertyList
{
  if (self->_version != 3.3)
  {
    sub_10009E840(a2, self);
  }

  v3 = [NSMutableDictionary dictionaryWithCapacity:0];
  0x400A666666666666 = [NSString stringWithFormat:@"%0.1f", 0x400A666666666666];
  [v3 setObject:0x400A666666666666 forKeyedSubscript:@"Version"];

  [v3 setObject:self->_uuid forKeyedSubscript:@"UUID"];
  [v3 setObject:self->_date forKeyedSubscript:@"Date"];
  backupStateName = [(MBStatus *)self backupStateName];
  [v3 setObject:backupStateName forKeyedSubscript:@"BackupState"];

  snapshotStateName = [(MBStatus *)self snapshotStateName];
  [v3 setObject:snapshotStateName forKeyedSubscript:@"SnapshotState"];

  v7 = [NSNumber numberWithBool:self->_fullBackup];
  [v3 setObject:v7 forKeyedSubscript:@"IsFullBackup"];

  return v3;
}

- (BOOL)writeToDrive:(id)drive path:(id)path error:(id *)error
{
  pathCopy = path;
  driveCopy = drive;
  propertyList = [(MBStatus *)self propertyList];
  LOBYTE(error) = [driveCopy uploadPropertyList:propertyList toPath:pathCopy options:0 error:error];

  return error;
}

- (id)description
{
  v3 = objc_opt_class();
  [(MBStatus *)self version];
  v5 = v4;
  date = [(MBStatus *)self date];
  backupStateName = [(MBStatus *)self backupStateName];
  snapshotStateName = [(MBStatus *)self snapshotStateName];
  v9 = [NSString stringWithFormat:@"<%@: version=%0.1f, date=%@, backupState=%@, snapshotState=%@, fullBackup=%d>", v3, v5, date, backupStateName, snapshotStateName, [(MBStatus *)self isFullBackup]];

  return v9;
}

@end