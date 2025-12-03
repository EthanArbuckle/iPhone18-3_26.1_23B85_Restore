@interface TRINotificationReactionChecker
- ($A5A652246548B43F8BC05201A1C72A70)reactionForHotfixDeployment:(id)deployment hotfixDeploymentDate:(id)date;
- ($A5A652246548B43F8BC05201A1C72A70)reactionForRollbackExperimentId:(id)id;
- ($A5A652246548B43F8BC05201A1C72A70)reactionForUpdateExperimentDeployment:(id)deployment;
- (BOOL)_isExistingDeployment:(id)deployment;
- (BOOL)_isOutdatedDeploymentDate:(id)date;
- (TRINotificationReactionChecker)initWithDateProvider:(id)provider rolloutDatabase:(id)database experimentDatabase:(id)experimentDatabase;
@end

@implementation TRINotificationReactionChecker

- (TRINotificationReactionChecker)initWithDateProvider:(id)provider rolloutDatabase:(id)database experimentDatabase:(id)experimentDatabase
{
  providerCopy = provider;
  databaseCopy = database;
  experimentDatabaseCopy = experimentDatabase;
  v15.receiver = self;
  v15.super_class = TRINotificationReactionChecker;
  v12 = [(TRINotificationReactionChecker *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dateProvider, provider);
    objc_storeStrong(&v13->_rolloutDb, database);
    objc_storeStrong(&v13->_experimentDb, experimentDatabase);
  }

  return v13;
}

- ($A5A652246548B43F8BC05201A1C72A70)reactionForHotfixDeployment:(id)deployment hotfixDeploymentDate:(id)date
{
  v17 = *MEMORY[0x277D85DE8];
  deploymentCopy = deployment;
  dateCopy = date;
  if ([(TRINotificationReactionChecker *)self _isOutdatedDeploymentDate:dateCopy])
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = dateCopy;
      v9 = "Ignoring outdated notification with deployment date %@";
      v10 = v8;
      v11 = 12;
LABEL_7:
      _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEFAULT, v9, &v15, v11);
    }
  }

  else
  {
    if (![(TRINotificationReactionChecker *)self _isExistingDeployment:deploymentCopy])
    {
      v12.var0 = 1;
      goto LABEL_10;
    }

    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 67109120;
      LODWORD(v16) = [deploymentCopy deploymentId];
      v9 = "Ignoring notification with existing deploymentId %u";
      v10 = v8;
      v11 = 8;
      goto LABEL_7;
    }
  }

  v12.var0 = 0;
LABEL_10:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)_isOutdatedDeploymentDate:(id)date
{
  dateProvider = self->_dateProvider;
  dateCopy = date;
  v5 = [(TRIDateProviding *)dateProvider lastFetchDateWithType:1 container:1 teamId:0];
  v6 = [dateCopy compare:v5];

  return v6 == -1;
}

- (BOOL)_isExistingDeployment:(id)deployment
{
  v3 = [(TRIRolloutDatabase *)self->_rolloutDb recordWithDeployment:deployment usingTransaction:0];
  v4 = v3 != 0;

  return v4;
}

- ($A5A652246548B43F8BC05201A1C72A70)reactionForRollbackExperimentId:(id)id
{
  idCopy = id;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  experimentDb = self->_experimentDb;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__TRINotificationReactionChecker_reactionForRollbackExperimentId___block_invoke;
  v7[3] = &unk_279DE18E8;
  v7[4] = &v8;
  [(TRIExperimentDatabase *)experimentDb enumerateExperimentRecordsMatchingExperimentId:idCopy block:v7];
  LOBYTE(self) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return self;
}

uint64_t __66__TRINotificationReactionChecker_reactionForRollbackExperimentId___block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

- ($A5A652246548B43F8BC05201A1C72A70)reactionForUpdateExperimentDeployment:(id)deployment
{
  v3 = [(TRIExperimentDatabase *)self->_experimentDb experimentRecordWithExperimentDeployment:deployment];
  v4 = v3 != 0;

  return v4;
}

@end