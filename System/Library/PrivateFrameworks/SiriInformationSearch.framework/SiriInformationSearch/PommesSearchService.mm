@interface PommesSearchService
- (void)invalidateWithCachedResponse:(id)response;
- (void)searchInfiEntityWithRequest:(_TtC21SiriInformationSearch22PommesSearchRequestXPC *)request completionHandler:(id)handler;
- (void)searchToolGlobalSearchWithRequest:(_TtC21SiriInformationSearch26SearchToolGlobalRequestXPC *)request completionHandler:(id)handler;
@end

@implementation PommesSearchService

- (void)searchInfiEntityWithRequest:(_TtC21SiriInformationSearch22PommesSearchRequestXPC *)request completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = request;
  v13[3] = v12;
  v13[4] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &async function pointer to partial apply for @objc closure #1 in PommesSearchService.searchInfiEntity(request:);
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &_sIeghH_IeAgH_TRTA_54Tu;
  v16[5] = v15;
  requestCopy = request;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v11, &_sIeAgH_ytIeAgHr_TRTA_59Tu, v16);
}

- (void)invalidateWithCachedResponse:(id)response
{
  responseCopy = response;

  PommesSearchService.invalidate(cachedResponse:)(responseCopy);
}

- (void)searchToolGlobalSearchWithRequest:(_TtC21SiriInformationSearch26SearchToolGlobalRequestXPC *)request completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = request;
  v13[3] = v12;
  v13[4] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &async function pointer to partial apply for @objc closure #1 in PommesSearchService.searchToolGlobalSearch(request:);
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &_sIeghH_IeAgH_TRTATu;
  v16[5] = v15;
  requestCopy = request;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v11, &_sIeAgH_ytIeAgHr_TRTATu, v16);
}

@end