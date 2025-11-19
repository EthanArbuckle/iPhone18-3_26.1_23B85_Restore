void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id UVPreviewsServicesError(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277CCACA8];
  v10 = a1;
  v11 = [[v9 alloc] initWithFormat:v10 arguments:&a9];

  v16 = *MEMORY[0x277CCA450];
  v17[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v13 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"UVErrorDomain" code:-7201 userInfo:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

id _PreviewSceneSettingValueDescription(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 == 1100102)
  {
    v5 = UVPreviewSceneLayoutDescription([v3 integerValue]);
    goto LABEL_5;
  }

  if (a1 == 1100101)
  {
    [v3 CGSizeValue];
    v5 = NSStringFromCGSize(v9);
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

__CFString *UVPreviewSceneLayoutDescription(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"custom";
    }

    else
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown-%ld", a1];
    }
  }

  else
  {
    v2 = @"device";
  }

  return v2;
}

uint64_t sub_25F546600(uint64_t a1, int a2)
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

uint64_t sub_25F546620(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25F546668(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F546688(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_25F5466C4(uint64_t a1, unint64_t *a2)
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

uint64_t sub_25F546718(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F54679C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 32;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_25F5468E0(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v19[2] = 0;
          v19[3] = 0;
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          v19[3] = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFE0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) != 0xFFFFFFE0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 32);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_25F546AC8(uint64_t a1)
{
  sub_25F55F528();
  MEMORY[0x25F8E1080](0xD000000000000023, 0x800000025F562A60);
  v2 = *(a1 + 16);
  v3 = *(*(a1 + 24) + 8);
  sub_25F55F5C8();
  MEMORY[0x25F8E1080](0x6365707865203A27, 0xEC00000020646574);
  v4 = *(a1 + 36);
  sub_25F55F548();
  MEMORY[0x25F8E1080](0x20746F67202CLL, 0xE600000000000000);
  v5 = *(a1 + 40);
  sub_25F55F548();
  return 0;
}

BOOL sub_25F546C28(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    return (*(a2 + 16) & 1) != 0;
  }

  if (*(a2 + 16))
  {
    return 0;
  }

  v3 = *a2;
  return *(a1 + 8) == *(a2 + 8) && *a1 == *a2;
}

void static InjectedScene.Layout.fullscreen.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

void static InjectedScene.Layout.fixed(size:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
}

uint64_t InjectedScene.Layout.description.getter()
{
  if (v0[2])
  {
    return 0x657263736C6C7566;
  }

  v3 = *v0;
  v2 = v0[1];
  MEMORY[0x25F8E1080](0x206465786966, 0xE600000000000000);
  type metadata accessor for CGSize(0);
  sub_25F55F548();
  return 0;
}

BOOL static InjectedScene.Layout.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return (*(a2 + 16) & 1) == 0 && *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  }

  return (*(a2 + 16) & 1) != 0;
}

BOOL sub_25F546D68(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return (*(a2 + 16) & 1) == 0 && *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  }

  return (*(a2 + 16) & 1) != 0;
}

uint64_t sub_25F546DA4()
{
  if (v0[2])
  {
    return 0x657263736C6C7566;
  }

  v3 = *v0;
  v2 = v0[1];
  MEMORY[0x25F8E1080](0x206465786966, 0xE600000000000000);
  type metadata accessor for CGSize(0);
  sub_25F55F548();
  return 0;
}

uint64_t InjectedScene.sceneIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_25F546E78(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t static InjectedScene.checkout(inRunningTarget:)()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v1 = sub_25F55F3E8();
  v8[0] = 0;
  v2 = [v0 injectInRunningTarget:v1 error:v8];

  v3 = v8[0];
  if (v2)
  {
    swift_allocObject();
    v4 = v3;
    result = sub_25F5470A4(v2);
  }

  else
  {
    v6 = v8[0];
    sub_25F55F2C8();

    result = swift_willThrow();
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static InjectedScene.checkout(in:)(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v1 = [objc_opt_self() injectInProcess:a1 error:v8];
  v2 = v8[0];
  if (v1)
  {
    v3 = v1;
    swift_allocObject();
    v4 = v2;
    result = sub_25F5470A4(v3);
  }

  else
  {
    v6 = v8[0];
    sub_25F55F2C8();

    result = swift_willThrow();
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25F5470A4(void *a1)
{
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9A6E0, &qword_25F560B48);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  v4 = MEMORY[0x277D84F98];
  *(v3 + 16) = MEMORY[0x277D84F98];
  *(v1 + 80) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9A6E8, &qword_25F560B50);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = v4;
  *(v1 + 88) = v5;
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = v4;
  *(v1 + 96) = v6;
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = v4;
  *(v1 + 104) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9A6F0, &qword_25F560B58);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = v4;
  *(v1 + 112) = v8;
  *(v1 + 32) = a1;
  v9 = a1;
  v10 = [v9 sceneIdentifier];
  v11 = sub_25F55F3F8();
  v13 = v12;

  *(v1 + 16) = v11;
  *(v1 + 24) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9A6F8, &qword_25F560B60);
  v14 = swift_allocObject();
  *(v14 + 40) = 0;
  v15 = MEMORY[0x277D84F90];
  *(v14 + 16) = 1;
  *(v14 + 24) = v15;
  *(v14 + 32) = 0;
  *(v14 + 36) = 1;
  *(v1 + 40) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9A700, &qword_25F560B68);
  v17 = swift_allocObject();
  v17[4] = 0;
  v17[5] = 0;
  v17[2] = sub_25F54ADC8;
  v17[3] = v16;
  *(v1 + 48) = v17;
  v29 = sub_25F54ADDC;
  v30 = v17;
  v25 = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_25F547F90;
  v28 = &block_descriptor_61;
  v18 = _Block_copy(&v25);
  v19 = v9;

  [v19 setActionHandler_];
  _Block_release(v18);
  v29 = sub_25F54ADE0;
  v30 = v1;
  v25 = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_25F546E78;
  v28 = &block_descriptor_64;
  v20 = _Block_copy(&v25);

  [v19 setInvalidationHandler_];

  _Block_release(v20);
  v21 = *(v1 + 48);
  swift_beginAccess();
  v22 = *(v21 + 32);
  v23 = *(v21 + 40);
  *(v21 + 32) = sub_25F54ADE8;
  *(v21 + 40) = v1;

  sub_25F54AC54(v22);

  return v1;
}

void sub_25F547410(void *a1)
{
  v3 = sub_25F55F328();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v89 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v89 - v12;
  type metadata accessor for UVPreviewSceneAction();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    return;
  }

  v15 = v14;
  swift_beginAccess();
  v16 = *(v1 + 32);
  if (!v16)
  {
    v21 = a1;
    sub_25F55F308();
    v22 = v21;
    v23 = sub_25F55F318();
    v24 = sub_25F55F488();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138543362;
      *(v25 + 4) = v15;
      *v26 = v15;
      v27 = v22;
      _os_log_impl(&dword_25F542000, v23, v24, "Scene messenger has no receiver -- dropping message: %{public}@", v25, 0xCu);
      sub_25F54AE58(v26);
      MEMORY[0x25F8E1A30](v26, -1, -1);
      MEMORY[0x25F8E1A30](v25, -1, -1);
    }

    else
    {
      v27 = v23;
      v23 = v22;
    }

    (*(v4 + 8))(v13, v3);
    return;
  }

  v101 = v8;
  v17 = *(v1 + 40);
  v18 = a1;
  sub_25F54AEC0(v16);
  v19 = [v15 canSendResponse];
  v99 = v3;
  if (v19)
  {
    v20 = v18;
    v100 = v15;
  }

  else
  {
    v100 = 0;
  }

  v28 = sub_25F54BBF8();
  v30 = v29;
  v98 = v17;

  v31 = _s18PreviewsServicesUI18ShellToHostMessageO0G4TypeO8rawValueAESgSS_tcfC_0();
  if (v31 != 7)
  {
    v34 = v31;

    v35 = sub_25F54BE60();
    v36 = sub_25F54BCF8();
    ShellToHostMessage.init(messageType:fenceHandle:payload:)(v34, v35, v36, &v106);
    v97 = v16;
    v101 = v18;
    sub_25F55F308();
    v108 = v106;
    *v109 = *v107;
    *&v109[9] = *&v107[9];
    v54 = v106;
    v55 = *v107;
    v56 = *&v107[16];
    v57 = v107[24];
    sub_25F54AF18(&v108, &v104);
    v95 = v54;
    v94 = v57;
    sub_25F54AF74(v54, *(&v54 + 1), v55, *(&v55 + 1), v56, v57);
    v58 = v100;
    v59 = v100;
    v60 = sub_25F55F318();
    v61 = sub_25F55F478();
    v96 = v59;

    v93 = v61;
    if (!os_log_type_enabled(v60, v61))
    {
      sub_25F54AE3C(v95, *(&v54 + 1), v55, *(&v55 + 1), v56, v94);
      sub_25F54AF90(&v108);

      (*(v4 + 8))(v11, v99);
      v74 = v97;
LABEL_32:
      v104 = v58;
      v74(&v106, &v104);
      sub_25F54AC54(v74);

      sub_25F54AE3C(v106, *(&v106 + 1), *v107, *&v107[8], *&v107[16], v107[24]);
      return;
    }

    v92 = *(&v55 + 1);
    v91 = v60;
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v103 = v63;
    *v62 = 136446722;
    v64 = sub_25F559ED0();
    v66 = v65;
    sub_25F54AF90(&v108);
    v67 = sub_25F554FA8(v64, v66, &v103);

    *(v62 + 4) = v67;
    *(v62 + 12) = 2082;
    v68 = v94;
    if (v94 <= 1)
    {
      v75 = v92;
      v76 = v92;
      if (v94 || (v76 = v56) != 0)
      {
        v89 = v76;
        v104 = 0x3C6465636E6566;
        v105 = 0xE700000000000000;
        v77 = v95;
        v90 = v63;
        v78 = v94;
        sub_25F54AF74(v95, *(&v54 + 1), v55, v92, v56, v94);
        sub_25F54AF74(v77, *(&v54 + 1), v55, v75, v56, v78);
        v102 = [v89 fenceName];
        v79 = sub_25F55F5A8();
        MEMORY[0x25F8E1080](v79);

        MEMORY[0x25F8E1080](62, 0xE100000000000000);
        v80 = v92;
        sub_25F54AE3C(v77, *(&v54 + 1), v55, v92, v56, v78);
        sub_25F54AE3C(v77, *(&v54 + 1), v55, v80, v56, v78);
        v63 = v90;
        sub_25F54AE3C(v77, *(&v54 + 1), v55, v80, v56, v78);
        v73 = v104;
        v72 = v105;
        goto LABEL_28;
      }

      v87 = v95;
      v88 = v94;
      sub_25F54AE3C(v95, *(&v54 + 1), v55, v92, 0, 0);
      v71 = v87;
      v68 = v88;
      v70 = v92;
      v69 = v55;
    }

    else
    {
      v69 = v55;
      v70 = v92;
      v71 = v95;
    }

    sub_25F54AE3C(v71, *(&v54 + 1), v69, v70, v56, v68);
    v72 = 0xE500000000000000;
    v73 = 0x636E797361;
LABEL_28:
    v81 = sub_25F554FA8(v73, v72, &v103);

    *(v62 + 14) = v81;
    *(v62 + 22) = 2082;
    v82 = v100;
    if (v100)
    {
      v83 = 0x796C7065722F77;
    }

    else
    {
      v83 = 0x7961772D656E6FLL;
    }

    v84 = sub_25F554FA8(v83, 0xE700000000000000, &v103);

    *(v62 + 24) = v84;
    v85 = v91;
    _os_log_impl(&dword_25F542000, v91, v93, "Received %{public}s (%{public}s, %{public}s)", v62, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F8E1A30](v63, -1, -1);
    v86 = v62;
    v58 = v82;
    MEMORY[0x25F8E1A30](v86, -1, -1);

    (*(v4 + 8))(v11, v99);
    v74 = v97;
    goto LABEL_32;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9A720, &unk_25F560B80);
  sub_25F54AED0(&qword_27FD9A728, &qword_27FD9A720, &unk_25F560B80);
  v32 = swift_allocError();
  *v33 = v28;
  v33[1] = v30;
  swift_willThrow();
  v37 = v98;
  v38 = sub_25F54BE60();
  [v38 invalidate];

  v39 = v100;
  v40 = v32;
  sub_25F55F308();
  v41 = v32;
  v42 = sub_25F55F318();
  v43 = sub_25F55F488();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v44 = 138543362;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9A710, &qword_25F560B78);
    v98 = v37;
    sub_25F54AED0(&qword_27FD9A718, &qword_27FD9A710, &qword_25F560B78);
    swift_allocError();
    *v46 = v32;
    v47 = v32;
    v48 = _swift_stdlib_bridgeErrorToNSError();
    *(v44 + 4) = v48;
    *v45 = v48;
    _os_log_impl(&dword_25F542000, v42, v43, "%{public}@", v44, 0xCu);
    sub_25F54AE58(v45);
    MEMORY[0x25F8E1A30](v45, -1, -1);
    v39 = v100;
    MEMORY[0x25F8E1A30](v44, -1, -1);
  }

  (*(v4 + 8))(v101, v99);
  if (v39)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9A710, &qword_25F560B78);
    sub_25F54AED0(&qword_27FD9A718, &qword_27FD9A710, &qword_25F560B78);
    v49 = swift_allocError();
    *v50 = v32;
    v51 = v32;
    v52 = sub_25F55F2B8();
    v53 = [objc_opt_self() responseForError_];

    sub_25F54C0C0(v53);
    sub_25F54AC54(v16);
  }

  else
  {

    sub_25F54AC54(v16);
  }
}

void sub_25F547F90(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_25F547FF8(uint64_t a1)
{
  v1 = *(a1 + 40);
  os_unfair_lock_lock((v1 + 40));
  v2 = *(v1 + 24);
  if (v2)
  {
    *(v1 + 16) = 0;
    *(v1 + 24) = 0;
    os_unfair_lock_unlock((v1 + 40));
    sub_25F549D58(v2);
  }

  else
  {

    os_unfair_lock_unlock((v1 + 40));
  }
}

void sub_25F548080(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *a2;
  v5 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v5;
  v7 = v2;
  v8 = v3;
  sub_25F5480D4(v6);
}

void sub_25F5480D4(uint64_t a1)
{
  v2 = *(*(sub_25F55F328() - 8) + 64);
  v3 = (MEMORY[0x28223BE20])();
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v69 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v69 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v69 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v18 = &v69 - v17;
  v19 = *a1;
  v20 = *(a1 + 8);
  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  v23 = *(a1 + 32);
  v24 = *(a1 + 40);
  if (v24 <= 1)
  {
    if (*(a1 + 40))
    {
      v55 = *(a1 + 24);

      [v55 invalidate];
    }

    else if (v23)
    {
      v35 = v70[6];
      v36 = *a1;
      v37 = v23;
      sub_25F549250(v22, v23, 0);
      [v37 invalidate];

      sub_25F54AE3C(v36, v20, v21, v22, v23, 0);
    }

    else
    {
      v63 = v70[6];
      sub_25F549250(*(a1 + 24), 0, 0);
    }
  }

  else if (v24 == 2)
  {
    v38 = v15;
    v39 = v16;
    v40 = v70;
    v41 = v70[5];
    v42 = *a1;
    os_unfair_lock_lock((v41 + 40));
    *(v41 + 32) = v42;
    *(v41 + 36) = 0;
    os_unfair_lock_unlock((v41 + 40));
    sub_25F55F308();

    v43 = sub_25F55F318();
    v44 = sub_25F55F4A8();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v72 = v46;
      *v45 = 136315394;
      *(v45 + 4) = sub_25F554FA8(v40[2], v40[3], &v72);
      *(v45 + 12) = 1026;
      *(v45 + 14) = v42;
      _os_log_impl(&dword_25F542000, v43, v44, "Scene crashed: %s, pid: %{public}d", v45, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x25F8E1A30](v46, -1, -1);
      MEMORY[0x25F8E1A30](v45, -1, -1);
    }

    (*(v39 + 8))(v14, v38);
    sub_25F54DC68(v42, v40[10]);
  }

  else if (v24 == 3)
  {
    v25 = *a1;
    v26 = v15;
    v27 = v16;
    sub_25F55F308();
    v28 = sub_25F55F318();
    v29 = sub_25F55F4A8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v72 = v31;
      *v30 = 136315138;
      v71 = v25;
      v32 = sub_25F55F418();
      v34 = sub_25F554FA8(v32, v33, &v72);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_25F542000, v28, v29, "Scene suppressed presentation: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x25F8E1A30](v31, -1, -1);
      MEMORY[0x25F8E1A30](v30, -1, -1);
    }

    (*(v27 + 8))(v5, v26);
    sub_25F54DD8C(v25, v70[14]);
  }

  else
  {
    if (v21 | v20 | v19 | v22 | v23)
    {
      v47 = v15;
      v48 = v16;
      if (v19 != 1 || v21 | v20 | v22 | v23)
      {
        sub_25F55F308();
        v64 = v70;

        v65 = sub_25F55F318();
        v66 = sub_25F55F4A8();

        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v72 = v68;
          *v67 = 136315138;
          *(v67 + 4) = sub_25F554FA8(v64[2], v64[3], &v72);
          _os_log_impl(&dword_25F542000, v65, v66, "Scene requested zoom: %s", v67, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v68);
          MEMORY[0x25F8E1A30](v68, -1, -1);
          MEMORY[0x25F8E1A30](v67, -1, -1);
        }

        (*(v48 + 8))(v8, v47);
        v54 = v64[13];
      }

      else
      {
        sub_25F55F308();
        v49 = v70;

        v50 = sub_25F55F318();
        v51 = sub_25F55F4A8();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v72 = v53;
          *v52 = 136315138;
          *(v52 + 4) = sub_25F554FA8(v49[2], v49[3], &v72);
          _os_log_impl(&dword_25F542000, v50, v51, "Scene requested key status: %s", v52, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v53);
          MEMORY[0x25F8E1A30](v53, -1, -1);
          MEMORY[0x25F8E1A30](v52, -1, -1);
        }

        (*(v48 + 8))(v11, v47);
        v54 = v49[12];
      }
    }

    else
    {
      v56 = v15;
      v57 = v16;
      sub_25F55F308();
      v58 = v70;

      v59 = sub_25F55F318();
      v60 = sub_25F55F4A8();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v72 = v62;
        *v61 = 136315138;
        *(v61 + 4) = sub_25F554FA8(v58[2], v58[3], &v72);
        _os_log_impl(&dword_25F542000, v59, v60, "Scene stopped: %s", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v62);
        MEMORY[0x25F8E1A30](v62, -1, -1);
        MEMORY[0x25F8E1A30](v61, -1, -1);
      }

      (*(v57 + 8))(v18, v56);
      v54 = v58[11];
    }

    sub_25F54DB58(v54);
  }
}

void sub_25F54885C(id a1, char a2, void (*a3)(id, void))
{
  if (a2)
  {
    v6 = a1;
  }

  a3(a1, a2 & 1);

  sub_25F54A96C(a1, a2 & 1);
}

Swift::Void __swiftcall InjectedScene.ObservationToken.cancel()()
{
  v1 = *v0;
  os_unfair_lock_lock(*v0 + 8);
  sub_25F55D758(&v1[4], &v4);
  os_unfair_lock_unlock(v1 + 8);
  v2 = v4;
  if (v4)
  {

    (v2)(v3);
    sub_25F54AC54(v2);

    sub_25F54AC54(v2);
  }
}

uint64_t InjectedScene.addSceneCrashedObserver(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v9 = sub_25F5489F8(sub_25F54A290, v8, v7);

  *a3 = v9;
  return result;
}

uint64_t sub_25F5489F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27FD9A5F0 != -1)
  {
    swift_once();
  }

  v6 = off_27FD9AB68;
  os_unfair_lock_lock(off_27FD9AB68 + 6);
  v7 = *(v6 + 2) + 1;
  *(v6 + 2) = v7;
  os_unfair_lock_unlock(v6 + 6);
  os_unfair_lock_lock((a3 + 24));
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v9 = *(a3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a3 + 16);
  *(a3 + 16) = 0x8000000000000000;
  sub_25F558DF0(sub_25F54AD24, v8, v7, isUniquelyReferenced_nonNull_native);
  v11 = *(a3 + 16);
  *(a3 + 16) = v15;

  os_unfair_lock_unlock((a3 + 24));
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9A6C0, &qword_25F560B30);
  v13 = swift_allocObject();
  *(v13 + 32) = 0;
  *(v13 + 16) = sub_25F54AD60;
  *(v13 + 24) = v12;

  return v13;
}

uint64_t sub_25F548B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27FD9A5F0 != -1)
  {
    swift_once();
  }

  v6 = off_27FD9AB68;
  os_unfair_lock_lock(off_27FD9AB68 + 6);
  v7 = *(v6 + 2) + 1;
  *(v6 + 2) = v7;
  os_unfair_lock_unlock(v6 + 6);
  os_unfair_lock_lock((a3 + 24));
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v9 = *(a3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a3 + 16);
  *(a3 + 16) = 0x8000000000000000;
  sub_25F558E18(sub_25F54ACCC, v8, v7, isUniquelyReferenced_nonNull_native);
  v11 = *(a3 + 16);
  *(a3 + 16) = v15;

  os_unfair_lock_unlock((a3 + 24));
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9A6C0, &qword_25F560B30);
  v13 = swift_allocObject();
  *(v13 + 32) = 0;
  *(v13 + 16) = sub_25F54ACF4;
  *(v13 + 24) = v12;

  return v13;
}

uint64_t sub_25F548CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27FD9A5F0 != -1)
  {
    swift_once();
  }

  v6 = off_27FD9AB68;
  os_unfair_lock_lock(off_27FD9AB68 + 6);
  v7 = *(v6 + 2) + 1;
  *(v6 + 2) = v7;
  os_unfair_lock_unlock(v6 + 6);
  os_unfair_lock_lock((a3 + 24));
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v9 = *(a3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a3 + 16);
  *(a3 + 16) = 0x8000000000000000;
  sub_25F558FC4(sub_25F54ABA4, v8, v7, isUniquelyReferenced_nonNull_native);
  v11 = *(a3 + 16);
  *(a3 + 16) = v15;

  os_unfair_lock_unlock((a3 + 24));
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9A6C0, &qword_25F560B30);
  v13 = swift_allocObject();
  *(v13 + 32) = 0;
  *(v13 + 16) = sub_25F54AC9C;
  *(v13 + 24) = v12;

  return v13;
}

uint64_t sub_25F548E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27FD9A5F0 != -1)
  {
    swift_once();
  }

  v6 = off_27FD9AB68;
  os_unfair_lock_lock(off_27FD9AB68 + 6);
  v7 = *(v6 + 2) + 1;
  *(v6 + 2) = v7;
  os_unfair_lock_unlock(v6 + 6);
  os_unfair_lock_lock((a3 + 24));
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v9 = *(a3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a3 + 16);
  *(a3 + 16) = 0x8000000000000000;
  sub_25F558FEC(sub_25F54ABA4, v8, v7, isUniquelyReferenced_nonNull_native);
  v11 = *(a3 + 16);
  *(a3 + 16) = v15;

  os_unfair_lock_unlock((a3 + 24));
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9A6C0, &qword_25F560B30);
  v13 = swift_allocObject();
  *(v13 + 32) = 0;
  *(v13 + 16) = sub_25F54AC18;
  *(v13 + 24) = v12;

  return v13;
}

uint64_t InjectedScene.addSceneCrashedObserver(_:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = *(v4 + 40);
  os_unfair_lock_lock((v8 + 40));
  v9 = *(v8 + 32);
  v10 = *(v8 + 36);
  os_unfair_lock_unlock((v8 + 40));
  if ((v10 & 1) == 0)
  {
    a1(v9);
  }

  v11 = *(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  v13 = sub_25F5489F8(sub_25F54A2B8, v12, v11);

  *a3 = v13;
  return result;
}

uint64_t InjectedScene.addSceneStoppedObserver(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + 88);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v9 = sub_25F548B74(sub_25F54A290, v8, v7);

  *a3 = v9;
  return result;
}

uint64_t InjectedScene.addSuppressedFeatureObserver(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_25F548CF0(a1, a2, *(v3 + 112));
  *a3 = result;
  return result;
}

uint64_t InjectedScene.addZoomRequestObserver(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + 104);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v9 = sub_25F548B74(sub_25F54B128, v8, v7);

  *a3 = v9;
  return result;
}

void sub_25F549250(void *a1, void *a2, char a3)
{
  v4 = v3;
  v8 = sub_25F55F328();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43[1] = a1;
  v44 = a2;
  v45 = a3;
  sub_25F55F308();
  sub_25F54AC64(a1, a2, a3);
  sub_25F54AC64(a1, a2, a3);
  v13 = sub_25F55F318();
  v14 = sub_25F55F478();
  if (!os_log_type_enabled(v13, v14))
  {
    sub_25F54AC80(a1, a2, a3);
    sub_25F54AC80(a1, a2, a3);

    (*(v9 + 8))(v12, v8);
    goto LABEL_8;
  }

  v37 = v14;
  v38 = v8;
  v39 = v4;
  v15 = swift_slowAlloc();
  v36 = swift_slowAlloc();
  v43[0] = v36;
  *v15 = 136446466;
  v16 = sub_25F55A0E0(a1, a2, a3);
  v18 = v17;
  sub_25F54AC80(a1, a2, a3);
  v19 = sub_25F554FA8(v16, v18, v43);

  *(v15 + 4) = v19;
  *(v15 + 12) = 2082;
  if (!a3)
  {
    if (a2)
    {
      v41 = 0x3C6465636E6566;
      v42 = 0xE700000000000000;
      sub_25F54AC64(a1, a2, 0);
      v22 = a2;
      v40 = [v22 fenceName];
      v23 = sub_25F55F5A8();
      MEMORY[0x25F8E1080](v23);

      MEMORY[0x25F8E1080](62, 0xE100000000000000);
      sub_25F54AC80(a1, a2, 0);
      sub_25F54AC80(a1, a2, 0);

      v21 = v41;
      v20 = v42;
      goto LABEL_7;
    }

    sub_25F54AC80(a1, 0, 0);
  }

  sub_25F54AC80(a1, a2, a3);
  v20 = 0xE500000000000000;
  v21 = 0x636E797361;
LABEL_7:
  v24 = sub_25F554FA8(v21, v20, v43);

  *(v15 + 14) = v24;
  _os_log_impl(&dword_25F542000, v13, v37, "Sending %{public}s (%{public}s, one-way)", v15, 0x16u);
  v25 = v36;
  swift_arrayDestroy();
  MEMORY[0x25F8E1A30](v25, -1, -1);
  MEMORY[0x25F8E1A30](v15, -1, -1);

  (*(v9 + 8))(v12, v38);
  v4 = v39;
LABEL_8:
  v26 = 0xED0000746E657645;
  v27 = 0x6572617764726168;
  if (v45 != 1)
  {
    v27 = 0xD000000000000026;
    v26 = 0x800000025F5629C0;
  }

  if (v45)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0xD000000000000013;
  }

  if (v45)
  {
    v29 = v26;
  }

  else
  {
    v29 = 0x800000025F5629A0;
  }

  v30 = HostToShellMessage.payload.getter();
  if (v45)
  {
    v31 = 0;
  }

  else
  {
    v31 = v44;
    v32 = v44;
  }

  v33 = sub_25F54C75C(v28, v29, v30, v31);
  v34 = *(v4 + 24);
  (*(v4 + 16))();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> InjectedScene.checkout()()
{
  v2 = v0[5];
  os_unfair_lock_lock((v2 + 40));
  sub_25F54971C((v2 + 16), &v6);
  if (v1)
  {
    os_unfair_lock_unlock((v2 + 40));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((v2 + 40));
    if ((v6 & 1) == 0)
    {
      v4 = v0[2];
      v3 = v0[3];
      sub_25F54A2E4();
      swift_allocError();
      *v5 = v4;
      v5[1] = v3;
      swift_willThrow();
    }
  }
}

uint64_t sub_25F54971C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_25F55F328();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1[1])
  {
    sub_25F55F308();
    v11 = sub_25F55F318();
    v12 = sub_25F55F488();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_25F542000, v11, v12, "Can't checkout invalidated scene", v13, 2u);
      MEMORY[0x25F8E1A30](v13, -1, -1);
    }

    result = (*(v5 + 8))(v9, v4);
    v10 = 0;
    goto LABEL_7;
  }

  if (!__OFADD__(*a1, 1))
  {
    ++*a1;
    v10 = 1;
LABEL_7:
    *a2 = v10;
    return result;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall InjectedScene.relinquish()()
{
  v1 = sub_25F55F358();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25F55F378();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 40);
  os_unfair_lock_lock((v11 + 40));
  sub_25F549BD0((v11 + 16), aBlock);
  os_unfair_lock_unlock((v11 + 40));
  v12 = aBlock[0];
  if (aBlock[0])
  {
    v13 = objc_opt_self();

    if ([v13 isMainThread])
    {
      [*(v0 + 32) invalidate];
    }

    else
    {
      sub_25F54A348();
      v21 = v2;
      v19 = sub_25F55F4B8();
      aBlock[4] = sub_25F54A338;
      aBlock[5] = v0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_25F546E78;
      aBlock[3] = &block_descriptor;
      v14 = _Block_copy(aBlock);
      v20 = v6;
      v18 = v14;

      sub_25F55F368();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_25F54A3AC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9A6A0, &qword_25F560850);
      sub_25F54AED0(&qword_27FD9A6A8, &qword_27FD9A6A0, &qword_25F560850);
      sub_25F55F4F8();
      v16 = v18;
      v15 = v19;
      MEMORY[0x25F8E1110](0, v10, v5, v18);
      _Block_release(v16);

      (*(v21 + 8))(v5, v1);
      (*(v7 + 8))(v10, v20);
    }

    sub_25F549D58(v12);
  }
}

uint64_t sub_25F549BD0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_25F55F328();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[1];
  if (!v10)
  {
    sub_25F55F308();
    v13 = sub_25F55F318();
    v14 = sub_25F55F488();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_25F542000, v13, v14, "Can't relinquish invalidated scene", v15, 2u);
      MEMORY[0x25F8E1A30](v15, -1, -1);
    }

    result = (*(v5 + 8))(v9, v4);
    v10 = 0;
    goto LABEL_9;
  }

  v11 = *a1 - 1;
  if (!__OFSUB__(*a1, 1))
  {
    v12 = *a1 == 1;
    if (v11 <= 0)
    {
      *a1 = 0;
      a1[1] = 0;
    }

    else
    {
      v10 = 0;
      *a1 = v11;
    }

LABEL_9:
    *a2 = v10;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_25F549D58(uint64_t a1)
{
  v3 = *(v1 + 48);
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  result = sub_25F54AC54(v4);
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = (a1 + 40);
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;

      v10(v11);

      v8 += 2;
      --v7;
    }

    while (v7);
  }

  return result;
}

void InjectedScene.onInvalidation(_:)(void (*a1)(void))
{
  v3 = *(v1 + 40);
  os_unfair_lock_lock((v3 + 40));
  sub_25F54A494((v3 + 16), &v4);
  os_unfair_lock_unlock((v3 + 40));
  if ((v4 & 1) == 0)
  {
    a1();
  }
}

void *sub_25F549E5C@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = result[1];
  if (v5)
  {
    v8 = result;
    v9 = *result;
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    *(v10 + 24) = a3;

    v11 = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_25F54AA70(0, v5[2] + 1, 1, v5);
    }

    v13 = v11[2];
    v12 = v11[3];
    if (v13 >= v12 >> 1)
    {
      v11 = sub_25F54AA70((v12 > 1), v13 + 1, 1, v11);
    }

    v11[2] = v13 + 1;
    v14 = &v11[2 * v13];
    v14[4] = sub_25F54AC48;
    v14[5] = v10;

    *v8 = v9;
    v8[1] = v11;
    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  *a4 = v15;
  return result;
}

unint64_t sub_25F549FA8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F55F528();

  MEMORY[0x25F8E1080](v1, v2);
  MEMORY[0x25F8E1080](39, 0xE100000000000000);
  return 0xD000000000000026;
}

uint64_t sub_25F54A068(uint64_t a1)
{
  v2 = sub_25F54A8C4();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_25F54A0A4(uint64_t a1)
{
  v2 = sub_25F54A8C4();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_25F54A0E0()
{
  v1 = *(v0 + 40);
  os_unfair_lock_lock((v1 + 40));
  if (*(v1 + 37))
  {
    sub_25F54A9B8();
    v2 = swift_allocError();
    swift_willThrow();
    os_unfair_lock_unlock((v1 + 40));
  }

  else
  {
    *(v1 + 37) = 1;
    os_unfair_lock_unlock((v1 + 40));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9A6C0, &qword_25F560B30);
    v2 = swift_allocObject();
    *(v2 + 32) = 0;
    *(v2 + 16) = sub_25F54A978;
    *(v2 + 24) = v0;
  }

  return v2;
}

uint64_t InjectedScene.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 80);

  v5 = *(v0 + 88);

  v6 = *(v0 + 96);

  v7 = *(v0 + 104);

  v8 = *(v0 + 112);

  return v0;
}

uint64_t InjectedScene.__deallocating_deinit()
{
  InjectedScene.deinit();

  return MEMORY[0x2821FE8D8](v0, 120, 7);
}

uint64_t sub_25F54A258()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F54A290()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_25F54A2B8(unsigned int *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

unint64_t sub_25F54A2E4()
{
  result = qword_27FD9A688;
  if (!qword_27FD9A688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9A688);
  }

  return result;
}

unint64_t sub_25F54A348()
{
  result = qword_27FD9A690;
  if (!qword_27FD9A690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD9A690);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25F54A3AC()
{
  result = qword_27FD9A698;
  if (!qword_27FD9A698)
  {
    sub_25F55F358();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9A698);
  }

  return result;
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for InjectedScene.Layout.Value(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for InjectedScene.Layout(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for InjectedScene.ObservationToken(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for InjectedScene.ObservationToken(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for InjectedScene.Layout.Value(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_25F54A6D4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F54A6F4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

__n128 __swift_memcpy22_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 14) = *(a2 + 14);
  *a1 = result;
  return result;
}

uint64_t sub_25F54A738(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 22))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25F54A794(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 22) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 22) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_25F54A7FC(uint64_t a1, int a2)
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

uint64_t sub_25F54A844(uint64_t result, int a2, int a3)
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

unint64_t sub_25F54A894(uint64_t a1)
{
  *(a1 + 8) = sub_25F54A8C4();
  result = sub_25F54A918();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25F54A8C4()
{
  result = qword_27FD9A6B0;
  if (!qword_27FD9A6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9A6B0);
  }

  return result;
}

unint64_t sub_25F54A918()
{
  result = qword_27FD9A6B8;
  if (!qword_27FD9A6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9A6B8);
  }

  return result;
}

void sub_25F54A96C(id a1, char a2)
{
  if (a2)
  {
  }
}

void sub_25F54A978()
{
  v1 = *(v0 + 40);
  os_unfair_lock_lock((v1 + 40));
  *(v1 + 37) = 0;

  os_unfair_lock_unlock((v1 + 40));
}

unint64_t sub_25F54A9B8()
{
  result = qword_27FD9A6C8;
  if (!qword_27FD9A6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9A6C8);
  }

  return result;
}

void sub_25F54AA0C(os_unfair_lock_s *a1, uint64_t a2, void (*a3)(void, void, uint64_t))
{
  os_unfair_lock_lock(a1 + 6);
  a3(0, 0, a2);

  os_unfair_lock_unlock(a1 + 6);
}

void *sub_25F54AA70(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9A6D0, &qword_25F560B38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9A6D8, &qword_25F560B40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_25F54ABA4(char *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  return v2(&v5);
}

uint64_t sub_25F54ABE0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F54AC54(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_25F54AC64(id result, void *a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      return result;
    }

    a2 = result;
  }

  return a2;
}

uint64_t sub_25F54AC80(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      return result;
    }

    a2 = result;
  }

  return MEMORY[0x2821F96F8](result, a2);
}

uint64_t sub_25F54ACCC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_25F54AD24(int *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  return v2(&v5);
}

uint64_t sub_25F54AD90()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
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

uint64_t sub_25F54AE3C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    if (a6 != 1)
    {
      return result;
    }

    a5 = a4;
  }

  return MEMORY[0x2821F97D0](result, a2, a3, a4, a5);
}

uint64_t sub_25F54AE58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9A708, &qword_25F560B70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F54AEC0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25F54AED0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F54AF74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    if (a6 != 1)
    {
      return result;
    }

    a5 = a4;
  }

  return MEMORY[0x2821F9908](result, a2, a3, a4, a5);
}

uint64_t sub_25F54AFF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F54B044(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_25F54B098(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_25F54B0B0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_25F54B12C(uint64_t a1, char a2)
{
  sub_25F54CA78(a1, &v9);
  v4 = MEMORY[0x277D837D0];
  if (swift_dynamicCast())
  {
    return v8;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9A750, &qword_25F561810);
  *&v9 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9A758, &qword_25F560C70);
  sub_25F54CAD4();
  swift_allocError();
  v7 = v6;
  *v6 = a2;
  sub_25F54C9D0(&v9, (v6 + 8));
  sub_25F54CA78(a1, v7 + 40);
  return swift_willThrow();
}

uint64_t sub_25F54B218(uint64_t a1, char a2, unint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  sub_25F54CA78(a1, &v16);
  v12 = sub_25F54CA30(0, a3, a4);
  if (swift_dynamicCast())
  {
    return v18;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  *&v16 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9A758, &qword_25F560C70);
  sub_25F54CAD4();
  swift_allocError();
  v15 = v14;
  *v14 = a2;
  sub_25F54C9D0(&v16, (v14 + 8));
  sub_25F54CA78(a1, v15 + 40);
  return swift_willThrow();
}

uint64_t sub_25F54B328(uint64_t a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v3 = &qword_27FD9A748;
      v4 = 0x277D40FE8;
      v13 = sub_25F54CA30(0, &qword_27FD9A748, 0x277D40FE8);
      v5 = &qword_27FD9A768;
      v6 = &qword_25F560C78;
      v7 = a1;
      v8 = 1;
    }

    else
    {
      v3 = &qword_27FD9A738;
      v4 = off_279A83B38;
      v13 = sub_25F54CA30(0, &qword_27FD9A738, off_279A83B38);
      v5 = &qword_27FD9A770;
      v6 = &unk_25F560C80;
      v7 = a1;
      v8 = 2;
    }

    *&v12 = sub_25F54B218(v7, v8, v3, v4, v5, v6);
  }

  else
  {
    v13 = MEMORY[0x277D837D0];
    *&v12 = sub_25F54B12C(a1, 0);
    *(&v12 + 1) = v9;
  }

  sub_25F54C9D0(&v12, v14);
  *&v12 = 0;
  *(&v12 + 1) = 0xE000000000000000;
  sub_25F55F548();
  v10 = v12;
  __swift_destroy_boxed_opaque_existential_0(v14);
  return v10;
}

uint64_t sub_25F54B4DC()
{
  v1 = *v0;
  sub_25F55F668();
  MEMORY[0x25F8E12C0](v1);
  return sub_25F55F698();
}

uint64_t sub_25F54B550()
{
  v1 = *v0;
  sub_25F55F668();
  MEMORY[0x25F8E12C0](v1);
  return sub_25F55F698();
}

uint64_t *sub_25F54B594@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_25F54B5B8()
{
  v1 = 0x64616F6C796170;
  if (*v0 != 1)
  {
    v1 = 0x6E614865636E6566;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x546567617373656DLL;
  }
}

void sub_25F54B61C(void *a1, void (*a2)(unint64_t, uint64_t))
{
  v4 = [a1 error];
  if (!v4)
  {
    v6 = [a1 info];
    if (v6)
    {
      v7 = v6;
      if ([v6 objectForSetting_])
      {
        sub_25F55F4E8();
        swift_unknownObjectRelease();
        sub_25F54C9D0(&v13, v14);
        v8 = sub_25F54B218(v14, 1, &qword_27FD9A748, 0x277D40FE8, &qword_27FD9A768, &qword_25F560C78);

        __swift_destroy_boxed_opaque_existential_0(v14);
        v9 = [v8 dictionary];
        v10 = sub_25F55F3D8();

        v11 = v10;
LABEL_10:
        a2(v11, 0);

        return;
      }
    }

    v11 = sub_25F54C62C(MEMORY[0x277D84F90]);
    v8 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  v12 = v4;
  a2(v5, 1);
}

id UVPreviewSceneAction.__allocating_init(info:timeout:forResponseOn:withHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  if (a3)
  {
    v13[4] = a3;
    v13[5] = a4;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_25F547F90;
    v13[3] = &block_descriptor_0;
    v10 = _Block_copy(v13);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithInfo:a1 timeout:a2 forResponseOnQueue:v10 withHandler:a5];
  _Block_release(v10);

  return v11;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id UVPreviewSceneAction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_25F54BBF8()
{
  v2 = [v0 info];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_5;
  }

  if (![v2 objectForSetting_])
  {

    LOBYTE(v3) = 1;
LABEL_5:
    sub_25F54CBA0();
    swift_allocError();
    *v4 = v3;
    swift_willThrow();
    return v1;
  }

  sub_25F55F4E8();
  swift_unknownObjectRelease();
  sub_25F54C9D0(&v6, v7);
  v1 = sub_25F54B12C(v7, 0);

  __swift_destroy_boxed_opaque_existential_0(v7);
  return v1;
}

unint64_t sub_25F54BCF8()
{
  v2 = [v0 info];
  if (!v2)
  {
    sub_25F54CBA0();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
    return v0;
  }

  v0 = v2;
  if ([v2 objectForSetting_])
  {
    sub_25F55F4E8();
    swift_unknownObjectRelease();
    sub_25F54C9D0(&v7, v8);
    v3 = sub_25F54B218(v8, 1, &qword_27FD9A748, 0x277D40FE8, &qword_27FD9A768, &qword_25F560C78);

    __swift_destroy_boxed_opaque_existential_0(v8);
    if (!v1)
    {
      v4 = [v3 dictionary];
      v0 = sub_25F55F3D8();
    }

    return v0;
  }

  return sub_25F54C62C(MEMORY[0x277D84F90]);
}

uint64_t sub_25F54BE60()
{
  v2 = [v0 info];
  if (v2)
  {
    v3 = v2;
    if ([v2 objectForSetting_])
    {
      sub_25F55F4E8();
      swift_unknownObjectRelease();
      sub_25F54C9D0(&v8, v9);
      v4 = sub_25F54B218(v9, 2, &qword_27FD9A738, off_279A83B38, &qword_27FD9A770, &unk_25F560C80);

      __swift_destroy_boxed_opaque_existential_0(v9);
      if (v1)
      {
        return v5;
      }

      else
      {
        return v4;
      }
    }

    else
    {

      return 0;
    }
  }

  else
  {
    sub_25F54CBA0();
    swift_allocError();
    *v7 = 0;
    return swift_willThrow();
  }
}

void sub_25F54BF7C(uint64_t a1)
{
  if (a1)
  {
    v1 = [objc_allocWithZone(MEMORY[0x277CF0C80]) init];
    v2 = objc_allocWithZone(MEMORY[0x277D40FE8]);
    v3 = sub_25F55F3C8();
    v4 = [v2 initWithDictionary_];

    v5 = v4;
    [v1 setObject:v5 forSetting:1];
    swift_unknownObjectRelease();

    v6 = [objc_opt_self() responseWithInfo_];
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x277CF0B68]) init];
  }

  v7 = v6;
  sub_25F54C0C0(v7);
}

id sub_25F54C0C0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25F55F328();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v2 canSendResponse])
  {

    return [v2 sendResponse_];
  }

  else
  {
    sub_25F55F308();
    v10 = v2;
    v11 = sub_25F55F318();
    v12 = sub_25F55F498();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      *(v13 + 4) = v10;
      *v14 = v10;
      v15 = v10;
      _os_log_impl(&dword_25F542000, v11, v12, "Attempt to reply to invalid or one-way scene action: '%{public}@'", v13, 0xCu);
      sub_25F54CBF4(v14, &qword_27FD9A708, &qword_25F560B70);
      MEMORY[0x25F8E1A30](v14, -1, -1);
      MEMORY[0x25F8E1A30](v13, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }
}

Swift::String_optional __swiftcall UVPreviewSceneAction.keyDescription(forSetting:)(Swift::Int forSetting)
{
  if (forSetting > 2)
  {
    v2 = 0;
    v3 = 0;
  }

  else
  {
    v2 = *&aMessagetpayloa[8 * forSetting];
    v3 = *&aFencehanype[8 * forSetting + 8];
  }

  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

unint64_t sub_25F54C480()
{
  if (*v0)
  {
    result = 0xD00000000000003FLL;
  }

  else
  {
    result = 0xD000000000000037;
  }

  *v0;
  return result;
}

uint64_t sub_25F54C4C4(uint64_t a1)
{
  v2 = sub_25F54D0B4();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_25F54C500(uint64_t a1)
{
  v2 = sub_25F54D0B4();

  return MEMORY[0x28211F4A8](a1, v2);
}

id UVPreviewSceneAction.__allocating_init(info:responder:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithInfo:a1 responder:a2];

  return v5;
}

id UVPreviewSceneAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_25F54C62C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9A778, &unk_25F561AA0);
    v3 = sub_25F55F588();
    v4 = a1 + 32;

    while (1)
    {
      sub_25F54CB38(v4, &v13, &qword_27FD9A780, &unk_25F560C90);
      v5 = v13;
      v6 = v14;
      result = sub_25F558628(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25F54C9D0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

id sub_25F54C75C(uint64_t a1, uint64_t a2, id a3, void *a4)
{
  v8 = type metadata accessor for UVPreviewSceneAction();
  v9 = objc_allocWithZone(v8);
  v10 = [objc_allocWithZone(MEMORY[0x277CF0C80]) init];
  v17 = a1;
  v18 = a2;

  [v10 setObject:sub_25F55F5E8() forSetting:0];

  swift_unknownObjectRelease();
  if (a3)
  {
    v11 = objc_allocWithZone(MEMORY[0x277D40FE8]);
    v12 = sub_25F55F3C8();
    v13 = [v11 initWithDictionary_];

    a3 = v13;
  }

  [v10 setObject:a3 forSetting:1];
  swift_unknownObjectRelease();

  [v10 setObject:a4 forSetting:2];
  v16.receiver = v9;
  v16.super_class = v8;
  v14 = objc_msgSendSuper2(&v16, sel_initWithInfo_responder_, v10, 0);

  return v14;
}

uint64_t sub_25F54C8E4(uint64_t a1, unint64_t a2)
{
  sub_25F54CB38(a1, &v5, &qword_27FD9A730, &qword_25F560C58);
  if (v6)
  {
    sub_25F54C9D0(&v5, v7);
    if (a2 > 2)
    {
      v3 = 0;
    }

    else
    {
      v3 = sub_25F54B328(v7, a2);
    }

    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
    sub_25F54CBF4(&v5, &qword_27FD9A730, &qword_25F560C58);
    return 0;
  }

  return v3;
}

_OWORD *sub_25F54C9D0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_0(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x25F8E1A30);
  }

  return result;
}

uint64_t sub_25F54CA30(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_25F54CA78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_25F54CAD4()
{
  result = qword_27FD9A760;
  if (!qword_27FD9A760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD9A758, &qword_25F560C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9A760);
  }

  return result;
}

uint64_t sub_25F54CB38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_25F54CBA0()
{
  result = qword_27FD9A788;
  if (!qword_27FD9A788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9A788);
  }

  return result;
}

uint64_t sub_25F54CBF4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for UVPreviewSceneAction.MissingData(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UVPreviewSceneAction.MissingData(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for UVPreviewSceneAction.Key(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UVPreviewSceneAction.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25F54CF48()
{
  result = qword_27FD9A790;
  if (!qword_27FD9A790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9A790);
  }

  return result;
}

unint64_t sub_25F54CF9C()
{
  result = qword_27FD9A798;
  if (!qword_27FD9A798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9A798);
  }

  return result;
}

unint64_t sub_25F54CFF4()
{
  result = qword_27FD9A7A0;
  if (!qword_27FD9A7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9A7A0);
  }

  return result;
}

uint64_t sub_25F54D078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25F54D0B4()
{
  result = qword_27FD9A7A8;
  if (!qword_27FD9A7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9A7A8);
  }

  return result;
}

unint64_t sub_25F54D108()
{
  result = qword_27FD9A7B0;
  if (!qword_27FD9A7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9A7B0);
  }

  return result;
}

unint64_t sub_25F54D160()
{
  result = qword_27FD9A7B8;
  if (!qword_27FD9A7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9A7B8);
  }

  return result;
}

void sub_25F54D1B4(void *a1, void *a2, char a3, uint64_t a4, void *a5, void *a6)
{
  v86 = a6;
  v84 = a5;
  v82 = sub_25F55F3A8();
  v81 = *(v82 - 8);
  v10 = *(v81 + 64);
  v11 = MEMORY[0x28223BE20](v82);
  v79 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v80 = &v74 - v13;
  v87 = sub_25F55F348();
  v14 = *(v87 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v87);
  v78 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9A828, &qword_25F561138);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v85 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v89 = &v74 - v21;
  v22 = sub_25F55F328();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = a1;
  v100 = a2;
  v101 = a3;
  sub_25F55F308();
  sub_25F54AC64(a1, a2, a3);
  sub_25F54AC64(a1, a2, a3);
  v27 = sub_25F55F318();
  v28 = sub_25F55F478();
  if (!os_log_type_enabled(v27, v28))
  {
    sub_25F54AC80(a1, a2, a3);
    sub_25F54AC80(a1, a2, a3);

    (*(v23 + 8))(v26, v22);
    v36 = v84;
    goto LABEL_8;
  }

  v75 = v28;
  v76 = v22;
  v77 = a4;
  v83 = v14;
  v29 = swift_slowAlloc();
  v74 = swift_slowAlloc();
  v91 = v74;
  *v29 = 136446466;
  v30 = sub_25F55A0E0(a1, a2, a3);
  v32 = v31;
  sub_25F54AC80(a1, a2, a3);
  v33 = sub_25F554FA8(v30, v32, &v91);

  *(v29 + 4) = v33;
  *(v29 + 12) = 2082;
  if (!a3)
  {
    if (a2)
    {
      aBlock = 0x3C6465636E6566;
      v94 = 0xE700000000000000;
      sub_25F54AC64(a1, a2, 0);
      v37 = a2;
      v90 = [v37 fenceName];
      v38 = sub_25F55F5A8();
      MEMORY[0x25F8E1080](v38);

      MEMORY[0x25F8E1080](62, 0xE100000000000000);
      sub_25F54AC80(a1, a2, 0);
      sub_25F54AC80(a1, a2, 0);

      v35 = aBlock;
      v34 = v94;
      goto LABEL_7;
    }

    sub_25F54AC80(a1, 0, 0);
  }

  sub_25F54AC80(a1, a2, a3);
  v34 = 0xE500000000000000;
  v35 = 0x636E797361;
LABEL_7:
  v39 = sub_25F554FA8(v35, v34, &v91);

  *(v29 + 14) = v39;
  _os_log_impl(&dword_25F542000, v27, v75, "Sending %{public}s (%{public}s, w/reply)", v29, 0x16u);
  v40 = v74;
  swift_arrayDestroy();
  MEMORY[0x25F8E1A30](v40, -1, -1);
  MEMORY[0x25F8E1A30](v29, -1, -1);

  (*(v23 + 8))(v26, v76);
  v14 = v83;
  v36 = v84;
  a4 = v77;
LABEL_8:
  v41 = 0xED0000746E657645;
  v42 = 0x6572617764726168;
  if (v101 != 1)
  {
    v42 = 0xD000000000000026;
    v41 = 0x800000025F5629C0;
  }

  if (v101)
  {
    v43 = v42;
  }

  else
  {
    v43 = 0xD000000000000013;
  }

  if (v101)
  {
    v44 = v41;
  }

  else
  {
    v44 = 0x800000025F5629A0;
  }

  v83 = HostToShellMessage.payload.getter();
  if (v101)
  {
    v84 = 0;
  }

  else
  {
    v84 = v100;
  }

  v45 = a4;
  v46 = v89;
  sub_25F551790(v45, v89);
  sub_25F54A348();
  v47 = sub_25F55F4B8();
  v48 = swift_allocObject();
  v49 = v86;
  *(v48 + 16) = v36;
  *(v48 + 24) = v49;
  v97 = sub_25F551800;
  v98 = v48;
  aBlock = MEMORY[0x277D85DD0];
  v94 = 1107296256;
  v95 = sub_25F547F90;
  v96 = &block_descriptor_1;
  v50 = _Block_copy(&aBlock);
  v51 = objc_opt_self();

  v52 = [v51 responderWithHandler_];
  _Block_release(v50);

  v86 = v47;
  [v52 setQueue_];
  v53 = v85;
  sub_25F551790(v46, v85);
  v54 = v87;
  if ((*(v14 + 48))(v53, 1, v87) == 1)
  {
    sub_25F54CBF4(v53, &qword_27FD9A828, &qword_25F561138);
  }

  else
  {
    v55 = v78;
    (*(v14 + 32))(v78, v53, v54);
    v56 = v79;
    sub_25F55F388();
    v57 = v52;
    v58 = v14;
    v59 = v80;
    MEMORY[0x25F8E1000](v56, v55);
    v60 = *(v81 + 8);
    v61 = v56;
    v62 = v82;
    v60(v61, v82);
    v85 = v43;
    [v57 setTimeout_];
    v60(v59, v62);
    v43 = v85;
    (*(v58 + 8))(v55, v54);
    v52 = v57;
  }

  v63 = type metadata accessor for UVPreviewSceneAction();
  v64 = objc_allocWithZone(v63);
  v65 = [objc_allocWithZone(MEMORY[0x277CF0C80]) init];
  aBlock = v43;
  v94 = v44;

  [v65 setObject:sub_25F55F5E8() forSetting:0];

  swift_unknownObjectRelease();
  if (v83)
  {
    v66 = objc_allocWithZone(MEMORY[0x277D40FE8]);
    v67 = sub_25F55F3C8();
    v68 = [v66 initWithDictionary_];

    v69 = v68;
  }

  else
  {
    v69 = 0;
  }

  [v65 setObject:v69 forSetting:1];
  swift_unknownObjectRelease();

  v70 = v84;
  [v65 setObject:v84 forSetting:2];
  v92.receiver = v64;
  v92.super_class = v63;
  v71 = v65;
  v72 = objc_msgSendSuper2(&v92, sel_initWithInfo_responder_, v71, v52);

  sub_25F54CBF4(v89, &qword_27FD9A828, &qword_25F561138);
  v73 = *(v88 + 24);
  (*(v88 + 16))(v72);
}

void sub_25F54DB58(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 24));
  v2 = *(a1 + 16);

  os_unfair_lock_unlock((a1 + 24));
  v3 = 0;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v3;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = *(v2 + 56) + ((v8 << 10) | (16 * v9));
      v12 = *v10;
      v11 = *(v10 + 8);

      v12(v13);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v2 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }
}

void sub_25F54DC68(int a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 24));
  v4 = *(a2 + 16);

  os_unfair_lock_unlock((a2 + 24));
  v5 = 0;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;
  if (v8)
  {
    while (1)
    {
      v10 = v5;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v12 = *(v4 + 56) + ((v10 << 10) | (16 * v11));
      v14 = *v12;
      v13 = *(v12 + 8);
      v15 = a1;

      v14(&v15);

      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      return;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v4 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }
}

void sub_25F54DD8C(char a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 24));
  v4 = *(a2 + 16);

  os_unfair_lock_unlock((a2 + 24));
  v5 = 0;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;
  if (v8)
  {
    while (1)
    {
      v10 = v5;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v12 = *(v4 + 56) + ((v10 << 10) | (16 * v11));
      v14 = *v12;
      v13 = *(v12 + 8);
      v15 = a1;

      v14(&v15);

      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      return;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v4 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }
}

void sub_25F54DEB0(char a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 24));
  v4 = *(a2 + 16);

  os_unfair_lock_unlock((a2 + 24));
  v5 = 0;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = a1 & 1;
  if (v8)
  {
    while (1)
    {
      v11 = v5;
LABEL_9:
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = *(v4 + 56) + ((v11 << 10) | (16 * v12));
      v15 = *v13;
      v14 = *(v13 + 8);
      v16 = v10;

      v15(&v16);

      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = *(v4 + 64 + 8 * v11);
    ++v5;
    if (v8)
    {
      v5 = v11;
      goto LABEL_9;
    }
  }
}

uint64_t sub_25F54E000()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_25F55F528();
  MEMORY[0x25F8E1080](0xD000000000000025, 0x800000025F562EB0);
  sub_25F551320();
  v4 = sub_25F55F5A8();
  MEMORY[0x25F8E1080](v4);

  MEMORY[0x25F8E1080](0xD000000000000029, 0x800000025F562EE0);
  return 0;
}

uint64_t sub_25F54E0E4(uint64_t a1)
{
  v2 = sub_25F5515D0();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_25F54E120(uint64_t a1)
{
  v2 = sub_25F5515D0();

  return MEMORY[0x28211F4A8](a1, v2);
}

Swift::Void __swiftcall SceneHostingViewController.ObservationToken.cancel()()
{
  v1 = *v0;
  os_unfair_lock_lock(*v0 + 8);
  sub_25F55D758(&v1[4], &v4);
  os_unfair_lock_unlock(v1 + 8);
  v2 = v4;
  if (v4)
  {

    (v2)(v3);
    sub_25F54AC54(v2);

    sub_25F54AC54(v2);
  }
}

uint64_t sub_25F54E20C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_deactivatedHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_25F54A290;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_25F54AEC0(v4);
}

uint64_t sub_25F54E2AC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_25F55172C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_deactivatedHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_25F54AEC0(v3);
  return sub_25F54AC54(v8);
}

uint64_t SceneHostingViewController.deactivatedHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_deactivatedHandler);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_25F54AEC0(v3);
  return v3;
}

uint64_t SceneHostingViewController.deactivatedHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_deactivatedHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_25F54AC54(v6);
}

uint64_t SceneHostingViewController.isUserActivePreview.getter()
{
  v1 = OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_isUserActivePreview;
  swift_beginAccess();
  return *(v0 + v1);
}

void SceneHostingViewController.isUserActivePreview.setter(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_isUserActivePreview;
  swift_beginAccess();
  v1[v4] = a1;
  if ((a1 & 1) == 0)
  {
    v7.receiver = v1;
    v7.super_class = ObjectType;
    if (objc_msgSendSuper2(&v7, sel_resignFirstResponder))
    {
      v5 = *&v1[OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_firstResponderStatus];

      sub_25F54DEB0(0, v5);
    }
  }

  if (v1[v4] == 1)
  {
    v6 = [v1 traitCollection];
    [v6 activeAppearance];
  }
}

void (*SceneHostingViewController.isUserActivePreview.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_isUserActivePreview;
  *(v4 + 48) = ObjectType;
  *(v4 + 56) = v6;
  swift_beginAccess();
  return sub_25F54E658;
}

void sub_25F54E658(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 40);
    if (v4[*(v3 + 56)])
    {
      goto LABEL_6;
    }

    v5 = *(v3 + 48);
    *(v3 + 24) = v4;
    *(v3 + 32) = v5;
    if (objc_msgSendSuper2((v3 + 24), sel_resignFirstResponder))
    {
      v6 = *(*(v3 + 40) + OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_firstResponderStatus);

      sub_25F54DEB0(0, v6);
    }

    v4 = *(v3 + 40);
    if (v4[*(v3 + 56)] == 1)
    {
LABEL_6:
      v7 = [v4 traitCollection];
      [v7 activeAppearance];
    }
  }

  free(v3);
}

unint64_t sub_25F54E730()
{
  sub_25F55F528();

  v3 = *(v0 + OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_identifier);
  v1 = sub_25F55F5A8();
  MEMORY[0x25F8E1080](v1);

  return 0xD00000000000001CLL;
}

uint64_t SceneHostingViewController.readyForDisplay.getter()
{
  v1 = OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_readyForDisplay;
  swift_beginAccess();
  return *(v0 + v1);
}

void SceneHostingViewController.layout.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_host);
  if (v2)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 72);
    v5 = *(v2 + 73);
  }

  else
  {
    v4 = 0;
    v3 = 0uLL;
    v5 = 1;
  }

  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 17) = v5;
}

uint64_t SceneHostingViewController.sceneSize.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_host);
  if (!v1)
  {
    return 0;
  }

  [*(v1 + 32) sceneSize];
  return v2;
}

uint64_t SceneHostingViewController.observeFirstResponderStatus(_:)@<X0>(void (*a1)(id)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  a1([v4 isFirstResponder]);
  v8 = *&v4[OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_firstResponderStatus];
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  v10 = sub_25F548E6C(sub_25F5511BC, v9, v8);

  *a3 = v10;
  return result;
}

Swift::Void __swiftcall SceneHostingViewController.viewDidLoad()()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall SceneHostingViewController.viewDidLayoutSubviews()()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewDidLayoutSubviews);
  if (*&v0[OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_host])
  {
    v1 = *&v0[OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_host + 8];
    v2 = [v0 view];
    if (v2)
    {
      v3 = v2;
      [v2 bounds];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;

      [v1 setFrame_];
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall SceneHostingViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewDidAppear_, a1);
  v3 = OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_isUserActivePreview;
  swift_beginAccess();
  if (*(v1 + v3) == 1)
  {
    v4 = [v1 traitCollection];
    [v4 activeAppearance];
  }
}

uint64_t SceneHostingViewController.canBecomeFirstResponder.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_host))
  {
    return 0;
  }

  v1 = OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_isUserActivePreview;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_25F54EE28(SEL *a1, char a2)
{
  v8.receiver = v2;
  v8.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v8, *a1);
  if (result)
  {
    v6 = *&v2[OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_firstResponderStatus];
    v7 = result;

    sub_25F54DEB0(a2 & 1, v6);

    return v7;
  }

  return result;
}

id sub_25F54EEC8(void *a1, uint64_t a2, const char **a3, char a4)
{
  v11.receiver = a1;
  v11.super_class = swift_getObjectType();
  v6 = *a3;
  v7 = v11.receiver;
  v8 = objc_msgSendSuper2(&v11, v6);
  if (v8)
  {
    v9 = *&v7[OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_firstResponderStatus];

    sub_25F54DEB0(a4 & 1, v9);
  }

  return v8;
}

Swift::Void __swiftcall SceneHostingViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  v2 = OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_isUserActivePreview;
  swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    v3 = [v1 traitCollection];
    [v3 activeAppearance];
  }
}

id sub_25F54F054()
{
  ObjectType = swift_getObjectType();
  v2 = sub_25F55F328();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_isUserActivePreview;
  swift_beginAccess();
  if (*(v0 + v10) == 1)
  {
    sub_25F55F308();
    v11 = v0;
    v12 = sub_25F55F318();
    v13 = sub_25F55F478();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v31 = v2;
      v16 = v15;
      v33 = v15;
      *v14 = 136446210;
      v17 = sub_25F54E730();
      v19 = sub_25F554FA8(v17, v18, &v33);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_25F542000, v12, v13, "%{public}s: honoring key status request from agent; becoming first responder", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x25F8E1A30](v16, -1, -1);
      MEMORY[0x25F8E1A30](v14, -1, -1);

      (*(v3 + 8))(v9, v31);
    }

    else
    {

      (*(v3 + 8))(v9, v2);
    }

    v32.receiver = v11;
    v32.super_class = ObjectType;
    result = objc_msgSendSuper2(&v32, sel_becomeFirstResponder);
    if (result)
    {
      v29 = *&v11[OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_firstResponderStatus];

      sub_25F54DEB0(1, v29);
    }
  }

  else
  {
    sub_25F55F308();
    v20 = v0;
    v21 = sub_25F55F318();
    v22 = sub_25F55F478();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33 = v24;
      *v23 = 136446210;
      v25 = sub_25F54E730();
      v27 = sub_25F554FA8(v25, v26, &v33);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_25F542000, v21, v22, "%{public}s: ignoring key status request from agent (not user active preview)", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x25F8E1A30](v24, -1, -1);
      MEMORY[0x25F8E1A30](v23, -1, -1);
    }

    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

uint64_t SceneHostingViewController.activate(injectedScene:parentScene:layout:timeout:completion:)(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v92 = a5;
  v84 = a4;
  v85 = a2;
  v99 = *MEMORY[0x277D85DE8];
  v88 = sub_25F55F328();
  v87 = *(v88 - 8);
  v10 = *(v87 + 64);
  MEMORY[0x28223BE20](v88);
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a3;
  v13 = *(a3 + 8);
  v15 = *(a3 + 16);
  sub_25F55F308();
  v16 = v6;
  v17 = sub_25F55F318();
  v18 = sub_25F55F4A8();

  v19 = os_log_type_enabled(v17, v18);
  v91 = v14;
  v89 = a1;
  v93 = v13;
  v86 = v15;
  v90 = a6;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v95[0] = v21;
    *v20 = 136446466;
    v22 = sub_25F54E730();
    v24 = sub_25F554FA8(v22, v23, v95);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2082;
    *&v96 = v14;
    *(&v96 + 1) = v13;
    v25 = v86;
    LOBYTE(v97) = v86;
    sub_25F551320();
    v26 = sub_25F55F5A8();
    v28 = sub_25F554FA8(v26, v27, v95);

    *(v20 + 14) = v28;
    a6 = v90;
    _os_log_impl(&dword_25F542000, v17, v18, "%{public}s: activating with layout '%{public}s'", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8E1A30](v21, -1, -1);
    MEMORY[0x25F8E1A30](v20, -1, -1);

    (*(v87 + 8))(v12, v88);
    v29 = v25;
  }

  else
  {

    (*(v87 + 8))(v12, v88);
    v29 = v15;
  }

  v30 = OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_readyForDisplay;
  swift_beginAccess();
  v16[v30] = 0;
  v31 = v16;
  if (qword_27FD9A5F0 != -1)
  {
    swift_once();
  }

  v32 = off_27FD9AB68;
  os_unfair_lock_lock(off_27FD9AB68 + 6);
  v33 = *(v32 + 2) + 1;
  *(v32 + 2) = v33;
  os_unfair_lock_unlock(v32 + 6);
  LOBYTE(v95[0]) = v29;
  v34 = v91;
  *&v96 = v33;
  *(&v96 + 1) = v91;
  *&v97 = v93;
  v35 = v29;
  BYTE8(v97) = v29;
  *&v98 = v92;
  *(&v98 + 1) = a6;
  v88 = v31;
  v36 = &v31[OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_currentActivationRequest];
  v37 = *&v31[OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_currentActivationRequest + 32];
  if (v37)
  {
    v38 = v36[1];
    v87 = *v36;
    v39 = v36[2];
    v40 = v36[3];
    v41 = v36[5];
    sub_25F5511E8();
    v42 = swift_allocError();
    *v43 = v38;
    *(v43 + 8) = v39;
    *(v43 + 16) = v40 & 1;

    v44 = v87;
    sub_25F55123C(v87, v38, v39, v40, v37);
    v37(v42, 1);
    v45 = v42;
    v34 = v91;

    sub_25F55124C(v44, v38, v39, v40, v37);
    v46 = v90;
    v37 = v36[4];
  }

  else
  {

    v46 = a6;
  }

  v47 = v35 & 1;
  v48 = *v36;
  v49 = v36[1];
  v50 = v36[2];
  v51 = v36[3];
  v52 = v36[5];
  *v36 = v33;
  *(v36 + 1) = v34;
  v53 = v93;
  *(v36 + 2) = v93;
  v36[3] = v47;
  v36[4] = v92;
  v36[5] = v46;
  sub_25F55125C(&v96, v95);
  sub_25F55124C(v48, v49, v50, v51, v37);
  v54 = v89;
  v55 = v88;
  sub_25F54FA84(v89);
  v64 = swift_allocObject();
  v65 = v64;
  *(v64 + 16) = v55;
  v66 = v97;
  *(v64 + 24) = v96;
  *(v64 + 40) = v66;
  *(v64 + 56) = v98;
  v54[7] = v34;
  v54[8] = v53;
  v67 = v86;
  *(v54 + 36) = v86;
  if (v67)
  {
    v68 = *(v54 + 4);
    v94[0] = 0;
    v69 = v55;
    sub_25F55125C(&v96, v95);
    v70 = [v68 setMaximizedWithParent:v85 error:v94];
    v71 = v94[0];
    if (!v70)
    {
      goto LABEL_14;
    }

LABEL_19:
    v80 = v71;
    v81 = *(v54 + 6);
    v82 = swift_allocObject();
    v82[2] = sub_25F551304;
    v82[3] = v65;

    sub_25F54D1B4(0, 0, 2, v84, sub_25F551314, v82);

    sub_25F551294(&v96);

    goto LABEL_17;
  }

  v77 = *(v54 + 4);
  v94[0] = 0;
  v78 = v55;
  sub_25F55125C(&v96, v95);
  v79 = [v77 setMinimizedWithParent:v85 size:v94 maximumSize:v34 error:{v53, v34, v53}];
  v71 = v94[0];
  if (v79)
  {
    goto LABEL_19;
  }

LABEL_14:
  v72 = v71;
  v73 = sub_25F55F2C8();

  swift_willThrow();

  v74 = v73;
  if (v36[4] && *v36 == v96)
  {
    v56 = v98;
    v57 = v74;
    v56(v74, 1);

    v58 = *v36;
    v59 = v36[1];
    v60 = v36[2];
    v61 = v36[3];
    v62 = v36[4];
    v63 = v36[5];
    *v36 = 0u;
    *(v36 + 1) = 0u;
    *(v36 + 2) = 0u;
    sub_25F55124C(v58, v59, v60, v61, v62);
  }

  else
  {
  }

  result = sub_25F551294(&v96);
LABEL_17:
  v76 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25F54FA84(void *a1)
{
  v62[3] = *MEMORY[0x277D85DE8];
  v4 = sub_25F55F328();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &v1[OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_host];
  v11 = *&v1[OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_host];
  if (v11)
  {
    v12 = v11 == a1;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    goto LABEL_21;
  }

  v61 = v7;
  v13 = v1;
  sub_25F550654();
  v14 = a1[5];
  os_unfair_lock_lock((v14 + 40));
  sub_25F54971C((v14 + 16), v62);
  if (!v2)
  {
    os_unfair_lock_unlock((v14 + 40));
    if ((v62[0] & 1) == 0)
    {
      v51 = a1[2];
      v50 = a1[3];
      sub_25F54A2E4();
      swift_allocError();
      *v52 = v51;
      v52[1] = v50;
      swift_willThrow();

LABEL_21:
      v54 = *MEMORY[0x277D85DE8];
      return;
    }

    v15 = sub_25F54A0E0();
    v59 = v5;
    v16 = v15;
    v17 = objc_opt_self();
    v18 = a1[4];
    v62[0] = 0;
    v19 = [v17 createWithInjectedScene:v18 error:v62];
    v20 = v62[0];
    if (!v19)
    {
      v53 = v62[0];
      sub_25F55F2C8();

      swift_willThrow();
LABEL_20:

      goto LABEL_21;
    }

    v58 = v19;
    v21 = swift_allocObject();
    v60 = v16;
    v22 = v21;
    *(v21 + 16) = v1;
    v56 = a1[12];
    v23 = swift_allocObject();
    *(v23 + 16) = sub_25F551864;
    *(v23 + 24) = v22;
    v57 = v13;

    v24 = v20;
    v25 = sub_25F548B74(sub_25F551888, v23, v56);

    v26 = *v10;
    v27 = v10[1];
    v28 = v10[2];
    v56 = v10[3];
    v29 = v58;
    *v10 = a1;
    v10[1] = v29;
    v30 = v60;
    v10[2] = v25;
    v10[3] = v30;

    v55[1] = v25;

    v31 = v29;
    sub_25F5516D0(v26, v27);
    v32 = v57;
    v33 = [v57 view];
    if (v33)
    {
      v34 = v33;
      [v33 addSubview_];

      sub_25F55F308();
      v35 = v32;

      v36 = sub_25F55F318();
      v37 = sub_25F55F4A8();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v57 = v31;
        v58 = v35;
        v39 = v38;
        v40 = swift_slowAlloc();
        v62[0] = v40;
        *v39 = 136446466;
        LODWORD(v56) = v37;
        v41 = sub_25F54E730();
        v43 = sub_25F554FA8(v41, v42, v62);

        *(v39 + 4) = v43;
        *(v39 + 12) = 2082;
        *(v39 + 14) = sub_25F554FA8(a1[2], a1[3], v62);
        _os_log_impl(&dword_25F542000, v36, v56, "%{public}s: hosting scene %{public}s", v39, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8E1A30](v40, -1, -1);
        v44 = v39;
        v31 = v57;
        v35 = v58;
        MEMORY[0x25F8E1A30](v44, -1, -1);
      }

      (*(v59 + 8))(v9, v61);
      v45 = swift_allocObject();
      *(v45 + 16) = v35;
      *(v45 + 24) = a1;
      v46 = MEMORY[0x28223BE20](v45);
      v55[-2] = sub_25F5518D0;
      v55[-1] = v46;
      v47 = v35;

      os_unfair_lock_lock((v14 + 40));
      sub_25F54A494((v14 + 16), v62);
      os_unfair_lock_unlock((v14 + 40));
      if ((v62[0] & 1) == 0)
      {
        sub_25F550A4C(v47, a1);
      }

      v48 = OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_isUserActivePreview;
      swift_beginAccess();
      if (v47[v48] == 1)
      {
        v49 = [v47 traitCollection];
        [v49 activeAppearance];
      }

      goto LABEL_20;
    }

    __break(1u);
  }

  os_unfair_lock_unlock((v14 + 40));
  __break(1u);
}

uint64_t sub_25F550014(void *a1, int a2, char *a3, uint64_t a4)
{
  LODWORD(v6) = a2;
  v8 = sub_25F55F328();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v50 - v14;
  v53 = a1;
  if (v6)
  {
    v54 = v8;
    sub_25F55F308();
    v16 = a3;
    sub_25F551820(a1, 1);
    v17 = sub_25F55F318();
    v18 = sub_25F55F4A8();

    sub_25F54A96C(a1, 1);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v52 = v6;
      v6 = v19;
      v20 = swift_slowAlloc();
      v55 = a4;
      v21 = v20;
      v51 = swift_slowAlloc();
      v57 = v51;
      *v6 = 136446466;
      v22 = sub_25F54E730();
      v24 = sub_25F554FA8(v22, v23, &v57);

      *(v6 + 4) = v24;
      *(v6 + 12) = 2114;
      v25 = a1;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 14) = v26;
      *v21 = v26;
      _os_log_impl(&dword_25F542000, v17, v18, "%{public}s: failed to activate: %{public}@", v6, 0x16u);
      sub_25F54CBF4(v21, &qword_27FD9A708, &qword_25F560B70);
      v27 = v21;
      a4 = v55;
      MEMORY[0x25F8E1A30](v27, -1, -1);
      v28 = v51;
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x25F8E1A30](v28, -1, -1);
      v29 = v6;
      LOBYTE(v6) = v52;
      MEMORY[0x25F8E1A30](v29, -1, -1);
    }

    result = (*(v9 + 8))(v13, v54);
  }

  else
  {
    v55 = a4;
    v31 = OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_readyForDisplay;
    swift_beginAccess();
    a3[v31] = 1;
    sub_25F55F308();
    v32 = a3;
    v33 = sub_25F55F318();
    v34 = sub_25F55F4A8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v54 = v8;
      v37 = v6;
      v6 = v36;
      v56 = v36;
      *v35 = 136446210;
      v38 = sub_25F54E730();
      v40 = sub_25F554FA8(v38, v39, &v56);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_25F542000, v33, v34, "%{public}s: ready for display", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      v41 = v6;
      LOBYTE(v6) = v37;
      MEMORY[0x25F8E1A30](v41, -1, -1);
      MEMORY[0x25F8E1A30](v35, -1, -1);

      result = (*(v9 + 8))(v15, v54);
    }

    else
    {

      result = (*(v9 + 8))(v15, v8);
    }

    a4 = v55;
  }

  v42 = &a3[OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_currentActivationRequest];
  if (*&a3[OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_currentActivationRequest + 32])
  {
    if (*v42 == *a4)
    {
      v43 = *(a4 + 40);
      (*(a4 + 32))(v53, v6 & 1);
      v44 = *v42;
      v45 = v42[1];
      v46 = v42[2];
      v47 = v42[3];
      v48 = v42[4];
      v49 = v42[5];
      *v42 = 0u;
      *(v42 + 1) = 0u;
      *(v42 + 2) = 0u;
      return sub_25F55124C(v44, v45, v46, v47, v48);
    }
  }

  return result;
}

Swift::Void __swiftcall SceneHostingViewController.deactivate()()
{
  v1 = sub_25F55F328();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_host;
  if (*&v0[OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_host])
  {
    sub_25F55F308();
    v7 = v0;
    v8 = sub_25F55F318();
    v9 = sub_25F55F4A8();

    v10 = os_log_type_enabled(v8, v9);
    v24 = v7;
    if (v10)
    {
      v11 = swift_slowAlloc();
      v23 = v1;
      v12 = v11;
      v13 = swift_slowAlloc();
      v25 = v13;
      *v12 = 136446210;
      v14 = sub_25F54E730();
      v16 = sub_25F554FA8(v14, v15, &v25);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_25F542000, v8, v9, "%{public}s: deactivating (explicit request)", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x25F8E1A30](v13, -1, -1);
      MEMORY[0x25F8E1A30](v12, -1, -1);

      (*(v2 + 8))(v5, v23);
    }

    else
    {

      (*(v2 + 8))(v5, v1);
    }

    if (*&v0[v6])
    {
      v17 = v24;
      sub_25F550654();
      v18 = &v17[OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_deactivatedHandler];
      swift_beginAccess();
      v19 = *v18;
      if (*v18)
      {
        v20 = *(v18 + 1);

        v19(v21);
        sub_25F54AC54(v19);
      }
    }
  }
}

uint64_t sub_25F550654()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_25F55F328();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43.receiver = v1;
  v43.super_class = ObjectType;
  if (objc_msgSendSuper2(&v43, sel_resignFirstResponder))
  {
    v8 = *&v1[OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_firstResponderStatus];

    sub_25F54DEB0(0, v8);
  }

  v9 = &v1[OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_host];
  v10 = *&v1[OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_host];
  if (v10)
  {
    v39 = v4;
    v40 = v3;
    v12 = v9[1];
    v11 = v9[2];
    v13 = v9[3];

    v38 = v12;

    sub_25F55F308();
    sub_25F551734(v10, v12);
    v14 = v1;
    v15 = sub_25F55F318();
    v16 = sub_25F55F4A8();

    v41 = v12;
    sub_25F5516D0(v10, v12);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v42 = v37;
      *v17 = 136446466;
      HIDWORD(v36) = v16;
      v18 = sub_25F54E730();
      v20 = sub_25F554FA8(v18, v19, &v42);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2082;
      v21 = *(v10 + 16);
      v22 = *(v10 + 24);

      v23 = sub_25F554FA8(v21, v22, &v42);

      *(v17 + 14) = v23;
      _os_log_impl(&dword_25F542000, v15, BYTE4(v36), "%{public}s: destroying host for scene %{public}s", v17, 0x16u);
      v24 = v37;
      swift_arrayDestroy();
      MEMORY[0x25F8E1A30](v24, -1, -1);
      MEMORY[0x25F8E1A30](v17, -1, -1);
    }

    (*(v39 + 8))(v7, v40);
    os_unfair_lock_lock((v13 + 32));
    sub_25F55D758((v13 + 16), &v42);
    os_unfair_lock_unlock((v13 + 32));
    v25 = v42;
    if (v42)
    {

      (v25)(v26);
      sub_25F54AC54(v25);
      sub_25F54AC54(v25);
    }

    v27 = v38;
    [v38 removeFromSuperview];
    [v27 invalidate];
    [*(v10 + 32) setSceneResizeHandler_];
    InjectedScene.relinquish()();

    os_unfair_lock_lock((v11 + 32));
    sub_25F55D758((v11 + 16), &v42);
    os_unfair_lock_unlock((v11 + 32));
    v28 = v42;
    if (v42)
    {

      (v28)(v29);
      sub_25F54AC54(v28);
      sub_25F54AC54(v28);
    }

    sub_25F5516D0(v10, v41);
  }

  v30 = *v9;
  v31 = v9[1];
  v32 = v9[2];
  v33 = v9[3];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  sub_25F5516D0(v30, v31);
  v34 = OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_readyForDisplay;
  result = swift_beginAccess();
  v1[v34] = 0;
  return result;
}

uint64_t sub_25F550A4C(char *a1, uint64_t a2)
{
  v4 = sub_25F55F328();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_host;
  v11 = *&a1[OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_host];
  if (v11)
  {
    v12 = v11 == a2;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    sub_25F55F308();
    v13 = a1;
    v14 = sub_25F55F318();
    v15 = sub_25F55F4A8();

    v16 = os_log_type_enabled(v14, v15);
    v30 = v13;
    if (v16)
    {
      v17 = swift_slowAlloc();
      v29 = v4;
      v18 = v17;
      v19 = swift_slowAlloc();
      v31 = v19;
      *v18 = 136446210;
      v20 = sub_25F54E730();
      v22 = sub_25F554FA8(v20, v21, &v31);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_25F542000, v14, v15, "%{public}s: deactivating (scene invalidated)", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x25F8E1A30](v19, -1, -1);
      MEMORY[0x25F8E1A30](v18, -1, -1);

      result = (*(v5 + 8))(v9, v29);
    }

    else
    {

      result = (*(v5 + 8))(v9, v4);
    }

    if (*&a1[v10])
    {
      v23 = v30;
      sub_25F550654();
      v24 = &v23[OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_deactivatedHandler];
      result = swift_beginAccess();
      v25 = *v24;
      if (*v24)
      {
        v26 = *(v24 + 1);

        v25(v27);
        return sub_25F54AC54(v25);
      }
    }
  }

  return result;
}

id SceneHostingViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_25F55F3E8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id SceneHostingViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_deactivatedHandler];
  *v7 = 0;
  v7[1] = 0;
  v3[OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_isUserActivePreview] = 0;
  v8 = OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_identifier;
  if (qword_27FD9A5F0 != -1)
  {
    swift_once();
  }

  v9 = off_27FD9AB68;
  os_unfair_lock_lock(off_27FD9AB68 + 6);
  v10 = *(v9 + 2) + 1;
  *(v9 + 2) = v10;
  os_unfair_lock_unlock(v9 + 6);
  *&v3[v8] = v10;
  v11 = &v3[OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_host];
  *v11 = 0u;
  v11[1] = 0u;
  v12 = &v3[OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_currentActivationRequest];
  *v12 = 0u;
  v12[1] = 0u;
  v12[2] = 0u;
  v13 = OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_firstResponderStatus;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9A808, &qword_25F560F00);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 16) = MEMORY[0x277D84F98];
  *&v3[v13] = v14;
  v3[OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_readyForDisplay] = 0;
  if (a2)
  {
    v15 = sub_25F55F3E8();
  }

  else
  {
    v15 = 0;
  }

  v18.receiver = v3;
  v18.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v18, sel_initWithNibName_bundle_, v15, a3);

  return v16;
}

id SceneHostingViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SceneHostingViewController.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_deactivatedHandler];
  *v4 = 0;
  v4[1] = 0;
  v1[OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_isUserActivePreview] = 0;
  v5 = OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_identifier;
  if (qword_27FD9A5F0 != -1)
  {
    swift_once();
  }

  v6 = off_27FD9AB68;
  os_unfair_lock_lock(off_27FD9AB68 + 6);
  v7 = *(v6 + 2) + 1;
  *(v6 + 2) = v7;
  os_unfair_lock_unlock(v6 + 6);
  *&v1[v5] = v7;
  v8 = &v1[OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_host];
  *v8 = 0u;
  v8[1] = 0u;
  v9 = &v1[OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_currentActivationRequest];
  *v9 = 0u;
  v9[1] = 0u;
  v9[2] = 0u;
  v10 = OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_firstResponderStatus;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9A808, &qword_25F560F00);
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D84F98];
  *(v11 + 24) = 0;
  *(v11 + 16) = v12;
  *&v1[v10] = v11;
  v1[OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_readyForDisplay] = 0;
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_initWithCoder_, a1);

  if (v13)
  {
  }

  return v13;
}

id SceneHostingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25F551184()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F5511BC(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

unint64_t sub_25F5511E8()
{
  result = qword_27FD9A7F0;
  if (!qword_27FD9A7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9A7F0);
  }

  return result;
}

uint64_t sub_25F55123C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_25F55124C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_25F5512C4()
{
  v1 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

unint64_t sub_25F551320()
{
  result = qword_27FD9A7F8;
  if (!qword_27FD9A7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9A7F8);
  }

  return result;
}

uint64_t sub_25F55137C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_isUserActivePreview;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25F55143C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_25F551484(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_25F5514E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F551530(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25F5515A0(uint64_t a1)
{
  *(a1 + 8) = sub_25F5515D0();
  result = sub_25F551624();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25F5515D0()
{
  result = qword_27FD9A810;
  if (!qword_27FD9A810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9A810);
  }

  return result;
}

unint64_t sub_25F551624()
{
  result = qword_27FD9A818;
  if (!qword_27FD9A818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9A818);
  }

  return result;
}

unint64_t sub_25F55167C()
{
  result = qword_27FD9A820;
  if (!qword_27FD9A820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9A820);
  }

  return result;
}

uint64_t sub_25F5516D0(uint64_t result, void *a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25F551734(uint64_t result, void *a2)
{
  if (result)
  {

    v3 = a2;
  }

  return result;
}

uint64_t sub_25F551790(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9A828, &qword_25F561138);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_25F551820(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_25F55182C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25F551890()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *SceneMessenger.__allocating_init(actionSender:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[4] = 0;
  result[5] = 0;
  result[2] = a1;
  result[3] = a2;
  return result;
}

Swift::Void __swiftcall SceneMessenger.receiveAction(_:)(BSAction a1)
{
  isa = a1.super.isa;
  v134 = *v1;
  v3 = v134;
  v4 = sub_25F55F328();
  v137 = *(v4 - 8);
  v5 = *(v137 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v135 = v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v118 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v125 = v118 - v12;
  v124 = *(*(v3 + 88) - 8);
  v13 = *(v124 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v122 = v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v126 = v118 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v123 = v118 - v19;
  MEMORY[0x28223BE20](v18);
  v127 = v118 - v20;
  v21 = *(v3 + 104);
  v136 = v22;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = sub_25F55F4D8();
  v130 = *(v24 - 8);
  v25 = v130[8].isa;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = v118 - v27;
  v132 = AssociatedTypeWitness;
  v133 = *(AssociatedTypeWitness - 8);
  v29 = *(v133 + 64);
  v30 = MEMORY[0x28223BE20](v26);
  v32 = v118 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v131 = v118 - v33;
  type metadata accessor for UVPreviewSceneAction();
  v34 = swift_dynamicCastClass();
  if (v34)
  {
    v35 = v34;
    swift_beginAccess();
    v36 = v1[4];
    if (v36)
    {
      v129 = v21;
      v37 = v1[5];
      v38 = v36;
      v39 = isa;
      v119 = v38;
      v118[1] = v37;
      sub_25F54AEC0(v38);
      v40 = [v35 canSendResponse];
      v121 = v4;
      v120 = v39;
      if (v40)
      {
        v41 = v39;
        v128 = v35;
      }

      else
      {
        v128 = 0;
      }

      v49 = sub_25F54BBF8();
      v51 = v50;
      v118[0] = v49;
      v138 = v49;
      v139 = v50;
      v52 = v132;
      swift_getAssociatedConformanceWitness();

      sub_25F55F468();
      v53 = v133;
      if ((*(v133 + 48))(v28, 1, v52) == 1)
      {
        (v130[1].isa)(v28, v24);
        v54 = v134;
        v55 = *(v134 + 96);
        v56 = v136;
        v138 = *(v134 + 80);
        v139 = v136;
        v140 = v55;
        v141 = v129;
        type metadata accessor for SceneMessenger.DecodeError();
        swift_getWitnessTable();
        v57 = swift_allocError();
        *v58 = v118[0];
        v58[1] = v51;
        swift_willThrow();
        v59 = v56;
        v60 = v135;
        v61 = sub_25F54BE60();
        [v61 invalidate];

        v62 = *(v54 + 80);
        v63 = *(v54 + 96);
        v64 = v57;
        sub_25F55F308();
        v65 = v57;
        v66 = sub_25F55F318();
        v67 = sub_25F55F488();

        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          *v68 = 138543362;
          v138 = v62;
          v139 = v59;
          v140 = v63;
          v141 = v129;
          type metadata accessor for SceneMessenger.InvalidMessageError();
          swift_getWitnessTable();
          swift_allocError();
          *v70 = v57;
          v71 = v57;
          v72 = _swift_stdlib_bridgeErrorToNSError();
          *(v68 + 4) = v72;
          *v69 = v72;
          _os_log_impl(&dword_25F542000, v66, v67, "%{public}@", v68, 0xCu);
          sub_25F54CBF4(v69, &qword_27FD9A708, &qword_25F560B70);
          MEMORY[0x25F8E1A30](v69, -1, -1);
          MEMORY[0x25F8E1A30](v68, -1, -1);
        }

        (*(v137 + 8))(v60, v121);
        if (v128)
        {
          v138 = v62;
          v139 = v59;
          v140 = v63;
          v141 = v129;
          type metadata accessor for SceneMessenger.InvalidMessageError();
          swift_getWitnessTable();
          v73 = swift_allocError();
          *v74 = v57;
          v75 = v57;
          v76 = sub_25F55F2B8();
          v77 = [objc_opt_self() responseForError_];

          v78 = v128;
          sub_25F54C0C0(v77);

          sub_25F54AC54(v119);
          return;
        }

        sub_25F54AC54(v119);

        v79 = v120;
      }

      else
      {

        v80 = v131;
        (*(v53 + 32))(v131, v28, v52);
        (*(v53 + 16))(v32, v80, v52);
        v81 = sub_25F54BE60();
        v82 = sub_25F54BCF8();
        v83 = v136;
        v84 = v82;
        v85 = v127;
        v86 = v32;
        v87 = v136;
        (*(v129 + 56))(v86, v81, v84, v136);
        v88 = v125;
        sub_25F55F308();
        v89 = v124;
        v90 = *(v124 + 16);
        v91 = v123;
        v90(v123, v85, v83);
        v90(v126, v85, v83);
        v92 = v128;
        v93 = sub_25F55F318();
        v94 = sub_25F55F478();
        v135 = v92;

        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          v134 = swift_slowAlloc();
          v138 = v134;
          *v95 = 136446722;
          v130 = v93;
          v96 = v122;
          v90(v122, v91, v87);
          v97 = *(v89 + 8);
          LODWORD(v124) = v94;
          v98 = v87;
          v97(v91, v87);
          v99 = v129;
          v100 = *(v129 + 8);
          v101 = sub_25F55F5A8();
          v103 = v102;
          v97(v96, v98);
          v104 = sub_25F554FA8(v101, v103, &v138);

          *(v95 + 4) = v104;
          *(v95 + 12) = 2082;
          v105 = v99;
          v52 = v132;
          v106 = v126;
          v107 = SceneMessage.timingDescription.getter(v98, v105);
          v109 = v108;
          v97(v106, v98);
          v110 = v97;
          v111 = sub_25F554FA8(v107, v109, &v138);

          *(v95 + 14) = v111;
          *(v95 + 22) = 2082;
          if (v128)
          {
            v112 = 0x796C7065722F77;
          }

          else
          {
            v112 = 0x7961772D656E6FLL;
          }

          v113 = sub_25F554FA8(v112, 0xE700000000000000, &v138);

          *(v95 + 24) = v113;
          v114 = v130;
          _os_log_impl(&dword_25F542000, v130, v124, "Received %{public}s (%{public}s, %{public}s)", v95, 0x20u);
          v115 = v134;
          swift_arrayDestroy();
          MEMORY[0x25F8E1A30](v115, -1, -1);
          MEMORY[0x25F8E1A30](v95, -1, -1);

          (*(v137 + 8))(v125, v121);
        }

        else
        {
          v110 = *(v89 + 8);
          v98 = v87;
          v110(v91, v87);

          v110(v126, v87);
          (*(v137 + 8))(v88, v121);
        }

        v116 = v127;
        v138 = v128;
        v117 = v119;
        v119(v127, &v138);
        sub_25F54AC54(v117);

        v110(v116, v98);
        (*(v133 + 8))(v131, v52);
        v79 = v135;
      }
    }

    else
    {
      v42 = isa;
      sub_25F55F308();
      v43 = v42;
      v44 = sub_25F55F318();
      v45 = sub_25F55F488();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v46 = 138543362;
        *(v46 + 4) = v35;
        *v47 = v35;
        v48 = v43;
        _os_log_impl(&dword_25F542000, v44, v45, "Scene messenger has no receiver -- dropping message: %{public}@", v46, 0xCu);
        sub_25F54CBF4(v47, &qword_27FD9A708, &qword_25F560B70);
        MEMORY[0x25F8E1A30](v47, -1, -1);
        MEMORY[0x25F8E1A30](v46, -1, -1);
      }

      else
      {
        v48 = v44;
        v44 = v43;
      }

      (*(v137 + 8))(v10, v4);
    }
  }
}

void SceneMessenger.send(message:replyTimeout:replyHandler:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v111 = a4;
  v108 = a2;
  v109 = a3;
  v6 = *v4;
  v100 = sub_25F55F3A8();
  v99 = *(v100 - 8);
  v7 = *(v99 + 64);
  v8 = MEMORY[0x28223BE20](v100);
  v97 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v98 = &v93 - v10;
  v11 = sub_25F55F348();
  v112 = *(v11 - 8);
  v113 = v11;
  v12 = *(v112 + 64);
  MEMORY[0x28223BE20](v11);
  v96 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9A828, &qword_25F561138);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v110 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v115 = &v93 - v18;
  v19 = *(v6 + 96);
  v114 = v4;
  v20 = *(v6 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v105 = *(AssociatedTypeWitness - 8);
  v106 = AssociatedTypeWitness;
  v22 = *(v105 + 64);
  v23 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v104 = &v93 - v24;
  v25 = *(v20 - 8);
  v26 = v25[8];
  v27 = MEMORY[0x28223BE20](v23);
  v29 = &v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v93 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v93 - v33;
  v103 = sub_25F55F328();
  v102 = *(v103 - 8);
  v35 = *(v102 + 64);
  MEMORY[0x28223BE20](v103);
  v37 = &v93 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F55F308();
  v38 = v25[2];
  v38(v34, a1, v20);
  v107 = a1;
  v38(v32, a1, v20);
  v101 = v37;
  v39 = sub_25F55F318();
  v95 = sub_25F55F478();
  if (os_log_type_enabled(v39, v95))
  {
    v40 = swift_slowAlloc();
    v93 = v39;
    v41 = v40;
    v94 = swift_slowAlloc();
    aBlock = v94;
    *v41 = 136446466;
    v38(v29, v34, v20);
    v42 = v25[1];
    v42(v34, v20);
    v43 = *(v19 + 8);
    v44 = sub_25F55F5A8();
    v46 = v45;
    v42(v29, v20);
    v47 = sub_25F554FA8(v44, v46, &aBlock);

    *(v41 + 4) = v47;
    *(v41 + 12) = 2082;
    v48 = SceneMessage.timingDescription.getter(v20, v19);
    v50 = v49;
    v42(v32, v20);
    v51 = sub_25F554FA8(v48, v50, &aBlock);

    *(v41 + 14) = v51;
    v52 = v93;
    _os_log_impl(&dword_25F542000, v93, v95, "Sending %{public}s (%{public}s, w/reply)", v41, 0x16u);
    v53 = v94;
    swift_arrayDestroy();
    MEMORY[0x25F8E1A30](v53, -1, -1);
    MEMORY[0x25F8E1A30](v41, -1, -1);
  }

  else
  {
    v54 = v25[1];
    v54(v34, v20);

    v54(v32, v20);
  }

  (*(v102 + 8))(v101, v103);
  v55 = v104;
  (*(v19 + 32))(v20, v19);
  v56 = v106;
  swift_getAssociatedConformanceWitness();
  sub_25F55F458();
  (*(v105 + 8))(v55, v56);
  v58 = v123;
  v57 = v124;
  v106 = (*(v19 + 48))(v20, v19);
  v59 = (*(v19 + 40))(v20, v19);
  v60 = v115;
  sub_25F551790(v108, v115);
  sub_25F54A348();
  v61 = sub_25F55F4B8();
  v62 = swift_allocObject();
  v63 = v111;
  *(v62 + 16) = v109;
  *(v62 + 24) = v63;
  v121 = sub_25F551800;
  v122 = v62;
  aBlock = MEMORY[0x277D85DD0];
  v118 = 1107296256;
  v119 = sub_25F547F90;
  v120 = &block_descriptor_2;
  v64 = _Block_copy(&aBlock);
  v65 = objc_opt_self();

  v66 = [v65 responderWithHandler_];
  _Block_release(v64);

  v111 = v61;
  [v66 setQueue_];
  v67 = v60;
  v68 = v110;
  sub_25F551790(v67, v110);
  v70 = v112;
  v69 = v113;
  if ((*(v112 + 48))(v68, 1, v113) == 1)
  {
    sub_25F54CBF4(v68, &qword_27FD9A828, &qword_25F561138);
  }

  else
  {
    v71 = *(v70 + 32);
    v109 = v59;
    v72 = v96;
    v71(v96, v68, v69);
    v73 = v97;
    sub_25F55F388();
    v74 = v98;
    MEMORY[0x25F8E1000](v73, v72);
    v75 = v57;
    v76 = v58;
    v77 = v69;
    v78 = *(v99 + 8);
    v79 = v73;
    v80 = v100;
    v78(v79, v100);
    [v66 setTimeout_];
    v78(v74, v80);
    v81 = v72;
    v59 = v109;
    v82 = v77;
    v58 = v76;
    v57 = v75;
    (*(v70 + 8))(v81, v82);
  }

  v83 = type metadata accessor for UVPreviewSceneAction();
  v84 = objc_allocWithZone(v83);
  v85 = [objc_allocWithZone(MEMORY[0x277CF0C80]) init];
  aBlock = v58;
  v118 = v57;

  [v85 setObject:sub_25F55F5E8() forSetting:0];

  swift_unknownObjectRelease();
  if (v106)
  {
    v86 = objc_allocWithZone(MEMORY[0x277D40FE8]);
    v87 = sub_25F55F3C8();
    v88 = [v86 initWithDictionary_];

    v89 = v88;
  }

  else
  {
    v89 = 0;
  }

  [v85 setObject:v89 forSetting:1];
  swift_unknownObjectRelease();

  [v85 setObject:v59 forSetting:2];
  v116.receiver = v84;
  v116.super_class = v83;
  v90 = v85;
  v91 = objc_msgSendSuper2(&v116, sel_initWithInfo_responder_, v90, v66);

  sub_25F54CBF4(v115, &qword_27FD9A828, &qword_25F561138);
  v92 = v114[3];
  (v114[2])(v91);
}

void SceneMessenger.send(message:)(uint64_t a1)
{
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = *(AssociatedTypeWitness - 8);
  v57 = AssociatedTypeWitness;
  v6 = *(v56 + 64);
  v7 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v55 = &v49[-v8];
  v9 = *(v4 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v7);
  v13 = &v49[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v49[-v15];
  MEMORY[0x28223BE20](v14);
  v18 = &v49[-v17];
  v19 = sub_25F55F328();
  v53 = *(v19 - 8);
  v54 = v19;
  v20 = *(v53 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v49[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25F55F308();
  v23 = v9[2];
  v23(v18, a1, v4);
  v58 = a1;
  v23(v16, a1, v4);
  v52 = v22;
  v24 = sub_25F55F318();
  v25 = sub_25F55F478();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v50 = v25;
    v27 = v26;
    v51 = swift_slowAlloc();
    v60[0] = v51;
    *v27 = 136446466;
    v23(v13, v18, v4);
    v28 = v9[1];
    v28(v18, v4);
    v29 = *(v3 + 8);
    v30 = v24;
    v31 = sub_25F55F5A8();
    v33 = v32;
    v28(v13, v4);
    v34 = sub_25F554FA8(v31, v33, v60);

    *(v27 + 4) = v34;
    *(v27 + 12) = 2082;
    v35 = SceneMessage.timingDescription.getter(v4, v3);
    v37 = v36;
    v28(v16, v4);
    v38 = sub_25F554FA8(v35, v37, v60);

    *(v27 + 14) = v38;
    _os_log_impl(&dword_25F542000, v30, v50, "Sending %{public}s (%{public}s, one-way)", v27, 0x16u);
    v39 = v51;
    swift_arrayDestroy();
    MEMORY[0x25F8E1A30](v39, -1, -1);
    MEMORY[0x25F8E1A30](v27, -1, -1);
  }

  else
  {
    v40 = v9[1];
    v40(v18, v4);

    v40(v16, v4);
  }

  (*(v53 + 8))(v52, v54);
  v41 = v55;
  (*(v3 + 32))(v4, v3);
  v42 = v57;
  swift_getAssociatedConformanceWitness();
  sub_25F55F458();
  (*(v56 + 8))(v41, v42);
  v43 = v60[0];
  v44 = v60[1];
  v45 = (*(v3 + 48))(v4, v3);
  v46 = (*(v3 + 40))(v4, v3);
  v47 = sub_25F54C75C(v43, v44, v45, v46);
  v48 = *(v59 + 24);
  (*(v59 + 16))();
}

void SceneMessage.timing.getter(uint64_t a1@<X1>, BOOL *a2@<X8>)
{
  v3 = (*(a1 + 40))();
  v4 = v3;
  if (v3)
  {
  }

  *a2 = v4 == 0;
}

uint64_t SceneMessage.timingDescription.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 40))();
  if (!v2)
  {
    return 0x636E797361;
  }

  v3 = v2;
  [v3 fenceName];
  v4 = sub_25F55F5A8();
  MEMORY[0x25F8E1080](v4);

  MEMORY[0x25F8E1080](62, 0xE100000000000000);

  return 0x3C6465636E6566;
}

uint64_t SceneMessage.description.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = v14 - v7;
  v9 = (*(a2 + 64))(a1, a2);
  if (v10)
  {
    v15 = 40;
    v16 = 0xE100000000000000;
    MEMORY[0x25F8E1080](v9);
    MEMORY[0x25F8E1080](41, 0xE100000000000000);

    v12 = v15;
    v11 = v16;
  }

  else
  {
    v12 = 0;
    v11 = 0xE000000000000000;
  }

  v15 = 46;
  v16 = 0xE100000000000000;
  (*(a2 + 32))(a1, a2);
  swift_getAssociatedConformanceWitness();
  sub_25F55F458();
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  MEMORY[0x25F8E1080](v14[0], v14[1]);

  MEMORY[0x25F8E1080](v12, v11);

  return v15;
}

uint64_t SceneUpdateTiming.description.getter()
{
  if (*v0)
  {
    result = 0x636E797361;
  }

  else
  {
    result = 0x6465636E6566;
  }

  *v0;
  return result;
}

uint64_t SceneUpdateTiming.unknownTimingError.getter()
{
  v1 = *v0;
  sub_25F555624();
  result = swift_allocError();
  *v3 = v1;
  return result;
}

unint64_t sub_25F553A78()
{
  v1 = *v0;
  sub_25F55F528();

  if (v1)
  {
    v2 = 0x636E797361;
  }

  else
  {
    v2 = 0x6465636E6566;
  }

  if (v1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE600000000000000;
  }

  MEMORY[0x25F8E1080](v2, v3);

  MEMORY[0x25F8E1080](39, 0xE100000000000000);
  return 0xD00000000000001ELL;
}

uint64_t sub_25F553B38(uint64_t a1)
{
  v2 = sub_25F555DD8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_25F553B74(uint64_t a1)
{
  v2 = sub_25F555DD8();

  return MEMORY[0x28211F4A8](a1, v2);
}

PreviewsServicesUI::SceneUpdateTiming_optional __swiftcall SceneUpdateTiming.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25F55F598();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25F553C14(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x636E797361;
  }

  else
  {
    v4 = 0x6465636E6566;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x636E797361;
  }

  else
  {
    v6 = 0x6465636E6566;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F55F5D8();
  }

  return v9 & 1;
}

uint64_t sub_25F553CB4()
{
  v1 = *v0;
  sub_25F55F668();
  sub_25F55F428();

  return sub_25F55F698();
}

uint64_t sub_25F553D30()
{
  *v0;
  sub_25F55F428();
}

uint64_t sub_25F553D98()
{
  v1 = *v0;
  sub_25F55F668();
  sub_25F55F428();

  return sub_25F55F698();
}

uint64_t sub_25F553E10@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25F55F598();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_25F553E70(uint64_t *a1@<X8>)
{
  v2 = 0x6465636E6566;
  if (*v1)
  {
    v2 = 0x636E797361;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F553EA8()
{
  if (*v0)
  {
    result = 0x636E797361;
  }

  else
  {
    result = 0x6465636E6566;
  }

  *v0;
  return result;
}

uint64_t sub_25F553F48()
{
  v1 = *v0;
  sub_25F55F668();
  MEMORY[0x25F8E12C0](v1);
  return sub_25F55F698();
}

uint64_t sub_25F553FBC()
{
  v1 = *v0;
  sub_25F55F668();
  MEMORY[0x25F8E12C0](v1);
  return sub_25F55F698();
}

void *sub_25F554000@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

id static SceneMessage.require(_:for:)(void *a1, uint64_t a2)
{
  if (a1)
  {
    return a1;
  }

  type metadata accessor for FenceError();
  swift_getWitnessTable();
  swift_allocError();
  v5 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(v5, a2, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t static SceneMessage.requireNil(_:for:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    type metadata accessor for FenceError();
    swift_getWitnessTable();
    swift_allocError();
    v4 = v3;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    (*(*(AssociatedTypeWitness - 8) + 16))(v4, a2, AssociatedTypeWitness);
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25F55424C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = v21 - v10;
  v12 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v2, v3);
  LODWORD(v3) = swift_getEnumCaseMultiPayload();
  (*(v7 + 32))(v11, v14, AssociatedTypeWitness);
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  sub_25F55F528();
  MEMORY[0x25F8E1080](0x206567617373654DLL, 0xE800000000000000);
  v16 = sub_25F55F6A8();
  MEMORY[0x25F8E1080](v16);

  MEMORY[0x25F8E1080](46, 0xE100000000000000);
  sub_25F55F5B8();
  if (v3 == 1)
  {
    v17 = 0xD00000000000001FLL;
    v18 = 0x800000025F562F60;
  }

  else
  {
    v18 = 0x800000025F562F80;
    v17 = 0xD000000000000018;
  }

  MEMORY[0x25F8E1080](v17, v18);
  v19 = v21[0];
  (*(v7 + 8))(v11, AssociatedTypeWitness);
  return v19;
}

uint64_t sub_25F55450C()
{
  swift_getWitnessTable();

  return sub_25F54A034();
}

uint64_t sub_25F554560(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_25F55D41C(a1, WitnessTable);
}

uint64_t sub_25F5545B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28211F4B8](a1, WitnessTable);
}

uint64_t sub_25F554608(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28211F4A8](a1, WitnessTable);
}

void SceneMessageResponder.reply(error:)()
{
  v1 = *v0;
  v2 = sub_25F55F2B8();
  v3 = [objc_opt_self() responseForError_];

  sub_25F54C0C0(v3);
}

void SceneMessageResponder.reply(result:)(uint64_t a1, char a2)
{
  v3 = *v2;
  if (a2)
  {
    v4 = sub_25F55F2B8();
    v5 = [objc_opt_self() responseForError_];
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x277CF0B68]) init];
  }

  sub_25F54C0C0(v5);
}

uint64_t sub_25F554794@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v11 = *(a2 + a3 - 16);
  v12 = *(a2 + a3 - 32);
  v5 = *a1;
  swift_beginAccess();
  v6 = *(v5 + 32);
  v7 = *(v5 + 40);
  if (v6)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v12;
    *(v8 + 32) = v11;
    *(v8 + 48) = v6;
    *(v8 + 56) = v7;
    v9 = sub_25F555F74;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;
  return sub_25F54AEC0(v6);
}

uint64_t sub_25F55483C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = a3 + a4;
    v8 = swift_allocObject();
    v9 = *(v7 - 16);
    *(v8 + 16) = *(v7 - 32);
    *(v8 + 32) = v9;
    *(v8 + 48) = v5;
    *(v8 + 56) = v6;
    v10 = sub_25F555F4C;
  }

  else
  {
    v10 = 0;
    v8 = 0;
  }

  v11 = *a2;
  swift_beginAccess();
  v12 = *(v11 + 32);
  v13 = *(v11 + 40);
  *(v11 + 32) = v10;
  *(v11 + 40) = v8;
  sub_25F54AEC0(v5);
  return sub_25F54AC54(v12);
}

uint64_t SceneMessenger.messageReceiver.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_25F54AEC0(v1);
  return v1;
}

uint64_t SceneMessenger.messageReceiver.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_25F54AC54(v5);
}

void *SceneMessenger.init(actionSender:)(uint64_t a1, uint64_t a2)
{
  v2[4] = 0;
  v2[5] = 0;
  v2[2] = a1;
  v2[3] = a2;
  return v2;
}

unint64_t sub_25F554A08(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  return sub_25F5555A0();
}

uint64_t sub_25F554A18()
{
  swift_getWitnessTable();

  return sub_25F54A034();
}

uint64_t sub_25F554A6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_25F55D41C(a1, WitnessTable);
}

uint64_t sub_25F554AC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28211F4B8](a1, WitnessTable);
}

uint64_t sub_25F554B14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28211F4A8](a1, WitnessTable);
}

unint64_t sub_25F554B68(uint64_t a1, uint64_t a2)
{
  sub_25F55F528();

  MEMORY[0x25F8E1080](a1, a2);
  MEMORY[0x25F8E1080](39, 0xE100000000000000);
  return 0xD000000000000011;
}

unint64_t sub_25F554BF8(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_25F554B68(*v1, v1[1]);
}

uint64_t sub_25F554C0C()
{
  swift_getWitnessTable();

  return sub_25F54A034();
}

uint64_t sub_25F554C60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_25F55D41C(a1, WitnessTable);
}

uint64_t sub_25F554CB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28211F4B8](a1, WitnessTable);
}

uint64_t sub_25F554D08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28211F4A8](a1, WitnessTable);
}

void *SceneMessenger.deinit()
{
  v1 = v0[3];

  v2 = v0[5];
  sub_25F54AC54(v0[4]);
  return v0;
}

uint64_t SceneMessenger.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];
  sub_25F54AC54(v0[4]);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_25F554DC4(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_25F554E10(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

_BYTE **sub_25F554E70(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_25F554E80(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_25F554F1C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_25F554FA8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_25F554FA8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25F5550C4(v11, 0, 0, 1, a1, a2);
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
    sub_25F54CA78(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t sub_25F555074()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25F5550C4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25F5551D0(a5, a6);
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
    result = sub_25F55F538();
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

uint64_t sub_25F5551D0(uint64_t a1, unint64_t a2)
{
  v4 = sub_25F55521C(a1, a2);
  sub_25F55534C(&unk_28718F970);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_25F55521C(uint64_t a1, unint64_t a2)
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

  v6 = sub_25F555438(v5, 0);
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

  result = sub_25F55F538();
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
        v10 = sub_25F55F448();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25F555438(v10, 0);
        result = sub_25F55F518();
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

uint64_t sub_25F55534C(uint64_t result)
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

  result = sub_25F5554AC(result, v12, 1, v3);
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

void *sub_25F555438(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9AA60, &unk_25F5617E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25F5554AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9AA60, &unk_25F5617E0);
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

unint64_t sub_25F5555A0()
{
  sub_25F55F528();

  v0 = sub_25F55F6A8();
  MEMORY[0x25F8E1080](v0);

  return 0xD000000000000011;
}

unint64_t sub_25F555624()
{
  result = qword_27FD9A838;
  if (!qword_27FD9A838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9A838);
  }

  return result;
}

unint64_t sub_25F555694()
{
  result = qword_27FD9A840;
  if (!qword_27FD9A840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9A840);
  }

  return result;
}

unint64_t sub_25F5556EC()
{
  result = qword_27FD9A848[0];
  if (!qword_27FD9A848[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD9A848);
  }

  return result;
}

__n128 sub_25F555754(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SceneUpdateSeed(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SceneUpdateSeed(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_25F5558F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F555964(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_23;
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if ((v8 + 1) <= 3)
  {
    v13 = ((a2 + ~(-1 << v10) - 254) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v13 < 2)
    {
LABEL_23:
      v15 = *(a1 + v8);
      if (v15 >= 2)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_23;
  }

LABEL_12:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return (v9 | v14) + 255;
}

void sub_25F555AA8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v10 = v9 + 1;
  if (a3 < 0xFF)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 + ~(-1 << (8 * v10)) - 254) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFE)
  {
    v12 = a2 - 255;
    if (v10 >= 4)
    {
      bzero(a1, v9 + 1);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v13 = (v12 >> (8 * v10)) + 1;
    if (v9 != -1)
    {
      v16 = v12 & ~(-1 << (8 * v10));
      bzero(a1, v10);
      if (v10 != 3)
      {
        if (v10 == 2)
        {
          *a1 = v16;
          if (v11 > 1)
          {
LABEL_37:
            if (v11 == 2)
            {
              *&a1[v10] = v13;
            }

            else
            {
              *&a1[v10] = v13;
            }

            return;
          }
        }

        else
        {
          *a1 = v12;
          if (v11 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v11)
        {
          a1[v10] = v13;
        }

        return;
      }

      *a1 = v16;
      a1[2] = BYTE2(v16);
    }

    if (v11 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v11 <= 1)
  {
    if (v11)
    {
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v9] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v11 == 2)
  {
    *&a1[v10] = 0;
    goto LABEL_22;
  }

  *&a1[v10] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

uint64_t sub_25F555C8C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F555CD0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_25F555DA8(uint64_t a1)
{
  *(a1 + 8) = sub_25F555DD8();
  result = sub_25F555E2C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25F555DD8()
{
  result = qword_27FD9AA50;
  if (!qword_27FD9AA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9AA50);
  }

  return result;
}

unint64_t sub_25F555E2C()
{
  result = qword_27FD9AA58;
  if (!qword_27FD9AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9AA58);
  }

  return result;
}

uint64_t sub_25F555EC8(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25F555F14()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25F555F4C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

uint64_t sub_25F555F74()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

uint64_t previewImage(category:description:file:line:)()
{
  v0 = sub_25F55F2F8();
  v1 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];

  return MEMORY[0x28212FFE8](v1);
}

id previewImage(category:description:file:line:)()
{
  v0 = sub_25F55F2F8();
  v1 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];

  return v1;
}

uint64_t PreviewPreferences.InterfaceOrientation.description.getter()
{
  v1 = 0x7469617274726F70;
  *v0;
  if (*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x70616373646E616CLL;
  }
}

PreviewsServicesUI::PreviewPreferences::InterfaceOrientation_optional __swiftcall PreviewPreferences.InterfaceOrientation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25F55F598();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25F556160()
{
  v1 = *v0;
  sub_25F55F668();
  sub_25F55F428();

  return sub_25F55F698();
}

uint64_t sub_25F556240()
{
  *v0;
  *v0;
  *v0;
  sub_25F55F428();
}

uint64_t sub_25F55630C()
{
  v1 = *v0;
  sub_25F55F668();
  sub_25F55F428();

  return sub_25F55F698();
}

void sub_25F5563F4(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x7469617274726F70;
  v4 = 0xED00007466654C65;
  if (*v1 != 2)
  {
    v4 = 0xEE00746867695265;
  }

  if (*v1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x800000025F5628E0;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x70616373646E616CLL;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_25F556490()
{
  v1 = 0x7469617274726F70;
  *v0;
  if (*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x70616373646E616CLL;
  }
}

uint64_t PreviewPreferences.preferredSize.getter()
{
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

double static PreviewPreferences.default.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27FD9A5E8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = word_27FD9AA78;
  v2 = HIBYTE(word_27FD9AA78);
  result = *&xmmword_27FD9AA68;
  *a1 = xmmword_27FD9AA68;
  *(a1 + 16) = v1;
  *(a1 + 17) = v2;
  return result;
}

uint64_t sub_25F5565E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v4 = 0x6572726566657270;
  }

  if (v3)
  {
    v5 = 0xED0000657A695364;
  }

  else
  {
    v5 = 0x800000025F562A20;
  }

  if (*a2)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v6 = 0x6572726566657270;
  }

  if (*a2)
  {
    v7 = 0x800000025F562A20;
  }

  else
  {
    v7 = 0xED0000657A695364;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F55F5D8();
  }

  return v9 & 1;
}

uint64_t sub_25F5566A0()
{
  v1 = *v0;
  sub_25F55F668();
  sub_25F55F428();

  return sub_25F55F698();
}

uint64_t sub_25F556734()
{
  *v0;
  sub_25F55F428();
}

uint64_t sub_25F5567B4()
{
  v1 = *v0;
  sub_25F55F668();
  sub_25F55F428();

  return sub_25F55F698();
}

uint64_t sub_25F556844@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25F55F598();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_25F5568A4(unint64_t *a1@<X8>)
{
  v2 = 0x800000025F562A20;
  v3 = 0x6572726566657270;
  if (*v1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v2 = 0xED0000657A695364;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t PreviewPreferences.dictionaryValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v16 = MEMORY[0x277D84F98];
  sub_25F556C18(v1, v2, v3, 0);
  v15 = MEMORY[0x277D837D0];
  v5 = 0x7469617274726F70;
  v6 = 0xED00007466654C65;
  if (v4 != 2)
  {
    v6 = 0xEE00746867695265;
  }

  v7 = 0x800000025F5628E0;
  if (v4)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 <= 1)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0x70616373646E616CLL;
  }

  if (v4 <= 1)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  *&v14 = v8;
  *(&v14 + 1) = v9;
  sub_25F54C9D0(&v14, v13);
  v10 = v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_25F558C4C(v13, 0xD000000000000014, 0x800000025F562A20, isUniquelyReferenced_nonNull_native);
  return v10;
}

uint64_t sub_25F556A28(uint64_t a1, uint64_t a2, __int16 a3, unsigned __int8 a4)
{
  v4 = 0xEB00000000736563;
  v5 = 0x6E65726566657270;
  v6 = 0xEC0000006E6F6974;
  v7 = 0x61746E6573657270;
  if (a4 != 2)
  {
    v7 = 6580592;
    v6 = 0xE300000000000000;
  }

  if (a4)
  {
    v5 = 1684366707;
    v4 = 0xE400000000000000;
  }

  if (a4 <= 1u)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  if (a4 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if ((a3 & 0xFF00) == 0x400)
  {
    v18 = 0u;
    v19 = 0u;
  }

  else
  {
    v10 = HIBYTE(a3);
    v17 = MEMORY[0x277D84F98];
    sub_25F556C18(a1, a2, a3 & 1, 0);
    *(&v19 + 1) = MEMORY[0x277D837D0];
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v11 = 0xED00007466654C65;
      }

      else
      {
        v11 = 0xEE00746867695265;
      }

      v12 = 0x70616373646E616CLL;
    }

    else if (v10)
    {
      v11 = 0x800000025F5628E0;
      v12 = 0xD000000000000012;
    }

    else
    {
      v11 = 0xE800000000000000;
      v12 = 0x7469617274726F70;
    }

    *&v18 = v12;
    *(&v18 + 1) = v11;
    sub_25F54C9D0(&v18, v16);
    v13 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_25F558C4C(v16, 0xD000000000000014, 0x800000025F562A20, isUniquelyReferenced_nonNull_native);
    *(&v19 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9AAB0, &unk_25F561AF0);
    *&v18 = v13;
  }

  return sub_25F557058(&v18, v8, v9);
}

uint64_t sub_25F556C18(uint64_t a1, uint64_t a2, char a3, char a4)
{
  if (a3)
  {
    v5 = 0;
    v6 = 0;
    *(&v16 + 1) = 0;
    v17 = 0;
  }

  else
  {
    v8 = MEMORY[0x277D85048];
    v18 = MEMORY[0x277D85048];
    *&v16 = a1;
    sub_25F54C9D0(&v16, v15);
    v9 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_25F558C4C(v15, 0x6874646977, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    v18 = v8;
    *&v16 = a2;
    sub_25F54C9D0(&v16, v15);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_25F558C4C(v15, 0x746867696568, 0xE600000000000000, v11);
    v5 = v9;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9AAB0, &unk_25F561AF0);
  }

  *&v16 = v5;
  v18 = v6;
  if (a4)
  {
    v12 = 0x800000025F562A20;
  }

  else
  {
    v12 = 0xED0000657A695364;
  }

  if (a4)
  {
    v13 = 0xD000000000000014;
  }

  else
  {
    v13 = 0x6572726566657270;
  }

  return sub_25F557058(&v16, v13, v12);
}

PreviewsServicesUI::PreviewPreferences __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PreviewPreferences.init(dictionaryValue:)(Swift::OpaquePointer dictionaryValue)
{
  v4 = v1;
  v5 = sub_25F557B20(0, dictionaryValue._rawValue);
  if (v2)
  {
  }

  else
  {
    if (v5)
    {
      v9 = v5;
      sub_25F55EE80(v5);
      v11 = v10;
      v13 = v12;
    }

    else
    {
      v9 = 0;
      v11 = 0;
      v13 = 0;
    }

    sub_25F5583E0(1, dictionaryValue._rawValue, &v17);

    v14 = v17;
    if (v17 == 4)
    {
      sub_25F558D9C();
      swift_allocError();
      v16 = v15;
      *(v15 + 24) = &type metadata for PreviewPreferences.Key;
      *v15 = 1;
      *(v15 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9A750, &qword_25F561810);
      *(v16 + 32) = MEMORY[0x277D837D0];
      *(v16 + 96) = 0;
      v6 = swift_willThrow();
    }

    else
    {
      *v4 = v11;
      *(v4 + 8) = v13;
      *(v4 + 16) = v9 == 0;
      *(v4 + 17) = v14;
    }
  }

  result.preferredSize.value.height = v8;
  result.preferredSize.value.width = v7;
  *&result.preferredSize.is_nil = v6;
  return result;
}

uint64_t PreviewPreferences.description.getter()
{
  v1 = *(v0 + 17);
  if ((v0[2] & 1) == 0)
  {
    v3 = *v0;
    v2 = v0[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9AA88, &qword_25F561818);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_25F5617F0;
    v5 = MEMORY[0x277D85048];
    *(v4 + 56) = MEMORY[0x277D85048];
    v6 = sub_25F5591A4();
    *(v4 + 64) = v6;
    *(v4 + 32) = v3;
    *(v4 + 96) = v5;
    *(v4 + 104) = v6;
    *(v4 + 72) = v2;
    v7 = sub_25F55F408();
    MEMORY[0x25F8E1080](v7);

    MEMORY[0x25F8E1080](8236, 0xE200000000000000);
  }

  v8 = 0xE800000000000000;
  v9 = 0xED00007466654C65;
  if (v1 != 2)
  {
    v9 = 0xEE00746867695265;
  }

  v10 = 0xD000000000000012;
  if (v1)
  {
    v8 = 0x800000025F5628E0;
  }

  else
  {
    v10 = 0x7469617274726F70;
  }

  if (v1 <= 1)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x70616373646E616CLL;
  }

  if (v1 <= 1)
  {
    v12 = v8;
  }

  else
  {
    v12 = v9;
  }

  MEMORY[0x25F8E1080](v11, v12);

  MEMORY[0x25F8E1080](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_25F557058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_25F54C9D0(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_25F558C4C(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_25F55951C(a1);
    sub_25F55C40C(a2, a3, v10);

    return sub_25F55951C(v10);
  }

  return result;
}

unint64_t sub_25F557100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    result = sub_25F558E40(a1, a2, a3, isUniquelyReferenced_nonNull_native, sub_25F55C99C, &qword_27FD9AB00, &qword_25F561AC8);
    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    result = sub_25F5586A0(a3);
    if (v12)
    {
      v13 = result;
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_25F55C99C();
        v16 = v19;
      }

      v17 = *(*(v16 + 56) + 16 * v13 + 8);

      result = sub_25F55D384(v13, v16);
      *v4 = v16;
    }
  }

  return result;
}

unint64_t sub_25F5571F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    result = sub_25F558E40(a1, a2, a3, isUniquelyReferenced_nonNull_native, sub_25F55C9B0, &qword_27FD9AAF8, &qword_25F561AC0);
    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    result = sub_25F5586A0(a3);
    if (v12)
    {
      v13 = result;
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_25F55C9B0();
        v16 = v19;
      }

      v17 = *(*(v16 + 56) + 16 * v13 + 8);

      result = sub_25F55D384(v13, v16);
      *v4 = v16;
    }
  }

  return result;
}

unint64_t sub_25F5572F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    result = sub_25F558E40(a1, a2, a3, isUniquelyReferenced_nonNull_native, sub_25F55C9C4, &qword_27FD9AAF0, &qword_25F561AB8);
    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    result = sub_25F5586A0(a3);
    if (v12)
    {
      v13 = result;
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_25F55C9C4();
        v16 = v19;
      }

      v17 = *(*(v16 + 56) + 16 * v13 + 8);

      result = sub_25F55D384(v13, v16);
      *v4 = v16;
    }
  }

  return result;
}

unint64_t sub_25F5573E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    result = sub_25F558E40(a1, a2, a3, isUniquelyReferenced_nonNull_native, sub_25F55C9D8, &qword_27FD9AAE8, &qword_25F561AB0);
    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    result = sub_25F5586A0(a3);
    if (v12)
    {
      v13 = result;
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_25F55C9D8();
        v16 = v19;
      }

      v17 = *(*(v16 + 56) + 16 * v13 + 8);

      result = sub_25F55D384(v13, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_25F5574E0@<X0>(char a1@<W0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
{
  if (a1)
  {
    v4 = 0xE900000000000061;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (!*(a2 + 16))
  {

LABEL_12:
    v13 = xmmword_25F561800;
    goto LABEL_13;
  }

  if (a1)
  {
    v7 = 0x746144746E657665;
  }

  else
  {
    v7 = 1684366707;
  }

  v8 = sub_25F558628(v7, v4);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_25F54CA78(*(a2 + 56) + 32 * v8, v18);
  sub_25F54CA78(v18, v17);
  v12 = MEMORY[0x277CC9318];
  if (swift_dynamicCast())
  {
    result = __swift_destroy_boxed_opaque_existential_0(v18);
    v13 = v16;
LABEL_13:
    *a3 = v13;
    return result;
  }

  sub_25F5594B4(0, 0xF000000000000000);
  sub_25F558D9C();
  swift_allocError();
  v15 = v14;
  *(v14 + 24) = &type metadata for HostToShellMessage.Key;
  *v14 = a1 & 1;
  *(v14 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9AAD0, &qword_25F561AD0);
  *(v15 + 32) = v12;
  sub_25F54CA78(v18, v15 + 64);
  *(v15 + 96) = 1;
  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_0(v18);
}

uint64_t sub_25F557688(char a1, uint64_t a2)
{
  if (a1)
  {
    v2 = 0xE900000000000061;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  if (!*(a2 + 16))
  {

    return 0;
  }

  if (a1)
  {
    v5 = 0x746144746E657665;
  }

  else
  {
    v5 = 1684366707;
  }

  v6 = sub_25F558628(v5, v2);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  sub_25F54CA78(*(a2 + 56) + 32 * v6, v15);
  sub_25F54CA78(v15, v14);
  v9 = MEMORY[0x277D83B88];
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v15);
    return v13;
  }

  else
  {
    sub_25F558D9C();
    swift_allocError();
    v12 = v11;
    *(v11 + 24) = &type metadata for HostToShellMessage.Key;
    *v11 = a1 & 1;
    *(v11 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9AAA8, &unk_25F561A60);
    *(v12 + 32) = v9;
    sub_25F54CA78(v15, v12 + 64);
    *(v12 + 96) = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }
}

uint64_t sub_25F55780C(char a1, uint64_t a2)
{
  if (a1)
  {
    v2 = 0xE600000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  if (!*(a2 + 16))
  {

    return 0;
  }

  if (a1)
  {
    v5 = 0x746867696568;
  }

  else
  {
    v5 = 0x6874646977;
  }

  v6 = sub_25F558628(v5, v2);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  sub_25F54CA78(*(a2 + 56) + 32 * v6, v15);
  sub_25F54CA78(v15, v14);
  v9 = MEMORY[0x277D85048];
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v15);
    return v13;
  }

  else
  {
    sub_25F558D9C();
    swift_allocError();
    v12 = v11;
    *(v11 + 24) = &_s3KeyON;
    *v11 = a1 & 1;
    *(v11 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9AAD8, &qword_25F561A90);
    *(v12 + 32) = v9;
    sub_25F54CA78(v15, v12 + 64);
    *(v12 + 96) = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }
}

uint64_t sub_25F55798C(char a1, uint64_t a2)
{
  if (a1)
  {
    v2 = 0x800000025F562A20;
  }

  else
  {
    v2 = 0xED0000657A695364;
  }

  if (!*(a2 + 16))
  {

    return 0;
  }

  if (a1)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0x6572726566657270;
  }

  v6 = sub_25F558628(v5, v2);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  sub_25F54CA78(*(a2 + 56) + 32 * v6, v15);
  sub_25F54CA78(v15, v14);
  v9 = MEMORY[0x277D837D0];
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v15);
    return v13;
  }

  else
  {
    sub_25F558D9C();
    swift_allocError();
    v12 = v11;
    *(v11 + 24) = &type metadata for PreviewPreferences.Key;
    *v11 = a1 & 1;
    *(v11 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9A750, &qword_25F561810);
    *(v12 + 32) = v9;
    sub_25F54CA78(v15, v12 + 64);
    *(v12 + 96) = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }
}

uint64_t sub_25F557B20(char a1, uint64_t a2)
{
  if (a1)
  {
    v2 = 0x800000025F562A20;
  }

  else
  {
    v2 = 0xED0000657A695364;
  }

  if (!*(a2 + 16))
  {

    return 0;
  }

  if (a1)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0x6572726566657270;
  }

  v6 = sub_25F558628(v5, v2);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  sub_25F54CA78(*(a2 + 56) + 32 * v6, v15);
  sub_25F54CA78(v15, v14);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9AAB0, &unk_25F561AF0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v15);
    return v13;
  }

  else
  {
    sub_25F558D9C();
    swift_allocError();
    v12 = v11;
    *(v11 + 24) = &type metadata for PreviewPreferences.Key;
    *v11 = a1 & 1;
    *(v11 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9AAB8, &qword_25F561A70);
    *(v12 + 32) = v9;
    sub_25F54CA78(v15, v12 + 64);
    *(v12 + 96) = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }
}

uint64_t sub_25F557CC0(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = 0xEB00000000736563;
  v5 = 0x6E65726566657270;
  v6 = 0xEC0000006E6F6974;
  v7 = 0x61746E6573657270;
  if (a1 != 2)
  {
    v7 = 6580592;
    v6 = 0xE300000000000000;
  }

  if (a1)
  {
    v5 = 1684366707;
    v4 = 0xE400000000000000;
  }

  if (a1 <= 1u)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (!*(a2 + 16))
  {

    return 0;
  }

  v11 = sub_25F558628(v8, v9);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
    return 0;
  }

  sub_25F54CA78(*(a2 + 56) + 32 * v11, v20);
  sub_25F54CA78(v20, v19);
  v14 = MEMORY[0x277D837D0];
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v20);
    return v18;
  }

  else
  {
    sub_25F558D9C();
    swift_allocError();
    v17 = v16;
    *(v16 + 24) = &type metadata for ShellToHostMessage.Key;
    *v16 = a1;
    *(v16 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9A750, &qword_25F561810);
    *(v17 + 32) = v14;
    sub_25F54CA78(v20, v17 + 64);
    *(v17 + 96) = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0(v20);
  }
}

unint64_t sub_25F557E80(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = 0xEB00000000736563;
  v5 = 0x6E65726566657270;
  v6 = 0xEC0000006E6F6974;
  v7 = 0x61746E6573657270;
  if (a1 != 2)
  {
    v7 = 6580592;
    v6 = 0xE300000000000000;
  }

  if (a1)
  {
    v5 = 1684366707;
    v4 = 0xE400000000000000;
  }

  if (a1 <= 1u)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (!*(a2 + 16))
  {

    goto LABEL_16;
  }

  v11 = sub_25F558628(v8, v9);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_16:
    v16 = 0;
    v15 = 1;
    goto LABEL_17;
  }

  sub_25F54CA78(*(a2 + 56) + 32 * v11, v22);
  sub_25F54CA78(v22, v21);
  v14 = MEMORY[0x277D849A8];
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v22);
    v15 = 0;
    v16 = v20;
LABEL_17:
    LOBYTE(v22[0]) = v15;
    return v16 | (v15 << 32);
  }

  sub_25F558D9C();
  swift_allocError();
  v19 = v18;
  *(v18 + 24) = &type metadata for ShellToHostMessage.Key;
  *v18 = a1;
  *(v18 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9AAC0, &qword_25F561A78);
  *(v19 + 32) = v14;
  sub_25F54CA78(v22, v19 + 64);
  *(v19 + 96) = 1;
  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_0(v22);
}

uint64_t sub_25F558050(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = 0xEB00000000736563;
  v5 = 0x6E65726566657270;
  v6 = 0xEC0000006E6F6974;
  v7 = 0x61746E6573657270;
  if (a1 != 2)
  {
    v7 = 6580592;
    v6 = 0xE300000000000000;
  }

  if (a1)
  {
    v5 = 1684366707;
    v4 = 0xE400000000000000;
  }

  if (a1 <= 1u)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (!*(a2 + 16))
  {

    return 0;
  }

  v11 = sub_25F558628(v8, v9);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
    return 0;
  }

  sub_25F54CA78(*(a2 + 56) + 32 * v11, v20);
  sub_25F54CA78(v20, v19);
  v14 = MEMORY[0x277D83B88];
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v20);
    return v18;
  }

  else
  {
    sub_25F558D9C();
    swift_allocError();
    v17 = v16;
    *(v16 + 24) = &type metadata for ShellToHostMessage.Key;
    *v16 = a1;
    *(v16 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9AAA8, &unk_25F561A60);
    *(v17 + 32) = v14;
    sub_25F54CA78(v20, v17 + 64);
    *(v17 + 96) = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0(v20);
  }
}

uint64_t sub_25F558214(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = 0xEB00000000736563;
  v5 = 0x6E65726566657270;
  v6 = 0xEC0000006E6F6974;
  v7 = 0x61746E6573657270;
  if (a1 != 2)
  {
    v7 = 6580592;
    v6 = 0xE300000000000000;
  }

  if (a1)
  {
    v5 = 1684366707;
    v4 = 0xE400000000000000;
  }

  if (a1 <= 1u)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (!*(a2 + 16))
  {

    return 0;
  }

  v11 = sub_25F558628(v8, v9);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
    return 0;
  }

  sub_25F54CA78(*(a2 + 56) + 32 * v11, v20);
  sub_25F54CA78(v20, v19);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9AAB0, &unk_25F561AF0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v20);
    return v18;
  }

  else
  {
    sub_25F558D9C();
    swift_allocError();
    v17 = v16;
    *(v16 + 24) = &type metadata for ShellToHostMessage.Key;
    *v16 = a1;
    *(v16 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9AAB8, &qword_25F561A70);
    *(v17 + 32) = v14;
    sub_25F54CA78(v20, v17 + 64);
    *(v17 + 96) = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0(v20);
  }
}

uint64_t sub_25F5583E0@<X0>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = a1 & 1;
  result = sub_25F55798C(a1 & 1, a2);
  if (!v3)
  {
    if (v7)
    {
      v8 = result;
      v9 = v7;

      v10 = sub_25F55F598();

      if (v10 >= 4)
      {
        sub_25F558D9C();
        swift_allocError();
        v12 = v11;
        *(v11 + 24) = &type metadata for PreviewPreferences.Key;
        *v11 = v5;
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9AAE0, &qword_25F561A98);
        *(v12 + 32) = &type metadata for PreviewPreferences.InterfaceOrientation;
        *(v12 + 88) = MEMORY[0x277D837D0];
        *(v12 + 56) = v13;
        *(v12 + 64) = v8;
        *(v12 + 72) = v9;
        *(v12 + 96) = 2;
        return swift_willThrow();
      }

      else
      {

        *a3 = v10;
      }
    }

    else
    {
      *a3 = 4;
    }
  }

  return result;
}

uint64_t sub_25F55850C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F557CC0(a1, a2);
  if (!v3)
  {
    if (v7)
    {
      v8 = result;
      v9 = v7;

      v10._countAndFlagsBits = v8;
      v10._object = v9;
      SuppressedPresentation.init(rawValue:)(v10);
      if (v14 == 11)
      {
        sub_25F558D9C();
        swift_allocError();
        v12 = v11;
        *(v11 + 24) = &type metadata for ShellToHostMessage.Key;
        *v11 = a1;
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9AAC8, &unk_25F561A80);
        *(v12 + 32) = &type metadata for SuppressedPresentation;
        *(v12 + 88) = MEMORY[0x277D837D0];
        *(v12 + 56) = v13;
        *(v12 + 64) = v8;
        *(v12 + 72) = v9;
        *(v12 + 96) = 2;
        return swift_willThrow();
      }

      else
      {

        *a3 = v14;
      }
    }

    else
    {
      *a3 = 11;
    }
  }

  return result;
}

unint64_t sub_25F558628(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_25F55F668();
  sub_25F55F428();
  v6 = sub_25F55F698();

  return sub_25F559080(a1, a2, v6);
}

unint64_t sub_25F5586A0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_25F55F668();
  MEMORY[0x25F8E12D0](a1);
  v4 = sub_25F55F698();

  return sub_25F559138(a1, v4);
}

uint64_t sub_25F55870C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9A778, &unk_25F561AA0);
  v36 = a2;
  result = sub_25F55F578();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_25F54C9D0(v25, v37);
      }

      else
      {
        sub_25F54CA78(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_25F55F668();
      sub_25F55F428();
      result = sub_25F55F698();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_25F54C9D0(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_25F5589C4(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_25F55F578();
  v10 = result;
  if (*(v7 + 16))
  {
    v33 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v34 = *(*(v7 + 56) + 16 * v22);
      if ((a2 & 1) == 0)
      {
      }

      v24 = *(v10 + 40);
      sub_25F55F668();
      MEMORY[0x25F8E12D0](v23);
      result = sub_25F55F698();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v17 + 8 * v27);
          if (v31 != -1)
          {
            v18 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 16 * v18) = v34;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v5 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v7 + 32);
    v5 = v33;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}