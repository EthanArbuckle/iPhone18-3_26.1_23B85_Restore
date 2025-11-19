@interface REEngineDefaultsClass
@end

@implementation REEngineDefaultsClass

void __get_REEngineDefaultsClass_block_invoke(uint64_t a1)
{
  if (!RelevanceEngineLibraryCore_0())
  {
    v2 = abort_report_np();
    free(v2);
  }

  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_REEngineDefaults");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_REEngineDefaultsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __get_REEngineDefaultsClass_block_invoke_cold_1();
    OUTLINED_FUNCTION_0_6();
  }
}

void __get_REEngineDefaultsClass_block_invoke_0(uint64_t a1)
{
  if (!RelevanceEngineLibraryCore_1())
  {
    v2 = abort_report_np();
    free(v2);
  }

  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_REEngineDefaults");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_REEngineDefaultsClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __get_REEngineDefaultsClass_block_invoke_cold_1();
    OUTLINED_FUNCTION_1_3();
  }
}

Class __get_REEngineDefaultsClass_block_invoke_1(uint64_t a1)
{
  if (!RelevanceEngineLibraryCore_2())
  {
    v3 = abort_report_np();
    free(v3);
  }

  result = objc_getClass("_REEngineDefaults");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_REEngineDefaultsClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v4 = __get_REEngineDefaultsClass_block_invoke_cold_1();
    return OUTLINED_FUNCTION_4_1(v4, v5);
  }

  return result;
}

Class __get_REEngineDefaultsClass_block_invoke_2(uint64_t a1)
{
  if (!RelevanceEngineLibraryCore_3())
  {
    v3 = abort_report_np();
    free(v3);
  }

  result = objc_getClass("_REEngineDefaults");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_REEngineDefaultsClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __get_REEngineDefaultsClass_block_invoke_cold_1();
    return RESampleFeature();
  }

  return result;
}

Class __get_REEngineDefaultsClass_block_invoke_3(uint64_t a1)
{
  if (!RelevanceEngineLibraryCore_4())
  {
    v3 = abort_report_np();
    free(v3);
  }

  result = objc_getClass("_REEngineDefaults");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_REEngineDefaultsClass_softClass_3 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v4 = __get_REEngineDefaultsClass_block_invoke_cold_1();
    return __REGetDisableMLModel_block_invoke(v4);
  }

  return result;
}

@end