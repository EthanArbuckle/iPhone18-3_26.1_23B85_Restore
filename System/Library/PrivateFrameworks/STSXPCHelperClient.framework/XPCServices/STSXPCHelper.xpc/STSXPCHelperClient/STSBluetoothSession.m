@interface STSBluetoothSession
- (BOOL)isConnected;
- (void)altCarrierSendData:(id)a3 completion:(id)a4;
- (void)connectionEstablishmentTimedout;
- (void)sessionTimedout;
@end

@implementation STSBluetoothSession

- (void)altCarrierSendData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(STSBluetoothSession *)self isConnected])
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSBluetoothSession altCarrierSendData:completion:]", 297, self, @"Not connected", v8, v9, v24);
    v28 = NSLocalizedDescriptionKey;
    v29 = off_100069A80;
    v14 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v11 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:8 userInfo:v14];

    v7[2](v7, v11);
    goto LABEL_24;
  }

  sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSBluetoothSession altCarrierSendData:completion:]", 302, self, &stru_100059C08, v8, v9, v24);
  v26 = @"responseSize";
  v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 length]);
  v27 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];

  v12 = +[STSAnalyticsLogger sharedCALogger];
  [v12 postISOTransactionEvent:v11 prepOnly:1];

  if (!self)
  {
    readerCentralInstance = 0;
LABEL_15:
    if (sub_10002F370(readerCentralInstance, v6))
    {
      p_lock = &self->_lock;
      os_unfair_lock_lock(&self->_lock);
      if (!self)
      {
        os_unfair_lock_unlock(p_lock);
        goto LABEL_24;
      }

      goto LABEL_20;
    }

LABEL_22:
    v28 = NSLocalizedDescriptionKey;
    v29 = off_100069AB8;
    v15 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v16 = 15;
    goto LABEL_23;
  }

  type = self->_type;
  if (type <= 1)
  {
    if (type)
    {
      if (type == 1)
      {
        if ((sub_1000079A4(self->_readerPeripheralInstance, v6) & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_19;
      }

LABEL_13:
      v28 = NSLocalizedDescriptionKey;
      v29 = off_100069A50;
      v15 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v16 = 2;
LABEL_23:
      v23 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:v16 userInfo:v15];

      v7[2](v7, v23);
      goto LABEL_24;
    }

    readerCentralInstance = self->_readerCentralInstance;
    goto LABEL_15;
  }

  if (type == 2)
  {
    if ((sub_10002F2E8(self->_isoCentralInstance, v6) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (type != 3)
    {
      goto LABEL_13;
    }

    if ((sub_10001748C(self->_isoPeripheralInstance, v6) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

LABEL_19:
  p_lock = &self->_lock;
  os_unfair_lock_lock(&self->_lock);
LABEL_20:
  v19 = self->_sendCompletionHandler;
  objc_setProperty_nonatomic_copy(self, v20, v7, 80);
  os_unfair_lock_unlock(p_lock);
  if (v19)
  {
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSBluetoothSession altCarrierSendData:completion:]", 339, self, @"Flush last completion handler", v21, v22, v25);
    v19[2](v19, 0);
  }

LABEL_24:
}

- (void)connectionEstablishmentTimedout
{
  if (self)
  {
    [(ISO18013_3_Central *)self->_readerCentralInstance invalidateAndUpdateStateSignal:1 reason:3];
    [(ReaderPeripheral *)self->_readerPeripheralInstance invalidateAndUpdateStateSignal:1 reason:3];
    [(ISO18013_3_Central *)self->_isoCentralInstance invalidateAndUpdateStateSignal:1 reason:3];
    isoPeripheralInstance = self->_isoPeripheralInstance;
  }

  else
  {
    [0 invalidateAndUpdateStateSignal:1 reason:3];
    [0 invalidateAndUpdateStateSignal:1 reason:3];
    [0 invalidateAndUpdateStateSignal:1 reason:3];
    isoPeripheralInstance = 0;
  }

  [(ISO18013_3_Peripheral *)isoPeripheralInstance invalidateAndUpdateStateSignal:1 reason:3];
}

- (void)sessionTimedout
{
  if (self)
  {
    [(ISO18013_3_Central *)self->_readerCentralInstance invalidateAndUpdateStateSignal:1 reason:3];
    [(ReaderPeripheral *)self->_readerPeripheralInstance invalidateAndUpdateStateSignal:1 reason:3];
    [(ISO18013_3_Central *)self->_isoCentralInstance invalidateAndUpdateStateSignal:1 reason:3];
    isoPeripheralInstance = self->_isoPeripheralInstance;
  }

  else
  {
    [0 invalidateAndUpdateStateSignal:1 reason:3];
    [0 invalidateAndUpdateStateSignal:1 reason:3];
    [0 invalidateAndUpdateStateSignal:1 reason:3];
    isoPeripheralInstance = 0;
  }

  [(ISO18013_3_Peripheral *)isoPeripheralInstance invalidateAndUpdateStateSignal:1 reason:3];
}

- (BOOL)isConnected
{
  os_unfair_lock_lock(&self->_lock);
  isConnected = self->_isConnected;
  os_unfair_lock_unlock(&self->_lock);
  return isConnected;
}

@end