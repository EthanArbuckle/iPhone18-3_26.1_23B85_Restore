@interface WBSPrivacyReportData
- (void)_resetKnownTrackersSortDescriptors;
- (void)_resetTrackedFirstPartiesSortDescriptors;
- (void)_sortKnownTrackers;
- (void)_sortTrackedFirstParties;
@end

@implementation WBSPrivacyReportData

- (void)_resetKnownTrackersSortDescriptors
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"firstParties.@count" ascending:0];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  knownTrackersSortDescriptors = self->_knownTrackersSortDescriptors;
  self->_knownTrackersSortDescriptors = v4;

  [(WBSPrivacyReportData *)self _sortKnownTrackers];
}

- (void)_sortKnownTrackers
{
  v3 = [(NSArray *)self->_knownTrackers sortedArrayUsingDescriptors:self->_knownTrackersSortDescriptors];
  knownTrackers = self->_knownTrackers;
  self->_knownTrackers = v3;

  v5 = [(NSArray *)self->_preventedKnownTrackers sortedArrayUsingDescriptors:self->_knownTrackersSortDescriptors];
  preventedKnownTrackers = self->_preventedKnownTrackers;
  self->_preventedKnownTrackers = v5;

  v7 = [(NSArray *)self->_blockedKnownTrackers sortedArrayUsingDescriptors:self->_knownTrackersSortDescriptors];
  blockedKnownTrackers = self->_blockedKnownTrackers;
  self->_blockedKnownTrackers = v7;
}

- (void)_resetTrackedFirstPartiesSortDescriptors
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"trackers.@count" ascending:0];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  trackedFirstPartiesSortDescriptors = self->_trackedFirstPartiesSortDescriptors;
  self->_trackedFirstPartiesSortDescriptors = v4;

  [(WBSPrivacyReportData *)self _sortTrackedFirstParties];
}

- (void)_sortTrackedFirstParties
{
  v3 = [(NSArray *)self->_trackedFirstParties sortedArrayUsingDescriptors:self->_trackedFirstPartiesSortDescriptors];
  trackedFirstParties = self->_trackedFirstParties;
  self->_trackedFirstParties = v3;
}

void __111__WBSPrivacyReportData__getHighLevelHTTPFamilyDomainsFromHistoryVisitedAfterDate_beforeDate_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_1C6968000, a2, OS_LOG_TYPE_ERROR, "Could not load data from history %{public}@", &v3, 0xCu);
}

@end