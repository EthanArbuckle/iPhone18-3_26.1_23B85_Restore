@interface CLPCPolicyClient
- (BOOL)isLowPowerModeCandidate:(unint64_t)a3 error:(id *)a4;
- (BOOL)setCLPCTrialID:(unint64_t)a3 error:(id *)a4;
- (BOOL)setGameMode:(BOOL)a3 options:(unint64_t)a4 error:(id *)a5;
- (id).cxx_construct;
- (id)init:(id *)a3;
@end

@implementation CLPCPolicyClient

- (id)init:(id *)a3
{
  v8.receiver = self;
  v8.super_class = CLPCPolicyClient;
  v3 = [(CLPCUserClient *)&v8 init:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3[10];
    v3[10] = 0;

    v6 = v4;
  }

  return v4;
}

- (BOOL)isLowPowerModeCandidate:(unint64_t)a3 error:(id *)a4
{
  v37[1] = *MEMORY[0x277D85DE8];
  if (a3 == 2)
  {
    v6 = [CLPCPolicyInterface createClient:0];
    clpc_policy_client = self->clpc_policy_client;
    self->clpc_policy_client = v6;

    v8 = self->clpc_policy_client;
    if (v8)
    {
      if ([(CLPCPolicyAccess *)v8 isInGameMode:a4]!= 1)
      {
        *&outputStruct.id = 0;
        v27 = -3;
        IOConnectCallMethod(self->super.clpc.connect, 7u, 0, 0, 0, 0, 0, 0, &outputStruct, &v27);
        v14 = [MEMORY[0x277CBEA90] dataWithBytes:*&outputStruct.id + 40 length:36];
        v9 = v14;
        if (!a4 || v14)
        {
          *&outputStruct.id = 0x10000000FLL;
          outputStruct.size = 36;
          v25 = 0uLL;
          v26 = 0.0;
          [v14 getBytes:&outputStruct length:36];
          p_previous_lpgm_info = &self->previous_lpgm_info;
          lpgm_timestamp = self->previous_lpgm_info.lpgm_timestamp;
          if (!lpgm_timestamp)
          {
            v11 = 0;
            v22 = v25;
            p_previous_lpgm_info->info = outputStruct;
            *&p_previous_lpgm_info->package_energy_nj = v22;
            p_previous_lpgm_info->lpgm_target = v26;
            goto LABEL_8;
          }

          package_energy_nj = self->previous_lpgm_info.package_energy_nj;
          v19 = v25;
          v20 = [CLPCUtils mach_time_to_ns:?];
          if (v20 > 0x6FC23ABFFLL)
          {
            v21 = v25;
            p_previous_lpgm_info->info = outputStruct;
            *&p_previous_lpgm_info->package_energy_nj = v21;
            p_previous_lpgm_info->lpgm_target = v26;
            v11 = (v19 - package_energy_nj) / v20 > v26 * 1.3;
            goto LABEL_8;
          }

          v28 = *MEMORY[0x277CCA068];
          v29 = @"LPGM candidacy request is too frequent.";
          v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
          *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CLPCErrorDomain" code:-536870207 userInfo:v23];
        }

        else
        {
          v30 = *MEMORY[0x277CCA068];
          v31 = @"Unable to query LPGM info.";
          v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
          *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CLPCErrorDomain" code:-536870199 userInfo:v15];
        }

        v11 = 0;
        goto LABEL_8;
      }

      self->previous_lpgm_info.lpgm_timestamp = 0;
      v34 = *MEMORY[0x277CCA068];
      v35 = @"CLPC game mode policy is OFF, ineligible for LPGM candidacy check.";
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CLPCErrorDomain" code:-536870199 userInfo:v9];
    }

    else
    {
      v32 = *MEMORY[0x277CCA068];
      v33 = @"Unable to create CLPC Policy client for Game Mode check.";
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CLPCErrorDomain" code:-536870207 userInfo:v9];
    }
  }

  else
  {
    v36 = *MEMORY[0x277CCA068];
    v37[0] = @"Unsupported option selected.";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CLPCErrorDomain" code:-536870206 userInfo:v9];
  }

  v11 = 0;
  *a4 = v10;
LABEL_8:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)setGameMode:(BOOL)a3 options:(unint64_t)a4 error:(id *)a5
{
  if (!a3)
  {
    *&self->previous_lpgm_info.info.id = 0x10000000FLL;
    self->previous_lpgm_info.info.size = 36;
    self->previous_lpgm_info.package_energy_nj = 0;
    self->previous_lpgm_info.lpgm_timestamp = 0;
    self->previous_lpgm_info.lpgm_target = 0.0;
  }

  v6.receiver = self;
  v6.super_class = CLPCPolicyClient;
  return [CLPCUserClient setGameMode:sel_setGameMode_options_error_ options:? error:?];
}

- (BOOL)setCLPCTrialID:(unint64_t)a3 error:(id *)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  connect = self->super.clpc.connect;
  input = a3;
  v6 = IOConnectCallMethod(connect, 9u, &input, 1u, 0, 0, 0, 0, 0, 0);
  v7 = v6;
  if (a4 && v6)
  {
    v12 = *MEMORY[0x277CCA068];
    v13[0] = @"Failed to set trial ID.";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CLPCErrorDomain" code:v7 userInfo:v8];
  }

  result = v7 == 0;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (id).cxx_construct
{
  *(self + 5) = 0x10000000FLL;
  *(self + 6) = 36;
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 18) = 0;
  return self;
}

@end