@interface PSMain
- (BOOL)canAddEmitterToDoc:(void *)a3;
- (PSMain)init;
@end

@implementation PSMain

- (PSMain)init
{
  v49.receiver = self;
  v49.super_class = PSMain;
  v2 = [(PSMain *)&v49 init];
  v3 = v2;
  if (v2)
  {
    v4 = theApp;
    Instance = PSEmitter_Factory::getInstance(v2);
    v6 = OZFactories::addFactory(*(v4 + 32), Instance);
    v7 = theApp;
    v8 = PSParticleType_Factory::getInstance(v6);
    v9 = OZFactories::addFactory(*(v7 + 32), v8);
    v10 = theApp;
    v11 = PSReplicator_Factory::getInstance(v9);
    v12 = OZFactories::addFactory(*(v10 + 32), v11);
    v13 = theApp;
    v14 = PSReplicatorPType_Factory::getInstance(v12);
    v15 = OZFactories::addFactory(*(v13 + 32), v14);
    v16 = theApp;
    v17 = PSPaint_Factory::getInstance(v15);
    v18 = OZFactories::addFactory(*(v16 + 32), v17);
    v19 = theApp;
    v20 = PSPaintPType_Factory::getInstance(v18);
    v21 = OZFactories::addFactory(*(v19 + 32), v20);
    v22 = theApp;
    v23 = PSEmitterMoToFoBehavior_Factory::getInstance(v21);
    v24 = OZFactories::addFactory(*(v22 + 32), v23);
    v25 = theApp;
    v26 = PSScaleOverLifeBehavior_Factory::getInstance(v24);
    v27 = OZFactories::addFactory(*(v25 + 32), v26);
    v28 = theApp;
    v29 = PSSequenceBehavior_Factory::getInstance(v27);
    v30 = OZFactories::addFactory(*(v28 + 32), v29);
    v31 = theApp;
    v32 = PSPaintSequenceBehavior_Factory::getInstance(v30);
    v33 = OZFactories::addFactory(*(v31 + 32), v32);
    v34 = theApp;
    v35 = PSSpinOverLifeBehavior_Factory::getInstance(v33);
    v36 = OZFactories::addFactory(*(v34 + 32), v35);
    v37 = theApp;
    v38 = PSPenPropertyBehavior_Factory::getInstance(v36);
    v39 = OZFactories::addFactory(*(v37 + 32), v38);
    v40 = theApp;
    v41 = PSPenPressureBehavior_Factory::getInstance(v39);
    v42 = OZFactories::addFactory(*(v40 + 32), v41);
    v43 = theApp;
    v44 = PSPenSpeedBehavior_Factory::getInstance(v42);
    v45 = OZFactories::addFactory(*(v43 + 32), v44);
    v46 = theApp;
    v47 = PSPenTiltBehavior_Factory::getInstance(v45);
    OZFactories::addFactory(*(v46 + 32), v47);
  }

  return v3;
}

- (BOOL)canAddEmitterToDoc:(void *)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = *(a3 + 3);
  OZScene::begin_sel(v3, v14);
  OZScene::end_sel(v3, v12);
  v4 = v14[0];
  if (v14[0] != v12[0])
  {
    v5 = 0;
    v6 = 0;
    v7 = 1;
    v8 = v15;
    while (1)
    {
      if (v4 == v8)
      {
        v9 = 0;
      }

      else
      {
        v9 = *(v4 + 16);
        {
          break;
        }
      }

      if (OZSceneNode::isDescendantOf360Group(v9))
      {
        break;
      }

      v10 = *(v14[0] + 16);
      {
        v5 = 1;
      }

      if (v7)
      {
        v6 = v10[120];
        goto LABEL_19;
      }

      if (v6 != v10[120])
      {
        break;
      }

LABEL_19:
      while (1)
      {
        OZObject::iterator_t<OZSceneNode,false,true,OZObject::defaultValidator>::increment(v14);
        v4 = v14[0];
        if (v14[0] == v15)
        {
          break;
        }

        if ((*(**(v14[0] + 16) + 680))(*(v14[0] + 16)))
        {
          v4 = v14[0];
          v8 = v15;
          if (v14[0] != v15)
          {
            if (*(v14[0] + 16))
            {
              goto LABEL_25;
            }
          }
        }
      }

      v8 = v14[0];
LABEL_25:
      v7 = 0;
      if (v4 == v12[0])
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v13);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v16);
  return v5;
}

@end