@interface MKWalletRAPReport(InitWithTransaction)
- (void)initForMerchantIssue:()InitWithTransaction transaction:account:comments:;
@end

@implementation MKWalletRAPReport(InitWithTransaction)

- (void)initForMerchantIssue:()InitWithTransaction transaction:account:comments:
{
  v8 = a4;
  v9 = a5;
  v51 = a6;
  v10 = [v8 issueReportIdentifier];
  if (![v10 length])
  {
    v11 = [MEMORY[0x1E696AFB0] UUID];
    v12 = [v11 UUIDString];

    v10 = v12;
  }

  v52 = v9;
  v13 = [v8 merchant];
  v14 = [v13 mapsMerchant];
  v15 = [v13 mapsBrand];
  v16 = [v14 postalAddress];
  v50 = v10;
  if (v16)
  {
    v17 = MEMORY[0x1E695CF68];
    v18 = [v14 postalAddress];
    v19 = [v17 stringFromPostalAddress:v18 style:0];
  }

  else
  {
    v19 = 0;
  }

  v20 = [v8 location];
  [v20 coordinate];
  v22 = v21;
  v24 = v23;

  v44 = [v13 industryCode];
  v48 = v15;
  v49 = v14;
  if ([v14 identifier])
  {
    v25 = v14;
  }

  else
  {
    v25 = v15;
  }

  v43 = [v25 identifier];
  v26 = [v13 name];
  v27 = [v13 rawName];
  v28 = [v13 industryCategory];
  v29 = [v13 originURL];
  v30 = [v29 absoluteString];
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
  v37 = [a1 initForMerchantIssue:a3 merchantIndustryCode:v44 mapsIdentifier:v43 merchantName:v26 merchantRawName:v27 merchantIndustryCategory:v28 merchantURL:v35 merchantFormattedAddress:v22 transactionTime:v24 transactionType:v30 transactionLocation:{v31, v36}];

  if (v37)
  {
    [v37 setIsAppleCard:{objc_msgSend(v52, "feature") == 2}];
    v38 = [v32 transactionSource];
    [v32 transactionType];
    if ((v38 - 1) > 7)
    {
      v39 = 0;
    }

    else
    {
      v39 = qword_1BE1154A0[v38 - 1];
    }

    [v37 setLookupTransactionType:v39];
    if ([v32 hasEffectiveTransactionSource])
    {
      v40 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v13, "adamIdentifier")}];
      v41 = [v40 stringValue];
      [v37 setMerchantAdamId:v41];
    }

    [v37 setCorrelationId:v50];
    [v37 setReportersComment:v51];
  }

  return v37;
}

@end