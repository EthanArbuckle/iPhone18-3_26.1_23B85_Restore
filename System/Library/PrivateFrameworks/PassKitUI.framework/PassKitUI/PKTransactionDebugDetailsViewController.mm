@interface PKTransactionDebugDetailsViewController
- (NSDictionary)mapsMerchantDetails;
- (NSDictionary)merchantDetails;
- (NSDictionary)transactionDetails;
- (PKTransactionDebugDetailsViewController)initWithTransaction:(id)a3;
- (id)_cellWithPrimaryText:(id)a3 infoText:(id)a4;
- (id)_mapsBrandInfoCellForIndex:(int64_t)a3;
- (id)_mapsCell;
- (id)_mapsMerchantInfoCellForIndex:(int64_t)a3;
- (id)_merchantInfoCellForIndex:(int64_t)a3;
- (id)_stringForCreditDebitIndicator:(int64_t)a3;
- (id)_stringForTechnologyType:(int64_t)a3;
- (id)_stringForTransactionSource:(unint64_t)a3;
- (id)_stringForTransactionStatus:(int64_t)a3;
- (id)_stringForTransactionType:(int64_t)a3;
- (id)_transactionInfoCellForIndex:(int64_t)a3;
- (id)mapsBrandDetails;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_didSelectMap;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation PKTransactionDebugDetailsViewController

- (PKTransactionDebugDetailsViewController)initWithTransaction:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKTransactionDebugDetailsViewController;
  v6 = [(PKTransactionDebugDetailsViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transaction, a3);
    v7->_inBridge = PKBridgeUsesDarkAppearance();
  }

  return v7;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PKTransactionDebugDetailsViewController;
  [(PKTransactionDebugDetailsViewController *)&v4 viewDidLoad];
  v3 = [(PKTransactionDebugDetailsViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionTitleValueLabelCellReuseIdentifier"];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = 0;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v9 = [(PKTransactionDebugDetailsViewController *)self mapsMerchantDetails];
      v7 = [v9 count] + 1;
      goto LABEL_11;
    }

    if (a4 == 3)
    {
      v8 = [(PKTransactionDebugDetailsViewController *)self mapsBrandDetails];
      goto LABEL_9;
    }
  }

  else
  {
    if (!a4)
    {
      v8 = [(PKTransactionDebugDetailsViewController *)self transactionDetails];
      goto LABEL_9;
    }

    if (a4 == 1)
    {
      v8 = [(PKTransactionDebugDetailsViewController *)self merchantDetails];
LABEL_9:
      v9 = v8;
      v7 = [v8 count];
LABEL_11:
    }
  }

  return v7;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (a4 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E80277D0[a4];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([v5 section])
  {
    if ([v5 section] == 1)
    {
      v6 = -[PKTransactionDebugDetailsViewController _merchantInfoCellForIndex:](self, "_merchantInfoCellForIndex:", [v5 row]);
    }

    else
    {
      v7 = [v5 section];
      v8 = [v5 row];
      if (v7 == 2)
      {
        [(PKTransactionDebugDetailsViewController *)self _mapsMerchantInfoCellForIndex:v8];
      }

      else
      {
        [(PKTransactionDebugDetailsViewController *)self _mapsBrandInfoCellForIndex:v8];
      }
      v6 = ;
    }
  }

  else
  {
    v6 = -[PKTransactionDebugDetailsViewController _transactionInfoCellForIndex:](self, "_transactionInfoCellForIndex:", [v5 row]);
  }

  v9 = v6;

  return v9;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v25 = a3;
  v6 = a4;
  if ([v6 section] != 2 || objc_msgSend(v6, "row") || (-[PKPaymentTransaction merchant](self->_transaction, "merchant"), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "mapsMerchant"), v24 = objc_claimAutoreleasedReturnValue(), v24, v23, !v24))
  {
    if ([v6 section] == 2)
    {
      v7 = [v25 cellForRowAtIndexPath:v6];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_19:

        goto LABEL_20;
      }

      v8 = [v7 keyLabel];
      v9 = [v8 text];

      v10 = v9;
      v11 = v10;
      if (v10 != @"stylingInfo")
      {
        if (!v10 || (v12 = [(__CFString *)v10 isEqualToString:@"stylingInfo"], v11, !v12))
        {
LABEL_18:

          goto LABEL_19;
        }
      }

      v13 = [(PKPaymentTransaction *)self->_transaction merchant];
      v14 = [v13 mapsMerchant];
    }

    else
    {
      if ([v6 section] != 3)
      {
        goto LABEL_20;
      }

      v7 = [v25 cellForRowAtIndexPath:v6];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_19;
      }

      v15 = [v7 keyLabel];
      v16 = [v15 text];

      v17 = v16;
      v11 = v17;
      if (v17 != @"stylingInfo")
      {
        if (!v17)
        {
          goto LABEL_18;
        }

        v18 = [(__CFString *)v17 isEqualToString:@"stylingInfo"];

        if (!v18)
        {
          goto LABEL_18;
        }
      }

      v13 = [(PKPaymentTransaction *)self->_transaction merchant];
      v14 = [v13 mapsBrand];
    }

    v19 = v14;
    v20 = [v14 stylingInfo];

    if (v20)
    {
      v21 = [[PKMapsMerchantStylingInfoViewController alloc] initWithStylingInfo:v20];
      v22 = [(PKTransactionDebugDetailsViewController *)self navigationController];
      [v22 pushViewController:v21 animated:1];
    }

    goto LABEL_18;
  }

  [(PKTransactionDebugDetailsViewController *)self _didSelectMap];
LABEL_20:
}

- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v5 = [a3 cellForRowAtIndexPath:{a4, a5.x, a5.y}];
  v6 = v5;
  if (!v5 || [v5 accessoryType] == 1)
  {
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 keyLabel];
    v8 = [v7 text];

    [v6 valueLabel];
  }

  else
  {
    v9 = [v6 textLabel];
    v8 = [v9 text];

    [v6 detailTextLabel];
  }
  v10 = ;
  v11 = [v10 text];

  if (![v8 length])
  {

    v8 = 0;
  }

  if ([v11 length])
  {
    v12 = v8 != 0;
    if (v8 && v11)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ : %@", v8, v11];
      goto LABEL_17;
    }
  }

  else
  {

    v11 = 0;
    v12 = v8 != 0;
  }

  if (v12)
  {
    v14 = v8;
  }

  else
  {
    v14 = v11;
  }

  v13 = v14;
LABEL_17:
  v15 = v13;

  if (v15)
  {
    v16 = MEMORY[0x1E69DC8D8];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __101__PKTransactionDebugDetailsViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke;
    v20[3] = &unk_1E8016090;
    v21 = v15;
    v17 = v15;
    v18 = [v16 configurationWithIdentifier:0 previewProvider:0 actionProvider:v20];

    goto LABEL_20;
  }

LABEL_19:
  v18 = 0;
LABEL_20:

  return v18;
}

id __101__PKTransactionDebugDetailsViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69DC628];
  v3 = PKLocalizedString(&cfstr_MenuActionCopy.isa);
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"document.on.document"];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __101__PKTransactionDebugDetailsViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke_2;
  v10[3] = &unk_1E8016068;
  v11 = *(a1 + 32);
  v5 = [v2 actionWithTitle:v3 image:v4 identifier:0 handler:v10];

  v6 = MEMORY[0x1E69DCC60];
  v12[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v8 = [v6 menuWithTitle:&stru_1F3BD7330 children:v7];

  return v8;
}

void __101__PKTransactionDebugDetailsViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DCD50] generalPasteboard];
  [v2 setString:*(a1 + 32)];
}

- (id)_stringForTransactionStatus:(int64_t)a3
{
  v3 = PKPaymentTransactionStatusToString();
  v4 = [v3 capitalizedString];

  return v4;
}

- (id)_stringForTransactionType:(int64_t)a3
{
  if ((a3 - 1) > 0x15)
  {
    return @"Purchase";
  }

  else
  {
    return off_1E80277F0[a3 - 1];
  }
}

- (id)_stringForTechnologyType:(int64_t)a3
{
  if (a3 > 2)
  {
    return &stru_1F3BD7330;
  }

  else
  {
    return off_1E80278A0[a3];
  }
}

- (id)_stringForTransactionSource:(unint64_t)a3
{
  if (a3 > 8)
  {
    return &stru_1F3BD7330;
  }

  else
  {
    return off_1E80278B8[a3];
  }
}

- (id)_stringForCreditDebitIndicator:(int64_t)a3
{
  v3 = @"Unknown";
  if (a3 == 1)
  {
    v3 = @"Credit";
  }

  if (a3 == 2)
  {
    return @"Debit";
  }

  else
  {
    return v3;
  }
}

- (NSDictionary)transactionDetails
{
  v199[60] = *MEMORY[0x1E69E9840];
  v198[0] = @"identifier";
  v3 = [(PKPaymentTransaction *)self->_transaction identifier];
  v197 = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"nil";
  }

  v199[0] = v4;
  v198[1] = @"amount";
  v196 = [(PKPaymentTransaction *)self->_transaction amount];
  v5 = [v196 stringValue];
  v195 = v5;
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"nil";
  }

  v199[1] = v6;
  v198[2] = @"currencyCode";
  v7 = [(PKPaymentTransaction *)self->_transaction currencyCode];
  v194 = v7;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"nil";
  }

  v199[2] = v8;
  v198[3] = @"transactionDate";
  v193 = [(PKPaymentTransaction *)self->_transaction transactionDate];
  v9 = [v193 description];
  v192 = v9;
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = @"nil";
  }

  v199[3] = v10;
  v198[4] = @"accountType";
  [(PKPaymentTransaction *)self->_transaction accountType];
  v11 = PKPaymentTransactionAccountTypeToString();
  v191 = v11;
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = @"nil";
  }

  v199[4] = v12;
  v198[5] = @"displayLocation";
  v13 = [(PKPaymentTransaction *)self->_transaction displayLocation];
  v190 = v13;
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = @"nil";
  }

  v199[5] = v14;
  v198[6] = @"serviceIdentifier";
  v15 = [(PKPaymentTransaction *)self->_transaction serviceIdentifier];
  v189 = v15;
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = @"nil";
  }

  v199[6] = v16;
  v198[7] = @"paymentHash";
  v17 = [(PKPaymentTransaction *)self->_transaction paymentHash];
  v188 = v17;
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = @"nil";
  }

  v199[7] = v18;
  v198[8] = @"locality";
  v19 = [(PKPaymentTransaction *)self->_transaction locality];
  v187 = v19;
  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = @"nil";
  }

  v199[8] = v20;
  v198[9] = @"administrativeArea";
  v21 = [(PKPaymentTransaction *)self->_transaction administrativeArea];
  v186 = v21;
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = @"nil";
  }

  v199[9] = v22;
  v198[10] = @"location";
  v185 = [(PKPaymentTransaction *)self->_transaction location];
  v23 = [v185 description];
  v184 = v23;
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = @"nil";
  }

  v199[10] = v24;
  v198[11] = @"locationDate";
  v183 = [(PKPaymentTransaction *)self->_transaction locationDate];
  v25 = [v183 description];
  v182 = v25;
  if (v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = @"nil";
  }

  v199[11] = v26;
  v198[12] = @"timeZone";
  v181 = [(PKPaymentTransaction *)self->_transaction timeZone];
  v27 = [v181 name];
  v180 = v27;
  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = @"nil";
  }

  v199[12] = v28;
  v198[13] = @"statusChangeDate";
  v179 = [(PKPaymentTransaction *)self->_transaction transactionStatusChangedDate];
  v29 = [v179 description];
  v178 = v29;
  if (v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = @"nil";
  }

  v199[13] = v30;
  v198[14] = @"locationLat/Long";
  v31 = MEMORY[0x1E696AEC0];
  [(PKPaymentTransaction *)self->_transaction locationLatitude];
  v33 = v32;
  [(PKPaymentTransaction *)self->_transaction locationLongitude];
  v177 = [v31 stringWithFormat:@"%ld, %ld", v33, v34];
  v199[14] = v177;
  v198[15] = @"horizontalAccuracy";
  v35 = MEMORY[0x1E696AEC0];
  v176 = [(PKPaymentTransaction *)self->_transaction location];
  [v176 horizontalAccuracy];
  v175 = [v35 stringWithFormat:@"%1.f", v36];
  v199[15] = v175;
  v198[16] = @"verticalAccuracy";
  v37 = MEMORY[0x1E696AEC0];
  v174 = [(PKPaymentTransaction *)self->_transaction location];
  [v174 verticalAccuracy];
  v173 = [v37 stringWithFormat:@"%1.f", v38];
  v199[16] = v173;
  v198[17] = @"transactionStatus";
  v172 = [(PKTransactionDebugDetailsViewController *)self _stringForTransactionStatus:[(PKPaymentTransaction *)self->_transaction transactionStatus]];
  v199[17] = v172;
  v198[18] = @"transactionType";
  v171 = [(PKTransactionDebugDetailsViewController *)self _stringForTransactionType:[(PKPaymentTransaction *)self->_transaction transactionType]];
  v199[18] = v171;
  v198[19] = @"transactionTechnologyType";
  v170 = [(PKTransactionDebugDetailsViewController *)self _stringForTechnologyType:[(PKPaymentTransaction *)self->_transaction technologyType]];
  v199[19] = v170;
  v198[20] = @"transactionSource";
  v169 = [(PKTransactionDebugDetailsViewController *)self _stringForTransactionSource:[(PKPaymentTransaction *)self->_transaction transactionSource]];
  v199[20] = v169;
  v198[21] = @"hasNotificationServiceSource";
  if ([(PKPaymentTransaction *)self->_transaction hasNotificationServiceData])
  {
    v39 = @"YES";
  }

  else
  {
    v39 = @"NO";
  }

  v199[21] = v39;
  v198[22] = @"hasAssociatedPaymentApplication";
  if ([(PKPaymentTransaction *)self->_transaction hasAssociatedPaymentApplication])
  {
    v40 = @"YES";
  }

  else
  {
    v40 = @"NO";
  }

  v199[22] = v40;
  v198[23] = @"cardType";
  v168 = [(PKTransactionDebugDetailsViewController *)self _stringForTransactionSource:[(PKPaymentTransaction *)self->_transaction cardType]];
  v199[23] = v168;
  v198[24] = @"accountIdentifier";
  v41 = [(PKPaymentTransaction *)self->_transaction accountIdentifier];
  v167 = v41;
  if (v41)
  {
    v42 = v41;
  }

  else
  {
    v42 = @"nil";
  }

  v199[24] = v42;
  v198[25] = @"rewardsTotal";
  v166 = [(PKPaymentTransaction *)self->_transaction rewardsTotalAmount];
  v43 = [v166 stringValue];
  v165 = v43;
  if (v43)
  {
    v44 = v43;
  }

  else
  {
    v44 = @"nil";
  }

  v199[25] = v44;
  v198[26] = @"rewardsCurrency";
  v45 = [(PKPaymentTransaction *)self->_transaction rewardsTotalCurrencyCode];
  v164 = v45;
  if (v45)
  {
    v46 = v45;
  }

  else
  {
    v46 = @"nil";
  }

  v199[26] = v46;
  v198[27] = @"rewardsEligibility";
  [(PKPaymentTransaction *)self->_transaction rewardsEligibilityReason];
  v47 = PKPaymentTransactionRewardsEligibilityReasonToString();
  v163 = v47;
  if (v47)
  {
    v48 = v47;
  }

  else
  {
    v48 = @"nil";
  }

  v199[27] = v48;
  v198[28] = @"lifecycleIdentifier";
  v49 = [(PKPaymentTransaction *)self->_transaction lifecycleIdentifier];
  v162 = v49;
  if (v49)
  {
    v50 = v49;
  }

  else
  {
    v50 = @"nil";
  }

  v199[28] = v50;
  v198[29] = @"authNetworkData";
  v51 = [(PKPaymentTransaction *)self->_transaction authNetworkData];
  v161 = v51;
  if (v51)
  {
    v52 = v51;
  }

  else
  {
    v52 = @"nil";
  }

  v199[29] = v52;
  v198[30] = @"clearingNetworkData";
  v53 = [(PKPaymentTransaction *)self->_transaction clearingNetworkData];
  v160 = v53;
  if (v53)
  {
    v54 = v53;
  }

  else
  {
    v54 = @"nil";
  }

  v199[30] = v54;
  v198[31] = @"cardIdentifier";
  v55 = [(PKPaymentTransaction *)self->_transaction cardIdentifier];
  v159 = v55;
  if (v55)
  {
    v56 = v55;
  }

  else
  {
    v56 = @"nil";
  }

  v199[31] = v56;
  v198[32] = @"referenceIdentifier";
  v57 = [(PKPaymentTransaction *)self->_transaction referenceIdentifier];
  v158 = v57;
  if (v57)
  {
    v58 = v57;
  }

  else
  {
    v58 = @"nil";
  }

  v199[32] = v58;
  v198[33] = @"originatedByDevice";
  if ([(PKPaymentTransaction *)self->_transaction originatedByDevice])
  {
    v59 = @"YES";
  }

  else
  {
    v59 = @"NO";
  }

  v199[33] = v59;
  v198[34] = @"requiresMerchantReprocessing";
  if ([(PKPaymentTransaction *)self->_transaction requiresMerchantReprocessing])
  {
    v60 = @"YES";
  }

  else
  {
    v60 = @"NO";
  }

  v199[34] = v60;
  v198[35] = @"lastMerchantReprocessingDate";
  v157 = [(PKPaymentTransaction *)self->_transaction lastMerchantReprocessingDate];
  v61 = [v157 description];
  v156 = v61;
  if (v61)
  {
    v62 = v61;
  }

  else
  {
    v62 = @"nil";
  }

  v199[35] = v62;
  v198[36] = @"lastForceReprocessingRequest";
  v155 = [(PKPaymentTransaction *)self->_transaction merchant];
  v154 = [v155 lastForceMerchantReprocessingRequestDate];
  v63 = [v154 description];
  v153 = v63;
  if (v63)
  {
    v64 = v63;
  }

  else
  {
    v64 = @"nil";
  }

  v199[36] = v64;
  v198[37] = @"releasedDataElements";
  v65 = MEMORY[0x1E696AD98];
  v152 = [(PKPaymentTransaction *)self->_transaction releasedData];
  v151 = [v152 elements];
  v150 = [v65 numberWithUnsignedInteger:{objc_msgSend(v151, "count")}];
  v149 = [v150 stringValue];
  v199[37] = v149;
  v198[38] = @"isBankConnectTransaction";
  if ([(PKPaymentTransaction *)self->_transaction isBankConnectTransaction])
  {
    v66 = @"YES";
  }

  else
  {
    v66 = @"NO";
  }

  v199[38] = v66;
  v198[39] = @"classifiedByMaps";
  v148 = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
  if ([v148 classifiedByMaps])
  {
    v67 = @"YES";
  }

  else
  {
    v67 = @"NO";
  }

  v199[39] = v67;
  v198[40] = @"roundTransactionDate";
  v147 = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
  if ([v147 roundTransactionDate])
  {
    v68 = @"YES";
  }

  else
  {
    v68 = @"NO";
  }

  v199[40] = v68;
  v198[41] = @"bankConnectCreditDebitIndicator";
  v146 = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
  v145 = -[PKTransactionDebugDetailsViewController _stringForCreditDebitIndicator:](self, "_stringForCreditDebitIndicator:", [v146 creditDebitIndicator]);
  v199[41] = v145;
  v198[42] = @"bankConnectDigitalServicingURL";
  v144 = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
  v143 = [v144 digitalServicingURL];
  v69 = [v143 absoluteString];
  v142 = v69;
  if (v69)
  {
    v70 = v69;
  }

  else
  {
    v70 = @"nil";
  }

  v199[42] = v70;
  v198[43] = @"bankConnectPayNowURL";
  v141 = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
  v140 = [v141 payNowURL];
  v71 = [v140 absoluteString];
  v139 = v71;
  if (v71)
  {
    v72 = v71;
  }

  else
  {
    v72 = @"nil";
  }

  v199[43] = v72;
  v198[44] = @"bankConnectPostInstallmentURL";
  v138 = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
  v137 = [v138 postInstallmentURL];
  v73 = [v137 absoluteString];
  v136 = v73;
  if (v73)
  {
    v74 = v73;
  }

  else
  {
    v74 = @"nil";
  }

  v199[44] = v74;
  v198[45] = @"bankConnectRedeemRewardsURL";
  v135 = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
  v134 = [v135 redeemRewardsURL];
  v75 = [v134 absoluteString];
  v133 = v75;
  if (v75)
  {
    v76 = v75;
  }

  else
  {
    v76 = @"nil";
  }

  v199[45] = v76;
  v198[46] = @"originalTransactionDescription";
  v132 = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
  v77 = [v132 originalTransactionDescription];
  v131 = v77;
  if (v77)
  {
    v78 = v77;
  }

  else
  {
    v78 = @"nil";
  }

  v199[46] = v78;
  v198[47] = @"creditDebitIndicator";
  v79 = MEMORY[0x1E696AEC0];
  v130 = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
  v129 = [v79 stringWithFormat:@"%ld", objc_msgSend(v130, "creditDebitIndicator")];
  v199[47] = v129;
  v198[48] = @"bankCategoryDescription";
  v128 = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
  v80 = [v128 bankCategoryDescription];
  v127 = v80;
  if (v80)
  {
    v81 = v80;
  }

  else
  {
    v81 = @"nil";
  }

  v199[48] = v81;
  v198[49] = @"bankMerchantAddress";
  v126 = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
  v82 = [v126 bankMerchantAddress];
  v125 = v82;
  if (v82)
  {
    v83 = v82;
  }

  else
  {
    v83 = @"nil";
  }

  v199[49] = v83;
  v198[50] = @"bankMerchantCategoryCode";
  v124 = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
  v84 = [v124 bankMerchantCategoryCode];
  v123 = v84;
  if (v84)
  {
    v85 = v84;
  }

  else
  {
    v85 = @"nil";
  }

  v199[50] = v85;
  v198[51] = @"bankMerchantName";
  v122 = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
  v86 = [v122 bankMerchantName];
  v121 = v86;
  if (v86)
  {
    v87 = v86;
  }

  else
  {
    v87 = @"nil";
  }

  v199[51] = v87;
  v198[52] = @"bankMerchantNumber";
  v120 = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
  v88 = [v120 bankMerchantNumber];
  v119 = v88;
  if (v88)
  {
    v89 = v88;
  }

  else
  {
    v89 = @"nil";
  }

  v199[52] = v89;
  v198[53] = @"bankStandardIndustrialClassificationCode";
  v118 = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
  v90 = [v118 bankStandardIndustrialClassificationCode];
  v117 = v90;
  if (v90)
  {
    v91 = v90;
  }

  else
  {
    v91 = @"nil";
  }

  v199[53] = v91;
  v198[54] = @"transactionSourceIdentifier";
  v92 = [(PKPaymentTransaction *)self->_transaction transactionSourceIdentifier];
  v116 = v92;
  if (v92)
  {
    v93 = v92;
  }

  else
  {
    v93 = @"nil";
  }

  v199[54] = v93;
  v198[55] = @"rewards";
  v115 = [(PKPaymentTransaction *)self->_transaction rewards];
  v94 = [v115 description];
  v95 = v94;
  if (v94)
  {
    v96 = v94;
  }

  else
  {
    v96 = @"nil";
  }

  v199[55] = v96;
  v198[56] = @"paymentIdentifier";
  v114 = [(PKPaymentTransaction *)self->_transaction payments];
  v97 = [v114 firstObject];
  v98 = [v97 identifier];
  v99 = v98;
  if (v98)
  {
    v100 = v98;
  }

  else
  {
    v100 = @"nil";
  }

  v199[56] = v100;
  v198[57] = @"paymentReferenceIdentifier";
  v101 = [(PKPaymentTransaction *)self->_transaction payments];
  v102 = [v101 firstObject];
  v103 = [v102 referenceIdentifier];
  v104 = v103;
  if (v103)
  {
    v105 = v103;
  }

  else
  {
    v105 = @"nil";
  }

  v199[57] = v105;
  v198[58] = @"isIssuerInstallmentTransaction";
  v106 = [(PKPaymentTransaction *)self->_transaction isIssuerInstallmentTransaction];
  v107 = @"NO";
  if (v106)
  {
    v107 = @"YES";
  }

  v199[58] = v107;
  v198[59] = @"issuerInstallmentManagementURL";
  v108 = [(PKPaymentTransaction *)self->_transaction issuerInstallmentManagementURL];
  v109 = [v108 absoluteString];
  v110 = v109;
  if (v109)
  {
    v111 = v109;
  }

  else
  {
    v111 = @"nil";
  }

  v199[59] = v111;
  v112 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v199 forKeys:v198 count:60];

  return v112;
}

- (NSDictionary)merchantDetails
{
  v51[16] = *MEMORY[0x1E69E9840];
  v2 = [(PKPaymentTransaction *)self->_transaction merchant];
  v50[0] = @"industryCode";
  v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(v2, "industryCode")];
  v51[0] = v49;
  v50[1] = @"industryCategory";
  v3 = [v2 industryCategory];
  v48 = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"nil";
  }

  v51[1] = v4;
  v50[2] = @"name";
  v5 = [v2 name];
  v47 = v5;
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"nil";
  }

  v51[2] = v6;
  v50[3] = @"rawName";
  v7 = [v2 rawName];
  v46 = v7;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"nil";
  }

  v51[3] = v8;
  v50[4] = @"rawCANL";
  v9 = [v2 rawCANL];
  v45 = v9;
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = @"nil";
  }

  v51[4] = v10;
  v50[5] = @"rawCity";
  v11 = [v2 rawCity];
  v44 = v11;
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = @"nil";
  }

  v51[5] = v12;
  v50[6] = @"rawState";
  v13 = [v2 rawState];
  v43 = v13;
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = @"nil";
  }

  v51[6] = v14;
  v50[7] = @"rawCountry";
  v15 = [v2 rawCountry];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = @"nil";
  }

  v51[7] = v17;
  v50[8] = @"city";
  v18 = [v2 city];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = @"nil";
  }

  v51[8] = v20;
  v50[9] = @"state";
  v21 = [v2 state];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = @"nil";
  }

  v51[9] = v23;
  v50[10] = @"zip";
  v24 = [v2 zip];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = @"nil";
  }

  v51[10] = v26;
  v50[11] = @"displayName";
  v27 = [v2 displayName];
  v28 = v27;
  if (v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = @"nil";
  }

  v51[11] = v29;
  v50[12] = @"merchantIdentifier";
  v30 = [v2 merchantIdentifier];
  v31 = v30;
  if (v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = @"nil";
  }

  v51[12] = v32;
  v50[13] = @"fallbackCategory";
  [v2 fallbackcategory];
  v33 = PKMerchantCategoryToString();
  v34 = v33;
  if (v33)
  {
    v35 = v33;
  }

  else
  {
    v35 = @"nil";
  }

  v51[13] = v35;
  v50[14] = @"fallbackDetailedCategory";
  v36 = [v2 fallbackDetailedCategory];
  v37 = v36;
  if (v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = @"nil";
  }

  v51[14] = v38;
  v50[15] = @"localMatch";
  v39 = [v2 mapsDataIsFromLocalMatch];
  v40 = @"NO";
  if (v39)
  {
    v40 = @"YES";
  }

  v51[15] = v40;
  v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:16];

  return v41;
}

- (NSDictionary)mapsMerchantDetails
{
  v43[11] = *MEMORY[0x1E69E9840];
  v2 = [(PKPaymentTransaction *)self->_transaction merchant];
  v3 = [v2 mapsMerchant];

  v42[0] = @"identifier";
  v41 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v3, "identifier")}];
  v40 = [v41 stringValue];
  v43[0] = v40;
  v42[1] = @"resultProviderIdentifier";
  v39 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "resultProviderIdentifier")}];
  v38 = [v39 stringValue];
  v43[1] = v38;
  v42[2] = @"name";
  v4 = [v3 name];
  v37 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"nil";
  }

  v43[2] = v5;
  v42[3] = @"phoneNumber";
  v6 = [v3 phoneNumber];
  v36 = v6;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"nil";
  }

  v43[3] = v7;
  v42[4] = @"url";
  v35 = [v3 url];
  v8 = [v35 absoluteString];
  v34 = v8;
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = @"nil";
  }

  v43[4] = v9;
  v42[5] = @"location";
  v33 = [v3 location];
  v10 = [v33 description];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = @"nil";
  }

  v43[5] = v12;
  v42[6] = @"postalAddress";
  v32 = [v3 postalAddress];
  v13 = [v32 description];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = @"nil";
  }

  v43[6] = v15;
  v42[7] = @"category";
  [v3 category];
  v16 = PKMerchantCategoryToString();
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = @"nil";
  }

  v43[7] = v18;
  v42[8] = @"detailedCategory";
  v19 = [v3 detailedCategory];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = @"nil";
  }

  v43[8] = v21;
  v42[9] = @"heroImageURL";
  v22 = [v3 heroImageURL];
  v23 = [v22 absoluteString];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = @"nil";
  }

  v43[9] = v25;
  v42[10] = @"stylingInfo";
  v26 = [v3 stylingInfo];
  v27 = [v26 description];
  v28 = v27;
  if (v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = @"nil";
  }

  v43[10] = v29;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:11];

  return v30;
}

- (id)mapsBrandDetails
{
  v35[9] = *MEMORY[0x1E69E9840];
  v2 = [(PKPaymentTransaction *)self->_transaction merchant];
  v3 = [v2 mapsBrand];

  v34[0] = @"identifier";
  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v3, "identifier")}];
  v32 = [v33 stringValue];
  v35[0] = v32;
  v34[1] = @"resultProviderIdentifier";
  v31 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "resultProviderIdentifier")}];
  v30 = [v31 stringValue];
  v35[1] = v30;
  v34[2] = @"name";
  v4 = [v3 name];
  v29 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"nil";
  }

  v35[2] = v5;
  v34[3] = @"phoneNumber";
  v6 = [v3 phoneNumber];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"nil";
  }

  v35[3] = v8;
  v34[4] = @"url";
  v28 = [v3 url];
  v9 = [v28 absoluteString];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = @"nil";
  }

  v35[4] = v11;
  v34[5] = @"logoURL";
  v12 = [v3 logoURL];
  v13 = [v12 absoluteString];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = @"nil";
  }

  v35[5] = v15;
  v34[6] = @"category";
  [v3 category];
  v16 = PKMerchantCategoryToString();
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = @"nil";
  }

  v35[6] = v18;
  v34[7] = @"detailedCategory";
  v19 = [v3 detailedCategory];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = @"nil";
  }

  v35[7] = v21;
  v34[8] = @"stylingInfo";
  v22 = [v3 stylingInfo];
  v23 = [v22 description];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = @"nil";
  }

  v35[8] = v25;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:9];

  return v26;
}

- (id)_transactionInfoCellForIndex:(int64_t)a3
{
  v5 = [(PKTransactionDebugDetailsViewController *)self transactionDetails];
  v6 = [v5 allKeys];
  v7 = [v6 objectAtIndexedSubscript:a3];
  v8 = [(PKTransactionDebugDetailsViewController *)self transactionDetails];
  v9 = [v8 allValues];
  v10 = [v9 objectAtIndexedSubscript:a3];
  v11 = [(PKTransactionDebugDetailsViewController *)self _cellWithPrimaryText:v7 infoText:v10];

  return v11;
}

- (id)_merchantInfoCellForIndex:(int64_t)a3
{
  v5 = [(PKTransactionDebugDetailsViewController *)self merchantDetails];
  v6 = [v5 allKeys];
  v7 = [v6 objectAtIndexedSubscript:a3];
  v8 = [(PKTransactionDebugDetailsViewController *)self merchantDetails];
  v9 = [v8 allValues];
  v10 = [v9 objectAtIndexedSubscript:a3];
  v11 = [(PKTransactionDebugDetailsViewController *)self _cellWithPrimaryText:v7 infoText:v10];

  return v11;
}

- (id)_mapsMerchantInfoCellForIndex:(int64_t)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(PKTransactionDebugDetailsViewController *)self mapsMerchantDetails];
    v6 = [v5 allKeys];
    v7 = [v6 objectAtIndex:--v4];

    v8 = [(PKTransactionDebugDetailsViewController *)self mapsMerchantDetails];
    v9 = [v8 allValues];
    v10 = [v9 objectAtIndex:v4];

    v11 = [(PKTransactionDebugDetailsViewController *)self _cellWithPrimaryText:v7 infoText:v10];
  }

  else
  {
    v11 = [(PKTransactionDebugDetailsViewController *)self _mapsCell];
  }

  return v11;
}

- (id)_mapsBrandInfoCellForIndex:(int64_t)a3
{
  v5 = [(PKTransactionDebugDetailsViewController *)self mapsBrandDetails];
  v6 = [v5 allKeys];
  v7 = [v6 objectAtIndex:a3];

  v8 = [(PKTransactionDebugDetailsViewController *)self mapsBrandDetails];
  v9 = [v8 allValues];
  v10 = [v9 objectAtIndex:a3];

  v11 = [(PKTransactionDebugDetailsViewController *)self _cellWithPrimaryText:v7 infoText:v10];

  return v11;
}

- (id)_mapsCell
{
  mapsCell = self->_mapsCell;
  if (!mapsCell)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:0];
    v5 = self->_mapsCell;
    self->_mapsCell = v4;

    [(UITableViewCell *)self->_mapsCell setAccessoryType:1];
    v6 = [(UITableViewCell *)self->_mapsCell textLabel];
    [v6 setText:@"View in Maps"];

    v7 = [(UITableViewCell *)self->_mapsCell textLabel];
    v8 = [MEMORY[0x1E69DC888] systemBlueColor];
    [v7 setTextColor:v8];

    mapsCell = self->_mapsCell;
  }

  return mapsCell;
}

- (id)_cellWithPrimaryText:(id)a3 infoText:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKTransactionDebugDetailsViewController *)self tableView];
  v9 = [v8 dequeueReusableCellWithIdentifier:@"PKPaymentTransactionTitleValueLabelCellReuseIdentifier"];

  [v9 setSelectionStyle:0];
  v10 = [(PKTransactionDebugDetailsViewController *)self tableView];
  [v10 separatorInset];
  v12 = v11;

  [v9 setLayoutMargins:{0.0, v12, 0.0, v12}];
  v13 = [v9 keyLabel];
  [v13 setText:v7];

  v14 = [MEMORY[0x1E69DC888] labelColor];
  [v13 setTextColor:v14];

  if (self->_inBridge)
  {
    v15 = PKBridgeTextColor();
    [v13 setTextColor:v15];
  }

  v16 = [v9 valueLabel];
  [v16 setText:v6];

  return v9;
}

- (void)_didSelectMap
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = [(PKPaymentTransaction *)self->_transaction merchant];
  v4 = [v3 mapsMerchant];

  v5 = objc_alloc_init(MEMORY[0x1E696F260]);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v4, "identifier")}];
  v13[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [v5 _setMuids:v7];

  if ([v4 resultProviderIdentifier])
  {
    [v5 _setResultProviderID:{objc_msgSend(v4, "resultProviderIdentifier")}];
  }

  v8 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  [v8 startAnimating];
  [(UITableViewCell *)self->_mapsCell setAccessoryView:v8];
  [(UITableViewCell *)self->_mapsCell setUserInteractionEnabled:0];
  v9 = [objc_alloc(MEMORY[0x1E696F248]) initWithRequest:v5];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__PKTransactionDebugDetailsViewController__didSelectMap__block_invoke;
  v11[3] = &unk_1E80277B0;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  [v9 startWithCompletionHandler:v11];
}

void __56__PKTransactionDebugDetailsViewController__didSelectMap__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(*(a1 + 32) + 1048) setAccessoryView:0];
  [*(*(a1 + 32) + 1048) setUserInteractionEnabled:1];
  if (!v6)
  {
    v10 = [v5 mapItems];
    v11 = [v10 count];

    if (v11)
    {
      v12 = [PKMerchantMapViewController alloc];
      v13 = [v5 mapItems];
      v14 = [v13 firstObject];
      v7 = [(PKMerchantMapViewController *)v12 initWithMapItem:v14 configOptions:0x2000000000001];

      v9 = [*(a1 + 32) navigationController];
      [(__CFString *)v9 pushViewController:v7 animated:1];
LABEL_9:

      goto LABEL_10;
    }
  }

  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 40) identifier];
    if (v6)
    {
      v9 = [v6 localizedDescription];
    }

    else
    {
      v9 = @"no map items.";
    }

    v15 = 134218242;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "PKTransactionDebugDetailsViewController: MKLocalSearch could not resolve merchant maps for mapsID: %llu. Error: %@", &v15, 0x16u);
    if (v6)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
}

@end