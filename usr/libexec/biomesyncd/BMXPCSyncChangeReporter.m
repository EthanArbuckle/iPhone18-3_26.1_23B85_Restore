@interface BMXPCSyncChangeReporter
- (BMXPCSyncChangeReporter)init;
- (BOOL)streamUpdatedForStreamName:(id)a3 deviceIdentifier:(id)a4 error:(id *)a5;
- (BOOL)userDeletesForStreamName:(id)a3 deviceIdentifier:(id)a4 error:(id *)a5;
- (id)streamRemoteIdentifierForStreamName:(id)a3 deviceIdentifier:(id)a4;
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

- (id)streamRemoteIdentifierForStreamName:(id)a3 deviceIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[NSString alloc] initWithFormat:@"%@:remotes:%@", v6, v5];

  return v7;
}

- (BOOL)streamUpdatedForStreamName:(id)a3 deviceIdentifier:(id)a4 error:(id *)a5
{
  v7 = [(BMXPCSyncChangeReporter *)self streamRemoteIdentifierForStreamName:a3 deviceIdentifier:a4];
  coordinationService = self->_coordinationService;
  v15 = 0;
  v9 = [(GDXPCCoordinationService *)coordinationService streamUpdatedWithStreamName:v7 isDelete:0 error:&v15];
  v10 = v15;
  v11 = v10;
  if ((v9 & 1) == 0)
  {
    if (a5)
    {
      v12 = v10;
      *a5 = v11;
    }

    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100047808();
    }
  }

  return v9;
}

- (BOOL)userDeletesForStreamName:(id)a3 deviceIdentifier:(id)a4 error:(id *)a5
{
  v7 = [(BMXPCSyncChangeReporter *)self streamRemoteIdentifierForStreamName:a3 deviceIdentifier:a4];
  coordinationService = self->_coordinationService;
  v15 = 0;
  v9 = [(GDXPCCoordinationService *)coordinationService streamUpdatedWithStreamName:v7 isDelete:1 error:&v15];
  v10 = v15;
  v11 = v10;
  if ((v9 & 1) == 0)
  {
    if (a5)
    {
      v12 = v10;
      *a5 = v11;
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