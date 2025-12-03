@interface PKPeerPayment3DStore
+ (PKPeerPayment3DStore)sharedInstance;
- (id)_init;
- (id)material;
- (id)nodeForCharacter:(id)character;
- (void)_setMonitorMotion:(BOOL)motion;
- (void)_updateMonitorMotion;
- (void)charactersForText:(id)text completion:(id)completion synchronously:(BOOL)synchronously;
- (void)motionManager:(id)manager didReceiveMotion:(id)motion;
- (void)newSceneWithCompletion:(id)completion synchronously:(BOOL)synchronously;
- (void)relinquishScene:(id)scene;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidBecomeInactive:(id)inactive;
@end

@implementation PKPeerPayment3DStore

+ (PKPeerPayment3DStore)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[PKPeerPayment3DStore sharedInstance];
  }

  v3 = sharedInstance_store;

  return v3;
}

uint64_t __38__PKPeerPayment3DStore_sharedInstance__block_invoke()
{
  sharedInstance_store = [[PKPeerPayment3DStore alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v21.receiver = self;
  v21.super_class = PKPeerPayment3DStore;
  v2 = [(PKPeerPayment3DStore *)&v21 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x277CBEA78]);
    cache = v3->_cache;
    v3->_cache = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    activeScenes = v3->_activeScenes;
    v3->_activeScenes = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_USER_INITIATED, 0);

    v10 = dispatch_queue_create("passkituifoundation.3dstore.loading", v9);
    sceneLoadingQueue = v3->_sceneLoadingQueue;
    v3->_sceneLoadingQueue = v10;

    +[PKPeerPayment3DScene staticRollPitch];
    *v3->_lastRollPitch = v12;
    [PKPeerPayment3DScene rotationMatrixForRollPitch:?];
    *v3->_anon_30 = v13;
    *&v3->_anon_30[16] = v14;
    *&v3->_anon_30[32] = v15;
    *&v3->_anon_30[48] = v16;
    v17 = *&v3->_anon_30[16];
    *v3->_anon_80 = *v3->_anon_30;
    *&v3->_anon_80[16] = v17;
    v18 = *&v3->_anon_30[48];
    *&v3->_anon_80[32] = *&v3->_anon_30[32];
    *&v3->_anon_80[48] = v18;
    [PKPeerPayment3DScene skewForRollPitch:*v3->_lastRollPitch];
    *v3->_skew = v19;
    *v3->_staticSkew = v19;
  }

  return v3;
}

- (void)newSceneWithCompletion:(id)completion synchronously:(BOOL)synchronously
{
  synchronouslyCopy = synchronously;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__PKPeerPayment3DStore_newSceneWithCompletion_synchronously___block_invoke;
  v14[3] = &unk_2799FFBE8;
  v14[4] = self;
  v7 = MEMORY[0x25F8AAFE0](v14);
  v8 = v7;
  if (synchronouslyCopy)
  {
    v9 = v7[2](v7);
    completionCopy[2](completionCopy, v9);
  }

  else
  {
    sceneLoadingQueue = self->_sceneLoadingQueue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __61__PKPeerPayment3DStore_newSceneWithCompletion_synchronously___block_invoke_2;
    v11[3] = &unk_2799FFC38;
    v11[4] = self;
    v12 = v7;
    v13 = completionCopy;
    dispatch_async(sceneLoadingQueue, v11);

    v9 = v12;
  }
}

PKPeerPayment3DScene *__61__PKPeerPayment3DStore_newSceneWithCompletion_synchronously___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(PKPeerPayment3DScene);
  [(PKPeerPayment3DScene *)v2 setCurrentRollPitch:*(*(a1 + 32) + 120)];
  [(PKPeerPayment3DScene *)v2 setCurrentRotationMatrix:*(*(a1 + 32) + 48), *(*(a1 + 32) + 64), *(*(a1 + 32) + 80), *(*(a1 + 32) + 96)];
  [(PKPeerPayment3DScene *)v2 setCurrentSkew:*(*(a1 + 32) + 112)];

  return v2;
}

void __61__PKPeerPayment3DStore_newSceneWithCompletion_synchronously___block_invoke_2(void *a1)
{
  v2 = (*(a1[5] + 16))();
  os_unfair_lock_lock((a1[4] + 8));
  [*(a1[4] + 16) addObject:v2];
  os_unfair_lock_unlock((a1[4] + 8));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__PKPeerPayment3DStore_newSceneWithCompletion_synchronously___block_invoke_3;
  block[3] = &unk_2799FFC10;
  block[4] = a1[4];
  dispatch_async(MEMORY[0x277D85CD0], block);
  [v2 setPaused:0];
  (*(a1[6] + 16))();
}

- (void)relinquishScene:(id)scene
{
  sceneCopy = scene;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_activeScenes removeObjectIdenticalTo:sceneCopy];

  _shouldMonitorMotion = [(PKPeerPayment3DStore *)self _shouldMonitorMotion];
  os_unfair_lock_unlock(&self->_lock);

  [(PKPeerPayment3DStore *)self _setMonitorMotion:_shouldMonitorMotion];
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  [activeCopy setPaused:0];
  os_unfair_lock_lock(&self->_lock);
  if ([(NSMutableArray *)self->_activeScenes indexOfObjectIdenticalTo:activeCopy]== 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_activeScenes addObject:activeCopy];
  }

  _shouldMonitorMotion = [(PKPeerPayment3DStore *)self _shouldMonitorMotion];
  os_unfair_lock_unlock(&self->_lock);
  [(PKPeerPayment3DStore *)self _setMonitorMotion:_shouldMonitorMotion];
}

- (void)sceneDidBecomeInactive:(id)inactive
{
  inactiveCopy = inactive;
  [inactiveCopy setPaused:1];
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_activeScenes removeObjectIdenticalTo:inactiveCopy];

  _shouldMonitorMotion = [(PKPeerPayment3DStore *)self _shouldMonitorMotion];
  os_unfair_lock_unlock(&self->_lock);

  [(PKPeerPayment3DStore *)self _setMonitorMotion:_shouldMonitorMotion];
}

- (void)_updateMonitorMotion
{
  os_unfair_lock_lock(&self->_lock);
  _shouldMonitorMotion = [(PKPeerPayment3DStore *)self _shouldMonitorMotion];
  os_unfair_lock_unlock(&self->_lock);

  [(PKPeerPayment3DStore *)self _setMonitorMotion:_shouldMonitorMotion];
}

- (void)_setMonitorMotion:(BOOL)motion
{
  if (self->_monitorMotion != motion)
  {
    motionCopy = motion;
    self->_monitorMotion = motion;
    v6 = +[PKMotionManager sharedManager];
    v7 = v6;
    if (motionCopy)
    {
      [v6 registerClient:self];
    }

    else
    {
      [v6 unregisterClient:self];
    }
  }
}

- (void)motionManager:(id)manager didReceiveMotion:(id)motion
{
  v37 = *MEMORY[0x277D85DE8];
  attitude = [motion attitude];
  [attitude quaternion];
  v27 = v6;

  v34 = 0;
  v35 = 1065353216;
  *&v38.x = &v34;
  *&v38.q[2] = 1;
  GLKQuaternionRotateVector3Array(v38, v7, v8);
  v10 = *(&v34 + 1);
  v9 = *&v34;
  if (*&v34 > 0.6)
  {
    v9 = 0.6;
  }

  if (*&v34 < -0.6)
  {
    v9 = -0.6;
  }

  if (*(&v34 + 1) > 0.6)
  {
    v10 = 0.6;
  }

  if (*(&v34 + 1) >= -0.6)
  {
    v11 = v10;
  }

  else
  {
    v11 = -0.6;
  }

  v28 = asinf(v9);
  v12 = asinf(v11);
  v13 = *self->_lastRollPitch;
  *&v14 = v28;
  if (vabds_f32(v28, *&v13) > 0.01 || vabds_f32(v12, *(&v13 + 1)) > 0.01)
  {
    *(&v14 + 1) = v12;
    v29 = v14;
    *self->_lastRollPitch = v14;
    [PKPeerPayment3DScene rotationMatrixForRollPitch:v14, v27];
    *self->_anon_30 = v15;
    *&self->_anon_30[16] = v16;
    *&self->_anon_30[32] = v17;
    *&self->_anon_30[48] = v18;
    [PKPeerPayment3DScene skewForRollPitch:v29];
    *self->_skew = v19;
    os_unfair_lock_lock(&self->_lock);
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v20 = [(NSMutableArray *)self->_activeScenes copy];
    v21 = [v20 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v31;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v31 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v30 + 1) + 8 * i);
          [v25 setCurrentRotationMatrix:{*self->_anon_30, *&self->_anon_30[16], *&self->_anon_30[32], *&self->_anon_30[48]}];
          [v25 setCurrentSkew:*self->_skew];
          [v25 setCurrentRollPitch:v29];
        }

        v22 = [v20 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v22);
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)material
{
  v20[2] = *MEMORY[0x277D85DE8];
  textMaterial = self->_textMaterial;
  if (!textMaterial)
  {
    material = [MEMORY[0x277CDBA90] material];
    v5 = self->_textMaterial;
    self->_textMaterial = material;

    v6 = self->_textMaterial;
    v19[0] = *MEMORY[0x277CDBC10];
    v7 = MEMORY[0x277CCACA8];
    v8 = PKPassKitUIFoundationBundle();
    v9 = [v8 URLForResource:@"TextShader" withExtension:@"txt"];
    v10 = [v7 stringWithContentsOfURL:v9 encoding:1 error:0];
    v20[0] = v10;
    v19[1] = *MEMORY[0x277CDBC18];
    v11 = MEMORY[0x277CCACA8];
    v12 = PKPassKitUIFoundationBundle();
    v13 = [v12 URLForResource:@"TextGeometry" withExtension:@"txt"];
    v14 = [v11 stringWithContentsOfURL:v13 encoding:1 error:0];
    v20[1] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
    [(SCNMaterial *)v6 setShaderModifiers:v15];

    [(SCNMaterial *)self->_textMaterial setValue:&unk_286FD12B0 forKey:@"colorAmount"];
    textMaterial = self->_textMaterial;
  }

  v16 = [(SCNMaterial *)textMaterial copy];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)charactersForText:(id)text completion:(id)completion synchronously:(BOOL)synchronously
{
  synchronouslyCopy = synchronously;
  textCopy = text;
  completionCopy = completion;
  v10 = completionCopy;
  if (textCopy && completionCopy)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __67__PKPeerPayment3DStore_charactersForText_completion_synchronously___block_invoke;
    v19[3] = &unk_2799FFC60;
    v19[4] = self;
    v11 = MEMORY[0x25F8AAFE0](v19);
    v12 = v11;
    if (synchronouslyCopy)
    {
      v13 = (*(v11 + 16))(v11, textCopy);
      (v10)[2](v10, v13);
    }

    else
    {
      sceneLoadingQueue = self->_sceneLoadingQueue;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __67__PKPeerPayment3DStore_charactersForText_completion_synchronously___block_invoke_2;
      v15[3] = &unk_2799FFC88;
      v17 = v10;
      v18 = v12;
      v16 = textCopy;
      dispatch_async(sceneLoadingQueue, v15);

      v13 = v17;
    }
  }
}

id __67__PKPeerPayment3DStore_charactersForText_completion_synchronously___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ([v3 length])
  {
    for (i = 0; [v3 length] > i; ++i)
    {
      v7 = [v3 substringWithRange:{i, 1}];
      v8 = [v5 objectForKey:v7];
      if (!v8)
      {
        v8 = [*(a1 + 32) nodeForCharacter:v7];
        if (!v8)
        {
          v9 = 0;
          goto LABEL_7;
        }

        [v5 setObject:v8 forKey:v7];
      }

      v9 = [v8 clone];
LABEL_7:
      v10 = [PKPeerPayment3DCharacter characterWithCharacter:v7 node:v9];
      [v4 addObject:v10];
    }
  }

  v11 = [v4 copy];

  return v11;
}

void __67__PKPeerPayment3DStore_charactersForText_completion_synchronously___block_invoke_2(void *a1)
{
  v1 = a1[5];
  v2 = (*(a1[6] + 16))(a1[6], a1[4]);
  (*(v1 + 16))(v1, v2);
}

- (id)nodeForCharacter:(id)character
{
  v28 = *MEMORY[0x277D85DE8];
  characterCopy = character;
  if (!characterCopy)
  {
    clone = 0;
    goto LABEL_18;
  }

  v5 = [(NSCache *)self->_cache objectForKey:characterCopy];
  if (v5)
  {
    v6 = v5;
    null = [MEMORY[0x277CBEB68] null];
    v8 = PKEqualObjects();

    if (v8)
    {

      v6 = 0;
LABEL_16:
      clone = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [&unk_286FD1300 objectForKeyedSubscript:characterCopy];
    if (v11)
    {
      v12 = [&unk_286FD1300 objectForKeyedSubscript:characterCopy];
      characterCopy = [v10 stringWithFormat:@"Character%@", v12];
    }

    else
    {
      characterCopy = [v10 stringWithFormat:@"Character%@", characterCopy];
    }

    v14 = PKPassKitUIFoundationBundle();
    v15 = [v14 URLForResource:characterCopy withExtension:@"scn"];

    if (v15)
    {
      v16 = [MEMORY[0x277CDBAF8] sceneWithURL:v15 options:0 error:0];
      rootNode = [v16 rootNode];

      childNodes = [rootNode childNodes];
      v6 = [childNodes objectAtIndexedSubscript:0];

      [v6 setName:characterCopy];
      [(NSCache *)self->_cache setObject:v6 forKey:characterCopy];
    }

    else
    {
      cache = self->_cache;
      null2 = [MEMORY[0x277CBEB68] null];
      [(NSCache *)cache setObject:null2 forKey:characterCopy];

      v21 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v27 = characterCopy;
        _os_log_impl(&dword_25E0A9000, v21, OS_LOG_TYPE_DEFAULT, "Missing character for %{public}@", buf, 0xCu);
      }

      v6 = 0;
    }

    if (!v6)
    {
      goto LABEL_16;
    }
  }

  clone = [v6 clone];
  geometry = [clone geometry];
  v23 = [geometry copy];
  [clone setGeometry:v23];

LABEL_17:
LABEL_18:

  v24 = *MEMORY[0x277D85DE8];

  return clone;
}

@end