@interface PTBrightSceneDetector
- (PTBrightSceneDetector)initWithLuxLevelThreshold:(float)threshold emaFilterCoefficient:(float)coefficient transitionTime:;
- (__n64)debugState;
- (void)updateWithLuxLevel:(float)level deltaTime:(float)time;
@end

@implementation PTBrightSceneDetector

- (PTBrightSceneDetector)initWithLuxLevelThreshold:(float)threshold emaFilterCoefficient:(float)coefficient transitionTime:
{
  v5 = v4;
  v12 = *&threshold;
  v13.receiver = self;
  v13.super_class = PTBrightSceneDetector;
  v7 = [(PTBrightSceneDetector *)&v13 init];
  v8 = v7;
  if (v7)
  {
    if ((vcgt_f32(v12, vdup_lane_s32(v12, 1)).u8[0] & 1) == 0)
    {
      *v7->_luxLevelThreshold = v12;
      v7->_emaFilterCoefficient = coefficient;
      v7->_transitionTime = v5;
      [(PTBrightSceneDetector *)v7 reset];
      v10 = v8;
      goto LABEL_8;
    }

    v9 = _PTLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PTBrightSceneDetector initWithLuxLevelThreshold:v9 emaFilterCoefficient:? transitionTime:?];
    }
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (void)updateWithLuxLevel:(float)level deltaTime:(float)time
{
  v4 = self->_filteredLuxLevel + (self->_emaFilterCoefficient * (level - self->_filteredLuxLevel));
  self->_filteredLuxLevel = v4;
  v5 = *&self->_luxLevelThreshold[4 * !self->_brightSceneState] < v4;
  self->_brightSceneState = v5;
  timeCopy = -time;
  if (v5)
  {
    timeCopy = time;
  }

  v7 = (self->_brightScene + (timeCopy / self->_transitionTime));
  if (v7 > 1.0)
  {
    v7 = 1.0;
  }

  v8 = fmax(v7, 0.0);
  self->_brightScene = v8;
}

- (__n64)debugState
{
  result.n64_u32[0] = *(self + 12);
  LOBYTE(a3) = *(self + 16);
  result.n64_f32[1] = LODWORD(a3);
  return result;
}

@end