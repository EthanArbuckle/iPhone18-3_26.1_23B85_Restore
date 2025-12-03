@interface BKDisplayController
+ (BKDisplayController)sharedInstance;
- ($446564691F179F0A09753BCCEB4D3730)transformLayerPropertiesForDisplay:(SEL)display displayInterfaceOrientation:(id)orientation;
- ($F7CACAAF0F09BFB3533BE937C26B5F66)geometryForDisplay:(SEL)display;
- (BKDisplayController)init;
- (BOOL)contextIDAtCAScreenLocation:(CGPoint)location displayUUID:(id)d options:(id)options securityAnalysis:(id *)analysis results:(id *)results;
- (BOOL)displayIsBlanked:(id)blanked;
- (CGPoint)convertReferenceLocation:(CGPoint)location toCAScreenLocationForDisplayUUID:(id)d;
- (id)addDisplayBlankingObserver:(id)observer;
- (void)applySceneHostSettingsToHostingChain:(id)chain;
- (void)setSceneHostSettings:(id)settings;
@end

@implementation BKDisplayController

+ (BKDisplayController)sharedInstance
{
  if (qword_100125D60 != -1)
  {
    dispatch_once(&qword_100125D60, &stru_1000F9AA8);
  }

  v3 = qword_100125D68;

  return v3;
}

- ($446564691F179F0A09753BCCEB4D3730)transformLayerPropertiesForDisplay:(SEL)display displayInterfaceOrientation:(id)orientation
{
  v16 = *&CGAffineTransformIdentity.a;
  v17 = *&CGAffineTransformIdentity.c;
  tx = CGAffineTransformIdentity.tx;
  ty = CGAffineTransformIdentity.ty;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  result = [(BKDisplayController *)self geometryForDisplay:orientation];
  v10 = 0u;
  v12 = v16;
  v11 = v17;
  v13 = vextq_s8(v10, v10, 8uLL);
  switch(a5)
  {
    case 4:
      v15 = v13;
      v14 = -1.57079633;
      goto LABEL_7;
    case 3:
      v15 = v13;
      v14 = 1.57079633;
LABEL_7:
      CGAffineTransformMakeRotation(&t2, v14);
      *&t1.a = v16;
      *&t1.c = v17;
      t1.tx = tx;
      t1.ty = ty;
      result = CGAffineTransformConcat(&v20, &t1, &t2);
      v12 = *&v20.a;
      v11 = *&v20.c;
      v10 = v15;
      goto LABEL_8;
    case 2:
      CGAffineTransformMakeRotation(&t2, -3.14159265);
      *&t1.a = v16;
      *&t1.c = v17;
      t1.tx = tx;
      t1.ty = ty;
      result = CGAffineTransformConcat(&v20, &t1, &t2);
      v10 = 0u;
      v12 = *&v20.a;
      v11 = *&v20.c;
LABEL_8:
      tx = v20.tx;
      ty = v20.ty;
      break;
  }

  *&retstr->var0.a = vrndaq_f64(v12);
  *&retstr->var0.c = vrndaq_f64(v11);
  retstr->var0.tx = round(tx);
  retstr->var0.ty = round(ty);
  retstr->var1.origin.x = 0.0;
  retstr->var1.origin.y = 0.0;
  retstr->var1.size = vdivq_f64(v10, vdupq_lane_s64(0, 0));
  return result;
}

- ($F7CACAAF0F09BFB3533BE937C26B5F66)geometryForDisplay:(SEL)display
{
  retstr->var3.size = 0u;
  *&retstr->var1 = 0u;
  p_var1 = &retstr->var1;
  retstr->var0 = 0u;
  retstr->var3.origin = 0u;
  p_var3 = &retstr->var3;
  p_height = &retstr->var0.height;
  p_var2 = &retstr->var2;
  v9 = a4;
  uniqueId = [v9 uniqueId];
  v11 = sub_10000717C(uniqueId);

  if (v11)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100002FE0;
    v13[3] = &unk_1000FA7F8;
    v13[4] = retstr;
    v13[5] = p_height;
    v13[6] = p_var1;
    v13[7] = p_var2;
    v13[8] = p_var3;
    v13[9] = 0;
    sub_100002E40(v13);
  }

  else
  {
    sub_10000A700(v9, retstr, p_height, p_var1, p_var2, p_var3);
  }

  return result;
}

- (void)applySceneHostSettingsToHostingChain:(id)chain
{
  chainCopy = chain;
  os_unfair_lock_lock(&self->_lock);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = chainCopy;
  reverseObjectEnumerator = [chainCopy reverseObjectEnumerator];
  v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        lock_sceneHostSettingsByContextID = self->_lock_sceneHostSettingsByContextID;
        if (v11)
        {
          v13 = *(v11 + 8);
        }

        else
        {
          v13 = 0;
        }

        v14 = [NSNumber numberWithUnsignedInt:v13];
        v15 = [(NSMutableDictionary *)lock_sceneHostSettingsByContextID objectForKeyedSubscript:v14];

        if (v15)
        {
          v16 = v15;

          v8 = v16;
        }

        if (v11)
        {
          objc_storeStrong((v11 + 16), v8);
        }

        v10 = v10 + 1;
      }

      while (v7 != v10);
      v17 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
      v7 = v17;
    }

    while (v17);
  }

  else
  {
    v8 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setSceneHostSettings:(id)settings
{
  settingsCopy = settings;
  os_unfair_lock_lock(&self->_lock);
  v5 = BKLogTouchEvents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138543362;
    v9 = settingsCopy;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "setSceneHostSettings: %{public}@", &v8, 0xCu);
  }

  v6 = [settingsCopy mutableCopy];
  lock_sceneHostSettingsByContextID = self->_lock_sceneHostSettingsByContextID;
  self->_lock_sceneHostSettingsByContextID = v6;

  os_unfair_lock_unlock(&self->_lock);
}

- (CGPoint)convertReferenceLocation:(CGPoint)location toCAScreenLocationForDisplayUUID:(id)d
{
  sub_100007C3C(d);
  result.y = v5;
  result.x = v4;
  return result;
}

- (BOOL)contextIDAtCAScreenLocation:(CGPoint)location displayUUID:(id)d options:(id)options securityAnalysis:(id *)analysis results:(id *)results
{
  y = location.y;
  x = location.x;
  dCopy = d;
  *&results->var0 = 0u;
  *&results->var3 = 0u;
  *&results->var5.m11 = 0u;
  *&results->var5.m13 = 0u;
  *&results->var5.m21 = 0u;
  *&results->var5.m23 = 0u;
  *&results->var5.m31 = 0u;
  *&results->var5.m33 = 0u;
  *&results->var5.m41 = 0u;
  *&results->var5.m43 = 0u;
  *&results->var6.m11 = 0u;
  *&results->var6.m13 = 0u;
  *&results->var6.m21 = 0u;
  *&results->var6.m23 = 0u;
  *&results->var6.m31 = 0u;
  *&results->var6.m33 = 0u;
  *&results->var6.m41 = 0u;
  *&results->var6.m43 = 0u;
  *&results->var7 = 0u;
  if (analysis)
  {
    *analysis = 0;
  }

  optionsCopy = options;
  v15 = dCopy;
  if (self)
  {
    v16 = +[CAWindowServer serverIfRunning];
    v17 = v16;
    if (v15)
    {
      [v16 displayWithUniqueId:v15];
    }

    else
    {
      sub_1000076E8();
    }
    self = ;
  }

  v18 = [(BKDisplayController *)self hitTestAtPosition:optionsCopy options:x, y];

  if (!v18)
  {
    goto LABEL_71;
  }

  v19 = [v18 objectForKeyedSubscript:kCAWindowServerHitTestContextId];
  results->var0 = [v19 unsignedIntValue];

  v20 = [v18 objectForKeyedSubscript:kCAWindowServerHitTestSlotId];
  results->var1 = [v20 unsignedIntValue];

  results->var2 = sub_100008F00(results->var0);
  if (analysis)
  {
    v84 = 0;
    v21 = [BKSWindowServerHitTestSecurityAnalysis securityAnalysisFromCAHitTestDictionary:v18 errorString:&v84];
    v22 = v84;
    v23 = v21;
    *analysis = v21;
    if (v22)
    {
      v24 = BKLogTouchEvents();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v22;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }
    }
  }

  if (results->var1)
  {
    v25 = [v18 objectForKeyedSubscript:kCAWindowServerHitTestDetectedOcclusion];
    v26 = objc_opt_class();
    v27 = v25;
    if (v26)
    {
      if (objc_opt_isKindOfClass())
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
    }

    v29 = v28;

    bOOLValue = [v29 BOOLValue];
    results->var7 = bOOLValue;
    results->var3 = 0;
    v31 = [v18 objectForKeyedSubscript:kCAWindowServerHitTestCumulativeOpacity];
    v32 = objc_opt_class();
    v33 = v31;
    if (v32)
    {
      if (objc_opt_isKindOfClass())
      {
        v34 = v33;
      }

      else
      {
        v34 = 0;
      }
    }

    else
    {
      v34 = 0;
    }

    v35 = v34;

    if (v35)
    {
      [v35 floatValue];
      results->var4 = v36;
      results->var3 |= 2uLL;
    }

    v83 = v35;
    v37 = [v18 objectForKeyedSubscript:kCAWindowServerHitTestCumulativeLayerTransform];
    v38 = objc_opt_class();
    v39 = v37;
    if (v38)
    {
      if (objc_opt_isKindOfClass())
      {
        v40 = v39;
      }

      else
      {
        v40 = 0;
      }
    }

    else
    {
      v40 = 0;
    }

    v41 = v40;

    if (v41)
    {
      [v41 CATransform3DValue];
      v42 = v90;
      *&results->var5.m31 = v89;
      *&results->var5.m33 = v42;
      v43 = v92;
      *&results->var5.m41 = v91;
      *&results->var5.m43 = v43;
      v44 = v86;
      *&results->var5.m11 = *buf;
      *&results->var5.m13 = v44;
      v45 = v88;
      *&results->var5.m21 = v87;
      *&results->var5.m23 = v45;
      results->var3 |= 0x10uLL;
    }

    v82 = v41;
    v46 = [v18 objectForKeyedSubscript:kCAWindowServerHitTestCumulativeContentsTransform];
    v47 = objc_opt_class();
    v48 = v46;
    if (v47)
    {
      if (objc_opt_isKindOfClass())
      {
        v49 = v48;
      }

      else
      {
        v49 = 0;
      }
    }

    else
    {
      v49 = 0;
    }

    v50 = v49;

    if (v50)
    {
      [v50 CATransform3DValue];
      v51 = v90;
      *&results->var6.m31 = v89;
      *&results->var6.m33 = v51;
      v52 = v92;
      *&results->var6.m41 = v91;
      *&results->var6.m43 = v52;
      v53 = v86;
      *&results->var6.m11 = *buf;
      *&results->var6.m13 = v53;
      v54 = v88;
      *&results->var6.m21 = v87;
      *&results->var6.m23 = v54;
      results->var3 |= 0x20uLL;
    }

    v55 = [v18 objectForKeyedSubscript:{@"hitTestInsecureFiltered", v50}];
    v56 = objc_opt_class();
    v57 = v55;
    if (v56)
    {
      if (objc_opt_isKindOfClass())
      {
        v58 = v57;
      }

      else
      {
        v58 = 0;
      }
    }

    else
    {
      v58 = 0;
    }

    v59 = v58;

    if (v59)
    {
      results->var8 = [v59 BOOLValue];
      results->var3 |= 4uLL;
    }

    v60 = [v18 objectForKeyedSubscript:kCAWindowServerHitTestLayerBackgroundAverage];
    v61 = objc_opt_class();
    v62 = v60;
    if (v61)
    {
      if (objc_opt_isKindOfClass())
      {
        v63 = v62;
      }

      else
      {
        v63 = 0;
      }
    }

    else
    {
      v63 = 0;
    }

    v64 = v63;

    v65 = [v18 objectForKeyedSubscript:kCAWindowServerHitTestLayerBackgroundStandardDeviation];
    v66 = objc_opt_class();
    v67 = v65;
    selfCopy = self;
    if (v66)
    {
      if (objc_opt_isKindOfClass())
      {
        v69 = v67;
      }

      else
      {
        v69 = 0;
      }
    }

    else
    {
      v69 = 0;
    }

    v70 = v69;

    v71 = [v18 objectForKeyedSubscript:@"hitTestBackgroundAverageContrastThreshold"];
    v72 = objc_opt_class();
    v73 = v71;
    if (v72)
    {
      if (objc_opt_isKindOfClass())
      {
        v74 = v73;
      }

      else
      {
        v74 = 0;
      }
    }

    else
    {
      v74 = 0;
    }

    v75 = v74;

    if (v64 && v70 && v75)
    {
      [v64 floatValue];
      results->var9 = v76;
      [v70 floatValue];
      results->var10 = v77;
      [v75 floatValue];
      results->var11 = v78;
      results->var3 |= 8uLL;
    }

    self = selfCopy;
  }

  if (results->var0 && results->var2 + 1 > 1)
  {
    v79 = 1;
  }

  else
  {
LABEL_71:
    v79 = 0;
    results->var0 = 0;
  }

  return v79;
}

- (id)addDisplayBlankingObserver:(id)observer
{
  observerCopy = observer;
  observerAssertion = self->_observerAssertion;
  if (!observerAssertion)
  {
    v6 = [BSCompoundAssertion assertionWithIdentifier:@"backboardd.display-blanking"];
    v7 = self->_observerAssertion;
    self->_observerAssertion = v6;

    observerAssertion = self->_observerAssertion;
  }

  v8 = [objc_opt_class() description];
  v9 = [(BSCompoundAssertion *)observerAssertion acquireForReason:v8 withContext:observerCopy];

  return v9;
}

- (BOOL)displayIsBlanked:(id)blanked
{
  v3 = sub_100007D54(blanked, "BKDisplayIsDisplayBlanked");
  isBlanked = [v3 isBlanked];

  return isBlanked;
}

- (BKDisplayController)init
{
  v7.receiver = self;
  v7.super_class = BKDisplayController;
  v2 = [(BKDisplayController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(NSMutableDictionary);
    lock_sceneHostSettingsByContextID = v3->_lock_sceneHostSettingsByContextID;
    v3->_lock_sceneHostSettingsByContextID = v4;
  }

  return v3;
}

@end