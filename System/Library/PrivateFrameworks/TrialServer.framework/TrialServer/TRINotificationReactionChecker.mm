@interface TRINotificationReactionChecker
- ($A5A652246548B43F8BC05201A1C72A70)reactionForHotfixDeployment:(id)a3 hotfixDeploymentDate:(id)a4;
- ($A5A652246548B43F8BC05201A1C72A70)reactionForRollbackExperimentId:(id)a3;
- ($A5A652246548B43F8BC05201A1C72A70)reactionForUpdateExperimentDeployment:(id)a3;
- (BOOL)_isExistingDeployment:(id)a3;
- (BOOL)_isOutdatedDeploymentDate:(id)a3;
- (TRINotificationReactionChecker)initWithDateProvider:(id)a3 rolloutDatabase:(id)a4 experimentDatabase:(id)a5;
@end

@implementation TRINotificationReactionChecker

- (TRINotificationReactionChecker)initWithDateProvider:(id)a3 rolloutDatabase:(id)a4 experimentDatabase:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TRINotificationReactionChecker;
  v12 = [(TRINotificationReactionChecker *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dateProvider, a3);
    objc_storeStrong(&v13->_rolloutDb, a4);
    objc_storeStrong(&v13->_experimentDb, a5);
  }

  return v13;
}

- ($A5A652246548B43F8BC05201A1C72A70)reactionForHotfixDeployment:(id)a3 hotfixDeploymentDate:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(TRINotificationReactionChecker *)self _isOutdatedDeploymentDate:v7])
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v7;
      v9 = "Ignoring outdated notification with deployment date %@";
      v10 = v8;
      v11 = 12;
LABEL_7:
      _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEFAULT, v9, &v15, v11);
    }
  }

  else
  {
    if (![(TRINotificationReactionChecker *)self _isExistingDeployment:v6])
    {
      v12.var0 = 1;
      goto LABEL_10;
    }

    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 67109120;
      LODWORD(v16) = [v6 deploymentId];
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

- (BOOL)_isOutdatedDeploymentDate:(id)a3
{
  dateProvider = self->_dateProvider;
  v4 = a3;
  v5 = [(TRIDateProviding *)dateProvider lastFetchDateWithType:1 container:1 teamId:0];
  v6 = [v4 compare:v5];

  return v6 == -1;
}

- (BOOL)_isExistingDeployment:(id)a3
{
  v3 = [(TRIRolloutDatabase *)self->_rolloutDb recordWithDeployment:a3 usingTransaction:0];
  v4 = v3 != 0;

  return v4;
}

- ($A5A652246548B43F8BC05201A1C72A70)reactionForRollbackExperimentId:(id)a3
{
  v4 = a3;
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
  [(TRIExperimentDatabase *)experimentDb enumerateExperimentRecordsMatchingExperimentId:v4 block:v7];
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

- ($A5A652246548B43F8BC05201A1C72A70)reactionForUpdateExperimentDeployment:(id)a3
{
  v3 = [(TRIExperimentDatabase *)self->_experimentDb experimentRecordWithExperimentDeployment:a3];
  v4 = v3 != 0;

  return v4;
}

@end