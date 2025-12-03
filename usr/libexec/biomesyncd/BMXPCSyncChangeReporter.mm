@interface BMXPCSyncChangeReporter
- (BMXPCSyncChangeReporter)init;
- (BOOL)streamUpdatedForStreamName:(id)name deviceIdentifier:(id)identifier error:(id *)error;
- (BOOL)userDeletesForStreamName:(id)name deviceIdentifier:(id)identifier error:(id *)error;
- (id)streamRemoteIdentifierForStreamName:(id)name deviceIdentifier:(id)identifier;
@end

@implementation BMXPCSyncChangeReporter

- (BMXPCSyncChangeReporter)init
{
  v6.receiver = self;
  v6.super_class = BMXPCSyncChangeReporter;
  v2 = [(BMXPCSyncChangeReporter *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    coordinationService = v2->_coordinationService;
    v2->_coordinationService = v3;
  }

  return v2;
}

- (id)streamRemoteIdentifierForStreamName:(id)name deviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  nameCopy = name;
  identifierCopy = [[NSString alloc] initWithFormat:@"%@:remotes:%@", nameCopy, identifierCopy];

  return identifierCopy;
}

- (BOOL)streamUpdatedForStreamName:(id)name deviceIdentifier:(id)identifier error:(id *)error
{
  v7 = [(BMXPCSyncChangeReporter *)self streamRemoteIdentifierForStreamName:name deviceIdentifier:identifier];
  coordinationService = self->_coordinationService;
  v15 = 0;
  v9 = [(GDXPCCoordinationService *)coordinationService streamUpdatedWithStreamName:v7 isDelete:0 error:&v15];
  v10 = v15;
  v11 = v10;
  if ((v9 & 1) == 0)
  {
    if (error)
    {
      v12 = v10;
      *error = v11;
    }

    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100047808();
    }
  }

  return v9;
}

- (BOOL)userDeletesForStreamName:(id)name deviceIdentifier:(id)identifier error:(id *)error
{
  v7 = [(BMXPCSyncChangeReporter *)self streamRemoteIdentifierForStreamName:name deviceIdentifier:identifier];
  coordinationService = self->_coordinationService;
  v15 = 0;
  v9 = [(GDXPCCoordinationService *)coordinationService streamUpdatedWithStreamName:v7 isDelete:1 error:&v15];
  v10 = v15;
  v11 = v10;
  if ((v9 & 1) == 0)
  {
    if (error)
    {
      v12 = v10;
      *error = v11;
    }

    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100047870();
    }
  }

  return v9;
}

@end