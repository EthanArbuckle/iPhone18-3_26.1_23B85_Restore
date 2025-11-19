@interface HVBudget
- (HVBudget)init;
- (_DWORD)sourcesFilteredByBudgetAndRegistrationsFromAvailableSources:(int)a3 levelOfService:;
- (void)registerLevelOfService:(int)a3 oneDataSource:;
@end

@implementation HVBudget

- (HVBudget)init
{
  v3.receiver = self;
  v3.super_class = HVBudget;
  result = [(HVBudget *)&v3 init];
  if (result)
  {
    result->_ignoreDiscretionaryPowerBudget = 0;
    *&result->_alwaysAllowSourcesOverride = 0;
    result->_noServiceSources = -1;
    *&result->_budgetedSources = 0;
    *&result->_periodicBackgroundSources = 0;
    result->_extraBudgetSources = 3;
  }

  return result;
}

- (_DWORD)sourcesFilteredByBudgetAndRegistrationsFromAvailableSources:(int)a3 levelOfService:
{
  if (result)
  {
    v4 = result;
    v5 = result[2] | result[8];
    v6 = v5 & a2;
    v7 = v5 & a2 ^ a2;
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v8 = result[6] | result[7];
      }

      else
      {
        if (a3 != 3)
        {
LABEL_14:
          if (v7)
          {
            if (v4[10])
            {
              goto LABEL_18;
            }

            v11 = +[HVPowerBudget defaultBudget];
            v12 = [v11 canDoDiscretionaryWork];

            if (v12 == 1)
            {
              v6 |= v4[9] & a2 & v7;
              return (v6 & ~(v4[3] | v4[4]));
            }

            if (v12 == 2)
            {
LABEL_18:
              v6 = (v7 | v5) & a2;
            }
          }

          return (v6 & ~(v4[3] | v4[4]));
        }

        v8 = result[7];
      }
    }

    else
    {
      if (a3)
      {
        if (a3 != 1)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v9 = [MEMORY[0x277CCA890] currentHandler];
        [v9 handleFailureInMethod:sel_sourcesFilteredByBudgetAndRegistrationsFromAvailableSources_levelOfService_ object:v4 file:@"HVBudget.m" lineNumber:137 description:@"It does not make sense to request sources that are not registered"];
      }

      v10 = HVIsConnectedToPower();
      v8 = v4[6] | v4[7];
      if (v10)
      {
        v8 |= v4[5];
      }
    }

    v7 &= v8;
    goto LABEL_14;
  }

  return result;
}

- (void)registerLevelOfService:(int)a3 oneDataSource:
{
  v16 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = a1[1].i32[1];
    v5 = (a1 + 24);
    v6 = a1[1].i64[1];
    v7 = HIDWORD(a1[1].i64[1]);
    if ((v6 & a3) != 0)
    {
      v8 = 2;
    }

    else
    {
      v8 = (v4 & a3) != 0;
    }

    v9 = a1[2].i32[0];
    if ((v7 & a3) != 0)
    {
      v8 = 3;
    }

    if ((v9 & a3) != 0)
    {
      v8 = 4;
    }

    if (v8 < a2)
    {
      a1[1] = vandq_s8(a1[1], vdupq_n_s32(~a3));
      if (a2 > 2)
      {
        if (a2 == 3)
        {
          v5 = (a1 + 28);
          v6 = v7;
        }

        else
        {
          if (a2 != 4)
          {
LABEL_20:
            v10 = hv_default_log_handle();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              v11 = [(HVBudget *)a1 sourcesFilteredByBudgetAndRegistrationsFromAvailableSources:1 levelOfService:?];
              v12 = HVDataSourceDescription(v11);
              v14 = 138412290;
              v15 = v12;
              _os_log_impl(&dword_2321EC000, v10, OS_LOG_TYPE_DEFAULT, "HVBudget: Sources With Budget And Consumers Available: %@", &v14, 0xCu);
            }

            goto LABEL_23;
          }

          v6 = v9;
          v5 = a1 + 2;
        }
      }

      else if (a2 == 1)
      {
        v6 = v4;
        v5 = (a1 + 20);
      }

      else if (a2 != 2)
      {
        goto LABEL_20;
      }

      v5->i32[0] = v6 | a3;
      goto LABEL_20;
    }
  }

LABEL_23:
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __82__HVBudget_performWorkForOneDataSource_levelOfService_requireRegistrations_block___block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if ((*(a1 + 48) & *(v3 + 32)) != 0)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 52);
  }

  return (*(v2 + 16))(v2, v4);
}

@end