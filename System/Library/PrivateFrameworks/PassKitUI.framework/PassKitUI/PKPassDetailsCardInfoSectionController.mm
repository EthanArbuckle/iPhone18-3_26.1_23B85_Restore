@interface PKPassDetailsCardInfoSectionController
+ (BOOL)_paymentApplicationShouldShowFullDPANForPass:(id)pass paymentApplication:(id)application;
+ (BOOL)_shouldDisplayRow:(unint64_t)row forPass:(id)pass inContext:(id *)context;
+ (BOOL)_showExpressDetailsForPass:(id)pass expressMode:(BOOL)mode sectionMode:(unint64_t)sectionMode;
+ (BOOL)hasCompactDetailsForPaymentPass:(id)pass;
+ (unint64_t)_rowTypesForPass:(id)pass context:(id *)context outRows:(id *)rows;
- (BOOL)_isExpressSettingsLinkRowType:(unint64_t)type;
- (BOOL)_paymentApplicationShouldShowFullDPAN;
- (BOOL)_showExpressDetails;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
- (PKPassDetailsCardInfoSectionController)initWithPass:(id)pass sectionMode:(unint64_t)mode detailViewStyle:(int64_t)style delegate:(id)delegate;
- (PKPassDetailsCardInfoSectionControllerDelegate)delegate;
- (id)_cellForRowIndex:(unint64_t)index inTableView:(id)view;
- (id)_contextMenuConfigurationForCopyingText:(id)text;
- (id)allSectionIdentifiers;
- (id)sectionIdentifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point sectionIdentifier:(id)identifier;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
- (id)titleForHeaderInSectionIdentifier:(id)identifier;
- (void)_expressPassDidChange;
- (void)_reloadDataAndNotifyDelegate:(BOOL)delegate;
- (void)_updateExpressPassInformation;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
@end

@implementation PKPassDetailsCardInfoSectionController

+ (BOOL)hasCompactDetailsForPaymentPass:(id)pass
{
  v5 = 0;
  v4 = xmmword_1BE115740;
  return [self _rowTypesForPass:pass context:&v4 outRows:0] != 0;
}

- (PKPassDetailsCardInfoSectionController)initWithPass:(id)pass sectionMode:(unint64_t)mode detailViewStyle:(int64_t)style delegate:(id)delegate
{
  passCopy = pass;
  delegateCopy = delegate;
  v25.receiver = self;
  v25.super_class = PKPassDetailsCardInfoSectionController;
  v13 = [(PKPaymentPassDetailSectionController *)&v25 init];
  v14 = v13;
  if (v13)
  {
    v13->_sectionMode = mode;
    objc_storeStrong(&v13->_pass, pass);
    devicePrimaryPaymentApplication = [(PKPaymentPass *)v14->_pass devicePrimaryPaymentApplication];
    paymentApplication = v14->_paymentApplication;
    v14->_paymentApplication = devicePrimaryPaymentApplication;

    v14->_detailViewStyle = style;
    objc_storeWeak(&v14->_delegate, delegateCopy);
    v17 = objc_alloc_init(MEMORY[0x1E69B8A60]);
    passLibraryDataProvider = v14->_passLibraryDataProvider;
    v14->_passLibraryDataProvider = v17;

    defaultDataProvider = [MEMORY[0x1E69B8BD8] defaultDataProvider];
    paymentServiceDataProvider = v14->_paymentServiceDataProvider;
    v14->_paymentServiceDataProvider = defaultDataProvider;

    v21 = [objc_alloc(MEMORY[0x1E69B8850]) initWithPaymentDataProvider:v14->_paymentServiceDataProvider passLibraryDataProvider:v14->_passLibraryDataProvider isForWatch:v14->_detailViewStyle == 2];
    expressPassController = v14->_expressPassController;
    v14->_expressPassController = v21;

    [(PKPassDetailsCardInfoSectionController *)v14 _updateExpressPassInformation];
    if ([(PKPassDetailsCardInfoSectionController *)v14 _showExpressDetails])
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v14 selector:sel__expressPassDidChange name:@"PKExpressPassesViewControllerExpressPassChangedNotification" object:0];
    }

    [(PKPassDetailsCardInfoSectionController *)v14 _reloadDataAndNotifyDelegate:0];
  }

  return v14;
}

- (id)allSectionIdentifiers
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"CardInfoSection";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)sectionIdentifiers
{
  if ([(PKPaymentPassDetailSectionController *)self currentSegment])
  {
    allSectionIdentifiers = MEMORY[0x1E695E0F0];
  }

  else
  {
    allSectionIdentifiers = [(PKPassDetailsCardInfoSectionController *)self allSectionIdentifiers];
  }

  return allSectionIdentifiers;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  viewCopy = view;
  pathCopy = path;
  identifierCopy = identifier;
  result = PKEqualObjects();
  if (result)
  {
    v12 = -[PKPassDetailsCardInfoSectionController _cellForRowIndex:inTableView:](self, "_cellForRowIndex:inTableView:", [pathCopy row], viewCopy);

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  viewCopy = view;
  pathCopy = path;
  identifierCopy = identifier;
  if (PKEqualObjects())
  {
    v10 = -[NSArray objectAtIndexedSubscript:](self->_rowTypes, "objectAtIndexedSubscript:", [pathCopy row]);
    unsignedIntegerValue = [v10 unsignedIntegerValue];

    if (unsignedIntegerValue >= 4)
    {
      if (unsignedIntegerValue == 5)
      {
        selfCopy2 = self;
        v13 = 5;
      }

      else
      {
        if (unsignedIntegerValue != 4)
        {
          __break(1u);
          return;
        }

        selfCopy2 = self;
        v13 = 4;
      }

      if ([(PKPassDetailsCardInfoSectionController *)selfCopy2 _isExpressSettingsLinkRowType:v13])
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained cardInfoSectionControllerDidSelectExpressPassSettings:self];
      }
    }
  }
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  viewCopy = view;
  pathCopy = path;
  identifierCopy = identifier;
  if (!PKEqualObjects() || (-[NSArray objectAtIndexedSubscript:](self->_rowTypes, "objectAtIndexedSubscript:", [pathCopy row]), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "unsignedIntegerValue"), v11, v12 < 4))
  {
    v14 = 0;
LABEL_4:

    return v14;
  }

  if (v12 - 4 <= 1)
  {
    v14 = [(PKPassDetailsCardInfoSectionController *)self _isExpressSettingsLinkRowType:v12];
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

- (id)titleForHeaderInSectionIdentifier:(id)identifier
{
  if (self->_hideSectionTitles || (-[PKPaymentPass associatedAccountServiceAccountIdentifier](self->_pass, "associatedAccountServiceAccountIdentifier", identifier), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 length], v4, v5))
  {
    v6 = 0;
  }

  else
  {
    v6 = PKLocalizedPaymentString(&cfstr_CardInfoHeader.isa);
    if ([(PKPaymentPass *)self->_pass supportsBarcodePayment])
    {
      v8 = PKLocalizedAquamanString(&cfstr_PassInfoHeader.isa);

      v6 = v8;
    }
  }

  return v6;
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  v5 = [MEMORY[0x1E69DCFC0] configurationWithActions:{0, path, identifier}];
  [v5 setPerformsFirstActionWithFullSwipe:0];

  return v5;
}

- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point sectionIdentifier:(id)identifier
{
  viewCopy = view;
  pathCopy = path;
  identifierCopy = identifier;
  if (PKEqualObjects())
  {
    v12 = -[NSArray objectAtIndexedSubscript:](self->_rowTypes, "objectAtIndexedSubscript:", [pathCopy row]);
    unsignedIntegerValue = [v12 unsignedIntegerValue];

    if (unsignedIntegerValue > 5)
    {
      __break(1u);
      return result;
    }

    if (((1 << unsignedIntegerValue) & 0x33) == 0)
    {
      if (unsignedIntegerValue == 2)
      {
        sanitizedDPAN = [(PKPaymentApplication *)self->_paymentApplication sanitizedDPAN];
        if (sanitizedDPAN && [(PKPassDetailsCardInfoSectionController *)self _paymentApplicationShouldShowFullDPAN])
        {
          v17 = PKFormattedSanitizedPAN();
          v15 = [(PKPassDetailsCardInfoSectionController *)self _contextMenuConfigurationForCopyingText:v17];

LABEL_15:
          goto LABEL_5;
        }
      }

      else
      {
        sanitizedDPAN = [(PKPaymentPass *)self->_pass customerServiceIdentifier];
        if ([sanitizedDPAN length])
        {
          v15 = [(PKPassDetailsCardInfoSectionController *)self _contextMenuConfigurationForCopyingText:sanitizedDPAN];
          goto LABEL_15;
        }
      }

      v15 = 0;
      goto LABEL_15;
    }
  }

  v15 = 0;
LABEL_5:

  return v15;
}

- (void)_reloadDataAndNotifyDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  sectionMode = self->_sectionMode;
  detailViewStyle = self->_detailViewStyle;
  if (self->_expressModeSupported)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  v8 = objc_opt_class();
  pass = self->_pass;
  v11[0] = sectionMode;
  v11[1] = detailViewStyle;
  v11[2] = v7;
  self->_numberOfRows = [v8 _rowTypesForPass:pass context:v11 outRows:&self->_rowTypes];
  if (delegateCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained reloadSectionIdentifier:@"CardInfoSection"];
  }
}

+ (unint64_t)_rowTypesForPass:(id)pass context:(id *)context outRows:(id *)rows
{
  passCopy = pass;
  if ([passCopy isAccessPass])
  {
    v9 = 0;
  }

  else
  {
    if (rows)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v10 = 0;
    }

    v11 = 0;
    v9 = 0;
    do
    {
      v16 = *&context->var0;
      var2 = context->var2;
      if ([self _shouldDisplayRow:v11 forPass:passCopy inContext:&v16])
      {
        if (v10)
        {
          v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
          [v10 addObject:v12];
        }

        ++v9;
      }

      ++v11;
    }

    while (v11 != 6);
    if (rows)
    {
      v13 = [v10 copy];
      v14 = *rows;
      *rows = v13;
    }
  }

  return v9;
}

+ (BOOL)_shouldDisplayRow:(unint64_t)row forPass:(id)pass inContext:(id *)context
{
  passCopy = pass;
  v9 = passCopy;
  if (row > 2)
  {
    switch(row)
    {
      case 3uLL:
        customerServiceIdentifier = [passCopy customerServiceIdentifier];
        v10 = customerServiceIdentifier != 0;

        goto LABEL_21;
      case 4uLL:
        if (context->var2)
        {
          supportsBarcodePayment = [objc_opt_class() _showExpressDetailsForPass:passCopy expressMode:context->var2 == 1 sectionMode:context->var0];
          goto LABEL_16;
        }

        break;
      case 5uLL:
        if (!context->var1)
        {
          v19 = *&context->var0;
          var2 = context->var2;
          supportsBarcodePayment = [self _shouldDisplayRow:4 forPass:passCopy inContext:&v19];
LABEL_16:
          v10 = supportsBarcodePayment;
          goto LABEL_21;
        }

        break;
      default:
        goto LABEL_31;
    }

    v10 = 0;
    goto LABEL_21;
  }

  if (!row)
  {
    primaryAccountNumberSuffix = [passCopy fieldForKey:*MEMORY[0x1E69BC0D0]];
    value = [primaryAccountNumberSuffix value];
    v10 = value != 0;

LABEL_19:
    goto LABEL_21;
  }

  if (row == 1)
  {
    supportsBarcodePayment = [passCopy supportsBarcodePayment];
    goto LABEL_16;
  }

  if (row != 2)
  {
LABEL_31:
    __break(1u);
    return passCopy;
  }

  if (([passCopy isSuicaPass] & 1) == 0 && (objc_msgSend(v9, "isOctopusPass") & 1) == 0)
  {
    primaryAccountNumberSuffix = [v9 primaryAccountNumberSuffix];
    if (primaryAccountNumberSuffix)
    {
      v10 = 1;
    }

    else
    {
      sanitizedPrimaryAccountNumber = [v9 sanitizedPrimaryAccountNumber];
      if (sanitizedPrimaryAccountNumber)
      {
        v10 = 1;
      }

      else
      {
        sanitizedPrimaryAccountName = [v9 sanitizedPrimaryAccountName];
        if (sanitizedPrimaryAccountName)
        {
          v10 = 1;
        }

        else
        {
          devicePrimaryPaymentApplication = [v9 devicePrimaryPaymentApplication];
          v10 = [self _paymentApplicationShouldShowFullDPANForPass:v9 paymentApplication:devicePrimaryPaymentApplication];
        }
      }
    }

    goto LABEL_19;
  }

  v10 = 1;
LABEL_21:

  LOBYTE(passCopy) = v10;
  return passCopy;
}

- (id)_cellForRowIndex:(unint64_t)index inTableView:(id)view
{
  viewCopy = view;
  v7 = [(NSArray *)self->_rowTypes objectAtIndexedSubscript:index];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  if (unsignedIntegerValue <= 2)
  {
    switch(unsignedIntegerValue)
    {
      case 0:
        customerServiceIdentifier = [(PKPaymentPass *)self->_pass fieldForKey:*MEMORY[0x1E69BC0D0]];
        value = [customerServiceIdentifier value];
        if (PKHandsOnDemoModeEnabled() && (PKFakeCardholderName(), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v23 length], v23, v24))
        {
          v25 = PKFakeCardholderName();
        }

        else
        {
          v25 = value;
        }

        v28 = v25;
        v29 = PKLocalizedPaymentString(&cfstr_CardInfoName.isa);
        v14 = -[PKPaymentPassDetailSectionController infoCellWithPrimaryText:detailText:cellStyle:forTableView:](self, "infoCellWithPrimaryText:detailText:cellStyle:forTableView:", v29, v28, [customerServiceIdentifier cellStyle], viewCopy);

        goto LABEL_34;
      case 1:
        customerServiceIdentifier = PKSanitizedPrimaryAccountRepresentationForPass();
        organizationName = [(PKPaymentPass *)self->_pass organizationName];
        value = PKLocalizedAquamanString(&cfstr_PassInfoAccoun.isa, &stru_1F3BD5BF0.isa, organizationName);

        selfCopy2 = self;
        v18 = value;
        v19 = customerServiceIdentifier;
LABEL_33:
        v14 = [(PKPaymentPassDetailSectionController *)selfCopy2 infoCellWithPrimaryText:v18 detailText:v19 cellStyle:1 reuseIdentifier:@"cardNumberCell" forTableView:viewCopy];
        detailTextLabel = [v14 detailTextLabel];
        [detailTextLabel setAdjustsFontSizeToFitWidth:1];

LABEL_34:
        goto LABEL_35;
      case 2:
        customerServiceIdentifier = PKLocalizedPaymentString(&cfstr_CardInfoNumber.isa);
        if ([(PKPaymentPass *)self->_pass isSuicaPass])
        {
          sanitizedDPAN = [(PKPaymentApplication *)self->_paymentApplication sanitizedDPAN];
          if (sanitizedDPAN)
          {
            v12 = sanitizedDPAN;
            isOctopusPass = [(PKPaymentPass *)self->_pass isOctopusPass];

            if ((isOctopusPass & 1) == 0)
            {
              goto LABEL_27;
            }
          }
        }

        else if (![(PKPaymentPass *)self->_pass isOctopusPass])
        {
LABEL_27:
          primaryAccountNumberSuffix = [(PKPaymentPass *)self->_pass primaryAccountNumberSuffix];
          if (primaryAccountNumberSuffix || ([(PKPaymentPass *)self->_pass sanitizedPrimaryAccountNumber], (primaryAccountNumberSuffix = objc_claimAutoreleasedReturnValue()) != 0))
          {
          }

          else
          {
            sanitizedPrimaryAccountName = [(PKPaymentPass *)self->_pass sanitizedPrimaryAccountName];

            if (!sanitizedPrimaryAccountName)
            {
              if ([(PKPassDetailsCardInfoSectionController *)self _paymentApplicationShouldShowFullDPAN])
              {
                sanitizedDPAN2 = [(PKPaymentApplication *)self->_paymentApplication sanitizedDPAN];
                value = PKFormattedSanitizedPAN();

                v35 = PKLocalizedPaymentString(&cfstr_CardInfoDigita.isa);

                customerServiceIdentifier = v35;
              }

              else
              {
                value = 0;
              }

              goto LABEL_32;
            }
          }

          v30 = PKSanitizedPrimaryAccountRepresentationForPass();
LABEL_31:
          value = v30;
LABEL_32:
          selfCopy2 = self;
          v18 = customerServiceIdentifier;
          v19 = value;
          goto LABEL_33;
        }

        v30 = PKSanitizedDeviceAccountNumberForPaymentApplication();
        goto LABEL_31;
    }

LABEL_43:
    __break(1u);
    return result;
  }

  switch(unsignedIntegerValue)
  {
    case 3:
      customerServiceIdentifier = [(PKPaymentPass *)self->_pass customerServiceIdentifier];
      v26 = PKPassLocalizedStringWithFormat();
      v14 = [(PKPaymentPassDetailSectionController *)self infoCellWithPrimaryText:v26 detailText:customerServiceIdentifier cellStyle:1 reuseIdentifier:@"PKTableViewCellReuseIdentifierCustomerServiceIdentifier" forTableView:viewCopy, 0];

      detailTextLabel2 = [v14 detailTextLabel];
      [detailTextLabel2 setAdjustsFontSizeToFitWidth:1];

      break;
    case 4:
      v20 = PKLocalizedPaymentString(&cfstr_ExpressTransit.isa);
      if (self->_expressModeEnabled)
      {
        v21 = @"EXPRESS_MODE_STATE_ON";
      }

      else
      {
        v21 = @"EXPRESS_MODE_STATE_OFF";
      }

      v22 = PKLocalizedPaymentString(&v21->isa);
      v14 = [(PKPaymentPassDetailSectionController *)self infoCellWithPrimaryText:v20 detailText:v22 cellStyle:1 reuseIdentifier:@"expressState" forTableView:viewCopy];

      if ([(PKPassDetailsCardInfoSectionController *)self _isExpressSettingsLinkRowType:4])
      {
        [v14 setAccessoryType:1];
      }

      goto LABEL_36;
    case 5:
      customerServiceIdentifier = PKLocalizedPaymentString(&cfstr_ExpressTransit_0.isa);
      v14 = [(PKPaymentPassDetailSectionController *)self linkCellWithText:customerServiceIdentifier forTableView:viewCopy];
      break;
    default:
      goto LABEL_43;
  }

LABEL_35:

LABEL_36:

  return v14;
}

+ (BOOL)_showExpressDetailsForPass:(id)pass expressMode:(BOOL)mode sectionMode:(unint64_t)sectionMode
{
  isAccessPass = [pass isAccessPass];
  if (sectionMode)
  {
    modeCopy = 0;
  }

  else
  {
    modeCopy = mode;
  }

  return (isAccessPass & 1) == 0 && modeCopy;
}

- (BOOL)_showExpressDetails
{
  v3 = objc_opt_class();
  pass = self->_pass;
  expressModeSupported = self->_expressModeSupported;
  sectionMode = self->_sectionMode;

  return [v3 _showExpressDetailsForPass:pass expressMode:expressModeSupported sectionMode:sectionMode];
}

+ (BOOL)_paymentApplicationShouldShowFullDPANForPass:(id)pass paymentApplication:(id)application
{
  passCopy = pass;
  applicationCopy = application;
  sanitizedDPAN = [applicationCopy sanitizedDPAN];
  if (sanitizedDPAN)
  {
    appletDataFormat = [applicationCopy appletDataFormat];
    if (PKEqualObjects())
    {
      isSuicaPass = 1;
    }

    else
    {
      appletDataFormat2 = [applicationCopy appletDataFormat];
      if (PKEqualObjects())
      {
        isSuicaPass = 1;
      }

      else
      {
        appletDataFormat3 = [applicationCopy appletDataFormat];
        if (PKEqualObjects() & 1) != 0 || ([passCopy isEMoneyPass])
        {
          isSuicaPass = 1;
        }

        else
        {
          isSuicaPass = [passCopy isSuicaPass];
        }
      }
    }
  }

  else
  {
    isSuicaPass = 0;
  }

  return isSuicaPass;
}

- (BOOL)_paymentApplicationShouldShowFullDPAN
{
  v3 = objc_opt_class();
  pass = self->_pass;
  paymentApplication = self->_paymentApplication;

  return [v3 _paymentApplicationShouldShowFullDPANForPass:pass paymentApplication:paymentApplication];
}

- (void)_expressPassDidChange
{
  v3 = [(PKExpressPassController *)self->_expressPassController existingExpressPassConfigurationForPass:self->_pass];
  v4 = v3 != 0;

  if (self->_expressModeEnabled != v4)
  {
    self->_expressModeEnabled = v4;

    [(PKPassDetailsCardInfoSectionController *)self _reloadDataAndNotifyDelegate:1];
  }
}

- (void)_updateExpressPassInformation
{
  if ((PKIsPad() & 1) == 0)
  {
    if (([(PKExpressPassController *)self->_expressPassController isExpressModeSupportedForPass:self->_pass]& 1) != 0)
    {
      v3 = 1;
    }

    else
    {
      v3 = [(PKExpressPassController *)self->_expressPassController hasEligibleExpressUpgradeRequestForPass:self->_pass];
    }

    self->_expressModeSupported = v3;
    v4 = [(PKExpressPassController *)self->_expressPassController existingExpressPassConfigurationForPass:self->_pass];
    self->_expressModeEnabled = v4 != 0;
  }
}

- (BOOL)_isExpressSettingsLinkRowType:(unint64_t)type
{
  if (type >= 4)
  {
    if (type == 5)
    {
      LOBYTE(self) = self->_detailViewStyle == 0;
    }

    else if (type == 4)
    {
      LOBYTE(self) = self->_detailViewStyle != 0;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    LOBYTE(self) = 0;
  }

  return self;
}

- (id)_contextMenuConfigurationForCopyingText:(id)text
{
  textCopy = text;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__PKPassDetailsCardInfoSectionController__contextMenuConfigurationForCopyingText___block_invoke;
  aBlock[3] = &unk_1E8016090;
  v9 = textCopy;
  v4 = textCopy;
  v5 = _Block_copy(aBlock);
  v6 = [MEMORY[0x1E69DC8D8] configurationWithIdentifier:0 previewProvider:0 actionProvider:v5];

  return v6;
}

id __82__PKPassDetailsCardInfoSectionController__contextMenuConfigurationForCopyingText___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = MEMORY[0x1E69DC628];
    v3 = PKLocalizedString(&cfstr_MenuActionCopy.isa);
    v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"document.on.document"];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __82__PKPassDetailsCardInfoSectionController__contextMenuConfigurationForCopyingText___block_invoke_2;
    v10[3] = &unk_1E8016068;
    v11 = *(a1 + 32);
    v5 = [v2 actionWithTitle:v3 image:v4 identifier:0 handler:v10];

    v6 = MEMORY[0x1E69DCC60];
    v12[0] = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v8 = [v6 menuWithTitle:&stru_1F3BD7330 children:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __82__PKPassDetailsCardInfoSectionController__contextMenuConfigurationForCopyingText___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DCD50] generalPasteboard];
  [v2 setString:*(a1 + 32)];
}

- (PKPassDetailsCardInfoSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end