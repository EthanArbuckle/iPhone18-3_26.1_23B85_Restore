@interface SPGeoPersonalizationEngagementMetric
- (SPGeoPersonalizationEngagementMetric)init;
- (id)serializedMetric;
@end

@implementation SPGeoPersonalizationEngagementMetric

- (SPGeoPersonalizationEngagementMetric)init
{
  v3.receiver = self;
  v3.super_class = SPGeoPersonalizationEngagementMetric;
  return [(SPGeoPersonalizationEngagementMetric *)&v3 init];
}

- (id)serializedMetric
{
  v3 = objc_opt_new();
  v4 = v3;
  engagedGeoResultEntityRelevanceScore = self->_engagedGeoResultEntityRelevanceScore;
  if (engagedGeoResultEntityRelevanceScore)
  {
    [v3 setObject:engagedGeoResultEntityRelevanceScore forKeyedSubscript:@"engagedGeoResultEntityRelevanceScore"];
  }

  engagedGeoResultNumberOfVisits = self->_engagedGeoResultNumberOfVisits;
  if (engagedGeoResultNumberOfVisits)
  {
    [v4 setObject:engagedGeoResultNumberOfVisits forKeyedSubscript:@"engagedGeoResultNumberOfVisits"];
  }

  engagedGeoResultNumberOfVisitsGivenLocation = self->_engagedGeoResultNumberOfVisitsGivenLocation;
  if (engagedGeoResultNumberOfVisitsGivenLocation)
  {
    [v4 setObject:engagedGeoResultNumberOfVisitsGivenLocation forKeyedSubscript:@"engagedGeoResultNumberOfVisitsGivenLocation"];
  }

  engagedGeoResultPersonalizationType = self->_engagedGeoResultPersonalizationType;
  if (engagedGeoResultPersonalizationType)
  {
    [v4 setObject:engagedGeoResultPersonalizationType forKeyedSubscript:@"engagedGeoResultPersonalizationType"];
  }

  engagedGeoResultPosition = self->_engagedGeoResultPosition;
  if (engagedGeoResultPosition)
  {
    [v4 setObject:engagedGeoResultPosition forKeyedSubscript:@"engagedGeoResultPosition"];
  }

  engagedGeoResultTimeSinceLastVisit = self->_engagedGeoResultTimeSinceLastVisit;
  if (engagedGeoResultTimeSinceLastVisit)
  {
    [v4 setObject:engagedGeoResultTimeSinceLastVisit forKeyedSubscript:@"engagedGeoResultTimeSinceLastVisit"];
  }

  engagedGeoResultTimeUntilUpcomingEvent = self->_engagedGeoResultTimeUntilUpcomingEvent;
  if (engagedGeoResultTimeUntilUpcomingEvent)
  {
    [v4 setObject:engagedGeoResultTimeUntilUpcomingEvent forKeyedSubscript:@"engagedGeoResultTimeUntilUpcomingEvent"];
  }

  engagedResultWasTopHit = self->_engagedResultWasTopHit;
  if (engagedResultWasTopHit)
  {
    [v4 setObject:engagedResultWasTopHit forKeyedSubscript:@"engagedResultWasTopHit"];
  }

  firstGeoResultEntityRelevanceScore = self->_firstGeoResultEntityRelevanceScore;
  if (firstGeoResultEntityRelevanceScore)
  {
    [v4 setObject:firstGeoResultEntityRelevanceScore forKeyedSubscript:@"firstGeoResultEntityRelevanceScore"];
  }

  firstGeoResultIsCandidateForPromotion = self->_firstGeoResultIsCandidateForPromotion;
  if (firstGeoResultIsCandidateForPromotion)
  {
    [v4 setObject:firstGeoResultIsCandidateForPromotion forKeyedSubscript:@"firstGeoResultIsCandidateForPromotion"];
  }

  firstGeoResultNumberOfVisits = self->_firstGeoResultNumberOfVisits;
  if (firstGeoResultNumberOfVisits)
  {
    [v4 setObject:firstGeoResultNumberOfVisits forKeyedSubscript:@"firstGeoResultNumberOfVisits"];
  }

  firstGeoResultNumberOfVisitsGivenLocation = self->_firstGeoResultNumberOfVisitsGivenLocation;
  if (firstGeoResultNumberOfVisitsGivenLocation)
  {
    [v4 setObject:firstGeoResultNumberOfVisitsGivenLocation forKeyedSubscript:@"firstGeoResultNumberOfVisitsGivenLocation"];
  }

  firstGeoResultPersonalizationType = self->_firstGeoResultPersonalizationType;
  if (firstGeoResultPersonalizationType)
  {
    [v4 setObject:firstGeoResultPersonalizationType forKeyedSubscript:@"firstGeoResultPersonalizationType"];
  }

  firstGeoResultTimeSinceLastVisit = self->_firstGeoResultTimeSinceLastVisit;
  if (firstGeoResultTimeSinceLastVisit)
  {
    [v4 setObject:firstGeoResultTimeSinceLastVisit forKeyedSubscript:@"firstGeoResultTimeSinceLastVisit"];
  }

  firstGeoResultTimeUntilUpcomingEvent = self->_firstGeoResultTimeUntilUpcomingEvent;
  if (firstGeoResultTimeUntilUpcomingEvent)
  {
    [v4 setObject:firstGeoResultTimeUntilUpcomingEvent forKeyedSubscript:@"firstGeoResultTimeUntilUpcomingEvent"];
  }

  firstGeoResultWasReranked = self->_firstGeoResultWasReranked;
  if (firstGeoResultWasReranked)
  {
    [v4 setObject:firstGeoResultWasReranked forKeyedSubscript:@"firstGeoResultWasReranked"];
  }

  v21 = [MEMORY[0x1E696AD98] numberWithBool:self->_geoResultsViewed];
  [v4 setObject:v21 forKeyedSubscript:@"geoResultsViewed"];

  v22 = [MEMORY[0x1E696AD98] numberWithBool:self->_geoResultWasTopHit];
  [v4 setObject:v22 forKeyedSubscript:@"geoResultWasTopHit"];

  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_interaction];
  [v4 setObject:v23 forKeyedSubscript:@"interaction"];

  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_numberOfPersonalGeoResults];
  [v4 setObject:v24 forKeyedSubscript:@"numberOfPersonalGeoResults"];

  trialDeploymentId = self->_trialDeploymentId;
  if (trialDeploymentId)
  {
    [v4 setObject:trialDeploymentId forKeyedSubscript:@"trialDeploymentId"];
  }

  trialExperimentId = self->_trialExperimentId;
  if (trialExperimentId)
  {
    [v4 setObject:trialExperimentId forKeyedSubscript:@"trialExperimentId"];
  }

  trialTreatmentId = self->_trialTreatmentId;
  if (trialTreatmentId)
  {
    [v4 setObject:trialTreatmentId forKeyedSubscript:@"trialTreatmentId"];
  }

  v28 = [v4 copy];

  return v28;
}

@end