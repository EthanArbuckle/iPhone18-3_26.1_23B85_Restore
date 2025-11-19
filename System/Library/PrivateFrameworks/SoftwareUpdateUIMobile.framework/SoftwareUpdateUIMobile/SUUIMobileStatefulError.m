@interface SUUIMobileStatefulError
- (BOOL)connectionInvalid;
- (BOOL)installationInProgress;
- (BOOL)installationInvalidState;
- (BOOL)installationRequiresKeybagOrPasswordUnlock;
- (BOOL)insufficientDiskSpace;
- (BOOL)isDelayingUpdate;
- (BOOL)isNonBlockingErrorForStatefulDescriptor:(id)a3 download:(id)a4;
- (BOOL)networkUnavailable;
- (BOOL)noUpdateFound;
- (BOOL)shouldEnableUpdateButtonForNetworkError:(id)a3 download:(id)a4;
- (BOOL)shouldEnableUpdateOptionsWithStatefulDescriptor:(id)a3 download:(id)a4;
- (id)bodyForNetworkError:(id)a3;
- (id)bodyForUnmetConstraints:(id)a3;
- (id)bodyTokenWithStatefulDescriptor:(id)a3 download:(id)a4;
- (id)headingForUnmetConstraints:(id)a3;
- (id)headingTokenWithStatefulDescriptor:(id)a3 download:(id)a4;
@end

@implementation SUUIMobileStatefulError

- (BOOL)isNonBlockingErrorForStatefulDescriptor:(id)a3 download:(id)a4
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v19 = [(SUUIMobileStatefulError *)v22 code];
  v10 = [(SUUIMobileStatefulError *)v22 domain];
  v11 = [v10 isEqualToString:*MEMORY[0x277D64910]];
  MEMORY[0x277D82BD8](v10);
  if (v11)
  {
    if (v19 == 3 || v19 == 11 || v19 == 13)
    {
      v23 = 1;
      v18 = 1;
      goto LABEL_40;
    }

    v16 = 0;
    v8 = 1;
    if (location[0])
    {
      v17 = [location[0] descriptor];
      v16 = 1;
      v8 = v17 == 0;
    }

    if (v16)
    {
      MEMORY[0x277D82BD8](v17);
    }

    if (v8)
    {
      v23 = 0;
      v18 = 1;
      goto LABEL_40;
    }

    v14 = 0;
    v7 = 1;
    if (v20)
    {
      v15 = [v20 progress];
      v14 = 1;
      v7 = 1;
      if (v15)
      {
        v7 = [location[0] currentState] != 2;
      }
    }

    if (v14)
    {
      MEMORY[0x277D82BD8](v15);
    }

    if (v7)
    {
      v23 = 0;
      v18 = 1;
      goto LABEL_40;
    }

    v13 = [v20 progress];
    if ([v13 phase] == 2)
    {
      [v13 percentComplete];
      if (v4 >= 1.0)
      {
        switch(v19)
        {
          case 33:
          case 34:
          case 8:
          case 31:
          case 9:
          case 83:
          case 26:
            v23 = 1;
            v18 = 1;
LABEL_39:
            objc_storeStrong(&v13, 0);
            goto LABEL_40;
          case 6:
            v23 = 1;
            v18 = 1;
            goto LABEL_39;
          case 20:
            v6 = [(SUUIMobileStatefulError *)v22 userInfo];
            v12 = [v6 objectForKey:*MEMORY[0x277D64A18]];
            MEMORY[0x277D82BD8](v6);
            if (v12 && [v12 unsignedIntegerValue] == 4)
            {
              v23 = 1;
              v18 = 1;
            }

            else
            {
              v18 = 0;
            }

            objc_storeStrong(&v12, 0);
            if (v18)
            {
              goto LABEL_39;
            }

            break;
        }
      }
    }

    v23 = 0;
    v18 = 1;
    goto LABEL_39;
  }

  v23 = 1;
  v18 = 1;
LABEL_40:
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
  return v23 & 1;
}

- (id)headingTokenWithStatefulDescriptor:(id)a3 download:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  if (-[SUUIMobileStatefulError isNonBlockingErrorForStatefulDescriptor:download:](v20, "isNonBlockingErrorForStatefulDescriptor:download:", location[0], v18) || (v11 = -[SUUIMobileStatefulError domain](v20, "domain"), v12 = [v11 isEqualToString:*MEMORY[0x277D64910]], MEMORY[0x277D82BD8](v11), (v12 & 1) == 0))
  {
    v21 = [MEMORY[0x277D64BA8] headingTokenWithType:0];
    v17 = 1;
    goto LABEL_25;
  }

  v10 = [(SUUIMobileStatefulError *)v20 code];
  if (v10 == 6)
  {
    v21 = [MEMORY[0x277D64BA8] headingTokenWithType:4];
    v17 = 1;
    goto LABEL_25;
  }

  if ((v10 - 7) <= 2)
  {
    goto LABEL_18;
  }

  if (v10 == 17 || v10 == 19)
  {
    goto LABEL_20;
  }

  if (v10 == 20)
  {
    v21 = [(SUUIMobileStatefulError *)v20 headingForUnmetConstraints:location[0]];
    v17 = 1;
    goto LABEL_25;
  }

  if (v10 == 26 || v10 == 31 || (v10 - 33) <= 1 || v10 == 57 || v10 == 83)
  {
LABEL_18:
    v21 = [MEMORY[0x277D64BA8] headingTokenWithType:2];
    v17 = 1;
    goto LABEL_25;
  }

  if (v10 == 104)
  {
    v21 = [MEMORY[0x277D64BA8] headingTokenWithType:1];
    v17 = 1;
    goto LABEL_25;
  }

  if (v10 == 106)
  {
LABEL_20:
    v21 = [MEMORY[0x277D64BA8] headingTokenWithType:3];
    v17 = 1;
    goto LABEL_25;
  }

  v9 = [MEMORY[0x277D64B58] statefulUILogger];
  v16 = [v9 oslog];
  MEMORY[0x277D82BD8](v9);
  v15 = 16;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    log = v16;
    type = v15;
    v8 = [location[0] updateName];
    v14 = MEMORY[0x277D82BE0](v8);
    __os_log_helper_16_2_2_8_66_8_66(v22, v14, v20);
    _os_log_error_impl(&dword_26B0B9000, log, type, "Couldn't map the error into a localizable title for %{public}@: %{public}@", v22, 0x16u);
    MEMORY[0x277D82BD8](v8);
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(&v16, 0);
  v21 = [MEMORY[0x277D64BA8] headingTokenWithType:1];
  v17 = 1;
LABEL_25:
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v4 = v21;

  return v4;
}

- (id)bodyTokenWithStatefulDescriptor:(id)a3 download:(id)a4
{
  v39[1] = *MEMORY[0x277D85DE8];
  v33 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v31 = 0;
  objc_storeStrong(&v31, a4);
  if (-[SUUIMobileStatefulError isNonBlockingErrorForStatefulDescriptor:download:](v33, "isNonBlockingErrorForStatefulDescriptor:download:", location[0], v31) || (v19 = -[SUUIMobileStatefulError domain](v33, "domain"), v20 = [v19 isEqualToString:*MEMORY[0x277D64910]], MEMORY[0x277D82BD8](v19), (v20 & 1) == 0))
  {
    v34 = [MEMORY[0x277D64BA8] bodyTokenWithType:0];
    v30 = 1;
  }

  else
  {
    switch([(SUUIMobileStatefulError *)v33 code])
    {
      case 6:
        v27 = [location[0] descriptor];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          _suui_precondition_failure_with_format();
        }

        v26 = MEMORY[0x277D82BE0](v27);
        objc_storeStrong(&v27, 0);
        v28 = v26;
        v15 = MEMORY[0x277CCA8E8];
        v14 = MEMORY[0x277D64908];
        v16 = [v26 underlyingDescriptor];
        v25 = [v15 stringFromByteCount:objc_msgSend(v14 countStyle:{"totalDiskSpaceForUpdate:"), 2}];
        MEMORY[0x277D82BD8](v16);
        v17 = MEMORY[0x277D64BA8];
        v38 = *MEMORY[0x277D64C48];
        v39[0] = v25;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
        v34 = [v17 bodyTokenWithType:9 parameters:?];
        MEMORY[0x277D82BD8](v18);
        v30 = 1;
        objc_storeStrong(&v25, 0);
        objc_storeStrong(&v28, 0);
        break;
      case 7:
      case 26:
      case 57:
        v34 = [MEMORY[0x277D64BA8] bodyTokenWithType:1];
        v30 = 1;
        break;
      case 8:
        goto LABEL_10;
      case 9:
        if ([location[0] currentState] == 3)
        {
          v34 = [MEMORY[0x277D64BA8] bodyTokenWithType:4];
        }

        else
        {
          v34 = [MEMORY[0x277D64BA8] bodyTokenWithType:7];
        }

        v30 = 1;
        break;
      case 17:
        v34 = [MEMORY[0x277D64BA8] bodyTokenWithType:10];
        v30 = 1;
        break;
      case 19:
        v12 = MEMORY[0x277D64BA8];
        v36 = *MEMORY[0x277D64C38];
        v13 = [location[0] updateName];
        if (v13)
        {
          v11 = v13;
        }

        else
        {
          v11 = &stru_287BB02F0;
        }

        v37 = v11;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        v34 = [v12 bodyTokenWithType:11 parameters:?];
        MEMORY[0x277D82BD8](v10);
        MEMORY[0x277D82BD8](v13);
        v30 = 1;
        break;
      case 20:
        v34 = [(SUUIMobileStatefulError *)v33 bodyForUnmetConstraints:location[0]];
        v30 = 1;
        break;
      case 31:
        v34 = [MEMORY[0x277D64BA8] bodyTokenWithType:4];
        v30 = 1;
        break;
      case 33:
      case 34:
        v29 = [(SUUIMobileStatefulError *)v33 bodyForNetworkError:location[0]];
        if (v29)
        {
          v34 = MEMORY[0x277D82BE0](v29);
          v30 = 1;
        }

        else
        {
          v30 = 0;
        }

        objc_storeStrong(&v29, 0);
        if (!v30)
        {
LABEL_10:
          if ([location[0] currentState] == 3)
          {
            v34 = [MEMORY[0x277D64BA8] bodyTokenWithType:2];
          }

          else
          {
            v34 = [MEMORY[0x277D64BA8] bodyTokenWithType:3];
          }

          v30 = 1;
        }

        break;
      case 83:
        if ([location[0] currentState] == 3)
        {
          v34 = [MEMORY[0x277D64BA8] bodyTokenWithType:4];
        }

        else
        {
          v34 = [MEMORY[0x277D64BA8] bodyTokenWithType:8];
        }

        v30 = 1;
        break;
      case 104:
        v34 = [MEMORY[0x277D64BA8] bodyTokenWithType:30];
        v30 = 1;
        break;
      case 106:
        v34 = [MEMORY[0x277D64BA8] bodyTokenWithType:5];
        v30 = 1;
        break;
      default:
        v9 = [MEMORY[0x277D64B58] statefulUILogger];
        v24 = [v9 oslog];
        MEMORY[0x277D82BD8](v9);
        v23 = 16;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          log = v24;
          type = v23;
          v8 = [location[0] updateName];
          v22 = MEMORY[0x277D82BE0](v8);
          __os_log_helper_16_2_2_8_66_8_66(v35, v22, v33);
          _os_log_error_impl(&dword_26B0B9000, log, type, "Couldn't map the error into a localizable title for %{public}@: %{public}@", v35, 0x16u);
          MEMORY[0x277D82BD8](v8);
          objc_storeStrong(&v22, 0);
        }

        objc_storeStrong(&v24, 0);
        v34 = [MEMORY[0x277D64BA8] bodyTokenWithType:0];
        v30 = 1;
        break;
    }
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v4 = v34;

  return v4;
}

- (BOOL)shouldEnableUpdateOptionsWithStatefulDescriptor:(id)a3 download:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  if ([(SUUIMobileStatefulError *)v18 isNonBlockingErrorForStatefulDescriptor:location[0] download:v16])
  {
    v19 = 1;
    v15 = 1;
  }

  else
  {
    v9 = [(SUUIMobileStatefulError *)v18 domain];
    v10 = [v9 isEqualToString:*MEMORY[0x277D64910]];
    MEMORY[0x277D82BD8](v9);
    if (v10)
    {
      if (([(SUUIMobileStatefulError *)v18 code]- 33) > 1)
      {
        v19 = 0;
      }

      else
      {
        v19 = [(SUUIMobileStatefulError *)v18 shouldEnableUpdateButtonForNetworkError:location[0] download:v16];
      }

      v15 = 1;
    }

    else
    {
      v8 = [MEMORY[0x277D64B58] statefulUILogger];
      v14 = [v8 oslog];
      MEMORY[0x277D82BD8](v8);
      v13 = 16;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        log = v14;
        type = v13;
        v7 = [location[0] updateName];
        v12 = MEMORY[0x277D82BE0](v7);
        __os_log_helper_16_2_2_8_66_8_66(v20, v12, v18);
        _os_log_error_impl(&dword_26B0B9000, log, type, "Receieved an unexpected non-SUS error for descriptor %{public}@. Not ignoring. Error: %{public}@", v20, 0x16u);
        MEMORY[0x277D82BD8](v7);
        objc_storeStrong(&v12, 0);
      }

      objc_storeStrong(&v14, 0);
      v19 = 0;
      v15 = 1;
    }
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v19 & 1;
}

- (BOOL)isDelayingUpdate
{
  v3 = [(SUUIMobileStatefulError *)self domain];
  v4 = 0;
  if ([v3 isEqualToString:*MEMORY[0x277D64910]])
  {
    v4 = [(SUUIMobileStatefulError *)self code]== 55;
  }

  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (BOOL)noUpdateFound
{
  v3 = [(SUUIMobileStatefulError *)self domain];
  v4 = 0;
  if ([v3 isEqualToString:*MEMORY[0x277D64910]])
  {
    v4 = [(SUUIMobileStatefulError *)self code]== 3;
  }

  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (BOOL)networkUnavailable
{
  v4 = [(SUUIMobileStatefulError *)self domain];
  v5 = 0;
  if ([v4 isEqualToString:*MEMORY[0x277D64910]])
  {
    v3 = 1;
    if ([(SUUIMobileStatefulError *)self code]!= 26)
    {
      v3 = [(SUUIMobileStatefulError *)self code]== 7;
    }

    v5 = v3;
  }

  MEMORY[0x277D82BD8](v4);
  return v5;
}

- (BOOL)connectionInvalid
{
  v3 = [(SUUIMobileStatefulError *)self domain];
  v4 = 0;
  if ([v3 isEqualToString:*MEMORY[0x277CCA050]])
  {
    v4 = [(SUUIMobileStatefulError *)self code]== 4099;
  }

  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (BOOL)insufficientDiskSpace
{
  v3 = [(SUUIMobileStatefulError *)self domain];
  v4 = 0;
  if ([v3 isEqualToString:*MEMORY[0x277D64910]])
  {
    v4 = [(SUUIMobileStatefulError *)self code]== 6;
  }

  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (BOOL)installationInProgress
{
  v6 = [(SUUIMobileStatefulError *)self domain];
  v7 = [v6 isEqualToString:*MEMORY[0x277D64C28]];
  MEMORY[0x277D82BD8](v6);
  if (v7)
  {
    return [(SUUIMobileStatefulError *)self code]== 4;
  }

  v4 = [(SUUIMobileStatefulError *)self domain];
  v5 = 0;
  if ([v4 isEqualToString:*MEMORY[0x277D64910]])
  {
    v3 = 1;
    if ([(SUUIMobileStatefulError *)self code]!= 14)
    {
      v3 = [(SUUIMobileStatefulError *)self code]== 42;
    }

    v5 = v3;
  }

  MEMORY[0x277D82BD8](v4);
  return v5;
}

- (BOOL)installationInvalidState
{
  v4 = [(SUUIMobileStatefulError *)self domain];
  v5 = 0;
  if ([v4 isEqualToString:*MEMORY[0x277D64910]])
  {
    v3 = 1;
    if ([(SUUIMobileStatefulError *)self code]!= 11)
    {
      v3 = 1;
      if ([(SUUIMobileStatefulError *)self code]!= 3)
      {
        v3 = [(SUUIMobileStatefulError *)self code]== 18;
      }
    }

    v5 = v3;
  }

  MEMORY[0x277D82BD8](v4);
  return v5;
}

- (BOOL)installationRequiresKeybagOrPasswordUnlock
{
  v7 = [(SUUIMobileStatefulError *)self domain];
  v8 = [v7 isEqualToString:*MEMORY[0x277D64910]];
  MEMORY[0x277D82BD8](v7);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  if ([(SUUIMobileStatefulError *)self code]!= 20)
  {
    return 0;
  }

  v4 = [(SUUIMobileStatefulError *)self userInfo];
  v3 = [v4 objectForKey:*MEMORY[0x277D64A18]];
  v5 = [v3 unsignedIntegerValue];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  v6 = 1;
  if (v5 != 16)
  {
    v6 = 1;
    if (v5 != 32)
    {
      return v5 == 48;
    }
  }

  return v6;
}

- (BOOL)shouldEnableUpdateButtonForNetworkError:(id)a3 download:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v33 = 0;
  objc_storeStrong(&v33, a4);
  if ([location[0] currentState] == 3)
  {
    v31 = 0;
    v15 = objc_alloc(MEMORY[0x277CC37B0]);
    v16 = dispatch_get_global_queue(33, 0);
    v30 = [v15 initWithQueue:?];
    MEMORY[0x277D82BD8](v16);
    v29 = 0;
    v27 = 0;
    v17 = [v30 getPreferredDataSubscriptionContextSync:&v27];
    objc_storeStrong(&v29, v27);
    v28 = v17;
    if (v17)
    {
      v23 = 0;
      v22 = 0;
      v10 = [v30 copyRegistrationStatus:v28 error:&v22];
      objc_storeStrong(&v23, v22);
      v4 = v31;
      v31 = v10;
      MEMORY[0x277D82BD8](v4);
      if (!v31)
      {
        v9 = [MEMORY[0x277D64B58] statefulUILogger];
        v21 = [v9 oslog];
        MEMORY[0x277D82BD8](v9);
        v20 = 16;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v6 = v21;
          v7 = v20;
          v8 = [v23 description];
          v19 = MEMORY[0x277D82BE0](v8);
          __os_log_helper_16_2_1_8_64(v36, v19);
          _os_log_error_impl(&dword_26B0B9000, v6, v7, "Failed to copyRegistrationStatus from CoreTelephony. %@", v36, 0xCu);
          MEMORY[0x277D82BD8](v8);
          objc_storeStrong(&v19, 0);
        }

        objc_storeStrong(&v21, 0);
      }

      objc_storeStrong(&v23, 0);
    }

    else
    {
      v14 = [MEMORY[0x277D64B58] statefulUILogger];
      v26 = [v14 oslog];
      MEMORY[0x277D82BD8](v14);
      v25 = 16;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        log = v26;
        type = v25;
        v13 = [v29 description];
        v24 = MEMORY[0x277D82BE0](v13);
        __os_log_helper_16_2_1_8_64(v37, v24);
        _os_log_error_impl(&dword_26B0B9000, log, type, "Failed to get preferred CTXPCServiceSubscriptionContext. %@", v37, 0xCu);
        MEMORY[0x277D82BD8](v13);
        objc_storeStrong(&v24, 0);
      }

      objc_storeStrong(&v26, 0);
    }

    if ([v31 isEqualToString:*MEMORY[0x277CC3E70]] & 1) != 0 && (PSIsDataRoamingEnabled())
    {
      v35 = 1;
      v32 = 1;
    }

    else
    {
      v35 = 0;
      v32 = 1;
    }

    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v31, 0);
  }

  else
  {
    v35 = 0;
    v32 = 1;
  }

  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v35 & 1;
}

- (id)headingForUnmetConstraints:(id)a3
{
  v29[1] = *MEMORY[0x277D85DE8];
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = [(SUUIMobileStatefulError *)v26 userInfo];
  v14 = [v15 objectForKey:*MEMORY[0x277D64A18]];
  v16 = [v14 unsignedIntegerValue];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  v24 = v16;
  if ((v16 & 4) != 0)
  {
    v27 = [MEMORY[0x277D64BA8] headingTokenWithType:4];
    v23 = 1;
  }

  else if (v24)
  {
    v21 = [location[0] descriptor];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = MEMORY[0x277D82BE0](v21);
    }

    else
    {
      v3 = MEMORY[0x277D82BE0](0);
    }

    v20 = v3;
    objc_storeStrong(&v21, 0);
    v22 = v20;
    v8 = [v20 underlyingDescriptor];
    SURequiredBatteryLevelForInstallation();
    v9 = v4;
    MEMORY[0x277D82BD8](v8);
    v19 = v9;
    v5 = floorf(100.0 * v9) / 100.0;
    *&v5 = v5;
    v18 = LODWORD(v5);
    v10 = MEMORY[0x277CCABB8];
    v11 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
    v17 = [v10 localizedStringFromNumber:? numberStyle:?];
    MEMORY[0x277D82BD8](v11);
    v12 = MEMORY[0x277D64BA8];
    v28 = *MEMORY[0x277D64C40];
    v29[0] = v17;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v27 = [v12 headingTokenWithType:5 parameters:?];
    MEMORY[0x277D82BD8](v13);
    v23 = 1;
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v22, 0);
  }

  else
  {
    v27 = [MEMORY[0x277D64BA8] headingTokenWithType:3];
    v23 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v6 = v27;

  return v6;
}

- (id)bodyForUnmetConstraints:(id)a3
{
  v62[2] = *MEMORY[0x277D85DE8];
  v47 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v44 = [location[0] descriptor];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = MEMORY[0x277D82BE0](v44);
  }

  else
  {
    v3 = MEMORY[0x277D82BE0](0);
  }

  v43 = v3;
  objc_storeStrong(&v44, 0);
  v45 = v43;
  v26 = [v43 underlyingDescriptor];
  SURequiredBatteryLevelForInstallation();
  v27 = v4;
  MEMORY[0x277D82BD8](v26);
  v5 = 100.0 * v27;
  v6 = floorf(v5) / 100.0;
  v42 = v6;
  v28 = MEMORY[0x277CCA8E8];
  v29 = [location[0] descriptor];
  v41 = [v28 stringFromByteCount:objc_msgSend(v29 countStyle:{"installationSize"), 2}];
  MEMORY[0x277D82BD8](v29);
  v31 = [(SUUIMobileStatefulError *)v47 userInfo];
  v30 = [v31 objectForKey:*MEMORY[0x277D64A18]];
  v32 = [v30 unsignedIntegerValue];
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v31);
  v40 = v32;
  if ((v32 & 8) != 0)
  {
    v48 = [MEMORY[0x277D64BA8] bodyTokenWithType:12];
    v39 = 1;
  }

  else
  {
    v38 = 7;
    v37 = 3;
    v36 = 5;
    v35 = 6;
    v24 = MEMORY[0x277CCABB8];
    *&v7 = v42;
    v25 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
    v34 = [v24 localizedStringFromNumber:? numberStyle:?];
    MEMORY[0x277D82BD8](v25);
    v33 = connectedToCharger();
    if ((v40 & 7) == 7)
    {
      v22 = MEMORY[0x277D64BA8];
      v61[0] = *MEMORY[0x277D64C40];
      v62[0] = v34;
      v61[1] = *MEMORY[0x277D64C48];
      v62[1] = v41;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:2];
      v48 = [v22 bodyTokenWithType:13 parameters:?];
      MEMORY[0x277D82BD8](v23);
      v39 = 1;
    }

    else if ((v40 & v35) == v35)
    {
      v20 = MEMORY[0x277D64BA8];
      v59 = *MEMORY[0x277D64C48];
      v60 = v41;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
      v48 = [v20 bodyTokenWithType:14 parameters:?];
      MEMORY[0x277D82BD8](v21);
      v39 = 1;
    }

    else if ((v40 & v37) == v37)
    {
      v18 = MEMORY[0x277D64BA8];
      v57 = *MEMORY[0x277D64C40];
      v58 = v34;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      v48 = [v18 bodyTokenWithType:15 parameters:?];
      MEMORY[0x277D82BD8](v19);
      v39 = 1;
    }

    else if ((v40 & v36) == v36)
    {
      v16 = MEMORY[0x277D64BA8];
      v55[0] = *MEMORY[0x277D64C40];
      v56[0] = v34;
      v55[1] = *MEMORY[0x277D64C48];
      v56[1] = v41;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];
      v48 = [v16 bodyTokenWithType:16 parameters:?];
      MEMORY[0x277D82BD8](v17);
      v39 = 1;
    }

    else if (v40 & 1) == 0 || (v33)
    {
      if (v40 & 1) != 0 && (v33)
      {
        v12 = MEMORY[0x277D64BA8];
        v51 = *MEMORY[0x277D64C40];
        v52 = v34;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
        v48 = [v12 bodyTokenWithType:18 parameters:?];
        MEMORY[0x277D82BD8](v13);
        v39 = 1;
      }

      else if ((v40 & 4) != 0)
      {
        v10 = MEMORY[0x277D64BA8];
        v49 = *MEMORY[0x277D64C48];
        v50 = v41;
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
        v48 = [v10 bodyTokenWithType:9 parameters:?];
        MEMORY[0x277D82BD8](v11);
        v39 = 1;
      }

      else if ((v40 & 2) != 0)
      {
        v48 = [MEMORY[0x277D64BA8] bodyTokenWithType:20];
        v39 = 1;
      }

      else if ((v40 & 0x80) != 0)
      {
        v48 = [MEMORY[0x277D64BA8] bodyTokenWithType:21];
        v39 = 1;
      }

      else if ((v40 & 0x100) != 0)
      {
        v48 = [MEMORY[0x277D64BA8] bodyTokenWithType:22];
        v39 = 1;
      }

      else if ((v40 & 0x40) != 0)
      {
        v48 = [MEMORY[0x277D64BA8] bodyTokenWithType:23];
        v39 = 1;
      }

      else if ((v40 & 0x200) != 0)
      {
        v48 = [MEMORY[0x277D64BA8] bodyTokenWithType:24];
        v39 = 1;
      }

      else if ((v40 & 0x400) != 0)
      {
        v48 = [MEMORY[0x277D64BA8] bodyTokenWithType:25];
        v39 = 1;
      }

      else if ((v40 & 0x800) != 0)
      {
        v48 = [MEMORY[0x277D64BA8] bodyTokenWithType:26];
        v39 = 1;
      }

      else
      {
        if ((v40 & 0x1000) != 0)
        {
          v48 = [MEMORY[0x277D64BA8] bodyTokenWithType:27];
        }

        else
        {
          v48 = 0;
        }

        v39 = 1;
      }
    }

    else
    {
      v14 = MEMORY[0x277D64BA8];
      v53 = *MEMORY[0x277D64C40];
      v54 = v34;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
      v48 = [v14 bodyTokenWithType:17 parameters:?];
      MEMORY[0x277D82BD8](v15);
      v39 = 1;
    }

    objc_storeStrong(&v34, 0);
  }

  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v8 = v48;

  return v8;
}

- (id)bodyForNetworkError:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v34 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v32 = [(SUUIMobileStatefulError *)v34 code];
  if ([location[0] currentState] == 3)
  {
    v30 = 0;
    v15 = objc_alloc(MEMORY[0x277CC37B0]);
    v16 = dispatch_get_global_queue(33, 0);
    v29 = [v15 initWithQueue:?];
    MEMORY[0x277D82BD8](v16);
    v28 = 0;
    v26 = 0;
    v17 = [v29 getPreferredDataSubscriptionContextSync:&v26];
    objc_storeStrong(&v28, v26);
    v27 = v17;
    if (v17)
    {
      v22 = 0;
      v21 = 0;
      v10 = [v29 copyRegistrationStatus:v27 error:&v21];
      objc_storeStrong(&v22, v21);
      v3 = v30;
      v30 = v10;
      MEMORY[0x277D82BD8](v3);
      if (!v30)
      {
        v9 = [MEMORY[0x277D64B58] statefulUILogger];
        oslog = [v9 oslog];
        MEMORY[0x277D82BD8](v9);
        v19 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          v6 = oslog;
          v7 = v19;
          v8 = [v22 description];
          v18 = MEMORY[0x277D82BE0](v8);
          __os_log_helper_16_2_1_8_66(v36, v18);
          _os_log_error_impl(&dword_26B0B9000, v6, v7, "Failed to copyRegistrationStatus from CoreTelephony. Error: %{public}@", v36, 0xCu);
          MEMORY[0x277D82BD8](v8);
          objc_storeStrong(&v18, 0);
        }

        objc_storeStrong(&oslog, 0);
      }

      objc_storeStrong(&v22, 0);
    }

    else
    {
      v14 = [MEMORY[0x277D64B58] statefulUILogger];
      v25 = [v14 oslog];
      MEMORY[0x277D82BD8](v14);
      v24 = 16;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        log = v25;
        type = v24;
        v13 = [v28 description];
        v23 = MEMORY[0x277D82BE0](v13);
        __os_log_helper_16_2_1_8_66(v37, v23);
        _os_log_error_impl(&dword_26B0B9000, log, type, "Failed to get preferred CTXPCServiceSubscriptionContext. error: %{public}@", v37, 0xCu);
        MEMORY[0x277D82BD8](v13);
        objc_storeStrong(&v23, 0);
      }

      objc_storeStrong(&v25, 0);
    }

    if ([v30 isEqualToString:*MEMORY[0x277CC3E70]])
    {
      if (PSIsDataRoamingEnabled())
      {
        v35 = [MEMORY[0x277D64BA8] bodyTokenWithType:28];
      }

      else
      {
        v35 = [MEMORY[0x277D64BA8] bodyTokenWithType:29];
      }

      v31 = 1;
    }

    else
    {
      if (v32 == 33)
      {
        v35 = [MEMORY[0x277D64BA8] bodyTokenWithType:1];
      }

      else
      {
        v35 = 0;
      }

      v31 = 1;
    }

    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v30, 0);
  }

  else
  {
    v35 = 0;
    v31 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v4 = v35;

  return v4;
}

@end