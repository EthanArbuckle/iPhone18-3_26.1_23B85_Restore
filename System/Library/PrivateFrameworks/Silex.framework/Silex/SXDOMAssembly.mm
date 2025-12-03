@interface SXDOMAssembly
- (void)loadInRegistry:(id)registry;
@end

@implementation SXDOMAssembly

- (void)loadInRegistry:(id)registry
{
  registryCopy = registry;
  publicContainer = [registryCopy publicContainer];
  v5 = [publicContainer registerProtocol:&unk_1F53BE580 factory:&__block_literal_global_4];

  publicContainer2 = [registryCopy publicContainer];
  v7 = [publicContainer2 registerClass:objc_opt_class() factory:&__block_literal_global_76];

  publicContainer3 = [registryCopy publicContainer];
  v9 = [publicContainer3 registerProtocol:&unk_1F53D5B58 factory:&__block_literal_global_86];

  publicContainer4 = [registryCopy publicContainer];
  v11 = [publicContainer4 registerProtocol:&unk_1F53D5AE0 factory:&__block_literal_global_93];

  publicContainer5 = [registryCopy publicContainer];
  v13 = [publicContainer5 registerProtocol:&unk_1F53D5BB8 factory:&__block_literal_global_97];

  publicContainer6 = [registryCopy publicContainer];
  v15 = [publicContainer6 registerProtocol:&unk_1F53E7F88 factory:&__block_literal_global_105];

  publicContainer7 = [registryCopy publicContainer];
  v17 = [publicContainer7 registerClass:objc_opt_class() factory:&__block_literal_global_109];

  publicContainer8 = [registryCopy publicContainer];
  v19 = [publicContainer8 registerProtocol:&unk_1F53D5A80 factory:&__block_literal_global_117];

  privateContainer = [registryCopy privateContainer];
  v21 = [privateContainer registerClass:objc_opt_class() factory:&__block_literal_global_120];

  privateContainer2 = [registryCopy privateContainer];
  v23 = [privateContainer2 registerProtocol:&unk_1F540E9E0 factory:&__block_literal_global_126];

  publicContainer9 = [registryCopy publicContainer];
  v25 = [publicContainer9 registerProtocol:&unk_1F53E5E68 factory:&__block_literal_global_130];

  callback = [registryCopy callback];
  v27 = TFCallbackScopeAny();
  [callback whenResolvingProtocol:&unk_1F53AC020 scope:v27 callbackBlock:&__block_literal_global_160];

  privateContainer3 = [registryCopy privateContainer];
  v29 = [privateContainer3 registerClass:objc_opt_class() factory:&__block_literal_global_164];
  v30 = [v29 withConfiguration:&__block_literal_global_173_0];

  publicContainer10 = [registryCopy publicContainer];
  v32 = [publicContainer10 registerClass:objc_opt_class() factory:&__block_literal_global_188];

  privateContainer4 = [registryCopy privateContainer];
  v34 = [privateContainer4 registerProtocol:&unk_1F53E7308 factory:&__block_literal_global_229];

  privateContainer5 = [registryCopy privateContainer];
  v36 = [privateContainer5 registerProtocol:&unk_1F53A0DE8 factory:&__block_literal_global_238];

  privateContainer6 = [registryCopy privateContainer];
  v38 = [privateContainer6 registerClass:objc_opt_class() factory:&__block_literal_global_242_0];

  privateContainer7 = [registryCopy privateContainer];
  v40 = [privateContainer7 registerClass:objc_opt_class() factory:&__block_literal_global_245];

  privateContainer8 = [registryCopy privateContainer];
  v42 = [privateContainer8 registerClass:objc_opt_class() factory:&__block_literal_global_248];

  privateContainer9 = [registryCopy privateContainer];
  v44 = [privateContainer9 registerClass:objc_opt_class() factory:&__block_literal_global_251];

  privateContainer10 = [registryCopy privateContainer];
  v46 = [privateContainer10 registerClass:objc_opt_class() factory:&__block_literal_global_254];

  privateContainer11 = [registryCopy privateContainer];
  v48 = [privateContainer11 registerClass:objc_opt_class() factory:&__block_literal_global_257];

  privateContainer12 = [registryCopy privateContainer];
  v50 = [privateContainer12 registerClass:objc_opt_class() factory:&__block_literal_global_261];

  privateContainer13 = [registryCopy privateContainer];
  v52 = [privateContainer13 registerProtocol:&unk_1F53BA830 factory:&__block_literal_global_263];

  privateContainer14 = [registryCopy privateContainer];
  v54 = [privateContainer14 registerClass:objc_opt_class() factory:&__block_literal_global_266];

  privateContainer15 = [registryCopy privateContainer];
  v56 = [privateContainer15 registerClass:objc_opt_class() factory:&__block_literal_global_269];

  privateContainer16 = [registryCopy privateContainer];
  v58 = [privateContainer16 registerClass:objc_opt_class() factory:&__block_literal_global_316];

  privateContainer17 = [registryCopy privateContainer];
  v60 = [privateContainer17 registerClass:objc_opt_class() factory:&__block_literal_global_318];

  privateContainer18 = [registryCopy privateContainer];
  v62 = [privateContainer18 registerClass:objc_opt_class() factory:&__block_literal_global_320];

  privateContainer19 = [registryCopy privateContainer];
  v64 = [privateContainer19 registerClass:objc_opt_class() name:@"ComponentStyle" factory:&__block_literal_global_323];

  privateContainer20 = [registryCopy privateContainer];
  v66 = [privateContainer20 registerClass:objc_opt_class() name:@"ComponentTextStyle" factory:&__block_literal_global_332];

  privateContainer21 = [registryCopy privateContainer];
  v68 = [privateContainer21 registerClass:objc_opt_class() name:@"TextStyle" factory:&__block_literal_global_338];

  privateContainer22 = [registryCopy privateContainer];
  v70 = [privateContainer22 registerClass:objc_opt_class() name:@"Component" factory:&__block_literal_global_344];

  privateContainer23 = [registryCopy privateContainer];
  v72 = [privateContainer23 registerClass:objc_opt_class() name:@"ComponentLayout" factory:&__block_literal_global_350];

  privateContainer24 = [registryCopy privateContainer];
  v74 = [privateContainer24 registerClass:objc_opt_class() name:@"AdvertisementAutoPlacement" factory:&__block_literal_global_356];

  privateContainer25 = [registryCopy privateContainer];
  v76 = [privateContainer25 registerClass:objc_opt_class() name:@"SuggestedArticlesAutoPlacement" factory:&__block_literal_global_362];

  privateContainer26 = [registryCopy privateContainer];
  v78 = [privateContainer26 registerClass:objc_opt_class() name:@"DocumentStyle" factory:&__block_literal_global_368];

  privateContainer27 = [registryCopy privateContainer];
  v80 = [privateContainer27 registerClass:objc_opt_class() name:@"Component" factory:&__block_literal_global_375];

  privateContainer28 = [registryCopy privateContainer];
  v82 = [privateContainer28 registerClass:objc_opt_class() name:@"TextStyle" factory:&__block_literal_global_380];

  privateContainer29 = [registryCopy privateContainer];
  v84 = [privateContainer29 registerClass:objc_opt_class() name:@"ComponentTextStyle" factory:&__block_literal_global_382];

  privateContainer30 = [registryCopy privateContainer];
  v86 = [privateContainer30 registerClass:objc_opt_class() name:@"ComponentLayout" factory:&__block_literal_global_384_0];

  privateContainer31 = [registryCopy privateContainer];
  v88 = [privateContainer31 registerClass:objc_opt_class() name:@"ComponentStyle" factory:&__block_literal_global_386];

  privateContainer32 = [registryCopy privateContainer];
  v90 = [privateContainer32 registerClass:objc_opt_class() name:@"AdvertisementAutoPlacement" factory:&__block_literal_global_388];

  privateContainer33 = [registryCopy privateContainer];
  v92 = [privateContainer33 registerClass:objc_opt_class() name:@"SuggestedArticlesAutoPlacement" factory:&__block_literal_global_390];

  privateContainer34 = [registryCopy privateContainer];
  v94 = [privateContainer34 registerClass:objc_opt_class() name:@"DocumentStyle" factory:&__block_literal_global_392];

  callback2 = [registryCopy callback];
  v96 = objc_opt_class();
  v97 = TFCallbackScopeAny();
  [callback2 whenResolvingClass:v96 scope:v97 callbackBlock:&__block_literal_global_396];

  publicContainer11 = [registryCopy publicContainer];
  v99 = [publicContainer11 registerProtocol:&unk_1F540FF20 factory:&__block_literal_global_421];

  privateContainer35 = [registryCopy privateContainer];
  v101 = [privateContainer35 registerClass:objc_opt_class() factory:&__block_literal_global_424];

  publicContainer12 = [registryCopy publicContainer];
  v103 = [publicContainer12 registerProtocol:&unk_1F538E720 factory:&__block_literal_global_427];

  privateContainer36 = [registryCopy privateContainer];
  v105 = [privateContainer36 registerProtocol:&unk_1F53C6D40 factory:&__block_literal_global_430];

  privateContainer37 = [registryCopy privateContainer];
  v107 = [privateContainer37 registerClass:objc_opt_class() factory:&__block_literal_global_434];

  privateContainer38 = [registryCopy privateContainer];
  v109 = [privateContainer38 registerClass:objc_opt_class() factory:&__block_literal_global_437];

  privateContainer39 = [registryCopy privateContainer];
  v111 = [privateContainer39 registerClass:objc_opt_class() factory:&__block_literal_global_440];

  privateContainer40 = [registryCopy privateContainer];
  v113 = [privateContainer40 registerClass:objc_opt_class() factory:&__block_literal_global_443];

  privateContainer41 = [registryCopy privateContainer];
  v115 = [privateContainer41 registerClass:objc_opt_class() factory:&__block_literal_global_446];

  privateContainer42 = [registryCopy privateContainer];
  v117 = [privateContainer42 registerClass:objc_opt_class() factory:&__block_literal_global_449];

  privateContainer43 = [registryCopy privateContainer];
  v119 = [privateContainer43 registerClass:objc_opt_class() factory:&__block_literal_global_452];

  privateContainer44 = [registryCopy privateContainer];
  v121 = [privateContainer44 registerClass:objc_opt_class() factory:&__block_literal_global_455];

  privateContainer45 = [registryCopy privateContainer];
  v123 = [privateContainer45 registerClass:objc_opt_class() factory:&__block_literal_global_458];

  privateContainer46 = [registryCopy privateContainer];
  v125 = [privateContainer46 registerClass:objc_opt_class() factory:&__block_literal_global_461];

  privateContainer47 = [registryCopy privateContainer];
  v127 = [privateContainer47 registerClass:objc_opt_class() factory:&__block_literal_global_464];

  privateContainer48 = [registryCopy privateContainer];
  v129 = [privateContainer48 registerClass:objc_opt_class() factory:&__block_literal_global_467];

  privateContainer49 = [registryCopy privateContainer];
  v131 = [privateContainer49 registerClass:objc_opt_class() factory:&__block_literal_global_470];

  privateContainer50 = [registryCopy privateContainer];
  v133 = [privateContainer50 registerClass:objc_opt_class() factory:&__block_literal_global_473];

  privateContainer51 = [registryCopy privateContainer];
  v135 = [privateContainer51 registerClass:objc_opt_class() factory:&__block_literal_global_475];

  privateContainer52 = [registryCopy privateContainer];
  v137 = [privateContainer52 registerClass:objc_opt_class() factory:&__block_literal_global_477];

  privateContainer53 = [registryCopy privateContainer];
  v139 = [privateContainer53 registerClass:objc_opt_class() factory:&__block_literal_global_479];

  privateContainer54 = [registryCopy privateContainer];
  v141 = [privateContainer54 registerClass:objc_opt_class() factory:&__block_literal_global_481];

  privateContainer55 = [registryCopy privateContainer];
  v143 = [privateContainer55 registerClass:objc_opt_class() factory:&__block_literal_global_483];

  privateContainer56 = [registryCopy privateContainer];
  v145 = [privateContainer56 registerClass:objc_opt_class() factory:&__block_literal_global_487];

  publicContainer13 = [registryCopy publicContainer];
  v147 = [publicContainer13 registerClass:objc_opt_class() factory:&__block_literal_global_489];

  privateContainer57 = [registryCopy privateContainer];
  v149 = [privateContainer57 registerProtocol:&unk_1F53FBEF8 factory:&__block_literal_global_491];
  v150 = [v149 withConfiguration:&__block_literal_global_495];

  publicContainer14 = [registryCopy publicContainer];
  v152 = [publicContainer14 registerProtocol:&unk_1F53E0D50 factory:&__block_literal_global_500];

  privateContainer58 = [registryCopy privateContainer];
  v154 = [privateContainer58 registerClass:objc_opt_class() factory:&__block_literal_global_503];

  privateContainer59 = [registryCopy privateContainer];
  v156 = [privateContainer59 registerProtocol:&unk_1F5429A20 factory:&__block_literal_global_505];

  privateContainer60 = [registryCopy privateContainer];
  v158 = [privateContainer60 registerClass:objc_opt_class() factory:&__block_literal_global_508];

  privateContainer61 = [registryCopy privateContainer];

  v159 = [privateContainer61 registerClass:objc_opt_class() factory:&__block_literal_global_510];
}

id __32__SXDOMAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

id __32__SXDOMAssembly_loadInRegistry___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 resolveProtocol:&unk_1F53E5E68];
  v3 = [v2 createDOMObjectProvider];

  return v3;
}

id __32__SXDOMAssembly_loadInRegistry___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

id __32__SXDOMAssembly_loadInRegistry___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

id __32__SXDOMAssembly_loadInRegistry___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

id __32__SXDOMAssembly_loadInRegistry___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

SXDocumentProvider *__32__SXDOMAssembly_loadInRegistry___block_invoke_7()
{
  v0 = objc_alloc_init(SXDocumentProvider);

  return v0;
}

id __32__SXDOMAssembly_loadInRegistry___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

SXDocumentMetadataProvider *__32__SXDOMAssembly_loadInRegistry___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXDocumentMetadataProvider alloc];
  v4 = [v2 resolveProtocol:&unk_1F53E7F88];

  v5 = [(SXDocumentMetadataProvider *)v3 initWithDocumentProvider:v4];

  return v5;
}

SXDOMFactory *__32__SXDOMAssembly_loadInRegistry___block_invoke_10(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXDOMFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53E7F88];

  v5 = [(SXDOMFactory *)v3 initWithDocumentProvider:v4];

  return v5;
}

SXDOMObjectProviderFactory *__32__SXDOMAssembly_loadInRegistry___block_invoke_11(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXDOMObjectProviderFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F5417968];
  v5 = [v2 resolveClass:objc_opt_class() name:@"ComponentStyle"];
  v6 = [v2 resolveClass:objc_opt_class() name:@"ComponentTextStyle"];

  v7 = [(SXDOMObjectProviderFactory *)v3 initWithDocumentControllerProvider:v4 componentStyleMerger:v5 componentTextStyleMerger:v6];

  return v7;
}

void __32__SXDOMAssembly_loadInRegistry___block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];

  [v5 addProcessor:v6 type:0];
}

SXDOMModifierManager *__32__SXDOMAssembly_loadInRegistry___block_invoke_13(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXDOMModifierManager alloc];
  v4 = [v2 resolveProtocol:&unk_1F540E9E0];
  v5 = [v2 resolveProtocol:&unk_1F53A0DE8];
  v6 = [v2 resolveProtocol:&unk_1F53BA830];

  v7 = [(SXDOMModifierManager *)v3 initWithDOMFactory:v4 contextFactory:v5 cacheKeyFactory:v6];

  return v7;
}

void __32__SXDOMAssembly_loadInRegistry___block_invoke_14(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 resolveClass:objc_opt_class()];
  [v4 addModifier:v6];

  v7 = [v5 resolveClass:objc_opt_class()];
  [v4 addModifier:v7];

  v8 = [v5 resolveClass:objc_opt_class()];
  [v4 addModifier:v8];

  v9 = [v5 resolveClass:objc_opt_class()];
  [v4 addModifier:v9];

  v10 = [v5 resolveClass:objc_opt_class()];
  [v4 addModifier:v10];

  v11 = [v5 resolveClass:objc_opt_class()];
  [v4 addModifier:v11];

  v12 = [v5 resolveClass:objc_opt_class()];
  [v4 addModifier:v12];

  v13 = [v5 resolveClass:objc_opt_class()];
  [v4 addModifier:v13];

  v14 = [v5 resolveClass:objc_opt_class()];
  [v4 addModifier:v14];

  v15 = [v5 resolveClass:objc_opt_class()];
  [v4 addModifier:v15];

  v16 = [v5 resolveClass:objc_opt_class()];
  [v4 addModifier:v16];

  v17 = [v5 resolveClass:objc_opt_class()];

  [v4 addModifier:v17];
}

SXDOMConditionResolverModifier *__32__SXDOMAssembly_loadInRegistry___block_invoke_15(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXDOMConditionResolverModifier alloc];
  v4 = [v2 resolveProtocol:&unk_1F53C6D40];
  v5 = [v2 resolveClass:objc_opt_class() name:@"Component"];
  v6 = [v2 resolveClass:objc_opt_class() name:@"TextStyle"];
  v7 = [v2 resolveClass:objc_opt_class() name:@"ComponentStyle"];
  v15 = [v2 resolveClass:objc_opt_class() name:@"ComponentLayout"];
  v14 = [v2 resolveClass:objc_opt_class() name:@"ComponentTextStyle"];
  v8 = [v2 resolveClass:objc_opt_class() name:@"AdvertisementAutoPlacement"];
  v9 = [v2 resolveClass:objc_opt_class() name:@"SuggestedArticlesAutoPlacement"];
  v10 = [v2 resolveClass:objc_opt_class() name:@"DocumentStyle"];
  v11 = [v2 resolveProtocol:&unk_1F53E7308];

  v13 = [(SXDOMConditionResolverModifier *)v3 initWithValidationContextFactory:v4 componentResolver:v5 textStyleResolver:v6 componentStyleResolver:v7 componentLayoutResolver:v15 componentTextStyleResolver:v14 advertisementAutoPlacementResolver:v8 suggestedArticlesAutoPlacementResolver:v9 documentStyleResolver:v10 instructions:v11];

  return v13;
}

SXConditionalResolverModifierInstructions *__32__SXDOMAssembly_loadInRegistry___block_invoke_16(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXConditionalResolverModifierInstructions alloc];
  v4 = [v2 resolveProtocol:&unk_1F53E7F88];
  v5 = [v2 resolveProtocol:&unk_1F5416848];

  v6 = [(SXConditionalResolverModifierInstructions *)v3 initWithDocumentProvider:v4 hintsConfigurationOptionProvider:v5];

  return v6;
}

SXDOMModificationContextFactory *__32__SXDOMAssembly_loadInRegistry___block_invoke_17(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXDOMModificationContextFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53E7F88];

  v5 = [(SXDOMModificationContextFactory *)v3 initWithDocumentProvider:v4];

  return v5;
}

SXContentDisplayContainerModifier *__32__SXDOMAssembly_loadInRegistry___block_invoke_18()
{
  v0 = objc_alloc_init(SXContentDisplayContainerModifier);

  return v0;
}

SXHiddenComponentRemovalModifier *__32__SXDOMAssembly_loadInRegistry___block_invoke_19()
{
  v0 = objc_alloc_init(SXHiddenComponentRemovalModifier);

  return v0;
}

SXAdComponentRemovalModifier *__32__SXDOMAssembly_loadInRegistry___block_invoke_20()
{
  v0 = objc_alloc_init(SXAdComponentRemovalModifier);

  return v0;
}

SXComponentLayoutParentWidthModifier *__32__SXDOMAssembly_loadInRegistry___block_invoke_21()
{
  v0 = objc_alloc_init(SXComponentLayoutParentWidthModifier);

  return v0;
}

SXDefaultComponentTextStyleModifier *__32__SXDOMAssembly_loadInRegistry___block_invoke_22()
{
  v0 = objc_alloc_init(SXDefaultComponentTextStyleModifier);

  return v0;
}

SXDefaultButtonComponentTextStyleModifier *__32__SXDOMAssembly_loadInRegistry___block_invoke_23()
{
  v0 = objc_alloc_init(SXDefaultButtonComponentTextStyleModifier);

  return v0;
}

SXColumnVisualizerModifier *__32__SXDOMAssembly_loadInRegistry___block_invoke_24()
{
  v0 = objc_alloc_init(SXColumnVisualizerModifier);

  return v0;
}

SXDOMCacheKeyFactory *__32__SXDOMAssembly_loadInRegistry___block_invoke_25(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXDOMCacheKeyFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53E7F88];
  v5 = [v2 resolveProtocol:&unk_1F5416848];

  v6 = [(SXDOMCacheKeyFactory *)v3 initWithDocumentProvider:v4 hintsConfigurationOptionProvider:v5];

  return v6;
}

SXLineBalancingComponentTextStyleModifier *__32__SXDOMAssembly_loadInRegistry___block_invoke_26(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXLineBalancingComponentTextStyleModifier alloc];
  v4 = [v2 resolveClass:objc_opt_class()];

  v5 = [(SXLineBalancingComponentTextStyleModifier *)v3 initWithSettings:v4];

  return v5;
}

SXDarkModeModifier *__32__SXDOMAssembly_loadInRegistry___block_invoke_27(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXDarkModeModifier alloc];
  v4 = [v2 resolveProtocol:&unk_1F53FBEF8];
  v5 = [v2 resolveProtocol:&unk_1F53E0D50];
  v6 = [v2 resolveProtocol:&unk_1F5429A20];

  v7 = [(SXDarkModeModifier *)v3 initWithPolicyHandler:v4 configuration:v5 namespacedObjectFactory:v6];

  return v7;
}

SXDOMAnalyzerModifier *__32__SXDOMAssembly_loadInRegistry___block_invoke_28()
{
  v0 = objc_alloc_init(SXDOMAnalyzerModifier);

  return v0;
}

SXGradientFillToBackgroundColorModifier *__32__SXDOMAssembly_loadInRegistry___block_invoke_29()
{
  v0 = objc_alloc_init(SXGradientFillToBackgroundColorModifier);

  return v0;
}

SXAccessibilityHyphenationModifier *__32__SXDOMAssembly_loadInRegistry___block_invoke_30()
{
  v0 = objc_alloc_init(SXAccessibilityHyphenationModifier);

  return v0;
}

SXJSONObjectMerger *__32__SXDOMAssembly_loadInRegistry___block_invoke_31()
{
  v0 = [[SXJSONObjectMerger alloc] initWithObjectClass:objc_opt_class() exclusionKeys:&unk_1F538A538];

  return v0;
}

SXJSONObjectMerger *__32__SXDOMAssembly_loadInRegistry___block_invoke_32()
{
  v0 = [[SXJSONObjectMerger alloc] initWithObjectClass:objc_opt_class() exclusionKeys:&unk_1F538A550];

  return v0;
}

SXJSONObjectMerger *__32__SXDOMAssembly_loadInRegistry___block_invoke_33()
{
  v0 = [[SXJSONObjectMerger alloc] initWithObjectClass:objc_opt_class() exclusionKeys:&unk_1F538A568];

  return v0;
}

SXJSONObjectMerger *__32__SXDOMAssembly_loadInRegistry___block_invoke_34(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXJSONObjectMerger alloc];
  v4 = [v2 resolveClass:objc_opt_class()];

  v5 = [(SXJSONObjectMerger *)v3 initWithClassProvider:v4 exclusionKeys:&unk_1F538A580];

  return v5;
}

SXJSONObjectMerger *__32__SXDOMAssembly_loadInRegistry___block_invoke_35()
{
  v0 = [[SXJSONObjectMerger alloc] initWithObjectClass:objc_opt_class() exclusionKeys:&unk_1F538A598];

  return v0;
}

SXJSONObjectMerger *__32__SXDOMAssembly_loadInRegistry___block_invoke_36()
{
  v0 = [[SXJSONObjectMerger alloc] initWithObjectClass:objc_opt_class() exclusionKeys:&unk_1F538A5B0];

  return v0;
}

SXJSONObjectMerger *__32__SXDOMAssembly_loadInRegistry___block_invoke_37()
{
  v0 = [[SXJSONObjectMerger alloc] initWithObjectClass:objc_opt_class() exclusionKeys:&unk_1F538A5C8];

  return v0;
}

SXJSONObjectMerger *__32__SXDOMAssembly_loadInRegistry___block_invoke_38()
{
  v0 = [[SXJSONObjectMerger alloc] initWithObjectClass:objc_opt_class() exclusionKeys:&unk_1F538A5E0];

  return v0;
}

SXConditionalObjectResolver *__32__SXDOMAssembly_loadInRegistry___block_invoke_39(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXConditionalObjectResolver alloc];
  v4 = [v2 resolveProtocol:&unk_1F538E720];
  v5 = [v2 resolveClass:objc_opt_class() name:@"Component"];

  v6 = [(SXConditionalObjectResolver *)v3 initWithConditionValidator:v4 objectMerger:v5];

  return v6;
}

SXConditionalObjectResolver *__32__SXDOMAssembly_loadInRegistry___block_invoke_40(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXConditionalObjectResolver alloc];
  v4 = [v2 resolveProtocol:&unk_1F538E720];
  v5 = [v2 resolveClass:objc_opt_class() name:@"TextStyle"];

  v6 = [(SXConditionalObjectResolver *)v3 initWithConditionValidator:v4 objectMerger:v5];

  return v6;
}

SXConditionalObjectResolver *__32__SXDOMAssembly_loadInRegistry___block_invoke_41(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXConditionalObjectResolver alloc];
  v4 = [v2 resolveProtocol:&unk_1F538E720];
  v5 = [v2 resolveClass:objc_opt_class() name:@"ComponentTextStyle"];

  v6 = [(SXConditionalObjectResolver *)v3 initWithConditionValidator:v4 objectMerger:v5];

  return v6;
}

SXConditionalObjectResolver *__32__SXDOMAssembly_loadInRegistry___block_invoke_42(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXConditionalObjectResolver alloc];
  v4 = [v2 resolveProtocol:&unk_1F538E720];
  v5 = [v2 resolveClass:objc_opt_class() name:@"ComponentLayout"];

  v6 = [(SXConditionalObjectResolver *)v3 initWithConditionValidator:v4 objectMerger:v5];

  return v6;
}

SXConditionalObjectResolver *__32__SXDOMAssembly_loadInRegistry___block_invoke_43(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXConditionalObjectResolver alloc];
  v4 = [v2 resolveProtocol:&unk_1F538E720];
  v5 = [v2 resolveClass:objc_opt_class() name:@"ComponentStyle"];

  v6 = [(SXConditionalObjectResolver *)v3 initWithConditionValidator:v4 objectMerger:v5];

  return v6;
}

SXConditionalObjectResolver *__32__SXDOMAssembly_loadInRegistry___block_invoke_44(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXConditionalObjectResolver alloc];
  v4 = [v2 resolveProtocol:&unk_1F538E720];
  v5 = [v2 resolveClass:objc_opt_class() name:@"AdvertisementAutoPlacement"];

  v6 = [(SXConditionalObjectResolver *)v3 initWithConditionValidator:v4 objectMerger:v5];

  return v6;
}

SXConditionalObjectResolver *__32__SXDOMAssembly_loadInRegistry___block_invoke_45(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXConditionalObjectResolver alloc];
  v4 = [v2 resolveProtocol:&unk_1F538E720];
  v5 = [v2 resolveClass:objc_opt_class() name:@"SuggestedArticlesAutoPlacement"];

  v6 = [(SXConditionalObjectResolver *)v3 initWithConditionValidator:v4 objectMerger:v5];

  return v6;
}

SXConditionalObjectResolver *__32__SXDOMAssembly_loadInRegistry___block_invoke_46(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXConditionalObjectResolver alloc];
  v4 = [v2 resolveProtocol:&unk_1F538E720];
  v5 = [v2 resolveClass:objc_opt_class() name:@"DocumentStyle"];

  v6 = [(SXConditionalObjectResolver *)v3 initWithConditionValidator:v4 objectMerger:v5];

  return v6;
}

void __32__SXDOMAssembly_loadInRegistry___block_invoke_47(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];
  [v5 addConditionValidator:v6];

  v7 = [v4 resolveClass:objc_opt_class()];
  [v5 addConditionValidator:v7];

  v8 = [v4 resolveClass:objc_opt_class()];
  [v5 addConditionValidator:v8];

  v9 = [v4 resolveClass:objc_opt_class()];
  [v5 addConditionValidator:v9];

  v10 = [v4 resolveClass:objc_opt_class()];
  [v5 addConditionValidator:v10];

  v11 = [v4 resolveClass:objc_opt_class()];
  [v5 addConditionValidator:v11];

  v12 = [v4 resolveClass:objc_opt_class()];
  [v5 addConditionValidator:v12];

  v13 = [v4 resolveClass:objc_opt_class()];
  [v5 addConditionValidator:v13];

  v14 = [v4 resolveClass:objc_opt_class()];
  [v5 addConditionValidator:v14];

  v15 = [v4 resolveClass:objc_opt_class()];
  [v5 addConditionValidator:v15];

  v16 = [v4 resolveClass:objc_opt_class()];
  [v5 addConditionValidator:v16];

  v17 = [v4 resolveClass:objc_opt_class()];
  [v5 addConditionValidator:v17];

  v18 = [v4 resolveClass:objc_opt_class()];
  [v5 addConditionValidator:v18];

  v19 = [v4 resolveClass:objc_opt_class()];
  [v5 addConditionValidator:v19];

  v20 = [v4 resolveClass:objc_opt_class()];
  [v5 addConditionValidator:v20];

  v21 = [v4 resolveClass:objc_opt_class()];
  [v5 addConditionValidator:v21];

  v22 = [v4 resolveClass:objc_opt_class()];
  [v5 addConditionValidator:v22];

  v23 = [v4 resolveClass:objc_opt_class()];
  [v5 addConditionValidator:v23];

  v24 = [v4 resolveClass:objc_opt_class()];

  [v5 addConditionValidator:v24];
}

id __32__SXDOMAssembly_loadInRegistry___block_invoke_48(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

SXConditionValidatorManager *__32__SXDOMAssembly_loadInRegistry___block_invoke_49()
{
  v0 = objc_alloc_init(SXConditionValidatorManager);

  return v0;
}

id __32__SXDOMAssembly_loadInRegistry___block_invoke_50(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

SXConditionValidationContextFactory *__32__SXDOMAssembly_loadInRegistry___block_invoke_51()
{
  v0 = objc_alloc_init(SXConditionValidationContextFactory);

  return v0;
}

SXPlatformConditionValidator *__32__SXDOMAssembly_loadInRegistry___block_invoke_52()
{
  v0 = [[SXPlatformConditionValidator alloc] initWithPlatform:@"ios"];

  return v0;
}

SXSpecVersionConditionValidator *__32__SXDOMAssembly_loadInRegistry___block_invoke_53()
{
  v0 = [[SXSpecVersionConditionValidator alloc] initWithSpecVersion:@"1.30"];

  return v0;
}

SXViewportConditionValidator *__32__SXDOMAssembly_loadInRegistry___block_invoke_54()
{
  v0 = objc_alloc_init(SXViewportConditionValidator);

  return v0;
}

SXSizeClassConditionValidator *__32__SXDOMAssembly_loadInRegistry___block_invoke_55()
{
  v0 = objc_alloc_init(SXSizeClassConditionValidator);

  return v0;
}

SXColumnConditionValidator *__32__SXDOMAssembly_loadInRegistry___block_invoke_56()
{
  v0 = objc_alloc_init(SXColumnConditionValidator);

  return v0;
}

SXContentSizeCategoryValidator *__32__SXDOMAssembly_loadInRegistry___block_invoke_57()
{
  v0 = objc_alloc_init(SXContentSizeCategoryValidator);

  return v0;
}

SXSubscriptionStatusConditionValidator *__32__SXDOMAssembly_loadInRegistry___block_invoke_58()
{
  v0 = objc_alloc_init(SXSubscriptionStatusConditionValidator);

  return v0;
}

SXSubscriptionActivationEligibilityConditionValidator *__32__SXDOMAssembly_loadInRegistry___block_invoke_59()
{
  v0 = objc_alloc_init(SXSubscriptionActivationEligibilityConditionValidator);

  return v0;
}

SXOfferIdentifierConditionValidator *__32__SXDOMAssembly_loadInRegistry___block_invoke_60()
{
  v0 = objc_alloc_init(SXOfferIdentifierConditionValidator);

  return v0;
}

SXOfferUpsellScenarioConditionValidator *__32__SXDOMAssembly_loadInRegistry___block_invoke_61()
{
  v0 = objc_alloc_init(SXOfferUpsellScenarioConditionValidator);

  return v0;
}

SXTestingConditionValidator *__32__SXDOMAssembly_loadInRegistry___block_invoke_62()
{
  v0 = objc_alloc_init(SXTestingConditionValidator);

  return v0;
}

SXViewLocationConditionValidator *__32__SXDOMAssembly_loadInRegistry___block_invoke_63()
{
  v0 = objc_alloc_init(SXViewLocationConditionValidator);

  return v0;
}

SXForwardCompatibleConditionValidator *__32__SXDOMAssembly_loadInRegistry___block_invoke_64()
{
  v0 = objc_alloc_init(SXForwardCompatibleConditionValidator);

  return v0;
}

SXPreferredColorSchemeConditionValidator *__32__SXDOMAssembly_loadInRegistry___block_invoke_65()
{
  v0 = objc_alloc_init(SXPreferredColorSchemeConditionValidator);

  return v0;
}

SXNewsletterConditionValidator *__32__SXDOMAssembly_loadInRegistry___block_invoke_66()
{
  v0 = objc_alloc_init(SXNewsletterConditionValidator);

  return v0;
}

SXFollowingConditionValidator *__32__SXDOMAssembly_loadInRegistry___block_invoke_67()
{
  v0 = objc_alloc_init(SXFollowingConditionValidator);

  return v0;
}

SXConfiguredConditionValidator *__32__SXDOMAssembly_loadInRegistry___block_invoke_68()
{
  v0 = objc_alloc_init(SXConfiguredConditionValidator);

  return v0;
}

SXAppConditionValidator *__32__SXDOMAssembly_loadInRegistry___block_invoke_69()
{
  v0 = objc_alloc_init(SXAppConditionValidator);

  return v0;
}

SXExperimentConditionValidator *__32__SXDOMAssembly_loadInRegistry___block_invoke_70(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXExperimentConditionValidator alloc];
  v4 = [v2 resolveProtocol:&unk_1F53E2F18];

  v5 = [(SXExperimentConditionValidator *)v3 initWithExperimentationManager:v4];

  return v5;
}

SXComponentMergerClassProvider *__32__SXDOMAssembly_loadInRegistry___block_invoke_71()
{
  v0 = objc_alloc_init(SXComponentMergerClassProvider);

  return v0;
}

SXLineBalancingSettings *__32__SXDOMAssembly_loadInRegistry___block_invoke_72()
{
  v0 = [[SXLineBalancingSettings alloc] initWithLineBalancingEnabled:0];

  return v0;
}

SXDarkModePolicyHandler *__32__SXDOMAssembly_loadInRegistry___block_invoke_73(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXDarkModePolicyHandler alloc];
  v4 = [v2 resolveProtocol:&unk_1F53E7F88];
  v5 = [v2 resolveProtocol:&unk_1F53E0D50];

  v6 = [(SXDarkModePolicyHandler *)v3 initWithDocumentProvider:v4 darkModeConfiguration:v5];

  return v6;
}

void __32__SXDOMAssembly_loadInRegistry___block_invoke_74(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 resolveClass:objc_opt_class()];
  [v4 addPolicyException:v6];

  v7 = [v5 resolveClass:objc_opt_class()];
  [v4 addPolicyException:v7];

  v8 = [v5 resolveClass:objc_opt_class()];

  [v4 addPolicyException:v8];
}

SXDarkModeConfiguration *__32__SXDOMAssembly_loadInRegistry___block_invoke_75()
{
  v0 = [[SXDarkModeConfiguration alloc] initWithAutoDarkModeEnabled:0 inversionBehavior:2 saturationThreshold:0 colors:1.0];

  return v0;
}

SXFullscreenCaptionDarkModePolicyException *__32__SXDOMAssembly_loadInRegistry___block_invoke_76()
{
  v0 = objc_alloc_init(SXFullscreenCaptionDarkModePolicyException);

  return v0;
}

SXNamespacedObjectFactory *__32__SXDOMAssembly_loadInRegistry___block_invoke_77()
{
  v0 = objc_alloc_init(SXNamespacedObjectFactory);

  return v0;
}

SXTextContrastDarkModePolicyException *__32__SXDOMAssembly_loadInRegistry___block_invoke_78(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXTextContrastDarkModePolicyException alloc];
  v4 = [v2 resolveClass:objc_opt_class() name:@"ComponentStyle"];
  v5 = [v2 resolveClass:objc_opt_class() name:@"ComponentTextStyle"];

  v6 = [(SXTextContrastDarkModePolicyException *)v3 initWithComponentStyleMerger:v4 componentTextStyleMerger:v5];

  return v6;
}

SXGradientFillDarkModePolicyException *__32__SXDOMAssembly_loadInRegistry___block_invoke_79()
{
  v0 = objc_alloc_init(SXGradientFillDarkModePolicyException);

  return v0;
}

@end