@interface ATXTimelineRelevanceAbuseControlOutcome
+ (id)descriptionForOutcome:(int64_t)a3;
+ (id)outcomeWithSuggestion:(id)a3 timestamp:(double)a4 abuseControlOutcome:(int64_t)a5;
+ (id)outcomeWithSuggestionId:(id)a3 timestamp:(double)a4 abuseControlOutcome:(int64_t)a5;
- (ATXTimelineRelevanceAbuseControlOutcome)initWithSuggestion:(id)a3 suggestionId:(id)a4 timestamp:(double)a5 abuseControlOutcome:(int64_t)a6;
- (ATXTimelineRelevanceAbuseControlOutcome)initWithSuggestion:(id)a3 timestamp:(double)a4 abuseControlOutcome:(int64_t)a5;
@end

@implementation ATXTimelineRelevanceAbuseControlOutcome

- (ATXTimelineRelevanceAbuseControlOutcome)initWithSuggestion:(id)a3 timestamp:(double)a4 abuseControlOutcome:(int64_t)a5
{
  v8 = a3;
  v9 = [v8 suggestionIdentifier];
  v10 = [(ATXTimelineRelevanceAbuseControlOutcome *)self initWithSuggestion:v8 suggestionId:v9 timestamp:a5 abuseControlOutcome:a4];

  return v10;
}

- (ATXTimelineRelevanceAbuseControlOutcome)initWithSuggestion:(id)a3 suggestionId:(id)a4 timestamp:(double)a5 abuseControlOutcome:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = ATXTimelineRelevanceAbuseControlOutcome;
  v13 = [(ATXTimelineRelevanceAbuseControlOutcome *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_timestamp = a5;
    objc_storeStrong(&v13->_suggestion, a3);
    objc_storeStrong(&v14->_suggestionId, a4);
    v14->_abuseControlOutcome = a6;
  }

  return v14;
}

+ (id)outcomeWithSuggestion:(id)a3 timestamp:(double)a4 abuseControlOutcome:(int64_t)a5
{
  v8 = a3;
  v9 = [[a1 alloc] initWithSuggestion:v8 timestamp:a5 abuseControlOutcome:a4];

  return v9;
}

+ (id)outcomeWithSuggestionId:(id)a3 timestamp:(double)a4 abuseControlOutcome:(int64_t)a5
{
  v8 = a3;
  v9 = [[a1 alloc] initWithSuggestion:0 suggestionId:v8 timestamp:a5 abuseControlOutcome:a4];

  return v9;
}

+ (id)descriptionForOutcome:(int64_t)a3
{
  v4 = @"Outcome: Failure, Reason: FailureRecentDismissal: Recently dismissed by user";
  switch(a3)
  {
    case 0:
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown abuse control outcome: %ld", 0];
      goto LABEL_3;
    case 2:
      v4 = @"Outcome: Failure, Reason: FailureWidgetIsOnDenyList: Widget on deny list";

      break;
    case 3:
      v4 = @"Outcome: Failure, Reason: FailureRotationExceededDurationLimit: Failed Abuse Control (exceeding duration limit)";

      break;
    case 4:
      v4 = @"Outcome: Failure, Reason: FailureEarlierSuggestionCurrentlyBeingPredictedWasChosen: Earlier suggestion from the same timeline still being predicted";

      break;
    case 5:
      v4 = @"Outcome: Failure, Reason: FailureLaterSuggestionChosen: Later suggestion from the same timeline";

      break;
    case 6:
      v4 = @"Outcome: Failure, Reason: FailureScoreIsSameAsThresholdButCountOfRecentRotationsExceedsSoftRotationQuota: score == threshold, but number of rotations >= softRotationQuota";

      break;
    case 7:
      v4 = @"Outcome: Failure, Reason: FailureNilRelevance: Timeline Suggestion with nil relevance. This should never happen.";

      break;
    case 8:
      v4 = @"Outcome: Failure, Reason: FailureNonPositiveScore: Timeline Suggestion with non-positive score. This should never happen.";

      break;
    case 9:
      v4 = @"Outcome: Failure, Reason: FailureNumberOfRecentRotationsHaveReachedHardRotationQuota: rotations for this timeline in the past 24 hour have reached or exceeded the hard rotation quota";

      break;
    case 10:
      v4 = @"Outcome: Failure, Reason: FailureSuggestionInCoolDown: Suggestion for this timeline is still in cool down";

      break;
    case 11:
      v4 = @"Outcome: Failure, Reason: FailureInsufficientHistory: Insufficient timeline relevance donation history";

      break;
    case 12:
      v4 = @"Outcome: Failure, Reason: FailureScoreIsSmallerThanThreshold: score < threshold";

      break;
    case 13:
      v4 = @"Outcome: Failure, Reason: FailureScoreIsSameAsThresholdBadLuck: score == threshold, suggestion failed abuse control test after coin toss";

      break;
    case 14:
      v4 = @"Outcome: Pass, Reason: PassWidgetKitDeveloperModeEnabled: WidgetKit Developer Mode is enabled and debugging is allowed for widget; bypassing abuse control";

      break;
    case 15:
      v4 = @"Outcome: Pass, Reason: PassWidgetHasUnlimitedSoftRotationQuota: Unlimited soft rotation quota";

      break;
    case 16:
      v4 = @"Outcome: Pass, Reason: PassSoftRotationQuotaExceedsAverageCountOfDailyEntries: avgNumEntryPerDay < softRotationQuota";

      break;
    case 17:
      v4 = @"Outcome: Pass, Reason: PassSuggestionPreviouslyPassedButWidgetHasNotBeenSurfaced: Suggestion has passed before and haven't been rotated to.";

      break;
    case 18:
      v4 = @"Outcome: Pass, Reason: PassWidgetWasSurfacedAndHasNotExceededDurationLimit: Rotation for this suggestion exists and is within duration limit";

      break;
    case 19:
      v4 = @"Outcome: Pass, Reason: PassScoreIsGreaterThanThreshold: score > threshold";

      break;
    case 20:
      v4 = @"Outcome: Pass, Reason: PassScoreIsSameAsThresholdGoodLuck: score == threshold, suggestion passed abuse control test after coin toss";

      break;
    case 21:
      v4 = @"Outcome: Suggestion has expired";

      break;
    case 22:
      v4 = @"Outcome: Failure, Reason: Blocked by Screen Time.";

      break;
    case 23:
      v4 = @"Outcome: Failure, Reason: FailureScoreIsSameAsThresholdRandomizationDisabled: score == threshold, randomization disabled";

      break;
    default:
LABEL_3:

      break;
  }

  return v4;
}

@end