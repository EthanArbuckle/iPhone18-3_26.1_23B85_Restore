@interface _UISceneLayoutPreferenceBuilder
- (_UISceneLayoutPreferenceBuilder)init;
- (void)buildLayoutPreferences:(void *)preferences usingBlock:;
@end

@implementation _UISceneLayoutPreferenceBuilder

- (_UISceneLayoutPreferenceBuilder)init
{
  v8.receiver = self;
  v8.super_class = _UISceneLayoutPreferenceBuilder;
  result = [(_UISceneLayoutPreferenceBuilder *)&v8 init];
  if (result)
  {
    __asm { FMOV            V0.2D, #-1.0 }

    *&result->_minWidth = _Q0;
    *&result->_minDepth = _Q0;
    *&result->_maxHeight = _Q0;
    result->_builderDepth = 0;
  }

  return result;
}

- (void)buildLayoutPreferences:(void *)preferences usingBlock:
{
  v20 = a2;
  preferencesCopy = preferences;
  v6 = preferencesCopy;
  if (self)
  {
    v7 = *(self + 56);
    if (!v7)
    {
      __asm { FMOV            V0.2D, #-1.0 }

      *(self + 8) = _Q0;
      *(self + 24) = _Q0;
      *(self + 40) = _Q0;
    }

    *(self + 56) = v7 + 1;
    (*(preferencesCopy + 2))(preferencesCopy, self);
    v13 = *(self + 56) - 1;
    *(self + 56) = v13;
    if (!v13)
    {
      __asm { FMOV            V2.2D, #-1.0 }

      v15 = vbslq_s8(vcgezq_f64(*(self + 8)), *(self + 8), _Q2);
      *(self + 8) = v15;
      v16 = 0.0;
      if (*v15.i64 >= 0.0)
      {
        v16 = *v15.i64;
      }

      v17.f64[0] = 0.0;
      v17.f64[1] = v16;
      v18 = vbslq_s8(vcgeq_f64(*(self + 24), v17), *(self + 24), _Q2);
      *(self + 24) = v18;
      v19 = vextq_s8(v15, v18, 8uLL);
      *(self + 40) = vbslq_s8(vcgeq_f64(*(self + 40), vbicq_s8(v19, vcltzq_f64(v19))), *(self + 40), _Q2);
      [v20 setPreferredMinimumWidth:?];
      [v20 setPreferredMinimumHeight:*(self + 16)];
      [v20 setPreferredMinimumDepth:*(self + 24)];
      [v20 setPreferredMaximumWidth:*(self + 32)];
      [v20 setPreferredMaximumHeight:*(self + 40)];
      [v20 setPreferredMaximumDepth:*(self + 48)];
    }
  }
}

@end