@interface SFHeadphoneProxPairingEvent
- (NSDictionary)eventPayload;
- (void)submitEvent;
@end

@implementation SFHeadphoneProxPairingEvent

- (NSDictionary)eventPayload
{
  v23[10] = *MEMORY[0x1E69E9840];
  v22[0] = @"errorCode";
  v21 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SFHeadphoneProxPairingEvent errorCode](self, "errorCode")}];
  v23[0] = v21;
  v22[1] = @"pairingType";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SFHeadphoneProxPairingEvent pairingType](self, "pairingType")}];
  v23[1] = v3;
  v22[2] = @"attemptedPairing";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFHeadphoneProxPairingEvent attemptedPairing](self, "attemptedPairing")}];
  v23[2] = v4;
  v22[3] = @"pairingDuration";
  v5 = MEMORY[0x1E696AD98];
  [(SFHeadphoneProxPairingEvent *)self pairingDuration];
  v6 = [v5 numberWithDouble:?];
  v23[3] = v6;
  v22[4] = @"foundToFirstCardDuration";
  v7 = MEMORY[0x1E696AD98];
  [(SFHeadphoneProxPairingEvent *)self foundToFirstCardDuration];
  v8 = [v7 numberWithDouble:?];
  v23[4] = v8;
  v22[5] = @"triggerToFirstCardDuration";
  v9 = MEMORY[0x1E696AD98];
  [(SFHeadphoneProxPairingEvent *)self triggerToFirstCardDuration];
  v10 = [v9 numberWithDouble:?];
  v23[5] = v10;
  v22[6] = @"assetFetchDuration";
  v11 = MEMORY[0x1E696AD98];
  [(SFHeadphoneProxPairingEvent *)self assetFetchDuration];
  v12 = [v11 numberWithDouble:?];
  v23[6] = v12;
  v22[7] = @"color";
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[SFHeadphoneProxPairingEvent color](self, "color")}];
  v23[7] = v13;
  v22[8] = @"productID";
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SFHeadphoneProxPairingEvent productID](self, "productID")}];
  v23[8] = v14;
  v22[9] = @"productIDString";
  productIDString = [(SFHeadphoneProxPairingEvent *)self productIDString];
  v16 = productIDString;
  v17 = &stru_1F1D30528;
  if (productIDString)
  {
    v17 = productIDString;
  }

  v23[9] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:10];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)submitEvent
{
  v4 = +[SFHeadphoneProxPairingEvent eventName];
  eventPayload = [(SFHeadphoneProxPairingEvent *)self eventPayload];
  SFMetricsLog(v4, eventPayload);
}

@end