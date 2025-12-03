@interface SAAudioAccessory
- (SAAudioAccessory)initWithQueue:(id)queue;
- (int64_t)convertToSAInEarStatus:(int)status;
- (int64_t)getPrimaryBudSide;
- (void)attachBTSession;
- (void)getInEarStatus:(int64_t *)status secondary:(int64_t *)secondary;
- (void)refreshBTDevice;
- (void)reset;
- (void)setBTAddress:(id)address;
@end

@implementation SAAudioAccessory

- (SAAudioAccessory)initWithQueue:(id)queue
{
  queueCopy = queue;
  v8.receiver = self;
  v8.super_class = SAAudioAccessory;
  v5 = [(SAAudioAccessory *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SAAudioAccessory *)v5 setQueue:queueCopy];
    [(SAAudioAccessory *)v6 setFBTAddress:&stru_287709218];
    [(SAAudioAccessory *)v6 attachBTSession];
  }

  return v6;
}

- (void)attachBTSession
{
  v9 = *MEMORY[0x277D85DE8];
  queue = [(SAAudioAccessory *)self queue];
  v3 = BTSessionAttachWithQueue();

  if (v3)
  {
    v4 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      v6[0] = 68289026;
      v6[1] = 0;
      v7 = 2082;
      v8 = "";
      _os_log_impl(&dword_2656EA000, v4, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SAAudioAccessory failed to register BT session callback}", v6, 0x12u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)setBTAddress:(id)address
{
  v15 = *MEMORY[0x277D85DE8];
  if (address)
  {
    [(SAAudioAccessory *)self setFBTAddress:?];
    v4 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      fBTAddress = [(SAAudioAccessory *)self fBTAddress];
      v9 = 68289283;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2113;
      v14 = fBTAddress;
      _os_log_impl(&dword_2656EA000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:SAAudioAccessory set BT address of the current device, address:%{private}@}", &v9, 0x1Cu);
    }

    [(SAAudioAccessory *)self refreshBTDevice];
  }

  else
  {
    [(SAAudioAccessory *)self setFBTAddress:&stru_287709218];
    v7 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      v9 = 68289026;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      _os_log_impl(&dword_2656EA000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SAAudioAccessory received unknown BT address}", &v9, 0x12u);
    }

    [(SAAudioAccessory *)self setFBTDevice:0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)refreshBTDevice
{
  v22 = *MEMORY[0x277D85DE8];
  if (![(SAAudioAccessory *)self fBTSession])
  {
    v11 = TASALog;
    if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 68289026;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v12 = "{msg%{public}.0s:SAAudioAccessory refresh device failed - invalid BT session}";
    goto LABEL_8;
  }

  fBTAddress = [(SAAudioAccessory *)self fBTAddress];
  v4 = [fBTAddress length];

  if (v4 == 17)
  {
    fBTAddress2 = [(SAAudioAccessory *)self fBTAddress];
    [fBTAddress2 UTF8String];
    v6 = BTDeviceAddressFromString();

    if (v6)
    {
      v7 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
      {
        v8 = v7;
        fBTAddress3 = [(SAAudioAccessory *)self fBTAddress];
        *buf = 68289283;
        v17 = 0;
        v18 = 2082;
        v19 = "";
        v20 = 2113;
        v21 = fBTAddress3;
        v10 = "{msg%{public}.0s:SAAudioAccessory refresh device failed - failed to convert address into a valid BT address, address:%{private}@}";
LABEL_11:
        _os_log_impl(&dword_2656EA000, v8, OS_LOG_TYPE_ERROR, v10, buf, 0x1Cu);

        goto LABEL_12;
      }

      goto LABEL_12;
    }

    [(SAAudioAccessory *)self fBTSession];
    if (BTDeviceFromAddress())
    {
      [(SAAudioAccessory *)self reset];
      v15 = TASALog;
      if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      v8 = v15;
      fBTAddress3 = [(SAAudioAccessory *)self fBTAddress];
      *buf = 68289283;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2113;
      v21 = fBTAddress3;
      v10 = "{msg%{public}.0s:SAAudioAccessory refresh device failed - Failed to get the device handle with BT address, address:%{private}@}";
      goto LABEL_11;
    }

    [(SAAudioAccessory *)self fBTDevice];
    if (!BTDeviceGetDeviceId())
    {
      goto LABEL_12;
    }

    [(SAAudioAccessory *)self setFProductID:0];
    v11 = TASALog;
    if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 68289026;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v12 = "{msg%{public}.0s:SAAudioAccessory refresh device failed - Failed to get the product ID}";
LABEL_8:
    _os_log_impl(&dword_2656EA000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0x12u);
    goto LABEL_12;
  }

  v13 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
  {
    v8 = v13;
    fBTAddress3 = [(SAAudioAccessory *)self fBTAddress];
    *buf = 68289283;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2113;
    v21 = fBTAddress3;
    v10 = "{msg%{public}.0s:SAAudioAccessory refresh device failed - invalid BT address, address:%{private}@}";
    goto LABEL_11;
  }

LABEL_12:
  v14 = *MEMORY[0x277D85DE8];
}

- (void)reset
{
  [(SAAudioAccessory *)self setFBTDevice:0];
  [(SAAudioAccessory *)self setFProductID:0];

  [(SAAudioAccessory *)self setFBTAddress:&stru_287709218];
}

- (int64_t)convertToSAInEarStatus:(int)status
{
  if (status >= 3)
  {
    return 3;
  }

  else
  {
    return status;
  }
}

- (void)getInEarStatus:(int64_t *)status secondary:(int64_t *)secondary
{
  v28 = *MEMORY[0x277D85DE8];
  *status = 3;
  *secondary = 3;
  if ([(SAAudioAccessory *)self fBTDevice])
  {
    fBTAddress = [(SAAudioAccessory *)self fBTAddress];
    v8 = [fBTAddress length];

    if (v8 == 17)
    {
      [(SAAudioAccessory *)self fBTAccessoryManager];
      [(SAAudioAccessory *)self fBTDevice];
      if (!BTAccessoryManagerGetInEarDetectionEnable())
      {
        [(SAAudioAccessory *)self fBTAccessoryManager];
        [(SAAudioAccessory *)self fBTDevice];
        if (BTAccessoryManagerGetInEarStatus())
        {
          v14 = TASALog;
          if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
          {
            *buf = 68289026;
            v21 = 0;
            v22 = 2082;
            v23 = "";
            _os_log_impl(&dword_2656EA000, v14, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SAAudioAccessory in ear status - failed to get inear status}", buf, 0x12u);
          }

          v15 = 3;
          *status = 3;
        }

        else
        {
          *status = [(SAAudioAccessory *)self convertToSAInEarStatus:0];
          *secondary = [(SAAudioAccessory *)self convertToSAInEarStatus:0];
          v16 = TASALog;
          if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
          {
            v17 = *status;
            v18 = *secondary;
            *buf = 68289539;
            v21 = 0;
            v22 = 2082;
            v23 = "";
            v24 = 2049;
            v25 = v17;
            v26 = 2049;
            v27 = v18;
            _os_log_impl(&dword_2656EA000, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:SAAudioAccessory received in ear status, Primary:%{private}ld, Secondary:%{private}ld}", buf, 0x26u);
          }

          if (*status || [(SAAudioAccessory *)self fProductID]!= 8202)
          {
            goto LABEL_21;
          }

          v15 = 0;
        }

        *secondary = v15;
        goto LABEL_21;
      }

      v9 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289026;
        v21 = 0;
        v22 = 2082;
        v23 = "";
        v10 = "{msg%{public}.0s:SAAudioAccessory in ear status - failed to get IED setting}";
LABEL_8:
        _os_log_impl(&dword_2656EA000, v9, OS_LOG_TYPE_ERROR, v10, buf, 0x12u);
      }
    }

    else
    {
      v11 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
      {
        v12 = v11;
        fBTAddress2 = [(SAAudioAccessory *)self fBTAddress];
        *buf = 68289283;
        v21 = 0;
        v22 = 2082;
        v23 = "";
        v24 = 2113;
        v25 = fBTAddress2;
        _os_log_impl(&dword_2656EA000, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SAAudioAccessory in ear status - invalid BT address, address:%{private}@}", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v9 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v10 = "{msg%{public}.0s:SAAudioAccessory in ear status - invalid BT device}";
      goto LABEL_8;
    }
  }

LABEL_21:
  v19 = *MEMORY[0x277D85DE8];
}

- (int64_t)getPrimaryBudSide
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(SAAudioAccessory *)self fBTDevice])
  {
    fBTAddress = [(SAAudioAccessory *)self fBTAddress];
    v4 = [fBTAddress length];

    if (v4 == 17)
    {
      [(SAAudioAccessory *)self fBTAccessoryManager];
      [(SAAudioAccessory *)self fBTDevice];
      if (!BTAccessoryManagerGetPrimaryBudSide())
      {
        result = 2;
        goto LABEL_12;
      }

      v5 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289026;
        v10 = 0;
        v11 = 2082;
        v12 = "";
        v6 = "{msg%{public}.0s:SAAudioAccessory in ear status - failed to get primary bud}";
LABEL_10:
        _os_log_impl(&dword_2656EA000, v5, OS_LOG_TYPE_ERROR, v6, buf, 0x12u);
      }
    }

    else
    {
      v5 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289026;
        v10 = 0;
        v11 = 2082;
        v12 = "";
        v6 = "{msg%{public}.0s:SAAudioAccessory in ear status - invalid BT address when get primary bud side}";
        goto LABEL_10;
      }
    }
  }

  else
  {
    v5 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v6 = "{msg%{public}.0s:SAAudioAccessory in ear status - invalid BT device when get primary bud side}";
      goto LABEL_10;
    }
  }

  result = 2;
LABEL_12:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

@end