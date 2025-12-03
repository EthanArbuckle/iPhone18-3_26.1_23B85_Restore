@interface SBSceneRelevancyEffect
+ (id)effectWithFlattenMode:(id)mode jetsamMode:(char)jetsamMode resourceElevation:(char)elevation activityMode:(char)activityMode resignActive:(BOOL)active freeze:(BOOL)freeze;
- (SBSceneRelevancyEffect)initWithFlattenMode:(id)mode jetsamMode:(char)jetsamMode resourceElevation:(char)elevation activityMode:(char)activityMode resignActive:(BOOL)active freeze:(BOOL)freeze;
@end

@implementation SBSceneRelevancyEffect

- (SBSceneRelevancyEffect)initWithFlattenMode:(id)mode jetsamMode:(char)jetsamMode resourceElevation:(char)elevation activityMode:(char)activityMode resignActive:(BOOL)active freeze:(BOOL)freeze
{
  modeCopy = mode;
  v19.receiver = self;
  v19.super_class = SBSceneRelevancyEffect;
  v16 = [(SBSceneRelevancyEffect *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_flattenMode, mode);
    v17->_jetsamMode = jetsamMode;
    v17->_resourceElevation = elevation;
    v17->_activityMode = activityMode;
    v17->_resignActive = active;
    v17->_freeze = freeze;
  }

  return v17;
}

+ (id)effectWithFlattenMode:(id)mode jetsamMode:(char)jetsamMode resourceElevation:(char)elevation activityMode:(char)activityMode resignActive:(BOOL)active freeze:(BOOL)freeze
{
  freezeCopy = freeze;
  activeCopy = active;
  activityModeCopy = activityMode;
  elevationCopy = elevation;
  jetsamModeCopy = jetsamMode;
  modeCopy = mode;
  v15 = [[self alloc] initWithFlattenMode:modeCopy jetsamMode:jetsamModeCopy resourceElevation:elevationCopy activityMode:activityModeCopy resignActive:activeCopy freeze:freezeCopy];

  return v15;
}

@end