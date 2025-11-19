@interface PKPassDetailsCardInfoSectionController
+ (BOOL)_paymentApplicationShouldShowFullDPANForPass:(id)a3 paymentApplication:(id)a4;
+ (BOOL)_shouldDisplayRow:(unint64_t)a3 forPass:(id)a4 inContext:(id *)a5;
+ (BOOL)_showExpressDetailsForPass:(id)a3 expressMode:(BOOL)a4 sectionMode:(unint64_t)a5;
+ (BOOL)hasCompactDetailsForPaymentPass:(id)a3;
+ (unint64_t)_rowTypesForPass:(id)a3 context:(id *)a4 outRows:(id *)a5;
- (BOOL)_isExpressSettingsLinkRowType:(unint64_t)a3;
- (BOOL)_paymentApplicationShouldShowFullDPAN;
- (BOOL)_showExpressDetails;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5;
- (PKPassDetailsCardInfoSectionController)initWithPass:(id)a3 sectionMode:(unint64_t)a4 detailViewStyle:(int64_t)a5 delegate:(id)a6;
- (PKPassDetailsCardInfoSectionControllerDelegate)delegate;
- (id)_cellForRowIndex:(unint64_t)a3 inTableView:(id)a4;
- (id)_contextMenuConfigurationForCopyingText:(id)a3;
- (id)allSectionIdentifiers;
- (id)sectionIdentifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5;
- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5 sectionIdentifier:(id)a6;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5;
- (id)titleForHeaderInSectionIdentifier:(id)a3;
- (void)_expressPassDidChange;
- (void)_reloadDataAndNotifyDelegate:(BOOL)a3;
- (void)_updateExpressPassInformation;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5;
@end

@implementation PKPassDetailsCardInfoSectionController

+ (BOOL)hasCompactDetailsForPaymentPass:(id)a3
{
  v5 = 0;
  v4 = xmmword_1BE115740;
  return [a1 _rowTypesForPass:a3 context:&v4 outRows:0] != 0;
}

- (PKPassDetailsCardInfoSectionController)initWithPass:(id)a3 sectionMode:(unint64_t)a4 detailViewStyle:(int64_t)a5 delegate:(id)a6
{
  v11 = a3;
  v12 = a6;
  v25.receiver = self;
  v25.super_class = PKPassDetailsCardInfoSectionController;
  v13 = [(PKPaymentPassDetailSectionController *)&v25 init];
  v14 = v13;
  if (v13)
  {
    v13->_sectionMode = a4;
    objc_storeStrong(&v13->_pass, a3);
    v15 = [(PKPaymentPass *)v14->_pass devicePrimaryPaymentApplication];
    paymentApplication = v14->_paymentApplication;
    v14->_paymentApplication = v15;

    v14->_detailViewStyle = a5;
    objc_storeWeak(&v14->_delegate, v12);
    v17 = objc_alloc_init(MEMORY[0x1E69B8A60]);
    passLibraryDataProvider = v14->_passLibraryDataProvider;
    v14->_passLibraryDataProvider = v17;

    v19 = [MEMORY[0x1E69B8BD8] defaultDataProvider];
    paymentServiceDataProvider = v14->_paymentServiceDataProvider;
    v14->_paymentServiceDataProvider = v19;

    v21 = [objc_alloc(MEMORY[0x1E69B8850]) initWithPaymentDataProvider:v14->_paymentServiceDataProvider passLibraryDataProvider:v14->_passLibraryDataProvider isForWatch:v14->_detailViewStyle == 2];
    expressPassController = v14->_expressPassController;
    v14->_expressPassController = v21;

    [(PKPassDetailsCardInfoSectionController *)v14 _updateExpressPassInformation];
    if ([(PKPassDetailsCardInfoSectionController *)v14 _showExpressDetails])
    {
      v23 = [MEMORY[0x1E696AD88] defaultCenter];
      [v23 addObserver:v14 selector:sel__expressPassDidChange name:@"PKExpressPassesViewControllerExpressPassChangedNotification" object:0];
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
    v3 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v3 = [(PKPassDetailsCardInfoSectionController *)self allSectionIdentifiers];
  }

  return v3;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  result = PKEqualObjects();
  if (result)
  {
    v12 = -[PKPassDetailsCardInfoSectionController _cellForRowIndex:inTableView:](self, "_cellForRowIndex:inTableView:", [v9 row], v8);

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  if (PKEqualObjects())
  {
    v10 = -[NSArray objectAtIndexedSubscript:](self->_rowTypes, "objectAtIndexedSubscript:", [v8 row]);
    v11 = [v10 unsignedIntegerValue];

    if (v11 >= 4)
    {
      if (v11 == 5)
      {
        v12 = self;
        v13 = 5;
      }

      else
      {
        if (v11 != 4)
        {
          __break(1u);
          return;
        }

        v12 = self;
        v13 = 4;
      }

      if ([(PKPassDetailsCardInfoSectionController *)v12 _isExpressSettingsLinkRowType:v13])
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained cardInfoSectionControllerDidSelectExpressPassSettings:self];
      }
    }
  }
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!PKEqualObjects() || (-[NSArray objectAtIndexedSubscript:](self->_rowTypes, "objectAtIndexedSubscript:", [v9 row]), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "unsignedIntegerValue"), v11, v12 < 4))
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

- (id)titleForHeaderInSectionIdentifier:(id)a3
{
  if (self->_hideSectionTitles || (-[PKPaymentPass associatedAccountServiceAccountIdentifier](self->_pass, "associatedAccountServiceAccountIdentifier", a3), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 length], v4, v5))
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

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5
{
  v5 = [MEMORY[0x1E69DCFC0] configurationWithActions:{0, a4, a5}];
  [v5 setPerformsFirstActionWithFullSwipe:0];

  return v5;
}

- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5 sectionIdentifier:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if (PKEqualObjects())
  {
    v12 = -[NSArray objectAtIndexedSubscript:](self->_rowTypes, "objectAtIndexedSubscript:", [v10 row]);
    v13 = [v12 unsignedIntegerValue];

    if (v13 > 5)
    {
      __break(1u);
      return result;
    }

    if (((1 << v13) & 0x33) == 0)
    {
      if (v13 == 2)
      {
        v16 = [(PKPaymentApplication *)self->_paymentApplication sanitizedDPAN];
        if (v16 && [(PKPassDetailsCardInfoSectionController *)self _paymentApplicationShouldShowFullDPAN])
        {
          v17 = PKFormattedSanitizedPAN();
          v15 = [(PKPassDetailsCardInfoSectionController *)self _contextMenuConfigurationForCopyingText:v17];

LABEL_15:
          goto LABEL_5;
        }
      }

      else
      {
        v16 = [(PKPaymentPass *)self->_pass customerServiceIdentifier];
        if ([v16 length])
        {
          v15 = [(PKPassDetailsCardInfoSectionController *)self _contextMenuConfigurationForCopyingText:v16];
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

- (void)_reloadDataAndNotifyDelegate:(BOOL)a3
{
  v3 = a3;
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
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained reloadSectionIdentifier:@"CardInfoSection"];
  }
}

+ (unint64_t)_rowTypesForPass:(id)a3 context:(id *)a4 outRows:(id *)a5
{
  v8 = a3;
  if ([v8 isAccessPass])
  {
    v9 = 0;
  }

  else
  {
    if (a5)
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
      v16 = *&a4->var0;
      var2 = a4->var2;
      if ([a1 _shouldDisplayRow:v11 forPass:v8 inContext:&v16])
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
    if (a5)
    {
      v13 = [v10 copy];
      v14 = *a5;
      *a5 = v13;
    }
  }

  return v9;
}

+ (BOOL)_shouldDisplayRow:(unint64_t)a3 forPass:(id)a4 inContext:(id *)a5
{
  v8 = a4;
  v9 = v8;
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3uLL:
        v14 = [v8 customerServiceIdentifier];
        v10 = v14 != 0;

        goto LABEL_21;
      case 4uLL:
        if (a5->var2)
        {
          v11 = [objc_opt_class() _showExpressDetailsForPass:v8 expressMode:a5->var2 == 1 sectionMode:a5->var0];
          goto LABEL_16;
        }

        break;
      case 5uLL:
        if (!a5->var1)
        {
          v19 = *&a5->var0;
          var2 = a5->var2;
          v11 = [a1 _shouldDisplayRow:4 forPass:v8 inContext:&v19];
LABEL_16:
          v10 = v11;
          goto LABEL_21;
        }

        break;
      default:
        goto LABEL_31;
    }

    v10 = 0;
    goto LABEL_21;
  }

  if (!a3)
  {
    v12 = [v8 fieldForKey:*MEMORY[0x1E69BC0D0]];
    v13 = [v12 value];
    v10 = v13 != 0;

LABEL_19:
    goto LABEL_21;
  }

  if (a3 == 1)
  {
    v11 = [v8 supportsBarcodePayment];
    goto LABEL_16;
  }

  if (a3 != 2)
  {
LABEL_31:
    __break(1u);
    return v8;
  }

  if (([v8 isSuicaPass] & 1) == 0 && (objc_msgSend(v9, "isOctopusPass") & 1) == 0)
  {
    v12 = [v9 primaryAccountNumberSuffix];
    if (v12)
    {
      v10 = 1;
    }

    else
    {
      v15 = [v9 sanitizedPrimaryAccountNumber];
      if (v15)
      {
        v10 = 1;
      }

      else
      {
        v16 = [v9 sanitizedPrimaryAccountName];
        if (v16)
        {
          v10 = 1;
        }

        else
        {
          v17 = [v9 devicePrimaryPaymentApplication];
          v10 = [a1 _paymentApplicationShouldShowFullDPANForPass:v9 paymentApplication:v17];
        }
      }
    }

    goto LABEL_19;
  }

  v10 = 1;
LABEL_21:

  LOBYTE(v8) = v10;
  return v8;
}

- (id)_cellForRowIndex:(unint64_t)a3 inTableView:(id)a4
{
  v6 = a4;
  v7 = [(NSArray *)self->_rowTypes objectAtIndexedSubscript:a3];
  v8 = [v7 unsignedIntegerValue];

  if (v8 <= 2)
  {
    switch(v8)
    {
      case 0:
        v10 = [(PKPaymentPass *)self->_pass fieldForKey:*MEMORY[0x1E69BC0D0]];
        v16 = [v10 value];
        if (PKHandsOnDemoModeEnabled() && (PKFakeCardholderName(), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v23 length], v23, v24))
        {
          v25 = PKFakeCardholderName();
        }

        else
        {
          v25 = v16;
        }

        v28 = v25;
        v29 = PKLocalizedPaymentString(&cfstr_CardInfoName.isa);
        v14 = -[PKPaymentPassDetailSectionController infoCellWithPrimaryText:detailText:cellStyle:forTableView:](self, "infoCellWithPrimaryText:detailText:cellStyle:forTableView:", v29, v28, [v10 cellStyle], v6);

        goto LABEL_34;
      case 1:
        v10 = PKSanitizedPrimaryAccountRepresentationForPass();
        v15 = [(PKPaymentPass *)self->_pass organizationName];
        v16 = PKLocalizedAquamanString(&cfstr_PassInfoAccoun.isa, &stru_1F3BD5BF0.isa, v15);

        v17 = self;
        v18 = v16;
        v19 = v10;
LABEL_33:
        v14 = [(PKPaymentPassDetailSectionController *)v17 infoCellWithPrimaryText:v18 detailText:v19 cellStyle:1 reuseIdentifier:@"cardNumberCell" forTableView:v6];
        v32 = [v14 detailTextLabel];
        [v32 setAdjustsFontSizeToFitWidth:1];

LABEL_34:
        goto LABEL_35;
      case 2:
        v10 = PKLocalizedPaymentString(&cfstr_CardInfoNumber.isa);
        if ([(PKPaymentPass *)self->_pass isSuicaPass])
        {
          v11 = [(PKPaymentApplication *)self->_paymentApplication sanitizedDPAN];
          if (v11)
          {
            v12 = v11;
            v13 = [(PKPaymentPass *)self->_pass isOctopusPass];

            if ((v13 & 1) == 0)
            {
              goto LABEL_27;
            }
          }
        }

        else if (![(PKPaymentPass *)self->_pass isOctopusPass])
        {
LABEL_27:
          v31 = [(PKPaymentPass *)self->_pass primaryAccountNumberSuffix];
          if (v31 || ([(PKPaymentPass *)self->_pass sanitizedPrimaryAccountNumber], (v31 = objc_claimAutoreleasedReturnValue()) != 0))
          {
          }

          else
          {
            v33 = [(PKPaymentPass *)self->_pass sanitizedPrimaryAccountName];

            if (!v33)
            {
              if ([(PKPassDetailsCardInfoSectionController *)self _paymentApplicationShouldShowFullDPAN])
              {
                v34 = [(PKPaymentApplication *)self->_paymentApplication sanitizedDPAN];
                v16 = PKFormattedSanitizedPAN();

                v35 = PKLocalizedPaymentString(&cfstr_CardInfoDigita.isa);

                v10 = v35;
              }

              else
              {
                v16 = 0;
              }

              goto LABEL_32;
            }
          }

          v30 = PKSanitizedPrimaryAccountRepresentationForPass();
LABEL_31:
          v16 = v30;
LABEL_32:
          v17 = self;
          v18 = v10;
          v19 = v16;
          goto LABEL_33;
        }

        v30 = PKSanitizedDeviceAccountNumberForPaymentApplication();
        goto LABEL_31;
    }

LABEL_43:
    __break(1u);
    return result;
  }

  switch(v8)
  {
    case 3:
      v10 = [(PKPaymentPass *)self->_pass customerServiceIdentifier];
      v26 = PKPassLocalizedStringWithFormat();
      v14 = [(PKPaymentPassDetailSectionController *)self infoCellWithPrimaryText:v26 detailText:v10 cellStyle:1 reuseIdentifier:@"PKTableViewCellReuseIdentifierCustomerServiceIdentifier" forTableView:v6, 0];

      v27 = [v14 detailTextLabel];
      [v27 setAdjustsFontSizeToFitWidth:1];

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
      v14 = [(PKPaymentPassDetailSectionController *)self infoCellWithPrimaryText:v20 detailText:v22 cellStyle:1 reuseIdentifier:@"expressState" forTableView:v6];

      if ([(PKPassDetailsCardInfoSectionController *)self _isExpressSettingsLinkRowType:4])
      {
        [v14 setAccessoryType:1];
      }

      goto LABEL_36;
    case 5:
      v10 = PKLocalizedPaymentString(&cfstr_ExpressTransit_0.isa);
      v14 = [(PKPaymentPassDetailSectionController *)self linkCellWithText:v10 forTableView:v6];
      break;
    default:
      goto LABEL_43;
  }

LABEL_35:

LABEL_36:

  return v14;
}

+ (BOOL)_showExpressDetailsForPass:(id)a3 expressMode:(BOOL)a4 sectionMode:(unint64_t)a5
{
  v7 = [a3 isAccessPass];
  if (a5)
  {
    v8 = 0;
  }

  else
  {
    v8 = a4;
  }

  return (v7 & 1) == 0 && v8;
}

- (BOOL)_showExpressDetails
{
  v3 = objc_opt_class();
  pass = self->_pass;
  expressModeSupported = self->_expressModeSupported;
  sectionMode = self->_sectionMode;

  return [v3 _showExpressDetailsForPass:pass expressMode:expressModeSupported sectionMode:sectionMode];
}

+ (BOOL)_paymentApplicationShouldShowFullDPANForPass:(id)a3 paymentApplication:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 sanitizedDPAN];
  if (v7)
  {
    v8 = [v6 appletDataFormat];
    if (PKEqualObjects())
    {
      v9 = 1;
    }

    else
    {
      v10 = [v6 appletDataFormat];
      if (PKEqualObjects())
      {
        v9 = 1;
      }

      else
      {
        v11 = [v6 appletDataFormat];
        if (PKEqualObjects() & 1) != 0 || ([v5 isEMoneyPass])
        {
          v9 = 1;
        }

        else
        {
          v9 = [v5 isSuicaPass];
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
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

- (BOOL)_isExpressSettingsLinkRowType:(unint64_t)a3
{
  if (a3 >= 4)
  {
    if (a3 == 5)
    {
      LOBYTE(self) = self->_detailViewStyle == 0;
    }

    else if (a3 == 4)
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

- (id)_contextMenuConfigurationForCopyingText:(id)a3
{
  v3 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__PKPassDetailsCardInfoSectionController__contextMenuConfigurationForCopyingText___block_invoke;
  aBlock[3] = &unk_1E8016090;
  v9 = v3;
  v4 = v3;
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