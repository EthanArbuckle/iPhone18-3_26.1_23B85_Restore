@interface SCLTransportController
- (BOOL)sendSchedule:(id)a3 identifier:(id *)a4 error:(id *)a5;
- (IDSDevice)device;
- (SCLSettingsSyncCoordinator)settingsSyncCoordinator;
- (SCLTransportController)initWithNRDevice:(id)a3 deviceRegistry:(id)a4 service:(id)a5 deviceIdentifier:(id)a6;
- (SCLTransportControllerDelegate)delegate;
- (SCLTransportService)transportService;
- (void)addUnlockHistoryItem:(id)a3;
- (void)applySchedule:(id)a3;
- (void)device;
- (void)handleIncomingHistoryItem:(id)a3;
- (void)handleIncomingSchedule:(id)a3 forType:(int)a4;
- (void)handleRemoteScheduleSettingsRequest;
- (void)requestRemoteSettings;
- (void)service:(id)a3 didDeliverMessageWithIdentifier:(id)a4;
- (void)service:(id)a3 incomingProtobuf:(id)a4 fromID:(id)a5 context:(id)a6;
@end

@implementation SCLTransportController

- (SCLTransportController)initWithNRDevice:(id)a3 deviceRegistry:(id)a4 service:(id)a5 deviceIdentifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = SCLTransportController;
  v15 = [(SCLTransportController *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_NRDevice, a3);
    objc_storeStrong(&v16->_deviceRegistry, a4);
    objc_storeStrong(&v16->_service, a5);
    v17 = [v14 copy];
    IDSDeviceIdentifier = v16->_IDSDeviceIdentifier;
    v16->_IDSDeviceIdentifier = v17;
  }

  return v16;
}

- (IDSDevice)device
{
  v3 = [(SCLTransportController *)self service];
  v4 = [v3 linkedDevicesWithRelationship:2];

  v5 = [(SCLTransportController *)self deviceRegistry];
  v6 = [(SCLTransportController *)self NRDevice];
  v7 = [v5 deviceForNRDevice:v6 fromIDSDevices:v4];

  if (!v7)
  {
    v8 = scl_pairing_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(SCLTransportController *)self device];
    }
  }

  v9 = scl_pairing_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [SCLTransportController device];
  }

  return v7;
}

- (void)service:(id)a3 incomingProtobuf:(id)a4 fromID:(id)a5 context:(id)a6
{
  v7 = a4;
  v8 = [(SCLTransportController *)self delegate];

  if (!v8)
  {
    v9 = scl_transport_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [SCLTransportController service:v9 incomingProtobuf:? fromID:? context:?];
    }
  }

  v10 = [v7 type];
  if (v10 > 2)
  {
    if (v10 == 3)
    {
      [(SCLTransportController *)self handleRemoteScheduleSettingsRequest];
      goto LABEL_19;
    }

    if (v10 == 4)
    {
      v14 = [SCLPBScheduleRequestResponse alloc];
      v15 = [v7 data];
      v13 = [(SCLPBScheduleRequestResponse *)v14 initWithData:v15];

      if ([(SCLPBScheduleRequestResponse *)v13 hasScheduleSettings])
      {
        v16 = [(SCLPBScheduleRequestResponse *)v13 scheduleSettings];
        -[SCLTransportController handleIncomingSchedule:forType:](self, "handleIncomingSchedule:forType:", v16, [v7 type]);
      }

      goto LABEL_17;
    }
  }

  else
  {
    if (v10 == 1)
    {
      v18 = [SCLPBScheduleSettings alloc];
      v19 = [v7 data];
      v13 = [(SCLPBScheduleSettings *)v18 initWithData:v19];

      -[SCLTransportController handleIncomingSchedule:forType:](self, "handleIncomingSchedule:forType:", v13, [v7 type]);
      goto LABEL_17;
    }

    if (v10 == 2)
    {
      v11 = [SCLPBUnlockHistoryItem alloc];
      v12 = [v7 data];
      v13 = [(SCLPBUnlockHistoryItem *)v11 initWithData:v12];

      [(SCLTransportController *)self handleIncomingHistoryItem:v13];
LABEL_17:

      goto LABEL_19;
    }
  }

  v17 = scl_transport_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [SCLTransportController service:v7 incomingProtobuf:v17 fromID:? context:?];
  }

LABEL_19:
}

- (void)service:(id)a3 didDeliverMessageWithIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(SCLTransportController *)self settingsSyncCoordinator];
  [v6 didDeliverMessageWithIdentifier:v5];
}

- (void)addUnlockHistoryItem:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = SCLPBUnlockHistoryItemFromSCLUnlockHistoryItem(a3);
  v5 = [v4 data];
  v6 = [objc_alloc(MEMORY[0x277D189F0]) initWithProtobufData:v5 type:2 isResponse:0];
  v7 = [(SCLTransportController *)self transportService];
  v8 = [(SCLTransportController *)self device];
  v15 = 0;
  v16 = 0;
  v9 = [v7 sendProtobuf:v6 toDevice:v8 options:0 identifier:&v16 error:&v15];
  v10 = v16;
  v11 = v15;

  v12 = scl_transport_log();
  v13 = v12;
  if (v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v10;
      _os_log_impl(&dword_264829000, v13, OS_LOG_TYPE_DEFAULT, "Sent history item with identifier %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [SCLTransportController addUnlockHistoryItem:];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleIncomingSchedule:(id)a3 forType:(int)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = SCLScheduleSettingsFromSCLPBScheduleSettings(a3);
  v7 = scl_transport_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 1024;
    v13 = a4 == 4;
    _os_log_impl(&dword_264829000, v7, OS_LOG_TYPE_DEFAULT, "Received incoming schedule: %@ forInitialSync: %{BOOL}u", &v10, 0x12u);
  }

  v8 = [(SCLTransportController *)self delegate];
  [v8 transportController:self didReceiveSchedule:v6 forInitialSync:a4 == 4];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleIncomingHistoryItem:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = SCLUnlockHistoryItemFromSCLPBUnlockHistoryItem(a3);
  v5 = scl_transport_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_264829000, v5, OS_LOG_TYPE_INFO, "Handle incoming history item %@", &v8, 0xCu);
  }

  v6 = [(SCLTransportController *)self delegate];
  [v6 transportController:self didReceiveUnlockHistoryItem:v4];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleRemoteScheduleSettingsRequest
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_264829000, v0, v1, "Failed to send remote schedule response: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)sendSchedule:(id)a3 identifier:(id *)a4 error:(id *)a5
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = SCLPBScheduleSettingsFromSCLScheduleSettings(a3);
  v9 = [v8 data];
  v10 = [objc_alloc(MEMORY[0x277D189F0]) initWithProtobufData:v9 type:1 isResponse:0];
  v16 = *MEMORY[0x277D18678];
  v17[0] = MEMORY[0x277CBEC38];
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v12 = [(SCLTransportController *)self transportService];
  v13 = [(SCLTransportController *)self device];
  LOBYTE(a5) = [v12 sendProtobuf:v10 toDevice:v13 options:v11 identifier:a4 error:a5];

  v14 = *MEMORY[0x277D85DE8];
  return a5;
}

- (void)applySchedule:(id)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = SCLPBScheduleSettingsFromSCLScheduleSettings(a3);
  v5 = [v4 data];
  v6 = [objc_alloc(MEMORY[0x277D189F0]) initWithProtobufData:v5 type:1 isResponse:0];
  v20 = *MEMORY[0x277D18678];
  v21[0] = MEMORY[0x277CBEC38];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v8 = [(SCLTransportController *)self transportService];
  v9 = [(SCLTransportController *)self device];
  v16 = 0;
  v17 = 0;
  v10 = [v8 sendProtobuf:v6 toDevice:v9 options:v7 identifier:&v17 error:&v16];
  v11 = v17;
  v12 = v16;

  v13 = scl_transport_log();
  v14 = v13;
  if (v10)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v11;
      _os_log_impl(&dword_264829000, v14, OS_LOG_TYPE_DEFAULT, "Sent schedule with identifier %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [SCLTransportController applySchedule:];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)requestRemoteSettings
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_264829000, v0, v1, "Failed to send remote schedule request: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (SCLTransportService)transportService
{
  WeakRetained = objc_loadWeakRetained(&self->_transportService);

  return WeakRetained;
}

- (SCLTransportControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SCLSettingsSyncCoordinator)settingsSyncCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsSyncCoordinator);

  return WeakRetained;
}

- (void)device
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_264829000, v1, OS_LOG_TYPE_DEBUG, "<SCLTransportController %p> device %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)service:(void *)a1 incomingProtobuf:(NSObject *)a2 fromID:context:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 device];
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(&dword_264829000, a2, OS_LOG_TYPE_FAULT, "No delegate for handling incoming protobuf for %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)service:(void *)a1 incomingProtobuf:(NSObject *)a2 fromID:context:.cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(a1, "type")}];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_264829000, a2, OS_LOG_TYPE_ERROR, "Unhandled protobuf message %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)addUnlockHistoryItem:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_264829000, v0, v1, "Failed to send history item: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)applySchedule:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_264829000, v0, v1, "Failed to apply schedule: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end