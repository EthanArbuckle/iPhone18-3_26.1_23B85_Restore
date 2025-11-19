@interface SSBDatabaseUpdateSupport
- (SSBDatabaseUpdateSupport)init;
- (id)fetchCellularDataPlanSynchronously;
- (void)_fetchCellularDataPlan;
- (void)_fetchCellularDataPlanWithCompletionHandler:(id)a3;
@end

@implementation SSBDatabaseUpdateSupport

- (SSBDatabaseUpdateSupport)init
{
  v6.receiver = self;
  v6.super_class = SSBDatabaseUpdateSupport;
  v2 = [(SSBDatabaseUpdateSupport *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_onHighCellularDataPlan = 0;
    [(SSBDatabaseUpdateSupport *)v2 _fetchCellularDataPlan];
    v4 = v3;
  }

  return v3;
}

- (void)_fetchCellularDataPlanWithCompletionHandler:(id)a3
{
  v4 = a3;
  carrierSpaceClient = self->_carrierSpaceClient;
  if (!carrierSpaceClient)
  {
    v6 = [objc_alloc(MEMORY[0x277CF6F18]) initWithQueue:0];
    v7 = self->_carrierSpaceClient;
    self->_carrierSpaceClient = v6;

    carrierSpaceClient = self->_carrierSpaceClient;
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__SSBDatabaseUpdateSupport__fetchCellularDataPlanWithCompletionHandler___block_invoke;
  v9[3] = &unk_278564F38;
  v10 = v4;
  v8 = v4;
  [(CTCarrierSpaceClient *)carrierSpaceClient fetchDataPlanMetrics:v9];
}

void __72__SSBDatabaseUpdateSupport__fetchCellularDataPlanWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = SSBOSLogDatabase();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __72__SSBDatabaseUpdateSupport__fetchCellularDataPlanWithCompletionHandler___block_invoke_cold_1(v6, v5);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = [a2 domestic];
    v9 = [v8 capacityBytes];
    (*(v7 + 16))(v7, v9);
  }
}

- (void)_fetchCellularDataPlan
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __50__SSBDatabaseUpdateSupport__fetchCellularDataPlan__block_invoke;
  v2[3] = &unk_278564F60;
  v2[4] = self;
  [(SSBDatabaseUpdateSupport *)self _fetchCellularDataPlanWithCompletionHandler:v2];
}

uint64_t __50__SSBDatabaseUpdateSupport__fetchCellularDataPlan__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 integerValue];
  *(*(a1 + 32) + 16) = (result & 0xFFFFFFFFC0000000) != 0;
  return result;
}

- (id)fetchCellularDataPlanSynchronously
{
  v3 = dispatch_semaphore_create(0);
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__SSBDatabaseUpdateSupport_fetchCellularDataPlanSynchronously__block_invoke;
  v7[3] = &unk_278564F88;
  v9 = &v10;
  v4 = v3;
  v8 = v4;
  [(SSBDatabaseUpdateSupport *)self _fetchCellularDataPlanWithCompletionHandler:v7];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

intptr_t __62__SSBDatabaseUpdateSupport_fetchCellularDataPlanSynchronously__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 stringValue];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

void __72__SSBDatabaseUpdateSupport__fetchCellularDataPlanWithCompletionHandler___block_invoke_cold_1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 ssb_privacyPreservingDescription];
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_2255EE000, v3, OS_LOG_TYPE_ERROR, "Failed to get data plan metrics: %{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end