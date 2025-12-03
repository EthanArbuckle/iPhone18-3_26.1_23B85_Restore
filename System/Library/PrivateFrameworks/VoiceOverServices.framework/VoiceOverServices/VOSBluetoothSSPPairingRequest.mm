@interface VOSBluetoothSSPPairingRequest
- (VOSBluetoothSSPPairingRequest)initWithDevice:(id)device andSpecifier:(id)specifier;
- (VOSBluetoothSSPPairingRequest)initWithDevice:(id)device andSpecifier:(id)specifier acceptPairingBlock:(id)block cancelPairingBlock:(id)pairingBlock;
- (id)_sanitizeNameForAlert:(id)alert;
- (void)dealloc;
- (void)setPairingStyle:(int)style andPasskey:(id)passkey;
- (void)showWithWindow:(id)window;
@end

@implementation VOSBluetoothSSPPairingRequest

- (VOSBluetoothSSPPairingRequest)initWithDevice:(id)device andSpecifier:(id)specifier
{
  deviceCopy = device;
  specifierCopy = specifier;
  v13.receiver = self;
  v13.super_class = VOSBluetoothSSPPairingRequest;
  v9 = [(VOSBluetoothSSPPairingRequest *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, device);
    objc_storeStrong(&v10->_specifier, specifier);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel_hidPairingResult_ name:*MEMORY[0x277CE7EC8] object:0];
  }

  return v10;
}

- (VOSBluetoothSSPPairingRequest)initWithDevice:(id)device andSpecifier:(id)specifier acceptPairingBlock:(id)block cancelPairingBlock:(id)pairingBlock
{
  deviceCopy = device;
  specifierCopy = specifier;
  blockCopy = block;
  pairingBlockCopy = pairingBlock;
  v22.receiver = self;
  v22.super_class = VOSBluetoothSSPPairingRequest;
  v15 = [(VOSBluetoothSSPPairingRequest *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_device, device);
    objc_storeStrong(&v16->_specifier, specifier);
    v17 = [blockCopy copy];
    acceptPairingBlock = v16->_acceptPairingBlock;
    v16->_acceptPairingBlock = v17;

    v19 = [pairingBlockCopy copy];
    cancelPairingBlock = v16->_cancelPairingBlock;
    v16->_cancelPairingBlock = v19;
  }

  return v16;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(VOSBluetoothSSPPairingRequest *)self dismiss];
  v4.receiver = self;
  v4.super_class = VOSBluetoothSSPPairingRequest;
  [(VOSBluetoothSSPPairingRequest *)&v4 dealloc];
}

- (id)_sanitizeNameForAlert:(id)alert
{
  alertCopy = alert;
  v4 = [MEMORY[0x277CCAC80] scannerWithString:alertCopy];
  illegalCharacterSet = [MEMORY[0x277CCA900] illegalCharacterSet];
  [v4 setCharactersToBeSkipped:illegalCharacterSet];

  string = [MEMORY[0x277CCAB68] string];
  string2 = [MEMORY[0x277CCAB68] string];
  while (1)
  {
    v8 = string2;
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v16 = string2;
    v10 = [v4 scanUpToCharactersFromSet:whitespaceAndNewlineCharacterSet intoString:&v16];
    string2 = v16;

    if (!v10)
    {
      break;
    }

    [string appendString:string2];
    whitespaceAndNewlineCharacterSet2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v12 = [v4 scanCharactersFromSet:whitespaceAndNewlineCharacterSet2 intoString:0];

    if (v12)
    {
      [string appendString:@" "];
    }
  }

  if ([string length] <= 0x32)
  {
    v13 = string;
  }

  else
  {
    v13 = [string substringToIndex:50];
  }

  v14 = v13;

  return v14;
}

- (void)setPairingStyle:(int)style andPasskey:(id)passkey
{
  passkeyCopy = passkey;
  v7 = VOSLocString(@"CANCEL");
  name = [(AXUIBluetoothDevice *)self->_device name];
  v9 = [(VOSBluetoothSSPPairingRequest *)self _sanitizeNameForAlert:name];

  self->_pairingStyle = style;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2050000000;
  v10 = getUIDeviceClass_softClass;
  v65 = getUIDeviceClass_softClass;
  if (!getUIDeviceClass_softClass)
  {
    v57 = MEMORY[0x277D85DD0];
    v58 = 3221225472;
    v59 = __getUIDeviceClass_block_invoke;
    v60 = &unk_2784F3710;
    v61 = &v62;
    __getUIDeviceClass_block_invoke(&v57);
    v10 = v63[3];
  }

  v11 = v10;
  _Block_object_dispose(&v62, 8);
  [v10 currentDevice];
  v50 = v49 = v9;
  v12 = 0;
  if (style > 1)
  {
    if (style == 2)
    {
      v29 = MEMORY[0x277CCACA8];
      v30 = VOSLocString(@"PASSKEY_TITLE");
      localizedModel = [v50 localizedModel];
      v15 = [v29 stringWithFormat:v30, v9, localizedModel];

      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%06u", objc_msgSend(passkeyCopy, "unsignedIntValue")];
      v32 = MEMORY[0x277CCACA8];
      v23 = VOSLocString(@"PASSKEY_MESSAGE");
      [v32 stringWithFormat:v23, v12, v9];
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      if (style != 3)
      {
        goto LABEL_13;
      }

      v19 = MEMORY[0x277CCACA8];
      v20 = VOSLocString(@"PASSKEY_TITLE");
      localizedModel2 = [v50 localizedModel];
      v15 = [v19 stringWithFormat:v20, v49, localizedModel2];

      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%04u", objc_msgSend(passkeyCopy, "unsignedIntValue")];
      v22 = MEMORY[0x277CCACA8];
      v23 = VOSLocString(@"HID_MESSAGE");
      [v22 stringWithFormat:v23, v12, v49];
    }
    v14 = ;

    v13 = 0;
  }

  else if (style)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    if (style == 1)
    {
      v16 = MEMORY[0x277CCACA8];
      v17 = VOSLocString(@"JUST_WORKS_TITLE");
      localizedModel3 = [v50 localizedModel];
      v15 = [v16 stringWithFormat:v17, v49, localizedModel3];

      v14 = VOSLocString(@"JUST_WORKS_MESSAGE");
      v13 = VOSLocString(@"JUST_WORKS_BUTTON");
      v12 = 0;
    }
  }

  else
  {
    v24 = MEMORY[0x277CCACA8];
    v25 = VOSLocString(@"NUMERIC_TITLE");
    localizedModel4 = [v50 localizedModel];
    v15 = [v24 stringWithFormat:v25, v9, localizedModel4];

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%06u", objc_msgSend(passkeyCopy, "unsignedIntValue")];
    v27 = MEMORY[0x277CCACA8];
    v28 = VOSLocString(@"NUMERIC_MESSAGE");
    v14 = [v27 stringWithFormat:v28, v12, v9];

    v13 = VOSLocString(@"NUMERIC_BUTTON");
  }

LABEL_13:
  v48 = passkeyCopy;
  acceptPairingBlock = [(VOSBluetoothSSPPairingRequest *)self acceptPairingBlock];
  v34 = acceptPairingBlock;
  if (!acceptPairingBlock)
  {
    acceptPairingBlock = aBlock;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__VOSBluetoothSSPPairingRequest_setPairingStyle_andPasskey___block_invoke;
    aBlock[3] = &unk_2784F3450;
    aBlock[4] = self;
  }

  v35 = _Block_copy(acceptPairingBlock);

  cancelPairingBlock = [(VOSBluetoothSSPPairingRequest *)self cancelPairingBlock];
  v37 = cancelPairingBlock;
  if (!cancelPairingBlock)
  {
    cancelPairingBlock = v55;
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __60__VOSBluetoothSSPPairingRequest_setPairingStyle_andPasskey___block_invoke_2;
    v55[3] = &unk_2784F3450;
    v55[4] = self;
  }

  v38 = _Block_copy(cancelPairingBlock);

  v62 = 0;
  v63 = &v62;
  v64 = 0x2050000000;
  v39 = getUIAlertControllerClass_softClass_0;
  v65 = getUIAlertControllerClass_softClass_0;
  if (!getUIAlertControllerClass_softClass_0)
  {
    v57 = MEMORY[0x277D85DD0];
    v58 = 3221225472;
    v59 = __getUIAlertControllerClass_block_invoke_0;
    v60 = &unk_2784F3710;
    v61 = &v62;
    __getUIAlertControllerClass_block_invoke_0(&v57);
    v39 = v63[3];
  }

  v40 = v39;
  _Block_object_dispose(&v62, 8);
  v41 = [v39 alertControllerWithTitle:v15 message:v14 preferredStyle:1];
  alert = self->_alert;
  self->_alert = v41;

  if (v13)
  {
    UIAlertActionClass = getUIAlertActionClass();
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __60__VOSBluetoothSSPPairingRequest_setPairingStyle_andPasskey___block_invoke_3;
    v53[3] = &unk_2784F3A08;
    v54 = v35;
    v44 = [UIAlertActionClass actionWithTitle:v13 style:0 handler:v53];
    [(UIAlertController *)self->_alert addAction:v44];
  }

  v45 = getUIAlertActionClass();
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __60__VOSBluetoothSSPPairingRequest_setPairingStyle_andPasskey___block_invoke_4;
  v51[3] = &unk_2784F3A08;
  v52 = v38;
  v46 = v38;
  v47 = [v45 actionWithTitle:v7 style:1 handler:v51];
  [(UIAlertController *)self->_alert addAction:v47];
}

void __60__VOSBluetoothSSPPairingRequest_setPairingStyle_andPasskey___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(*(a1 + 32) + 16) userInfo];
  v3 = __UIAccessibilityCastAsClass();

  [v3 setObject:@"accepted" forKey:@"PIN-ended"];
  v4 = *(a1 + 32);
  if (*(v4 + 32) != 3)
  {
    if (*(v4 + 8))
    {
      v5 = +[VOSBluetoothManager sharedInstance];
      [v5 acceptSSP:0 forDevice:*(*(a1 + 32) + 8)];
    }
  }
}

void __60__VOSBluetoothSSPPairingRequest_setPairingStyle_andPasskey___block_invoke_2(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(*(a1 + 32) + 16) userInfo];
  v3 = __UIAccessibilityCastAsClass();

  [v3 setObject:@"cancelled" forKey:@"PIN-ended"];
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  if (v5)
  {
    if (*(v4 + 32) == 3)
    {
      [v5 setPIN:0];
    }

    else
    {
      v6 = +[VOSBluetoothManager sharedInstance];
      [v6 acceptSSP:1 forDevice:*(*(a1 + 32) + 8)];
    }
  }
}

- (void)showWithWindow:(id)window
{
  rootViewController = [window rootViewController];
  [rootViewController presentViewController:self->_alert animated:1 completion:0];
}

@end