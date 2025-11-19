@interface SKUISimpleAnimationFactory
+ (id)backOutTimingFunction;
+ (id)easeQuadInOutTimingFunction;
+ (id)easeQuadInTimingFunction;
+ (id)easeQuadOutTimingFunction;
+ (id)factoryWithTimingFunction:(id)a3;
@end

@implementation SKUISimpleAnimationFactory

+ (id)backOutTimingFunction
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUISimpleAnimationFactory *)v4 backOutTimingFunction:v5];
      }
    }
  }

  LODWORD(v2) = 1047233823;
  LODWORD(v3) = 1068457001;
  v12 = [MEMORY[0x277CD9EF8] functionWithControlPoints:0.0 :0.0 :v2 :v3];

  return v12;
}

+ (id)easeQuadInTimingFunction
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUISimpleAnimationFactory *)v5 easeQuadInTimingFunction:v6];
      }
    }
  }

  LODWORD(v2) = 1054615798;
  LODWORD(v3) = 1062333317;
  LODWORD(v4) = 1058642330;
  v13 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v2 :0.0 :v3 :v4];

  return v13;
}

+ (id)easeQuadInOutTimingFunction
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUISimpleAnimationFactory *)v5 easeQuadInOutTimingFunction:v6];
      }
    }
  }

  LODWORD(v2) = 1054615798;
  LODWORD(v3) = 1058139013;
  LODWORD(v4) = 1.0;
  v13 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v2 :0.0 :v3 :v4];

  return v13;
}

+ (id)easeQuadOutTimingFunction
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUISimpleAnimationFactory *)v6 easeQuadOutTimingFunction:v7];
      }
    }
  }

  LODWORD(v2) = 1043878380;
  LODWORD(v3) = 1053609165;
  LODWORD(v4) = 1058139013;
  LODWORD(v5) = 1.0;
  v14 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v2 :v3 :v4 :v5];

  return v14;
}

+ (id)factoryWithTimingFunction:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUISimpleAnimationFactory *)v5 factoryWithTimingFunction:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = objc_alloc_init(a1);
  v14 = v13[1];
  v13[1] = v4;

  return v13;
}

@end