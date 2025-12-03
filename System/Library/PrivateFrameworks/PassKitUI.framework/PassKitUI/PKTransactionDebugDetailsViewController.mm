@interface PKTransactionDebugDetailsViewController
- (NSDictionary)mapsMerchantDetails;
- (NSDictionary)merchantDetails;
- (NSDictionary)transactionDetails;
- (PKTransactionDebugDetailsViewController)initWithTransaction:(id)transaction;
- (id)_cellWithPrimaryText:(id)text infoText:(id)infoText;
- (id)_mapsBrandInfoCellForIndex:(int64_t)index;
- (id)_mapsCell;
- (id)_mapsMerchantInfoCellForIndex:(int64_t)index;
- (id)_merchantInfoCellForIndex:(int64_t)index;
- (id)_stringForCreditDebitIndicator:(int64_t)indicator;
- (id)_stringForTechnologyType:(int64_t)type;
- (id)_stringForTransactionSource:(unint64_t)source;
- (id)_stringForTransactionStatus:(int64_t)status;
- (id)_stringForTransactionType:(int64_t)type;
- (id)_transactionInfoCellForIndex:(int64_t)index;
- (id)mapsBrandDetails;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_didSelectMap;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation PKTransactionDebugDetailsViewController

- (PKTransactionDebugDetailsViewController)initWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  v9.receiver = self;
  v9.super_class = PKTransactionDebugDetailsViewController;
  v6 = [(PKTransactionDebugDetailsViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transaction, transaction);
    v7->_inBridge = PKBridgeUsesDarkAppearance();
  }

  return v7;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PKTransactionDebugDetailsViewController;
  [(PKTransactionDebugDetailsViewController *)&v4 viewDidLoad];
  tableView = [(PKTransactionDebugDetailsViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionTitleValueLabelCellReuseIdentifier"];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  v7 = 0;
  if (section > 1)
  {
    if (section == 2)
    {
      mapsMerchantDetails = [(PKTransactionDebugDetailsViewController *)self mapsMerchantDetails];
      v7 = [mapsMerchantDetails count] + 1;
      goto LABEL_11;
    }

    if (section == 3)
    {
      mapsBrandDetails = [(PKTransactionDebugDetailsViewController *)self mapsBrandDetails];
      goto LABEL_9;
    }
  }

  else
  {
    if (!section)
    {
      mapsBrandDetails = [(PKTransactionDebugDetailsViewController *)self transactionDetails];
      goto LABEL_9;
    }

    if (section == 1)
    {
      mapsBrandDetails = [(PKTransactionDebugDetailsViewController *)self merchantDetails];
LABEL_9:
      mapsMerchantDetails = mapsBrandDetails;
      v7 = [mapsBrandDetails count];
LABEL_11:
    }
  }

  return v7;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (section > 3)
  {
    return 0;
  }

  else
  {
    return off_1E80277D0[section];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section])
  {
    if ([pathCopy section] == 1)
    {
      v6 = -[PKTransactionDebugDetailsViewController _merchantInfoCellForIndex:](self, "_merchantInfoCellForIndex:", [pathCopy row]);
    }

    else
    {
      section = [pathCopy section];
      v8 = [pathCopy row];
      if (section == 2)
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
    v6 = -[PKTransactionDebugDetailsViewController _transactionInfoCellForIndex:](self, "_transactionInfoCellForIndex:", [pathCopy row]);
  }

  v9 = v6;

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section] != 2 || objc_msgSend(pathCopy, "row") || (-[PKPaymentTransaction merchant](self->_transaction, "merchant"), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "mapsMerchant"), v24 = objc_claimAutoreleasedReturnValue(), v24, v23, !v24))
  {
    if ([pathCopy section] == 2)
    {
      v7 = [viewCopy cellForRowAtIndexPath:pathCopy];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_19:

        goto LABEL_20;
      }

      keyLabel = [v7 keyLabel];
      text = [keyLabel text];

      v10 = text;
      v11 = v10;
      if (v10 != @"stylingInfo")
      {
        if (!v10 || (v12 = [(__CFString *)v10 isEqualToString:@"stylingInfo"], v11, !v12))
        {
LABEL_18:

          goto LABEL_19;
        }
      }

      merchant = [(PKPaymentTransaction *)self->_transaction merchant];
      mapsMerchant = [merchant mapsMerchant];
    }

    else
    {
      if ([pathCopy section] != 3)
      {
        goto LABEL_20;
      }

      v7 = [viewCopy cellForRowAtIndexPath:pathCopy];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_19;
      }

      keyLabel2 = [v7 keyLabel];
      text2 = [keyLabel2 text];

      v17 = text2;
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

      merchant = [(PKPaymentTransaction *)self->_transaction merchant];
      mapsMerchant = [merchant mapsBrand];
    }

    v19 = mapsMerchant;
    stylingInfo = [mapsMerchant stylingInfo];

    if (stylingInfo)
    {
      v21 = [[PKMapsMerchantStylingInfoViewController alloc] initWithStylingInfo:stylingInfo];
      navigationController = [(PKTransactionDebugDetailsViewController *)self navigationController];
      [navigationController pushViewController:v21 animated:1];
    }

    goto LABEL_18;
  }

  [(PKTransactionDebugDetailsViewController *)self _didSelectMap];
LABEL_20:
}

- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point
{
  v5 = [view cellForRowAtIndexPath:{path, point.x, point.y}];
  v6 = v5;
  if (!v5 || [v5 accessoryType] == 1)
  {
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    keyLabel = [v6 keyLabel];
    text = [keyLabel text];

    [v6 valueLabel];
  }

  else
  {
    textLabel = [v6 textLabel];
    text = [textLabel text];

    [v6 detailTextLabel];
  }
  v10 = ;
  text2 = [v10 text];

  if (![text length])
  {

    text = 0;
  }

  if ([text2 length])
  {
    v12 = text != 0;
    if (text && text2)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ : %@", text, text2];
      goto LABEL_17;
    }
  }

  else
  {

    text2 = 0;
    v12 = text != 0;
  }

  if (v12)
  {
    v14 = text;
  }

  else
  {
    v14 = text2;
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

- (id)_stringForTransactionStatus:(int64_t)status
{
  v3 = PKPaymentTransactionStatusToString();
  capitalizedString = [v3 capitalizedString];

  return capitalizedString;
}

- (id)_stringForTransactionType:(int64_t)type
{
  if ((type - 1) > 0x15)
  {
    return @"Purchase";
  }

  else
  {
    return off_1E80277F0[type - 1];
  }
}

- (id)_stringForTechnologyType:(int64_t)type
{
  if (type > 2)
  {
    return &stru_1F3BD7330;
  }

  else
  {
    return off_1E80278A0[type];
  }
}

- (id)_stringForTransactionSource:(unint64_t)source
{
  if (source > 8)
  {
    return &stru_1F3BD7330;
  }

  else
  {
    return off_1E80278B8[source];
  }
}

- (id)_stringForCreditDebitIndicator:(int64_t)indicator
{
  v3 = @"Unknown";
  if (indicator == 1)
  {
    v3 = @"Credit";
  }

  if (indicator == 2)
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
  identifier = [(PKPaymentTransaction *)self->_transaction identifier];
  v197 = identifier;
  if (identifier)
  {
    v4 = identifier;
  }

  else
  {
    v4 = @"nil";
  }

  v199[0] = v4;
  v198[1] = @"amount";
  amount = [(PKPaymentTransaction *)self->_transaction amount];
  stringValue = [amount stringValue];
  v195 = stringValue;
  if (stringValue)
  {
    v6 = stringValue;
  }

  else
  {
    v6 = @"nil";
  }

  v199[1] = v6;
  v198[2] = @"currencyCode";
  currencyCode = [(PKPaymentTransaction *)self->_transaction currencyCode];
  v194 = currencyCode;
  if (currencyCode)
  {
    v8 = currencyCode;
  }

  else
  {
    v8 = @"nil";
  }

  v199[2] = v8;
  v198[3] = @"transactionDate";
  transactionDate = [(PKPaymentTransaction *)self->_transaction transactionDate];
  v9 = [transactionDate description];
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
  displayLocation = [(PKPaymentTransaction *)self->_transaction displayLocation];
  v190 = displayLocation;
  if (displayLocation)
  {
    v14 = displayLocation;
  }

  else
  {
    v14 = @"nil";
  }

  v199[5] = v14;
  v198[6] = @"serviceIdentifier";
  serviceIdentifier = [(PKPaymentTransaction *)self->_transaction serviceIdentifier];
  v189 = serviceIdentifier;
  if (serviceIdentifier)
  {
    v16 = serviceIdentifier;
  }

  else
  {
    v16 = @"nil";
  }

  v199[6] = v16;
  v198[7] = @"paymentHash";
  paymentHash = [(PKPaymentTransaction *)self->_transaction paymentHash];
  v188 = paymentHash;
  if (paymentHash)
  {
    v18 = paymentHash;
  }

  else
  {
    v18 = @"nil";
  }

  v199[7] = v18;
  v198[8] = @"locality";
  locality = [(PKPaymentTransaction *)self->_transaction locality];
  v187 = locality;
  if (locality)
  {
    v20 = locality;
  }

  else
  {
    v20 = @"nil";
  }

  v199[8] = v20;
  v198[9] = @"administrativeArea";
  administrativeArea = [(PKPaymentTransaction *)self->_transaction administrativeArea];
  v186 = administrativeArea;
  if (administrativeArea)
  {
    v22 = administrativeArea;
  }

  else
  {
    v22 = @"nil";
  }

  v199[9] = v22;
  v198[10] = @"location";
  location = [(PKPaymentTransaction *)self->_transaction location];
  v23 = [location description];
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
  locationDate = [(PKPaymentTransaction *)self->_transaction locationDate];
  v25 = [locationDate description];
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
  timeZone = [(PKPaymentTransaction *)self->_transaction timeZone];
  name = [timeZone name];
  v180 = name;
  if (name)
  {
    v28 = name;
  }

  else
  {
    v28 = @"nil";
  }

  v199[12] = v28;
  v198[13] = @"statusChangeDate";
  transactionStatusChangedDate = [(PKPaymentTransaction *)self->_transaction transactionStatusChangedDate];
  v29 = [transactionStatusChangedDate description];
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
  location2 = [(PKPaymentTransaction *)self->_transaction location];
  [location2 horizontalAccuracy];
  v175 = [v35 stringWithFormat:@"%1.f", v36];
  v199[15] = v175;
  v198[16] = @"verticalAccuracy";
  v37 = MEMORY[0x1E696AEC0];
  location3 = [(PKPaymentTransaction *)self->_transaction location];
  [location3 verticalAccuracy];
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
  accountIdentifier = [(PKPaymentTransaction *)self->_transaction accountIdentifier];
  v167 = accountIdentifier;
  if (accountIdentifier)
  {
    v42 = accountIdentifier;
  }

  else
  {
    v42 = @"nil";
  }

  v199[24] = v42;
  v198[25] = @"rewardsTotal";
  rewardsTotalAmount = [(PKPaymentTransaction *)self->_transaction rewardsTotalAmount];
  stringValue2 = [rewardsTotalAmount stringValue];
  v165 = stringValue2;
  if (stringValue2)
  {
    v44 = stringValue2;
  }

  else
  {
    v44 = @"nil";
  }

  v199[25] = v44;
  v198[26] = @"rewardsCurrency";
  rewardsTotalCurrencyCode = [(PKPaymentTransaction *)self->_transaction rewardsTotalCurrencyCode];
  v164 = rewardsTotalCurrencyCode;
  if (rewardsTotalCurrencyCode)
  {
    v46 = rewardsTotalCurrencyCode;
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
  lifecycleIdentifier = [(PKPaymentTransaction *)self->_transaction lifecycleIdentifier];
  v162 = lifecycleIdentifier;
  if (lifecycleIdentifier)
  {
    v50 = lifecycleIdentifier;
  }

  else
  {
    v50 = @"nil";
  }

  v199[28] = v50;
  v198[29] = @"authNetworkData";
  authNetworkData = [(PKPaymentTransaction *)self->_transaction authNetworkData];
  v161 = authNetworkData;
  if (authNetworkData)
  {
    v52 = authNetworkData;
  }

  else
  {
    v52 = @"nil";
  }

  v199[29] = v52;
  v198[30] = @"clearingNetworkData";
  clearingNetworkData = [(PKPaymentTransaction *)self->_transaction clearingNetworkData];
  v160 = clearingNetworkData;
  if (clearingNetworkData)
  {
    v54 = clearingNetworkData;
  }

  else
  {
    v54 = @"nil";
  }

  v199[30] = v54;
  v198[31] = @"cardIdentifier";
  cardIdentifier = [(PKPaymentTransaction *)self->_transaction cardIdentifier];
  v159 = cardIdentifier;
  if (cardIdentifier)
  {
    v56 = cardIdentifier;
  }

  else
  {
    v56 = @"nil";
  }

  v199[31] = v56;
  v198[32] = @"referenceIdentifier";
  referenceIdentifier = [(PKPaymentTransaction *)self->_transaction referenceIdentifier];
  v158 = referenceIdentifier;
  if (referenceIdentifier)
  {
    v58 = referenceIdentifier;
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
  lastMerchantReprocessingDate = [(PKPaymentTransaction *)self->_transaction lastMerchantReprocessingDate];
  v61 = [lastMerchantReprocessingDate description];
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
  merchant = [(PKPaymentTransaction *)self->_transaction merchant];
  lastForceMerchantReprocessingRequestDate = [merchant lastForceMerchantReprocessingRequestDate];
  v63 = [lastForceMerchantReprocessingRequestDate description];
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
  releasedData = [(PKPaymentTransaction *)self->_transaction releasedData];
  elements = [releasedData elements];
  v150 = [v65 numberWithUnsignedInteger:{objc_msgSend(elements, "count")}];
  stringValue3 = [v150 stringValue];
  v199[37] = stringValue3;
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
  bankConnectMetadata = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
  if ([bankConnectMetadata classifiedByMaps])
  {
    v67 = @"YES";
  }

  else
  {
    v67 = @"NO";
  }

  v199[39] = v67;
  v198[40] = @"roundTransactionDate";
  bankConnectMetadata2 = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
  if ([bankConnectMetadata2 roundTransactionDate])
  {
    v68 = @"YES";
  }

  else
  {
    v68 = @"NO";
  }

  v199[40] = v68;
  v198[41] = @"bankConnectCreditDebitIndicator";
  bankConnectMetadata3 = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
  v145 = -[PKTransactionDebugDetailsViewController _stringForCreditDebitIndicator:](self, "_stringForCreditDebitIndicator:", [bankConnectMetadata3 creditDebitIndicator]);
  v199[41] = v145;
  v198[42] = @"bankConnectDigitalServicingURL";
  bankConnectMetadata4 = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
  digitalServicingURL = [bankConnectMetadata4 digitalServicingURL];
  absoluteString = [digitalServicingURL absoluteString];
  v142 = absoluteString;
  if (absoluteString)
  {
    v70 = absoluteString;
  }

  else
  {
    v70 = @"nil";
  }

  v199[42] = v70;
  v198[43] = @"bankConnectPayNowURL";
  bankConnectMetadata5 = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
  payNowURL = [bankConnectMetadata5 payNowURL];
  absoluteString2 = [payNowURL absoluteString];
  v139 = absoluteString2;
  if (absoluteString2)
  {
    v72 = absoluteString2;
  }

  else
  {
    v72 = @"nil";
  }

  v199[43] = v72;
  v198[44] = @"bankConnectPostInstallmentURL";
  bankConnectMetadata6 = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
  postInstallmentURL = [bankConnectMetadata6 postInstallmentURL];
  absoluteString3 = [postInstallmentURL absoluteString];
  v136 = absoluteString3;
  if (absoluteString3)
  {
    v74 = absoluteString3;
  }

  else
  {
    v74 = @"nil";
  }

  v199[44] = v74;
  v198[45] = @"bankConnectRedeemRewardsURL";
  bankConnectMetadata7 = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
  redeemRewardsURL = [bankConnectMetadata7 redeemRewardsURL];
  absoluteString4 = [redeemRewardsURL absoluteString];
  v133 = absoluteString4;
  if (absoluteString4)
  {
    v76 = absoluteString4;
  }

  else
  {
    v76 = @"nil";
  }

  v199[45] = v76;
  v198[46] = @"originalTransactionDescription";
  bankConnectMetadata8 = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
  originalTransactionDescription = [bankConnectMetadata8 originalTransactionDescription];
  v131 = originalTransactionDescription;
  if (originalTransactionDescription)
  {
    v78 = originalTransactionDescription;
  }

  else
  {
    v78 = @"nil";
  }

  v199[46] = v78;
  v198[47] = @"creditDebitIndicator";
  v79 = MEMORY[0x1E696AEC0];
  bankConnectMetadata9 = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
  v129 = [v79 stringWithFormat:@"%ld", objc_msgSend(bankConnectMetadata9, "creditDebitIndicator")];
  v199[47] = v129;
  v198[48] = @"bankCategoryDescription";
  bankConnectMetadata10 = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
  bankCategoryDescription = [bankConnectMetadata10 bankCategoryDescription];
  v127 = bankCategoryDescription;
  if (bankCategoryDescription)
  {
    v81 = bankCategoryDescription;
  }

  else
  {
    v81 = @"nil";
  }

  v199[48] = v81;
  v198[49] = @"bankMerchantAddress";
  bankConnectMetadata11 = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
  bankMerchantAddress = [bankConnectMetadata11 bankMerchantAddress];
  v125 = bankMerchantAddress;
  if (bankMerchantAddress)
  {
    v83 = bankMerchantAddress;
  }

  else
  {
    v83 = @"nil";
  }

  v199[49] = v83;
  v198[50] = @"bankMerchantCategoryCode";
  bankConnectMetadata12 = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
  bankMerchantCategoryCode = [bankConnectMetadata12 bankMerchantCategoryCode];
  v123 = bankMerchantCategoryCode;
  if (bankMerchantCategoryCode)
  {
    v85 = bankMerchantCategoryCode;
  }

  else
  {
    v85 = @"nil";
  }

  v199[50] = v85;
  v198[51] = @"bankMerchantName";
  bankConnectMetadata13 = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
  bankMerchantName = [bankConnectMetadata13 bankMerchantName];
  v121 = bankMerchantName;
  if (bankMerchantName)
  {
    v87 = bankMerchantName;
  }

  else
  {
    v87 = @"nil";
  }

  v199[51] = v87;
  v198[52] = @"bankMerchantNumber";
  bankConnectMetadata14 = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
  bankMerchantNumber = [bankConnectMetadata14 bankMerchantNumber];
  v119 = bankMerchantNumber;
  if (bankMerchantNumber)
  {
    v89 = bankMerchantNumber;
  }

  else
  {
    v89 = @"nil";
  }

  v199[52] = v89;
  v198[53] = @"bankStandardIndustrialClassificationCode";
  bankConnectMetadata15 = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
  bankStandardIndustrialClassificationCode = [bankConnectMetadata15 bankStandardIndustrialClassificationCode];
  v117 = bankStandardIndustrialClassificationCode;
  if (bankStandardIndustrialClassificationCode)
  {
    v91 = bankStandardIndustrialClassificationCode;
  }

  else
  {
    v91 = @"nil";
  }

  v199[53] = v91;
  v198[54] = @"transactionSourceIdentifier";
  transactionSourceIdentifier = [(PKPaymentTransaction *)self->_transaction transactionSourceIdentifier];
  v116 = transactionSourceIdentifier;
  if (transactionSourceIdentifier)
  {
    v93 = transactionSourceIdentifier;
  }

  else
  {
    v93 = @"nil";
  }

  v199[54] = v93;
  v198[55] = @"rewards";
  rewards = [(PKPaymentTransaction *)self->_transaction rewards];
  v94 = [rewards description];
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
  payments = [(PKPaymentTransaction *)self->_transaction payments];
  firstObject = [payments firstObject];
  identifier2 = [firstObject identifier];
  v99 = identifier2;
  if (identifier2)
  {
    v100 = identifier2;
  }

  else
  {
    v100 = @"nil";
  }

  v199[56] = v100;
  v198[57] = @"paymentReferenceIdentifier";
  payments2 = [(PKPaymentTransaction *)self->_transaction payments];
  firstObject2 = [payments2 firstObject];
  referenceIdentifier2 = [firstObject2 referenceIdentifier];
  v104 = referenceIdentifier2;
  if (referenceIdentifier2)
  {
    v105 = referenceIdentifier2;
  }

  else
  {
    v105 = @"nil";
  }

  v199[57] = v105;
  v198[58] = @"isIssuerInstallmentTransaction";
  isIssuerInstallmentTransaction = [(PKPaymentTransaction *)self->_transaction isIssuerInstallmentTransaction];
  v107 = @"NO";
  if (isIssuerInstallmentTransaction)
  {
    v107 = @"YES";
  }

  v199[58] = v107;
  v198[59] = @"issuerInstallmentManagementURL";
  issuerInstallmentManagementURL = [(PKPaymentTransaction *)self->_transaction issuerInstallmentManagementURL];
  absoluteString5 = [issuerInstallmentManagementURL absoluteString];
  v110 = absoluteString5;
  if (absoluteString5)
  {
    v111 = absoluteString5;
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
  merchant = [(PKPaymentTransaction *)self->_transaction merchant];
  v50[0] = @"industryCode";
  v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(merchant, "industryCode")];
  v51[0] = v49;
  v50[1] = @"industryCategory";
  industryCategory = [merchant industryCategory];
  v48 = industryCategory;
  if (industryCategory)
  {
    v4 = industryCategory;
  }

  else
  {
    v4 = @"nil";
  }

  v51[1] = v4;
  v50[2] = @"name";
  name = [merchant name];
  v47 = name;
  if (name)
  {
    v6 = name;
  }

  else
  {
    v6 = @"nil";
  }

  v51[2] = v6;
  v50[3] = @"rawName";
  rawName = [merchant rawName];
  v46 = rawName;
  if (rawName)
  {
    v8 = rawName;
  }

  else
  {
    v8 = @"nil";
  }

  v51[3] = v8;
  v50[4] = @"rawCANL";
  rawCANL = [merchant rawCANL];
  v45 = rawCANL;
  if (rawCANL)
  {
    v10 = rawCANL;
  }

  else
  {
    v10 = @"nil";
  }

  v51[4] = v10;
  v50[5] = @"rawCity";
  rawCity = [merchant rawCity];
  v44 = rawCity;
  if (rawCity)
  {
    v12 = rawCity;
  }

  else
  {
    v12 = @"nil";
  }

  v51[5] = v12;
  v50[6] = @"rawState";
  rawState = [merchant rawState];
  v43 = rawState;
  if (rawState)
  {
    v14 = rawState;
  }

  else
  {
    v14 = @"nil";
  }

  v51[6] = v14;
  v50[7] = @"rawCountry";
  rawCountry = [merchant rawCountry];
  v16 = rawCountry;
  if (rawCountry)
  {
    v17 = rawCountry;
  }

  else
  {
    v17 = @"nil";
  }

  v51[7] = v17;
  v50[8] = @"city";
  city = [merchant city];
  v19 = city;
  if (city)
  {
    v20 = city;
  }

  else
  {
    v20 = @"nil";
  }

  v51[8] = v20;
  v50[9] = @"state";
  state = [merchant state];
  v22 = state;
  if (state)
  {
    v23 = state;
  }

  else
  {
    v23 = @"nil";
  }

  v51[9] = v23;
  v50[10] = @"zip";
  v24 = [merchant zip];
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
  displayName = [merchant displayName];
  v28 = displayName;
  if (displayName)
  {
    v29 = displayName;
  }

  else
  {
    v29 = @"nil";
  }

  v51[11] = v29;
  v50[12] = @"merchantIdentifier";
  merchantIdentifier = [merchant merchantIdentifier];
  v31 = merchantIdentifier;
  if (merchantIdentifier)
  {
    v32 = merchantIdentifier;
  }

  else
  {
    v32 = @"nil";
  }

  v51[12] = v32;
  v50[13] = @"fallbackCategory";
  [merchant fallbackcategory];
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
  fallbackDetailedCategory = [merchant fallbackDetailedCategory];
  v37 = fallbackDetailedCategory;
  if (fallbackDetailedCategory)
  {
    v38 = fallbackDetailedCategory;
  }

  else
  {
    v38 = @"nil";
  }

  v51[14] = v38;
  v50[15] = @"localMatch";
  mapsDataIsFromLocalMatch = [merchant mapsDataIsFromLocalMatch];
  v40 = @"NO";
  if (mapsDataIsFromLocalMatch)
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
  merchant = [(PKPaymentTransaction *)self->_transaction merchant];
  mapsMerchant = [merchant mapsMerchant];

  v42[0] = @"identifier";
  v41 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(mapsMerchant, "identifier")}];
  stringValue = [v41 stringValue];
  v43[0] = stringValue;
  v42[1] = @"resultProviderIdentifier";
  v39 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(mapsMerchant, "resultProviderIdentifier")}];
  stringValue2 = [v39 stringValue];
  v43[1] = stringValue2;
  v42[2] = @"name";
  name = [mapsMerchant name];
  v37 = name;
  if (name)
  {
    v5 = name;
  }

  else
  {
    v5 = @"nil";
  }

  v43[2] = v5;
  v42[3] = @"phoneNumber";
  phoneNumber = [mapsMerchant phoneNumber];
  v36 = phoneNumber;
  if (phoneNumber)
  {
    v7 = phoneNumber;
  }

  else
  {
    v7 = @"nil";
  }

  v43[3] = v7;
  v42[4] = @"url";
  v35 = [mapsMerchant url];
  absoluteString = [v35 absoluteString];
  v34 = absoluteString;
  if (absoluteString)
  {
    v9 = absoluteString;
  }

  else
  {
    v9 = @"nil";
  }

  v43[4] = v9;
  v42[5] = @"location";
  location = [mapsMerchant location];
  v10 = [location description];
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
  postalAddress = [mapsMerchant postalAddress];
  v13 = [postalAddress description];
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
  [mapsMerchant category];
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
  detailedCategory = [mapsMerchant detailedCategory];
  v20 = detailedCategory;
  if (detailedCategory)
  {
    v21 = detailedCategory;
  }

  else
  {
    v21 = @"nil";
  }

  v43[8] = v21;
  v42[9] = @"heroImageURL";
  heroImageURL = [mapsMerchant heroImageURL];
  absoluteString2 = [heroImageURL absoluteString];
  v24 = absoluteString2;
  if (absoluteString2)
  {
    v25 = absoluteString2;
  }

  else
  {
    v25 = @"nil";
  }

  v43[9] = v25;
  v42[10] = @"stylingInfo";
  stylingInfo = [mapsMerchant stylingInfo];
  v27 = [stylingInfo description];
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
  merchant = [(PKPaymentTransaction *)self->_transaction merchant];
  mapsBrand = [merchant mapsBrand];

  v34[0] = @"identifier";
  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(mapsBrand, "identifier")}];
  stringValue = [v33 stringValue];
  v35[0] = stringValue;
  v34[1] = @"resultProviderIdentifier";
  v31 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(mapsBrand, "resultProviderIdentifier")}];
  stringValue2 = [v31 stringValue];
  v35[1] = stringValue2;
  v34[2] = @"name";
  name = [mapsBrand name];
  v29 = name;
  if (name)
  {
    v5 = name;
  }

  else
  {
    v5 = @"nil";
  }

  v35[2] = v5;
  v34[3] = @"phoneNumber";
  phoneNumber = [mapsBrand phoneNumber];
  v7 = phoneNumber;
  if (phoneNumber)
  {
    v8 = phoneNumber;
  }

  else
  {
    v8 = @"nil";
  }

  v35[3] = v8;
  v34[4] = @"url";
  v28 = [mapsBrand url];
  absoluteString = [v28 absoluteString];
  v10 = absoluteString;
  if (absoluteString)
  {
    v11 = absoluteString;
  }

  else
  {
    v11 = @"nil";
  }

  v35[4] = v11;
  v34[5] = @"logoURL";
  logoURL = [mapsBrand logoURL];
  absoluteString2 = [logoURL absoluteString];
  v14 = absoluteString2;
  if (absoluteString2)
  {
    v15 = absoluteString2;
  }

  else
  {
    v15 = @"nil";
  }

  v35[5] = v15;
  v34[6] = @"category";
  [mapsBrand category];
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
  detailedCategory = [mapsBrand detailedCategory];
  v20 = detailedCategory;
  if (detailedCategory)
  {
    v21 = detailedCategory;
  }

  else
  {
    v21 = @"nil";
  }

  v35[7] = v21;
  v34[8] = @"stylingInfo";
  stylingInfo = [mapsBrand stylingInfo];
  v23 = [stylingInfo description];
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

- (id)_transactionInfoCellForIndex:(int64_t)index
{
  transactionDetails = [(PKTransactionDebugDetailsViewController *)self transactionDetails];
  allKeys = [transactionDetails allKeys];
  v7 = [allKeys objectAtIndexedSubscript:index];
  transactionDetails2 = [(PKTransactionDebugDetailsViewController *)self transactionDetails];
  allValues = [transactionDetails2 allValues];
  v10 = [allValues objectAtIndexedSubscript:index];
  v11 = [(PKTransactionDebugDetailsViewController *)self _cellWithPrimaryText:v7 infoText:v10];

  return v11;
}

- (id)_merchantInfoCellForIndex:(int64_t)index
{
  merchantDetails = [(PKTransactionDebugDetailsViewController *)self merchantDetails];
  allKeys = [merchantDetails allKeys];
  v7 = [allKeys objectAtIndexedSubscript:index];
  merchantDetails2 = [(PKTransactionDebugDetailsViewController *)self merchantDetails];
  allValues = [merchantDetails2 allValues];
  v10 = [allValues objectAtIndexedSubscript:index];
  v11 = [(PKTransactionDebugDetailsViewController *)self _cellWithPrimaryText:v7 infoText:v10];

  return v11;
}

- (id)_mapsMerchantInfoCellForIndex:(int64_t)index
{
  if (index)
  {
    indexCopy = index;
    mapsMerchantDetails = [(PKTransactionDebugDetailsViewController *)self mapsMerchantDetails];
    allKeys = [mapsMerchantDetails allKeys];
    v7 = [allKeys objectAtIndex:--indexCopy];

    mapsMerchantDetails2 = [(PKTransactionDebugDetailsViewController *)self mapsMerchantDetails];
    allValues = [mapsMerchantDetails2 allValues];
    v10 = [allValues objectAtIndex:indexCopy];

    _mapsCell = [(PKTransactionDebugDetailsViewController *)self _cellWithPrimaryText:v7 infoText:v10];
  }

  else
  {
    _mapsCell = [(PKTransactionDebugDetailsViewController *)self _mapsCell];
  }

  return _mapsCell;
}

- (id)_mapsBrandInfoCellForIndex:(int64_t)index
{
  mapsBrandDetails = [(PKTransactionDebugDetailsViewController *)self mapsBrandDetails];
  allKeys = [mapsBrandDetails allKeys];
  v7 = [allKeys objectAtIndex:index];

  mapsBrandDetails2 = [(PKTransactionDebugDetailsViewController *)self mapsBrandDetails];
  allValues = [mapsBrandDetails2 allValues];
  v10 = [allValues objectAtIndex:index];

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
    textLabel = [(UITableViewCell *)self->_mapsCell textLabel];
    [textLabel setText:@"View in Maps"];

    textLabel2 = [(UITableViewCell *)self->_mapsCell textLabel];
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    [textLabel2 setTextColor:systemBlueColor];

    mapsCell = self->_mapsCell;
  }

  return mapsCell;
}

- (id)_cellWithPrimaryText:(id)text infoText:(id)infoText
{
  infoTextCopy = infoText;
  textCopy = text;
  tableView = [(PKTransactionDebugDetailsViewController *)self tableView];
  v9 = [tableView dequeueReusableCellWithIdentifier:@"PKPaymentTransactionTitleValueLabelCellReuseIdentifier"];

  [v9 setSelectionStyle:0];
  tableView2 = [(PKTransactionDebugDetailsViewController *)self tableView];
  [tableView2 separatorInset];
  v12 = v11;

  [v9 setLayoutMargins:{0.0, v12, 0.0, v12}];
  keyLabel = [v9 keyLabel];
  [keyLabel setText:textCopy];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [keyLabel setTextColor:labelColor];

  if (self->_inBridge)
  {
    v15 = PKBridgeTextColor();
    [keyLabel setTextColor:v15];
  }

  valueLabel = [v9 valueLabel];
  [valueLabel setText:infoTextCopy];

  return v9;
}

- (void)_didSelectMap
{
  v13[1] = *MEMORY[0x1E69E9840];
  merchant = [(PKPaymentTransaction *)self->_transaction merchant];
  mapsMerchant = [merchant mapsMerchant];

  v5 = objc_alloc_init(MEMORY[0x1E696F260]);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(mapsMerchant, "identifier")}];
  v13[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [v5 _setMuids:v7];

  if ([mapsMerchant resultProviderIdentifier])
  {
    [v5 _setResultProviderID:{objc_msgSend(mapsMerchant, "resultProviderIdentifier")}];
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
  v12 = mapsMerchant;
  v10 = mapsMerchant;
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