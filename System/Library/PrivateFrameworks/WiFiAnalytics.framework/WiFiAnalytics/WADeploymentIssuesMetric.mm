@interface WADeploymentIssuesMetric
- (WADeploymentIssuesMetric)init;
- (id)coreAnalyticsRepresentation;
- (unint64_t)countForIssueType:(unint64_t)a3;
- (unint64_t)percentageForIssueType:(unint64_t)a3;
- (unint64_t)recommendationCount;
- (unint64_t)recommendationPercentage;
- (void)addIssue:(id)a3;
@end

@implementation WADeploymentIssuesMetric

- (WADeploymentIssuesMetric)init
{
  v8.receiver = self;
  v8.super_class = WADeploymentIssuesMetric;
  v2 = [(WADeploymentIssuesMetric *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB50]);
    issues = v2->_issues;
    v2->_issues = v3;

    v5 = objc_alloc_init(MEMORY[0x1E696AB50]);
    networks = v2->_networks;
    v2->_networks = v5;

    v2->_eligibleNetworkCount = 0;
    v2->_ineligibleNetworkCount = 0;
  }

  return v2;
}

- (void)addIssue:(id)a3
{
  networks = self->_networks;
  v5 = a3;
  v6 = [v5 ssid];
  [(NSCountedSet *)networks addObject:v6];

  issues = self->_issues;
  v8 = MEMORY[0x1E696AD98];
  v9 = [v5 type];

  v10 = [v8 numberWithUnsignedInteger:v9];
  [(NSCountedSet *)issues addObject:v10];
}

id __34__WADeploymentIssuesMetric_submit__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) coreAnalyticsRepresentation];
  v2 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446722;
    v6 = "[WADeploymentIssuesMetric submit]_block_invoke";
    v7 = 1024;
    v8 = 67;
    v9 = 2112;
    v10 = v1;
    _os_log_impl(&dword_1C8460000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Submitting deployment issue metric = %@", &v5, 0x1Cu);
  }

  v3 = *MEMORY[0x1E69E9840];

  return v1;
}

- (id)coreAnalyticsRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[WADeploymentIssuesMetric eligibleNetworkCount](self, "eligibleNetworkCount")}];
  [v3 setObject:v4 forKey:@"eligibleC"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[WADeploymentIssuesMetric ineligibleNetworkCount](self, "ineligibleNetworkCount")}];
  [v3 setObject:v5 forKey:@"ineligibleC"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[WADeploymentIssuesMetric recommendationCount](self, "recommendationCount")}];
  [v3 setObject:v6 forKey:@"recommendationC"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[WADeploymentIssuesMetric recommendationPercentage](self, "recommendationPercentage")}];
  [v3 setObject:v7 forKey:@"recommendationP"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[WADeploymentIssuesMetric poorCoverageCount](self, "poorCoverageCount")}];
  [v3 setObject:v8 forKey:@"coverageC"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[WADeploymentIssuesMetric percentageForIssueType:](self, "percentageForIssueType:", 0)}];
  [v3 setObject:v9 forKey:@"coverageP"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[WADeploymentIssuesMetric highCongestionCount](self, "highCongestionCount")}];
  [v3 setObject:v10 forKey:@"congestionC"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[WADeploymentIssuesMetric percentageForIssueType:](self, "percentageForIssueType:", 1)}];
  [v3 setObject:v11 forKey:@"congestionP"];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[WADeploymentIssuesMetric secondsSinceLastRun](self, "secondsSinceLastRun")}];
  [v3 setObject:v12 forKey:@"secondsSinceLastRun"];

  return v3;
}

- (unint64_t)recommendationPercentage
{
  result = [(WADeploymentIssuesMetric *)self eligibleNetworkCount];
  if (result)
  {
    v4 = [(WADeploymentIssuesMetric *)self recommendationCount];
    return 100 * (v4 / [(WADeploymentIssuesMetric *)self eligibleNetworkCount]);
  }

  return result;
}

- (unint64_t)recommendationCount
{
  v2 = [(WADeploymentIssuesMetric *)self networks];
  v3 = [v2 count];

  return v3;
}

- (unint64_t)countForIssueType:(unint64_t)a3
{
  v4 = [(WADeploymentIssuesMetric *)self issues];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [v4 countForObject:v5];

  return v6;
}

- (unint64_t)percentageForIssueType:(unint64_t)a3
{
  result = [(WADeploymentIssuesMetric *)self eligibleNetworkCount];
  if (result)
  {
    v6 = [(WADeploymentIssuesMetric *)self countForIssueType:a3];
    return 100 * (v6 / [(WADeploymentIssuesMetric *)self eligibleNetworkCount]);
  }

  return result;
}

@end