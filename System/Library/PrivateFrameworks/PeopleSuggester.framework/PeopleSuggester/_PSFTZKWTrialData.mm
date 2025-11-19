@interface _PSFTZKWTrialData
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _PSFTZKWTrialData

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(_PSFTZKWTrialData *)self experimentIdentifiers];
  [v4 setExperimentIdentifiers:v5];

  v6 = [(_PSFTZKWTrialData *)self rolloutIdentifiers];
  [v4 setRolloutIdentifiers:v6];

  [v4 setStructuredCalendarIsEnabled:{-[_PSFTZKWTrialData structuredCalendarIsEnabled](self, "structuredCalendarIsEnabled")}];
  [v4 setStructuredCalendarDefaultConfidenceCategory:{-[_PSFTZKWTrialData structuredCalendarDefaultConfidenceCategory](self, "structuredCalendarDefaultConfidenceCategory")}];
  [v4 setUnstructuredCalendarIsEnabled:{-[_PSFTZKWTrialData unstructuredCalendarIsEnabled](self, "unstructuredCalendarIsEnabled")}];
  [v4 setUnstructuredCalendarDefaultConfidenceCategory:{-[_PSFTZKWTrialData unstructuredCalendarDefaultConfidenceCategory](self, "unstructuredCalendarDefaultConfidenceCategory")}];
  [v4 setUnstructuredRemindersIsEnabled:{-[_PSFTZKWTrialData unstructuredRemindersIsEnabled](self, "unstructuredRemindersIsEnabled")}];
  [v4 setUnstructuredRemindersDefaultConfidenceCategory:{-[_PSFTZKWTrialData unstructuredRemindersDefaultConfidenceCategory](self, "unstructuredRemindersDefaultConfidenceCategory")}];
  [v4 setPrimaryInteractionsIsEnabled:{-[_PSFTZKWTrialData primaryInteractionsIsEnabled](self, "primaryInteractionsIsEnabled")}];
  [v4 setPrimaryInteractionsDefaultConfidenceCategory:{-[_PSFTZKWTrialData primaryInteractionsDefaultConfidenceCategory](self, "primaryInteractionsDefaultConfidenceCategory")}];
  [v4 setPrimaryInteractionsModelType:{-[_PSFTZKWTrialData primaryInteractionsModelType](self, "primaryInteractionsModelType")}];
  [v4 setFallbackInteractionsIsEnabled:{-[_PSFTZKWTrialData primaryInteractionsIsEnabled](self, "primaryInteractionsIsEnabled")}];
  [v4 setFallbackInteractionsDefaultConfidenceCategory:{-[_PSFTZKWTrialData fallbackInteractionsDefaultConfidenceCategory](self, "fallbackInteractionsDefaultConfidenceCategory")}];
  [v4 setFallbackInteractionsModelType:{-[_PSFTZKWTrialData fallbackInteractionsModelType](self, "fallbackInteractionsModelType")}];
  return v4;
}

@end