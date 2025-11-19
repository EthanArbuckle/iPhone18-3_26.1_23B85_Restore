@interface SBSceneRelevancyEffect
+ (id)effectWithFlattenMode:(id)a3 jetsamMode:(char)a4 resourceElevation:(char)a5 activityMode:(char)a6 resignActive:(BOOL)a7 freeze:(BOOL)a8;
- (SBSceneRelevancyEffect)initWithFlattenMode:(id)a3 jetsamMode:(char)a4 resourceElevation:(char)a5 activityMode:(char)a6 resignActive:(BOOL)a7 freeze:(BOOL)a8;
@end

@implementation SBSceneRelevancyEffect

- (SBSceneRelevancyEffect)initWithFlattenMode:(id)a3 jetsamMode:(char)a4 resourceElevation:(char)a5 activityMode:(char)a6 resignActive:(BOOL)a7 freeze:(BOOL)a8
{
  v15 = a3;
  v19.receiver = self;
  v19.super_class = SBSceneRelevancyEffect;
  v16 = [(SBSceneRelevancyEffect *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_flattenMode, a3);
    v17->_jetsamMode = a4;
    v17->_resourceElevation = a5;
    v17->_activityMode = a6;
    v17->_resignActive = a7;
    v17->_freeze = a8;
  }

  return v17;
}

+ (id)effectWithFlattenMode:(id)a3 jetsamMode:(char)a4 resourceElevation:(char)a5 activityMode:(char)a6 resignActive:(BOOL)a7 freeze:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v14 = a3;
  v15 = [[a1 alloc] initWithFlattenMode:v14 jetsamMode:v12 resourceElevation:v11 activityMode:v10 resignActive:v9 freeze:v8];

  return v15;
}

@end