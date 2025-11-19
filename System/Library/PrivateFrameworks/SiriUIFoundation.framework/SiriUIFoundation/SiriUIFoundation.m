void SRUIFInvokeOnMainQueue(void *a1)
{
  v1 = a1;
  if (v1)
  {
    block = v1;
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      block[2]();
    }

    else
    {
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    v1 = block;
  }
}

id SRUIFConstructLaunchContextForLaunchStarted()
{
  v0 = objc_alloc_init(MEMORY[0x277D5AB78]);
  [v0 setExists:1];
  v1 = objc_alloc_init(MEMORY[0x277D5AB68]);
  [v1 setStartedOrChanged:v0];

  return v1;
}

void SRUIFSetLanguageCode(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (([v1 isEqualToString:__currentLanguageCode] & 1) == 0)
  {
    v2 = [v1 copy];
    v3 = __currentLanguageCode;
    __currentLanguageCode = v2;

    v4 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:__currentLanguageCode];
    v5 = __currentLocale;
    __currentLocale = v4;

    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "SRUIFSetLanguageCode";
      v11 = 2112;
      v12 = __currentLanguageCode;
      _os_log_impl(&dword_26951F000, v6, OS_LOG_TYPE_DEFAULT, "%s Updated language code: %@", &v9, 0x16u);
    }

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 postNotificationName:@"com.apple.siri.ui.foundation.LanguageCodeDidChangeNotification" object:0];
    [v7 postNotificationName:@"com.apple.siri.assistantUI.LanguageCodeDidChangeNotification" object:0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

__CFString *SRUIFSiriSessionStateGetDescription(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"SRUIFSiriSessionStateIdle";
  }

  else
  {
    return off_279C628C0[a1 - 1];
  }
}

__CFString *SRUIFSiriSessionEventGetDescription(uint64_t a1)
{
  if ((a1 - 1) > 0xF)
  {
    return @"SRUIFSiriSessionEventDirectRequestBegan";
  }

  else
  {
    return off_279C628E0[a1 - 1];
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_269523410(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2695234DC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2695235E8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2695234DC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_269524FE4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_269562DE0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2695235E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

__CFString *SRUIFSpeechSynthesisResultGetName(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"SRUIFSpeechSynthesisResultUnknown";
  }

  else
  {
    return off_279C62AD0[a1 - 1];
  }
}

void sub_269523F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v8 - 72));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_269524FE4(uint64_t a1, unint64_t a2)
{
  v4 = sub_26952518C(a1, a2);
  sub_2695252C0(&unk_287A10248);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

void *sub_269525030(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031C800, &qword_269567968);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_26952518C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_269525030(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_269562DE0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_269562BF0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_269525030(v10, 0);
        result = sub_269562DA0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2695252C0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_26955EBE8(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_269525918()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_269562BE0();
}

uint64_t sub_269525924()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_26952595C()
{
  MEMORY[0x26D640E40](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_269525994()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2695259D4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 80);

  v4 = *(v0 + 96);

  v5 = *(v0 + 112);

  if (*(v0 + 144))
  {
    v6 = *(v0 + 152);
  }

  v7 = *(v0 + 160);

  v8 = *(v0 + 168);

  return MEMORY[0x2821FE8E8](v0, 176, 7);
}

uint64_t sub_269525A5C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_269525A9C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 delegate];
  *a2 = result;
  return result;
}

id sub_269525AEC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 clientStateManagerDelegate];
  *a2 = result;
  return result;
}

id sub_269525B3C@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 audioSessionID];
  *a2 = result;
  return result;
}

uint64_t sub_269525B8C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_269525B9C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x1Cu);
}

void sub_269526730(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_269526880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2695269C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_269526B34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_269527128(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_269527384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2695275FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2695278E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2695285D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2695296C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_26952AC74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26952B188(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

id SRUIFStringForUserAttentionType(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"face"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"touch"];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  [v3 addObject:@"raise gesture"];
  if ((a1 & 8) != 0)
  {
LABEL_5:
    [v3 addObject:@"button press"];
  }

LABEL_6:
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = [v3 componentsJoinedByString:{@", "}];
  v6 = v5;
  v7 = &stru_287A10D80;
  if (a1 == 7)
  {
    v7 = @" (all)";
  }

  v8 = [v4 initWithFormat:@"[%@]%@", v5, v7];

  return v8;
}

__CFString *SRUIFStringForUserAttentionGainEvent(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"SRUIFUserAttentionGainEventUndefined";
  }

  else
  {
    return off_279C61B08[a1 - 1];
  }
}

__CFString *SRUIFStringForUserAttentionLossEvent(uint64_t a1)
{
  v1 = @"SRUIFUserAttentionLossEventUndefined";
  if (a1 == 1)
  {
    v1 = @"SRUIFUserAttentionLossEventFaceDetection";
  }

  if (a1 == 2)
  {
    return @"SRUIFUserAttentionLossEventLowerDeviceGesture";
  }

  else
  {
    return v1;
  }
}

void sub_26952BE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t SRUIFShouldInstrumentLaunchContextForAceCommand(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v3 = [v1 commands];
      v2 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v2)
      {
        v4 = *v10;
        while (2)
        {
          for (i = 0; i != v2; ++i)
          {
            if (*v10 != v4)
            {
              objc_enumerationMutation(v3);
            }

            v6 = *(*(&v9 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v2 = 1;
              goto LABEL_15;
            }
          }

          v2 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
          if (v2)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }

    else
    {
      v2 = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

id SRUIFConstructLaunchContextForLaunchEnded()
{
  v0 = objc_alloc_init(MEMORY[0x277D5AB70]);
  [v0 setExists:1];
  v1 = objc_alloc_init(MEMORY[0x277D5AB68]);
  [v1 setEnded:v0];

  return v1;
}

void SRUIFPopulateSendCommandWithInstrumentationTurn(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [v3 commands];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * v9);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v10 setTurnId:v4];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t SRUIFResponseModeToSISchemaResponseMode(void *a1)
{
  v1 = [a1 lowercaseString];
  v2 = v1;
  if (v1)
  {
    if ([v1 isEqualToString:@"displayonly"])
    {
      v3 = 4;
    }

    else if ([v2 isEqualToString:@"displayforward"])
    {
      v3 = 5;
    }

    else if ([v2 isEqualToString:@"voiceonly"])
    {
      v3 = 7;
    }

    else if ([v2 isEqualToString:@"voiceforward"])
    {
      v3 = 6;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void SRUIFInstrumentVoiceLaunchSignpost(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF0C8];
  v3 = a1;
  v4 = os_signpost_id_generate(v2);
  v5 = [v3 voiceTriggerEventInfo];

  v6 = [v5 objectForKey:@"triggerEndMachTime"];

  v7 = [v6 unsignedLongLongValue];
  *buf = 0;
  mach_get_times();
  v8 = v2;
  v9 = v8;
  if (v4 - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {

    v11 = v9;
  }

  else
  {
    if (os_signpost_enabled(v8))
    {
      *buf = 134349056;
      *&buf[4] = v7;
      _os_signpost_emit_with_name_impl(&dword_26951F000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v4, "voiceUILaunch", "%{public, signpost.description:begin_time}llu", buf, 0xCu);
    }

    v10 = v9;
    if (os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_26951F000, v10, OS_SIGNPOST_INTERVAL_END, v4, "voiceUILaunch", "", buf, 2u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void SRUIFInstrumentButtonLaunchSignpost(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF0C8];
  v3 = os_signpost_id_generate(v2);
  *buf = 0;
  mach_get_times();
  v4 = v2;
  v5 = v4;
  if (v3 - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {

    v7 = v5;
  }

  else
  {
    if (os_signpost_enabled(v4))
    {
      *buf = 134349056;
      *&buf[4] = a1;
      _os_signpost_emit_with_name_impl(&dword_26951F000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "buttonLaunch", "%{public, signpost.description:begin_time}llu", buf, 0xCu);
    }

    v6 = v5;
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_26951F000, v6, OS_SIGNPOST_INTERVAL_END, v3, "buttonLaunch", "", buf, 2u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void SRUIFInstrumentQuickTypeGestureLaunchSignpost(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF0C8];
  v3 = os_signpost_id_generate(v2);
  *buf = 0;
  mach_get_times();
  v4 = v2;
  v5 = v4;
  if (v3 - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {

    v7 = v5;
  }

  else
  {
    if (os_signpost_enabled(v4))
    {
      *buf = 134349056;
      *&buf[4] = a1;
      _os_signpost_emit_with_name_impl(&dword_26951F000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "quickTypeLaunch", "%{public, signpost.description:begin_time}llu", buf, 0xCu);
    }

    v6 = v5;
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_26951F000, v6, OS_SIGNPOST_INTERVAL_END, v3, "quickTypeLaunch", "", buf, 2u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void SRUIFInstrumentQuickTypeTamaleLaunchSignpost(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF0C8];
  v3 = os_signpost_id_generate(v2);
  *buf = 0;
  mach_get_times();
  v4 = v2;
  v5 = v4;
  if (v3 - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {

    v7 = v5;
  }

  else
  {
    if (os_signpost_enabled(v4))
    {
      *buf = 134349056;
      *&buf[4] = a1;
      _os_signpost_emit_with_name_impl(&dword_26951F000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "quickTypeTamaleLaunch", "%{public, signpost.description:begin_time}llu", buf, 0xCu);
    }

    v6 = v5;
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_26951F000, v6, OS_SIGNPOST_INTERVAL_END, v3, "quickTypeTamaleLaunch", "", buf, 2u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

os_signpost_id_t SRUIFInstrumentQuickTypeFaceDetectionPollingStartSignpost()
{
  v0 = *MEMORY[0x277CEF0C8];
  v1 = os_signpost_id_generate(v0);
  v2 = v0;
  v3 = v2;
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_26951F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v1, "quickTypeFaceDetectionPolling", "", v5, 2u);
  }

  return v1;
}

void SRUIFInstrumentQuickTypeFaceDetectionPollingEndSignpost(os_signpost_id_t a1)
{
  v2 = *MEMORY[0x277CEF0C8];
  v3 = v2;
  if (a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_26951F000, v3, OS_SIGNPOST_INTERVAL_END, a1, "quickTypeFaceDetectionPolling", "", v4, 2u);
  }
}

os_signpost_id_t SRUIFInstrumentQuickTypeFaceDetectionGateStartSignpost()
{
  v0 = *MEMORY[0x277CEF0C8];
  v1 = os_signpost_id_generate(v0);
  v2 = v0;
  v3 = v2;
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_26951F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v1, "quickTypeFaceDetectionGate", "", v5, 2u);
  }

  return v1;
}

void SRUIFInstrumentQuickTypeFaceDetectionGateEndSignpost(os_signpost_id_t a1)
{
  v2 = *MEMORY[0x277CEF0C8];
  v3 = v2;
  if (a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_26951F000, v3, OS_SIGNPOST_INTERVAL_END, a1, "quickTypeFaceDetectionGate", "", v4, 2u);
  }
}

void sub_26952D38C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_26952EFC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26952FCCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2695335F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 64));
  objc_destroyWeak((v25 + 56));
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v27 - 112));
  _Unwind_Resume(a1);
}

void sub_269533D30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_2695347FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, id a53, id a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, id a61, id a62)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak((v62 + 72));
  objc_destroyWeak((v62 + 64));
  objc_destroyWeak(&a54);
  objc_destroyWeak(&a53);
  objc_destroyWeak(&a62);
  objc_destroyWeak(&a61);
  objc_destroyWeak((v63 - 208));
  objc_destroyWeak((v63 - 200));
  _Unwind_Resume(a1);
}

void sub_269534C54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_26953548C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 184));
  objc_destroyWeak((v4 - 192));
  _Unwind_Resume(a1);
}

void sub_2695360B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2695366E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void sub_269537410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26953A07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26953A2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26953AAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26953AC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ASBDForSAUIAD(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = [v3 sampleRate];
  [v4 doubleValue];
  *a2 = v5;

  v6 = [v3 formatID];
  *(a2 + 8) = [v6 unsignedIntValue];

  v7 = [v3 formatFlags];
  *(a2 + 12) = [v7 unsignedIntValue];

  v8 = [v3 bytesPerPacket];
  *(a2 + 16) = [v8 unsignedIntValue];

  v9 = [v3 framesPerPacket];
  *(a2 + 20) = [v9 unsignedIntValue];

  v10 = [v3 bytesPerFrame];
  *(a2 + 24) = [v10 unsignedIntValue];

  v11 = [v3 channelsPerFrame];
  *(a2 + 28) = [v11 unsignedIntValue];

  v12 = [v3 bitsPerChannel];
  *(a2 + 32) = [v12 unsignedIntValue];

  v13 = [v3 reserved];

  *(a2 + 36) = [v13 unsignedIntValue];
}

void sub_26953D9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

id SRUIFFileURLForConversationWithIdentifier(void *a1)
{
  v1 = a1;
  v2 = CPSharedResourcesDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"Library"];
  v4 = [v3 stringByAppendingPathComponent:@"Assistant"];

  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4 isDirectory:1];

  v6 = [v5 URLByAppendingPathComponent:v1 isDirectory:0];

  return v6;
}

void sub_26953F158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26953F3A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_26953F704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t SRUIFMaxIntervalForDisplayingPreviousConversation()
{
  if (SRUIFMaxIntervalForDisplayingPreviousConversation_onceToken != -1)
  {
    SRUIFMaxIntervalForDisplayingPreviousConversation_cold_1();
  }

  return SRUIFMaxIntervalForDisplayingPreviousConversation_maxInterval;
}

void __SRUIFMaxIntervalForDisplayingPreviousConversation_block_invoke()
{
  v2 = [[SRUIFPreferences alloc] initWithSuiteName:@"com.apple.SiriViewService"];
  v0 = [(SRUIFPreferences *)v2 integerForKey:@"MaxIntervalForDisplayingPreviousConversation"];
  v1 = 30;
  if (v0 > 0)
  {
    v1 = v0;
  }

  if (v0 == -1)
  {
    v1 = -1;
  }

  SRUIFMaxIntervalForDisplayingPreviousConversation_maxInterval = v1;
}

void sub_2695424B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_2695434B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2695443F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2695460F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_269547904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FirstCharacterOfStringIsInCharacterSetInString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CCA900] alphanumericCharacterSet];
  v6 = [v3 rangeOfCharacterFromSet:v5];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL || (v7 = v6, [MEMORY[0x277CCA900] characterSetWithCharactersInString:v4], v8 = objc_claimAutoreleasedReturnValue(), v9 = 1, v10 = objc_msgSend(v3, "rangeOfCharacterFromSet:options:range:", v8, 1, v7, 1), v8, v10 != v7))
  {
    v9 = 0;
  }

  return v9;
}

void sub_26954917C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v32 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__94(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

id SpeechRequest.init(text:voice:promptStyle:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = sub_269562BA0();

  if (a5)
  {
    v10 = sub_269562BA0();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithText:v9 voice:a3 promptStyle:v10];

  return v11;
}

{
  v6 = sub_2695506FC(a1, a2, a3, a4, a5);

  return v6;
}

id sub_26955066C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = sub_269562BB0();
  v9 = v8;
  if (a5)
  {
    a5 = sub_269562BB0();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = a4;
  v13 = sub_2695506FC(v7, v9, v12, a5, v11);

  return v13;
}

id sub_2695506FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  swift_getObjectType();
  v10 = sub_269562BA0();

  v11 = [v6 initWithText:v10 voice:a3];

  if (a5)
  {
    v12 = *MEMORY[0x277D48DB8];
    if (sub_269562BB0() == a4 && v13 == a5)
    {
      goto LABEL_8;
    }

    v15 = sub_269562E30();

    if (v15)
    {
      goto LABEL_9;
    }

    v18 = *MEMORY[0x277D48DC0];
    if (sub_269562BB0() == a4 && v19 == a5)
    {
LABEL_8:
    }

    else
    {
      v21 = sub_269562E30();

      if ((v21 & 1) == 0)
      {
        v22 = *MEMORY[0x277D48DB0];
        if (sub_269562BB0() == a4 && v23 == a5)
        {
        }

        else
        {
          v24 = sub_269562E30();

          if ((v24 & 1) == 0)
          {
            goto LABEL_11;
          }
        }

LABEL_10:
        v16 = sub_269562A60();
        sub_269562A70();

LABEL_11:
        sub_269562A80();
        return v11;
      }
    }

LABEL_9:

    goto LABEL_10;
  }

  return v11;
}

uint64_t sub_269550920(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_269550940(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_26955097C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t SRUIFProtectedVariableWriteResponse.hashValue.getter()
{
  v1 = *v0;
  sub_269562E70();
  MEMORY[0x26D640340](v1);
  return sub_269562E90();
}

uint64_t sub_269550A6C()
{
  v1 = *v0;
  sub_269562E70();
  MEMORY[0x26D640340](v1);
  return sub_269562E90();
}

uint64_t sub_269550AE0()
{
  v1 = *v0;
  sub_269562E70();
  MEMORY[0x26D640340](v1);
  return sub_269562E90();
}

id SRUIFProtectedVariableCoordinator.__allocating_init(storageKey:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC16SiriUIFoundation33SRUIFProtectedVariableCoordinator_storageKey] = a1;
  v4 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  *&v3[OBJC_IVAR____TtC16SiriUIFoundation33SRUIFProtectedVariableCoordinator_authContext] = v4;
  v5 = [objc_allocWithZone(MEMORY[0x277CD47B8]) initWithDomain:0 authenticationContext:v4];
  *&v3[OBJC_IVAR____TtC16SiriUIFoundation33SRUIFProtectedVariableCoordinator_storage] = v5;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id SRUIFProtectedVariableCoordinator.init(storageKey:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC16SiriUIFoundation33SRUIFProtectedVariableCoordinator_storageKey] = a1;
  v2 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  *&v1[OBJC_IVAR____TtC16SiriUIFoundation33SRUIFProtectedVariableCoordinator_authContext] = v2;
  v3 = [objc_allocWithZone(MEMORY[0x277CD47B8]) initWithDomain:0 authenticationContext:v2];
  *&v1[OBJC_IVAR____TtC16SiriUIFoundation33SRUIFProtectedVariableCoordinator_storage] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SRUIFProtectedVariableCoordinator();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_269550CEC()
{
  v1 = v0[18];
  v2 = *(v1 + OBJC_IVAR____TtC16SiriUIFoundation33SRUIFProtectedVariableCoordinator_storage);
  v0[19] = v2;
  v3 = *(v1 + OBJC_IVAR____TtC16SiriUIFoundation33SRUIFProtectedVariableCoordinator_storageKey);
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_269550E30;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C4D0, &qword_2695672C0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_269551068;
  v0[13] = &block_descriptor;
  v0[14] = v4;
  [v2 BOOLForKey:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_269550E30()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_269550FAC;
  }

  else
  {
    v3 = sub_269550F40;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_269550F40()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_269550FAC()
{
  v1 = v0[19];
  v2 = v0[20];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[20];

  return v3(0);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_269551068(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C508, &unk_269567980);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

id sub_269551198(char a1)
{
  v26[14] = *MEMORY[0x277D85DE8];
  if (qword_28031C488 != -1)
  {
    swift_once();
  }

  v3 = sub_269562AD0();
  __swift_project_value_buffer(v3, qword_28031CF30);
  v4 = sub_269562AC0();
  v5 = sub_269562CA0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = a1 & 1;
    _os_log_impl(&dword_26951F000, v4, v5, "Setting %{BOOL}d", v6, 8u);
    MEMORY[0x26D640DD0](v6, -1, -1);
  }

  v7 = *(v1 + OBJC_IVAR____TtC16SiriUIFoundation33SRUIFProtectedVariableCoordinator_storage);
  v8 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v9 = v7;
  v10 = [v8 initWithBool_];
  v11 = *(v1 + OBJC_IVAR____TtC16SiriUIFoundation33SRUIFProtectedVariableCoordinator_storageKey);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C4D8, &qword_2695672C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2695672A0;
  sub_269562D90();
  *(inited + 96) = MEMORY[0x277D839B0];
  *(inited + 72) = 1;
  sub_2695525B0(inited);
  swift_setDeallocating();
  sub_2695526CC(inited + 32, &qword_28031C4E0, &unk_2695672D0);
  v13 = sub_269562B70();

  v26[0] = 0;
  v14 = [v9 setObject:v10 forKey:v11 withOptions:v13 error:v26];

  if (v14)
  {
    result = v26[0];
  }

  else
  {
    v16 = v26[0];
    v17 = sub_269562A20();

    swift_willThrow();
    v18 = v17;
    v19 = sub_269562AC0();
    v20 = sub_269562CA0();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = v17;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_26951F000, v19, v20, "Set response %@", v21, 0xCu);
      sub_2695526CC(v22, &qword_28031C4E8, &unk_2695675B0);
      MEMORY[0x26D640DD0](v22, -1, -1);
      MEMORY[0x26D640DD0](v21, -1, -1);
    }

    result = swift_willThrow();
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_269551538()
{
  if (qword_28031C488 != -1)
  {
    swift_once();
  }

  v1 = sub_269562AD0();
  v0[19] = __swift_project_value_buffer(v1, qword_28031CF30);
  v2 = sub_269562AC0();
  v3 = sub_269562CA0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26951F000, v2, v3, "Resetting", v4, 2u);
    MEMORY[0x26D640DD0](v4, -1, -1);
  }

  v5 = v0[18];

  v6 = *(v5 + OBJC_IVAR____TtC16SiriUIFoundation33SRUIFProtectedVariableCoordinator_storage);
  v0[20] = v6;
  v7 = *(v5 + OBJC_IVAR____TtC16SiriUIFoundation33SRUIFProtectedVariableCoordinator_storageKey);
  v0[2] = v0;
  v0[3] = sub_269551728;
  v8 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C4F0, &qword_2695672E8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_269551A0C;
  v0[13] = &block_descriptor_4;
  v0[14] = v8;
  [v6 removeObjectForKey:v7 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_269551728()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_26955189C;
  }

  else
  {
    v3 = sub_269551838;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_269551838()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26955189C()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  swift_willThrow();

  v4 = sub_269562C90();
  v5 = v1;
  v6 = sub_269562AC0();

  v7 = os_log_type_enabled(v6, v4);
  v8 = v0[21];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_26951F000, v6, v4, "%@", v9, 0xCu);
    sub_2695526CC(v10, &qword_28031C4E8, &unk_2695675B0);
    MEMORY[0x26D640DD0](v10, -1, -1);
    MEMORY[0x26D640DD0](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_269551A0C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C508, &unk_269567980);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

void sub_269551AB8(void *a1)
{
  if ([a1 code] == 5)
  {
    v2 = *(v1 + OBJC_IVAR____TtC16SiriUIFoundation33SRUIFProtectedVariableCoordinator_storage);
    v3 = sub_269562A10();
    v5[4] = sub_269551BA8;
    v5[5] = 0;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_269551D58;
    v5[3] = &block_descriptor_7;
    v4 = _Block_copy(v5);
    [v2 processError:v3 completionHandler:v4];
    _Block_release(v4);
  }
}

void sub_269551BA8(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_28031C488 != -1)
    {
      swift_once();
    }

    v3 = sub_269562AD0();
    __swift_project_value_buffer(v3, qword_28031CF30);
    v4 = sub_269562C90();
    v5 = a1;
    oslog = sub_269562AC0();

    if (os_log_type_enabled(oslog, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = a1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_26951F000, oslog, v4, "%@", v6, 0xCu);
      sub_2695526CC(v7, &qword_28031C4E8, &unk_2695675B0);
      MEMORY[0x26D640DD0](v7, -1, -1);
      MEMORY[0x26D640DD0](v6, -1, -1);

      v10 = oslog;
    }

    else
    {

      v10 = a1;
    }
  }
}

void sub_269551D58(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id SRUIFProtectedVariableCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SRUIFProtectedVariableCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SRUIFProtectedVariableCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_269551EF4()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v2 = result;
    exclaveCapability = MobileGestalt_get_exclaveCapability();

    v4 = *(v0 + 8);

    return v4(exclaveCapability);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_269551F98()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_269552028;

  return sub_269550CCC();
}

uint64_t sub_269552028(char a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_269552130()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2695521C0;

  return sub_269551518();
}

uint64_t sub_2695521C0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2695522D8()
{
  v0 = sub_269562AD0();
  __swift_allocate_value_buffer(v0, qword_28031CF30);
  __swift_project_value_buffer(v0, qword_28031CF30);
  sub_269553564();
  sub_269562D20();
  return sub_269562AE0();
}

unint64_t sub_269552378(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_269562D70();

  return sub_269552430(a1, v5);
}

unint64_t sub_2695523BC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_269562E70();
  sub_269562BE0();
  v6 = sub_269562E90();
  return sub_2695524F8(a1, a2, v6);
}

unint64_t sub_269552430(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_269553450(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x26D640240](v9, a1);
      sub_2695534AC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2695524F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_269562E30())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2695525B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C510, &unk_269567490);
    v3 = sub_269562E20();
    v4 = a1 + 32;

    while (1)
    {
      sub_2695533D0(v4, v13);
      result = sub_269552378(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_269553440(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2695526CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_269552748()
{
  result = qword_28031C4F8;
  if (!qword_28031C4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031C4F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SRUIFProtectedVariableWriteResponse(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SRUIFProtectedVariableWriteResponse(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of SRUIFProtectedVariableCoordinating.deviceSupportsProtectedValue()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_269552A28;

  return v9(a1, a2);
}

uint64_t sub_269552A28(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of SRUIFProtectedVariableCoordinating.protectedValue()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2695535B8;

  return v9(a1, a2);
}

uint64_t dispatch thunk of SRUIFProtectedVariableCoordinating.reset()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2695535C0;

  return v9(a1, a2);
}

uint64_t dispatch thunk of SRUIFProtectedVariableCoordinator.protectedValue()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xA0);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_269552EDC;

  return v6();
}

uint64_t sub_269552EDC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of SRUIFProtectedVariableCoordinator.reset()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xB0);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2695521C0;

  return v6();
}

unint64_t sub_269553174(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031C820, &unk_269567480);
    v3 = sub_269562E20();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2695523BC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_269553278(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C500, &qword_269567970);
    v3 = sub_269562E20();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2695523BC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2695533D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C4E0, &unk_2695672D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_269553440(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_269553564()
{
  result = qword_280D00238;
  if (!qword_280D00238)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D00238);
  }

  return result;
}

uint64_t sub_2695535C8()
{
  v0 = sub_269562AD0();
  __swift_allocate_value_buffer(v0, qword_280D002B0);
  __swift_project_value_buffer(v0, qword_280D002B0);
  sub_269553564();
  sub_269562D20();
  return sub_269562AE0();
}

uint64_t sub_26955365C()
{
  v0 = sub_269562AD0();
  __swift_allocate_value_buffer(v0, qword_28031CF48);
  __swift_project_value_buffer(v0, qword_28031CF48);
  sub_269553564();
  sub_269562D20();
  return sub_269562AE0();
}

uint64_t ResponseCoordinationMarkAnnotation.markName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

BOOL static ResponseCoordinationMarkAnnotation.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_269562E30();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

BOOL sub_269553780(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_269562E30();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2695537F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_269553838(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_2695538BC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C540, &qword_269567598);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C548, &unk_2695675A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_269553A04(uint64_t a1, unint64_t a2, int a3)
{
  v66 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C518, &qword_269567540);
  v70 = *(v5 - 8);
  v6 = v70[8];
  v7 = MEMORY[0x28223BE20](v5);
  v65 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v59 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C520, &qword_269567548);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v59 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C528, &qword_269567550);
  sub_269562A90();
  *&v75 = a1;
  *(&v75 + 1) = a2;
  v63 = a2;
  sub_269554178();
  sub_2695541CC();
  v16 = sub_269562B90();
  (*(v12 + 8))(v15, v11);
  v18 = *(v16 + 16);
  if (v18)
  {
    v67 = a1;
    v19 = 0;
    v71 = 0;
    v69 = v70[2];
    v20 = (*(v70 + 80) + 32) & ~*(v70 + 80);
    v59[1] = v16;
    v21 = v16 + v20;
    v64 = v70[9];
    v68 = (v70 + 1);
    v70 = MEMORY[0x277D84F90];
    v22 = 15;
    *&v17 = 136315138;
    v60 = v17;
    v23 = v63;
    v69(v10, v16 + v20, v5);
    while (1)
    {
      v16 = v10;
      if (sub_269562AB0() >> 14 < v22 >> 14)
      {
        __break(1u);
        goto LABEL_43;
      }

      v28 = sub_269562C00();
      if ((v28 ^ v29) >= 0x4000)
      {
        v30 = MEMORY[0x26D640090]();
        v32 = v31;

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v33 = v70;
        }

        else
        {
          v33 = sub_2695538BC(0, v70[2] + 1, 1, v70);
        }

        v35 = v33[2];
        v34 = v33[3];
        if (v35 >= v34 >> 1)
        {
          v33 = sub_2695538BC((v34 > 1), v35 + 1, 1, v33);
        }

        v33[2] = v35 + 1;
        v70 = v33;
        v36 = &v33[5 * v35];
        v36[4] = v30;
        v36[5] = v32;
        v37 = v71;
        v36[6] = v19;
        v36[7] = v37;
        v36[8] = 0;
        v23 = v63;
      }

      else
      {
      }

      swift_getKeyPath();
      sub_269562AA0();

      v38 = v74;
      v39 = v65;
      if (v74)
      {
        break;
      }

      swift_getKeyPath();
      sub_269562AA0();

      v38 = v77;
      if (v77)
      {
        goto LABEL_4;
      }

      if (qword_280D00240 != -1)
      {
        swift_once();
      }

      v40 = sub_269562AD0();
      __swift_project_value_buffer(v40, qword_280D002B0);
      v69(v39, v10, v5);
      v41 = v39;
      v42 = sub_269562AC0();
      v43 = sub_269562C90();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *&v75 = v62;
        *v44 = v60;
        *&v72 = sub_269562AB0();
        v61 = sub_269562BC0();
        v46 = v45;
        (*v68)(v41, v5);
        v47 = sub_269523410(v61, v46, &v75);
        v23 = v63;

        *(v44 + 4) = v47;
        _os_log_impl(&dword_26951F000, v42, v43, "#response_coordination no name identifier for the parsed mark at index: %s, not adding annotation", v44, 0xCu);
        v48 = v62;
        __swift_destroy_boxed_opaque_existential_0(v62);
        MEMORY[0x26D640DD0](v48, -1, -1);
        MEMORY[0x26D640DD0](v44, -1, -1);
      }

      else
      {

        (*v68)(v41, v5);
      }

      v19 = 0;
      v71 = 0;
LABEL_5:
      v16 = v10;
      v26 = sub_269562AB0();
      if (v66)
      {
        v22 = v27;
      }

      else
      {
        v22 = v26;
      }

      (*v68)(v10, v5);
      v21 += v64;
      if (!--v18)
      {

        a1 = v67;
        goto LABEL_29;
      }

      v69(v10, v21, v5);
    }

    v75 = v72;
    v76 = v73;
LABEL_4:
    v19 = MEMORY[0x26D640090](v75, *(&v75 + 1), v76, v38);
    v25 = v24;

    v71 = v25;
    goto LABEL_5;
  }

  v19 = 0;
  v71 = 0;
  v70 = MEMORY[0x277D84F90];
  v22 = 15;
  v23 = v63;
LABEL_29:
  v49 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v49 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v49 < v22 >> 14)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    v53 = sub_2695538BC(0, v70[2] + 1, 1, v70);
    goto LABEL_38;
  }

  v50 = sub_269562C00();
  if ((v50 ^ v51) >> 14)
  {
    v22 = MEMORY[0x26D640090]();
    v16 = v52;
  }

  else
  {

    if (!v71)
    {
      return v70;
    }

    v22 = 0;
    v16 = 0;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_44;
  }

  v53 = v70;
LABEL_38:
  v55 = v53[2];
  v54 = v53[3];
  if (v55 >= v54 >> 1)
  {
    v53 = sub_2695538BC((v54 > 1), v55 + 1, 1, v53);
  }

  v56 = v71;

  result = v53;
  v53[2] = v55 + 1;
  v58 = &v53[5 * v55];
  v58[4] = v22;
  v58[5] = v16;
  v58[6] = v19;
  v58[7] = v56;
  v58[8] = 0;
  return result;
}

unint64_t sub_269554178()
{
  result = qword_28031C530;
  if (!qword_28031C530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031C530);
  }

  return result;
}

unint64_t sub_2695541CC()
{
  result = qword_28031C538;
  if (!qword_28031C538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28031C520, &qword_269567548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031C538);
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

void *sub_269554278@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

id sub_2695542F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentLatencyProgress);
  v2 = (v0 + OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentLatencySummary);
  v3 = *(v0 + OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentLatencySummary + 8);
  v5 = *(v0 + OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentTaskIdentifier);
  v4 = *(v0 + OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentTaskIdentifier + 8);
  if (!v3)
  {

    v7 = 0;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v6 = *v2;

  v7 = sub_269562BA0();

  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_269562BA0();

LABEL_6:
  v9 = [objc_allocWithZone(SRUIFLatencyInformation) initWithLatencySummary:v7 taskIdentifier:v8 shouldShow:v1 >= 0.6];

  return v9;
}

uint64_t sub_26955443C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentTaskIdentifier);
  v6 = *(v2 + OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentTaskIdentifier + 8);
  if (!v6 || (*v5 == a1 ? (v7 = v6 == a2) : (v7 = 0), !v7 && (sub_269562E30() & 1) == 0))
  {
    v8 = (v2 + OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentLatencySummary);
    v9 = *(v2 + OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentLatencySummary + 8);
    *v8 = 0;
    v8[1] = 0;

    *(v2 + OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentLatencySummaryType) = 0;
    *(v2 + OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentLatencyProgress) = 0;
  }

  v10 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

void sub_26955455C(void *a1)
{
  v3 = sub_269562A00();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 progress];
  if (v8 > 0.0)
  {
    [a1 progress];
    *&v1[OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentLatencyProgress] = v9;
    v10 = [a1 progressDescription];
    if (v10)
    {
      v11 = v1;
      v12 = v10;
      v13 = sub_269562BB0();
      v15 = v14;

      v29[0] = v13;
      v29[1] = v15;
      sub_2695629F0();
      sub_269554AAC();
      v16 = sub_269562D40();
      v18 = v17;
      (*(v4 + 8))(v7, v3);

      v19 = HIBYTE(v18) & 0xF;
      if ((v18 & 0x2000000000000000) == 0)
      {
        v19 = v16 & 0xFFFFFFFFFFFFLL;
      }

      if (v19)
      {
        v1 = v11;
        v20 = &v11[OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentLatencySummary];
        v21 = *&v11[OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentLatencySummary + 8];
        *v20 = v16;
        v20[1] = v18;

        v11[OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentLatencySummaryType] = 1;
      }

      else
      {

        v1 = v11;
      }
    }

    if (qword_28031C498 != -1)
    {
      swift_once();
    }

    v22 = sub_269562AD0();
    __swift_project_value_buffer(v22, qword_28031CF60);
    v23 = v1;
    v24 = sub_269562AC0();
    v25 = sub_269562CA0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = sub_2695542F4();
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&dword_26951F000, v24, v25, "Processsing latency progress update: %@", v26, 0xCu);
      sub_269554A44(v27);
      MEMORY[0x26D640DD0](v27, -1, -1);
      MEMORY[0x26D640DD0](v26, -1, -1);
    }
  }
}

id SRUIFLatencyStateManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SRUIFLatencyStateManager.init()()
{
  v1 = &v0[OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentTaskIdentifier];
  *v1 = 0;
  v1[1] = 0;
  v2 = &v0[OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentLatencySummary];
  *v2 = 0;
  v2[1] = 0;
  *&v0[OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentLatencyProgress] = 0;
  v0[OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentLatencySummaryType] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for SRUIFLatencyStateManager();
  return objc_msgSendSuper2(&v4, sel_init);
}

id SRUIFLatencyStateManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SRUIFLatencyStateManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2695549AC()
{
  v0 = sub_269562AD0();
  __swift_allocate_value_buffer(v0, qword_28031CF60);
  __swift_project_value_buffer(v0, qword_28031CF60);
  sub_269553564();
  sub_269562D20();
  return sub_269562AE0();
}

uint64_t sub_269554A44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C4E8, &unk_2695675B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_269554AAC()
{
  result = qword_28031C570;
  if (!qword_28031C570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031C570);
  }

  return result;
}

unint64_t sub_269554BC4()
{
  result = qword_28031C578;
  if (!qword_28031C578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031C578);
  }

  return result;
}

uint64_t withCheckedThrowingCancellingContinuation<A>(isolation:function:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  if (a2)
  {
    swift_getObjectType();
    v9 = sub_269562C20();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v8[10] = v9;
  v8[11] = v11;

  return MEMORY[0x2822009F8](sub_269554CBC, v9, v11);
}

uint64_t sub_269554CBC()
{
  v20 = v0;
  v1 = *(v0 + 72);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C508, &unk_269567980);
  v18 = *(v0 + 56);
  SafeSingleCheckedContinuation.init()(v6, v19);
  v7 = v19[0];
  v8 = v19[1];
  *(v0 + 96) = v19[0];
  *(v0 + 104) = v8;
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *(v9 + 16) = v1;
  *(v9 + 24) = v5;
  *(v9 + 32) = v4;
  *(v9 + 40) = v3;
  *(v9 + 48) = v2;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  *(v9 + 72) = v18;
  v10 = swift_task_alloc();
  *(v0 + 120) = v10;
  v10[2] = v1;
  v10[3] = v3;
  v10[4] = v2;
  v10[5] = v7;
  v10[6] = v8;
  v11 = *(MEMORY[0x277D85A10] + 4);
  v12 = swift_task_alloc();
  *(v0 + 128) = v12;
  *v12 = v0;
  v12[1] = sub_269554E38;
  v13 = *(v0 + 72);
  v14 = *(v0 + 24);
  v15 = *(v0 + 32);
  v16 = *(v0 + 16);

  return MEMORY[0x282200830](v16, &unk_269567708, v9, sub_269555BC8, v10, v14, v15, v13);
}

uint64_t sub_269554E38()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v10 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = v2[10];
    v5 = v2[11];
    v6 = sub_269554FC8;
  }

  else
  {
    v8 = v2[14];
    v7 = v2[15];

    v4 = v2[10];
    v5 = v2[11];
    v6 = sub_269554F5C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_269554F5C()
{
  v1 = v0[12];
  v2 = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t sub_269554FC8()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];

  v5 = v0[1];
  v6 = v0[17];

  return v5();
}

uint64_t SafeSingleCheckedContinuation.init()@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v25 = a2;
  v3 = sub_269562C50();
  v4 = sub_269562D30();
  v24 = sub_269562D30();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = (MEMORY[0x28223BE20])();
  v10 = &v24 - v9;
  v11 = *(v24 - 8);
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x28223BE20](v8);
  v15 = &v24 - v14;
  v16 = *(v4 - 8);
  v17 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13);
  v19 = &v24 - v18;
  (*(*(v3 - 8) + 56))(&v24 - v18, 1, 1, v3);
  (*(*(a1 - 8) + 56))(v15, 1, 1, a1);
  v20 = *(TupleTypeMetadata2 + 48);
  (*(v16 + 32))(v10, v19, v4);
  (*(v11 + 32))(&v10[v20], v15, v24);
  v21 = sub_269556DC8();
  (*(v6 + 8))(v10, TupleTypeMetadata2);
  v22 = v25;
  *v25 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_28031C580, &qword_269567710);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 1;
  v22[1] = result;
  return result;
}

uint64_t sub_269555338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v14;
  v8[11] = v15;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  if (a2)
  {
    swift_getObjectType();
    v9 = sub_269562C20();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v8[12] = v9;
  v8[13] = v11;

  return MEMORY[0x2822009F8](sub_2695553E4, v9, v11);
}

uint64_t sub_2695553E4()
{
  v1 = *(v0 + 88);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  v3 = *(v0 + 56);
  v4 = *(v0 + 72);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  *(v2 + 40) = v4;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  *v6 = v0;
  v6[1] = sub_2695554C8;
  v7 = *(v0 + 88);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  v10 = *(v0 + 24);
  v11 = *(v0 + 32);
  v12 = *(v0 + 16);

  return MEMORY[0x2822008A0](v12, v10, v11, v8, v9, sub_2695570A4, v2, v7);
}

uint64_t sub_2695554C8()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  v3[16] = v0;

  if (v0)
  {
    v4 = v3[12];
    v5 = v3[13];

    return MEMORY[0x2822009F8](sub_269555600, v4, v5);
  }

  else
  {
    v6 = v3[14];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_269555600()
{
  v1 = v0[14];

  v2 = v0[1];
  v3 = v0[16];

  return v2();
}

uint64_t sub_269555664(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_2695521C0;

  return sub_269555338(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_269555754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *), uint64_t a5)
{
  v17 = a5;
  v18 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28031C508, &unk_269567980);
  v8 = sub_269562C50();
  v9 = sub_269562D30();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  v19 = a2;
  v20 = a3;
  v14 = *(v8 - 8);
  (*(v14 + 16))(&v17 - v12, a1, v8);
  (*(v14 + 56))(v13, 0, 1, v8);
  v15 = type metadata accessor for SafeSingleCheckedContinuation();
  SafeSingleCheckedContinuation.setContinuation(_:)(v13, v15);
  (*(v10 + 8))(v13, v9);
  v19 = a2;
  v20 = a3;
  return v18(&v19);
}

void SafeSingleCheckedContinuation.setContinuation(_:)(uint64_t a1, void *a2)
{
  v3 = *v2;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  sub_269562C50();
  sub_269562D30();
  sub_269562D30();
  v4 = *(*v3 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_269556E44(v3 + v4, &v9);
  os_unfair_lock_unlock((v3 + v5));
}

void sub_2695559E8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_28031C490 != -1)
  {
    swift_once();
  }

  v8 = sub_269562AD0();
  __swift_project_value_buffer(v8, qword_28031CF48);

  v9 = sub_269562AC0();
  v10 = sub_269562C80();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_269523410(a1, a2, v16);
    _os_log_impl(&dword_26951F000, v9, v10, "Detected Cancellation %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x26D640DD0](v12, -1, -1);
    MEMORY[0x26D640DD0](v11, -1, -1);
  }

  v16[0] = a3;
  v16[1] = a4;
  sub_269562C60();
  sub_26955704C();
  v13 = swift_allocError();
  sub_269562B60();
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28031C508, &unk_269567980);
  v14 = type metadata accessor for SafeSingleCheckedContinuation();
  SafeSingleCheckedContinuation.cancel(_:)(&v15, v14);
}

void SafeSingleCheckedContinuation.cancel(_:)(uint64_t a1, void *a2)
{
  v4 = *v2;
  v5 = v2[1];
  os_unfair_lock_lock((v5 + 20));
  if (*(v5 + 16))
  {
    *(v5 + 16) = 0;
    os_unfair_lock_unlock((v5 + 20));
    MEMORY[0x28223BE20](v6);
    v9 = a2[2];
    v10 = a2[3];
    v11 = a2[4];
    sub_269562C50();
    sub_269562D30();
    sub_269562D30();
    v7 = *(*v4 + *MEMORY[0x277D841D0] + 16);
    v8 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v4 + v8));
    sub_269556E64(v4 + v7);
    os_unfair_lock_unlock((v4 + v8));
  }

  else
  {

    os_unfair_lock_unlock((v5 + 20));
  }
}

uint64_t SafeSingleCheckedContinuation.init(continuation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v28 = a3;
  v29 = a1;
  v4 = sub_269562C50();
  v5 = sub_269562D30();
  v26 = sub_269562D30();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v27 = *(TupleTypeMetadata2 - 8);
  v7 = *(v27 + 64);
  v8 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v10 = &v26 - v9;
  v11 = *(v26 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v8);
  v15 = &v26 - v14;
  v16 = *(v5 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = &v26 - v18;
  v20 = *(v4 - 8);
  (*(v20 + 16))(&v26 - v18, v29, v4);
  (*(v20 + 56))(v19, 0, 1, v4);
  (*(*(a2 - 8) + 56))(v15, 1, 1, a2);
  v21 = *(TupleTypeMetadata2 + 48);
  (*(v16 + 32))(v10, v19, v5);
  (*(v11 + 32))(&v10[v21], v15, v26);
  v22 = sub_269556DC8();
  (*(v27 + 8))(v10, TupleTypeMetadata2);
  v23 = v28;
  *v28 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_28031C580, &qword_269567710);
  v24 = swift_allocObject();
  *(v24 + 20) = 0;
  result = (*(v20 + 8))(v29, v4);
  *(v24 + 16) = 1;
  v23[1] = v24;
  return result;
}

uint64_t sub_26955604C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v31 = a2;
  v33 = a4;
  v30 = sub_269562C50();
  v6 = sub_269562D30();
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v6);
  v29 = &v28 - v8;
  v9 = sub_269562D30();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v28 - v13;
  v15 = *(a3 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v12);
  v28 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v28 - v19;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  (*(v10 + 16))(v14, a1 + *(TupleTypeMetadata2 + 48), v9);
  if ((*(v15 + 48))(v14, 1, a3) == 1)
  {
    (*(v10 + 8))(v14, v9);
    result = (*(v32 + 24))(a1, v31, v6);
LABEL_6:
    v27 = 0;
    goto LABEL_7;
  }

  (*(v15 + 32))(v20, v14, a3);
  v23 = v32;
  v24 = v29;
  (*(v32 + 16))(v29, v31, v6);
  v25 = v30;
  v26 = *(v30 - 8);
  if ((*(v26 + 48))(v24, 1, v30) != 1)
  {
    (*(v15 + 16))(v28, v20, a3);
    sub_269562C30();
    (*(v15 + 8))(v20, a3);
    result = (*(v26 + 8))(v24, v25);
    goto LABEL_6;
  }

  (*(v15 + 8))(v20, a3);
  result = (*(v23 + 8))(v24, v6);
  v27 = 1;
LABEL_7:
  *v33 = v27;
  return result;
}

void SafeSingleCheckedContinuation.resume(returning:)(uint64_t a1, void *a2)
{
  v4 = *v2;
  v5 = v2[1];
  os_unfair_lock_lock((v5 + 20));
  if (*(v5 + 16))
  {
    *(v5 + 16) = 0;
    os_unfair_lock_unlock((v5 + 20));
    MEMORY[0x28223BE20](v6);
    v9 = a2[2];
    v10 = a2[3];
    v11 = a2[4];
    sub_269562C50();
    sub_269562D30();
    sub_269562D30();
    v7 = *(*v4 + *MEMORY[0x277D841D0] + 16);
    v8 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v4 + v8));
    sub_269556E84(v4 + v7);
    os_unfair_lock_unlock((v4 + v8));
  }

  else
  {

    os_unfair_lock_unlock((v5 + 20));
  }
}

uint64_t sub_269556568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_269562C50();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v17 - v13;
  if (!(*(v11 + 48))(a1, 1, v10))
  {
    (*(v11 + 16))(v14, a1, v10);
    (*(v6 + 16))(v9, a2, a3);
    sub_269562C40();
    (*(v11 + 8))(v14, v10);
  }

  v15 = sub_269562D30();
  (*(*(v15 - 8) + 8))(a1, v15);
  return (*(v11 + 56))(a1, 1, 1, v10);
}

void SafeSingleCheckedContinuation.resume(throwing:caller:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *v4;
  v7 = v4[1];
  os_unfair_lock_lock((v7 + 20));
  if (*(v7 + 16))
  {
    *(v7 + 16) = 0;
    os_unfair_lock_unlock((v7 + 20));
    MEMORY[0x28223BE20](v8);
    v11 = a4[2];
    v12 = a4[3];
    v13 = a4[4];
    sub_269562C50();
    sub_269562D30();
    sub_269562D30();
    v9 = *(*v6 + *MEMORY[0x277D841D0] + 16);
    v10 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v6 + v10));
    sub_269556EA4(v6 + v9);
    os_unfair_lock_unlock((v6 + v10));
  }

  else
  {

    os_unfair_lock_unlock((v7 + 20));
  }
}

uint64_t sub_2695568D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_269562C50();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v18 - v14;
  if (!(*(v12 + 48))(a1, 1, v11))
  {
    (*(v12 + 16))(v15, a1, v11);
    (*(v7 + 16))(v10, a2, a4);
    sub_269562C30();
    (*(v12 + 8))(v15, v11);
  }

  v16 = sub_269562D30();
  (*(*(v16 - 8) + 8))(a1, v16);
  return (*(v12 + 56))(a1, 1, 1, v11);
}

uint64_t sub_269556AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_269562C50();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v20 - v14;
  if (!(*(v12 + 48))(a1, 1, v11))
  {
    (*(v12 + 16))(v15, a1, v11);
    (*(v7 + 16))(v10, a2, a4);
    sub_269562C30();
    (*(v12 + 8))(v15, v11);
  }

  v16 = sub_269562D30();
  (*(*(v16 - 8) + 8))(a1, v16);
  (*(v12 + 56))(a1, 1, 1, v11);
  v17 = sub_269562D30();
  v18 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(v17 - 8) + 8))(a1 + v18, v17);
  (*(v7 + 16))(a1 + v18, a2, a4);
  return (*(v7 + 56))(a1 + v18, 0, 1, a4);
}

uint64_t sub_269556DC8()
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_269562DD0();
  return sub_269562DC0();
}

uint64_t sub_269556E44@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  return sub_26955604C(a1, v2[5], v2[3], a2);
}

uint64_t sub_269556E84(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_269556568(a1, v1[5], v1[2]);
}

uint64_t sub_269556EC4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_269556F18(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_269556F60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_269556FB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x277D841D0]) - 8) + 16))(a2, v3);
}

unint64_t sub_26955704C()
{
  result = qword_28031C608;
  if (!qword_28031C608)
  {
    sub_269562C60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031C608);
  }

  return result;
}

uint64_t sub_2695570F4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_269562E70();
  sub_269562BE0();
  return sub_269562E90();
}

uint64_t sub_269557140()
{
  v1 = *v0;
  v2 = v0[1];
  sub_269562E70();
  sub_269562BE0();
  return sub_269562E90();
}

uint64_t sub_269557188(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_269562E30();
  }
}

void sub_2695571B8(uint64_t a1)
{
  if ([*(v1 + 48) count] >= 1)
  {
    v3 = *(v1 + 48);
    v4 = [v3 count];
    if (__OFSUB__(v4, 1))
    {
      __break(1u);
    }

    else
    {
      v5 = [v3 objectAtIndex_];

      if (v5)
      {
        v6 = v5[9];
        v5[9] = a1;

        goto LABEL_5;
      }
    }

    __break(1u);
    return;
  }

LABEL_5:
  v7 = *(v1 + 48);

  [v7 enqueueObject_];
}

uint64_t sub_269557280()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  sub_269525B8C(*(v0 + 32));

  v3 = *(v0 + 64);

  return MEMORY[0x2821FE8D8](v0, 98, 7);
}

void *sub_2695572D0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];
  v0[9] = 0;

  if (v4)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v5 = *(v4 + 72);
      swift_retain_n();

      v4 = v5;
    }

    while (v5);
  }

  return v0;
}

uint64_t sub_269557360()
{
  sub_2695572D0();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

id sub_2695573E0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t sub_269557444(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_269557494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_2695574F8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

id SRUIFMarkerCapableSpeechSynthesizer.audioSessionID.getter()
{
  v1 = [v0 synthesizer];
  v2 = [v1 audioSessionID];

  return v2;
}

void SRUIFMarkerCapableSpeechSynthesizer.audioSessionID.setter(uint64_t a1)
{
  v3 = [v1 synthesizer];
  [v3 setAudioSessionID_];
}

char *sub_2695576DC(void *a1)
{
  v2 = v1;
  v4 = sub_269562CD0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_269562CC0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_269562B30();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = OBJC_IVAR___SRUIFMarkerCapableSpeechSynthesizer_queue;
  sub_26955FCF4(0, &qword_28031C798, 0x277D85C78);
  sub_269562B20();
  sub_269562CB0();
  (*(v5 + 104))(v8, *MEMORY[0x277D85260], v4);
  *&v2[v13] = sub_269562D00();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR___SRUIFMarkerCapableSpeechSynthesizer_pendingTasks;
  v15 = MEMORY[0x277D84F90];
  *&v2[v14] = sub_269553174(MEMORY[0x277D84F90]);
  v16 = OBJC_IVAR___SRUIFMarkerCapableSpeechSynthesizer_supertaskLookup;
  *&v2[v16] = sub_269553278(v15);
  if (qword_280D00240 != -1)
  {
    swift_once();
  }

  v17 = sub_269562AD0();
  __swift_project_value_buffer(v17, qword_280D002B0);
  v18 = sub_269562AC0();
  v19 = sub_269562C70();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_26951F000, v18, v19, "#response_coordination init'd SRUIFMarkerCapableSpeechSynthesizer", v20, 2u);
    MEMORY[0x26D640DD0](v20, -1, -1);
  }

  *&v2[OBJC_IVAR___SRUIFMarkerCapableSpeechSynthesizer_synthesizer] = a1;
  v27.receiver = v2;
  v27.super_class = SRUIFMarkerCapableSpeechSynthesizer;
  v21 = a1;
  v22 = objc_msgSendSuper2(&v27, sel_init);
  v23 = OBJC_IVAR___SRUIFMarkerCapableSpeechSynthesizer_synthesizer;
  v24 = *&v22[OBJC_IVAR___SRUIFMarkerCapableSpeechSynthesizer_synthesizer];
  v25 = v22;
  [v24 setDelegate_];
  [*&v22[v23] setClientStateManagerDelegate_];

  return v25;
}

uint64_t sub_269557A64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_269562B40();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = [v3 queue];
  (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6);
  v11 = sub_269562B50();
  result = (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v13 = OBJC_IVAR___SRUIFMarkerCapableSpeechSynthesizer_supertaskLookup;
  swift_beginAccess();
  v14 = *&v3[v13];
  if (*(v14 + 16) && (v15 = sub_2695535C4(a1, a2), (v16 & 1) != 0))
  {
    v17 = (*(v14 + 56) + 16 * v15);
    v19 = *v17;
    v18 = v17[1];
    swift_endAccess();
    v20 = OBJC_IVAR___SRUIFMarkerCapableSpeechSynthesizer_pendingTasks;
    swift_beginAccess();
    v21 = *&v3[v20];
    v22 = *(v21 + 16);

    if (v22)
    {
      v23 = sub_2695535C4(v19, v18);
      if (v24)
      {
        v25 = *(*(v21 + 56) + 8 * v23);
        swift_endAccess();

        result = [*(v25 + 48) count];
        if ((result & 0x8000000000000000) == 0)
        {
          v26 = result;
          if (result)
          {
            for (i = 0; v26 != i; ++i)
            {
              v28 = [*(v25 + 48) objectAtIndex_];
              if (v28)
              {
                v29 = v28;
                v30 = v28[4] == a1 && v28[5] == a2;
                if (v30 || (sub_269562E30() & 1) != 0)
                {

                  return v29;
                }
              }
            }
          }

          return 0;
        }

LABEL_24:
        __break(1u);
        return result;
      }
    }

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  return 0;
}

Swift::Void __swiftcall SRUIFMarkerCapableSpeechSynthesizer.enqueue(_:)(SRUIFSpeechSynthesisRequest_optional *a1)
{
  v3 = [v1 synthesizer];
  [v3 enqueueSpeechSynthesisRequest_];
}

void SRUIFMarkerCapableSpeechSynthesizer.enqueuePhatic(completion:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 synthesizer];
  if (a1)
  {
    v7[4] = a1;
    v7[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_269560300;
    v7[3] = &block_descriptor_0;
    a1 = _Block_copy(v7);
  }

  [v6 enqueuePhaticWithCompletion_];
  _Block_release(a1);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_269557FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_269562A10();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

Swift::Void __swiftcall SRUIFMarkerCapableSpeechSynthesizer.processDelayedItem(_:)(Swift::String_optional a1)
{
  v2 = v1;
  object = a1.value._object;
  countAndFlagsBits = a1.value._countAndFlagsBits;
  v5 = sub_269562B00();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = sub_269562B30();
  v10 = *(v18[0] - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v18[0]);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v2 queue];
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = countAndFlagsBits;
  v16[3] = object;
  v16[4] = v15;
  aBlock[4] = sub_269558624;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_269558630;
  aBlock[3] = &block_descriptor_6;
  v17 = _Block_copy(aBlock);

  sub_269562B10();
  v18[1] = MEMORY[0x277D84F90];
  sub_269558674();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C628, &qword_269567790);
  sub_2695586CC();
  sub_269562D50();
  MEMORY[0x26D6401B0](0, v13, v9, v17);
  _Block_release(v17);

  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v18[0]);
}

void sub_2695582E0(uint64_t a1, void *a2)
{
  v2 = a2;
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = OBJC_IVAR___SRUIFMarkerCapableSpeechSynthesizer_pendingTasks;
      swift_beginAccess();
      v7 = *&v5[v6];
      if (*(v7 + 16) && (v8 = sub_2695535C4(a1, v2), (v9 & 1) != 0))
      {
        v10 = *(*(v7 + 56) + 8 * v8);
        swift_endAccess();

        v11 = *(v10 + 48);

        v12 = [v11 frontObject];

        if (v12)
        {
          swift_beginAccess();
          v13 = swift_unknownObjectWeakLoadStrong();
          if (v13)
          {
            v14 = v13;
            v15 = [v13 synthesizer];

            v16 = v12[4];
            v17 = v12[5];

            v18 = sub_269562BA0();

            [v15 processDelayedItem_];
          }

          return;
        }
      }

      else
      {
        swift_endAccess();
      }
    }
  }

  if (qword_280D00240 != -1)
  {
    swift_once();
  }

  v19 = sub_269562AD0();
  __swift_project_value_buffer(v19, qword_280D002B0);

  v20 = sub_269562AC0();
  v21 = sub_269562CA0();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v30 = v23;
    *v22 = 136315138;
    if (v2)
    {
      v24 = a1;
    }

    else
    {
      v24 = 7104878;
    }

    if (v2)
    {
      v25 = v2;
    }

    else
    {
      v25 = 0xE300000000000000;
    }

    v26 = sub_269523410(v24, v25, &v30);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_26951F000, v20, v21, "#response_coordination could not look up delayed item id %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x26D640DD0](v23, -1, -1);
    MEMORY[0x26D640DD0](v22, -1, -1);
  }

  swift_beginAccess();
  v27 = swift_unknownObjectWeakLoadStrong();
  if (v27)
  {
    v28 = v27;
    v29 = [v27 synthesizer];

    if (v2)
    {
      v2 = sub_269562BA0();
    }

    [v29 processDelayedItem_];
  }
}

uint64_t sub_269558630(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

unint64_t sub_269558674()
{
  result = qword_28031C620;
  if (!qword_28031C620)
  {
    sub_269562B00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031C620);
  }

  return result;
}

unint64_t sub_2695586CC()
{
  result = qword_28031C630;
  if (!qword_28031C630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28031C628, &qword_269567790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031C630);
  }

  return result;
}

Swift::Void __swiftcall SRUIFMarkerCapableSpeechSynthesizer.cancel()()
{
  v1 = sub_269562B00();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = sub_269562B30();
  v6 = *(v13[0] - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v13[0]);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v0 queue];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_269558CD8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_269558630;
  aBlock[3] = &block_descriptor_10;
  v12 = _Block_copy(aBlock);

  sub_269562B10();
  v13[1] = MEMORY[0x277D84F90];
  sub_269558674();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C628, &qword_269567790);
  sub_2695586CC();
  sub_269562D50();
  MEMORY[0x26D6401B0](0, v9, v5, v12);
  _Block_release(v12);

  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v13[0]);
}

void sub_2695589E8(uint64_t a1)
{
  if (qword_280D00240 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v2 = sub_269562AD0();
    __swift_project_value_buffer(v2, qword_280D002B0);
    v3 = sub_269562AC0();
    v4 = sub_269562C70();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_26951F000, v3, v4, "#response_coordination cancel", v5, 2u);
      MEMORY[0x26D640DD0](v5, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      break;
    }

    v7 = OBJC_IVAR___SRUIFMarkerCapableSpeechSynthesizer_pendingTasks;
    v8 = Strong;
    swift_beginAccess();
    v9 = *&v8[v7];

    v10 = 1 << *(v9 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v9 + 64);
    swift_beginAccess();
    v13 = 0;
    v27 = a1;
    while (v12)
    {
LABEL_13:
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v16 = v15 | (v13 << 6);
      v17 = (*(v9 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      *(*(*(v9 + 56) + 8 * v16) + 97) = 1;
      v20 = swift_unknownObjectWeakLoadStrong();
      if (v20)
      {
        v21 = v20;

        v22 = [v21 delegate];

        if (v22)
        {
          v23 = sub_269562BA0();

          [v22 speechSynthesisDidStopSpeakingWithIdentifier:v23 queueIsEmpty:1];

          swift_unknownObjectRelease();
        }

        else
        {
        }

        a1 = v27;
      }
    }

    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= ((v10 + 63) >> 6))
      {

        goto LABEL_19;
      }

      v12 = *(v9 + 64 + 8 * v14);
      ++v13;
      if (v12)
      {
        v13 = v14;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_23:
    swift_once();
  }

LABEL_19:
  swift_beginAccess();
  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    v26 = [v24 synthesizer];

    [v26 cancel];
  }
}

void sub_269558D7C(SEL *a1)
{
  v3 = [v1 synthesizer];
  [v3 *a1];
}

void sub_269558DE8(void *a1, uint64_t a2, SEL *a3)
{
  v5 = a1;
  v4 = [v5 synthesizer];
  [v4 *a3];
}

Swift::Void __swiftcall SRUIFMarkerCapableSpeechSynthesizer.prewarmIfNeededKeepActive(_:)(Swift::Bool a1)
{
  v3 = [v1 synthesizer];
  [v3 prewarmIfNeededKeepActive_];
}

void SRUIFMarkerCapableSpeechSynthesizer.duckTTSVolume(to:rampTime:completion:)(void *a1, uint64_t a2, float a3, double a4)
{
  v5 = v4;
  v10 = [v5 synthesizer];
  if (a1)
  {
    v12[4] = a1;
    v12[5] = a2;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_269551D58;
    v12[3] = &block_descriptor_13;
    a1 = _Block_copy(v12);
  }

  *&v11 = a3;
  [v10 duckTTSVolumeTo:a1 rampTime:v11 completion:a4];
  _Block_release(a1);
}

void sub_2695590F0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_269562A10();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void SRUIFMarkerCapableSpeechSynthesizer.isSynthesisQueueEmpty(_:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 synthesizer];
  if (a1)
  {
    v7[4] = a1;
    v7[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_269559234;
    v7[3] = &block_descriptor_16;
    a1 = _Block_copy(v7);
  }

  [v6 isSynthesisQueueEmpty_];
  _Block_release(a1);
}

uint64_t sub_269559234(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void SRUIFMarkerCapableSpeechSynthesizer.enqueue(_:identifier:sessionId:provisionally:eligibleAfterDuration:completion:)(uint64_t a1, double a2, uint64_t a3, void *a4, uint64_t a5, void *a6, char a7, void *a8, uint64_t a9)
{
  v10 = v9;
  v18 = [v10 synthesizer];
  if (a4)
  {
    a4 = sub_269562BA0();
  }

  if (a6)
  {
    a6 = sub_269562BA0();
  }

  if (a8)
  {
    v19[4] = a8;
    v19[5] = a9;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 1107296256;
    v19[2] = sub_269560300;
    v19[3] = &block_descriptor_19;
    a8 = _Block_copy(v19);
  }

  [v18 enqueueAudioData:a1 identifier:a4 sessionId:a6 provisionally:a7 & 1 eligibleAfterDuration:a8 completion:a2];
  _Block_release(a8);
}

void SRUIFMarkerCapableSpeechSynthesizer.enqueueText(_:identifier:sessionId:preferredVoice:language:gender:promptStyle:isPhonetic:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:preparationIdentifier:completion:analyticsContext:speakableContextInfo:)(void *a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, unsigned __int8 a16, unsigned __int8 a17, unsigned __int8 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v25 = v24;
  v145 = a7;
  v146 = a6;
  v157 = a1;
  v32 = sub_269562B00();
  v150 = *(v32 - 8);
  v33 = *(v150 + 64);
  MEMORY[0x28223BE20](v32);
  v138 = &v122 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_269562A50();
  v128 = *(v137 - 8);
  v35 = *(v128 + 64);
  MEMORY[0x28223BE20](v137);
  v136 = &v122 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D00240 != -1)
  {
    swift_once();
  }

  v158 = a20;
  v37 = sub_269562AD0();
  __swift_project_value_buffer(v37, qword_280D002B0);

  v38 = sub_269562AC0();
  v39 = sub_269562CA0();

  v40 = os_log_type_enabled(v38, v39);
  v144 = a8;
  v143 = a5;
  v147 = a3;
  v139 = v32;
  v149 = a4;
  v151 = a2;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v140 = v25;
    v43 = v42;
    aBlock = v42;
    *v41 = 136315394;
    if (a4)
    {
      v44 = a3;
    }

    else
    {
      v44 = 7104878;
    }

    if (a4)
    {
      v45 = a4;
    }

    else
    {
      v45 = 0xE300000000000000;
    }

    v46 = sub_269523410(v44, v45, &aBlock);

    *(v41 + 4) = v46;
    *(v41 + 12) = 2080;
    if (a2)
    {
      v47 = v157;
    }

    else
    {
      v47 = 7104878;
    }

    if (a2)
    {
      v48 = a2;
    }

    else
    {
      v48 = 0xE300000000000000;
    }

    v49 = sub_269523410(v47, v48, &aBlock);

    *(v41 + 14) = v49;
    _os_log_impl(&dword_26951F000, v38, v39, "#response_coordination incoming enqueueText (id=%s: %s)", v41, 0x16u);
    swift_arrayDestroy();
    v50 = v140;
    MEMORY[0x26D640DD0](v43, -1, -1);
    MEMORY[0x26D640DD0](v41, -1, -1);
  }

  else
  {
    v50 = v25;
  }

  v152 = a22;
  v148 = a23;
  LODWORD(v155) = a16;
  LODWORD(v154) = a15;
  LODWORD(v153) = a18;
  v156 = a21;
  if (v158)
  {
    v51 = [v50 delegate];
    if (v51)
    {
      v157 = v51;
      v158 = sub_269562BA0();
      v52 = swift_allocObject();
      *(v52 + 16) = v153 & 1;
      v53 = v147;
      *(v52 + 24) = v50;
      *(v52 + 32) = v53;
      v54 = v143;
      *(v52 + 40) = v149;
      *(v52 + 48) = v54;
      v142 = a24;
      v55 = v145;
      *(v52 + 56) = v146;
      *(v52 + 64) = v55;
      *(v52 + 72) = v144;
      *(v52 + 80) = a10;
      *(v52 + 88) = a11;
      *(v52 + 96) = a12;
      v141 = a12;
      *(v52 + 104) = a13;
      *(v52 + 112) = a14;
      *(v52 + 120) = v154 & 1;
      *(v52 + 121) = v155 & 1;
      *(v52 + 128) = a9;
      *(v52 + 136) = a17 & 1;
      v56 = v156;
      v57 = v152;
      *(v52 + 144) = v156;
      *(v52 + 152) = v57;
      *(v52 + 160) = v148;
      *(v52 + 168) = a24;
      v164 = sub_26955FA58;
      v165 = v52;
      aBlock = MEMORY[0x277D85DD0];
      v161 = 1107296256;
      v162 = sub_26955AC58;
      v163 = &block_descriptor_32;
      v58 = _Block_copy(&aBlock);

      v59 = v50;

      v60 = v55;

      sub_26955FA04(v56);

      v61 = v158;
      [v157 speechSynthesisGetPreparedTextForIdentifier:v158 completion:v58];
      swift_unknownObjectRelease();
      _Block_release(v58);
    }

    return;
  }

  v132 = a11;
  v133 = a13;
  v134 = a10;
  v135 = a14;
  v141 = a12;
  v62 = v151;
  v142 = a24;
  LODWORD(v140) = a17;
  if (!v151 || !v149)
  {
    v106 = [v50 synthesizer];
    if (v62)
    {
      v107 = sub_269562BA0();
      if (v149)
      {
LABEL_32:
        v108 = sub_269562BA0();
        goto LABEL_35;
      }
    }

    else
    {
      v107 = 0;
      if (v149)
      {
        goto LABEL_32;
      }
    }

    v108 = 0;
LABEL_35:
    if (v146)
    {
      v109 = sub_269562BA0();
    }

    else
    {
      v109 = 0;
    }

    if (v134)
    {
      v110 = sub_269562BA0();
    }

    else
    {
      v110 = 0;
    }

    if (v141)
    {
      v111 = sub_269562BA0();
    }

    else
    {
      v111 = 0;
    }

    if (v135)
    {
      v112 = sub_269562BA0();
      v113 = v156;
      if (v156)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v112 = 0;
      v113 = v156;
      if (v156)
      {
LABEL_46:
        v164 = v113;
        v165 = v152;
        aBlock = MEMORY[0x277D85DD0];
        v161 = 1107296256;
        v162 = sub_269560300;
        v163 = &block_descriptor_22;
        v114 = _Block_copy(&aBlock);

        if (v148)
        {
LABEL_47:
          v115 = sub_269562B70();
LABEL_51:
          if (v142)
          {
            v116 = sub_269562B70();
          }

          else
          {
            v116 = 0;
          }

          BYTE3(v118) = v153 & 1;
          BYTE2(v118) = v140 & 1;
          BYTE1(v118) = v155 & 1;
          LOBYTE(v118) = v154 & 1;
          [v106 enqueueText:v107 identifier:v108 sessionId:v109 preferredVoice:v145 language:v110 gender:v111 promptStyle:a9 isPhonetic:v112 provisionally:v118 eligibleAfterDuration:0 delayed:v114 canUseServerTTS:v115 preparationIdentifier:v116 completion:? analyticsContext:? speakableContextInfo:?];

          _Block_release(v114);
          return;
        }

LABEL_50:
        v115 = 0;
        goto LABEL_51;
      }
    }

    v114 = 0;
    if (v148)
    {
      goto LABEL_47;
    }

    goto LABEL_50;
  }

  v130 = a19;

  v63 = v157;
  v64 = sub_269553A04(v157, v62, 1);
  v65 = objc_allocWithZone(MEMORY[0x277CEF370]);
  v66 = v149;
  swift_bridgeObjectRetain_n();
  v67 = [v65 init];
  _s9SupertaskCMa();
  v68 = swift_allocObject();
  v69 = v62;
  v70 = v68;
  *(v68 + 80) = 1;
  *(v68 + 88) = 0;
  *(v68 + 96) = 1;
  v71 = v147;
  *(v68 + 16) = v147;
  *(v68 + 24) = v66;
  *(v68 + 64) = v69;
  *(v68 + 72) = 0;
  v72 = v156;
  v73 = v152;
  *(v68 + 32) = v156;
  *(v68 + 40) = v73;
  *(v68 + 48) = v67;
  *(v68 + 56) = v63;
  v74 = OBJC_IVAR___SRUIFMarkerCapableSpeechSynthesizer_pendingTasks;
  swift_beginAccess();
  sub_26955FA04(v72);
  v75 = *&v50[v74];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v159 = *&v50[v74];
  *&v50[v74] = 0x8000000000000000;
  sub_26955F3F4(v70, v71, v66, isUniquelyReferenced_nonNull_native);

  *&v50[v74] = v159;
  swift_endAccess();
  v131 = v64;
  v77 = v64[2];
  if (v77)
  {
    v78 = 0;
    v79 = 0;
    v128 += 8;
    v127 = v154 & 1;
    v126 = v155 & 1;
    v125 = v140 & 1;
    v124 = v153 & 1;
    v123 = (v150 + 8);
    v80 = v131 + 8;
    v140 = v50;
    v129 = v77;
    do
    {
      v157 = v78;
      v158 = v78 + 1;
      v81 = *(v80 - 4);
      v82 = *(v80 - 3);
      v155 = v79;
      v156 = v81;
      v83 = *(v80 - 2);
      v84 = *(v80 - 1);
      v152 = v83;
      v153 = v82;
      v85 = v78 == 0;
      LODWORD(v150) = v78 == 0;
      v154 = *v80;

      v86 = v136;
      sub_269562A40();
      v87 = sub_269562A30();
      v89 = v88;
      (*v128)(v86, v137);
      if (v84)
      {
        v90 = v83;
      }

      else
      {
        v90 = 0;
      }

      _s7SubtaskCMa();
      v91 = swift_allocObject();
      *(v91 + 72) = 0;
      v92 = v147;
      v93 = v149;
      *(v91 + 16) = v147;
      *(v91 + 24) = v93;
      *(v91 + 32) = v87;
      *(v91 + 40) = v89;
      *(v91 + 48) = v90;
      *(v91 + 56) = v84;
      *(v91 + 64) = v85;
      v94 = swift_allocObject();

      v95 = v140;
      swift_unknownObjectWeakInit();
      v96 = swift_allocObject();
      *(v96 + 16) = v94;
      *(v96 + 24) = v91;

      v97 = [v95 queue];
      v98 = v138;
      v99 = sub_269562AF0();
      v151 = &v122;
      MEMORY[0x28223BE20](v99);
      *(&v122 - 30) = v95;
      *(&v122 - 29) = v91;
      *(&v122 - 28) = v92;
      *(&v122 - 27) = v93;
      v100 = v153;
      *(&v122 - 26) = v156;
      *(&v122 - 25) = v100;
      *(&v122 - 24) = v152;
      *(&v122 - 23) = v84;
      v101 = v145;
      v102 = v143;
      *(&v122 - 22) = v154;
      *(&v122 - 21) = v102;
      *(&v122 - 20) = v146;
      *(&v122 - 19) = v101;
      v103 = v134;
      *(&v122 - 18) = v144;
      *(&v122 - 17) = v103;
      v104 = v141;
      *(&v122 - 16) = v132;
      *(&v122 - 15) = v104;
      v105 = v135;
      *(&v122 - 14) = v133;
      *(&v122 - 13) = v105;
      *(&v122 - 96) = v127;
      *(&v122 - 95) = v126;
      *(&v122 - 11) = a9;
      *(&v122 - 80) = v150;
      *(&v122 - 79) = v125;
      *(&v122 - 78) = v124;
      *(&v122 - 9) = v130;
      *(&v122 - 8) = 0;
      *(&v122 - 7) = sub_26955FA38;
      v117 = v96;
      v118 = v148;
      v119 = v142;
      v120 = v157;
      v121 = v131;
      v79 = v155;
      sub_269562CE0();

      (*v123)(v98, v139);
      v80 += 5;
      v78 = v158;
    }

    while (v129 != v158);
  }
}

void sub_26955A324(uint64_t a1, unint64_t a2, int a3, int a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned __int8 a18, unsigned __int8 a19, unsigned __int8 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v114 = a8;
  v120 = a6;
  v118 = a24;
  v117 = a23;
  v128 = a21;
  LODWORD(v127) = a20;
  LODWORD(v126) = a19;
  LODWORD(v125) = a18;
  v116 = a17;
  v109 = a16;
  v115 = a15;
  v110 = a14;
  v113 = a13;
  v112 = a12;
  v111 = a10;
  v31 = sub_269562B00();
  v123 = *(v31 - 8);
  v32 = *(v123 + 64);
  MEMORY[0x28223BE20](v31);
  v34 = &v94 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_269562A50();
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35);
  LODWORD(v124) = a4 & (a3 ^ 1);
  v40 = a7;
  if (!a2 || !a7)
  {
    v78 = [a5 synthesizer];
    if (a2)
    {
      v79 = sub_269562BA0();
    }

    else
    {
      v79 = 0;
    }

    if (v40)
    {
      v80 = sub_269562BA0();
    }

    else
    {
      v80 = 0;
    }

    v108 = a11;
    if (v111)
    {
      v81 = sub_269562BA0();
    }

    else
    {
      v81 = 0;
    }

    if (v113)
    {
      v82 = sub_269562BA0();
    }

    else
    {
      v82 = 0;
    }

    if (v115)
    {
      v83 = sub_269562BA0();
    }

    else
    {
      v83 = 0;
    }

    if (v116)
    {
      v84 = sub_269562BA0();
      v85 = v128;
      if (v128)
      {
LABEL_27:
        aBlock[4] = v85;
        aBlock[5] = a22;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_269560300;
        aBlock[3] = &block_descriptor_113;
        v86 = _Block_copy(aBlock);

        goto LABEL_30;
      }
    }

    else
    {
      v84 = 0;
      v85 = v128;
      if (v128)
      {
        goto LABEL_27;
      }
    }

    v86 = 0;
LABEL_30:
    if (v117)
    {
      v87 = sub_269562B70();
      if (v118)
      {
LABEL_32:
        v88 = sub_269562B70();
LABEL_35:
        BYTE3(v90) = v124 & 1;
        BYTE2(v90) = v127 & 1;
        BYTE1(v90) = v126 & 1;
        LOBYTE(v90) = v125 & 1;
        [v78 enqueueText:v79 identifier:v80 sessionId:v81 preferredVoice:v108 language:v82 gender:v83 promptStyle:a9 isPhonetic:v84 provisionally:v90 eligibleAfterDuration:0 delayed:v86 canUseServerTTS:v87 preparationIdentifier:v88 completion:? analyticsContext:? speakableContextInfo:?];

        _Block_release(v86);
        return;
      }
    }

    else
    {
      v87 = 0;
      if (v118)
      {
        goto LABEL_32;
      }
    }

    v88 = 0;
    goto LABEL_35;
  }

  v122 = v39;
  v104 = &v94 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v37;
  v106 = v34;
  v107 = v31;

  v119 = sub_269553A04(a1, a2, 1);
  v41 = objc_allocWithZone(MEMORY[0x277CEF370]);
  swift_bridgeObjectRetain_n();
  v42 = [v41 init];
  _s9SupertaskCMa();
  v43 = swift_allocObject();
  *(v43 + 80) = 1;
  *(v43 + 88) = 0;
  *(v43 + 96) = 1;
  v44 = v120;
  *(v43 + 16) = v120;
  *(v43 + 24) = a7;
  *(v43 + 64) = a2;
  *(v43 + 72) = 0;
  v45 = v128;
  *(v43 + 32) = v128;
  *(v43 + 40) = a22;
  *(v43 + 48) = v42;
  *(v43 + 56) = a1;
  v46 = a7;
  v47 = OBJC_IVAR___SRUIFMarkerCapableSpeechSynthesizer_pendingTasks;
  swift_beginAccess();
  sub_26955FA04(v45);
  v48 = *&a5[v47];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v129 = *&a5[v47];
  *&a5[v47] = 0x8000000000000000;
  sub_26955F3F4(v43, v44, v46, isUniquelyReferenced_nonNull_native);

  *&a5[v47] = v129;
  swift_endAccess();
  v50 = v119[2];
  if (v50)
  {
    v51 = 0;
    v52 = 0;
    v102 = (v122 + 1);
    v101 = v125 & 1;
    v100 = v126 & 1;
    v99 = v127 & 1;
    v98 = v124 & 1;
    v97 = (v123 + 8);
    v96 = a5;
    v53 = v119 + 8;
    v95 = v46;
    v108 = a11;
    v103 = v50;
    do
    {
      v127 = v52;
      v128 = v51 + 1;
      v54 = *(v53 - 4);
      v55 = *(v53 - 3);
      v56 = *(v53 - 2);
      v57 = *(v53 - 1);
      v123 = v56;
      v124 = v55;
      v121 = v51 == 0;
      v125 = *v53;
      v126 = v54;

      v58 = v104;
      sub_269562A40();
      v59 = sub_269562A30();
      v61 = v60;
      (*v102)(v58, v105);
      if (v57)
      {
        v62 = v56;
      }

      else
      {
        v62 = 0;
      }

      _s7SubtaskCMa();
      v63 = swift_allocObject();
      *(v63 + 72) = 0;
      v64 = v120;
      v65 = v95;
      *(v63 + 16) = v120;
      *(v63 + 24) = v65;
      *(v63 + 32) = v59;
      *(v63 + 40) = v61;
      *(v63 + 48) = v62;
      *(v63 + 56) = v57;
      *(v63 + 64) = v51 == 0;
      v66 = swift_allocObject();

      v67 = v96;
      swift_unknownObjectWeakInit();
      v68 = swift_allocObject();
      *(v68 + 16) = v66;
      *(v68 + 24) = v63;

      v69 = [v67 queue];
      v70 = v106;
      v71 = sub_269562AF0();
      v122 = &v94;
      MEMORY[0x28223BE20](v71);
      *(&v94 - 30) = v67;
      *(&v94 - 29) = v63;
      *(&v94 - 28) = v64;
      *(&v94 - 27) = v65;
      v72 = v124;
      *(&v94 - 26) = v126;
      *(&v94 - 25) = v72;
      *(&v94 - 24) = v123;
      *(&v94 - 23) = v57;
      v73 = v108;
      v74 = v114;
      *(&v94 - 22) = v125;
      *(&v94 - 21) = v74;
      *(&v94 - 20) = v111;
      *(&v94 - 19) = v73;
      v75 = v113;
      *(&v94 - 18) = v112;
      *(&v94 - 17) = v75;
      v76 = v115;
      *(&v94 - 16) = v110;
      *(&v94 - 15) = v76;
      v77 = v116;
      *(&v94 - 14) = v109;
      *(&v94 - 13) = v77;
      *(&v94 - 96) = v101;
      *(&v94 - 95) = v100;
      *(&v94 - 11) = a9;
      *(&v94 - 80) = v121;
      *(&v94 - 79) = v99;
      *(&v94 - 78) = v98;
      *(&v94 - 9) = 0;
      *(&v94 - 8) = 0;
      *(&v94 - 7) = sub_2695602B4;
      v89 = v68;
      v90 = v117;
      v91 = v118;
      v92 = v51;
      v93 = v119;
      v52 = v127;
      sub_269562CE0();

      (*v97)(v70, v107);
      v53 += 5;
      v51 = v128;
    }

    while (v103 != v128);
  }
}

uint64_t sub_26955AC58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_269562BB0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5(v6, v8, a3);
}

void sub_26955B048(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_26955B0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_26955F3F4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_2695535C4(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_26955F6F8();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_26955F244(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

void sub_26955B1B8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_26955B230(*(a4 + 32), *(a4 + 40), a1, a2);
  }
}

void sub_26955B230(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = sub_269562B00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D00240 != -1)
  {
    swift_once();
  }

  v15 = sub_269562AD0();
  __swift_project_value_buffer(v15, qword_280D002B0);

  v16 = a4;
  v17 = sub_269562AC0();
  v18 = sub_269562C70();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v41 = v11;
    v20 = v19;
    v21 = swift_slowAlloc();
    v42 = a1;
    v22 = v21;
    v44[0] = v21;
    *v20 = 136315650;
    *(v20 + 4) = sub_269523410(v42, a2, v44);
    *(v20 + 12) = 2080;
    v43 = a3;
    type metadata accessor for SRUIFSpeechSynthesisResult(0);
    v23 = sub_269562BC0();
    v40 = v5;
    v25 = sub_269523410(v23, v24, v44);
    v39 = a3;
    v26 = v25;

    *(v20 + 14) = v26;
    *(v20 + 22) = 2080;
    v43 = a4;
    v27 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031C810, &qword_269567978);
    v28 = sub_269562BC0();
    v30 = sub_269523410(v28, v29, v44);

    *(v20 + 24) = v30;
    v31 = v18;
    v32 = v39;
    v5 = v40;
    _os_log_impl(&dword_26951F000, v17, v31, "#response_coordination speakTextCompletion completion (id = %s): result=%s, error=%s", v20, 0x20u);
    swift_arrayDestroy();
    v33 = v22;
    a1 = v42;
    MEMORY[0x26D640DD0](v33, -1, -1);
    v34 = v20;
    v11 = v41;
    MEMORY[0x26D640DD0](v34, -1, -1);
  }

  else
  {

    v32 = a3;
  }

  v35 = [v5 queue];
  sub_269562AF0();
  v36 = swift_allocObject();
  v37 = swift_unknownObjectWeakInit();
  MEMORY[0x28223BE20](v37);
  *(&v38 - 6) = v36;
  *(&v38 - 5) = a1;
  *(&v38 - 4) = a2;
  *(&v38 - 3) = a4;
  *(&v38 - 2) = v32;
  sub_269562CE0();
  (*(v11 + 8))(v14, v10);
}

void sub_26955B5AC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27)
{
  v32 = a5[1];
  v69 = *a5;
  v67 = a5[3];
  v34 = *(a2 + 32);
  v33 = *(a2 + 40);
  v35 = OBJC_IVAR___SRUIFMarkerCapableSpeechSynthesizer_supertaskLookup;
  swift_beginAccess();

  v36 = *&a1[v35];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v73 = *&a1[v35];
  *&a1[v35] = 0x8000000000000000;
  sub_26955F570(a3, a4, v34, v33, isUniquelyReferenced_nonNull_native);

  *&a1[v35] = v73;
  swift_endAccess();
  v38 = OBJC_IVAR___SRUIFMarkerCapableSpeechSynthesizer_pendingTasks;
  swift_beginAccess();
  v39 = *&a1[v38];
  if (*(v39 + 16) && (v40 = sub_2695535C4(a3, a4), (v41 & 1) != 0))
  {
    v42 = *(*(v39 + 56) + 8 * v40);
    swift_endAccess();

    sub_2695571B8(a2);
  }

  else
  {
    swift_endAccess();
  }

  v65 = [a1 synthesizer];
  if (v32)
  {
    v64 = sub_269562BA0();
  }

  else
  {
    v64 = 0;
  }

  v63 = sub_269562BA0();
  if (a8)
  {
    v62 = sub_269562BA0();
    v43 = a13;
    if (a11)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v62 = 0;
    v43 = a13;
    if (a11)
    {
LABEL_10:
      v61 = sub_269562BA0();
      v44 = a15;
      if (v43)
      {
        goto LABEL_11;
      }

LABEL_15:
      v60 = 0;
      v45 = a21;
      if (v44)
      {
        goto LABEL_12;
      }

      goto LABEL_16;
    }
  }

  v61 = 0;
  v44 = a15;
  if (!v43)
  {
    goto LABEL_15;
  }

LABEL_11:
  v60 = sub_269562BA0();
  v45 = a21;
  if (v44)
  {
LABEL_12:
    v71 = sub_269562BA0();
    goto LABEL_17;
  }

LABEL_16:
  v71 = 0;
LABEL_17:
  if (v45)
  {
    v70 = sub_269562BA0();
  }

  else
  {
    v70 = 0;
  }

  v46 = a25;
  aBlock[4] = a22;
  aBlock[5] = a23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_269560300;
  aBlock[3] = &block_descriptor_122;
  v47 = _Block_copy(aBlock);

  if (a24)
  {
    v48 = sub_269562B70();
  }

  else
  {
    v48 = 0;
  }

  if (a25)
  {
    v46 = sub_269562B70();
  }

  BYTE3(v59) = a19 & 1;
  BYTE2(v59) = (a17 ^ 1 | a18) & 1;
  LOWORD(v59) = a16 & 0x101;
  [v65 enqueueText:v64 identifier:v63 sessionId:v62 preferredVoice:a9 language:v61 gender:v60 promptStyle:a6 isPhonetic:v71 provisionally:v59 eligibleAfterDuration:v70 delayed:v47 canUseServerTTS:v48 preparationIdentifier:v46 completion:? analyticsContext:? speakableContextInfo:?];

  _Block_release(v47);
  if (qword_280D00240 != -1)
  {
    swift_once();
  }

  v49 = sub_269562AD0();
  __swift_project_value_buffer(v49, qword_280D002B0);

  v50 = sub_269562AC0();
  v51 = sub_269562CA0();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    aBlock[0] = v53;
    *v52 = 134219010;
    if (__OFADD__(a26, 1))
    {
      __break(1u);
    }

    else
    {
      v54 = v53;
      *(v52 + 4) = a26 + 1;
      *(v52 + 12) = 2048;
      *(v52 + 14) = *(a27 + 16);

      *(v52 + 22) = 2080;

      v55 = sub_269523410(v34, v33, aBlock);

      *(v52 + 24) = v55;
      *(v52 + 32) = 2080;
      if (v32)
      {
        v56 = v69;
      }

      else
      {
        v56 = 7104878;
      }

      if (v32)
      {
        v57 = v32;
      }

      else
      {
        v57 = 0xE300000000000000;
      }

      v58 = sub_269523410(v56, v57, aBlock);

      *(v52 + 34) = v58;
      *(v52 + 42) = 1024;
      *(v52 + 44) = a17 & 1;
      _os_log_impl(&dword_26951F000, v50, v51, "#response_coordination enqueued dialog chunk [count=%ld/%ld; id=%s]: %s; isFirst=%{BOOL}d", v52, 0x30u);
      swift_arrayDestroy();
      MEMORY[0x26D640DD0](v54, -1, -1);
      MEMORY[0x26D640DD0](v52, -1, -1);
    }
  }

  else
  {
  }
}

void sub_26955BBC0(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v10 = Strong;
  v11 = sub_269557A64(a2, a3);
  if (!v11)
  {
    if (qword_280D00240 != -1)
    {
      swift_once();
    }

    v29 = sub_269562AD0();
    __swift_project_value_buffer(v29, qword_280D002B0);

    v30 = sub_269562AC0();
    v31 = sub_269562C90();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v71 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_269523410(a2, a3, &v71);
      _os_log_impl(&dword_26951F000, v30, v31, "#response_coordination received completion for unknown taskId = %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x26D640DD0](v33, -1, -1);
      MEMORY[0x26D640DD0](v32, -1, -1);
    }

    goto LABEL_28;
  }

  v12 = v11;
  if (!a4)
  {
    if (a5 == 1)
    {
      v34 = v11[9];
      if (v34)
      {
        v35 = qword_280D00240;
        v36 = v11[9];

        if (v35 != -1)
        {
          swift_once();
        }

        v37 = sub_269562AD0();
        __swift_project_value_buffer(v37, qword_280D002B0);

        v38 = sub_269562AC0();
        v39 = sub_269562CA0();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v71 = v69;
          *v40 = 136315138;
          v41 = *(v34 + 32);
          v42 = *(v34 + 40);

          v43 = sub_269523410(v41, v42, &v71);

          *(v40 + 4) = v43;
          _os_log_impl(&dword_26951F000, v38, v39, "#response_coordination process next task: %s", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v69);
          MEMORY[0x26D640DD0](v69, -1, -1);
          MEMORY[0x26D640DD0](v40, -1, -1);
        }

        v44 = [v10 synthesizer];
        v46 = *(v34 + 32);
        v45 = *(v34 + 40);

        v47 = sub_269562BA0();

        [v44 processDelayedItem_];

        goto LABEL_28;
      }

      v67 = v11[2];
      v66 = v11[3];

      v63 = v67;
      v64 = v66;
      v65 = 1;
    }

    else
    {
      if (qword_280D00240 != -1)
      {
        swift_once();
      }

      v48 = sub_269562AD0();
      __swift_project_value_buffer(v48, qword_280D002B0);

      v49 = sub_269562AC0();
      v50 = sub_269562C90();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v71 = v70;
        *v51 = 136315394;
        type metadata accessor for SRUIFSpeechSynthesisResult(0);
        v52 = sub_269562BC0();
        v54 = a5;
        v55 = sub_269523410(v52, v53, &v71);

        *(v51 + 4) = v55;
        *(v51 + 12) = 2080;
        v57 = v12[2];
        v56 = v12[3];

        v58 = sub_269523410(v57, v56, &v71);

        *(v51 + 14) = v58;
        a5 = v54;
        _os_log_impl(&dword_26951F000, v49, v50, "#response_coordination speak completion result unsuccessful = %s; cancelling rest of speech synthesis in supertask %s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D640DD0](v70, -1, -1);
        MEMORY[0x26D640DD0](v51, -1, -1);
      }

      v60 = v12[2];
      v59 = v12[3];

      sub_26955FE3C(v60, v59);

      v62 = v12[2];
      v61 = v12[3];

      v63 = v62;
      v64 = v61;
      v65 = a5;
    }

    sub_26955C2E4(v63, v64, v65, 0);

LABEL_28:

    return;
  }

  v13 = a4;
  if (qword_280D00240 != -1)
  {
    swift_once();
  }

  v68 = a5;
  v14 = sub_269562AD0();
  __swift_project_value_buffer(v14, qword_280D002B0);
  v15 = a4;
  v16 = sub_269562AC0();
  v17 = sub_269562C70();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v71 = v19;
    *v18 = 136315138;
    v20 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C508, &unk_269567980);
    v21 = sub_269562BC0();
    v23 = sub_269523410(v21, v22, &v71);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_26951F000, v16, v17, "#response_coordination speak completion error = %s; cancelling rest of speech synthesis", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x26D640DD0](v19, -1, -1);
    MEMORY[0x26D640DD0](v18, -1, -1);
  }

  v24 = v12[2];
  v25 = v12[3];
  v26 = a4;

  sub_26955FE3C(v24, v25);

  v28 = v12[2];
  v27 = v12[3];

  sub_26955C2E4(v28, v27, v68, a4);
}

void sub_26955C2E4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_269562B40();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v14 = [v5 queue];
  (*(v11 + 104))(v14, *MEMORY[0x277D85200], v10);
  v15 = sub_269562B50();
  (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_14;
  }

  v16 = OBJC_IVAR___SRUIFMarkerCapableSpeechSynthesizer_pendingTasks;
  swift_beginAccess();
  v17 = *&v5[v16];
  if (*(v17 + 16) && (v18 = sub_2695535C4(a1, a2), (v19 & 1) != 0))
  {
    v20 = *(*(v17 + 56) + 8 * v18);
    swift_endAccess();
    v21 = *(v20 + 32);
    if (v21)
    {
      v22 = *(v20 + 40);
      v23 = qword_280D00240;

      if (v23 != -1)
      {
        swift_once();
      }

      v24 = sub_269562AD0();
      __swift_project_value_buffer(v24, qword_280D002B0);

      v25 = sub_269562AC0();
      v26 = sub_269562CA0();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v44 = a4;
        v28 = v27;
        v29 = swift_slowAlloc();
        v43[1] = v22;
        v30 = v29;
        v45[0] = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_269523410(a1, a2, v45);
        _os_log_impl(&dword_26951F000, v25, v26, "#response_coordination executing completion for supertask %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30);
        MEMORY[0x26D640DD0](v30, -1, -1);
        v31 = v28;
        a4 = v44;
        MEMORY[0x26D640DD0](v31, -1, -1);
      }

      v21(a3, a4);
      swift_beginAccess();
      v32 = *&v5[v16];
      if (*(v32 + 16) && (v33 = sub_2695535C4(a1, a2), (v34 & 1) != 0))
      {
        v35 = *(*(v32 + 56) + 8 * v33);
        swift_endAccess();

        sub_269525B8C(v21);
        v36 = *(v35 + 32);
        v37 = *(v35 + 40);
        *(v35 + 32) = 0;
        *(v35 + 40) = 0;
        sub_269525B8C(v36);
      }

      else
      {
        swift_endAccess();
        sub_269525B8C(v21);
      }

      return;
    }
  }

  else
  {
    swift_endAccess();
  }

  if (qword_280D00240 != -1)
  {
    goto LABEL_19;
  }

LABEL_14:
  v38 = sub_269562AD0();
  __swift_project_value_buffer(v38, qword_280D002B0);

  v39 = sub_269562AC0();
  v40 = sub_269562C70();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v45[0] = v42;
    *v41 = 136315138;
    *(v41 + 4) = sub_269523410(a1, a2, v45);
    _os_log_impl(&dword_26951F000, v39, v40, "#response_coordination missing completion for id %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x26D640DD0](v42, -1, -1);
    MEMORY[0x26D640DD0](v41, -1, -1);
  }
}

Swift::Void __swiftcall SRUIFMarkerCapableSpeechSynthesizer.speechSynthesisDidStartSpeaking(withIdentifier:)(Swift::String_optional withIdentifier)
{
  v2 = v1;
  object = withIdentifier.value._object;
  countAndFlagsBits = withIdentifier.value._countAndFlagsBits;
  v5 = sub_269562B00();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_269562B30();
  v10 = *(v35 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v35);
  v34 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D00240 != -1)
  {
    swift_once();
  }

  v13 = sub_269562AD0();
  __swift_project_value_buffer(v13, qword_280D002B0);

  v14 = sub_269562AC0();
  v15 = sub_269562CA0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v33 = countAndFlagsBits;
    v18 = v17;
    aBlock[0] = v17;
    *v16 = 136315138;
    v31 = v2;
    v32 = v9;
    v19 = v5;
    v20 = v6;
    if (object)
    {
      v21 = v33;
    }

    else
    {
      v21 = 7104878;
    }

    v22 = v10;
    if (object)
    {
      v23 = object;
    }

    else
    {
      v23 = 0xE300000000000000;
    }

    v24 = sub_269523410(v21, v23, aBlock);
    v10 = v22;

    *(v16 + 4) = v24;
    v6 = v20;
    v5 = v19;
    v2 = v31;
    v9 = v32;
    _os_log_impl(&dword_26951F000, v14, v15, "#response_coordination [pre-restore] speechSynthesisDidStartSpeaking (withIdentifier=%s)", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    v25 = v18;
    countAndFlagsBits = v33;
    MEMORY[0x26D640DD0](v25, -1, -1);
    MEMORY[0x26D640DD0](v16, -1, -1);
  }

  v26 = [v2 queue];
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  v28[2] = v27;
  v28[3] = countAndFlagsBits;
  v28[4] = object;
  aBlock[4] = sub_26955FACC;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_269558630;
  aBlock[3] = &block_descriptor_39;
  v29 = _Block_copy(aBlock);

  v30 = v34;
  sub_269562B10();
  v36 = MEMORY[0x277D84F90];
  sub_269558674();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C628, &qword_269567790);
  sub_2695586CC();
  sub_269562D50();
  MEMORY[0x26D6401B0](0, v30, v9, v29);
  _Block_release(v29);

  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v30, v35);
}

void sub_26955CB84(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (!a3 || (v7 = sub_269557A64(a2, a3)) == 0)
    {
      if (qword_280D00240 != -1)
      {
        swift_once();
      }

      v40 = sub_269562AD0();
      __swift_project_value_buffer(v40, qword_280D002B0);

      v41 = sub_269562AC0();
      v42 = sub_269562C90();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v51 = v44;
        *v43 = 136315138;
        if (a3)
        {
          v45 = a2;
        }

        else
        {
          v45 = 7104878;
        }

        if (a3)
        {
          v46 = a3;
        }

        else
        {
          v46 = 0xE300000000000000;
        }

        v47 = sub_269523410(v45, v46, &v51);

        *(v43 + 4) = v47;
        _os_log_impl(&dword_26951F000, v41, v42, "#response_coordination [unrestored] speechSynthesisDidStartSpeaking (withIdentifier=%s)", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x26D640DD0](v44, -1, -1);
        MEMORY[0x26D640DD0](v43, -1, -1);
      }

      v48 = [v6 delegate];
      if (v48)
      {
        v49 = v48;
        if (a3)
        {
          a3 = sub_269562BA0();
        }

        [v49 speechSynthesisDidStartSpeakingWithIdentifier_];

        swift_unknownObjectRelease();
      }

      goto LABEL_34;
    }

    v8 = v7;
    v9 = &off_279C63000;
    if (*(v7 + 64) == 1)
    {
      if (qword_280D00240 != -1)
      {
        swift_once();
      }

      v10 = sub_269562AD0();
      __swift_project_value_buffer(v10, qword_280D002B0);

      v11 = sub_269562AC0();
      v12 = sub_269562C70();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v51 = v14;
        *v13 = 136315138;
        v15 = v8[2];
        v16 = v8[3];

        v17 = sub_269523410(v15, v16, &v51);

        *(v13 + 4) = v17;
        v9 = &off_279C63000;
        _os_log_impl(&dword_26951F000, v11, v12, "#response_coordination [post-restore] speechSynthesisDidStartSpeaking (withIdentifier=%s)", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x26D640DD0](v14, -1, -1);
        MEMORY[0x26D640DD0](v13, -1, -1);
      }

      v18 = [v6 v9[389]];
      if (v18)
      {
        v19 = v18;
        v20 = v8[2];
        v21 = v8[3];

        v22 = sub_269562BA0();

        [v19 speechSynthesisDidStartSpeakingWithIdentifier_];

        swift_unknownObjectRelease();
      }
    }

    if (v8[7])
    {
      v23 = v8[6];
      v24 = v8[7];

      if (![v6 v9[389]])
      {

        goto LABEL_34;
      }

      v25 = swift_dynamicCastObjCProtocolConditional();
      if (!v25)
      {

        swift_unknownObjectRelease();
        return;
      }

      v26 = v25;
      if (qword_280D00240 != -1)
      {
        swift_once();
      }

      v27 = sub_269562AD0();
      __swift_project_value_buffer(v27, qword_280D002B0);

      v28 = sub_269562AC0();
      v29 = sub_269562CA0();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v50 = v26;
        v31 = swift_slowAlloc();
        v51 = v31;
        *v30 = 136315394;
        *(v30 + 4) = sub_269523410(a2, a3, &v51);
        *(v30 + 12) = 2080;
        v32 = v8[2];
        v33 = v8[3];

        v34 = sub_269523410(v32, v33, &v51);

        *(v30 + 14) = v34;
        _os_log_impl(&dword_26951F000, v28, v29, "#response_coordination [post-restore] speechSynthesisDidReachMarker (startAnnotation: = %s; withIdentifier=%s)", v30, 0x16u);
        swift_arrayDestroy();
        v35 = v31;
        v26 = v50;
        MEMORY[0x26D640DD0](v35, -1, -1);
        MEMORY[0x26D640DD0](v30, -1, -1);
      }

      v36 = sub_269562BA0();

      v37 = v8[2];
      v38 = v8[3];

      v39 = sub_269562BA0();

      [v26 speechSynthesisDidReachMarker:v36 withIdentifier:v39];
      swift_unknownObjectRelease();
    }

LABEL_34:
  }
}

uint64_t sub_26955D1B8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_269562BB0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

void SRUIFMarkerCapableSpeechSynthesizer.speechSynthesisDidFinish(_:withIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_269562B00();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = [v4 queue];
  sub_269562AF0();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = v14;
  v17 = a1;
  v18 = a2;
  v19 = a3;
  sub_269562CE0();
  (*(v9 + 8))(v12, v8);
}

void sub_26955D3B0(uint64_t a1, SEL *a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  if (!a2 || !a4)
  {
    goto LABEL_22;
  }

  v9 = OBJC_IVAR___SRUIFMarkerCapableSpeechSynthesizer_supertaskLookup;
  swift_beginAccess();
  v10 = *&v8[v9];
  v11 = *(v10 + 16);
  v12 = a2;
  if (!v11 || (v13 = sub_2695535C4(a3, a4), (v14 & 1) == 0))
  {
    swift_endAccess();
LABEL_20:

    goto LABEL_22;
  }

  v15 = (*(v10 + 56) + 16 * v13);
  v17 = *v15;
  v16 = v15[1];
  swift_endAccess();
  v18 = OBJC_IVAR___SRUIFMarkerCapableSpeechSynthesizer_pendingTasks;
  swift_beginAccess();
  v19 = *&v8[v18];
  v20 = *(v19 + 16);

  if (v20)
  {
    v21 = sub_2695535C4(v17, v16);
    if (v22)
    {
      v56 = v17;
      v23 = *(*(v19 + 56) + 8 * v21);
      swift_endAccess();
      v24 = *(v23 + 48);

      v25 = [v24 count];
      if ((v25 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_62:
        swift_once();
LABEL_42:
        v37 = sub_269562AD0();
        __swift_project_value_buffer(v37, qword_280D002B0);

        v38 = sub_269562AC0();
        v39 = sub_269562C70();

        v55 = v39;
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = v38;
          v42 = swift_slowAlloc();
          v60 = v42;
          *v40 = 136315138;
          v43 = sub_269523410(v56, v16, &v60);

          *(v40 + 4) = v43;
          _os_log_impl(&dword_26951F000, v41, v55, "#response_coordination supertaskId %s: beginTimestamp unexpectedly nil", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v42);
          MEMORY[0x26D640DD0](v42, -1, -1);
          v44 = v40;
          a2 = &off_279C63000;
          MEMORY[0x26D640DD0](v44, -1, -1);
        }

        else
        {
        }

        v12 = v59;
        goto LABEL_48;
      }

      v26 = v25;
      if (v25)
      {
        v57 = v16;
        v59 = v12;
        v27 = 0;
        v61 = v23;
        while (1)
        {
          v28 = [*(v23 + 48) objectAtIndex_];
          if (v28)
          {
            v29 = v28;
            v30 = v28[4] == a3 && v28[5] == a4;
            if (v30 || (sub_269562E30() & 1) != 0)
            {
              if (*(v29 + 64) == 1)
              {

                v34 = [(SEL *)v12 beginTimestamp];

                v35 = v61;
                *(v61 + 72) = v34;
                *(v35 + 80) = 0;

                return;
              }

              v16 = v57;
              v36 = v61;
              if (v29[9] && *(v61 + 97) != 1)
              {
              }

              else
              {
                a2 = &off_279C63000;
                *(v61 + 88) = [(SEL *)v12 endTimestamp];
                *(v36 + 96) = 0;
                if (*(v36 + 80) == 1)
                {
                  if (qword_280D00240 == -1)
                  {
                    goto LABEL_42;
                  }

                  goto LABEL_62;
                }

LABEL_48:
                v45 = v61;
                v46 = *(v61 + 56);
                v58 = *(v61 + 64);
                if (*(v61 + 80) == 1)
                {
                  v47 = [(SEL *)v12 beginTimestamp];
                }

                else
                {
                  v47 = *(v61 + 72);
                }

                if (*(v45 + 96) == 1)
                {
                  v48 = [v59 a2[98]];
                }

                else
                {
                  v48 = *(v45 + 88);
                }

                v49 = objc_allocWithZone(MEMORY[0x277CEF4A8]);
                v50 = sub_269562BA0();
                v51 = [v49 initWithUtterance:v50 beginTimestamp:v47 endTimestamp:v48];

                v52 = [v8 delegate];
                if (v52)
                {
                  [v52 speechSynthesisDidFinish_];
                  swift_unknownObjectRelease();
                }

                v53 = [v8 delegate];
                if (v53)
                {
                  v54 = v53;
                  if ([v53 respondsToSelector_])
                  {
                    a4 = sub_269562BA0();
                    [v54 speechSynthesisDidFinish:v51 withIdentifier:a4];

                    swift_unknownObjectRelease();
                    goto LABEL_29;
                  }

LABEL_32:
                  swift_unknownObjectRelease();
                }

                else
                {
                }
              }

              return;
            }
          }

          ++v27;
          v23 = v61;
          if (v26 == v27)
          {

            goto LABEL_22;
          }
        }
      }

      goto LABEL_20;
    }
  }

  swift_endAccess();

LABEL_22:
  v31 = [v8 delegate];
  if (v31)
  {
    [v31 speechSynthesisDidFinish_];
    swift_unknownObjectRelease();
  }

  v32 = [v8 delegate];
  if (v32)
  {
    v33 = v32;
    if (([v32 respondsToSelector_] & 1) == 0)
    {

      goto LABEL_32;
    }

    if (a4)
    {
      a4 = sub_269562BA0();
    }

    [v33 speechSynthesisDidFinish:a2 withIdentifier:a4];

    swift_unknownObjectRelease();
LABEL_29:
  }

  else
  {
  }
}

Swift::Void __swiftcall SRUIFMarkerCapableSpeechSynthesizer.speechSynthesisDidStopSpeaking(withIdentifier:queueIsEmpty:)(Swift::String_optional withIdentifier, Swift::Bool queueIsEmpty)
{
  v3 = v2;
  object = withIdentifier.value._object;
  countAndFlagsBits = withIdentifier.value._countAndFlagsBits;
  v7 = sub_269562B00();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D00240 != -1)
  {
    swift_once();
  }

  v12 = sub_269562AD0();
  __swift_project_value_buffer(v12, qword_280D002B0);

  v13 = sub_269562AC0();
  v14 = sub_269562CA0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v32 = v7;
    v16 = v15;
    v17 = swift_slowAlloc();
    v31 = v8;
    v18 = v17;
    v33 = v17;
    *v16 = 136315394;
    v30 = v11;
    v19 = v3;
    v20 = queueIsEmpty;
    if (object)
    {
      v21 = countAndFlagsBits;
    }

    else
    {
      v21 = 7104878;
    }

    if (object)
    {
      v22 = object;
    }

    else
    {
      v22 = 0xE300000000000000;
    }

    v23 = sub_269523410(v21, v22, &v33);

    *(v16 + 4) = v23;
    queueIsEmpty = v20;
    v3 = v19;
    v11 = v30;
    *(v16 + 12) = 1024;
    *(v16 + 14) = queueIsEmpty;
    _os_log_impl(&dword_26951F000, v13, v14, "#response_coordination [pre-restore] speechSynthesisDidStopSpeaking (id = %s, queueIsEmpty=%{BOOL}d)", v16, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v18);
    v24 = v18;
    v8 = v31;
    MEMORY[0x26D640DD0](v24, -1, -1);
    v25 = v16;
    v7 = v32;
    MEMORY[0x26D640DD0](v25, -1, -1);
  }

  v26 = [v3 queue];
  sub_269562AF0();
  v27 = swift_allocObject();
  v28 = swift_unknownObjectWeakInit();
  MEMORY[0x28223BE20](v28);
  *(&v29 - 4) = v27;
  *(&v29 - 3) = countAndFlagsBits;
  *(&v29 - 2) = object;
  *(&v29 - 8) = queueIsEmpty;
  sub_269562CE0();
  (*(v8 + 8))(v11, v7);
}

void sub_26955DF14(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (a3 && (v10 = sub_269557A64(a2, a3)) != 0)
    {
      v11 = v10;
      if (v10[9])
      {
        v13 = v10[2];
        v12 = v10[3];
        v14 = OBJC_IVAR___SRUIFMarkerCapableSpeechSynthesizer_pendingTasks;
        swift_beginAccess();
        v15 = *&v9[v14];
        if (*(v15 + 16))
        {
          v16 = sub_2695535C4(v13, v12);
          if (v17)
          {
            v18 = *(*(v15 + 56) + 8 * v16);
            swift_endAccess();
            v19 = *(v18 + 48);
            v20 = [v19 dequeueObject];

            return;
          }
        }
      }

      else
      {
        if (qword_280D00240 != -1)
        {
          swift_once();
        }

        v34 = sub_269562AD0();
        __swift_project_value_buffer(v34, qword_280D002B0);

        v35 = sub_269562AC0();
        v36 = sub_269562C70();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v50[0] = v51;
          *v37 = 136315394;
          v38 = v11[2];
          v39 = v11[3];

          v40 = sub_269523410(v38, v39, v50);

          *(v37 + 4) = v40;
          *(v37 + 12) = 1024;
          *(v37 + 14) = a4 & 1;
          _os_log_impl(&dword_26951F000, v35, v36, "#response_coordination [post-restore] speechSynthesisDidStopSpeaking (id = %s, queueIsEmpty=%{BOOL}d)", v37, 0x12u);
          v41 = v51;
          __swift_destroy_boxed_opaque_existential_0(v51);
          MEMORY[0x26D640DD0](v41, -1, -1);
          MEMORY[0x26D640DD0](v37, -1, -1);
        }

        v42 = [v9 delegate];
        if (v42)
        {
          v43 = v42;
          v44 = v11[2];
          v45 = v11[3];

          v46 = sub_269562BA0();

          [v43 speechSynthesisDidStopSpeakingWithIdentifier:v46 queueIsEmpty:a4 & 1];

          swift_unknownObjectRelease();
        }

        v47 = v11[2];
        v48 = v11[3];
        swift_beginAccess();

        sub_26955B0C0(0, v47, v48);
      }

      swift_endAccess();
    }

    else
    {
      if (qword_280D00240 != -1)
      {
        swift_once();
      }

      v21 = sub_269562AD0();
      __swift_project_value_buffer(v21, qword_280D002B0);

      v22 = sub_269562AC0();
      v23 = sub_269562C90();

      if (os_log_type_enabled(v22, v23))
      {
        v51 = v4;
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v26 = v25;
        *v24 = 136315138;
        if (a3)
        {
          v27 = a2;
        }

        else
        {
          v27 = 7104878;
        }

        v49 = v9;
        v50[0] = v25;
        v28 = a4;
        if (a3)
        {
          v29 = a3;
        }

        else
        {
          v29 = 0xE300000000000000;
        }

        v30 = sub_269523410(v27, v29, v50);
        a4 = v28;
        v9 = v49;

        *(v24 + 4) = v30;
        _os_log_impl(&dword_26951F000, v22, v23, "#response_coordination [unrestored] speechSynthesisDidStopSpeaking (withIdentifier=%s)", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x26D640DD0](v26, -1, -1);
        MEMORY[0x26D640DD0](v24, -1, -1);
      }

      v31 = [v9 delegate];
      if (v31)
      {
        v32 = v31;
        if (a3)
        {
          v33 = sub_269562BA0();
        }

        else
        {
          v33 = 0;
        }

        [v32 speechSynthesisDidStopSpeakingWithIdentifier:v33 queueIsEmpty:a4 & 1];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

Swift::Void __swiftcall SRUIFMarkerCapableSpeechSynthesizer.speechSynthesisDidUpdatePowerLevel(to:)(Swift::Float to)
{
  v3 = [v1 delegate];
  if (v3)
  {
    *&v4 = to;
    [v3 speechSynthesisDidUpdatePowerLevelTo_];

    swift_unknownObjectRelease();
  }
}

void sub_26955E570(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v9 = [v5 delegate];
  if (v9)
  {
    v10 = v9;
    if (a2)
    {
      a2 = sub_269562BA0();
    }

    if (a3)
    {
      v11[4] = a3;
      v11[5] = a4;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 1107296256;
      v11[2] = sub_26955AC58;
      v11[3] = &block_descriptor_91;
      a3 = _Block_copy(v11);
    }

    [v10 speechSynthesisGetPreparedTextForIdentifier:a2 completion:a3];
    swift_unknownObjectRelease();
    _Block_release(a3);
  }
}

void sub_26955E75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    a2 = sub_269562BA0();
  }

  v5 = a2;
  (*(a4 + 16))(a4);
}

id SRUIFMarkerCapableSpeechSynthesizer.speechSynthesisRequestsForceAudioSessionActive(completion:)(void *a1, uint64_t a2)
{
  v3 = v2;
  result = [v3 delegate];
  if (result)
  {
    v7 = result;
    if ([result respondsToSelector_])
    {
      if (a1)
      {
        v8[4] = a1;
        v8[5] = a2;
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 1107296256;
        v8[2] = sub_26955E8F0;
        v8[3] = &block_descriptor_44;
        a1 = _Block_copy(v8);
      }

      [v7 speechSynthesisRequestsForceAudioSessionActiveWithCompletion_];
      _Block_release(a1);
      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_26955E8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

void sub_26955EA38(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = a1;
  swift_unknownObjectRetain();
  v6 = [v7 clientStateManagerDelegate];
  if (v6)
  {
    [v6 *a4];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
}

id SRUIFMarkerCapableSpeechSynthesizer.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

char *sub_26955EBE8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031C800, &qword_269567968);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_26955ECDC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031C820, &unk_269567480);
  v38 = a2;
  result = sub_269562E10();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_269562E70();
      sub_269562BE0();
      result = sub_269562E90();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_26955EF84(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C500, &qword_269567970);
  v40 = a2;
  result = sub_269562E10();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_269562E70();
      sub_269562BE0();
      result = sub_269562E90();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_26955F244(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_269562D60() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_269562E70();

      sub_269562BE0();
      v13 = sub_269562E90();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_26955F3F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2695535C4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_26955ECDC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_2695535C4(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_269562E60();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_26955F6F8();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_26955F570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_2695535C4(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_26955EF84(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_2695535C4(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_269562E60();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_26955F868();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

void *sub_26955F6F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031C820, &unk_269567480);
  v2 = *v0;
  v3 = sub_269562E00();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_26955F868()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C500, &qword_269567970);
  v2 = *v0;
  v3 = sub_269562E00();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_26955FA04(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26955FB64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26955FBAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26955FBFC()
{
  result = qword_28031C788;
  if (!qword_28031C788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031C788);
  }

  return result;
}

unint64_t sub_26955FC54()
{
  result = qword_28031C790;
  if (!qword_28031C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031C790);
  }

  return result;
}

uint64_t sub_26955FCF4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t objectdestroy_25Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_26955FD7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 64);
  v7[0] = *(v0 + 48);
  v7[1] = v5;
  v6 = *(v0 + 88);
  v8 = *(v0 + 80);
  sub_26955B5AC(v1, v2, v3, v4, v7, *(v0 + 168), v6, *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 176), *(v0 + 177), *(v0 + 178), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240));
}

void sub_26955FE3C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_269562B40();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = [v3 queue];
  (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6);
  v11 = sub_269562B50();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v12 = OBJC_IVAR___SRUIFMarkerCapableSpeechSynthesizer_pendingTasks;
  swift_beginAccess();
  v13 = *&v3[v12];
  if (!*(v13 + 16) || (v14 = sub_2695535C4(a1, a2), (v15 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_18;
  }

  v16 = *(*(v13 + 56) + 8 * v14);
  swift_endAccess();
  swift_beginAccess();
  v17 = *&v3[v12];
  v18 = *(v17 + 16);

  if (!v18 || (v19 = sub_2695535C4(a1, a2), (v20 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_17;
  }

  v21 = *(*(v17 + 56) + 8 * v19);
  swift_endAccess();
  v22 = [*(v21 + 48) dequeueAllObjects];
  if (!v22)
  {
LABEL_17:

LABEL_18:
    if (qword_280D00240 == -1)
    {
LABEL_19:
      v32 = sub_269562AD0();
      __swift_project_value_buffer(v32, qword_280D002B0);

      v33 = sub_269562AC0();
      v34 = sub_269562C90();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v38 = v36;
        *v35 = 136315138;
        *(v35 + 4) = sub_269523410(a1, a2, &v38);
        _os_log_impl(&dword_26951F000, v33, v34, "#response_coordination unable to find subtasks in supertask %s; could not cancel", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x26D640DD0](v36, -1, -1);
        MEMORY[0x26D640DD0](v35, -1, -1);
      }

      return;
    }

LABEL_24:
    swift_once();
    goto LABEL_19;
  }

  v23 = v22;
  _s7SubtaskCMa();
  v24 = sub_269562C10();

  *(v16 + 97) = 1;
  if (v24 >> 62)
  {
    v25 = sub_269562DF0();
    if (v25)
    {
      goto LABEL_9;
    }

LABEL_26:

    return;
  }

  v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v25)
  {
    goto LABEL_26;
  }

LABEL_9:
  v37 = v16;
  if (v25 >= 1)
  {
    v26 = 0;
    do
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x26D640270](v26, v24);
      }

      else
      {
        v27 = *(v24 + 8 * v26 + 32);
      }

      ++v26;
      v28 = [v3 synthesizer];
      v29 = *(v27 + 32);
      v30 = *(v27 + 40);

      v31 = sub_269562BA0();

      [v28 cancelSynthesisForIdentifier_];
    }

    while (v25 != v26);
    goto LABEL_26;
  }

  __break(1u);
}

id VRXFeedbackConverter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VRXFeedbackConverter.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VRXFeedbackConverter();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VRXFeedbackConverter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VRXFeedbackConverter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}