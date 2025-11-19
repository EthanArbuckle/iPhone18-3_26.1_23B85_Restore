void PXApplicationAudioSessionSetCategory(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __PXApplicationAudioSessionSetCategory_block_invoke;
  v5[3] = &unk_279A29198;
  v6 = v3;
  v7 = a1;
  v4 = v3;
  PXApplicationRequestAVAudioSessionController(v5);
}

void PXApplicationRequestAVAudioSessionController(void *a1)
{
  v1 = a1;
  if (PXApplicationRequestAVAudioSessionController_onceToken != -1)
  {
    dispatch_once(&PXApplicationRequestAVAudioSessionController_onceToken, &__block_literal_global_124);
  }

  v2 = PXApplicationRequestAVAudioSessionController_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __PXApplicationRequestAVAudioSessionController_block_invoke_2;
  block[3] = &unk_279A29148;
  v5 = v1;
  v3 = v1;
  dispatch_async(v2, block);
}

void __PXApplicationRequestAVAudioSessionController_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("PXApplicationAVAudioSessionController", v2);
  v1 = PXApplicationRequestAVAudioSessionController_queue;
  PXApplicationRequestAVAudioSessionController_queue = v0;
}

void __PXApplicationRequestAVAudioSessionController_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[PXSystemAVAudioSessionController applicationAVAudioSessionController];
  (*(v1 + 16))(v1, v2);
}

void sub_25E662998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __PXApplicationAudioSessionSetCategory_block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __PXApplicationAudioSessionSetCategory_block_invoke_2;
  v4[3] = &unk_279A29170;
  v3 = *(a1 + 40);
  v5 = *(a1 + 32);
  [a2 applyCategory:v3 completion:v4];
}

void __PXApplicationAudioSessionSetCategory_block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_error_impl(&dword_25E661000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Photos was unable to configure the shared audio session category. Unintentional interruption of other audio sources may occur. Error: %@", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t PXAVAudioSessionCategory.description.getter(unint64_t a1)
{
  v1 = PXAVAudioSessionCategoryDescription(a1);
  v2 = sub_25E664448();

  return v2;
}

unint64_t sub_25E662D70()
{
  result = qword_27FCFF9E0;
  if (!qword_27FCFF9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCFF9E8, &qword_25E664C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCFF9E0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void type metadata accessor for PXAVAudioSessionCategory()
{
  if (!qword_27FCFF9F0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FCFF9F0);
    }
  }
}

__CFString *PXAVAudioSessionCategoryDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"??";
  }

  else
  {
    return off_279A29008[a1];
  }
}

void sub_25E6630AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}