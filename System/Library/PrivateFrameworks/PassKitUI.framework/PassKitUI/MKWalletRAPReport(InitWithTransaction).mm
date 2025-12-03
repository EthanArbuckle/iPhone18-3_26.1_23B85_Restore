@interface MKWalletRAPReport(InitWithTransaction)
- (void)initForMerchantIssue:()InitWithTransaction transaction:account:comments:;
@end

@implementation MKWalletRAPReport(InitWithTransaction)

- (void)initForMerchantIssue:()InitWithTransaction transaction:account:comments:
{
  v8 = a4;
  v9 = a5;
  v51 = a6;
  issueReportIdentifier = [v8 issueReportIdentifier];
  if (![issueReportIdentifier length])
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    issueReportIdentifier = uUIDString;
  }

  v52 = v9;
  merchant = [v8 merchant];
  mapsMerchant = [merchant mapsMerchant];
  mapsBrand = [merchant mapsBrand];
  postalAddress = [mapsMerchant postalAddress];
  v50 = issueReportIdentifier;
  if (postalAddress)
  {
    v17 = MEMORY[0x1E695CF68];
    postalAddress2 = [mapsMerchant postalAddress];
    v19 = [v17 stringFromPostalAddress:postalAddress2 style:0];
  }

  else
  {
    v19 = 0;
  }

  location = [v8 location];
  [location coordinate];
  v22 = v21;
  v24 = v23;

  industryCode = [merchant industryCode];
  v48 = mapsBrand;
  v49 = mapsMerchant;
  if ([mapsMerchant identifier])
  {
    v25 = mapsMerchant;
  }

  else
  {
    v25 = mapsBrand;
  }

  identifier = [v25 identifier];
  name = [merchant name];
  rawName = [merchant rawName];
  industryCategory = [merchant industryCategory];
  originURL = [merchant originURL];
  absoluteString = [originURL absoluteString];
  v47 = v19;
  if (v19)
  {
    v31 = v19;
  }

  else
  {
    v31 = &stru_1F3BD7330;
  }

  [v8 transactionDate];
  v33 = v32 = v8;
  [v33 timeIntervalSinceReferenceDate];
  v35 = v34;
  [v8 transactionType];
  v36 = PKPaymentTransactionTypeToString();
  v37 = [self initForMerchantIssue:a3 merchantIndustryCode:industryCode mapsIdentifier:identifier merchantName:name merchantRawName:rawName merchantIndustryCategory:industryCategory merchantURL:v35 merchantFormattedAddress:v22 transactionTime:v24 transactionType:absoluteString transactionLocation:{v31, v36}];

  if (v37)
  {
    [v37 setIsAppleCard:{objc_msgSend(v52, "feature") == 2}];
    transactionSource = [v32 transactionSource];
    [v32 transactionType];
    if ((transactionSource - 1) > 7)
    {
      v39 = 0;
    }

    else
    {
      v39 = qword_1BE1154A0[transactionSource - 1];
    }

    [v37 setLookupTransactionType:v39];
    if ([v32 hasEffectiveTransactionSource])
    {
      v40 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(merchant, "adamIdentifier")}];
      stringValue = [v40 stringValue];
      [v37 setMerchantAdamId:stringValue];
    }

    [v37 setCorrelationId:v50];
    [v37 setReportersComment:v51];
  }

  return v37;
}

@end