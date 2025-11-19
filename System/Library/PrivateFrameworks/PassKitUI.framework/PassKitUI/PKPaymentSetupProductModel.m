@interface PKPaymentSetupProductModel
@end

@implementation PKPaymentSetupProductModel

uint64_t __78__PKPaymentSetupProductModel_PKUIUtilities___localCredentials_containProduct___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isRemoteCredential])
  {
    v4 = [v3 remoteCredential];
  }

  else
  {
    if (![v3 isCarKeyTerminalPairingCredential])
    {
      v8 = 0;
      goto LABEL_7;
    }

    v4 = [v3 carKeyTerminalPairingCredential];
  }

  v5 = v4;
  v6 = *(a1 + 32);
  v7 = [v4 productIdentifier];
  v8 = [v6 isEqualToString:v7];

LABEL_7:
  return v8;
}

@end