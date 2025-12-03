@interface VFXWorld
+ (BOOL)canImportFileExtension:(id)extension;
+ (BOOL)canImportFileUTI:(id)i;
+ (VFXWorld)worldWithData:(id)data options:(id)options error:(id *)error;
+ (VFXWorld)worldWithMDLAsset:(id)asset options:(id)options;
+ (VFXWorld)worldWithSCNURL:(id)l options:(id)options error:(id *)error;
+ (VFXWorld)worldWithSceneKitScene:(id)scene options:(id)options;
+ (VFXWorld)worldWithURL:(id)l options:(id)options error:(id *)error;
+ (VFXWorld)worldWithWorldRef:(__CFXWorld *)ref;
+ (id)_indexPathForNode:(id)node;
+ (id)supportedFileUTIsForExport;
+ (id)supportedFileUTIsForImport;
+ (id)world;
+ (id)worldNamed:(id)named inDirectory:(id)directory options:(id)options;
- (BOOL)__removeAnimation:(id)animation forKey:(id)key;
- (BOOL)_allowsDefaultLightingEnvironmentFallback;
- (BOOL)initializeCoreEntityManagerWithInfo:(id)info error:(id *)error;
- (BOOL)loadCoreEntityManagerFromURL:(id)l options:(id)options infoOut:(id)out error:(id *)error;
- (BOOL)migrateCoreEntityManagerWithInfo:(id)info error:(id *)error;
- (BOOL)screenSpaceAmbientOcclusionEnableBentNormal;
- (BOOL)wantsScreenSpaceAmbientOcclusion;
- (BOOL)wantsScreenSpaceReflection;
- (BOOL)writeToURL:(id)l options:(id)options progressHandler:(id)handler;
- (BOOL)writeToURLWithUSDKit:(id)kit;
- (NSArray)animationKeys;
- (NSArray)bridgedComponentNames;
- (NSArray)states;
- (VFXBehaviorGraph)behaviorGraph;
- (VFXMaterialProperty)background;
- (VFXMaterialProperty)lightingEnvironment;
- (VFXNode)rootNode;
- (VFXState)state;
- (VFXWorld)initWithCoder:(id)coder;
- (VFXWorld)initWithOptions:(id)options;
- (VFXWorld)initWithWorldRef:(__CFXWorld *)ref;
- (__CFXAnimationManager)animationManager;
- (double)endTime;
- (double)fogColor_linearExtendedSRGB;
- (double)frameRate;
- (double)startTime;
- (float)fogDensityExponent;
- (float)fogEndDistance;
- (float)fogStartDistance;
- (float)playbackSpeed;
- (float)screenSpaceAmbientOcclusionIntensity;
- (float)screenSpaceAmbientOcclusionRadius;
- (float)screenSpaceReflectionObjectThickness;
- (id)_copyAndCompile:(BOOL)compile;
- (id)_exportAsMovieOperationWithDestinationURL:(id)l size:(CGSize)size attributes:(id)attributes delegate:(id)delegate didEndSelector:(SEL)selector userInfo:(void *)info;
- (id)_nodeWithIndexPath:(id)path;
- (id)_physicsWorldCreateIfNeeded:(BOOL)needed;
- (id)_subnodeFromIndexPath:(id)path;
- (id)_vfxAnimationForKey:(id)key;
- (id)animationPlayerForKey:(id)key;
- (id)assetPathResolver;
- (id)assetRegistry;
- (id)buildIdentifierRemapTable;
- (id)collectCoreEntityHandles;
- (id)copyAnimationChannelForKeyPath:(id)path animation:(id)animation;
- (id)copyAnimationChannelForKeyPath:(id)path property:(id)property;
- (id)dataRepresentationWithOptions:(id)options;
- (id)defaultPointOfView;
- (id)defaultRenderGraph;
- (id)fogColor;
- (id)identifier;
- (id)initForJavascript:(id)javascript;
- (id)initPresentationWorldWithWorldRef:(__CFXWorld *)ref;
- (id)preferredConfiguration;
- (id)presentationScene;
- (id)presentationWorld;
- (id)remapTable;
- (id)root;
- (id)scene;
- (id)shaderCacheConfigurations;
- (id)snapshotWithSize:(CGSize)size pointOfView:(id)view;
- (id)stateManager;
- (id)triggerManager;
- (id)valueForUndefinedKey:(id)key;
- (int)peerPid;
- (int64_t)coreEntity;
- (int64_t)presentationEntityFromModel:(int64_t)model;
- (int64_t)screenSpaceAmbientOcclusionQuality;
- (int64_t)screenSpaceReflectionQuality;
- (int64_t)screenSpaceReflectionThicknessMode;
- (unsigned)peerTaskIdentity;
- (void)_clearWorldRef;
- (void)_copyAnimationsFrom:(id)from;
- (void)_copyBindingsFrom:(id)from;
- (void)_copyInto:(id)into compile:(BOOL)compile;
- (void)_dumpToDisk;
- (void)_mergeWorld:(id)world parentNode:(id)node parentAssetNode:(id)assetNode remapEntities:(BOOL)entities;
- (void)_pauseAnimation:(BOOL)animation forKey:(id)key pausedByNode:(BOOL)node;
- (void)_remapEntities:(id)entities srcWorldIdentifier:(id)identifier;
- (void)_remapObjects:(id)objects remapTable:(__CFDictionary *)table;
- (void)_scaleWorldBy:(float)by;
- (void)_sendSignalWithIdentifier:(id)identifier delay:(float)delay;
- (void)_setRootNode:(id)node immediate:(BOOL)immediate;
- (void)_setSourceObject:(id)object forBinding:(id)binding;
- (void)_syncObjCAnimations;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)addAnimation:(id)animation forKey:(id)key;
- (void)addAnimationPlayer:(id)player forKey:(id)key;
- (void)bindAnimatablePath:(id)path toObject:(id)object withKeyPath:(id)keyPath options:(id)options;
- (void)cleanupPrefabsReferences;
- (void)cloneModelToPresentationAndStartReplicationStream;
- (void)commonInit:(BOOL)init;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateAnimationReferencesUsingBlock:(id)block;
- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block;
- (void)loadMDLAsset:(id)asset options:(id)options context:(id)context;
- (void)loadSCN:(id)n options:(id)options error:(id *)error;
- (void)lock;
- (void)prepareForRenderer:(id)renderer progressHandler:(id)handler;
- (void)prepareWithRenderer:(id)renderer;
- (void)removeAllAnimations;
- (void)removeAllAnimationsWithBlendOutDuration:(float)duration;
- (void)removeAllBindings;
- (void)removeAnimationForKey:(id)key;
- (void)removeAnimationForKey:(id)key blendOutDuration:(float)duration;
- (void)replicateToRuntimeAndStartReplicationWithOptions:(id)options;
- (void)resolveVFXCoreAndTagReferences;
- (void)restart;
- (void)setAssetPathResolver:(id)resolver;
- (void)setAuthoringEnvironment2:(id)environment2;
- (void)setBehaviorGraph:(id)graph;
- (void)setDefaultPointOfView:(id)view;
- (void)setDefaultRenderGraph:(id)graph;
- (void)setEndTime:(double)time;
- (void)setFogColor:(id)color;
- (void)setFogColor_linearExtendedSRGB:(VFXWorld *)self;
- (void)setFogDensityExponent:(float)exponent;
- (void)setFogEndDistance:(float)distance;
- (void)setFogStartDistance:(float)distance;
- (void)setFrameRate:(double)rate;
- (void)setIdentifier:(id)identifier;
- (void)setPeerPid:(int)pid;
- (void)setPeerTaskIdentity:(unsigned int)identity;
- (void)setPlaybackSpeed:(float)speed;
- (void)setReplicationDelegate:(id)delegate;
- (void)setRootNode:(id)node forLayer:(int)layer;
- (void)setScreenSpaceAmbientOcclusionEnableBentNormal:(BOOL)normal;
- (void)setScreenSpaceAmbientOcclusionIntensity:(float)intensity;
- (void)setScreenSpaceAmbientOcclusionQuality:(int64_t)quality;
- (void)setScreenSpaceAmbientOcclusionRadius:(float)radius;
- (void)setScreenSpaceReflectionObjectThickness:(float)thickness;
- (void)setScreenSpaceReflectionQuality:(int64_t)quality;
- (void)setScreenSpaceReflectionThicknessMode:(int64_t)mode;
- (void)setShaderCacheConfigurations:(id)configurations;
- (void)setStartTime:(double)time;
- (void)setState:(id)state;
- (void)setStateNamed:(id)named;
- (void)setValue:(id)value forUndefinedKey:(id)key;
- (void)setWantsScreenSpaceAmbientOcclusion:(BOOL)occlusion;
- (void)setWantsScreenSpaceReflection:(BOOL)reflection;
- (void)set_allowsDefaultLightingEnvironmentFallback:(BOOL)fallback;
- (void)startRuntimeThread;
- (void)stopReplication;
- (void)unbindAnimatablePath:(id)path;
- (void)unlock;
- (void)updateMemoryOwnership;
@end

@implementation VFXWorld

- (void)loadMDLAsset:(id)asset options:(id)options context:(id)context
{
  v503 = *MEMORY[0x1E69E9840];
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = objc_opt_new();
  v466 = objc_opt_new();
  objc_msgSend_upAxis(asset, v10, v11, v12);
  v476 = v13;
  v17 = objc_msgSend_worldRef(self, v14, v15, v16);
  sub_1AF1CFC90(v17, v476);
  obj = asset;
  objc_msgSend_metersPerUnit(asset, v18, v19, v20);
  v458 = v24;
  if (*&v24 != 0.0)
  {
    v25 = objc_msgSend_worldRef(self, v21, v22, v23);
    sub_1AF1CFBF4(v25, 1.0 / *&v458);
  }

  v26 = objc_msgSend_valueForKey_(options, v21, @"kVFXSceneSourceConvertToUnit", v23);
  v31 = v26;
  if (v26)
  {
    objc_msgSend_floatValue(v26, v27, v28, v29);
    *&v30 = *&v458 * *&v30;
  }

  else
  {
    LODWORD(v30) = 1.0;
  }

  v477 = v30;
  v459 = v31;
  v463 = v9;
  v491[0] = 0;
  v491[1] = 0;
  v490 = v491;
  v486 = 0u;
  v487 = 0u;
  v488 = 0u;
  v489 = 0u;
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v486, v501, 16);
  if (v33)
  {
    v34 = *v487;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v487 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v36 = objc_msgSend_nodeWithMDLObject_masterObjects_worldNodes_skinnedMeshes_skelNodesMap_asset_options_context_mpuScale_(VFXNode, v32, *(*(&v486 + 1) + 8 * i), v8, v463, v466, &v490, obj, v477, options, context);
        v40 = objc_msgSend_rootNode(self, v37, v38, v39);
        objc_msgSend_addChildNode_(v40, v41, v36, v42);
      }

      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v32, &v486, v501, 16);
    }

    while (v33);
  }

  v484 = 0u;
  v485 = 0u;
  v482 = 0u;
  v483 = 0u;
  v44 = v463;
  v45 = v459;
  v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v466, v43, &v482, v500, 16);
  if (v49)
  {
    v50 = *v483;
    do
    {
      for (j = 0; j != v49; ++j)
      {
        if (*v483 != v50)
        {
          objc_enumerationMutation(v466);
        }

        v52 = *(*(&v482 + 1) + 8 * j);
        v53 = objc_msgSend_path(v52, v46, v47, v48);
        v56 = objc_msgSend_objectForKeyedSubscript_(v463, v54, v53, v55);
        if (v56)
        {
          objc_msgSend__addSkinnerWithMDLMesh_worldNodes_(v56, v46, v52, v463);
        }
      }

      v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v466, v46, &v482, v500, 16);
    }

    while (v49);
  }

  v57 = objc_msgSend_animations(obj, v46, v47, v48);
  if (objc_msgSend_count(v57, v58, v59, v60))
  {
    v461 = 0;
    v462 = objc_opt_new();
    selfCopy = self;
    v470 = *MEMORY[0x1E69797E0];
    while (1)
    {
      v65 = objc_msgSend_animations(obj, v62, v63, v64);
      if (v461 >= objc_msgSend_count(v65, v66, v67, v68))
      {
        break;
      }

      v71 = objc_msgSend_animations(obj, v61, v69, v70);
      v74 = objc_msgSend_objectAtIndexedSubscript_(v71, v72, v461, v73);
      if (v74)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v475 = v74;
          v75 = objc_msgSend_jointPaths(v74, v62, v63, v64);
          v79 = objc_msgSend_count(v75, v76, v77, v78);
          if (v79)
          {
            v80 = objc_msgSend_valueForKey_(options, v62, @"kSceneSourceAnimationLoadingMode", v64);
            v84 = v80;
            if (v80)
            {
              if (objc_msgSend_isEqualToString_(v80, v81, @"playOnce", v83))
              {
                v460 = 1;
                v85 = 0.0;
              }

              else
              {
                v460 = 0;
                if (objc_msgSend_isEqualToString_(v84, v81, @"keepSeparate", v83))
                {
                  v85 = 0.0;
                }

                else
                {
                  v85 = INFINITY;
                }
              }
            }

            else
            {
              v460 = 0;
              v85 = INFINITY;
            }

            memptr = 0;
            v497 = 0;
            v496 = 0;
            v86 = objc_msgSend_translations(v475, v81, v82, v83);
            v472 = objc_msgSend_keyTimes(v86, v87, v88, v89);
            v93 = objc_msgSend_rotations(v475, v90, v91, v92);
            v474 = objc_msgSend_keyTimes(v93, v94, v95, v96);
            v100 = objc_msgSend_scales(v475, v97, v98, v99);
            v473 = objc_msgSend_keyTimes(v100, v101, v102, v103);
            v107 = v474 != 0;
            if (v472)
            {
              ++v107;
            }

            if (v473)
            {
              v108 = v107 + 1;
            }

            else
            {
              v108 = v107;
            }

            v109 = objc_msgSend_count(v472, v104, v105, v106);
            v113 = objc_msgSend_count(v474, v110, v111, v112);
            v120 = objc_msgSend_count(v473, v114, v115, v116);
            v121 = v109 * v79;
            if (v472)
            {
              malloc_type_posix_memalign(&memptr, 0x10uLL, 16 * v121, 0x1000040451B5BE8uLL);
            }

            v122 = v113 * v79;
            if (v474)
            {
              malloc_type_posix_memalign(&v497, 0x10uLL, 16 * v122, 0x1000040451B5BE8uLL);
            }

            v123 = v120 * v79;
            if (v473)
            {
              malloc_type_posix_memalign(&v496, 0x10uLL, 16 * v123, 0x1000040451B5BE8uLL);
            }

            if (memptr)
            {
              v124 = objc_msgSend_translations(v475, v117, v118, v119);
              objc_msgSend_getFloat3Array_maxCount_(v124, v125, memptr, v121);
            }

            if (v497)
            {
              v126 = objc_msgSend_rotations(v475, v117, v118, v119);
              objc_msgSend_getFloatQuaternionArray_maxCount_(v126, v127, v497, v122);
            }

            if (v496)
            {
              v128 = objc_msgSend_scales(v475, v117, v118, v119);
              objc_msgSend_getFloat3Array_maxCount_(v128, v129, v496, v123);
            }

            v130 = objc_msgSend_translations(v475, v117, v118, v119);
            objc_msgSend_maximumTime(v130, v131, v132, v133);
            v135 = v134;
            v139 = objc_msgSend_translations(v475, v136, v137, v138);
            objc_msgSend_minimumTime(v139, v140, v141, v142);
            v144 = v143;
            v148 = objc_msgSend_rotations(v475, v145, v146, v147);
            objc_msgSend_maximumTime(v148, v149, v150, v151);
            v153 = v152;
            v157 = objc_msgSend_rotations(v475, v154, v155, v156);
            objc_msgSend_minimumTime(v157, v158, v159, v160);
            v162 = v161;
            v166 = objc_msgSend_scales(v475, v163, v164, v165);
            objc_msgSend_maximumTime(v166, v167, v168, v169);
            v171 = v170;
            v175 = objc_msgSend_scales(v475, v172, v173, v174);
            objc_msgSend_minimumTime(v175, v176, v177, v178);
            v180 = v179;
            v181 = MEMORY[0x1E695DF70];
            v185 = objc_msgSend_jointPaths(v475, v182, v183, v184);
            v189 = objc_msgSend_count(v185, v186, v187, v188);
            v471 = objc_msgSend_arrayWithCapacity_(v181, v190, v189 * v108, v191);
            v494 = 0u;
            v495 = 0u;
            v492 = 0u;
            v493 = 0u;
            v195 = objc_msgSend_jointPaths(v475, v192, v193, v194);
            v197 = objc_msgSend_countByEnumeratingWithState_objects_count_(v195, v196, &v492, v502, 16);
            v199 = v135 - v144;
            v200 = v153 - v162;
            if (v197)
            {
              v201 = 0;
              v467 = *v493;
              v202 = 16 * v79;
              v465 = v195;
              do
              {
                v203 = 0;
                v204 = 16 * v201;
                v468 = v197;
                do
                {
                  if (*v493 != v467)
                  {
                    objc_enumerationMutation(v465);
                  }

                  v205 = *(*(&v492 + 1) + 8 * v203);
                  if (v472)
                  {
                    v206 = MEMORY[0x1E696AEC0];
                    v209 = objc_msgSend_rangeOfString_options_(*(*(&v492 + 1) + 8 * v203), v198, @"/", 4);
                    v210 = v205;
                    if (v209 != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v210 = objc_msgSend_substringFromIndex_(v205, v207, v209 + 1, v208);
                    }

                    v211 = objc_msgSend_stringWithFormat_(v206, v207, @"/%@.position", v208, v210);
                    v214 = objc_msgSend_animationWithKeyPath_(MEMORY[0x1E6979390], v212, v211, v213);
                    objc_msgSend_setDuration_(v214, v215, v216, v217, v199);
                    v221 = objc_msgSend_translations(v475, v218, v219, v220);
                    objc_msgSend_minimumTime(v221, v222, v223, v224);
                    v226 = v225;
                    v230 = objc_msgSend_translations(v475, v227, v228, v229);
                    objc_msgSend_minimumTime(v230, v231, v232, v233);
                    objc_msgSend_setBeginTime_(v214, v235, v236, v237, v226 - v234);
                    v241 = objc_msgSend_translations(v475, v238, v239, v240);
                    objc_msgSend_minimumTime(v241, v242, v243, v244);
                    v249 = sub_1AF2F82C0(v472, v245, v246, v247, v248, v199);
                    objc_msgSend_setKeyTimes_(v214, v250, v249, v251);
                    v252 = memptr;
                    v256 = objc_msgSend_count(v472, v253, v254, v255);
                    v262 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v257, v256, v258);
                    if (v256 >= 1)
                    {
                      v263 = &v252[v204];
                      do
                      {
                        v264 = objc_msgSend_valueWithVFXFloat3_(MEMORY[0x1E696B098], v259, v260, v261, *vmulq_n_f32(*v263, *&v477).i64);
                        objc_msgSend_addObject_(v262, v265, v264, v266);
                        v263 = (v263 + v202);
                        --v256;
                      }

                      while (v256);
                    }

                    objc_msgSend_setValues_(v214, v259, v262, v261);
                    objc_msgSend_setFillMode_(v214, v267, v470, v268);
                    objc_msgSend_setRemovedOnCompletion_(v214, v269, 0, v270);
                    objc_msgSend_addObject_(v471, v271, v214, v272);
                  }

                  if (v474)
                  {
                    v273 = MEMORY[0x1E6979390];
                    v274 = MEMORY[0x1E696AEC0];
                    v277 = objc_msgSend_rangeOfString_options_(v205, v198, @"/", 4);
                    v278 = v205;
                    if (v277 != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v278 = objc_msgSend_substringFromIndex_(v205, v275, v277 + 1, v276);
                    }

                    v279 = objc_msgSend_stringWithFormat_(v274, v275, @"/%@.orientation", v276, v278);
                    v282 = objc_msgSend_animationWithKeyPath_(v273, v280, v279, v281);
                    objc_msgSend_setDuration_(v282, v283, v284, v285, v200);
                    v289 = objc_msgSend_rotations(v475, v286, v287, v288);
                    objc_msgSend_minimumTime(v289, v290, v291, v292);
                    v294 = v293;
                    v298 = objc_msgSend_rotations(v475, v295, v296, v297);
                    objc_msgSend_minimumTime(v298, v299, v300, v301);
                    objc_msgSend_setBeginTime_(v282, v303, v304, v305, v294 - v302);
                    v309 = objc_msgSend_rotations(v475, v306, v307, v308);
                    objc_msgSend_minimumTime(v309, v310, v311, v312);
                    v317 = sub_1AF2F82C0(v474, v313, v314, v315, v316, v200);
                    objc_msgSend_setKeyTimes_(v282, v318, v317, v319);
                    v320 = v497;
                    v324 = objc_msgSend_count(v474, v321, v322, v323);
                    v330 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v325, v324, v326);
                    if (v324 >= 1)
                    {
                      do
                      {
                        v331 = objc_msgSend_valueWithVFXFloat4_(MEMORY[0x1E696B098], v327, v328, v329, *&v320[v204]);
                        objc_msgSend_addObject_(v330, v332, v331, v333);
                        v320 += v202;
                        --v324;
                      }

                      while (v324);
                    }

                    objc_msgSend_setValues_(v282, v327, v330, v329);
                    objc_msgSend_setFillMode_(v282, v334, v470, v335);
                    objc_msgSend_setRemovedOnCompletion_(v282, v336, 0, v337);
                    objc_msgSend_addObject_(v471, v338, v282, v339);
                  }

                  if (v473)
                  {
                    v340 = MEMORY[0x1E6979390];
                    v341 = MEMORY[0x1E696AEC0];
                    v342 = objc_msgSend_rangeOfString_options_(v205, v198, @"/", 4);
                    if (v342 != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v205 = objc_msgSend_substringFromIndex_(v205, v343, v342 + 1, v344);
                    }

                    v345 = objc_msgSend_stringWithFormat_(v341, v343, @"/%@.scale", v344, v205);
                    v348 = objc_msgSend_animationWithKeyPath_(v340, v346, v345, v347);
                    objc_msgSend_setDuration_(v348, v349, v350, v351, v171 - v180);
                    v355 = objc_msgSend_scales(v475, v352, v353, v354);
                    objc_msgSend_minimumTime(v355, v356, v357, v358);
                    v360 = v359;
                    v364 = objc_msgSend_scales(v475, v361, v362, v363);
                    objc_msgSend_minimumTime(v364, v365, v366, v367);
                    objc_msgSend_setBeginTime_(v348, v369, v370, v371, v360 - v368);
                    v375 = objc_msgSend_scales(v475, v372, v373, v374);
                    objc_msgSend_minimumTime(v375, v376, v377, v378);
                    v383 = sub_1AF2F82C0(v473, v379, v380, v381, v382, v171 - v180);
                    objc_msgSend_setKeyTimes_(v348, v384, v383, v385);
                    v386 = v496;
                    v390 = objc_msgSend_count(v473, v387, v388, v389);
                    v396 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v391, v390, v392);
                    if (v390 >= 1)
                    {
                      do
                      {
                        v397 = objc_msgSend_valueWithVFXFloat3_(MEMORY[0x1E696B098], v393, v394, v395, *&v386[v204]);
                        objc_msgSend_addObject_(v396, v398, v397, v399);
                        v386 += v202;
                        --v390;
                      }

                      while (v390);
                    }

                    objc_msgSend_setValues_(v348, v393, v396, v395);
                    objc_msgSend_setFillMode_(v348, v400, v470, v401);
                    objc_msgSend_setRemovedOnCompletion_(v348, v402, 0, v403);
                    objc_msgSend_addObject_(v471, v404, v348, v405);
                  }

                  ++v201;
                  ++v203;
                  v204 += 16;
                }

                while (v203 != v468);
                v197 = objc_msgSend_countByEnumeratingWithState_objects_count_(v465, v198, &v492, v502, 16);
              }

              while (v197);
            }

            free(memptr);
            free(v497);
            free(v496);
            self = selfCopy;
            v44 = v463;
            v45 = v459;
            v409 = objc_msgSend_animation(MEMORY[0x1E6979308], v406, v407, v408);
            objc_msgSend_setAnimations_(v409, v410, v471, v411);
            objc_msgSend_setFillMode_(v409, v412, v470, v413);
            *&v414 = v85;
            objc_msgSend_setRepeatCount_(v409, v415, v416, v417, v414);
            objc_msgSend_setRemovedOnCompletion_(v409, v418, v460, v419);
            if (v199 >= v200)
            {
              v423 = v199;
            }

            else
            {
              v423 = v200;
            }

            if (v423 < v171 - v180)
            {
              v423 = v171 - v180;
            }

            objc_msgSend_setDuration_(v409, v420, v421, v422, v423);
            if (v409)
            {
              v424 = objc_msgSend_animationWithCAAnimation_(VFXAnimation, v62, v409, v64);
              v428 = objc_msgSend_name(v475, v425, v426, v427);
              objc_msgSend_setObject_forKeyedSubscript_(v462, v429, v424, v428);
            }
          }
        }
      }

      ++v461;
    }
  }

  else
  {
    v462 = 0;
  }

  v480 = 0u;
  v481 = 0u;
  v478 = 0u;
  v479 = 0u;
  v430 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v61, &v478, v499, 16);
  if (v430)
  {
    v431 = *v479;
    do
    {
      for (k = 0; k != v430; ++k)
      {
        if (*v479 != v431)
        {
          objc_enumerationMutation(obj);
        }

        sub_1AF2EF1F8(*(*(&v478 + 1) + 8 * k), v44, obj, v462, &v490);
      }

      v430 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v433, &v478, v499, 16);
    }

    while (v430);
  }

  v434 = v490;
  if (v490 != v491)
  {
    do
    {
      v435 = v434[5];
      if (v435)
      {
      }

      v436 = v434[1];
      if (v436)
      {
        do
        {
          v437 = v436;
          v436 = *v436;
        }

        while (v436);
      }

      else
      {
        do
        {
          v437 = v434[2];
          v438 = *v437 == v434;
          v434 = v437;
        }

        while (!v438);
      }

      v434 = v437;
    }

    while (v437 != v491);
  }

  if (v462)
  {
  }

  LODWORD(v442) = 1.0;
  v443 = v458;
  if (*&v458 != 1.0 && !v45)
  {
    v444 = objc_msgSend_rootNode(self, v439, v440, v441, v442, v458);
    objc_msgSend_setScale_(v444, v445, v446, v447, *vdupq_lane_s32(*&v458, 0).i64);
  }

  objc_msgSend_startTime(obj, v439, v440, v441, v442, v443);
  objc_msgSend_setStartTime_(self, v448, v449, v450);
  objc_msgSend_endTime(obj, v451, v452, v453);
  objc_msgSend_setEndTime_(self, v454, v455, v456);
  sub_1AF2F8B50(v491[0]);
}

+ (VFXWorld)worldWithMDLAsset:(id)asset options:(id)options
{
  v6 = objc_alloc_init(self);
  v10 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v7, v8, v9);
  objc_msgSend_loadMDLAsset_options_context_(v6, v11, asset, options, v10);

  return v6;
}

- (void)loadSCN:(id)n options:(id)options error:(id *)error
{
  v9 = objc_autoreleasePoolPush();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
  v12 = objc_msgSend_sceneWithURL_options_error_(MEMORY[0x1E697A8C8], v11, n, options, error);
  v13 = *error;
  objc_msgSend_begin(VFXTransaction, v14, v15, v16);
  objc_msgSend_setImmediateMode_(VFXTransaction, v17, 1, v18);
  PathComponent = objc_msgSend_URLByDeletingLastPathComponent(n, v19, v20, v21);
  objc_msgSend_setValue_forKey_(VFXTransaction, v23, PathComponent, @"VFXWorldDecodingCurrentEnclosingFolder");
  v26 = objc_msgSend_objectForKeyedSubscript_(options, v24, @"VFXSceneKitBridgeOptionSkipLightIntensityRemapping", v25);
  v30 = objc_msgSend_BOOLValue(v26, v27, v28, v29);
  sub_1AF325FDC(self, v12, Mutable, v30, n);
  objc_msgSend_commit(VFXTransaction, v31, v32, v33);
  CFRelease(Mutable);
  objc_autoreleasePoolPop(v9);
  v34 = *error;

  v35 = v34;
}

+ (VFXWorld)worldWithSceneKitScene:(id)scene options:(id)options
{
  v7 = objc_autoreleasePoolPush();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
  objc_msgSend_begin(VFXTransaction, v9, v10, v11);
  objc_msgSend_setImmediateMode_(VFXTransaction, v12, 1, v13);
  v14 = objc_alloc_init(self);
  v17 = objc_msgSend_objectForKeyedSubscript_(options, v15, @"VFXSceneKitBridgeOptionOriginalURL", v16);
  PathComponent = objc_msgSend_URLByDeletingLastPathComponent(v17, v18, v19, v20);
  objc_msgSend_setValue_forKey_(VFXTransaction, v22, PathComponent, @"VFXWorldDecodingCurrentEnclosingFolder");
  v25 = objc_msgSend_objectForKeyedSubscript_(options, v23, @"VFXSceneKitBridgeOptionSkipLightIntensityRemapping", v24);
  v29 = objc_msgSend_BOOLValue(v25, v26, v27, v28);
  sub_1AF325FDC(v14, scene, Mutable, v29, 0);
  objc_msgSend_commit(VFXTransaction, v30, v31, v32);
  CFRelease(Mutable);
  objc_autoreleasePoolPop(v7);

  return v14;
}

+ (VFXWorld)worldWithSCNURL:(id)l options:(id)options error:(id *)error
{
  v8 = objc_msgSend_world(VFXWorld, a2, l, options);
  objc_msgSend_loadSCN_options_error_(v8, v9, l, options, error);
  return v8;
}

- (BOOL)writeToURLWithUSDKit:(id)kit
{
  v112 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_pathExtension(kit, a2, kit, v3);
  v10 = objc_msgSend_lowercaseString(v6, v7, v8, v9);
  if ((objc_msgSend_isEqualToString_(v10, v11, @"usd", v12) & 1) == 0 && (objc_msgSend_isEqualToString_(v10, v13, @"usda", v15) & 1) == 0 && (objc_msgSend_isEqualToString_(v10, v13, @"usdc", v15) & 1) == 0 && !objc_msgSend_isEqualToString_(v10, v13, @"usdz", v15))
  {
    goto LABEL_16;
  }

  if (qword_1EB658D20 != -1)
  {
    sub_1AFDF9248();
  }

  if (byte_1EB658D28 == 1)
  {
    v16 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v13, v14, v15);
    error = objc_msgSend_URLForDirectory_inDomain_appropriateForURL_create_error_(v16, v17, 99, 1, kit, 1, 0);
    PathComponent = objc_msgSend_lastPathComponent(kit, v19, v20, v21);
    v25 = objc_msgSend_URLByAppendingPathComponent_(error, v23, PathComponent, v24);
    if (objc_msgSend_isEqualToString_(v10, v26, @"usdz", v27))
    {
      v31 = objc_msgSend_URLByDeletingPathExtension(v25, v28, v29, v30);
      v25 = objc_msgSend_URLByAppendingPathExtension_(v31, v32, @"usdc", v33);
    }

    objc_msgSend_flush(VFXTransaction, v28, v29, v30);
    v37 = objc_msgSend_URLByDeletingPathExtension(kit, v34, v35, v36);
    v41 = objc_msgSend_lastPathComponent(v37, v38, v39, v40);
    if (!v41 || (v45 = v41, objc_msgSend_isEqualToString_(v41, v42, &stru_1F2575650, v44)))
    {
      v45 = @"root_node";
    }

    v46 = objc_msgSend_path(error, v42, v43, v44);
    sub_1AF338864(v110, self, v45, v25, v46);
    v105 = sub_1AF337CB8(v110, v25, v47, v48);
    v52 = objc_msgSend_URLByDeletingLastPathComponent(kit, v49, v50, v51);
    v56 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v53, v54, v55);
    DirectoryAtURL_withIntermediateDirectories_attributes_error = objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v56, v57, v52, 1, 0, 0);
    if (DirectoryAtURL_withIntermediateDirectories_attributes_error)
    {
      if (objc_msgSend_isEqualToString_(v10, v58, @"usdz", v59))
      {
        objc_msgSend_saveAndCreateUSDZPackageWithURL_(v105, v61, kit, v63);
      }

      else
      {
        objc_msgSend_save(v105, v61, v62, v63);
        v67 = objc_msgSend_path(kit, v64, v65, v66);
        if (objc_msgSend_fileExistsAtPath_(v56, v68, v67, v69))
        {
          objc_msgSend_removeItemAtURL_error_(v56, v70, kit, 0);
        }

        v73 = objc_msgSend_URLByDeletingLastPathComponent(kit, v70, v71, v72);
        v77 = objc_msgSend_path(v73, v74, v75, v76);
        v81 = objc_msgSend_path(error, v78, v79, v80);
        v84 = objc_msgSend_enumeratorAtPath_(v56, v82, v81, v83);
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v89 = objc_msgSend_countByEnumeratingWithState_objects_count_(v84, v85, &v106, v111, 16);
        if (v89)
        {
          v90 = *v107;
          do
          {
            for (i = 0; i != v89; ++i)
            {
              if (*v107 != v90)
              {
                objc_enumerationMutation(v84);
              }

              v92 = *(*(&v106 + 1) + 8 * i);
              v93 = objc_msgSend_path(error, v86, v87, v88);
              v96 = objc_msgSend_stringByAppendingPathComponent_(v93, v94, v92, v95);
              v99 = objc_msgSend_stringByAppendingPathComponent_(v77, v97, v92, v98);
              if (objc_msgSend_fileExistsAtPath_(v56, v100, v99, v101))
              {
                objc_msgSend_removeItemAtPath_error_(v56, v102, v99, 0);
              }

              objc_msgSend_moveItemAtPath_toPath_error_(v56, v102, v96, v99, 0);
            }

            v89 = objc_msgSend_countByEnumeratingWithState_objects_count_(v84, v86, &v106, v111, 16);
          }

          while (v89);
        }
      }
    }

    objc_msgSend_removeItemAtURL_error_(v56, v103, error, 0);
    sub_1AF3450A0(v110);
  }

  else
  {
LABEL_16:
    LOBYTE(DirectoryAtURL_withIntermediateDirectories_attributes_error) = 0;
  }

  return DirectoryAtURL_withIntermediateDirectories_attributes_error;
}

- (id)initPresentationWorldWithWorldRef:(__CFXWorld *)ref
{
  v12.receiver = self;
  v12.super_class = VFXWorld;
  v4 = [(VFXWorld *)&v12 init];
  v7 = v4;
  if (v4)
  {
    objc_msgSend_commonInit_(v4, v5, 0, v6);
    *(v7 + 16) |= 1u;
    v8 = CFRetain(ref);
    v7->_world = v8;
    objc_msgSend_setWorld_(v7->_clock, v9, v8, v10);
  }

  return v7;
}

- (id)presentationWorld
{
  result = self->_presentationObject;
  if (!result)
  {
    v4 = objc_alloc(objc_opt_class());
    result = objc_msgSend_initPresentationWorldWithWorldRef_(v4, v5, self->_world, v6);
    self->_presentationObject = result;
  }

  return result;
}

- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block
{
  v52 = *MEMORY[0x1E69E9840];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v6 = objc_msgSend_physicsWorld(self, a2, operation, block);
  v10 = objc_msgSend_physicsJoints(v6, v7, v8, v9);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v47, v51, 16);
  if (v12)
  {
    v16 = v12;
    v17 = *v48;
    do
    {
      v18 = 0;
      do
      {
        if (*v48 != v17)
        {
          objc_enumerationMutation(v10);
        }

        (*(block + 2))(block, *(*(&v47 + 1) + 8 * v18++), 0, 0);
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v19, &v47, v51, 16);
    }

    while (v16);
  }

  v20 = objc_msgSend_rootNode(self, v13, v14, v15);
  (*(block + 2))(block, v20, 0, 0);
  v24 = objc_msgSend_assets(self, v21, v22, v23);
  (*(block + 2))(block, v24, 0, 0);
  v28 = objc_msgSend_stateManager(self, v25, v26, v27);
  (*(block + 2))(block, v28, 0, 0);
  v32 = objc_msgSend_defaultRenderGraph(self, v29, v30, v31);
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = sub_1AF34580C;
  v46[3] = &unk_1E7A7C0C8;
  v46[4] = self;
  (*(block + 2))(block, v32, 1, v46);
  v36 = objc_msgSend_defaultPointOfView(self, v33, v34, v35);
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = sub_1AF345818;
  v45[3] = &unk_1E7A7C0C8;
  v45[4] = self;
  (*(block + 2))(block, v36, 1, v45);
  v40 = objc_msgSend_background(self, v37, v38, v39);
  (*(block + 2))(block, v40, 0, 0);
  v44 = objc_msgSend_lightingEnvironment(self, v41, v42, v43);
  (*(block + 2))(block, v44, 0, 0);
}

- (void)_remapObjects:(id)objects remapTable:(__CFDictionary *)table
{
  rootNode = self->_rootNode;
  self->_rootNode = objects;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1AF3458AC;
  v6[3] = &unk_1E7A7E680;
  v6[4] = table;
  sub_1AF345368(self, 0, v6);
  self->_rootNode = rootNode;
}

- (void)_remapEntities:(id)entities srcWorldIdentifier:(id)identifier
{
  v7 = sub_1AFDF5014(entities);
  v8 = sub_1AFDF4FDC(entities);
  CFDictionaryApplyFunction(v8, sub_1AF345A34, v7);
  v12 = objc_msgSend_scene(self, v9, v10, v11);
  objc_msgSend_remapEntityReferences_duplicating_(v12, v13, v7, 1);
  v14 = sub_1AFDF5054(entities);
  objc_msgSend_setValue_forKey_(v14, v15, self, identifier);
  v19 = objc_msgSend_scene(self, v16, v17, v18);
  objc_msgSend_resolveObjectReferencesWithRemapTableWithWorld_objectsByIdentifier_(v19, v20, self, v14);
  v24 = objc_msgSend_defaultRenderGraph(self, v21, v22, v23);
  v28 = v24;
  if (v24)
  {
    v29 = objc_msgSend_authoringGraph(v24, v25, v26, v27);
    if (v29)
    {
      sub_1AF3C4B38(v29, v7);
    }
  }

  v30 = objc_msgSend_assetRegistry(self, v25, v26, v27);
  v34 = objc_msgSend_rootNode(v30, v31, v32, v33);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = sub_1AF345AC0;
  v37[3] = &unk_1E7A7F398;
  v37[4] = v28;
  v37[5] = v7;
  objc_msgSend_enumerateHierarchyUsingBlock_(v34, v35, v37, v36);
}

- (id)_copyAndCompile:(BOOL)compile
{
  compileCopy = compile;
  v39[1] = *MEMORY[0x1E69E9840];
  objc_msgSend_begin(VFXTransaction, a2, compile, v3);
  objc_msgSend_lock(self, v6, v7, v8);
  v9 = sub_1AF1CFF64(self->_world, 4);
  v10 = objc_alloc(objc_opt_class());
  v38 = @"kWorldInitOptionForRERendering";
  v39[0] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v11, v9, v12);
  v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v13, v39, &v38, 1);
  v20 = objc_msgSend_initWithOptions_(v10, v15, v14, v16);
  if (v9)
  {
    v21 = objc_msgSend_peerPid(self, v17, v18, v19);
    objc_msgSend_setPeerPid_(v20, v22, v21, v23);
    v27 = objc_msgSend_peerTaskIdentity(self, v24, v25, v26);
    objc_msgSend_setPeerTaskIdentity_(v20, v28, v27, v29);
    objc_msgSend__copyInto_compile_(self, v30, v20, compileCopy);
    objc_msgSend_updateMemoryOwnership(v20, v31, v32, v33);
  }

  else
  {
    objc_msgSend__copyInto_compile_(self, v17, v20, compileCopy);
  }

  objc_msgSend_commit(VFXTransaction, v34, v35, v36);
  return v20;
}

- (void)_copyInto:(id)into compile:(BOOL)compile
{
  compileCopy = compile;
  v281 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_assetPathResolver(self, a2, into, compile);
  objc_msgSend_setAssetPathResolver_(into, v7, v6, v8);
  v9 = objc_alloc_init(VFXCopyContext);
  v10 = sub_1AFDF4FDC(v9);
  CFDictionaryAddValue(v10, self, into);
  v14 = objc_msgSend_assetRegistry(self, v11, v12, v13);
  v18 = objc_msgSend_rootNode(v14, v15, v16, v17);
  v22 = objc_msgSend_childNodes(v18, v19, v20, v21);
  v26 = objc_msgSend_assetRegistry(into, v23, v24, v25);
  v30 = objc_msgSend_rootNode(v26, v27, v28, v29);
  v34 = objc_msgSend_assetRegistry(into, v31, v32, v33);
  objc_msgSend_setWorld_(v34, v35, 0, v36);
  v277 = 0u;
  v278 = 0u;
  v275 = 0u;
  v276 = 0u;
  v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v37, &v275, v280, 16);
  if (v38)
  {
    v39 = v38;
    v40 = *v276;
    do
    {
      v41 = 0;
      do
      {
        if (*v276 != v40)
        {
          objc_enumerationMutation(v22);
        }

        sub_1AF34624C(*(*(&v275 + 1) + 8 * v41++), v30, v9);
      }

      while (v39 != v41);
      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v42, &v275, v280, 16);
    }

    while (v39);
  }

  v274[0] = MEMORY[0x1E69E9820];
  v274[1] = 3221225472;
  v274[2] = sub_1AF346410;
  v274[3] = &unk_1E7A7E680;
  v274[4] = v10;
  sub_1AF345368(v30, 0, v274);
  v46 = objc_msgSend_rootNode(self, v43, v44, v45);
  v49 = objc_msgSend__deepCloneWithContext_(v46, v47, v9, v48);
  v53 = objc_msgSend_physicsWorld(self, v50, v51, v52);
  v57 = objc_msgSend_physicsJoints(v53, v54, v55, v56);
  v270 = 0u;
  v271 = 0u;
  v272 = 0u;
  v273 = 0u;
  v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v58, &v270, v279, 16);
  if (v59)
  {
    v63 = v59;
    v64 = *v271;
    do
    {
      v65 = 0;
      do
      {
        if (*v271 != v64)
        {
          objc_enumerationMutation(v57);
        }

        v66 = sub_1AF2BED30(*(*(&v270 + 1) + 8 * v65), v9);
        v70 = objc_msgSend_physicsWorld(into, v67, v68, v69);
        objc_msgSend_addPhysicsJoint_(v70, v71, v66, v72);
        ++v65;
      }

      while (v63 != v65);
      v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v73, &v270, v279, 16);
    }

    while (v63);
  }

  v74 = objc_msgSend_background(into, v60, v61, v62);
  v78 = objc_msgSend_background(self, v75, v76, v77);
  objc_msgSend_copyPropertiesFrom_copyContext_(v74, v79, v78, 0);
  v83 = objc_msgSend_lightingEnvironment(into, v80, v81, v82);
  v87 = objc_msgSend_lightingEnvironment(self, v84, v85, v86);
  objc_msgSend_copyPropertiesFrom_copyContext_(v83, v88, v87, 0);
  v92 = objc_msgSend_background(self, v89, v90, v91);
  v96 = objc_msgSend_background(into, v93, v94, v95);
  CFDictionarySetValue(v10, v92, v96);
  v100 = objc_msgSend_lightingEnvironment(self, v97, v98, v99);
  v104 = objc_msgSend_lightingEnvironment(into, v101, v102, v103);
  CFDictionarySetValue(v10, v100, v104);
  v108 = objc_msgSend_behaviorGraph(self, v105, v106, v107);
  v109 = sub_1AF2BED30(v108, v9);
  objc_msgSend_setBehaviorGraph_(into, v110, v109, v111);
  v115 = objc_msgSend_physicsWorld(self, v112, v113, v114);
  v119 = objc_msgSend_physicsWorld(into, v116, v117, v118);
  objc_msgSend_copyTo_withContext_(v115, v120, v119, v9);
  objc_msgSend_endTime(self, v121, v122, v123);
  objc_msgSend_setEndTime_(into, v124, v125, v126);
  objc_msgSend_startTime(self, v127, v128, v129);
  objc_msgSend_setStartTime_(into, v130, v131, v132);
  objc_msgSend_fogStartDistance(self, v133, v134, v135);
  objc_msgSend_setFogStartDistance_(into, v136, v137, v138);
  objc_msgSend_fogEndDistance(self, v139, v140, v141);
  objc_msgSend_setFogEndDistance_(into, v142, v143, v144);
  objc_msgSend_fogDensityExponent(self, v145, v146, v147);
  objc_msgSend_setFogDensityExponent_(into, v148, v149, v150);
  v154 = objc_msgSend_fogColor(self, v151, v152, v153);
  objc_msgSend_setFogColor_(into, v155, v154, v156);
  v160 = objc_msgSend_wantsScreenSpaceAmbientOcclusion(self, v157, v158, v159);
  objc_msgSend_setWantsScreenSpaceAmbientOcclusion_(into, v161, v160, v162);
  objc_msgSend_screenSpaceAmbientOcclusionIntensity(self, v163, v164, v165);
  objc_msgSend_setScreenSpaceAmbientOcclusionIntensity_(into, v166, v167, v168);
  objc_msgSend_screenSpaceAmbientOcclusionRadius(self, v169, v170, v171);
  objc_msgSend_setScreenSpaceAmbientOcclusionRadius_(into, v172, v173, v174);
  v178 = objc_msgSend_screenSpaceAmbientOcclusionEnableBentNormal(self, v175, v176, v177);
  objc_msgSend_setScreenSpaceAmbientOcclusionEnableBentNormal_(into, v179, v178, v180);
  v184 = objc_msgSend_screenSpaceAmbientOcclusionQuality(self, v181, v182, v183);
  objc_msgSend_setScreenSpaceAmbientOcclusionQuality_(into, v185, v184, v186);
  v190 = objc_msgSend_wantsScreenSpaceReflection(self, v187, v188, v189);
  objc_msgSend_setWantsScreenSpaceReflection_(into, v191, v190, v192);
  v196 = objc_msgSend_screenSpaceReflectionQuality(self, v193, v194, v195);
  objc_msgSend_setScreenSpaceReflectionQuality_(into, v197, v196, v198);
  v202 = objc_msgSend_screenSpaceReflectionThicknessMode(self, v199, v200, v201);
  objc_msgSend_setScreenSpaceReflectionThicknessMode_(into, v203, v202, v204);
  objc_msgSend_screenSpaceReflectionObjectThickness(self, v205, v206, v207);
  objc_msgSend_setScreenSpaceReflectionObjectThickness_(into, v208, v209, v210);
  v214 = objc_msgSend_stateManager(self, v211, v212, v213);
  if (v214)
  {
    v218 = sub_1AF2BED30(v214, v9);

    *(into + 31) = v218;
    objc_msgSend_setOwner_(v218, v219, into, v220);
  }

  v221 = objc_msgSend_shaderCacheConfigurations(self, v215, v216, v217);
  objc_msgSend_setShaderCacheConfigurations_(into, v222, v221, v223);
  v227 = objc_msgSend_defaultRenderGraph(self, v224, v225, v226);
  v228 = sub_1AF2BED30(v227, v9);
  objc_msgSend_setDefaultRenderGraph_(into, v229, v228, v230);
  v234 = objc_msgSend_defaultPointOfView(self, v231, v232, v233);
  v235 = sub_1AF2BED30(v234, v9);
  objc_msgSend_setDefaultPointOfView_(into, v236, v235, v237);

  *(into + 7) = self->_preferredConfiguration;
  objc_msgSend__copyAnimationsFrom_(into, v238, self, v239);
  objc_msgSend__copyBindingsFrom_(into, v240, self, v241);
  objc_msgSend__remapObjects_remapTable_(into, v242, v49, v10);
  objc_msgSend_setRootNode_(into, v243, v49, v244);
  v248 = objc_msgSend_assetRegistry(into, v245, v246, v247);
  objc_msgSend_setWorld_(v248, v249, into, v250);
  v254 = objc_msgSend_identifier(self, v251, v252, v253);
  objc_msgSend__remapEntities_srcWorldIdentifier_(into, v255, v9, v254);
  if (compileCopy)
  {
    sub_1AF92B9EC(into);
  }

  v259 = objc_msgSend_triggerManager(self, v256, v257, v258);
  v263 = objc_msgSend_copy(v259, v260, v261, v262);
  *(into + 37) = v263;
  objc_msgSend_setWorld_(v263, v264, into, v265);

  objc_msgSend_unlock(self, v266, v267, v268);
}

- (id)collectCoreEntityHandles
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = objc_msgSend_behaviorGraph(self, v4, v5, v6);
  v11 = objc_msgSend_coreEntityHandle(v7, v8, v9, v10);
  if (v11)
  {
    objc_msgSend_addObject_(v3, v12, v11, v14);
  }

  v15 = objc_msgSend_rootNode(self, v12, v13, v14);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = sub_1AF346594;
  v30[3] = &unk_1E7A79810;
  v30[4] = v3;
  objc_msgSend_enumerateHierarchyUsingBlock_(v15, v16, v30, v17);
  v21 = objc_msgSend_assetRegistry(self, v18, v19, v20);
  v25 = objc_msgSend_rootNode(v21, v22, v23, v24);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = sub_1AF3465E8;
  v29[3] = &unk_1E7A7F3C0;
  v29[4] = v3;
  objc_msgSend_enumerateHierarchyUsingBlock_(v25, v26, v29, v27);
  return v3;
}

- (void)_mergeWorld:(id)world parentNode:(id)node parentAssetNode:(id)assetNode remapEntities:(BOOL)entities
{
  v491 = *MEMORY[0x1E69E9840];
  if (world)
  {
    entitiesCopy = entities;
    nodeCopy = node;
    worldCopy = world;
    objc_msgSend_begin(VFXTransaction, a2, world, node);
    v14 = objc_msgSend_rootNode(self, v11, v12, v13);
    v18 = objc_msgSend_childNodes(v14, v15, v16, v17);
    v22 = objc_msgSend_count(v18, v19, v20, v21);
    v26 = objc_msgSend_physicsWorld(worldCopy, v23, v24, v25);
    v30 = objc_msgSend_physicsJoints(v26, v27, v28, v29);
    v37 = objc_msgSend_copy(v30, v31, v32, v33);
    v444 = worldCopy;
    v443 = entitiesCopy;
    v442 = v22;
    if (entitiesCopy)
    {
      v38 = objc_msgSend_behaviorGraph(worldCopy, v34, v35, v36);
      v42 = objc_msgSend_coreEntityHandle(v38, v39, v40, v41);
      v46 = objc_msgSend_entityObject(v42, v43, v44, v45);
      v439 = objc_msgSend_objectID(v46, v47, v48, v49);
      objc_msgSend_setBehaviorGraph_(worldCopy, v50, 0, v51);
      v55 = objc_msgSend_collectCoreEntityHandles(worldCopy, v52, v53, v54);
      v59 = objc_msgSend_scene(self, v56, v57, v58);
      v63 = objc_msgSend_scene(worldCopy, v60, v61, v62);
      v66 = objc_msgSend_mergeScene_(v59, v64, v63, v65);
      v478 = 0u;
      v479 = 0u;
      v480 = 0u;
      v481 = 0u;
      obj = v55;
      v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v67, &v478, v490, 16);
      if (v68)
      {
        v71 = v68;
        v72 = *v479;
        do
        {
          for (i = 0; i != v71; ++i)
          {
            if (*v479 != v72)
            {
              objc_enumerationMutation(obj);
            }

            v74 = *(*(&v478 + 1) + 8 * i);
            objc_msgSend_setMuteWorldChange_(v74, v69, 1, v70);
            v78 = objc_msgSend_entityObject(v74, v75, v76, v77);
            v82 = objc_msgSend_objectID(v78, v79, v80, v81);
            v85 = objc_msgSend_presentationEntityFromModel_(v66, v83, v82, v84);
            v89 = objc_msgSend_entityObject(v74, v86, v87, v88);
            v93 = objc_msgSend_scene(self, v90, v91, v92);
            objc_msgSend_swapToNewEntity_newScene_(v89, v94, v85, v93);
          }

          v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v69, &v478, v490, 16);
        }

        while (v71);
        worldCopy = v444;
      }
    }

    else
    {
      v439 = 0;
      obj = 0;
    }

    v441 = objc_alloc_init(VFXCopyContext);
    v440 = sub_1AFDF4FDC(v441);
    CFDictionaryAddValue(v440, worldCopy, self);
    v438 = objc_msgSend_defaultRenderGraph(worldCopy, v96, v97, v98);
    v437 = objc_msgSend_defaultPointOfView(worldCopy, v99, v100, v101);
    objc_msgSend_setDefaultRenderGraph_(worldCopy, v102, 0, v103);
    objc_msgSend_setDefaultPointOfView_(worldCopy, v104, 0, v105);
    v109 = objc_msgSend_node(VFXNode, v106, v107, v108);
    v474 = 0u;
    v475 = 0u;
    v476 = 0u;
    v477 = 0u;
    v113 = objc_msgSend_rootNode(worldCopy, v110, v111, v112);
    v117 = objc_msgSend_childNodes(v113, v114, v115, v116);
    v119 = objc_msgSend_countByEnumeratingWithState_objects_count_(v117, v118, &v474, v489, 16);
    if (v119)
    {
      v122 = v119;
      v123 = *v475;
      do
      {
        for (j = 0; j != v122; ++j)
        {
          if (*v475 != v123)
          {
            objc_enumerationMutation(v117);
          }

          objc_msgSend_addChildNode_(v109, v120, *(*(&v474 + 1) + 8 * j), v121);
        }

        v122 = objc_msgSend_countByEnumeratingWithState_objects_count_(v117, v120, &v474, v489, 16);
      }

      while (v122);
    }

    v125 = objc_alloc_init(VFXAssetNode);
    v470 = 0u;
    v471 = 0u;
    v472 = 0u;
    v473 = 0u;
    v129 = objc_msgSend_assets(worldCopy, v126, v127, v128);
    v133 = objc_msgSend_rootNode(v129, v130, v131, v132);
    v137 = objc_msgSend_childNodes(v133, v134, v135, v136);
    v139 = objc_msgSend_countByEnumeratingWithState_objects_count_(v137, v138, &v470, v488, 16);
    if (v139)
    {
      v143 = v139;
      v144 = *v471;
      do
      {
        for (k = 0; k != v143; ++k)
        {
          if (*v471 != v144)
          {
            objc_enumerationMutation(v137);
          }

          objc_msgSend_addChildNode_(v125, v140, *(*(&v470 + 1) + 8 * k), v142);
        }

        v143 = objc_msgSend_countByEnumeratingWithState_objects_count_(v137, v140, &v470, v488, 16);
      }

      while (v143);
    }

    if (!nodeCopy)
    {
      nodeCopy = objc_msgSend_rootNode(self, v140, v141, v142);
    }

    v468 = 0u;
    v469 = 0u;
    v466 = 0u;
    v467 = 0u;
    v146 = objc_msgSend_childNodes(v109, v140, v141, v142);
    v148 = objc_msgSend_countByEnumeratingWithState_objects_count_(v146, v147, &v466, v487, 16);
    if (v148)
    {
      v152 = v148;
      v153 = *v467;
      do
      {
        for (m = 0; m != v152; ++m)
        {
          if (*v467 != v153)
          {
            objc_enumerationMutation(v146);
          }

          objc_msgSend_addChildNode_(nodeCopy, v149, *(*(&v466 + 1) + 8 * m), v151);
        }

        v152 = objc_msgSend_countByEnumeratingWithState_objects_count_(v146, v149, &v466, v487, 16);
      }

      while (v152);
    }

    if (!assetNode)
    {
      v155 = objc_msgSend_assetRegistry(self, v149, v150, v151);
      assetNode = objc_msgSend_rootNode(v155, v156, v157, v158);
    }

    v464 = 0u;
    v465 = 0u;
    v462 = 0u;
    v463 = 0u;
    v159 = objc_msgSend_childNodes(v125, v149, v150, v151);
    v161 = objc_msgSend_countByEnumeratingWithState_objects_count_(v159, v160, &v462, v486, 16);
    if (v161)
    {
      v165 = v161;
      v166 = *v463;
      do
      {
        for (n = 0; n != v165; ++n)
        {
          if (*v463 != v166)
          {
            objc_enumerationMutation(v159);
          }

          objc_msgSend_addChildNode_(assetNode, v162, *(*(&v462 + 1) + 8 * n), v164);
        }

        v165 = objc_msgSend_countByEnumeratingWithState_objects_count_(v159, v162, &v462, v486, 16);
      }

      while (v165);
    }

    v168 = objc_msgSend_rootNode(v444, v162, v163, v164);
    v172 = objc_msgSend_childNodes(v168, v169, v170, v171);
    if (objc_msgSend_count(v172, v173, v174, v175))
    {
      v177 = sub_1AF0D5194();
      if (os_log_type_enabled(v177, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF934C(v177, v176, v178, v179, v180, v181, v182, v183);
      }
    }

    v460 = 0u;
    v461 = 0u;
    v458 = 0u;
    v459 = 0u;
    v184 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v176, &v458, v485, 16);
    if (v184)
    {
      v188 = v184;
      v189 = *v459;
      do
      {
        for (ii = 0; ii != v188; ++ii)
        {
          if (*v459 != v189)
          {
            objc_enumerationMutation(v37);
          }

          v191 = *(*(&v458 + 1) + 8 * ii);
          v192 = objc_msgSend_physicsWorld(self, v185, v186, v187);
          objc_msgSend_addPhysicsJoint_(v192, v193, v191, v194);
        }

        v188 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v185, &v458, v485, 16);
      }

      while (v188);
    }

    if (!v442)
    {
      v198 = objc_msgSend_physicsWorld(v444, v195, v196, v197);
      v202 = objc_msgSend_physicsWorld(self, v199, v200, v201);
      objc_msgSend_copyTo_withContext_(v198, v203, v202, v441);
      objc_msgSend_endTime(v444, v204, v205, v206);
      objc_msgSend_setEndTime_(self, v207, v208, v209);
      objc_msgSend_startTime(v444, v210, v211, v212);
      objc_msgSend_setStartTime_(self, v213, v214, v215);
      objc_msgSend_fogStartDistance(v444, v216, v217, v218);
      objc_msgSend_setFogStartDistance_(self, v219, v220, v221);
      objc_msgSend_fogEndDistance(v444, v222, v223, v224);
      objc_msgSend_setFogEndDistance_(self, v225, v226, v227);
      objc_msgSend_fogDensityExponent(v444, v228, v229, v230);
      objc_msgSend_setFogDensityExponent_(self, v231, v232, v233);
      v237 = objc_msgSend_fogColor(v444, v234, v235, v236);
      objc_msgSend_setFogColor_(self, v238, v237, v239);
      v243 = objc_msgSend_wantsScreenSpaceAmbientOcclusion(v444, v240, v241, v242);
      objc_msgSend_setWantsScreenSpaceAmbientOcclusion_(self, v244, v243, v245);
      objc_msgSend_screenSpaceAmbientOcclusionIntensity(v444, v246, v247, v248);
      objc_msgSend_setScreenSpaceAmbientOcclusionIntensity_(self, v249, v250, v251);
      objc_msgSend_screenSpaceAmbientOcclusionRadius(v444, v252, v253, v254);
      objc_msgSend_setScreenSpaceAmbientOcclusionRadius_(self, v255, v256, v257);
      v261 = objc_msgSend_screenSpaceAmbientOcclusionEnableBentNormal(v444, v258, v259, v260);
      objc_msgSend_setScreenSpaceAmbientOcclusionEnableBentNormal_(self, v262, v261, v263);
      v267 = objc_msgSend_screenSpaceAmbientOcclusionQuality(v444, v264, v265, v266);
      objc_msgSend_setScreenSpaceAmbientOcclusionQuality_(self, v268, v267, v269);
      v273 = objc_msgSend_wantsScreenSpaceReflection(v444, v270, v271, v272);
      objc_msgSend_setWantsScreenSpaceReflection_(self, v274, v273, v275);
      v279 = objc_msgSend_screenSpaceReflectionQuality(v444, v276, v277, v278);
      objc_msgSend_setScreenSpaceReflectionQuality_(self, v280, v279, v281);
      v285 = objc_msgSend_screenSpaceReflectionThicknessMode(v444, v282, v283, v284);
      objc_msgSend_setScreenSpaceReflectionThicknessMode_(self, v286, v285, v287);
      objc_msgSend_screenSpaceReflectionObjectThickness(v444, v288, v289, v290);
      objc_msgSend_setScreenSpaceReflectionObjectThickness_(self, v291, v292, v293);
      if (objc_msgSend_background(v444, v294, v295, v296))
      {
        v300 = objc_msgSend_background(self, v297, v298, v299);
        v304 = objc_msgSend_background(v444, v301, v302, v303);
        objc_msgSend_copyPropertiesFrom_copyContext_(v300, v305, v304, 0);
        v309 = objc_msgSend_background(v444, v306, v307, v308);
        v313 = objc_msgSend_background(self, v310, v311, v312);
        CFDictionarySetValue(v440, v309, v313);
        v317 = objc_msgSend_background(v444, v314, v315, v316);
        v321 = objc_msgSend_contents(v317, v318, v319, v320);
        v325 = objc_msgSend_background(self, v322, v323, v324);
        v329 = objc_msgSend_contents(v325, v326, v327, v328);
        CFDictionarySetValue(v440, v321, v329);
      }

      if (objc_msgSend_lightingEnvironment(v444, v297, v298, v299))
      {
        v330 = objc_msgSend_lightingEnvironment(self, v195, v196, v197);
        v334 = objc_msgSend_lightingEnvironment(v444, v331, v332, v333);
        objc_msgSend_copyPropertiesFrom_copyContext_(v330, v335, v334, 0);
        v339 = objc_msgSend_lightingEnvironment(v444, v336, v337, v338);
        v343 = objc_msgSend_lightingEnvironment(self, v340, v341, v342);
        CFDictionarySetValue(v440, v339, v343);
        v347 = objc_msgSend_lightingEnvironment(v444, v344, v345, v346);
        v351 = objc_msgSend_contents(v347, v348, v349, v350);
        v355 = objc_msgSend_lightingEnvironment(self, v352, v353, v354);
        v359 = objc_msgSend_contents(v355, v356, v357, v358);
        CFDictionarySetValue(v440, v351, v359);
      }
    }

    v360 = objc_msgSend_stateManager(v444, v195, v196, v197);
    v361 = sub_1AF2BED30(v360, v441);
    v454 = 0u;
    v455 = 0u;
    v456 = 0u;
    v457 = 0u;
    v365 = objc_msgSend_states(v361, v362, v363, v364);
    v367 = objc_msgSend_countByEnumeratingWithState_objects_count_(v365, v366, &v454, v484, 16);
    if (v367)
    {
      v371 = v367;
      v372 = *v455;
      do
      {
        for (jj = 0; jj != v371; ++jj)
        {
          if (*v455 != v372)
          {
            objc_enumerationMutation(v365);
          }

          v374 = *(*(&v454 + 1) + 8 * jj);
          v375 = objc_msgSend_stateManager(self, v368, v369, v370);
          objc_msgSend_addState_(v375, v376, v374, v377);
        }

        v371 = objc_msgSend_countByEnumeratingWithState_objects_count_(v365, v368, &v454, v484, 16);
      }

      while (v371);
    }

    v452 = 0u;
    v453 = 0u;
    v450 = 0u;
    v451 = 0u;
    v378 = objc_msgSend_transitions(v361, v368, v369, v370);
    v380 = objc_msgSend_countByEnumeratingWithState_objects_count_(v378, v379, &v450, v483, 16);
    if (v380)
    {
      v384 = v380;
      v385 = *v451;
      do
      {
        for (kk = 0; kk != v384; ++kk)
        {
          if (*v451 != v385)
          {
            objc_enumerationMutation(v378);
          }

          v387 = *(*(&v450 + 1) + 8 * kk);
          v388 = objc_msgSend_stateManager(self, v381, v382, v383);
          objc_msgSend_addStateTransition_(v388, v389, v387, v390);
        }

        v384 = objc_msgSend_countByEnumeratingWithState_objects_count_(v378, v381, &v450, v483, 16);
      }

      while (v384);
    }

    v391 = objc_msgSend_rootNode(self, v381, v382, v383);
    objc_msgSend__remapObjects_remapTable_(self, v392, v391, v440);
    if (!v442)
    {
      objc_msgSend_setDefaultRenderGraph_(self, v393, v438, v394);
      objc_msgSend_setDefaultPointOfView_(self, v395, v437, v396);
      v400 = objc_msgSend_behaviorGraph(v444, v397, v398, v399);
      objc_msgSend_setBehaviorGraph_(self, v401, v400, v402);
      v406 = objc_msgSend_shaderCacheConfigurations(v444, v403, v404, v405);
      objc_msgSend_setShaderCacheConfigurations_(self, v407, v406, v408);

      self->_preferredConfiguration = v444[7];
    }

    objc_msgSend_flush(VFXTransaction, v409, v410, v411);
    if (v443)
    {
      v448 = 0u;
      v449 = 0u;
      v446 = 0u;
      v447 = 0u;
      v415 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v412, &v446, v482, 16);
      if (v415)
      {
        v416 = v415;
        v417 = *v447;
        do
        {
          for (mm = 0; mm != v416; ++mm)
          {
            if (*v447 != v417)
            {
              objc_enumerationMutation(obj);
            }

            objc_msgSend_setMuteWorldChange_(*(*(&v446 + 1) + 8 * mm), v412, 0, v414);
          }

          v416 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v412, &v446, v482, 16);
        }

        while (v416);
      }

      if (v439)
      {
        v419 = objc_alloc_init(VFXBidirectionalRemapTable);
        objc_msgSend_add::(v419, v420, v439, 0);
        v424 = objc_msgSend_scene(self, v421, v422, v423);
        objc_msgSend_remapEntityReferences_duplicating_(v424, v425, v419, 0);
      }
    }

    v426 = objc_msgSend_presentationScene(self, v412, v413, v414);
    objc_msgSend_invalidateGraphV1(v426, v427, v428, v429);
    objc_msgSend__copyAnimationsFrom_(self, v430, v444, v431);
    objc_msgSend__copyBindingsFrom_(self, v432, v444, v433);
    objc_msgSend_commit(VFXTransaction, v434, v435, v436);
  }

  else
  {
    v95 = sub_1AF0D5194();
    if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF93C4();
    }
  }
}

- (void)setBehaviorGraph:(id)graph
{
  if (*(self + 16))
  {
    v12 = sub_1AF0D5194();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF9400(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  else
  {
    v6 = objc_msgSend_behaviorGraph(self, a2, graph, v3);
    if (v6 != graph)
    {
      objc_msgSend_removeWorldReference_(v6, v7, self, v8);

      self->_behaviorGraph = graph;
      objc_msgSend_addWorldReference_(graph, v9, self, v10);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = sub_1AF3472F4;
      v20[3] = &unk_1E7A7E220;
      v20[4] = self;
      v20[5] = graph;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v11, self, v20);
    }
  }
}

- (VFXBehaviorGraph)behaviorGraph
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_behaviorGraph;
  }

  v3 = sub_1AF1C3858(self->_world);
  if (!v3)
  {
    return self->_behaviorGraph;
  }

  v6 = objc_msgSend_presentationHandleWithCFXCoreEntityHandle_(VFXCoreEntityHandle, v4, v3, v5);
  v9 = objc_msgSend_behaviorGraphWithEntityHandle_(VFXBehaviorGraph, v7, v6, v8);

  return objc_msgSend_presentationObject(v9, v10, v11, v12);
}

- (int64_t)coreEntity
{
  if (*(self + 16))
  {
    result = sub_1AF1C3858(self->_world);
    if (result)
    {

      return sub_1AF16AC70(result, v7, v8, v9);
    }
  }

  else
  {
    v4 = objc_msgSend_behaviorGraph(self, a2, v2, v3);

    return MEMORY[0x1EEE66B58](v4, sel_entity, v5, v6);
  }

  return result;
}

- (NSArray)states
{
  v4 = objc_msgSend_stateManager(self, a2, v2, v3);

  return objc_msgSend_states(v4, v5, v6, v7);
}

- (VFXState)state
{
  v4 = objc_msgSend_stateManager(self, a2, v2, v3);

  return objc_msgSend_activeState(v4, v5, v6, v7);
}

- (void)setState:(id)state
{
  v5 = objc_msgSend_stateManager(self, a2, state, v3);

  objc_msgSend_setActiveState_(v5, v6, state, v7);
}

- (void)setStateNamed:(id)named
{
  v30 = *MEMORY[0x1E69E9840];
  if (named && objc_msgSend_length(named, a2, named, v3))
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = objc_msgSend_states(self, a2, named, v3, 0);
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v25, v29, 16);
    if (v8)
    {
      v12 = v8;
      v13 = *v26;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v6);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          v16 = objc_msgSend_name(v15, v9, v10, v11);
          if (objc_msgSend_isEqualToString_(v16, v17, named, v18))
          {
            v22 = objc_msgSend_stateManager(self, v9, v10, v11);
            objc_msgSend_setActiveState_(v22, v23, v15, v24);
            return;
          }
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v25, v29, 16);
        if (v12)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v19 = objc_msgSend_stateManager(self, a2, named, v3);

    objc_msgSend_setActiveState_(v19, v20, 0, v21);
  }
}

- (void)setIdentifier:(id)identifier
{
  v5 = objc_msgSend___CFObject(self, a2, identifier, v3);

  sub_1AF16CD6C(v5, identifier);
}

- (id)identifier
{
  v4 = objc_msgSend___CFObject(self, a2, v2, v3);

  return sub_1AF16CD08(v4, v5, v6, v7);
}

- (void)stopReplication
{
  if (sub_1AF1CFF64(self->_world, 1))
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF9478(v6, v3, v4, v5, v7, v8, v9, v10);
    }
  }

  v11 = objc_msgSend_scene(self, v3, v4, v5);
  v15 = objc_msgSend_presentationScene(self, v12, v13, v14);
  objc_msgSend_stopReplicationWithModel_runtime_(_TtC3VFX8VFXScene, v16, v11, v15);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1AF347760;
  v18[3] = &unk_1E7A7E1D0;
  v18[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v17, self, v18);

  self->_modelToPresentationRemapTable = 0;
}

- (void)cloneModelToPresentationAndStartReplicationStream
{
  if (sub_1AF1CFF64(self->_world, 1))
  {
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF9478(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  prof_beginFlame("[VFXWorld cloneModelToPresentationAndStartReplicationStream]", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/ObjC/VFXWorld.m", 958);
  v14 = objc_msgSend_worldRef(self, v11, v12, v13);
  if (v14)
  {
    v17 = v14;
    sub_1AF1CEA20(v14);
    self->_modelToPresentationRemapTable = objc_msgSend_cloneAndSetupReplicationWithModelWorld_(_TtC3VFX8VFXScene, v18, self, v19);
    v23 = objc_msgSend_worldRef(self, v20, v21, v22);
    sub_1AF1D1490(v23, self->_modelToPresentationRemapTable);
    sub_1AF1CEA9C(v17);
  }

  else
  {
    self->_modelToPresentationRemapTable = objc_msgSend_cloneAndSetupReplicationWithModelWorld_(_TtC3VFX8VFXScene, v15, self, v16);
    v27 = objc_msgSend_worldRef(self, v24, v25, v26);
    sub_1AF1D1490(v27, self->_modelToPresentationRemapTable);
  }

  prof_endFlame();
}

- (void)startRuntimeThread
{
  v4 = objc_msgSend_worldRef(self, a2, v2, v3);
  v5 = sub_1AF1CF878(v4);

  objc_msgSend_startRuntimeThread(v5, v6, v7, v8);
}

- (void)restart
{
  if (*(self + 16))
  {
    v21 = sub_1AF0D5194();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF94F0(v21, v22, v23, v24, v25, v26, v27, v28);
    }
  }

  else
  {
    objc_msgSend_begin(VFXTransaction, a2, v2, v3);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = sub_1AF3479AC;
    v30[3] = &unk_1E7A7A770;
    v30[4] = self;
    objc_msgSend_setCompletionBlock_(VFXTransaction, v5, v30, v6);
    v10 = objc_msgSend_rootNode(self, v7, v8, v9);
    objc_msgSend_enumerateHierarchyUsingBlock_(v10, v11, &unk_1F24EC388, v12);
    v16 = objc_msgSend_worldRef(self, v13, v14, v15);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = sub_1AF347A7C;
    v29[3] = &unk_1E7A7E6C0;
    v29[4] = v16;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v17, self, v29);
    objc_msgSend_commit(VFXTransaction, v18, v19, v20);
  }
}

- (id)remapTable
{
  if (sub_1AF1CFF64(self->_world, 1))
  {
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF9478(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return self->_modelToPresentationRemapTable;
}

- (void)commonInit:(BOOL)init
{
  if (init)
  {
    VFXInitialize();
  }

  self->_clock = objc_alloc_init(VFXClock);
  self->_animationsLock._os_unfair_lock_opaque = 0;
}

- (VFXWorld)initWithOptions:(id)options
{
  v65.receiver = self;
  v65.super_class = VFXWorld;
  v6 = [(VFXWorld *)&v65 init];
  if (v6)
  {
    v7 = objc_msgSend_objectForKeyedSubscript_(options, v4, @"VFXWorldLoaderDisableVFXCoreSupport", v5);
    v11 = objc_msgSend_BOOLValue(v7, v8, v9, v10);
    objc_msgSend_commonInit_(v6, v12, v11 ^ 1u, v13);
    v16 = objc_msgSend_objectForKeyedSubscript_(options, v14, @"VFXWorldLoaderLoadForAuthoring", v15);
    v20 = objc_msgSend_BOOLValue(v16, v17, v18, v19);
    v23 = objc_msgSend_objectForKeyedSubscript_(options, v21, @"kWorldInitOptionForRERendering", v22);
    v27 = objc_msgSend_BOOLValue(v23, v24, v25, v26);
    v30 = v11 | 2;
    if (!v20)
    {
      v30 = v11;
    }

    if (v27)
    {
      v31 = v30 | 4;
    }

    else
    {
      v31 = v30;
    }

    v32 = objc_msgSend_objectForKeyedSubscript_(options, v28, @"VFXWorldLoaderOptionMetalLibraryURL", v29);
    v33 = sub_1AF1CF52C(v31, v32);
    *(v6 + 1) = v33;
    objc_msgSend_setWorld_(*(v6 + 27), v34, v33, v35);
    v39 = *(v6 + 1);
    if (v11)
    {
      if (v39)
      {
        sub_1AF16CDFC(v39, v6);
      }

      objc_msgSend__updateModelFromPresentation(v6, v36, v37, v38);
    }

    else
    {
      *(v6 + 33) = sub_1AF14E33C(v39);
      v43 = *(v6 + 1);
      if (v43)
      {
        sub_1AF16CDFC(v43, v6);
      }

      objc_msgSend__updateModelFromPresentation(v6, v40, v41, v42);
      objc_msgSend_cloneModelToPresentationAndStartReplicationStream(v6, v44, v45, v46);
    }

    v47 = objc_alloc_init(VFXTriggerManager);
    *(v6 + 37) = v47;
    objc_msgSend_setWorld_(v47, v48, v6, v49);
    if (!*(v6 + 9))
    {
      v53 = objc_msgSend_worldRef(v6, v50, v51, v52);
      v54 = v53;
      if (v53)
      {
        sub_1AF1CEA20(v53);
      }

      if (!*(v6 + 9))
      {
        v55 = *(v6 + 1);
        if (v55)
        {
          sub_1AF1CEA20(v55);
          v57 = sub_1AF1CF7E8(*(v6 + 1));
          if (v57)
          {
            v59 = objc_msgSend_nodeWithNodeRef_(VFXNode, v56, v57, v58);
            *(v6 + 9) = v59;
            objc_msgSend_addWorldReference_(v59, v60, v6, v61);
          }

          else
          {
            v62 = objc_msgSend_node(VFXNode, v56, 0, v58);
            objc_msgSend__setRootNode_immediate_(v6, v63, v62, 1);
          }

          sub_1AF1CEA9C(*(v6 + 1));
        }
      }

      if (v54)
      {
        sub_1AF1CEA9C(v54);
      }
    }
  }

  return v6;
}

- (VFXWorld)initWithWorldRef:(__CFXWorld *)ref
{
  v25.receiver = self;
  v25.super_class = VFXWorld;
  v4 = [(VFXWorld *)&v25 init];
  v7 = v4;
  if (v4)
  {
    objc_msgSend_commonInit_(v4, v5, 0, v6);
    v8 = CFRetain(ref);
    *(v7 + 8) = v8;
    objc_msgSend_setWorld_(*(v7 + 216), v9, v8, v10);
    v14 = *(v7 + 8);
    if (v14)
    {
      sub_1AF16CDFC(v14, v7);
    }

    objc_msgSend__updateModelFromPresentation(v7, v11, v12, v13);
    if (!*(v7 + 72))
    {
      v15 = *(v7 + 8);
      if (v15)
      {
        sub_1AF1CEA20(v15);
        v17 = sub_1AF1CF7E8(*(v7 + 8));
        if (v17)
        {
          v19 = objc_msgSend_nodeWithNodeRef_(VFXNode, v16, v17, v18);
          *(v7 + 72) = v19;
          objc_msgSend_addWorldReference_(v19, v20, v7, v21);
        }

        else
        {
          v22 = objc_msgSend_node(VFXNode, v16, 0, v18);
          objc_msgSend__setRootNode_immediate_(v7, v23, v22, 1);
        }

        sub_1AF1CEA9C(*(v7 + 8));
      }
    }
  }

  return v7;
}

- (void)_updateModelFromPresentation
{
  if (!sub_1AF1CFF64(self->_world, 1))
  {
    v3 = sub_1AF0FB884(self->_coreEntityManager);
    self->_assetPathResolver = objc_msgSend_assetManager(v3, v4, v5, v6);
  }

  self->_fogStartDistance = sub_1AF1D0398(self->_world);
  self->_fogEndDistance = sub_1AF1D02FC(self->_world);
  self->_fogDensityExponent = sub_1AF1D0260(self->_world);
  self->_wantsScreenSpaceAmbientOcclusion = sub_1AF1D053C(self->_world);
  self->_screenSpaceAmbientOcclusionIntensity = sub_1AF1D0600(self->_world);
  self->_screenSpaceAmbientOcclusionRadius = sub_1AF1D069C(self->_world);
  self->_screenSpaceAmbientOcclusionEnableBentNormal = sub_1AF1D0738(self->_world);
  self->_screenSpaceAmbientOcclusionQuality = sub_1AF1D07FC(self->_world);
  self->_wantsScreenSpaceReflection = sub_1AF1D0898(self->_world);
  self->_screenSpaceReflectionQuality = sub_1AF1D095C(self->_world);
  self->_screenSpaceReflectionThicknessMode = sub_1AF1D09F8(self->_world);
  self->_screenSpaceReflectionObjectThickness = sub_1AF1D0A94(self->_world);
  v7 = sub_1AF1D048C(self->_world);

  self->_fogColor = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v8, v7, v9);
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF347F98;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

+ (id)world
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)worldNamed:(id)named inDirectory:(id)directory options:(id)options
{
  v9 = objc_msgSend_pathExtension(named, a2, named, directory);
  v13 = objc_msgSend_length(v9, v10, v11, v12);
  if (!v13)
  {
    v9 = @"vfx";
  }

  v17 = VFXGetResourceBundle(v13, v14, v15, v16);
  v21 = objc_msgSend_stringByDeletingPathExtension(named, v18, v19, v20);
  result = objc_msgSend_URLForResource_withExtension_subdirectory_(v17, v22, v21, v9, directory);
  if (result)
  {

    return MEMORY[0x1EEE66B58](self, sel_worldWithURL_options_error_, result, options);
  }

  return result;
}

+ (VFXWorld)worldWithURL:(id)l options:(id)options error:(id *)error
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (!l)
  {
    v8 = sub_1AF0D5194();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF9568(v8, a2, l, options, v9, v10, v11, v12);
    }
  }

  v13 = objc_msgSend_URLByResolvingSymlinksInPath(l, a2, l, options);
  v23 = @"url";
  v24[0] = v13;
  v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v14, v24, &v23, 1);
  objc_msgSend_setValue_forKey_(VFXTransaction, v16, v15, @"VFXWorldLoadingContextKey");
  v20 = objc_msgSend_loader(VFXWorldLoader, v17, v18, v19);
  return objc_msgSend_loadWorldFromURL_options_statusHandler_error_(v20, v21, v13, options, 0, error);
}

+ (VFXWorld)worldWithData:(id)data options:(id)options error:(id *)error
{
  v7 = objc_msgSend_loader(VFXWorldLoader, a2, data, options);

  return MEMORY[0x1EEE66B58](v7, sel_loadWorldFromData_options_statusHandler_error_, data, options);
}

+ (VFXWorld)worldWithWorldRef:(__CFXWorld *)ref
{
  result = sub_1AF16CDEC(ref);
  if (!result)
  {
    v6 = [self alloc];
    v9 = objc_msgSend_initWithWorldRef_(v6, v7, ref, v8);

    return v9;
  }

  return result;
}

- (void)_clearWorldRef
{
  world = self->_world;
  if (world)
  {
    sub_1AF16CDFC(world, 0);
    v6 = self->_world;
    if (v6)
    {
      CFRelease(v6);
    }

    self->_world = 0;
    clock = self->_clock;

    objc_msgSend_setWorld_(clock, v4, 0, v5);
  }
}

- (void)dealloc
{
  v5 = *(self + 16);
  if ((v5 & 1) == 0)
  {
    v6 = objc_msgSend_background(self, a2, v2, v3);
    objc_msgSend_setContents_(v6, v7, 0, v8);
    v12 = objc_msgSend_lightingEnvironment(self, v9, v10, v11);
    objc_msgSend_setContents_(v12, v13, 0, v14);
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = sub_1AF348620;
    v41[3] = &unk_1E7A7E428;
    v41[4] = self;
    objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, v15, 1, v41);
    objc_msgSend_worldWillDie(self->_physicsWorld, v16, v17, v18);
    v5 = *(self + 16);
  }

  if ((v5 & 1) == 0)
  {
    objc_msgSend_setWorld_(self->_clock, a2, 0, v3);
    objc_msgSend_setWorld_(self->_triggerManager, v19, 0, v20);
  }

  world = self->_world;
  if (world)
  {
    if ((*(self + 16) & 1) == 0)
    {
      sub_1AF16CDFC(world, 0);
      world = self->_world;
    }

    v22 = sub_1AF1CF878(world);
    objc_msgSend_stopRuntimeThread(v22, v23, v24, v25);
    objc_msgSend_postReleaseCommandWithCFXObject_(VFXTransaction, v26, self->_world, v27);
  }

  self->_assetRegistry = 0;
  for (i = 80; i != 112; i += 8)
  {
    if ((*(self + 16) & 1) == 0)
    {
      objc_msgSend_setWorld_(*(&self->super.isa + i), v28, 0, v29);
    }
  }

  objc_msgSend_parentWillDie_(self->_background, v31, self, v32);
  objc_msgSend_parentWillDie_(self->_environment, v33, self, v34);

  if ((*(self + 16) & 1) == 0)
  {
    objc_msgSend_setOwner_(self->_stateManager, v35, 0, v36);
  }

  if ((*(self + 16) & 1) == 0)
  {
    objc_msgSend_setShaderCacheConfigurations_(self, v37, 0, v38);
  }

  coreEntityManager = self->_coreEntityManager;
  if (coreEntityManager)
  {
    CFRelease(coreEntityManager);
    self->_coreEntityManager = 0;
  }

  sub_1AF2771C8();
  v40.receiver = self;
  v40.super_class = VFXWorld;
  [(VFXWorld *)&v40 dealloc];
}

- (id)assetPathResolver
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_assetPathResolver;
  }

  v3 = sub_1AF0D5194();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF95E0(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  return 0;
}

- (void)setAssetPathResolver:(id)resolver
{
  if (*(self + 16))
  {
    v13 = sub_1AF0D5194();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF9658(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  else
  {
    assetPathResolver = self->_assetPathResolver;
    if (assetPathResolver != resolver)
    {

      self->_assetPathResolver = resolver;
      v6 = sub_1AF0FB884(self->_coreEntityManager);
      objc_msgSend_setAssetManager_(v6, v7, resolver, v8);
      v9 = sub_1AF1CF8AC(self->_world);
      v10 = sub_1AF0FB884(v9);

      objc_msgSend_setAssetManager_(v10, v11, resolver, v12);
    }
  }
}

- (__CFXAnimationManager)animationManager
{
  result = objc_msgSend_worldRef(self, a2, v2, v3);
  if (result)
  {

    return sub_1AF1CF830(result);
  }

  return result;
}

- (BOOL)__removeAnimation:(id)animation forKey:(id)key
{
  if (!key)
  {
    return 0;
  }

  os_unfair_lock_lock(&self->_animationsLock);
  v9 = objc_msgSend_objectForKey_(self->_animations, v7, key, v8);
  v15 = objc_msgSend_animation(v9, v10, v11, v12) == animation;
  if (v15)
  {
    objc_msgSend_removeWorldReference_(v9, v13, self, v14);
    objc_msgSend_removeObjectForKey_(self->_animations, v16, key, v17);
    v21 = objc_msgSend___CFObject(self, v18, v19, v20);
    if ((sub_1AF16D234(v21) & 1) == 0)
    {
      v22 = sub_1AF0D5194();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF4558(v22, v23, v24, v25, v26, v27, v28, v29);
      }
    }

    sub_1AF16D870(v21, key, 1);
  }

  os_unfair_lock_unlock(&self->_animationsLock);
  return v15;
}

- (void)addAnimationPlayer:(id)player forKey:(id)key
{
  if (player)
  {
    keyCopy = key;
    if (!key)
    {
      v7 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, player, 0);
      keyCopy = objc_msgSend_UUIDString(v7, v8, v9, v10);
    }

    if ((*(self + 16) & 1) == 0)
    {
      os_unfair_lock_lock(&self->_animationsLock);
      objc_msgSend_addWorldReference_(player, v11, self, v12);
      animations = self->_animations;
      if (!animations)
      {
        animations = objc_alloc_init(VFXOrderedDictionary);
        self->_animations = animations;
      }

      objc_msgSend_setObject_forKey_(animations, v13, player, keyCopy);
      os_unfair_lock_unlock(&self->_animationsLock);
    }

    v15 = objc_msgSend_timingFunction(VFXTransaction, a2, player, key);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1AF3489C4;
    v18[3] = &unk_1E7A7E2C0;
    v18[4] = player;
    v18[5] = self;
    v18[6] = keyCopy;
    v18[7] = v15;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v16, self, v18);
  }

  else
  {
    v17 = sub_1AF0D5194();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF96D0();
    }
  }
}

- (void)addAnimation:(id)animation forKey:(id)key
{
  if (animation)
  {
    keyCopy = key;
    animationCopy = animation;
    if (!key)
    {
      v7 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, animation, 0);
      keyCopy = objc_msgSend_UUIDString(v7, v8, v9, v10);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      animationCopy = objc_msgSend_animationWithCAAnimation_(VFXAnimation, v11, animationCopy, v12);
    }

    v13 = objc_msgSend_animationPlayerWithVFXAnimation_(VFXAnimationPlayer, v11, animationCopy, v12);
    objc_msgSend_addAnimationPlayer_forKey_(self, v14, v13, keyCopy);

    objc_msgSend_play(v13, v15, v16, v17);
  }

  else
  {
    v18 = sub_1AF0D5194();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF9738();
    }
  }
}

- (void)removeAllAnimations
{
  v29 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_animationsLock);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  animations = self->_animations;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(animations, v4, &v24, v28, 16);
  if (v5)
  {
    v9 = v5;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(animations);
        }

        objc_msgSend_removeWorldReference_(*(*(&v24 + 1) + 8 * i), v6, self, v8);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(animations, v6, &v24, v28, 16);
    }

    while (v9);
  }

  objc_msgSend_removeAllObjects(self->_animations, v6, v7, v8);
  os_unfair_lock_unlock(&self->_animationsLock);
  objc_msgSend_duration(VFXTransaction, v12, v13, v14);
  if (v18 <= 0.0)
  {
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v15, self, v22, MEMORY[0x1E69E9820], 3221225472, sub_1AF348D38, &unk_1E7A7E1D0, self, v23[0], v23[1], v23[2], v23[3], v23[4], v23[5], v23[6]);
  }

  else
  {
    v19 = v18;
    v20 = objc_msgSend_timingFunction(VFXTransaction, v15, v16, v17);
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v21, self, v23, v22[0], v22[1], v22[2], v22[3], v22[4], MEMORY[0x1E69E9820], 3221225472, sub_1AF348D28, &unk_1E7A7E2E8, self, v20, *&v19);
  }
}

- (void)removeAnimationForKey:(id)key
{
  if (key)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (animations)
    {
      v8 = objc_msgSend_objectForKey_(animations, v5, key, v6);
      objc_msgSend_removeWorldReference_(v8, v9, self, v10);
      objc_msgSend_removeObjectForKey_(self->_animations, v11, key, v12);
    }

    os_unfair_lock_unlock(&self->_animationsLock);
    v16 = objc_msgSend_timingFunction(VFXTransaction, v13, v14, v15);
    objc_msgSend_animationDuration(VFXTransaction, v17, v18, v19);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_1AF348E28;
    v22[3] = &unk_1E7A7E310;
    v22[7] = v20;
    v22[4] = self;
    v22[5] = key;
    v22[6] = v16;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v21, self, v22);
  }
}

- (NSArray)animationKeys
{
  os_unfair_lock_lock(&self->_animationsLock);
  v6 = objc_msgSend_allKeys(self->_animations, v3, v4, v5);
  os_unfair_lock_unlock(&self->_animationsLock);
  if (objc_msgSend_count(v6, v7, v8, v9))
  {
    return v6;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (void)_syncObjCAnimations
{
  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v6 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  os_unfair_lock_lock(&self->_animationsLock);

  self->_animations = objc_alloc_init(VFXOrderedDictionary);
  os_unfair_lock_unlock(&self->_animationsLock);
  v10 = objc_msgSend___CFObject(self, v7, v8, v9);
  if (v10)
  {
    v11 = v10;
    if ((sub_1AF16D234(v10) & 1) == 0)
    {
      v12 = sub_1AF0D5194();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF46B0(v12, v13, v14, v15, v16, v17, v18, v19);
      }
    }

    v20 = sub_1AF16D614(v11);
    if (v20)
    {
      v21 = v20;
      os_unfair_lock_lock(&self->_animationsLock);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = sub_1AF348FC4;
      v24[3] = &unk_1E7A7E338;
      v24[4] = self;
      sub_1AF375240(v21, v24, v22, v23);
      os_unfair_lock_unlock(&self->_animationsLock);
    }
  }

  if (v6)
  {
    sub_1AF1CEA9C(v6);
  }
}

- (id)_vfxAnimationForKey:(id)key
{
  keyCopy = key;
  if (key)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (animations)
    {
      v8 = objc_msgSend_objectForKey_(animations, v5, keyCopy, v6);
      keyCopy = objc_msgSend_animation(v8, v9, v10, v11);
    }

    else
    {
      keyCopy = 0;
    }

    os_unfair_lock_unlock(&self->_animationsLock);
  }

  return keyCopy;
}

- (void)_copyAnimationsFrom:(id)from
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = objc_msgSend_animationKeys(from, a2, from, v3, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v21, v25, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = objc_msgSend_animationPlayerForKey_(from, v9, v14, v10);
        v19 = objc_msgSend_copy(v15, v16, v17, v18);
        objc_msgSend_addAnimationPlayer_forKey_(self, v20, v19, v14);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v21, v25, 16);
    }

    while (v11);
  }
}

- (id)animationPlayerForKey:(id)key
{
  keyCopy = key;
  if (key)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (animations)
    {
      keyCopy = objc_msgSend_objectForKey_(animations, v5, keyCopy, v6);
    }

    else
    {
      keyCopy = 0;
    }

    os_unfair_lock_unlock(&self->_animationsLock);
  }

  return keyCopy;
}

- (void)_pauseAnimation:(BOOL)animation forKey:(id)key pausedByNode:(BOOL)node
{
  nodeCopy = node;
  animationCopy = animation;
  v9 = objc_msgSend___CFObject(self, a2, animation, key);
  if (v9)
  {
    v13 = v9;
    v14 = objc_msgSend_animationManager(self, v10, v11, v12);
    if (v14)
    {
      v15 = v14;
      v16 = CACurrentMediaTime();

      sub_1AF118EBC(v15, v13, key, animationCopy, nodeCopy, v16);
    }
  }
}

- (void)bindAnimatablePath:(id)path toObject:(id)object withKeyPath:(id)keyPath options:(id)options
{
  if (self != object)
  {
    v25[15] = v6;
    v25[16] = v7;
    v13 = objc_alloc_init(CFXBinding);
    objc_msgSend_setSourceObject_(v13, v14, object, v15);
    objc_msgSend_setKeyPathDst_(v13, v16, path, v17);
    objc_msgSend_setKeyPathSrc_(v13, v18, keyPath, v19);
    objc_msgSend_setOptions_(v13, v20, options, v21);
    bindings = self->_bindings;
    if (!bindings)
    {
      bindings = objc_alloc_init(MEMORY[0x1E695DF90]);
      self->_bindings = bindings;
    }

    objc_msgSend_setValue_forKey_(bindings, v22, v13, path);

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_1AF3493E4;
    v25[3] = &unk_1E7A7E360;
    v25[4] = self;
    v25[5] = object;
    v25[6] = path;
    v25[7] = keyPath;
    v25[8] = options;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v24, self, v25);
  }
}

- (void)unbindAnimatablePath:(id)path
{
  objc_msgSend_removeObjectForKey_(self->_bindings, a2, path, v3);
  if (!objc_msgSend_count(self->_bindings, v6, v7, v8))
  {

    self->_bindings = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF349528;
  v10[3] = &unk_1E7A7E220;
  v10[4] = self;
  v10[5] = path;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v9, self, v10);
}

- (void)removeAllBindings
{
  self->_bindings = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF3495F4;
  v4[3] = &unk_1E7A7E1D0;
  v4[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v3, self, v4);
}

- (void)_copyBindingsFrom:(id)from
{
  v5 = objc_msgSend__vfxBindings(from, a2, from, v3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF3496A0;
  v8[3] = &unk_1E7A7E388;
  v8[4] = self;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v5, v6, v8, v7);
}

- (void)_setSourceObject:(id)object forBinding:(id)binding
{
  if (objc_msgSend_sourceObject(binding, a2, object, binding) != object)
  {
    objc_msgSend_setSourceObject_(binding, v7, object, v8);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF3497D8;
    v10[3] = &unk_1E7A7E3B0;
    v10[4] = self;
    v10[5] = binding;
    v10[6] = object;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v9, self, v10);
  }
}

- (void)enumerateAnimationReferencesUsingBlock:(id)block
{
  bindings = self->_bindings;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1AF349914;
  v5[3] = &unk_1E7A7E400;
  v5[4] = self;
  v5[5] = block;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(bindings, a2, v5, v3);
}

- (void)removeAllAnimationsWithBlendOutDuration:(float)duration
{
  objc_msgSend_begin(VFXTransaction, a2, v3, v4);
  objc_msgSend_setAnimationDuration_(VFXTransaction, v7, v8, v9, duration);
  objc_msgSend_removeAllAnimations(self, v10, v11, v12);

  objc_msgSend_commit(VFXTransaction, v13, v14, v15);
}

- (void)removeAnimationForKey:(id)key blendOutDuration:(float)duration
{
  objc_msgSend_begin(VFXTransaction, a2, key, v4);
  objc_msgSend_setAnimationDuration_(VFXTransaction, v8, v9, v10, duration);
  objc_msgSend_removeAnimationForKey_(self, v11, key, v12);

  objc_msgSend_commit(VFXTransaction, v13, v14, v15);
}

- (id)root
{
  if ((byte_1EB658E70 & 1) == 0)
  {
    byte_1EB658E70 = 1;
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF97A0();
    }
  }

  return objc_msgSend_rootNode(self, a2, v2, v3);
}

- (VFXNode)rootNode
{
  if (*(self + 16))
  {
    v14 = sub_1AF0D5194();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF97DC(v14, v15, v16, v17, v18, v19, v20, v21);
    }

    return 0;
  }

  else
  {
    if (!self->_rootNode)
    {
      v5 = objc_msgSend_worldRef(self, a2, v2, v3);
      v6 = v5;
      if (v5)
      {
        sub_1AF1CEA20(v5);
      }

      if (!self->_rootNode)
      {
        world = self->_world;
        if (world)
        {
          sub_1AF1CEA20(world);
          v9 = sub_1AF1CF7E8(self->_world);
          if (v9)
          {
            v11 = objc_msgSend_nodeWithNodeRef_(VFXNode, v8, v9, v10);
            self->_rootNode = v11;
            objc_msgSend_addWorldReference_(v11, v12, self, v13);
          }

          else
          {
            v23 = objc_msgSend_node(VFXNode, v8, 0, v10);
            objc_msgSend__setRootNode_immediate_(self, v24, v23, 1);
          }

          sub_1AF1CEA9C(self->_world);
        }
      }

      if (v6)
      {
        sub_1AF1CEA9C(v6);
      }
    }

    v25 = self->_rootNode;

    return v25;
  }
}

- (void)_setRootNode:(id)node immediate:(BOOL)immediate
{
  if (*(self + 16))
  {
    v24 = sub_1AF0D5194();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF9854(v24, v25, v26, v27, v28, v29, v30, v31);
    }
  }

  else
  {
    rootNode = self->_rootNode;
    if (rootNode != node)
    {
      immediateCopy = immediate;
      objc_msgSend_removeWorldReference_(rootNode, a2, self, immediate);

      nodeCopy = node;
      self->_rootNode = nodeCopy;
      objc_msgSend_addWorldReference_(nodeCopy, v9, self, v10);

      self->_layerRootNode[0] = node;
      if (immediateCopy)
      {
        v14 = objc_msgSend_worldRef(self, v11, v12, v13);
        if (v14)
        {
          v18 = v14;
          sub_1AF1CEA20(v14);
          world = self->_world;
          v23 = objc_msgSend_nodeRef(node, v20, v21, v22);
          sub_1AF1CF614(world, v23);

          sub_1AF1CEA9C(v18);
        }

        else
        {
          v32 = self->_world;
          v33 = objc_msgSend_nodeRef(node, v15, v16, v17);

          sub_1AF1CF614(v32, v33);
        }
      }

      else
      {
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = sub_1AF349D7C;
        v34[3] = &unk_1E7A7E220;
        v34[4] = self;
        v34[5] = node;
        objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v11, self, v34);
      }
    }
  }
}

- (void)setRootNode:(id)node forLayer:(int)layer
{
  if (*(self + 16))
  {
    v25 = sub_1AF0D5194();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF98CC(v25, v26, v27, v28, v29, v30, v31, v32);
    }
  }

  else
  {
    layerRootNode = self->_layerRootNode;
    v8 = self->_layerRootNode[layer];
    if (v8 != node)
    {
      if (layer)
      {
        objc_msgSend_removeWorldReference_(v8, a2, self, *&layer);

        nodeCopy = node;
        layerRootNode[layer] = nodeCopy;
        objc_msgSend_addWorldReference_(nodeCopy, v10, self, v11);
        v15 = objc_msgSend_worldRef(self, v12, v13, v14);
        if (v15)
        {
          v19 = v15;
          sub_1AF1CEA20(v15);
          world = self->_world;
          v24 = objc_msgSend_nodeRef(node, v21, v22, v23);
          sub_1AF1D10C8(world, layer, v24);

          sub_1AF1CEA9C(v19);
        }

        else
        {
          v33 = self->_world;
          v34 = objc_msgSend_nodeRef(node, v16, v17, v18);

          sub_1AF1D10C8(v33, layer, v34);
        }
      }

      else
      {

        objc_msgSend__setRootNode_immediate_(self, a2, node, 0);
      }
    }
  }
}

- (id)assetRegistry
{
  if (*(self + 16))
  {
    v7 = sub_1AF0D5194();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF9944(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    return 0;
  }

  else
  {
    result = self->_assetRegistry;
    if (!result)
    {
      v4 = objc_alloc_init(VFXAssetRegistry);
      self->_assetRegistry = v4;
      objc_msgSend_addWorldReference_(v4, v5, self, v6);
      return self->_assetRegistry;
    }
  }

  return result;
}

- (id)defaultRenderGraph
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_defaultRenderGraph;
  }

  v3 = sub_1AF0D5194();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF99BC(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  return 0;
}

- (void)setDefaultRenderGraph:(id)graph
{
  if (*(self + 16))
  {
    v10 = sub_1AF0D5194();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF9A34(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  else
  {
    defaultRenderGraph = self->_defaultRenderGraph;
    if (defaultRenderGraph != graph)
    {
      objc_msgSend_removeWorldReference_(defaultRenderGraph, a2, self, v3);

      graphCopy = graph;
      self->_defaultRenderGraph = graphCopy;

      objc_msgSend_addWorldReference_(graphCopy, v8, self, v9);
    }
  }
}

- (id)defaultPointOfView
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_defaultPointOfView;
  }

  v3 = sub_1AF0D5194();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF9AAC(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  return 0;
}

- (void)setDefaultPointOfView:(id)view
{
  if (*(self + 16))
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF9B24(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  else
  {
    defaultPointOfView = self->_defaultPointOfView;
    if (defaultPointOfView != view)
    {

      self->_defaultPointOfView = view;
    }
  }
}

- (id)preferredConfiguration
{
  result = self->_preferredConfiguration;
  if (!result)
  {
    result = objc_alloc_init(VFXViewConfiguration);
    self->_preferredConfiguration = result;
  }

  return result;
}

- (void)_scaleWorldBy:(float)by
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF34A1E8;
  v3[3] = &unk_1E7A7E270;
  v3[4] = self;
  byCopy = by;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

+ (BOOL)canImportFileUTI:(id)i
{
  if (objc_msgSend_isEqualToString_(i, a2, @"org.khronos.collada.digital-asset-exchange", v3))
  {
    return 1;
  }

  return objc_msgSend_hasPrefix_(i, v5, @"com.apple.vfx", v6);
}

+ (BOOL)canImportFileExtension:(id)extension
{
  v4 = objc_msgSend_lowercaseString(extension, a2, extension, v3);
  if (objc_msgSend_isEqualToString_(v4, v5, @"dae", v6) & 1) != 0 || (objc_msgSend_isEqualToString_(v4, v7, @"vfx-world", v8) & 1) != 0 || (objc_msgSend_isEqualToString_(v4, v9, @"vfxz-world", v10) & 1) != 0 || (objc_msgSend_isEqualToString_(v4, v11, @"scn", v12) & 1) != 0 || (objc_msgSend_isEqualToString_(v4, v13, @"scnz", v14) & 1) != 0 || (objc_msgSend_isEqualToString_(v4, v15, @"c3d", v16))
  {
    return 1;
  }

  v20 = MEMORY[0x1E6974B48];

  return objc_msgSend_canImportFileExtension_(v20, v17, v4, v18);
}

+ (id)supportedFileUTIsForImport
{
  v4 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, v2, v3);
  objc_msgSend_addObjectsFromArray_(v4, v5, &unk_1F25D4768, v6);
  return v4;
}

+ (id)supportedFileUTIsForExport
{
  v4 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, v2, v3);
  objc_msgSend_addObjectsFromArray_(v4, v5, &unk_1F25D4780, v6);
  return v4;
}

- (id)_physicsWorldCreateIfNeeded:(BOOL)needed
{
  result = self->_physicsWorld;
  if (result)
  {
    v5 = 1;
  }

  else
  {
    v5 = !needed;
  }

  if (!v5)
  {
    v6 = [VFXPhysicsWorld alloc];
    result = objc_msgSend_initWithWorld_(v6, v7, self, v8);
    self->_physicsWorld = result;
  }

  return result;
}

- (double)startTime
{
  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v5)
  {
    v6 = v5;
    sub_1AF1CEA20(v5);
    v7 = sub_1AF1CF93C(self->_world);
    sub_1AF1CEA9C(v6);
    return v7;
  }

  else
  {
    world = self->_world;

    return sub_1AF1CF93C(world);
  }
}

- (void)setStartTime:(double)time
{
  v7 = objc_msgSend_worldRef(self, a2, v3, v4);
  if (v7)
  {
    v8 = v7;
    sub_1AF1CEA20(v7);
    sub_1AF1CF9CC(self->_world, time);

    sub_1AF1CEA9C(v8);
  }

  else
  {
    world = self->_world;

    sub_1AF1CF9CC(world, time);
  }
}

- (double)endTime
{
  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v5)
  {
    v6 = v5;
    sub_1AF1CEA20(v5);
    v7 = sub_1AF1CF984(self->_world);
    sub_1AF1CEA9C(v6);
    return v7;
  }

  else
  {
    world = self->_world;

    return sub_1AF1CF984(world);
  }
}

- (void)setEndTime:(double)time
{
  v7 = objc_msgSend_worldRef(self, a2, v3, v4);
  if (v7)
  {
    v8 = v7;
    sub_1AF1CEA20(v7);
    sub_1AF1CFA20(self->_world, time);

    sub_1AF1CEA9C(v8);
  }

  else
  {
    world = self->_world;

    sub_1AF1CFA20(world, time);
  }
}

- (double)frameRate
{
  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v5)
  {
    v6 = v5;
    sub_1AF1CEA20(v5);
    v7 = sub_1AF1CFA74(self->_world);
    sub_1AF1CEA9C(v6);
  }

  else
  {
    return sub_1AF1CFA74(self->_world);
  }

  return v7;
}

- (void)setFrameRate:(double)rate
{
  v7 = objc_msgSend_worldRef(self, a2, v3, v4);
  if (v7)
  {
    v8 = v7;
    sub_1AF1CEA20(v7);
    rateCopy = rate;
    sub_1AF1CFABC(self->_world, rateCopy);

    sub_1AF1CEA9C(v8);
  }

  else
  {
    world = self->_world;

    rateCopy2 = rate;
    sub_1AF1CFABC(world, rateCopy2);
  }
}

- (float)playbackSpeed
{
  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v5)
  {
    v6 = v5;
    sub_1AF1CEA20(v5);
    v7 = sub_1AF1CFB10(self->_world);
    sub_1AF1CEA9C(v6);
    return v7;
  }

  else
  {
    world = self->_world;

    return sub_1AF1CFB10(world);
  }
}

- (void)setPlaybackSpeed:(float)speed
{
  v7 = objc_msgSend_worldRef(self, a2, v3, v4);
  if (v7)
  {
    v8 = v7;
    sub_1AF1CEA20(v7);
    sub_1AF1CFB58(self->_world, speed);

    sub_1AF1CEA9C(v8);
  }

  else
  {
    world = self->_world;

    sub_1AF1CFB58(world, speed);
  }
}

- (VFXMaterialProperty)background
{
  result = self->_background;
  if (!result)
  {
    v6 = [VFXMaterialProperty alloc];
    result = objc_msgSend_initWithParent_propertyType_(v6, v7, self, 25);
    self->_background = result;
  }

  if (*(self + 16))
  {

    return objc_msgSend_presentationObject(result, a2, v2, v3);
  }

  return result;
}

- (VFXMaterialProperty)lightingEnvironment
{
  result = self->_environment;
  if (!result)
  {
    v6 = [VFXMaterialProperty alloc];
    result = objc_msgSend_initWithParent_propertyType_(v6, v7, self, 26);
    self->_environment = result;
  }

  if (*(self + 16))
  {

    return objc_msgSend_presentationObject(result, a2, v2, v3);
  }

  return result;
}

- (BOOL)_allowsDefaultLightingEnvironmentFallback
{
  if (*(self + 16))
  {
    return sub_1AF1D131C(self->_world);
  }

  else
  {
    return self->_allowsDefaultLightingEnvironmentFallback;
  }
}

- (void)set_allowsDefaultLightingEnvironmentFallback:(BOOL)fallback
{
  if (self->_allowsDefaultLightingEnvironmentFallback != fallback || (*(self + 16) & 1) != 0)
  {
    v7 = v3;
    v8 = v4;
    self->_allowsDefaultLightingEnvironmentFallback = fallback;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF34A964;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    fallbackCopy = fallback;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (void)setAuthoringEnvironment2:(id)environment2
{
  authoringEnvironment2 = self->_authoringEnvironment2;
  if (authoringEnvironment2 != environment2)
  {

    self->_authoringEnvironment2 = environment2;
  }
}

- (id)fogColor
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_fogColor;
  }

  v4 = sub_1AF1D048C(self->_world);

  return sub_1AF371814(v4, v5, v6, v7);
}

- (void)setFogColor:(id)color
{
  if (!objc_msgSend_isEqual_(color, a2, self->_fogColor, v3) || (*(self + 16) & 1) != 0)
  {

    self->_fogColor = color;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1AF34AAB4;
    v7[3] = &unk_1E7A7E220;
    v7[4] = color;
    v7[5] = self;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v6, self, @"fogColor", v7);
  }
}

- (double)fogColor_linearExtendedSRGB
{
  v4 = objc_msgSend_fogColor(self, a2, a3, a4);

  return CFXColorGetLinearExtendedSRGBComponents(v4);
}

- (void)setFogColor_linearExtendedSRGB:(VFXWorld *)self
{
  v4 = sub_1AF16484C(v2);
  v7 = objc_msgSend_colorWithCGColor_(MEMORY[0x1E69DC888], v5, v4, v6);
  objc_msgSend_setFogColor_(self, v8, v7, v9);
  if (v4)
  {

    CFRelease(v4);
  }
}

- (float)fogEndDistance
{
  if (*(self + 16))
  {
    return sub_1AF1D02FC(self->_world);
  }

  else
  {
    return self->_fogEndDistance;
  }
}

- (void)setFogEndDistance:(float)distance
{
  if (self->_fogEndDistance != distance || (*(self + 16) & 1) != 0)
  {
    v7 = v3;
    v8 = v4;
    self->_fogEndDistance = distance;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF34AC44;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    distanceCopy = distance;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"fogEndDistance", v5);
  }
}

- (float)fogDensityExponent
{
  if (*(self + 16))
  {
    return sub_1AF1D0260(self->_world);
  }

  else
  {
    return self->_fogDensityExponent;
  }
}

- (void)setFogDensityExponent:(float)exponent
{
  if (self->_fogDensityExponent != exponent || (*(self + 16) & 1) != 0)
  {
    v7 = v3;
    v8 = v4;
    self->_fogDensityExponent = exponent;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF34AD10;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    exponentCopy = exponent;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"fogDensityExponent", v5);
  }
}

- (float)fogStartDistance
{
  if (*(self + 16))
  {
    return sub_1AF1D0398(self->_world);
  }

  else
  {
    return self->_fogStartDistance;
  }
}

- (void)setFogStartDistance:(float)distance
{
  if (self->_fogStartDistance != distance || (*(self + 16) & 1) != 0)
  {
    v7 = v3;
    v8 = v4;
    self->_fogStartDistance = distance;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF34ADDC;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    distanceCopy = distance;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"fogStartDistance", v5);
  }
}

- (BOOL)wantsScreenSpaceAmbientOcclusion
{
  if (*(self + 16))
  {
    return sub_1AF1D053C(self->_world);
  }

  else
  {
    return self->_wantsScreenSpaceAmbientOcclusion;
  }
}

- (void)setWantsScreenSpaceAmbientOcclusion:(BOOL)occlusion
{
  if (self->_wantsScreenSpaceAmbientOcclusion != occlusion || (*(self + 16) & 1) != 0)
  {
    v7 = v3;
    v8 = v4;
    self->_wantsScreenSpaceAmbientOcclusion = occlusion;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF34AEA4;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    occlusionCopy = occlusion;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (float)screenSpaceAmbientOcclusionIntensity
{
  if (*(self + 16))
  {
    return sub_1AF1D0600(self->_world);
  }

  else
  {
    return self->_screenSpaceAmbientOcclusionIntensity;
  }
}

- (void)setScreenSpaceAmbientOcclusionIntensity:(float)intensity
{
  if (self->_screenSpaceAmbientOcclusionIntensity != intensity || (*(self + 16) & 1) != 0)
  {
    v7 = v3;
    v8 = v4;
    self->_screenSpaceAmbientOcclusionIntensity = intensity;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF34AF68;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    intensityCopy = intensity;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (float)screenSpaceAmbientOcclusionRadius
{
  if (*(self + 16))
  {
    return sub_1AF1D069C(self->_world);
  }

  else
  {
    return self->_screenSpaceAmbientOcclusionRadius;
  }
}

- (void)setScreenSpaceAmbientOcclusionRadius:(float)radius
{
  if (self->_screenSpaceAmbientOcclusionRadius != radius || (*(self + 16) & 1) != 0)
  {
    v7 = v3;
    v8 = v4;
    self->_screenSpaceAmbientOcclusionRadius = radius;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF34B02C;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    radiusCopy = radius;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (BOOL)screenSpaceAmbientOcclusionEnableBentNormal
{
  if (*(self + 16))
  {
    return sub_1AF1D0738(self->_world);
  }

  else
  {
    return self->_screenSpaceAmbientOcclusionEnableBentNormal;
  }
}

- (void)setScreenSpaceAmbientOcclusionEnableBentNormal:(BOOL)normal
{
  if (self->_screenSpaceAmbientOcclusionEnableBentNormal != normal || (*(self + 16) & 1) != 0)
  {
    v7 = v3;
    v8 = v4;
    self->_screenSpaceAmbientOcclusionEnableBentNormal = normal;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF34B0F4;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    normalCopy = normal;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (int64_t)screenSpaceAmbientOcclusionQuality
{
  if (*(self + 16))
  {
    return sub_1AF1D07FC(self->_world);
  }

  else
  {
    return self->_screenSpaceAmbientOcclusionQuality;
  }
}

- (void)setScreenSpaceAmbientOcclusionQuality:(int64_t)quality
{
  if (self->_screenSpaceAmbientOcclusionQuality != quality || (*(self + 16) & 1) != 0)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_screenSpaceAmbientOcclusionQuality = quality;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF34B1D4;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = quality;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (BOOL)wantsScreenSpaceReflection
{
  if (*(self + 16))
  {
    return sub_1AF1D0898(self->_world);
  }

  else
  {
    return self->_wantsScreenSpaceReflection;
  }
}

- (void)setWantsScreenSpaceReflection:(BOOL)reflection
{
  if (self->_wantsScreenSpaceReflection != reflection || (*(self + 16) & 1) != 0)
  {
    v7 = v3;
    v8 = v4;
    self->_wantsScreenSpaceReflection = reflection;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF34B29C;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    reflectionCopy = reflection;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (int64_t)screenSpaceReflectionQuality
{
  if (*(self + 16))
  {
    return sub_1AF1D095C(self->_world);
  }

  else
  {
    return self->_screenSpaceReflectionQuality;
  }
}

- (void)setScreenSpaceReflectionQuality:(int64_t)quality
{
  if (self->_screenSpaceReflectionQuality != quality || (*(self + 16) & 1) != 0)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_screenSpaceReflectionQuality = quality;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF34B37C;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = quality;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (int64_t)screenSpaceReflectionThicknessMode
{
  if (*(self + 16))
  {
    return sub_1AF1D09F8(self->_world);
  }

  else
  {
    return self->_screenSpaceReflectionThicknessMode;
  }
}

- (void)setScreenSpaceReflectionThicknessMode:(int64_t)mode
{
  if (self->_screenSpaceReflectionThicknessMode != mode || (*(self + 16) & 1) != 0)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_screenSpaceReflectionThicknessMode = mode;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF34B45C;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = mode;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (float)screenSpaceReflectionObjectThickness
{
  if (*(self + 16))
  {
    return sub_1AF1D0A94(self->_world);
  }

  else
  {
    return self->_screenSpaceReflectionObjectThickness;
  }
}

- (void)setScreenSpaceReflectionObjectThickness:(float)thickness
{
  if (self->_screenSpaceReflectionObjectThickness != thickness || (*(self + 16) & 1) != 0)
  {
    v7 = v3;
    v8 = v4;
    self->_screenSpaceReflectionObjectThickness = thickness;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF34B520;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    thicknessCopy = thickness;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (id)dataRepresentationWithOptions:(id)options
{
  if (*(self + 16))
  {
    v56 = sub_1AF0D5194();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF9B9C(v56, v57, v58, v59, v60, v61, v62, v63);
    }

    return 0;
  }

  else
  {
    v6 = objc_msgSend_stateManager(self, a2, options, v3);
    active = objc_msgSend_activeState(v6, v7, v8, v9);
    Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
    v15 = objc_msgSend_stateManager(self, v12, v13, v14);
    v19 = objc_msgSend_activeState(v15, v16, v17, v18);
    CFDictionarySetValue(Mutable, self, v19);
    v23 = objc_msgSend_stateManager(self, v20, v21, v22);
    objc_msgSend_setTransitionsEnabled_(v23, v24, 0, v25);
    v29 = objc_msgSend_stateManager(self, v26, v27, v28);
    objc_msgSend_setActiveState_(v29, v30, 0, v31);
    v35 = objc_msgSend_rootNode(self, v32, v33, v34);
    v81[0] = MEMORY[0x1E69E9820];
    v81[1] = 3221225472;
    v81[2] = sub_1AF34B754;
    v81[3] = &unk_1E7A7F400;
    v81[4] = Mutable;
    objc_msgSend_enumerateHierarchyUsingBlock_(v35, v36, v81, v37);
    v40 = objc_msgSend_objectForKeyedSubscript_(options, v38, @"VFXWorldExportPresentationTree", v39);
    v44 = objc_msgSend_BOOLValue(v40, v41, v42, v43);
    v47 = objc_msgSend_objectForKeyedSubscript_(options, v45, @"kSceneSourceFormat", v46);
    isEqualToString = objc_msgSend_isEqualToString_(v47, v48, @"vfxz-world", v49);
    if (v44)
    {
      v54 = objc_msgSend_worldRef(self, v50, v51, v52);
      v55 = v54;
      if (v54)
      {
        sub_1AF1CEA20(v54);
      }
    }

    else
    {
      v55 = 0;
    }

    v64 = objc_msgSend_archivedDataWithRootObject_options_(VFXKeyedArchiver, v50, self, options);
    v68 = v44 ^ 1;
    if (!v55)
    {
      v68 = 1;
    }

    if ((v68 & 1) == 0)
    {
      sub_1AF1CEA9C(v55);
    }

    v69 = objc_msgSend_stateManager(self, v65, v66, v67);
    objc_msgSend_setActiveState_(v69, v70, active, v71);
    v75 = objc_msgSend_stateManager(self, v72, v73, v74);
    objc_msgSend_setTransitionsEnabled_(v75, v76, 1, v77);
    CFDictionaryApplyFunction(Mutable, sub_1AF34B7D0, 0);
    CFRelease(Mutable);
    if (isEqualToString)
    {
      return objc_msgSend_vfx_compressedDataUsingCompressionAlgorithm_(v64, v78, 517, v79);
    }
  }

  return v64;
}

- (BOOL)writeToURL:(id)l options:(id)options progressHandler:(id)handler
{
  if (*(self + 16))
  {
    v11 = sub_1AF0D5194();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF9C14(v11, v12, v13, v14, v15, v16, v17, v18);
    }

    return 0;
  }

  v68 = 0;
  if (options)
  {
    v8 = objc_msgSend_mutableCopy(options, a2, l, options);
  }

  else
  {
    v8 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, l, 0);
  }

  v20 = v8;
  v24 = objc_msgSend_valueForKey_(v8, v9, @"kSceneSourceFormat", v10);
  if (!v24)
  {
    v25 = objc_msgSend_pathExtension(l, v21, v22, v23);
    v29 = objc_msgSend_lowercaseString(v25, v26, v27, v28);
    if (objc_msgSend_isEqualToString_(v29, v30, @"plist", v31) & 1) != 0 || (objc_msgSend_isEqualToString_(v29, v21, @"vfx-world", v23))
    {
      v32 = VFXWorldLoaderFormatVFXWorld;
    }

    else
    {
      if (!objc_msgSend_isEqualToString_(v29, v21, @"vfxz-world", v23))
      {
        v24 = 0;
        isEqualToString = objc_msgSend_isEqualToString_(0, v21, @"vfx-world", v23);
        goto LABEL_15;
      }

      v32 = VFXWorldLoaderFormatVFXWorldCompressed;
    }

    v24 = *v32;
    if (*v32)
    {
      objc_msgSend_setValue_forKey_(v20, v21, *v32, @"kSceneSourceFormat");
    }
  }

  isEqualToString = objc_msgSend_isEqualToString_(v24, v21, @"vfx-world", v23);
LABEL_15:
  if ((isEqualToString & 1) != 0 || objc_msgSend_isEqualToString_(v24, v34, @"vfxz-world", v35))
  {
    v37 = objc_msgSend_dataRepresentationWithOptions_(self, v34, v20, v35);
    v67 = 0;
    v39 = objc_msgSend_writeToURL_options_error_(v37, v38, l, 1, &v67);
    goto LABEL_31;
  }

  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v63 = sub_1AF34BB84;
  v64 = &unk_1E7A7F428;
  v65 = v24;
  lCopy = l;
  if (v24)
  {
    if ((objc_msgSend_isEqualToString_(v24, v34, @"usd", v35) & 1) == 0 && (objc_msgSend_isEqualToString_(v24, v40, @"usda", v41) & 1) == 0 && (objc_msgSend_isEqualToString_(v24, v42, @"usdc", v43) & 1) == 0 && (objc_msgSend_isEqualToString_(v24, v44, @"usdz", v45) & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_30:
    v67 = 0;
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = sub_1AF34BCCC;
    v61[3] = &unk_1E7A7F450;
    v61[4] = self;
    v39 = (v63)(v62, &v67, v61);
    goto LABEL_31;
  }

  v46 = objc_msgSend_pathExtension(l, v34, v36, v35);
  v50 = objc_msgSend_lowercaseString(v46, v47, v48, v49);
  if ((objc_msgSend_isEqualToString_(v50, v51, @"usd", v52) & 1) != 0 || (objc_msgSend_isEqualToString_(v50, v53, @"usda", v54) & 1) != 0 || (objc_msgSend_isEqualToString_(v50, v55, @"usdc", v56) & 1) != 0 || objc_msgSend_isEqualToString_(v50, v57, @"usdz", v58))
  {
    goto LABEL_30;
  }

LABEL_35:
  if (!NSClassFromString(&cfstr_Mdlasset.isa))
  {
    return 0;
  }

  v67 = 0;
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = sub_1AF34BCD8;
  v60[3] = &unk_1E7A7F450;
  v60[4] = self;
  v39 = (v63)(v62, &v67, v60);
LABEL_31:
  v19 = v39;
  if (handler)
  {
    (*(handler + 2))(handler, v67, &v68, 1.0);
  }

  return v19;
}

- (void)_dumpToDisk
{
  v5 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, v2, v3);
  v9 = objc_msgSend_temporaryDirectory(v5, v6, v7, v8);
  v15 = objc_msgSend_path(v9, v10, v11, v12);
  v16 = 0;
  do
  {
    v17 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v13, @"worldDump%d.vfx", v14, v16);
    v20 = objc_msgSend_stringByAppendingPathComponent_(v15, v18, v17, v19);
    v16 = (v16 + 1);
    v24 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v21, v22, v23);
  }

  while ((objc_msgSend_fileExistsAtPath_(v24, v25, v20, v26) & 1) != 0);
  NSLog(&cfstr_DumpingWorldTo.isa, v20);
  v29 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v27, v20, v28);

  MEMORY[0x1EEE66B58](self, sel_writeToURL_options_progressHandler_, v29, 0);
}

- (void)lock
{
  v4 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v4)
  {

    sub_1AF1CEA20(v4);
  }
}

- (void)unlock
{
  v4 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v4)
  {

    sub_1AF1CEA9C(v4);
  }
}

- (id)copyAnimationChannelForKeyPath:(id)path animation:(id)animation
{
  v40 = 0;
  v41 = 0;
  sub_1AF3716AC(path, &v41, &v40, animation);
  if (objc_msgSend_isEqual_(v41, v7, @"root", v8))
  {
    if (!self->_rootNode)
    {
      v12 = objc_msgSend_worldRef(self, v9, v10, v11);
      v13 = v12;
      if (v12)
      {
        sub_1AF1CEA20(v12);
      }

      if (!self->_rootNode)
      {
        world = self->_world;
        if (world)
        {
          sub_1AF1CEA20(world);
          v16 = sub_1AF1CF7E8(self->_world);
          if (v16)
          {
            v18 = objc_msgSend_nodeWithNodeRef_(VFXNode, v15, v16, v17);
            self->_rootNode = v18;
            objc_msgSend_addWorldReference_(v18, v19, self, v20);
          }

          else
          {
            v36 = objc_msgSend_node(VFXNode, v15, 0, v17);
            objc_msgSend__setRootNode_immediate_(self, v37, v36, 1);
          }

          sub_1AF1CEA9C(self->_world);
        }
      }

      if (v13)
      {
        sub_1AF1CEA9C(v13);
      }
    }

    result = self->_rootNode;
    return objc_msgSend_copyAnimationChannelForKeyPath_animation_(result, v9, v40, animation);
  }

  if (objc_msgSend_hasPrefix_(path, v9, @"/", v11))
  {
    if (!self->_rootNode)
    {
      goto LABEL_14;
    }

    return objc_msgSend_copyAnimationChannelForKeyPath_animation_(self->_rootNode, v21, path, animation);
  }

  hasPrefix = objc_msgSend_hasPrefix_(path, v21, @"children[", v23);
  rootNode = self->_rootNode;
  if (hasPrefix)
  {
    if (!rootNode)
    {
LABEL_14:
      v26 = objc_msgSend_worldRef(self, v21, v22, v23);
      v27 = v26;
      if (v26)
      {
        sub_1AF1CEA20(v26);
      }

      if (!self->_rootNode)
      {
        v28 = self->_world;
        if (v28)
        {
          sub_1AF1CEA20(v28);
          v30 = sub_1AF1CF7E8(self->_world);
          if (v30)
          {
            v32 = objc_msgSend_nodeWithNodeRef_(VFXNode, v29, v30, v31);
            self->_rootNode = v32;
            objc_msgSend_addWorldReference_(v32, v33, self, v34);
          }

          else
          {
            v38 = objc_msgSend_node(VFXNode, v29, 0, v31);
            objc_msgSend__setRootNode_immediate_(self, v39, v38, 1);
          }

          sub_1AF1CEA9C(self->_world);
        }
      }

      if (v27)
      {
        sub_1AF1CEA9C(v27);
      }
    }

    return objc_msgSend_copyAnimationChannelForKeyPath_animation_(self->_rootNode, v21, path, animation);
  }

  result = objc_msgSend_childNodeWithName_recursively_(rootNode, v21, v41, 1);
  if (result)
  {
    return objc_msgSend_copyAnimationChannelForKeyPath_animation_(result, v9, v40, animation);
  }

  return result;
}

- (id)copyAnimationChannelForKeyPath:(id)path property:(id)property
{
  if (self->_background == property)
  {
    v6 = off_1E7A7BE10;
  }

  else
  {
    if (self->_environment != property)
    {
      return 0;
    }

    v6 = off_1E7A7BE18;
  }

  v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"%@.%@", property, *v6, path);

  return sub_1AF291EF0(self, v7, v8, v9);
}

- (id)valueForUndefinedKey:(id)key
{
  if (*(self + 16))
  {
    v20 = sub_1AF0D5194();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF9C8C(v20, v21, v22, v23, v24, v25, v26, v27);
    }

    return 0;
  }

  else
  {
    hasPrefix = objc_msgSend_hasPrefix_(key, a2, @"/", v3);
    rootNode = self->_rootNode;
    if (hasPrefix)
    {
      if (!rootNode)
      {
        v11 = objc_msgSend_worldRef(self, v6, v7, v8);
        v12 = v11;
        if (v11)
        {
          sub_1AF1CEA20(v11);
        }

        if (!self->_rootNode)
        {
          world = self->_world;
          if (world)
          {
            sub_1AF1CEA20(world);
            v15 = sub_1AF1CF7E8(self->_world);
            if (v15)
            {
              v17 = objc_msgSend_nodeWithNodeRef_(VFXNode, v14, v15, v16);
              self->_rootNode = v17;
              objc_msgSend_addWorldReference_(v17, v18, self, v19);
            }

            else
            {
              v30 = objc_msgSend_node(VFXNode, v14, 0, v16);
              objc_msgSend__setRootNode_immediate_(self, v31, v30, 1);
            }

            sub_1AF1CEA9C(self->_world);
          }
        }

        if (v12)
        {
          sub_1AF1CEA9C(v12);
        }
      }

      userAttributes = self->_rootNode;
    }

    else
    {
      result = objc_msgSend_childNodeWithName_recursively_(rootNode, v6, key, 1);
      if (result)
      {
        return result;
      }

      userAttributes = self->_userAttributes;
    }

    return objc_msgSend_valueForKey_(userAttributes, v6, key, v8);
  }
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  if (*(self + 16))
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF9D04(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  else
  {
    userAttributes = self->_userAttributes;

    objc_msgSend_setValue_forKey_(userAttributes, a2, value, key);
  }
}

- (id)_nodeWithIndexPath:(id)path
{
  if (*(self + 16))
  {
    v28 = sub_1AF0D5194();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF9D7C(v28, v29, v30, v31, v32, v33, v34, v35);
    }

    return 0;
  }

  v5 = objc_msgSend_rootNode(self, a2, path, v3);
  v9 = objc_msgSend_length(path, v6, v7, v8);
  if (v9 >= 1)
  {
    v12 = v9;
    v13 = 0;
    while (1)
    {
      v14 = objc_msgSend_indexAtPosition_(path, v10, v13, v11);
      v18 = objc_msgSend_childNodes(v5, v15, v16, v17);
      if (objc_msgSend_count(v18, v19, v20, v21) <= v14)
      {
        break;
      }

      ++v13;
      v25 = objc_msgSend_childNodes(v5, v22, v23, v24);
      v5 = objc_msgSend_objectAtIndexedSubscript_(v25, v26, v14, v27);
      if (v12 == v13)
      {
        return v5;
      }
    }

    v36 = sub_1AF0D5194();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF9DF4();
    }

    return 0;
  }

  return v5;
}

+ (id)_indexPathForNode:(id)node
{
  if (!node)
  {
    return 0;
  }

  nodeCopy = node;
  v5 = -1;
  v6 = -8;
  nodeCopy2 = node;
  do
  {
    nodeCopy2 = objc_msgSend_parentNode(nodeCopy2, a2, node, v3);
    ++v5;
    v6 += 8;
  }

  while (nodeCopy2);
  if (v5)
  {
    v8 = malloc_type_malloc(v6, 0x100004000313F17uLL);
    v12 = objc_msgSend_parentNode(nodeCopy, v9, v10, v11);
    if (!v12)
    {
      goto LABEL_9;
    }

    v15 = v5 + 1;
    do
    {
      v16 = v12;
      v8[v15 - 2] = objc_msgSend_indexOfChildNode_(v12, v13, nodeCopy, v14);
      v12 = objc_msgSend_parentNode(v16, v17, v18, v19);
      --v15;
      nodeCopy = v16;
    }

    while (v12);
    if (v15 != 1)
    {
LABEL_9:
      v20 = sub_1AF0D5194();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF9E30(v20, v21, v22, v23, v24, v25, v26, v27);
      }
    }

    v28 = objc_alloc(MEMORY[0x1E696AC88]);
    v30 = objc_msgSend_initWithIndexes_length_(v28, v29, v8, v5);
    free(v8);
    return v30;
  }

  else
  {
    v32 = sub_1AF0D5194();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF9EA8();
    }

    return 0;
  }
}

- (id)_subnodeFromIndexPath:(id)path
{
  if (path)
  {
    return (MEMORY[0x1EEE66B58])(self, sel__nodeWithIndexPath_, path);
  }

  return self;
}

- (void)prepareForRenderer:(id)renderer progressHandler:(id)handler
{
  v48[1] = *MEMORY[0x1E69E9840];
  if ((*(self + 16) & 1) == 0)
  {
    v46 = 0;
    objc_opt_class();
    rendererCopy = renderer;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_10;
      }

      rendererCopy = objc_msgSend_renderer(renderer, v7, v11, v12);
    }

    if (rendererCopy)
    {
      v13 = objc_msgSend__rendererForPrepare(renderer, v7, v8, v9);
      objc_msgSend_prepareObject_shouldAbortBlock_(v13, v14, self, 0);
      objc_msgSend_lock(v13, v15, v16, v17);
      objc_msgSend_lock(rendererCopy, v18, v19, v20);
      v24 = objc_msgSend_worldRef(self, v21, v22, v23);
      sub_1AF1CEA20(v24);
      objc_msgSend_transferRenderGraphResourcesFrom_(rendererCopy, v25, v13, v26);
      sub_1AF1CEA9C(v24);
      objc_msgSend_unlock(rendererCopy, v27, v28, v29);
      objc_msgSend_unlock(v13, v30, v31, v32);
      v33 = 0;
      if (!handler)
      {
        return;
      }

LABEL_12:
      (*(handler + 2))(handler, v33, &v46, 1.0);
      return;
    }

LABEL_10:
    if (!handler)
    {
      return;
    }

    v42 = MEMORY[0x1E696ABC0];
    v43 = *MEMORY[0x1E696A250];
    v47 = *MEMORY[0x1E696A578];
    v48[0] = @"unknown renderer type";
    v44 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v48, &v47, 1);
    v33 = objc_msgSend_errorWithDomain_code_userInfo_(v42, v45, v43, 3328, v44);
    goto LABEL_12;
  }

  v34 = sub_1AF0D5194();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF9F10(v34, v35, v36, v37, v38, v39, v40, v41);
  }
}

- (void)prepareWithRenderer:(id)renderer
{
  if (*(self + 16))
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF9F88(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  else
  {

    objc_msgSend_prepareObject_shouldAbortBlock_(renderer, a2, self, 0);
  }
}

- (id)initForJavascript:(id)javascript
{
  v49.receiver = self;
  v49.super_class = VFXWorld;
  v4 = [(VFXWorld *)&v49 init];
  if (v4)
  {
    if (javascript)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        javascriptCopy = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v5, javascript, v6);
        if (!objc_msgSend_scheme(javascriptCopy, v8, v9, v10))
        {
          javascriptCopy = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v11, javascript, v12);
        }
      }

      else
      {
        javascriptCopy = javascript;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = objc_msgSend_loader(VFXWorldLoader, v13, v14, v15);
        WorldFromURL_options_statusHandler_error = objc_msgSend_loadWorldFromURL_options_statusHandler_error_(v16, v17, javascriptCopy, 0, 0, 0);
        v22 = objc_msgSend_rootNode(v4, v19, v20, v21);
        v26 = objc_msgSend_assets(v4, v23, v24, v25);
        v30 = objc_msgSend_rootNode(v26, v27, v28, v29);
        objc_msgSend_mergeWorld_parentNode_parentAssetNode_(v4, v31, WorldFromURL_options_statusHandler_error, v22, v30);
      }
    }

    v32 = sub_1AF1CF520();
    *(v4 + 1) = v32;
    objc_msgSend_setWorld_(*(v4 + 27), v33, v32, v34);
    v38 = *(v4 + 1);
    if (v38)
    {
      sub_1AF16CDFC(v38, v4);
    }

    objc_msgSend__updateModelFromPresentation(v4, v35, v36, v37);
    if (!*(v4 + 9))
    {
      v39 = *(v4 + 1);
      if (v39)
      {
        sub_1AF1CEA20(v39);
        v41 = sub_1AF1CF7E8(*(v4 + 1));
        if (v41)
        {
          v43 = objc_msgSend_nodeWithNodeRef_(VFXNode, v40, v41, v42);
          *(v4 + 9) = v43;
          objc_msgSend_addWorldReference_(v43, v44, v4, v45);
        }

        else
        {
          v46 = objc_msgSend_node(VFXNode, v40, 0, v42);
          objc_msgSend__setRootNode_immediate_(v4, v47, v46, 1);
        }

        sub_1AF1CEA9C(*(v4 + 1));
      }
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeInteger_forKey_(coder, a2, 1, @"version");
  objc_msgSend_endTime(self, v5, v6, v7);
  objc_msgSend_encodeDouble_forKey_(coder, v8, @"endTime", v9);
  objc_msgSend_startTime(self, v10, v11, v12);
  objc_msgSend_encodeDouble_forKey_(coder, v13, @"startTime", v14);
  objc_msgSend_frameRate(self, v15, v16, v17);
  objc_msgSend_encodeDouble_forKey_(coder, v18, @"frameRate", v19);
  defaultRenderGraph = self->_defaultRenderGraph;
  if (defaultRenderGraph)
  {
    objc_msgSend_encodeObject_forKey_(coder, v20, defaultRenderGraph, @"defaultRenderGraph");
  }

  defaultPointOfView = self->_defaultPointOfView;
  if (defaultPointOfView && objc_msgSend_world(defaultPointOfView, v20, defaultRenderGraph, v21) == self)
  {
    objc_msgSend_encodeObject_forKey_(coder, v20, self->_defaultPointOfView, @"defaultPointOfView");
  }

  behaviorGraph = self->_behaviorGraph;
  if (behaviorGraph)
  {
    objc_msgSend_encodeObject_forKey_(coder, v20, behaviorGraph, @"behaviorGraph");
  }

  assetRegistry = self->_assetRegistry;
  if (assetRegistry)
  {
    objc_msgSend_encodeObject_forKey_(coder, v20, assetRegistry, @"assetRegistry");
  }

  preferredConfiguration = self->_preferredConfiguration;
  if (preferredConfiguration)
  {
    objc_msgSend_encodeObject_forKey_(coder, v20, preferredConfiguration, @"preferredConfiguration");
  }

  physicsWorld = self->_physicsWorld;
  if (physicsWorld && (objc_msgSend__isDefault(physicsWorld, v20, preferredConfiguration, v21) & 1) == 0)
  {
    objc_msgSend_encodeObject_forKey_(coder, v20, self->_physicsWorld, @"physicsWorld");
  }

  rootNode = self->_rootNode;
  if (rootNode)
  {
    objc_msgSend_encodeObject_forKey_(coder, v20, rootNode, @"rootNode");
  }

  background = self->_background;
  if (background)
  {
    objc_msgSend_encodeObject_forKey_(coder, v20, background, @"background");
  }

  environment = self->_environment;
  if (environment)
  {
    objc_msgSend_encodeObject_forKey_(coder, v20, environment, @"environment");
  }

  userAttributes = self->_userAttributes;
  if (userAttributes)
  {
    objc_msgSend_encodeObject_forKey_(coder, v20, userAttributes, @"userAttributes");
  }

  stateManager = self->_stateManager;
  if (stateManager)
  {
    objc_msgSend_encodeObject_forKey_(coder, v20, stateManager, @"stateManager");
  }

  objc_msgSend_encodeDouble_forKey_(coder, v20, @"fogStartDistance", v21, self->_fogStartDistance);
  objc_msgSend_encodeDouble_forKey_(coder, v33, @"fogEndDistance", v34, self->_fogEndDistance);
  objc_msgSend_encodeDouble_forKey_(coder, v35, @"fogDensityExponent", v36, self->_fogDensityExponent);
  fogColor = self->_fogColor;
  if (fogColor)
  {
    sub_1AF37266C(coder, fogColor, @"fogColor");
  }

  objc_msgSend_encodeBool_forKey_(coder, fogColor, self->_wantsScreenSpaceAmbientOcclusion, @"wantsScreenSpaceAmbientOcclusion");
  *&v38 = self->_screenSpaceAmbientOcclusionIntensity;
  objc_msgSend_encodeFloat_forKey_(coder, v39, @"screenSpaceAmbientOcclusionIntensity", v40, v38);
  *&v41 = self->_screenSpaceAmbientOcclusionRadius;
  objc_msgSend_encodeFloat_forKey_(coder, v42, @"screenSpaceAmbientOcclusionRadius", v43, v41);
  objc_msgSend_encodeBool_forKey_(coder, v44, self->_screenSpaceAmbientOcclusionEnableBentNormal, @"screenSpaceAmbientOcclusionEnableBentNormal");
  objc_msgSend_encodeInteger_forKey_(coder, v45, self->_screenSpaceAmbientOcclusionQuality, @"screenSpaceAmbientOcclusionQuality");
  objc_msgSend_encodeBool_forKey_(coder, v46, self->_wantsScreenSpaceReflection, @"wantsScreenSpaceReflection");
  objc_msgSend_encodeInteger_forKey_(coder, v47, self->_screenSpaceReflectionQuality, @"screenSpaceReflectionQuality");
  objc_msgSend_encodeInteger_forKey_(coder, v48, self->_screenSpaceReflectionThicknessMode, @"screenSpaceReflectionThicknessMode");
  *&v49 = self->_screenSpaceReflectionObjectThickness;
  objc_msgSend_encodeFloat_forKey_(coder, v50, @"screenSpaceReflectionObjectThickness", v51, v49);
  objc_msgSend_encodeObject_forKey_(coder, v52, self->_shaderCacheConfigurations, @"shaderCacheConfigurations");
  triggerManager = self->_triggerManager;
  if (triggerManager)
  {
    objc_msgSend_encodeObject_forKey_(coder, v53, triggerManager, @"triggerManager");
  }

  sub_1AF3728B4(coder, self, triggerManager, v54);

  sub_1AF372440(coder, self, v56, v57);
}

- (VFXWorld)initWithCoder:(id)coder
{
  v259.receiver = self;
  v259.super_class = VFXWorld;
  v6 = [(VFXWorld *)&v259 init];
  if (!v6)
  {
    return v6;
  }

  v7 = objc_msgSend_valueForKey_(VFXTransaction, v4, @"VFXWorldLoadingContextKey", v5);
  v10 = objc_msgSend_objectForKeyedSubscript_(v7, v8, @"VFXWorldLoaderDisableVFXCoreSupport", v9);
  v14 = objc_msgSend_BOOLValue(v10, v11, v12, v13);
  objc_msgSend_commonInit_(v6, v15, v14 ^ 1u, v16);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    objc_msgSend__allowDecodingCyclesInSecureMode(coder, v17, v18, v19);
  }

  v20 = objc_msgSend_immediateMode(VFXTransaction, v17, v18, v19);
  objc_msgSend_setImmediateMode_(VFXTransaction, v21, 1, v22);
  v25 = objc_msgSend_objectForKeyedSubscript_(v7, v23, @"VFXWorldLoaderLoadForAuthoring", v24);
  if (objc_msgSend_BOOLValue(v25, v26, v27, v28))
  {
    v31 = v14 | 2;
  }

  else
  {
    v31 = v14;
  }

  v32 = objc_msgSend_objectForKeyedSubscript_(v7, v29, @"kWorldInitOptionForRERendering", v30);
  if (objc_msgSend_BOOLValue(v32, v33, v34, v35))
  {
    v31 |= 4u;
  }

  v38 = objc_msgSend_objectForKeyedSubscript_(v7, v36, @"VFXWorldLoaderOptionMetalLibraryURL", v37);
  v39 = sub_1AF1CF52C(v31, v38);
  *(v6 + 1) = v39;
  objc_msgSend_setWorld_(*(v6 + 27), v40, v39, v41);
  if ((v14 & 1) == 0)
  {
    *(v6 + 33) = sub_1AF14E33C(*(v6 + 1));
  }

  v45 = *(v6 + 1);
  if (v45)
  {
    sub_1AF16CDFC(v45, v6);
  }

  objc_msgSend__updateModelFromPresentation(v6, v42, v43, v44);
  v48 = objc_msgSend_valueForKey_(v7, v46, @"VFXWorldLoaderAssetPathResolver", v47);
  if (v48)
  {
    objc_msgSend_setAssetPathResolver_(v6, v49, v48, v50);
  }

  v51 = objc_msgSend_objectForKeyedSubscript_(v7, v49, @"url", v50);
  if (v51)
  {
    v55 = v51;
    v56 = objc_msgSend_pathExtension(v51, v52, v53, v54);
    v60 = objc_msgSend_lowercaseString(v56, v57, v58, v59);
    if (objc_msgSend_isEqualToString_(v60, v61, @"vfx-world", v62))
    {
      v69 = objc_msgSend_mutableCopy(v7, v63, v64, v65);
    }

    else
    {
      isEqualToString = objc_msgSend_isEqualToString_(v60, v63, @"vfxz-world", v65);
      v69 = objc_msgSend_mutableCopy(v7, v71, v72, v73);
      if (!isEqualToString)
      {
        v79 = *(v6 + 33);
        if (v79)
        {
          v80 = sub_1AF0FB884(v79);
        }

        else
        {
          v80 = 0;
        }

        PathComponent = objc_msgSend_URLByDeletingLastPathComponent(v55, v66, v67, v68);
        objc_msgSend_initializeAssetManagerWithBundleURL_(v80, v82, PathComponent, v83);
        v77 = objc_msgSend_assetPathResolver(v6, v84, v85, v86);
        goto LABEL_25;
      }
    }

    v74 = objc_msgSend_URLByDeletingLastPathComponent(v55, v66, v67, v68);
    v77 = objc_msgSend_resolverWithFolderURL_(VFXSimplePathResolver, v75, v74, v76);
LABEL_25:
    objc_msgSend_setObject_forKeyedSubscript_(v69, v78, v77, @"VFXWorldLoaderAssetPathResolver");
    objc_msgSend_setValue_forKey_(VFXTransaction, v87, v69, @"VFXWorldLoadingContextKey");
  }

  if (objc_msgSend_containsValueForKey_(coder, v52, @"behaviorGraph", v54))
  {
    v88 = objc_opt_class();
    v90 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v89, v88, @"behaviorGraph");
    objc_msgSend_setBehaviorGraph_(v6, v91, v90, v92);
  }

  v93 = objc_opt_class();
  *(v6 + 8) = objc_msgSend_decodeObjectOfClass_forKey_(coder, v94, v93, @"physicsWorld");
  if (objc_msgSend_containsValueForKey_(coder, v95, @"triggerManager", v96))
  {
    v97 = objc_opt_class();
    v99 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v98, v97, @"triggerManager");
  }

  else
  {
    v99 = objc_alloc_init(VFXTriggerManager);
  }

  *(v6 + 37) = v99;
  objc_msgSend_setWorld_(v99, v100, v6, v101);
  if (objc_msgSend_containsValueForKey_(coder, v102, @"preferredConfiguration", v103))
  {
    v106 = objc_opt_class();
    *(v6 + 7) = objc_msgSend_decodeObjectOfClass_forKey_(coder, v107, v106, @"preferredConfiguration");
  }

  objc_msgSend_decodeDoubleForKey_(coder, v104, @"endTime", v105);
  objc_msgSend_setEndTime_(v6, v108, v109, v110);
  objc_msgSend_decodeDoubleForKey_(coder, v111, @"startTime", v112);
  objc_msgSend_setStartTime_(v6, v113, v114, v115);
  objc_msgSend_decodeDoubleForKey_(coder, v116, @"frameRate", v117);
  objc_msgSend_setFrameRate_(v6, v118, v119, v120);
  v121 = objc_opt_class();
  v123 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v122, v121, @"defaultRenderGraph");
  objc_msgSend_setDefaultRenderGraph_(v6, v124, v123, v125);
  v126 = objc_opt_class();
  v128 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v127, v126, @"defaultPointOfView");
  objc_msgSend_setDefaultPointOfView_(v6, v129, v128, v130);
  v133 = objc_msgSend_decodeIntegerForKey_(coder, v131, @"version", v132);
  v134 = objc_opt_class();
  v136 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v135, v134, @"rootNode");
  if (v136)
  {
    objc_msgSend_setRootNode_(v6, v137, v136, v138);
  }

  else
  {
    v142 = sub_1AF0D5194();
    if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFA000();
    }

    if (!*(v6 + 9))
    {
      v143 = *(v6 + 1);
      if (v143)
      {
        sub_1AF1CEA20(v143);
        v145 = sub_1AF1CF7E8(*(v6 + 1));
        if (v145)
        {
          v147 = objc_msgSend_nodeWithNodeRef_(VFXNode, v144, v145, v146);
          *(v6 + 9) = v147;
          objc_msgSend_addWorldReference_(v147, v148, v6, v149);
        }

        else
        {
          v150 = objc_msgSend_node(VFXNode, v144, 0, v146);
          objc_msgSend__setRootNode_immediate_(v6, v151, v150, 1);
        }

        sub_1AF1CEA9C(*(v6 + 1));
      }
    }
  }

  objc_msgSend__registerPhysicsJoints(*(v6 + 8), v139, v140, v141);
  v152 = objc_opt_class();
  v154 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v153, v152, @"background");
  *(v6 + 14) = v154;
  if (!v133)
  {
    objc_msgSend_contents(v154, v155, v156, v157);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_setContents_(*(v6 + 14), v158, 0, v159);
    }
  }

  v160 = sub_1AF37287C();
  *(v6 + 15) = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v161, v160, @"environment");
  v162 = sub_1AF37287C();
  *(v6 + 16) = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v163, v162, @"userAttributes");
  objc_msgSend_decodeDoubleForKey_(coder, v164, @"fogStartDistance", v165);
  *&v166 = v166;
  objc_msgSend_setFogStartDistance_(v6, v167, v168, v169, v166);
  objc_msgSend_decodeDoubleForKey_(coder, v170, @"fogEndDistance", v171);
  *&v172 = v172;
  objc_msgSend_setFogEndDistance_(v6, v173, v174, v175, v172);
  objc_msgSend_decodeDoubleForKey_(coder, v176, @"fogDensityExponent", v177);
  *&v178 = v178;
  objc_msgSend_setFogDensityExponent_(v6, v179, v180, v181, v178);
  if (objc_msgSend_containsValueForKey_(coder, v182, @"wantsScreenSpaceAmbientOcclusion", v183))
  {
    v186 = objc_msgSend_decodeBoolForKey_(coder, v184, @"wantsScreenSpaceAmbientOcclusion", v185);
    objc_msgSend_setWantsScreenSpaceAmbientOcclusion_(v6, v187, v186, v188);
  }

  if (objc_msgSend_containsValueForKey_(coder, v184, @"screenSpaceAmbientOcclusionIntensity", v185))
  {
    objc_msgSend_decodeFloatForKey_(coder, v189, @"screenSpaceAmbientOcclusionIntensity", v190);
    objc_msgSend_setScreenSpaceAmbientOcclusionIntensity_(v6, v191, v192, v193);
  }

  if (objc_msgSend_containsValueForKey_(coder, v189, @"screenSpaceAmbientOcclusionRadius", v190))
  {
    objc_msgSend_decodeFloatForKey_(coder, v194, @"screenSpaceAmbientOcclusionRadius", v195);
    objc_msgSend_setScreenSpaceAmbientOcclusionRadius_(v6, v196, v197, v198);
  }

  if (objc_msgSend_containsValueForKey_(coder, v194, @"screenSpaceAmbientOcclusionEnableBentNormal", v195))
  {
    v201 = objc_msgSend_decodeBoolForKey_(coder, v199, @"screenSpaceAmbientOcclusionEnableBentNormal", v200);
    objc_msgSend_setScreenSpaceAmbientOcclusionEnableBentNormal_(v6, v202, v201, v203);
  }

  if (objc_msgSend_containsValueForKey_(coder, v199, @"screenSpaceAmbientOcclusionQuality", v200))
  {
    v206 = objc_msgSend_decodeIntegerForKey_(coder, v204, @"screenSpaceAmbientOcclusionQuality", v205);
    objc_msgSend_setScreenSpaceAmbientOcclusionQuality_(v6, v207, v206, v208);
  }

  if (objc_msgSend_containsValueForKey_(coder, v204, @"wantsScreenSpaceReflection", v205))
  {
    v211 = objc_msgSend_decodeBoolForKey_(coder, v209, @"wantsScreenSpaceReflection", v210);
    objc_msgSend_setWantsScreenSpaceReflection_(v6, v212, v211, v213);
  }

  if (objc_msgSend_containsValueForKey_(coder, v209, @"screenSpaceReflectionQuality", v210))
  {
    v216 = objc_msgSend_decodeIntForKey_(coder, v214, @"screenSpaceReflectionQuality", v215);
    objc_msgSend_setScreenSpaceReflectionQuality_(v6, v217, v216, v218);
  }

  if (objc_msgSend_containsValueForKey_(coder, v214, @"screenSpaceReflectionObjectThickness", v215))
  {
    objc_msgSend_decodeFloatForKey_(coder, v219, @"screenSpaceReflectionObjectThickness", v220);
    objc_msgSend_setScreenSpaceReflectionObjectThickness_(v6, v221, v222, v223);
  }

  if (objc_msgSend_containsValueForKey_(coder, v219, @"screenSpaceReflectionThicknessMode", v220))
  {
    v226 = objc_msgSend_decodeIntegerForKey_(coder, v224, @"screenSpaceReflectionThicknessMode", v225);
    objc_msgSend_setScreenSpaceReflectionThicknessMode_(v6, v227, v226, v228);
  }

  v229 = MEMORY[0x1E695DFD8];
  v230 = objc_opt_class();
  v233 = objc_msgSend_setWithObject_(v229, v231, v230, v232);
  v234 = sub_1AF3726E8(coder, @"fogColor", v233);
  objc_msgSend_setFogColor_(v6, v235, v234, v236);
  if (objc_msgSend_containsValueForKey_(coder, v237, @"assetRegistry", v238))
  {
    v239 = objc_opt_class();
    v241 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v240, v239, @"assetRegistry");
    *(v6 + 29) = v241;
    objc_msgSend_addWorldReference_(v241, v242, v6, v243);
  }

  v244 = objc_opt_class();
  v246 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(coder, v245, v244, @"shaderCacheConfigurations");
  objc_msgSend_setShaderCacheConfigurations_(v6, v247, v246, v248);
  if (objc_msgSend_containsValueForKey_(coder, v249, @"stateManager", v250))
  {
    v251 = objc_opt_class();
    v253 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v252, v251, @"stateManager");
    *(v6 + 31) = v253;
    objc_msgSend_setOwner_(v253, v254, v6, v255);
  }

  sub_1AF37249C(coder, v6);
  sub_1AF372B94(coder, v6);
  objc_msgSend_setImmediateMode_(VFXTransaction, v256, v20, v257);
  return v6;
}

- (void)setReplicationDelegate:(id)delegate
{
  if (sub_1AF1CFF64(self->_world, 1))
  {
    v8 = sub_1AF0D5194();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF9478(v8, v5, v6, v7, v9, v10, v11, v12);
    }
  }

  v13 = objc_msgSend_worldRef(self, v5, v6, v7);
  if (v13)
  {
    v16 = v13;
    sub_1AF1CEA20(v13);
    sub_1AF14E460(self->_coreEntityManager, delegate, v17, v18);
    v19 = sub_1AF1CF8AC(self->_world);
    sub_1AF14E46C(v19, delegate, v20, v21);
    sub_1AF1CEA9C(v16);
  }

  else
  {
    sub_1AF14E460(self->_coreEntityManager, delegate, v14, v15);
    v22 = sub_1AF1CF8AC(self->_world);
    sub_1AF14E46C(v22, delegate, v23, v24);
  }
}

- (id)presentationScene
{
  v2 = sub_1AF1CF8AC(self->_world);

  return sub_1AF0FB884(v2);
}

- (void)resolveVFXCoreAndTagReferences
{
  if (sub_1AF1CFF64(self->_world, 1))
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF9478(v6, v3, v4, v5, v7, v8, v9, v10);
    }
  }

  v11 = objc_msgSend_scene(self, v3, v4, v5);
  v15 = objc_msgSend_buildIdentifierRemapTable(self, v12, v13, v14);
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v15, v16, &unk_1F24EC3C8, v17);
  v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = sub_1AF34D730;
  v46[3] = &unk_1E7A7F478;
  v46[4] = v11;
  v46[5] = v18;
  v22 = objc_msgSend_assetRegistry(self, v19, v20, v21);
  v26 = objc_msgSend_rootNode(v22, v23, v24, v25);
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = sub_1AF34D8E4;
  v45[3] = &unk_1E7A7F4A0;
  v45[4] = v11;
  v45[5] = v18;
  v45[6] = v46;
  objc_msgSend_enumerateHierarchyUsingBlock_(v26, v27, v45, v28);
  v32 = objc_msgSend_rootNode(self, v29, v30, v31);
  objc_msgSend_enumerateHierarchyUsingBlock_(v32, v33, v46, v34);
  v38 = objc_msgSend_behaviorGraph(self, v35, v36, v37);
  v42 = objc_msgSend_coreEntityHandle(v38, v39, v40, v41);
  objc_msgSend_resolveTag_remap_(v42, v43, v11, v18);
  objc_msgSend_resolveObjectReferencesWithRemapTableWithWorld_objectsByIdentifier_(v11, v44, self, v15);
}

- (BOOL)loadCoreEntityManagerFromURL:(id)l options:(id)options infoOut:(id)out error:(id *)error
{
  if (sub_1AF1CFF64(self->_world, 1))
  {
    v11 = sub_1AF0D5194();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF9478(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  v19 = sub_1AF1CFF64(self->_world, 2);
  v20 = sub_1AF1CFF64(self->_world, 4);
  v24 = objc_msgSend_scene(self, v21, v22, v23);
  objc_msgSend_stopReplication(self, v25, v26, v27);
  if (v19)
  {
    v29 = 2;
  }

  else
  {
    v29 = 0;
  }

  if (v20)
  {
    return objc_msgSend_loadWithUrl_loadingFor_options_infoOut_error_(v24, v28, l, 1, options, out, error);
  }

  else
  {
    return objc_msgSend_loadWithUrl_loadingFor_options_infoOut_error_(v24, v28, l, v29, options, out, error);
  }
}

- (void)replicateToRuntimeAndStartReplicationWithOptions:(id)options
{
  objc_msgSend_cloneModelToPresentationAndStartReplicationStream(self, a2, options, v3);
  v8 = objc_msgSend_objectForKeyedSubscript_(options, v6, @"VFXWorldLoaderReplicationDelegate", v7);
  if (v8)
  {

    MEMORY[0x1EEE66B58](self, sel_setReplicationDelegate_, v8, v9);
  }
}

- (id)scene
{
  result = self->_coreEntityManager;
  if (result)
  {
    return sub_1AF0FB884(result);
  }

  return result;
}

- (id)stateManager
{
  if (*(self + 16))
  {
    v7 = sub_1AF0D5194();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFA03C(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    return 0;
  }

  else
  {
    result = self->_stateManager;
    if (!result)
    {
      v4 = objc_alloc_init(VFXStateManager);
      self->_stateManager = v4;
      objc_msgSend_setOwner_(v4, v5, self, v6);
      return self->_stateManager;
    }
  }

  return result;
}

- (id)triggerManager
{
  result = self->_triggerManager;
  if (!result)
  {
    v4 = objc_alloc_init(VFXTriggerManager);
    self->_triggerManager = v4;
    objc_msgSend_setWorld_(v4, v5, self, v6);
    return self->_triggerManager;
  }

  return result;
}

- (id)buildIdentifierRemapTable
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = objc_msgSend_rootNode(self, v4, v5, v6);
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = sub_1AF34DDE8;
  v50[3] = &unk_1E7A79810;
  v50[4] = v3;
  objc_msgSend_enumerateHierarchyUsingBlock_(v7, v8, v50, v9);
  v13 = objc_msgSend_assets(self, v10, v11, v12);
  v17 = objc_msgSend_rootNode(v13, v14, v15, v16);
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = sub_1AF34DF78;
  v49[3] = &unk_1E7A7F3C0;
  v49[4] = v3;
  objc_msgSend_enumerateHierarchyUsingBlock_(v17, v18, v49, v19);
  if (objc_msgSend_identifier(self, v20, v21, v22))
  {
    v26 = objc_msgSend_identifier(self, v23, v24, v25);
    objc_msgSend_setValue_forKey_(v3, v27, self, v26);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v28 = objc_msgSend_stateManager(self, v23, v24, v25, 0);
  v32 = objc_msgSend_states(v28, v29, v30, v31);
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v45, v51, 16);
  if (v34)
  {
    v38 = v34;
    v39 = *v46;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v46 != v39)
        {
          objc_enumerationMutation(v32);
        }

        v41 = *(*(&v45 + 1) + 8 * i);
        if (objc_msgSend_identifier(v41, v35, v36, v37))
        {
          v42 = objc_msgSend_identifier(v41, v35, v36, v37);
          objc_msgSend_setValue_forKey_(v3, v43, v41, v42);
        }
      }

      v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v35, &v45, v51, 16);
    }

    while (v38);
  }

  return v3;
}

- (int64_t)presentationEntityFromModel:(int64_t)model
{
  if (sub_1AF1CFF64(self->_world, 1))
  {
    v7 = sub_1AF0D5194();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF9478(v7, v5, v8, v6, v9, v10, v11, v12);
    }
  }

  return objc_msgSend_presentationEntityFromModel_(self->_modelToPresentationRemapTable, v5, model, v6);
}

- (id)shaderCacheConfigurations
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_shaderCacheConfigurations;
  }

  v3 = sub_1AF0D5194();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDFA0B4(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  return 0;
}

- (void)setShaderCacheConfigurations:(id)configurations
{
  v41 = *MEMORY[0x1E69E9840];
  if (*(self + 16))
  {
    v23 = sub_1AF0D5194();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFA12C(v23, v24, v25, v26, v27, v28, v29, v30);
    }
  }

  else
  {
    shaderCacheConfigurations = self->_shaderCacheConfigurations;
    if (shaderCacheConfigurations != configurations)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(shaderCacheConfigurations, a2, &v35, v40, 16);
      if (v6)
      {
        v9 = v6;
        v10 = *v36;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v36 != v10)
            {
              objc_enumerationMutation(shaderCacheConfigurations);
            }

            objc_msgSend_setWorld_(*(*(&v35 + 1) + 8 * i), v7, 0, v8);
          }

          v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(shaderCacheConfigurations, v7, &v35, v40, 16);
        }

        while (v9);
      }

      v15 = objc_msgSend_copy(configurations, v12, v13, v14);
      self->_shaderCacheConfigurations = v15;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v31, v39, 16);
      if (v17)
      {
        v20 = v17;
        v21 = *v32;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v32 != v21)
            {
              objc_enumerationMutation(v15);
            }

            objc_msgSend_setWorld_(*(*(&v31 + 1) + 8 * j), v18, self, v19);
          }

          v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v31, v39, 16);
        }

        while (v20);
      }
    }
  }
}

- (void)cleanupPrefabsReferences
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v8 = objc_alloc_init(VFXCopyContext);
  v12 = objc_msgSend_world(self, v9, v10, v11);
  v16 = objc_msgSend_rootNode(v12, v13, v14, v15);
  v99[0] = MEMORY[0x1E69E9820];
  v99[1] = 3221225472;
  v99[2] = sub_1AF34E6A4;
  v99[3] = &unk_1E7A7F478;
  v99[4] = v4;
  v99[5] = v5;
  objc_msgSend_enumerateHierarchyUsingBlock_(v16, v17, v99, v18);
  v22 = objc_msgSend_world(self, v19, v20, v21);
  v26 = objc_msgSend_rootNode(v22, v23, v24, v25);
  v98[0] = MEMORY[0x1E69E9820];
  v98[1] = 3221225472;
  v98[2] = sub_1AF34E710;
  v98[3] = &unk_1E7A7F4C8;
  v98[4] = v7;
  sub_1AF345368(v26, 0, v98);
  v30 = objc_msgSend_world(self, v27, v28, v29);
  v34 = objc_msgSend_assets(v30, v31, v32, v33);
  v38 = objc_msgSend_rootNode(v34, v35, v36, v37);
  v97[0] = MEMORY[0x1E69E9820];
  v97[1] = 3221225472;
  v97[2] = sub_1AF34E798;
  v97[3] = &unk_1E7A7F398;
  v97[4] = v3;
  v97[5] = v6;
  objc_msgSend_enumerateHierarchyUsingBlock_(v38, v39, v97, v40);
  v95[0] = 0;
  v95[1] = v95;
  v95[2] = 0x2020000000;
  v96 = 0;
  v93[0] = 0;
  v93[1] = v93;
  v93[2] = 0x2020000000;
  v94 = 0;
  v91[0] = 0;
  v91[1] = v91;
  v91[2] = 0x2020000000;
  v92 = 0;
  v89[0] = 0;
  v89[1] = v89;
  v89[2] = 0x2020000000;
  v90 = 0;
  v44 = objc_msgSend_world(self, v41, v42, v43);
  v48 = objc_msgSend_assets(v44, v45, v46, v47);
  v52 = objc_msgSend_rootNode(v48, v49, v50, v51);
  v88[0] = MEMORY[0x1E69E9820];
  v88[1] = 3221225472;
  v88[2] = sub_1AF34E8C0;
  v88[3] = &unk_1E7A7F4F0;
  v88[4] = v7;
  v88[5] = v8;
  v88[6] = v91;
  v88[7] = v89;
  sub_1AF345368(v52, 0, v88);
  v56 = objc_msgSend_world(self, v53, v54, v55);
  v60 = objc_msgSend_assets(v56, v57, v58, v59);
  v64 = objc_msgSend_rootNode(v60, v61, v62, v63);
  v87[0] = MEMORY[0x1E69E9820];
  v87[1] = 3221225472;
  v87[2] = sub_1AF34E954;
  v87[3] = &unk_1E7A7F4F0;
  v87[4] = v5;
  v87[5] = v3;
  v87[6] = v95;
  v87[7] = v93;
  sub_1AF345368(v64, 0, v87);
  v68 = objc_msgSend_world(self, v65, v66, v67);
  v72 = objc_msgSend_assets(v68, v69, v70, v71);
  v76 = objc_msgSend_rootNode(v72, v73, v74, v75);
  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 3221225472;
  v86[2] = sub_1AF34E9F8;
  v86[3] = &unk_1E7A7F4C8;
  v86[4] = v5;
  sub_1AF345368(v76, 0, v86);
  v80 = objc_msgSend_world(self, v77, v78, v79);
  v84 = objc_msgSend_rootNode(v80, v81, v82, v83);
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = sub_1AF34EA50;
  v85[3] = &unk_1E7A7F4F0;
  v85[4] = v6;
  v85[5] = v4;
  v85[6] = v95;
  v85[7] = v93;
  sub_1AF345368(v84, 0, v85);

  _Block_object_dispose(v89, 8);
  _Block_object_dispose(v91, 8);
  _Block_object_dispose(v93, 8);
  _Block_object_dispose(v95, 8);
}

- (int)peerPid
{
  v4 = objc_msgSend_scene(self, a2, v2, v3);

  return objc_msgSend_peerPid(v4, v5, v6, v7);
}

- (void)setPeerPid:(int)pid
{
  v4 = *&pid;
  v6 = objc_msgSend_scene(self, a2, *&pid, v3);
  objc_msgSend_setPeerPid_(v6, v7, v4, v8);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF34ECA8;
  v10[3] = &unk_1E7A7E270;
  v10[4] = self;
  v11 = v4;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v9, self, v10);
}

- (unsigned)peerTaskIdentity
{
  v4 = objc_msgSend_scene(self, a2, v2, v3);

  return objc_msgSend_peerTaskIdentity(v4, v5, v6, v7);
}

- (void)setPeerTaskIdentity:(unsigned int)identity
{
  v4 = *&identity;
  v6 = objc_msgSend_scene(self, a2, *&identity, v3);
  objc_msgSend_setPeerTaskIdentity_(v6, v7, v4, v8);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF34EDA4;
  v10[3] = &unk_1E7A7E270;
  v10[4] = self;
  v11 = v4;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v9, self, v10);
}

- (void)updateMemoryOwnership
{
  v5 = objc_msgSend_scene(self, a2, v2, v3);
  objc_msgSend_updateMemoryOwnership(v5, v6, v7, v8);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF34EE6C;
  v10[3] = &unk_1E7A7E1D0;
  v10[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v9, self, v10);
}

- (id)_exportAsMovieOperationWithDestinationURL:(id)l size:(CGSize)size attributes:(id)attributes delegate:(id)delegate didEndSelector:(SEL)selector userInfo:(void *)info
{
  height = size.height;
  width = size.width;
  v16 = objc_msgSend_rendererWithDevice_options_(VFXRenderer, a2, 0, 0);
  objc_msgSend_setWorld_(v16, v17, self, v18);
  v19 = [VFXMovieExportOperation alloc];
  v21 = objc_msgSend_initWithRenderer_size_attributes_outputURL_(v19, v20, v16, attributes, l, width, height);
  objc_msgSend_setDelegate_(v21, v22, delegate, v23);
  objc_msgSend_setUserInfo_(v21, v24, info, v25);
  objc_msgSend_setDidEndSelector_(v21, v26, selector, v27);
  return v21;
}

- (id)snapshotWithSize:(CGSize)size pointOfView:(id)view
{
  height = size.height;
  width = size.width;
  v8 = objc_msgSend_rendererWithDevice_options_(VFXRenderer, a2, 0, 0);
  objc_msgSend_setWorld_(v8, v9, self, v10);
  objc_msgSend_setJitteringEnabled_(v8, v11, 0, v12);
  objc_msgSend_setAutoenablesDefaultLighting_(v8, v13, 1, v14);
  objc_msgSend_setAutoAdjustCamera_(v8, v15, 1, v16);
  if (view)
  {
    objc_msgSend_setPointOfView_(v8, v17, view, v19);
  }

  objc_msgSend_flush(VFXTransaction, v17, v18, v19);

  return objc_msgSend_snapshotWithSize_(v8, v20, v21, v22, width, height);
}

- (void)_sendSignalWithIdentifier:(id)identifier delay:(float)delay
{
  v6 = sub_1AFDFCEF8();
  v8 = v7;
  selfCopy = self;
  sub_1AF9B026C(v6, v8, delay);
}

- (NSArray)bridgedComponentNames
{
  v2 = sub_1AFDFD3F8();

  return v2;
}

- (BOOL)migrateCoreEntityManagerWithInfo:(id)info error:(id *)error
{
  infoCopy = info;
  selfCopy = self;
  sub_1AFCDBFE0(infoCopy);

  return 1;
}

- (BOOL)initializeCoreEntityManagerWithInfo:(id)info error:(id *)error
{
  infoCopy = info;
  selfCopy = self;
  sub_1AFCDC2AC(infoCopy);

  return 1;
}

@end