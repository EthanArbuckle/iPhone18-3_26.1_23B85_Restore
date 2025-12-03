@interface VGOEMApplication
- (BOOL)_isValidConsumptionModelForResponse:(id)response;
- (BOOL)isEqual:(id)equal;
- (VGOEMAppSOCStreaming)chargeStreamingDelegate;
- (VGOEMApplication)initWithIdentifier:(id)identifier applicationRecord:(id)record;
- (id)_powerByConnectorDictionaryFromCar:(id)car;
- (id)_vehicleStateFromResponse:(id)response error:(id *)error;
- (id)_vehiclesFromListCarsIntentResponse:(id)response;
- (unint64_t)_VGChargingConnectorTypeOptionFromINCarChargingConnectorType:(id)type;
- (unint64_t)_VGChargingConnectorTypeOptionsFromINCarChargingConnectorTypes:(id)types;
- (void)_createChargeStreamingConnectionIfNeededForVehicle:(id)vehicle;
- (void)getStateOfChargeForVehicle:(id)vehicle completion:(id)completion;
- (void)intentResponseDidUpdate:(id)update withSerializedCacheItems:(id)items;
- (void)listCarsWithCompletion:(id)completion;
- (void)resetStreamingConnection;
- (void)startSendingChargeUpdatesForVehicle:(id)vehicle;
- (void)stopSendingChargeUpdatesForVehicle:(id)vehicle;
- (void)tearDownStreamingConnectionForVehicle:(id)vehicle;
@end

@implementation VGOEMApplication

- (VGOEMAppSOCStreaming)chargeStreamingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_chargeStreamingDelegate);

  return WeakRetained;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [(VGOEMApplication *)self identifier];
    identifier2 = [equalCopy identifier];
    v7 = [identifier isEqualToString:identifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)intentResponseDidUpdate:(id)update withSerializedCacheItems:(id)items
{
  v17 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  WeakRetained = objc_loadWeakRetained(&self->_chargeStreamingDelegate);
  if (WeakRetained)
  {
    objc_initWeak(location, self);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__VGOEMApplication_intentResponseDidUpdate_withSerializedCacheItems___block_invoke;
    block[3] = &unk_279E26D98;
    objc_copyWeak(&v13, location);
    v11 = updateCopy;
    v12 = WeakRetained;
    dispatch_async(queue, block);

    objc_destroyWeak(&v13);
    objc_destroyWeak(location);
  }

  else
  {
    v8 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *location = 136315394;
      *&location[4] = "[VGOEMApplication intentResponseDidUpdate:withSerializedCacheItems:]";
      v15 = 1024;
      v16 = 513;
      _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_ERROR, "strongChargeStreamingDelegate went away in %s line %d", location, 0x12u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __69__VGOEMApplication_intentResponseDidUpdate_withSerializedCacheItems___block_invoke(id *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (!WeakRetained)
  {
    v7 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "[VGOEMApplication intentResponseDidUpdate:withSerializedCacheItems:]_block_invoke";
      v29 = 1024;
      LODWORD(v30) = 517;
      v10 = "strongSelf went away in %s line %d";
      v11 = v7;
      v12 = 18;
LABEL_16:
      _os_log_impl(&dword_270EC1000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
    }

LABEL_25:

    goto LABEL_26;
  }

  v3 = VGGetOEMApplicationLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [WeakRetained identifier];
    v5 = a1[4];
    *buf = 138412546;
    v28 = v4;
    v29 = 2112;
    v30 = v5;
    _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_INFO, "%@ received INGetCarPowerLevelStatusResponse live update: %@", buf, 0x16u);
  }

  if ([WeakRetained isEnabled])
  {
    v6 = a1[4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = a1[4];
      v8 = a1[5];
      if (objc_opt_respondsToSelector())
      {
        v9 = v7;
        if ([v9 code]== 4)
        {

          goto LABEL_21;
        }

        v20 = [v9 code];

        if (v20 == 5)
        {
LABEL_21:
          v16 = VGGetOEMApplicationLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v21 = [v9 code];
            *buf = 134217984;
            v28 = v21;
            v17 = "Unsupported response code: %ld";
            v18 = v16;
            v19 = 12;
            goto LABEL_23;
          }

LABEL_24:

          goto LABEL_25;
        }

        if ([WeakRetained _isValidConsumptionModelForResponse:v9])
        {
          v23 = a1[4];
          v26 = 0;
          v24 = [WeakRetained _vehicleStateFromResponse:v23 error:&v26];
          v16 = v26;
          if (v24)
          {
            [a1[5] vehicleStateUpdated:v24];
          }

          else
          {
            v25 = VGGetOEMApplicationLog();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v28 = v16;
              _os_log_impl(&dword_270EC1000, v25, OS_LOG_TYPE_ERROR, "Response failed to deserialize to a valid VGVehicleState %@", buf, 0xCu);
            }
          }

          goto LABEL_24;
        }

        v16 = VGGetOEMApplicationLog();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_24;
        }

        *buf = 0;
        v17 = "Formula from the response is invalid";
      }

      else
      {
        v16 = VGGetOEMApplicationLog();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_24;
        }

        *buf = 0;
        v17 = "chargeStreamingDelegate does not implement required method vehicleStateUpdated:";
      }

      v18 = v16;
      v19 = 2;
LABEL_23:
      _os_log_impl(&dword_270EC1000, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
      goto LABEL_24;
    }

    v7 = VGGetOEMApplicationLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = a1[4];
      v15 = objc_opt_class();
      *buf = 138412290;
      v28 = v15;
      v10 = "Unexpected streaming response class. Received an %@ instance";
      v11 = v7;
      v12 = 12;
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  v13 = VGGetOEMApplicationLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_270EC1000, v13, OS_LOG_TYPE_ERROR, "Received stream callback when disabled", buf, 2u);
  }

  [WeakRetained resetStreamingConnection];
LABEL_26:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)resetStreamingConnection
{
  [(INCExtensionConnection *)self->_chargeStreamingConnection reset];
  chargeStreamingConnection = self->_chargeStreamingConnection;
  self->_chargeStreamingConnection = 0;
}

- (void)tearDownStreamingConnectionForVehicle:(id)vehicle
{
  v20 = *MEMORY[0x277D85DE8];
  if (vehicle)
  {
    v5 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = NSStringFromSelector(a2);
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    v7 = VGGetOEMApplicationLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      identifier = [(VGOEMApplication *)self identifier];
      *buf = 138412290;
      v15 = identifier;
      _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_INFO, "%@ tearing down streaming connection", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__VGOEMApplication_tearDownStreamingConnectionForVehicle___block_invoke;
    block[3] = &unk_279E26E88;
    objc_copyWeak(&v13, buf);
    dispatch_async(queue, block);
    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  else
  {
    v10 = VGGetAssertLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v15 = "[VGOEMApplication tearDownStreamingConnectionForVehicle:]";
      v16 = 2082;
      v17 = "vehicle == nil";
      v18 = 2082;
      v19 = "Vehicle cannot be nil";
      _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_ERROR, "%{public}s forbids: %{public}s. %{public}s", buf, 0x20u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __58__VGOEMApplication_tearDownStreamingConnectionForVehicle___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 2);
    if (v4)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __58__VGOEMApplication_tearDownStreamingConnectionForVehicle___block_invoke_66;
      v7[3] = &unk_279E26CF8;
      objc_copyWeak(&v8, (a1 + 32));
      [v4 resumeWithCompletionHandler:v7];
      objc_destroyWeak(&v8);
    }
  }

  else
  {
    v5 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "[VGOEMApplication tearDownStreamingConnectionForVehicle:]_block_invoke";
      v11 = 1024;
      v12 = 488;
      _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __58__VGOEMApplication_tearDownStreamingConnectionForVehicle___block_invoke_66(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__VGOEMApplication_tearDownStreamingConnectionForVehicle___block_invoke_67;
    block[3] = &unk_279E26E88;
    objc_copyWeak(&v8, (a1 + 32));
    dispatch_async(v4, block);
    objc_destroyWeak(&v8);
  }

  else
  {
    v5 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "[VGOEMApplication tearDownStreamingConnectionForVehicle:]_block_invoke";
      v11 = 1024;
      v12 = 494;
      _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_ERROR, "strongSelf2 went away in %s line %d", buf, 0x12u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __58__VGOEMApplication_tearDownStreamingConnectionForVehicle___block_invoke_67(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained resetStreamingConnection];
}

- (void)stopSendingChargeUpdatesForVehicle:(id)vehicle
{
  v22 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  if (vehicleCopy)
  {
    v6 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      *buf = 138412290;
      v17 = v7;
      _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    v8 = VGGetOEMApplicationLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      identifier = [(VGOEMApplication *)self identifier];
      *buf = 138412290;
      v17 = identifier;
      _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_INFO, "%@ stopping updates", buf, 0xCu);
    }

    [(VGOEMApplication *)self _createChargeStreamingConnectionIfNeededForVehicle:vehicleCopy];
    objc_initWeak(buf, self);
    queue = self->_queue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __55__VGOEMApplication_stopSendingChargeUpdatesForVehicle___block_invoke;
    v13[3] = &unk_279E26F20;
    objc_copyWeak(&v15, buf);
    v14 = vehicleCopy;
    dispatch_async(queue, v13);

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  else
  {
    v11 = VGGetAssertLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v17 = "[VGOEMApplication stopSendingChargeUpdatesForVehicle:]";
      v18 = 2082;
      v19 = "vehicle == nil";
      v20 = 2082;
      v21 = "Vehicle cannot be nil";
      _os_log_impl(&dword_270EC1000, v11, OS_LOG_TYPE_ERROR, "%{public}s forbids: %{public}s. %{public}s", buf, 0x20u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __55__VGOEMApplication_stopSendingChargeUpdatesForVehicle___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 2);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__VGOEMApplication_stopSendingChargeUpdatesForVehicle___block_invoke_65;
    v7[3] = &unk_279E26D20;
    objc_copyWeak(&v9, (a1 + 40));
    v8 = *(a1 + 32);
    [v4 resumeWithCompletionHandler:v7];

    objc_destroyWeak(&v9);
  }

  else
  {
    v5 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[VGOEMApplication stopSendingChargeUpdatesForVehicle:]_block_invoke";
      v12 = 1024;
      v13 = 468;
      _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __55__VGOEMApplication_stopSendingChargeUpdatesForVehicle___block_invoke_65(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = VGGetOEMApplicationLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [v6 localizedDescription];
        v12 = 138412290;
        v13 = v9;
        _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_ERROR, "Connection error while stopping updates: %@", &v12, 0xCu);
      }
    }

    [v5 stopSendingUpdates];
    [WeakRetained tearDownStreamingConnectionForVehicle:*(a1 + 32)];
  }

  else
  {
    v10 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "[VGOEMApplication stopSendingChargeUpdatesForVehicle:]_block_invoke";
      v14 = 1024;
      v15 = 470;
      _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_ERROR, "strongSelf2 went away in %s line %d", &v12, 0x12u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)startSendingChargeUpdatesForVehicle:(id)vehicle
{
  v21 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  if (vehicleCopy)
  {
    v6 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      *buf = 138412290;
      v16 = v7;
      _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    v8 = VGGetOEMApplicationLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      identifier = [(VGOEMApplication *)self identifier];
      *buf = 138412290;
      v16 = identifier;
      _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_INFO, "%@ starting updates", buf, 0xCu);
    }

    [(VGOEMApplication *)self _createChargeStreamingConnectionIfNeededForVehicle:vehicleCopy];
    objc_initWeak(buf, self);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__VGOEMApplication_startSendingChargeUpdatesForVehicle___block_invoke;
    block[3] = &unk_279E26E88;
    objc_copyWeak(&v14, buf);
    dispatch_async(queue, block);
    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  else
  {
    v11 = VGGetAssertLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v16 = "[VGOEMApplication startSendingChargeUpdatesForVehicle:]";
      v17 = 2082;
      v18 = "vehicle == nil";
      v19 = 2082;
      v20 = "Vehicle cannot be nil";
      _os_log_impl(&dword_270EC1000, v11, OS_LOG_TYPE_ERROR, "%{public}s forbids: %{public}s. %{public}s", buf, 0x20u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __56__VGOEMApplication_startSendingChargeUpdatesForVehicle___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 2);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __56__VGOEMApplication_startSendingChargeUpdatesForVehicle___block_invoke_63;
    v7[3] = &unk_279E26CF8;
    objc_copyWeak(&v8, (a1 + 32));
    [v4 resumeWithCompletionHandler:v7];
    objc_destroyWeak(&v8);
  }

  else
  {
    v5 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "[VGOEMApplication startSendingChargeUpdatesForVehicle:]_block_invoke";
      v11 = 1024;
      v12 = 444;
      _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __56__VGOEMApplication_startSendingChargeUpdatesForVehicle___block_invoke_63(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = VGGetOEMApplicationLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [v6 localizedDescription];
        v12 = 138412290;
        v13 = v9;
        _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_ERROR, "Connection error while receiving updates: %@", &v12, 0xCu);
      }
    }

    [v5 startSendingUpdatesToObserver:WeakRetained];
  }

  else
  {
    v10 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "[VGOEMApplication startSendingChargeUpdatesForVehicle:]_block_invoke";
      v14 = 1024;
      v15 = 447;
      _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_ERROR, "strongSelf2 went away in %s line %d", &v12, 0x12u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_createChargeStreamingConnectionIfNeededForVehicle:(id)vehicle
{
  v16 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  if (vehicleCopy)
  {
    objc_initWeak(location, self);
    queue = self->_queue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __71__VGOEMApplication__createChargeStreamingConnectionIfNeededForVehicle___block_invoke;
    v8[3] = &unk_279E26F20;
    objc_copyWeak(&v10, location);
    v9 = vehicleCopy;
    dispatch_async(queue, v8);

    objc_destroyWeak(&v10);
    objc_destroyWeak(location);
  }

  else
  {
    v6 = VGGetAssertLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *location = 136446722;
      *&location[4] = "[VGOEMApplication _createChargeStreamingConnectionIfNeededForVehicle:]";
      v12 = 2082;
      v13 = "vehicle == nil";
      v14 = 2082;
      v15 = "Vehicle cannot be nil";
      _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_ERROR, "%{public}s forbids: %{public}s. %{public}s", location, 0x20u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __71__VGOEMApplication__createChargeStreamingConnectionIfNeededForVehicle___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v7 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315394;
      v19 = "[VGOEMApplication _createChargeStreamingConnectionIfNeededForVehicle:]_block_invoke";
      v20 = 1024;
      LODWORD(v21) = 418;
      _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", &v18, 0x12u);
    }

    goto LABEL_12;
  }

  if (!WeakRetained[2] && [WeakRetained isEnabled])
  {
    v4 = objc_alloc(MEMORY[0x277CD4188]);
    v5 = [*(a1 + 32) siriIntentsIdentifier];
    v6 = [*(a1 + 32) displayName];
    v7 = [v4 initWithVocabularyIdentifier:v5 spokenPhrase:v6 pronunciationHint:0];

    v8 = [objc_alloc(MEMORY[0x277CD3C40]) initWithCarName:v7];
    v9 = [objc_alloc(MEMORY[0x277D21520]) initWithIntent:v8];
    v10 = v3[2];
    v3[2] = v9;

    [v3[2] setRequiresTCC:0];
    v11 = [v3 identifier];
    v12 = [v3[2] intent];
    [v12 _setLaunchId:v11];

    v13 = *MEMORY[0x277D0EA90];
    v14 = *(MEMORY[0x277D0EA90] + 8);
    if (GEOConfigGetBOOL())
    {
      v15 = [MEMORY[0x277D0EC70] sharedPlatform];
      [v3[2] setRequiresTrustCheck:{objc_msgSend(v15, "isInternalInstall") ^ 1}];
    }

    else
    {
      [v3[2] setRequiresTrustCheck:0];
    }

    v16 = VGGetOEMApplicationLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = 138412546;
      v19 = v8;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_270EC1000, v16, OS_LOG_TYPE_INFO, "Started a new streaming Intent %@ with %@", &v18, 0x16u);
    }

LABEL_12:
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)getStateOfChargeForVehicle:(id)vehicle completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  completionCopy = completion;
  if (!completionCopy)
  {
    currentVehicleState = VGGetAssertLog();
    if (os_log_type_enabled(currentVehicleState, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v21 = "[VGOEMApplication getStateOfChargeForVehicle:completion:]";
      v22 = 2082;
      v23 = "completion == nil";
      v24 = 2082;
      v25 = "Completion cannot be nil!";
      _os_log_impl(&dword_270EC1000, currentVehicleState, OS_LOG_TYPE_ERROR, "%{public}s forbids: %{public}s. %{public}s", buf, 0x20u);
    }

    goto LABEL_11;
  }

  v9 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138412290;
    v21 = v10;
    _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  if (![(VGOEMApplication *)self isEnabled])
  {
    v13 = VGGetOEMApplicationLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      identifier = self->_identifier;
      *buf = 138412290;
      v21 = identifier;
      _os_log_impl(&dword_270EC1000, v13, OS_LOG_TYPE_INFO, "Application %@ is not enabled returning existing SoC", buf, 0xCu);
    }

    currentVehicleState = [vehicleCopy currentVehicleState];
    completionCopy[2](completionCopy, currentVehicleState, 0);
LABEL_11:

    goto LABEL_12;
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__VGOEMApplication_getStateOfChargeForVehicle_completion___block_invoke;
  block[3] = &unk_279E26CD0;
  objc_copyWeak(&v19, buf);
  v17 = vehicleCopy;
  v18 = completionCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
LABEL_12:

  v15 = *MEMORY[0x277D85DE8];
}

void __58__VGOEMApplication_getStateOfChargeForVehicle_completion___block_invoke(id *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = objc_alloc(MEMORY[0x277CD4188]);
    v4 = [a1[4] siriIntentsIdentifier];
    v5 = [a1[4] displayName];
    v6 = [v3 initWithVocabularyIdentifier:v4 spokenPhrase:v5 pronunciationHint:0];

    v7 = [objc_alloc(MEMORY[0x277CD3C40]) initWithCarName:v6];
    v8 = [WeakRetained identifier];
    [v7 _setLaunchId:v8];

    v9 = VGGetOEMApplicationLog();
    v10 = os_signpost_id_generate(v9);

    v11 = VGGetOEMApplicationLog();
    v12 = v11;
    if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_270EC1000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "stateOfChargeIntentSignpost", "", buf, 2u);
    }

    v13 = +[VGOEMExtensionConnectionBroker sharedInstance];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __58__VGOEMApplication_getStateOfChargeForVehicle_completion___block_invoke_41;
    v22[3] = &unk_279E26BB8;
    objc_copyWeak(&v23, a1 + 6);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __58__VGOEMApplication_getStateOfChargeForVehicle_completion___block_invoke_42;
    v19[3] = &unk_279E26C08;
    objc_copyWeak(v21, a1 + 6);
    v21[1] = v10;
    v20 = a1[5];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __58__VGOEMApplication_getStateOfChargeForVehicle_completion___block_invoke_44;
    v15[3] = &unk_279E26CA8;
    v18[1] = v10;
    objc_copyWeak(v18, a1 + 6);
    v17 = a1[5];
    v16 = a1[4];
    [v13 resumeConnectionWithIntent:v7 connectionTimeoutHandler:v22 connectionErrorHandler:v19 intentCompletionHandler:v15];

    objc_destroyWeak(v18);
    objc_destroyWeak(v21);
    objc_destroyWeak(&v23);
  }

  else
  {
    v6 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[VGOEMApplication getStateOfChargeForVehicle:completion:]_block_invoke";
      v26 = 1024;
      v27 = 350;
      _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __58__VGOEMApplication_getStateOfChargeForVehicle_completion___block_invoke_41(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = VGGetOEMApplicationLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412546;
    v8 = WeakRetained;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_ERROR, "Connection for OEMApp: (%@), timed out with error: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __58__VGOEMApplication_getStateOfChargeForVehicle_completion___block_invoke_42(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v11 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[VGOEMApplication getStateOfChargeForVehicle:completion:]_block_invoke";
      v18 = 1024;
      v19 = 361;
      _os_log_impl(&dword_270EC1000, v11, OS_LOG_TYPE_ERROR, "strongSelf2 went away in %s line %d", buf, 0x12u);
    }

    goto LABEL_11;
  }

  if (v3)
  {
    v5 = VGGetOEMApplicationLog();
    v6 = v5;
    v7 = *(a1 + 48);
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_270EC1000, v6, OS_SIGNPOST_INTERVAL_END, v7, "stateOfChargeIntent", "", buf, 2u);
    }

    v8 = WeakRetained[1];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __58__VGOEMApplication_getStateOfChargeForVehicle_completion___block_invoke_43;
    v13[3] = &unk_279E26BE0;
    v15 = *(a1 + 32);
    v9 = v3;
    v14 = v9;
    dispatch_async(v8, v13);
    v10 = VGGetOEMApplicationLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v9;
      _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_ERROR, "Returning because of a connection error: %@", buf, 0xCu);
    }

    v11 = v15;
LABEL_11:
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __58__VGOEMApplication_getStateOfChargeForVehicle_completion___block_invoke_44(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = VGGetOEMApplicationLog();
  v8 = v7;
  v9 = *(a1 + 56);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_270EC1000, v8, OS_SIGNPOST_INTERVAL_END, v9, "stateOfChargeIntentSignpost", "", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v6)
    {
      v11 = VGGetOEMApplicationLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v44 = v6;
        _os_log_impl(&dword_270EC1000, v11, OS_LOG_TYPE_ERROR, "error in handleIntentWithCompletionHandler: %@", buf, 0xCu);
      }

      v12 = *(a1 + 40);
      v13 = [v6 underlyingError];
      if (v13)
      {
        v14 = v13;
        (*(v12 + 16))(v12, 0, v13);
      }

      else
      {
        v16 = MEMORY[0x277CCA9B8];
        v17 = GEOErrorDomain();
        v41 = *MEMORY[0x277CCA450];
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Intents error with code: %ld", objc_msgSend(v6, "errorCode")];
        v42 = v18;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
        v20 = [v16 errorWithDomain:v17 code:-11 userInfo:v19];
        (*(v12 + 16))(v12, 0, v20);

        v14 = 0;
      }

      goto LABEL_20;
    }

    v15 = v5;
    if ([v15 code] == 4)
    {
    }

    else
    {
      v21 = [v15 code];

      if (v21 != 5)
      {
        if ([WeakRetained _isValidConsumptionModelForResponse:v15])
        {
          v28 = WeakRetained[1];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __58__VGOEMApplication_getStateOfChargeForVehicle_completion___block_invoke_56;
          block[3] = &unk_279E26C80;
          v32 = 0;
          v36 = *(a1 + 40);
          v33 = WeakRetained;
          v34 = v15;
          v35 = *(a1 + 32);
          dispatch_async(v28, block);

          v14 = v32;
          goto LABEL_20;
        }

        v29 = MEMORY[0x277CCA9B8];
        v24 = GEOErrorDomain();
        v37 = *MEMORY[0x277CCA450];
        v38 = @"Invalid Formula";
        v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
        v14 = [v29 errorWithDomain:v24 code:-11 userInfo:v30];

        goto LABEL_19;
      }
    }

    v22 = VGGetOEMApplicationLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v44 = v15;
      _os_log_impl(&dword_270EC1000, v22, OS_LOG_TYPE_ERROR, "Unsupported response code: %@", buf, 0xCu);
    }

    v23 = MEMORY[0x277CCA9B8];
    v24 = GEOErrorDomain();
    v39 = *MEMORY[0x277CCA450];
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Intent response with unsupported code: %ld", objc_msgSend(v15, "code")];
    v40 = v25;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v14 = [v23 errorWithDomain:v24 code:-11 userInfo:v26];

LABEL_19:
    (*(*(a1 + 40) + 16))();
    goto LABEL_20;
  }

  v14 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v44 = "[VGOEMApplication getStateOfChargeForVehicle:completion:]_block_invoke";
    v45 = 1024;
    v46 = 365;
    _os_log_impl(&dword_270EC1000, v14, OS_LOG_TYPE_ERROR, "strongSelf3 went away in %s line %d", buf, 0x12u);
  }

LABEL_20:

  v27 = *MEMORY[0x277D85DE8];
}

void __58__VGOEMApplication_getStateOfChargeForVehicle_completion___block_invoke_56(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) underlyingError];

  if (v2)
  {
    v3 = *(a1 + 64);
    v4 = [*(a1 + 32) underlyingError];
    (*(v3 + 16))(v3, 0, v4);

    v5 = VGGetOEMApplicationLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) underlyingError];
      *buf = 138412290;
      v25 = v6;
      _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_ERROR, "Returning because of an underlying error in the connection: %@", buf, 0xCu);
    }
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v23 = 0;
    v9 = [v7 _vehicleStateFromResponse:v8 error:&v23];
    v5 = v23;
    if (v9)
    {
      v10 = [v9 identifier];
      v11 = [*(a1 + 56) siriIntentsIdentifier];
      v12 = [v10 isEqualToString:v11];

      if ((v12 & 1) == 0)
      {
        v20 = VGGetAssertLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v25 = "[VGOEMApplication getStateOfChargeForVehicle:completion:]_block_invoke";
          v26 = 2080;
          v27 = "VGOEMApplication.m";
          v28 = 1024;
          v29 = 400;
          v30 = 2080;
          v31 = "[state.identifier isEqualToString:vehicle.siriIntentsIdentifier]";
          _os_log_impl(&dword_270EC1000, v20, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
        }

        if (_vg_isInternalInstall())
        {
          v21 = VGGetAssertLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = [MEMORY[0x277CCACC8] callStackSymbols];
            *buf = 138412290;
            v25 = v22;
            _os_log_impl(&dword_270EC1000, v21, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }
      }

      v13 = [v9 identifier];
      v14 = [*(a1 + 56) siriIntentsIdentifier];
      v15 = [v13 isEqualToString:v14];

      if ((v15 & 1) == 0)
      {
        v16 = VGGetOEMApplicationLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          v17 = *(a1 + 56);
          *buf = 138412546;
          v25 = v9;
          v26 = 2112;
          v27 = v17;
          _os_log_impl(&dword_270EC1000, v16, OS_LOG_TYPE_FAULT, "Received a vehicle state: %@ that doesn't apply to the provided vehicle: %@", buf, 0x16u);
        }

        v9 = 0;
      }
    }

    v18 = VGGetOEMApplicationLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = v9;
      _os_log_impl(&dword_270EC1000, v18, OS_LOG_TYPE_INFO, "getStateOfChargeForVehicle fetched %@", buf, 0xCu);
    }

    (*(*(a1 + 64) + 16))();
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)listCarsWithCompletion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (completionCopy)
  {
    v6 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      *buf = 138412290;
      v17 = v7;
      _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    if ([(VGOEMApplication *)self isEnabled])
    {
      objc_initWeak(buf, self);
      queue = self->_queue;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __43__VGOEMApplication_listCarsWithCompletion___block_invoke;
      v13[3] = &unk_279E26F48;
      objc_copyWeak(&v15, buf);
      v14 = completionCopy;
      dispatch_async(queue, v13);

      objc_destroyWeak(&v15);
      objc_destroyWeak(buf);
    }

    else
    {
      v10 = VGGetOEMApplicationLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        identifier = self->_identifier;
        *buf = 138412290;
        v17 = identifier;
        _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_INFO, "Application %@ is not enabled returning no results", buf, 0xCu);
      }

      (*(completionCopy + 2))(completionCopy, MEMORY[0x277CBEBF8], 0);
    }
  }

  else
  {
    v9 = VGGetAssertLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v17 = "[VGOEMApplication listCarsWithCompletion:]";
      v18 = 2082;
      v19 = "completion == nil";
      v20 = 2082;
      v21 = "Completion cannot be nil!";
      _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_ERROR, "%{public}s forbids: %{public}s. %{public}s", buf, 0x20u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __43__VGOEMApplication_listCarsWithCompletion___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = objc_alloc_init(MEMORY[0x277CD3D70]);
    v4 = [WeakRetained identifier];
    [v3 _setLaunchId:v4];

    v5 = VGGetOEMApplicationLog();
    v6 = os_signpost_id_generate(v5);

    v7 = VGGetOEMApplicationLog();
    v8 = v7;
    if ((v6 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_270EC1000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "listCarsIntentSignpost", "", buf, 2u);
    }

    v9 = +[VGOEMExtensionConnectionBroker sharedInstance];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __43__VGOEMApplication_listCarsWithCompletion___block_invoke_31;
    v17[3] = &unk_279E26BB8;
    objc_copyWeak(&v18, (a1 + 40));
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __43__VGOEMApplication_listCarsWithCompletion___block_invoke_33;
    v14[3] = &unk_279E26C08;
    objc_copyWeak(v16, (a1 + 40));
    v16[1] = v6;
    v15 = *(a1 + 32);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __43__VGOEMApplication_listCarsWithCompletion___block_invoke_36;
    v11[3] = &unk_279E26C58;
    v13[1] = v6;
    objc_copyWeak(v13, (a1 + 40));
    v12 = *(a1 + 32);
    [v9 resumeConnectionWithIntent:v3 connectionTimeoutHandler:v17 connectionErrorHandler:v14 intentCompletionHandler:v11];

    objc_destroyWeak(v13);
    objc_destroyWeak(v16);
    objc_destroyWeak(&v18);
  }

  else
  {
    v3 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[VGOEMApplication listCarsWithCompletion:]_block_invoke";
      v21 = 1024;
      v22 = 312;
      _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __43__VGOEMApplication_listCarsWithCompletion___block_invoke_31(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = VGGetOEMApplicationLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412546;
    v8 = WeakRetained;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_ERROR, "Connection for OEMApp: (%@), timed out with error: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __43__VGOEMApplication_listCarsWithCompletion___block_invoke_33(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v11 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[VGOEMApplication listCarsWithCompletion:]_block_invoke";
      v18 = 1024;
      v19 = 322;
      _os_log_impl(&dword_270EC1000, v11, OS_LOG_TYPE_ERROR, "strongSelf2 went away in %s line %d", buf, 0x12u);
    }

    goto LABEL_11;
  }

  if (v3)
  {
    v5 = VGGetOEMApplicationLog();
    v6 = v5;
    v7 = *(a1 + 48);
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_270EC1000, v6, OS_SIGNPOST_INTERVAL_END, v7, "listCarsIntentSignpost", "", buf, 2u);
    }

    v8 = WeakRetained[1];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __43__VGOEMApplication_listCarsWithCompletion___block_invoke_34;
    v13[3] = &unk_279E26BE0;
    v15 = *(a1 + 32);
    v9 = v3;
    v14 = v9;
    dispatch_async(v8, v13);
    v10 = VGGetOEMApplicationLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v9;
      _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_ERROR, "Returning because of a connection error: %@", buf, 0xCu);
    }

    v11 = v15;
LABEL_11:
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __43__VGOEMApplication_listCarsWithCompletion___block_invoke_36(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = VGGetOEMApplicationLog();
  v8 = v7;
  v9 = *(a1 + 48);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_270EC1000, v8, OS_SIGNPOST_INTERVAL_END, v9, "listCarsIntentSignpost", "", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v11 = [v6 underlyingError];

    if (!v11)
    {
      v16 = WeakRetained[1];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __43__VGOEMApplication_listCarsWithCompletion___block_invoke_37;
      v18[3] = &unk_279E26C30;
      v18[4] = WeakRetained;
      v19 = v5;
      v21 = *(a1 + 32);
      v20 = v6;
      dispatch_async(v16, v18);

      goto LABEL_12;
    }

    v12 = *(a1 + 32);
    v13 = [v6 underlyingError];
    (*(v12 + 16))(v12, 0, v13);

    v14 = VGGetOEMApplicationLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [v6 underlyingError];
      *buf = 138412290;
      v23 = v15;
      _os_log_impl(&dword_270EC1000, v14, OS_LOG_TYPE_ERROR, "Returning because of an underlying error in the connection: %@", buf, 0xCu);
    }
  }

  else
  {
    v14 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[VGOEMApplication listCarsWithCompletion:]_block_invoke";
      v24 = 1024;
      v25 = 326;
      _os_log_impl(&dword_270EC1000, v14, OS_LOG_TYPE_ERROR, "strongSelf3 went away in %s line %d", buf, 0x12u);
    }
  }

LABEL_12:
  v17 = *MEMORY[0x277D85DE8];
}

void __43__VGOEMApplication_listCarsWithCompletion___block_invoke_37(uint64_t a1)
{
  v4 = [*(a1 + 32) _vehiclesFromListCarsIntentResponse:*(a1 + 40)];
  v2 = *(a1 + 56);
  v3 = [*(a1 + 48) underlyingError];
  (*(v2 + 16))(v2, v4, v3);
}

- (id)_powerByConnectorDictionaryFromCar:(id)car
{
  v43 = *MEMORY[0x277D85DE8];
  carCopy = car;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  if (_connectorMapping_onceToken != -1)
  {
    dispatch_once(&_connectorMapping_onceToken, &__block_literal_global_1730);
  }

  allKeys = [_connectorMapping_s_connectorMapping allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      v10 = 0;
      do
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v30 + 1) + 8 * v10);
        supportedChargingConnectors = [carCopy supportedChargingConnectors];
        v13 = [supportedChargingConnectors containsObject:v11];

        if (v13)
        {
          v14 = [carCopy maximumPowerForChargingConnectorType:v11];
          if (v14)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v17 = VGGetAssertLog();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315906;
                v35 = "[VGOEMApplication _powerByConnectorDictionaryFromCar:]";
                v36 = 2080;
                v37 = "VGOEMApplication.m";
                v38 = 1024;
                v39 = 280;
                v40 = 2080;
                v41 = "!maxPowerForConnector || [maxPowerForConnector isKindOfClass:NSMeasurement.class]";
                _os_log_impl(&dword_270EC1000, v17, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
              }

              if (_vg_isInternalInstall())
              {
                v18 = VGGetAssertLog();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                {
                  callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
                  *buf = 138412290;
                  v35 = callStackSymbols;
                  _os_log_impl(&dword_270EC1000, v18, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
                }
              }
            }

            v15 = [(VGOEMApplication *)self _VGChargingConnectorTypeOptionFromINCarChargingConnectorType:v11];
            if (v15)
            {
              v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
              [dictionary setObject:v14 forKeyedSubscript:v16];
            }

            else
            {
              v19 = VGGetAssertLog();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315906;
                v35 = "[VGOEMApplication _powerByConnectorDictionaryFromCar:]";
                v36 = 2080;
                v37 = "VGOEMApplication.m";
                v38 = 1024;
                v39 = 284;
                v40 = 2080;
                v41 = "mapsConnectorTypeOptions != VGChargingConnectorTypeOptionNone";
                _os_log_impl(&dword_270EC1000, v19, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
              }

              if (_vg_isInternalInstall())
              {
                v20 = VGGetAssertLog();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
                  *buf = 138412290;
                  v35 = callStackSymbols2;
                  _os_log_impl(&dword_270EC1000, v20, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
                }
              }

              v16 = VGGetOEMApplicationLog();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                powerPerConnectors = [carCopy powerPerConnectors];
                *buf = 134218242;
                v35 = v11;
                v36 = 2112;
                v37 = powerPerConnectors;
                v22 = powerPerConnectors;
                _os_log_impl(&dword_270EC1000, v16, OS_LOG_TYPE_ERROR, "Failed to extract power for connector type: %lu, from car array: %@.", buf, 0x16u);
              }
            }
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v23 = [allKeys countByEnumeratingWithState:&v30 objects:v42 count:16];
      v8 = v23;
    }

    while (v23);
  }

  v24 = VGGetOEMApplicationLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v35 = dictionary;
    _os_log_impl(&dword_270EC1000, v24, OS_LOG_TYPE_INFO, "Constructed powerByConnector dictionary: %@", buf, 0xCu);
  }

  v25 = [dictionary copy];
  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)_vehiclesFromListCarsIntentResponse:(id)response
{
  v65 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v6 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412290;
    v64 = v7;
    _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  if ([responseCopy code] == 3)
  {
    v8 = objc_alloc(MEMORY[0x277CBEB18]);
    cars = [responseCopy cars];
    v10 = [v8 initWithCapacity:{objc_msgSend(cars, "count")}];

    v11 = VGGetOEMApplicationLog();
    LODWORD(cars) = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);

    if (cars)
    {
      v45 = objc_opt_new();
    }

    else
    {
      v45 = 0;
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v44 = responseCopy;
    obj = [responseCopy cars];
    v50 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
    if (v50)
    {
      v47 = *v59;
      selfCopy = self;
      v49 = v10;
      do
      {
        v14 = 0;
        do
        {
          if (*v59 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v58 + 1) + 8 * v14);
          color = [v15 color];
          v52 = [VGVehicle alloc];
          displayName = [v15 displayName];
          year = [v15 year];
          make = [v15 make];
          [v15 model];
          v54 = v53 = v14;
          if (color)
          {
            v17 = VGHexRepresentationFromCGColor(color);
            v51 = v17;
          }

          else
          {
            v17 = 0;
          }

          headUnit = [v15 headUnit];
          iAP2Identifier = [headUnit iAP2Identifier];
          headUnit2 = [v15 headUnit];
          bluetoothIdentifier = [headUnit2 bluetoothIdentifier];
          supportedChargingConnectors = [v15 supportedChargingConnectors];
          v23 = [(VGOEMApplication *)self _VGChargingConnectorTypeOptionsFromINCarChargingConnectorTypes:supportedChargingConnectors];
          v24 = [(VGOEMApplication *)self _powerByConnectorDictionaryFromCar:v15];
          v25 = [(VGVehicle *)v52 initWithDisplayName:displayName year:year manufacturer:make model:v54 colorHex:v17 headUnitIdentifier:iAP2Identifier headUnitBluetoothIdentifier:bluetoothIdentifier supportedConnectors:v23 powerByConnector:v24];

          if (color)
          {
          }

          carIdentifier = [v15 carIdentifier];
          v27 = [carIdentifier copy];
          [(VGVehicle *)v25 setSiriIntentsIdentifier:v27];

          self = selfCopy;
          identifier = [(VGOEMApplication *)selfCopy identifier];
          v29 = [identifier copy];
          [(VGVehicle *)v25 setPairedAppIdentifier:v29];

          v30 = VGGetOEMApplicationLog();
          LODWORD(v29) = os_log_type_enabled(v30, OS_LOG_TYPE_INFO);

          v10 = v49;
          if (v29)
          {
            v31 = MEMORY[0x277CCAB68];
            displayName2 = [(VGVehicle *)v25 displayName];
            siriIntentsIdentifier = [(VGVehicle *)v25 siriIntentsIdentifier];
            v34 = [v31 stringWithFormat:@"%@ (%@) ", displayName2, siriIntentsIdentifier];

            if (color)
            {
              Components = CGColorGetComponents(color);
              for (i = 0; i < CGColorGetNumberOfComponents(color); ++i)
              {
                [v34 appendFormat:@"%f ", *&Components[i]];
              }

              ColorSpace = CGColorGetColorSpace(color);
              [v34 appendFormat:@"%@", CGColorSpaceGetName(ColorSpace)];
            }

            else
            {
              [v34 appendString:@"<no color>"];
            }

            [v45 addObject:v34];
          }

          [v49 addObject:v25];

          v14 = v53 + 1;
        }

        while (v53 + 1 != v50);
        v50 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
      }

      while (v50);
    }

    v38 = VGGetOEMApplicationLog();
    v39 = os_log_type_enabled(v38, OS_LOG_TYPE_INFO);

    responseCopy = v44;
    if (v39)
    {
      v40 = VGGetOEMApplicationLog();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = [v45 componentsJoinedByString:{@", "}];
        *buf = 138412290;
        v64 = v41;
        _os_log_impl(&dword_270EC1000, v40, OS_LOG_TYPE_INFO, "_vehiclesFromListCarsIntentResponse color are: %@", buf, 0xCu);
      }
    }

    v13 = [v10 copy];
  }

  else
  {
    v10 = VGGetOEMApplicationLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      code = [responseCopy code];
      *buf = 134217984;
      v64 = code;
      _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_INFO, "Listing cars received a non-Success response code: %ld", buf, 0xCu);
    }

    v13 = MEMORY[0x277CBEBF8];
  }

  v42 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_vehicleStateFromResponse:(id)response error:(id *)error
{
  v62 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v8 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 138412290;
    v59 = v9;
    _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  carIdentifier = [responseCopy carIdentifier];
  if (carIdentifier)
  {
    dateOfLastStateUpdate = [responseCopy dateOfLastStateUpdate];
    v12 = dateOfLastStateUpdate;
    if (dateOfLastStateUpdate)
    {
      calendar = [dateOfLastStateUpdate calendar];

      if (calendar)
      {
        calendar2 = [v12 calendar];
      }

      else
      {
        v18 = VGGetOEMApplicationLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_270EC1000, v18, OS_LOG_TYPE_INFO, "Date components did not specify a calendar; assuming the current one", buf, 2u);
        }

        calendar2 = [MEMORY[0x277CBEA80] currentCalendar];
      }

      v19 = calendar2;
      v20 = [calendar2 dateFromComponents:v12];

      if (v20)
      {
        goto LABEL_19;
      }

      v21 = VGGetOEMApplicationLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v59 = v12;
        _os_log_impl(&dword_270EC1000, v21, OS_LOG_TYPE_ERROR, "Failed to get an updateDate from components: %@", buf, 0xCu);
      }
    }

    v22 = VGGetOEMApplicationLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v59 = responseCopy;
      _os_log_impl(&dword_270EC1000, v22, OS_LOG_TYPE_ERROR, "Assuming vehicle state response: %{private}@ was created now", buf, 0xCu);
    }

    v20 = objc_opt_new();
LABEL_19:
    v45 = [VGVehicleState alloc];
    carIdentifier2 = [responseCopy carIdentifier];
    chargePercentRemaining = [responseCopy chargePercentRemaining];
    distanceRemainingElectric = [responseCopy distanceRemainingElectric];
    maximumDistanceElectric = [responseCopy maximumDistanceElectric];
    minimumBatteryCapacity = [responseCopy minimumBatteryCapacity];
    currentBatteryCapacity = [responseCopy currentBatteryCapacity];
    maximumBatteryCapacity = [responseCopy maximumBatteryCapacity];
    consumptionFormulaArguments = [responseCopy consumptionFormulaArguments];
    v53 = consumptionFormulaArguments;
    if (consumptionFormulaArguments)
    {
      v57 = 0;
      v24 = [MEMORY[0x277CCAAA0] dataWithJSONObject:consumptionFormulaArguments options:0 error:&v57];
      v25 = v57;
      v26 = v25;
      if (!v24 || v25)
      {
        v29 = VGGetVirtualGarageLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v59 = v53;
          v60 = 2112;
          v61 = v26;
          _os_log_impl(&dword_270EC1000, v29, OS_LOG_TYPE_ERROR, "Failed to serialize VGVehicleArguments into a string. arguments: %@, error: %@", buf, 0x16u);
        }

        v30 = 0;
      }

      else
      {
        selfCopy = self;
        v28 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v24 encoding:4];
        v29 = VGGetOEMApplicationLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v30 = v28;
          v59 = v28;
          _os_log_impl(&dword_270EC1000, v29, OS_LOG_TYPE_INFO, "Serializing arguments as: %@", buf, 0xCu);
        }

        else
        {
          v30 = v28;
        }

        self = selfCopy;
      }
    }

    else
    {
      v26 = VGGetVirtualGarageLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_270EC1000, v26, OS_LOG_TYPE_INFO, "Tried to serialize nil arguments.", buf, 2u);
      }

      v30 = 0;
    }

    chargingFormulaArguments = [responseCopy chargingFormulaArguments];
    v52 = v12;
    v56 = v20;
    v50 = carIdentifier;
    v44 = chargingFormulaArguments;
    if (chargingFormulaArguments)
    {
      v32 = chargingFormulaArguments;
      v57 = 0;
      v33 = [MEMORY[0x277CCAAA0] dataWithJSONObject:chargingFormulaArguments options:0 error:&v57];
      v34 = v57;
      v35 = v34;
      if (!v33 || v34)
      {
        v37 = VGGetVirtualGarageLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v59 = v32;
          v60 = 2112;
          v61 = v35;
          _os_log_impl(&dword_270EC1000, v37, OS_LOG_TYPE_ERROR, "Failed to serialize VGVehicleArguments into a string. arguments: %@, error: %@", buf, 0x16u);
        }

        v36 = 0;
      }

      else
      {
        v36 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v33 encoding:4];
        v37 = VGGetOEMApplicationLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v59 = v36;
          _os_log_impl(&dword_270EC1000, v37, OS_LOG_TYPE_INFO, "Serializing arguments as: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v35 = VGGetVirtualGarageLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_270EC1000, v35, OS_LOG_TYPE_INFO, "Tried to serialize nil arguments.", buf, 2u);
      }

      v36 = 0;
    }

    charging = [responseCopy charging];
    bOOLValue = [charging BOOLValue];
    activeConnector = [responseCopy activeConnector];
    LOBYTE(v43) = bOOLValue;
    v17 = [(VGVehicleState *)v45 initWithIdentifier:carIdentifier2 dateOfUpdate:v56 origin:2 batteryPercentage:chargePercentRemaining currentEVRange:distanceRemainingElectric maxEVRange:maximumDistanceElectric minBatteryCapacity:minimumBatteryCapacity currentBatteryCapacity:currentBatteryCapacity maxBatteryCapacity:maximumBatteryCapacity consumptionArguments:v30 chargingArguments:v36 isCharging:v43 activeConnector:[(VGOEMApplication *)self _VGChargingConnectorTypeOptionFromINCarChargingConnectorType:activeConnector]];

    carIdentifier = v50;
    v16 = v52;
    goto LABEL_47;
  }

  if (!error)
  {
    v17 = 0;
    goto LABEL_48;
  }

  v15 = MEMORY[0x277CCA9B8];
  v16 = GEOErrorDomain();
  [v15 errorWithDomain:v16 code:-11 userInfo:0];
  *error = v17 = 0;
LABEL_47:

LABEL_48:
  v41 = *MEMORY[0x277D85DE8];

  return v17;
}

- (BOOL)_isValidConsumptionModelForResponse:(id)response
{
  v21 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = *MEMORY[0x277D0EA90];
  v6 = *(MEMORY[0x277D0EA90] + 8);
  if (GEOConfigGetBOOL())
  {
    v7 = GEOConfigGetString();
    consumptionFormulaArguments = [responseCopy consumptionFormulaArguments];
    v9 = [consumptionFormulaArguments objectForKeyedSubscript:v7];

    if (v9 && (-[VGOEMApplication allowedFormulaIDs](self, "allowedFormulaIDs"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 containsObject:v9], v10, (v11 & 1) != 0))
    {
      v12 = 1;
    }

    else
    {
      v13 = VGGetOEMApplicationLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        allowedFormulaIDs = [(VGOEMApplication *)self allowedFormulaIDs];
        v17 = 138412546;
        v18 = v9;
        v19 = 2112;
        v20 = allowedFormulaIDs;
        _os_log_impl(&dword_270EC1000, v13, OS_LOG_TYPE_ERROR, "Allowlisted formula IDs do not contain the formula in the Consumption Arguments. Current formula: %@, Allowed formula IDs: %@", &v17, 0x16u);
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

- (unint64_t)_VGChargingConnectorTypeOptionFromINCarChargingConnectorType:(id)type
{
  typeCopy = type;
  if (_connectorMapping_onceToken != -1)
  {
    dispatch_once(&_connectorMapping_onceToken, &__block_literal_global_1730);
  }

  v4 = _connectorMapping_s_connectorMapping;
  v5 = [v4 objectForKeyedSubscript:typeCopy];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:typeCopy];
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (unint64_t)_VGChargingConnectorTypeOptionsFromINCarChargingConnectorTypes:(id)types
{
  v21 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  if (_connectorMapping_onceToken != -1)
  {
    dispatch_once(&_connectorMapping_onceToken, &__block_literal_global_1730);
  }

  v4 = _connectorMapping_s_connectorMapping;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = typesCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v4 objectForKeyedSubscript:{v11, v16}];

        if (v12)
        {
          v13 = [v4 objectForKeyedSubscript:v11];
          v8 |= [v13 unsignedIntegerValue];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

- (VGOEMApplication)initWithIdentifier:(id)identifier applicationRecord:(id)record
{
  identifierCopy = identifier;
  recordCopy = record;
  v14.receiver = self;
  v14.super_class = VGOEMApplication;
  v9 = [(VGOEMApplication *)&v14 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("VGOEMApplicationQueue", v10);
    queue = v9->_queue;
    v9->_queue = v11;

    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v9->_applicationRecord, record);
  }

  return v9;
}

@end