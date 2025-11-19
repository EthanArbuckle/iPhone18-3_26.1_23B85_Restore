@interface SMTriggerDestinationState
@end

@implementation SMTriggerDestinationState

void __92__SMTriggerDestinationState_RTCoreDataTransformable__createWithSMTriggerDestinationStateMO___block_invoke(uint64_t a1)
{
  v24 = objc_alloc(MEMORY[0x277D4AC30]);
  v25 = [*(a1 + 32) sessionIdentifier_v2];
  v23 = [*(a1 + 32) currentStatus];
  v22 = [*(a1 + 32) currentStatusDate];
  v21 = [*(a1 + 32) lastLockDate];
  v2 = [*(a1 + 32) lastUnlockDate];
  v20 = [*(a1 + 32) predominantModeOfTransport_v2];
  v3 = [*(a1 + 32) numberOfETARetries];
  v4 = [*(a1 + 32) shouldRetryETAQuery];
  v5 = [*(a1 + 32) roundTripReminderDate];
  v6 = [*(a1 + 32) timeToUpdateStatus];
  v7 = objc_alloc(MEMORY[0x277D4AC38]);
  v8 = [*(a1 + 32) upperBoundEtaMapsUpperBoundEta];
  v9 = [*(a1 + 32) upperBoundEtaCrowFliesUpperBoundEta];
  v10 = [v7 initWithMapsUpperBoundEta:v8 crowFliesUpperBoundEta:v9];
  [*(a1 + 32) mapsExpectedTravelTime];
  v12 = v11;
  [*(a1 + 32) remainingDistance];
  v14 = v13;
  v15 = [*(a1 + 32) date];
  BYTE2(v19) = v4;
  LOWORD(v19) = v3;
  v16 = [v24 initWithSessionIdentifier:v25 currentStatus:v23 currentStatusDate:v22 lastLockDate:v21 lastUnlockDate:v2 predominantModeOfTransport:v20 numberOfETARetries:v12 shouldRetryETAQuery:v14 roundTripReminderDate:v19 timeToUpdateStatus:v5 upperBoundEta:v6 mapsExpectedTravelTime:v10 remainingDistance:v15 date:?];
  v17 = *(*(a1 + 40) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;
}

@end