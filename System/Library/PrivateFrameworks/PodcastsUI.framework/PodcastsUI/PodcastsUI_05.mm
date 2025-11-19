double sub_21B422D98(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_21B4C64F8() - 8);
  v10 = *(v8 + 84);
  v11 = *(*(a4 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v8 + 64);
  v14 = *(v11 + 80);
  v15 = *(v11 + 64);
  if (v12 <= v10)
  {
    v16 = *(v8 + 84);
  }

  else
  {
    v16 = *(v11 + 84);
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  v17 = v13 + v14;
  v18 = (v13 + v14) & ~v14;
  v19 = v15 + 7;
  v20 = ((((((v15 + 7 + v18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (v16 >= a3)
  {
    v23 = 0;
    v24 = a2 - v16;
    if (a2 <= v16)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((((((v15 + 7 + v18) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v21 = a3 - v16 + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = a2 - v16;
    if (a2 <= v16)
    {
LABEL_19:
      if (v23 > 1)
      {
        if (v23 != 2)
        {
          *(a1 + v20) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_35;
        }

        *(a1 + v20) = 0;
      }

      else if (v23)
      {
        *(a1 + v20) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return result;
      }

LABEL_35:
      if (v10 == v16)
      {
        v27 = *(v8 + 56);

        v27(a1, a2);
      }

      else
      {
        v28 = (a1 + v17) & ~v14;
        if (v12 == v16)
        {
          v29 = *(v11 + 56);

          v29(v28, a2, v12);
        }

        else
        {
          v30 = (((((v19 + v28) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
          if ((a2 & 0x80000000) != 0)
          {
            result = 0.0;
            *(v30 + 8) = 0u;
            *(v30 + 24) = 0u;
            *v30 = a2 & 0x7FFFFFFF;
          }

          else
          {
            *(v30 + 24) = (a2 - 1);
          }
        }
      }

      return result;
    }
  }

  if (v20)
  {
    v25 = 1;
  }

  else
  {
    v25 = v24;
  }

  if (v20)
  {
    v26 = ~v16 + a2;
    bzero(a1, v20);
    *a1 = v26;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      *(a1 + v20) = v25;
    }

    else
    {
      *(a1 + v20) = v25;
    }
  }

  else if (v23)
  {
    *(a1 + v20) = v25;
  }

  return result;
}

uint64_t ArtworkBackgroundSessionDescriptor.init(imageStore:caches:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = a3 + *(type metadata accessor for ArtworkBackgroundSessionDescriptor() + 20);

  return sub_21B423100(a2, v4);
}

uint64_t sub_21B423100(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetCaches();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id ArtworkBackgroundSessionDescriptor.create(session:delegate:)(void *a1, uint64_t a2)
{
  [a1 setSessionSendsLaunchEvents_];
  [a1 setDiscretionary_];
  [a1 setSharedContainerIdentifier_];
  [a1 setRequestCachePolicy_];
  v4 = [objc_opt_self() sessionWithConfiguration:a1 delegate:a2 delegateQueue:0];

  return v4;
}

uint64_t ArtworkBackgroundSessionDescriptor.load(data:)(uint64_t a1)
{
  v2 = sub_21B4C6368();
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD873F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  v9 = sub_21B4C5748();
  (*(*(v9 - 8) + 16))(v4, a1, v9);
  swift_storeEnumTagMultiPayload();
  sub_21B4C76D8();
  sub_21B3F1314(&qword_2811FD278, &qword_27CD873F0);
  v10 = sub_21B4C77D8();
  (*(v6 + 8))(v8, v5);
  return v10;
}

uint64_t ArtworkBackgroundSessionDescriptor.stash(asset:for:)(uint64_t a1, uint64_t a2)
{
  v50 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD873F8);
  v4 = *(v3 - 8);
  v65 = v3;
  v66 = v4;
  MEMORY[0x28223BE20](v3);
  v64 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87030);
  v7 = *(v6 - 8);
  v62 = v6;
  v63 = v7;
  MEMORY[0x28223BE20](v6);
  v56 = &v48 - v8;
  v9 = sub_21B4C64F8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21B4C6368();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87400);
  MEMORY[0x28223BE20](v16);
  v18 = &v48 - v17;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87408);
  v57 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v20 = &v48 - v19;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87410);
  v54 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v22 = &v48 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87418);
  v24 = *(v23 - 8);
  v60 = v23;
  v61 = v24;
  MEMORY[0x28223BE20](v23);
  v51 = &v48 - v25;
  v26 = sub_21B4C6BD8();
  v58 = *(v26 - 8);
  v59 = v26;
  MEMORY[0x28223BE20](v26);
  v48 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B4C6D98();
  sub_21B371640(v50, v15, MEMORY[0x277D3D5D0]);
  v28 = *(v10 + 16);
  v49 = v9;
  v28(v12, a2, v9);
  sub_21B4C6CE8();
  v29 = *v52;
  v30 = &v18[*(v16 + 36)];
  *(v30 + 3) = sub_21B36B0F8();
  *(v30 + 4) = &protocol witness table for MTImageStore;
  *v30 = v29;
  sub_21B3F1314(&qword_2811FDC70, &qword_27CD87400);
  v31 = v29;
  sub_21B4C68E8();
  sub_21B423BA0(v18);
  type metadata accessor for ArtworkBackgroundSessionDescriptor();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD87610);
  v32 = v56;
  sub_21B4C5DD8();
  sub_21B4C6BC8();
  v33 = v62;
  v34 = sub_21B4C5DB8();
  (*(v63 + 8))(v32, v33);
  v67 = v34;
  v74 = 4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD870A0);
  v36 = sub_21B3F1314(&qword_2811FD4A0, &qword_27CD87408);
  v37 = sub_21B384178();
  v38 = MEMORY[0x277D3D5F8];
  v39 = MEMORY[0x277D3D608];
  v40 = v55;
  sub_21B4C68F8();

  (*(v57 + 8))(v20, v40);
  v41 = v64;
  v42 = v53;
  sub_21B4C6D68();
  (*(v54 + 8))(v22, v42);
  v67 = v49;
  v68 = v40;
  v69 = v35;
  v70 = v39;
  v71 = v38;
  v72 = v36;
  v73 = v37;
  swift_getOpaqueTypeConformance2();
  v43 = v51;
  v44 = v65;
  sub_21B4C7798();
  (*(v66 + 8))(v41, v44);
  sub_21B3F1314(&qword_2811FD3A0, &qword_27CD87418);
  v45 = v60;
  v46 = sub_21B4C77D8();
  (*(v61 + 8))(v43, v45);
  (*(v58 + 8))(v48, v59);
  return v46;
}

uint64_t sub_21B423BA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B423C08(uint64_t a1)
{
  v2 = sub_21B4C6368();
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD873F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  v9 = sub_21B4C5748();
  (*(*(v9 - 8) + 16))(v4, a1, v9);
  swift_storeEnumTagMultiPayload();
  sub_21B4C76D8();
  sub_21B3F1314(&qword_2811FD278, &qword_27CD873F0);
  v10 = sub_21B4C77D8();
  (*(v6 + 8))(v8, v5);
  return v10;
}

id DataBackgroundSessionDescriptor.create(session:delegate:)(void *a1, uint64_t a2)
{
  [a1 setSessionSendsLaunchEvents_];
  [a1 setDiscretionary_];
  [a1 setSharedContainerIdentifier_];
  [a1 setTimeoutIntervalForRequest_];
  v4 = [objc_opt_self() sessionWithConfiguration:a1 delegate:a2 delegateQueue:0];

  return v4;
}

uint64_t DataBackgroundSessionDescriptor.stash(asset:for:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a1;
  v33 = a2;
  v6 = *(a4 + 16);
  v31 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v27 - v9;
  v29 = &v27 - v9;
  v11 = *(v6 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v13);
  v15 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v15, v30, v6, v14);
  (*(v8 + 16))(v10, a3, AssociatedTypeWitness);
  v16 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (*(v8 + 80) + v17 + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  v20 = v31;
  *(v19 + 16) = v6;
  *(v19 + 24) = v20;
  v21 = *(a4 + 48);
  *(v19 + 32) = *(a4 + 32);
  *(v19 + 48) = v21;
  (*(v11 + 32))(v19 + v16, v15, v6);
  v22 = (v19 + v17);
  v24 = v32;
  v23 = v33;
  *v22 = v32;
  v22[1] = v23;
  (*(v8 + 32))(v19 + v18, v29, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87420);
  swift_allocObject();
  sub_21B40DA08(v24, v23);
  v34 = sub_21B4C7718();
  sub_21B3F1314(qword_27CD87428, &qword_27CD87420);
  v25 = sub_21B4C77D8();

  return v25;
}

id sub_21B424204(void *a1, uint64_t a2)
{
  [a1 setSessionSendsLaunchEvents_];
  [a1 setDiscretionary_];
  [a1 setSharedContainerIdentifier_];
  [a1 setTimeoutIntervalForRequest_];
  v4 = [objc_opt_self() sessionWithConfiguration:a1 delegate:a2 delegateQueue:0];

  return v4;
}

uint64_t sub_21B4242E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD874B0);
  MEMORY[0x28223BE20](v0);
  v1 = sub_21B4C7558();
  MEMORY[0x28223BE20](v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD874B8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v12 = sub_21B4C5758();
  v13 = v6;
  v7 = v12;
  v8 = v6;
  sub_21B40DA08(v12, v6);
  sub_21B4C76D8();
  sub_21B3F1314(&qword_27CD874C8, &qword_27CD874B8);
  v9 = sub_21B4C77D8();
  sub_21B36D4F4(v7, v8);
  (*(v3 + 8))(v5, v2);
  return v9;
}

uint64_t sub_21B424734(uint64_t (*a1)(__int128 *))
{
  v3 = (*(*(*(v1 + 16) - 8) + 64) + ((*(*(*(v1 + 16) - 8) + 80) + 64) & ~*(*(*(v1 + 16) - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_getAssociatedTypeWitness();
  v5 = *(v1 + v3);
  sub_21B4C5D28();
  *&v5 = 0;
  BYTE8(v5) = 0;
  return a1(&v5);
}

uint64_t sub_21B424880()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21B4248F0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_21B424A30(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
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
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

id AssetDownloaders.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static AssetDownloaders.shared.getter()
{
  if (qword_2811FF9A8 != -1)
  {
    swift_once();
  }

  v1 = qword_2811FF9B0;

  return v1;
}

void sub_21B424D90(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v32 = a1;
  v33 = a2;
  v34 = sub_21B4C7558();
  v7 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ArtworkBackgroundSessionDescriptor();
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD874D0);
  v31 = v4;
  sub_21B4C6B78();
  sub_21B36B598();
  v16 = sub_21B4C70D8();
  v18 = v17;
  sub_21B42537C(v15);
  if (v16 == a3 && v18 == a4)
  {
  }

  else
  {
    v20 = sub_21B4CA608();

    if ((v20 & 1) == 0)
    {
      sub_21B4C7528();

      v21 = sub_21B4C7538();
      v22 = sub_21B4C9D08();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v35 = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_21B36CF74(a3, a4, &v35);
        _os_log_impl(&dword_21B365000, v21, v22, "Asset downloaders ignoring background session not owned: %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v24);
        MEMORY[0x21CEF5710](v24, -1, -1);
        MEMORY[0x21CEF5710](v23, -1, -1);
      }

      (*(v7 + 8))(v9, v34);
      return;
    }
  }

  sub_21B4C7528();

  v25 = sub_21B4C7538();
  v26 = sub_21B4C9D08();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v35 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_21B36CF74(a3, a4, &v35);
    _os_log_impl(&dword_21B365000, v25, v26, "Registering artwork background completion handler for session: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x21CEF5710](v28, -1, -1);
    MEMORY[0x21CEF5710](v27, -1, -1);
  }

  (*(v7 + 8))(v12, v34);
  v29 = sub_21B4C6B88();
  sub_21B4C6C88();
}

id AssetDownloaders.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssetDownloaders();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21B42537C(uint64_t a1)
{
  v2 = type metadata accessor for ArtworkBackgroundSessionDescriptor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B425434(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_21B3F12CC(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AssetCaches.alignments.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AssetCaches() + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD874D8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CachingImageContentProvider.init(asPartOf:priority:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD87610);
  MEMORY[0x28223BE20](v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E48);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  sub_21B425734(a2, &v11 - v7);
  sub_21B4C8808();
  sub_21B4259DC();
  sub_21B4C5D88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD874E0);
  sub_21B4C8808();
  sub_21B3F12CC(0, &qword_281200500);
  sub_21B4C9D98();
  sub_21B4C6F18();

  v9 = sub_21B4C6A48();
  (*(*(v9 - 8) + 8))(a2, v9);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21B425734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD874F8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12[-v5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87630);
  sub_21B4C8808();
  v7 = v14;
  v13 = a1;
  os_unfair_lock_lock(v14 + 6);
  sub_21B425B84(&v7[4], v6);
  os_unfair_lock_unlock(v7 + 6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E48);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_21B425BA0(v6);
    os_unfair_lock_lock(v7 + 6);

    os_unfair_lock_unlock(v7 + 6);

    v14 = 0;
    v15 = 0xE000000000000000;
    sub_21B4CA338();
    MEMORY[0x21CEF2F30](0xD000000000000024, 0x800000021B4DFD00);
    sub_21B4C6A48();
    sub_21B4CA478();
    MEMORY[0x21CEF2F30](0xD000000000000013, 0x800000021B4DFD30);
    sub_21B425C08(&qword_27CD86C30, MEMORY[0x277D3D798]);
    v11 = sub_21B4C95A8();
    MEMORY[0x21CEF2F30](v11);

    result = sub_21B4CA488();
    __break(1u);
  }

  else
  {

    return (*(v9 + 32))(a2, v6, v8);
  }

  return result;
}

unint64_t sub_21B4259DC()
{
  result = qword_2811FD588;
  if (!qword_2811FD588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD86E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FD588);
  }

  return result;
}

uint64_t sub_21B425A40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16) && (v5 = sub_21B3FACA0(a2), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(v4 + 56);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E48);
    v10 = *(v9 - 8);
    (*(v10 + 16))(a3, v8 + *(v10 + 72) * v7, v9);
    return (*(v10 + 56))(a3, 0, 1, v9);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E48);
    return (*(*(v12 - 8) + 56))(a3, 1, 1, v12);
  }
}

uint64_t sub_21B425BA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD874F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B425C08(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21B425C50()
{
  v0 = sub_21B4C7008();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B4C6FC8();
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 importContext];

  sub_21B375E2C();
  v6 = sub_21B4C9DB8();
  v7 = type metadata accessor for TranscriptProviderBridge();
  v8 = objc_allocWithZone(v7);
  v14[3] = v0;
  v14[4] = MEMORY[0x277D3D8A0];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(v1 + 16))(boxed_opaque_existential_1, v3, v0);
  sub_21B3F821C(v14, &v8[OBJC_IVAR___PFTranscriptProviderBridge_wrappedProvider]);
  *&v8[OBJC_IVAR___PFTranscriptProviderBridge_managedObjectContext] = v5;
  *&v8[OBJC_IVAR___PFTranscriptProviderBridge_workQueue] = v6;
  v13.receiver = v8;
  v13.super_class = v7;
  v10 = objc_msgSendSuper2(&v13, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v14);
  result = (*(v1 + 8))(v3, v0);
  qword_2811FEAC0 = v10;
  return result;
}

id TranscriptProviderBridge.__allocating_init(wrappedProvider:managedObjectContext:workQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = sub_21B428334(v9, a2, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

id static TranscriptProviderBridge.shared.getter()
{
  if (qword_2811FEAB8 != -1)
  {
    swift_once();
  }

  v1 = qword_2811FEAC0;

  return v1;
}

id TranscriptProviderBridge.init(wrappedProvider:managedObjectContext:workQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = sub_21B42825C(v12, a2, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v14;
}

void sub_21B426068(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___PFTranscriptProviderBridge_managedObjectContext);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = v4;
  v8[4] = sub_21B428430;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_21B36CDB8;
  v8[3] = &block_descriptor_2;
  v6 = _Block_copy(v8);
  v7 = v3;

  [v7 performBlock_];
  _Block_release(v6);
}

uint64_t sub_21B426178(void *a1, uint64_t a2)
{
  v4 = sub_21B4C7558();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = &v39 - v8;
  v9 = sub_21B4C6208();
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21B4C6A48();
  v42 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87518);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v39 - v16;
  v18 = sub_21B4C67C8();
  v41 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [a1 episodeForStoreTrackID_];
  if (v22)
  {
    v23 = v22;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v40 = Strong;
      v25 = v42;
      (*(v42 + 104))(v14, *MEMORY[0x277D3D778], v12);
      v26 = v43;
      v27 = v23;
      v28 = v44;
      (*(v43 + 104))(v11, *MEMORY[0x277D3D568], v44);
      v39 = v27;
      sub_21B4CA0E8();
      (*(v26 + 8))(v11, v28);
      (*(v25 + 8))(v14, v12);
      v29 = v41;
      if ((*(v41 + 48))(v17, 1, v18) != 1)
      {
        (*(v29 + 32))(v21, v17, v18);
        v38 = v40;
        sub_21B427808(v21);

        return (*(v29 + 8))(v21, v18);
      }

      sub_21B428628(v17);
      v23 = v39;
    }

    v30 = v45;
    sub_21B4C7498();
    v31 = sub_21B4C7538();
    v32 = sub_21B4C9CC8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_21B365000, v31, v32, "Unable to find request for episode, won't invalidate", v33, 2u);
      MEMORY[0x21CEF5710](v33, -1, -1);
    }

    return (*(v46 + 8))(v30, v47);
  }

  else
  {
    sub_21B4C7498();
    v35 = sub_21B4C7538();
    v36 = sub_21B4C9CE8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134217984;
      *(v37 + 4) = a2;
      _os_log_impl(&dword_21B365000, v35, v36, "Unable to find episode for AdamID %lld, won't invalidate", v37, 0xCu);
      MEMORY[0x21CEF5710](v37, -1, -1);
    }

    return (*(v46 + 8))(v6, v47);
  }
}

uint64_t sub_21B4267DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v24 = a6;
  v23 = a5;
  v11 = sub_21B4C8208();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = sub_21B4C8248();
  v15 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v17 = &v22[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = *&v6[OBJC_IVAR___PFTranscriptProviderBridge_workQueue];
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  *(v18 + 48) = v23;
  *(v18 + 56) = v24;
  *(v18 + 64) = v6;
  aBlock[4] = sub_21B42843C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21B36CDB8;
  aBlock[3] = &block_descriptor_9;
  v19 = _Block_copy(aBlock);

  v20 = v6;

  sub_21B4C8228();
  v27 = MEMORY[0x277D84F90];
  sub_21B3F8298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86BB0);
  sub_21B428450();
  sub_21B4CA298();
  MEMORY[0x21CEF3560](0, v17, v14, v19);
  _Block_release(v19);
  (*(v12 + 8))(v14, v11);
  (*(v15 + 8))(v17, v26);
}

uint64_t sub_21B426A8C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v104 = a7;
  v12 = sub_21B4C6208();
  v107 = *(v12 - 8);
  v108 = v12;
  MEMORY[0x28223BE20](v12);
  v109 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_21B4C6A48();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v103 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21B4C67C8();
  v105 = *(v15 - 8);
  v106 = v15;
  MEMORY[0x28223BE20](v15);
  v102 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21B4C7558();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v113 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v90 - v21;
  MEMORY[0x28223BE20](v23);
  v99 = &v90 - v24;
  MEMORY[0x28223BE20](v25);
  v98 = &v90 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v90 - v28;
  v112 = a1;
  if (a2)
  {
    if (a4)
    {
      if (a1 == a3 && a2 == a4)
      {
        v111 = 0;
        LODWORD(v115) = 1;
        LODWORD(v114) = 1;
      }

      else
      {
        LODWORD(v114) = sub_21B4CA608();
        v111 = v114 ^ 1;
        LODWORD(v115) = 1;
      }
    }

    else
    {
      LODWORD(v114) = 0;
      LODWORD(v115) = 1;
      v111 = 1;
    }
  }

  else
  {
    LODWORD(v114) = a4 == 0;
    LODWORD(v115) = a5;
    v111 = a4 != 0;
  }

  v30 = sub_21B4C7238();
  sub_21B4C7498();

  v31 = sub_21B4C7538();
  v32 = sub_21B4C9CC8();

  v33 = os_log_type_enabled(v31, v32);
  v110 = a2;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v96 = v17;
    v35 = v34;
    v36 = swift_slowAlloc();
    v97 = v18;
    v94 = v36;
    v119 = v36;
    *v35 = 141560067;
    *(v35 + 4) = 1752392040;
    *(v35 + 12) = 2081;
    v37 = a3;
    *&v116 = v30;
    sub_21B391890();
    v93 = v32;
    v38 = sub_21B4CA268();
    v40 = sub_21B36CF74(v38, v39, &v119);
    v95 = v22;
    v41 = v40;

    *(v35 + 14) = v41;
    *(v35 + 22) = 2160;
    *(v35 + 24) = 1752392040;
    *(v35 + 32) = 2081;
    *&v116 = v112;
    *(&v116 + 1) = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD869C0);
    v42 = sub_21B4C9758();
    v44 = a4;
    v45 = sub_21B36CF74(v42, v43, &v119);

    *(v35 + 34) = v45;
    a4 = v44;
    a3 = v37;
    *(v35 + 42) = 2160;
    *(v35 + 44) = 1752392040;
    *(v35 + 52) = 2081;
    *&v116 = v37;
    *(&v116 + 1) = a4;

    v46 = sub_21B4C9758();
    v48 = sub_21B36CF74(v46, v47, &v119);

    *(v35 + 54) = v48;
    v22 = v95;
    *(v35 + 62) = 1026;
    *(v35 + 64) = v111 & 1;
    *(v35 + 68) = 1026;
    v49 = v115;
    *(v35 + 70) = v115 & 1;
    *(v35 + 74) = 1026;
    *(v35 + 76) = sub_21B4C7228() & 1;
    _os_log_impl(&dword_21B365000, v31, v93, "Checking for change to feed TTML identifier for %{private,mask.hash}s (%{private,mask.hash}s -> %{private,mask.hash}s: (changed=%{BOOL,public}d, withLocalContent=%{BOOL,public}d, adamIDIsEmpty=%{BOOL,public}d)", v35, 0x50u);
    v50 = v94;
    swift_arrayDestroy();
    v18 = v97;
    MEMORY[0x21CEF5710](v50, -1, -1);
    v51 = v35;
    v17 = v96;
    MEMORY[0x21CEF5710](v51, -1, -1);

    v52 = *(v18 + 8);
    v52(v29, v17);
  }

  else
  {

    v52 = *(v18 + 8);
    v52(v29, v17);
    v49 = v115;
  }

  if (v114 & 1 | ((v49 & 1) == 0) || (sub_21B4C7228() & 1) != 0)
  {
    v53 = v113;
    sub_21B4C7498();
    v54 = sub_21B4C7538();
    v55 = sub_21B4C9CC8();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_21B365000, v54, v55, "Transcript is up to date, nothing to do.", v56, 2u);
      MEMORY[0x21CEF5710](v56, -1, -1);
    }

    v57 = v53;
  }

  else
  {
    v115 = v30;
    v92 = a4;
    v91 = a3;
    if (v110)
    {

      v59 = v98;
      sub_21B4C7498();
      v60 = sub_21B4C7538();
      v61 = sub_21B4C9CC8();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v97 = v18;
        v64 = v63;
        *&v116 = v63;
        *v62 = 141558275;
        *(v62 + 4) = 1752392040;
        *(v62 + 12) = 2081;
        v119 = v115;
        sub_21B391890();
        v65 = sub_21B4CA268();
        v67 = v22;
        v68 = sub_21B36CF74(v65, v66, &v116);

        *(v62 + 14) = v68;
        v22 = v67;
        _os_log_impl(&dword_21B365000, v60, v61, "Device had transcript identifier for episode %{private,mask.hash}s, invalidating the existing asset", v62, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v64);
        MEMORY[0x21CEF5710](v64, -1, -1);
        MEMORY[0x21CEF5710](v62, -1, -1);

        v52(v98, v17);
      }

      else
      {

        v52(v59, v17);
      }

      (*(v100 + 104))(v103, *MEMORY[0x277D3D778], v101);
      (*(v107 + 104))(v109, *MEMORY[0x277D3D568], v108);
      v118 = 0;
      v116 = 0u;
      v117 = 0u;
      v69 = v102;
      sub_21B4C67A8();
      sub_21B427BD8(v69);
      (*(v105 + 8))(v69, v106);
      a4 = v92;
    }

    if (a4)
    {

      v70 = v99;
      sub_21B4C7498();

      v71 = sub_21B4C7538();
      v72 = sub_21B4C9CC8();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *&v116 = v74;
        *v73 = 141558531;
        *(v73 + 4) = 1752392040;
        *(v73 + 12) = 2081;
        v119 = v115;
        sub_21B391890();
        v75 = sub_21B4CA268();
        v77 = v22;
        v78 = sub_21B36CF74(v75, v76, &v116);

        *(v73 + 14) = v78;
        v22 = v77;
        *(v73 + 22) = 2080;
        *(v73 + 24) = sub_21B36CF74(v91, v92, &v116);
        _os_log_impl(&dword_21B365000, v71, v72, "Feed specifies a new ttml identifier, prefetching for episode %{private,mask.hash}s: %s", v73, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x21CEF5710](v74, -1, -1);
        MEMORY[0x21CEF5710](v73, -1, -1);

        v79 = v99;
      }

      else
      {

        v79 = v70;
      }

      v52(v79, v17);
      v80 = *(v104 + OBJC_IVAR___PFTranscriptProviderBridge_wrappedProvider + 24);
      v114 = *(v104 + OBJC_IVAR___PFTranscriptProviderBridge_wrappedProvider + 32);
      __swift_project_boxed_opaque_existential_1((v104 + OBJC_IVAR___PFTranscriptProviderBridge_wrappedProvider), v80);
      (*(v100 + 104))(v103, *MEMORY[0x277D3D790], v101);
      (*(v107 + 104))(v109, *MEMORY[0x277D3D560], v108);
      v118 = 0;
      v116 = 0u;
      v117 = 0u;
      v81 = v102;
      sub_21B4C67A8();
      sub_21B4C68A8();

      (*(v105 + 8))(v81, v106);
    }

    sub_21B4C7498();
    v82 = sub_21B4C7538();
    v83 = sub_21B4C9CC8();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = v22;
      v86 = swift_slowAlloc();
      *&v116 = v86;
      *v84 = 141558275;
      *(v84 + 4) = 1752392040;
      *(v84 + 12) = 2081;
      v119 = v115;
      sub_21B391890();
      v87 = sub_21B4CA268();
      v89 = sub_21B36CF74(v87, v88, &v116);

      *(v84 + 14) = v89;
      _os_log_impl(&dword_21B365000, v82, v83, "Completed update to ttml identifier for %{private,mask.hash}s", v84, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v86);
      MEMORY[0x21CEF5710](v86, -1, -1);
      MEMORY[0x21CEF5710](v84, -1, -1);

      v57 = v85;
    }

    else
    {

      v57 = v22;
    }
  }

  return (v52)(v57, v17);
}

uint64_t sub_21B427808(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21B4C8208();
  v21 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21B4C8248();
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21B4C67C8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v18[1] = *(v2 + OBJC_IVAR___PFTranscriptProviderBridge_workQueue);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v11 + 16))(v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v11 + 32))(v15 + v14, v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  aBlock[4] = sub_21B4285C4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21B36CDB8;
  aBlock[3] = &block_descriptor_22;
  v16 = _Block_copy(aBlock);

  sub_21B4C8228();
  v22 = MEMORY[0x277D84F90];
  sub_21B3F8298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86BB0);
  sub_21B428450();
  sub_21B4CA298();
  MEMORY[0x21CEF3560](0, v9, v6, v16);
  _Block_release(v16);
  (*(v21 + 8))(v6, v4);
  (*(v19 + 8))(v9, v20);
}

void sub_21B427B7C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_21B427BD8(a2);
  }
}

uint64_t sub_21B427BD8(uint64_t a1)
{
  v23 = sub_21B4C67C8();
  v3 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - v5;
  v7 = sub_21B4C7558();
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR___PFTranscriptProviderBridge_wrappedProvider), *(v1 + OBJC_IVAR___PFTranscriptProviderBridge_wrappedProvider + 24));
  v11 = sub_21B4C6898();
  sub_21B4C7498();
  (*(v3 + 16))(v6, a1, v23);
  v12 = sub_21B4C7538();
  v13 = sub_21B4C9CC8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24[0] = v15;
    *v14 = 136315138;
    v24[2] = sub_21B4C67B8();
    sub_21B391890();
    v16 = sub_21B4CA268();
    v18 = v17;
    (*(v3 + 8))(v6, v23);
    v19 = sub_21B36CF74(v16, v18, v24);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_21B365000, v12, v13, "Invalidated transcript assets for %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x21CEF5710](v15, -1, -1);
    MEMORY[0x21CEF5710](v14, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v23);
  }

  (*(v21 + 8))(v10, v22);
  return v11 & 1;
}

id TranscriptProviderBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TranscriptProviderBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TranscriptProviderBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21B42825C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v15[3] = a5;
  v15[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a1, a5);
  sub_21B3F821C(v15, &a4[OBJC_IVAR___PFTranscriptProviderBridge_wrappedProvider]);
  *&a4[OBJC_IVAR___PFTranscriptProviderBridge_managedObjectContext] = a2;
  *&a4[OBJC_IVAR___PFTranscriptProviderBridge_workQueue] = a3;
  v14.receiver = a4;
  v14.super_class = type metadata accessor for TranscriptProviderBridge();
  v12 = objc_msgSendSuper2(&v14, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v12;
}

id sub_21B428334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_allocWithZone(type metadata accessor for TranscriptProviderBridge());
  (*(v11 + 16))(v13, a1, a5);
  return sub_21B42825C(v13, a2, a3, v14, a5, a6);
}

unint64_t sub_21B428450()
{
  result = qword_2811FCE10;
  if (!qword_2811FCE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD86BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FCE10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TranscriptProviderBridge.BridgeError(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TranscriptProviderBridge.BridgeError(uint64_t result, int a2, int a3)
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

void sub_21B4285C4()
{
  v1 = *(sub_21B4C67C8() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_21B427B7C(v2, v3);
}

uint64_t sub_21B428628(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87518);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static MPModelPodcastEpisode.propertiesRequiredForPopulatingPlayerItem()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B4D2830;
  *(inited + 32) = sub_21B4C9708();
  v52 = inited;
  v53 = inited + 32;
  *(inited + 40) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86A80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21B4D4CD0;
  *(v2 + 32) = sub_21B4C9708();
  *(v2 + 40) = v3;
  *(v2 + 48) = sub_21B4C9708();
  *(v2 + 56) = v4;
  *(v2 + 64) = sub_21B4C9708();
  *(v2 + 72) = v5;
  *(v2 + 80) = sub_21B4C9708();
  *(v2 + 88) = v6;
  *(v2 + 96) = sub_21B4C9708();
  *(v2 + 104) = v7;
  *(v2 + 112) = sub_21B4C9708();
  *(v2 + 120) = v8;
  *(v2 + 128) = sub_21B4C9708();
  *(v2 + 136) = v9;
  *(v2 + 144) = sub_21B4C9708();
  *(v2 + 152) = v10;
  *(v2 + 160) = sub_21B4C9708();
  *(v2 + 168) = v11;
  *(v2 + 176) = sub_21B4C9708();
  *(v2 + 184) = v12;
  *(v2 + 192) = sub_21B4C9708();
  *(v2 + 200) = v13;
  *(v2 + 208) = sub_21B4C9708();
  *(v2 + 216) = v14;
  *(v2 + 224) = sub_21B4C9708();
  *(v2 + 232) = v15;
  *(v2 + 240) = sub_21B4C9708();
  *(v2 + 248) = v16;
  *(v2 + 256) = sub_21B4C9708();
  *(v2 + 264) = v17;
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_21B4D38F0;
  *(v18 + 32) = sub_21B4C9708();
  *(v18 + 40) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_21B4D2830;
  *(v20 + 32) = sub_21B4C9708();
  *(v20 + 40) = v21;
  sub_21B36CAA8(MEMORY[0x277D84F90]);
  v22 = objc_allocWithZone(MEMORY[0x277CD6018]);
  v23 = sub_21B4C9918();

  sub_21B429D54();
  v24 = sub_21B4C9578();

  v25 = [v22 initWithProperties:v23 relationships:v24];

  *(v18 + 48) = v25;
  *(v18 + 56) = sub_21B4C9708();
  *(v18 + 64) = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_21B4D1CD0;
  *(v27 + 32) = sub_21B4C9708();
  *(v27 + 40) = v28;
  *(v27 + 48) = sub_21B4C9708();
  *(v27 + 56) = v29;
  *(v27 + 64) = sub_21B4C9708();
  *(v27 + 72) = v30;
  *(v27 + 80) = sub_21B4C9708();
  *(v27 + 88) = v31;
  *(v27 + 96) = sub_21B4C9708();
  *(v27 + 104) = v32;
  v33 = swift_initStackObject();
  *(v33 + 16) = xmmword_21B4D2830;
  *(v33 + 32) = sub_21B4C9708();
  *(v33 + 40) = v34;
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_21B4D2830;
  *(v35 + 32) = sub_21B4C9708();
  *(v35 + 40) = v36;
  v37 = sub_21B4C9918();

  v38 = [objc_opt_self() propertySetWithProperties_];

  *(v33 + 48) = v38;
  sub_21B36CAA8(v33);
  swift_setDeallocating();
  sub_21B3F2D94(v33 + 32, &qword_27CD87528);
  v39 = objc_allocWithZone(MEMORY[0x277CD6018]);
  v40 = sub_21B4C9918();

  v41 = sub_21B4C9578();

  v42 = [v39 initWithProperties:v40 relationships:v41];

  *(v18 + 72) = v42;
  sub_21B36CAA8(v18);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87528);
  swift_arrayDestroy();
  v43 = objc_allocWithZone(MEMORY[0x277CD6018]);
  v44 = sub_21B4C9918();

  v45 = sub_21B4C9578();

  v46 = [v43 initWithProperties:v44 relationships:v45];

  *(v52 + 48) = v46;
  sub_21B36CAA8(v52);
  swift_setDeallocating();
  sub_21B3F2D94(v53, &qword_27CD87528);
  v47 = objc_allocWithZone(MEMORY[0x277CD6018]);
  v48 = sub_21B4C9918();
  v49 = sub_21B4C9578();

  v50 = [v47 initWithProperties:v48 relationships:v49];

  return v50;
}

id MPModelPodcastEpisode.artistSubtitle.getter()
{
  result = [v0 author];
  if (result)
  {
    v2 = result;
    v3 = [result name];

    if (v3)
    {
      v4 = sub_21B4C9708();

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

Swift::String_optional __swiftcall MPModelPodcastEpisode.miniplayerSubtitleText(for:)(UIUserInterfaceSizeClass a1)
{
  v2 = v1;
  v4 = [v2 podcast];
  if (v4 && (v5 = v4, v6 = [v4 author], v5, v6) && (v7 = objc_msgSend(v6, sel_name), v6, v7))
  {
    v8 = sub_21B4C9708();
    v10 = v9;

    v11 = sub_21B36CCAC(0, 1, 1, MEMORY[0x277D84F90]);
    v12 = *(v11 + 2);
    v13 = *(v11 + 3);
    v14 = v12 + 1;
    if (v12 >= v13 >> 1)
    {
      v29 = v11;
      v30 = *(v11 + 2);
      v31 = sub_21B36CCAC((v13 > 1), v12 + 1, 1, v29);
      v12 = v30;
      v11 = v31;
    }

    *(v11 + 2) = v14;
    v15 = &v11[16 * v12];
    *(v15 + 4) = v8;
    *(v15 + 5) = v10;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v16 = [v2 author];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 name];

    if (v18)
    {
      v19 = sub_21B4C9708();
      v21 = v20;

      v22 = *(v11 + 2);
      if (!v22 || a1 == UIUserInterfaceSizeClassRegular)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v22 >= *(v11 + 3) >> 1)
        {
          v11 = sub_21B36CCAC(isUniquelyReferenced_nonNull_native, v22 + 1, 1, v11);
        }

        sub_21B429E04(0, 0, 1, v19, v21);
      }
    }
  }

  if (*(v11 + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86800);
    sub_21B429DA0();
    v24 = sub_21B4C9698();
    v26 = v25;
  }

  else
  {

    v24 = 0;
    v26 = 0;
  }

  v27 = v24;
  v28 = v26;
  result.value._object = v28;
  result.value._countAndFlagsBits = v27;
  return result;
}

void *IMPlayerItem.init(modelObject:includeArtworkCatalog:)(void *a1, int a2)
{
  v104 = a2;
  v3 = sub_21B4C5748();
  v105 = *(v3 - 8);
  v106 = v3;
  MEMORY[0x28223BE20](v3);
  v100 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v98 = &v97 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E60);
  MEMORY[0x28223BE20](v7 - 8);
  v99 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v103 = &v97 - v10;
  MEMORY[0x28223BE20](v11);
  v101 = &v97 - v12;
  MEMORY[0x28223BE20](v13);
  v102 = &v97 - v14;
  v15 = sub_21B4C54D8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87530);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v97 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87538);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v97 - v26;
  v28 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v29 = [a1 title];
  [v28 setTitle_];

  v30 = a1;
  v31 = [v30 identifiers];
  v32 = [v31 vendorID];

  [v28 setEpisodeGuid_];
  [v30 duration];
  [v28 setDuration_];
  [v28 setIsVideo_];
  v33 = [v30 releaseDateComponents];
  if (v33)
  {
    v34 = v33;
    sub_21B4C54B8();

    (*(v16 + 56))(v21, 0, 1, v15);
  }

  else
  {
    (*(v16 + 56))(v21, 1, 1, v15);
  }

  sub_21B429EE8(v21, v24, &qword_27CD87530);
  if ((*(v16 + 48))(v24, 1, v15))
  {
    sub_21B3F2D94(v24, &qword_27CD87530);
    v35 = sub_21B4C5858();
    (*(*(v35 - 8) + 56))(v27, 1, 1, v35);
    v36 = 0;
  }

  else
  {
    (*(v16 + 16))(v18, v24, v15);
    sub_21B3F2D94(v24, &qword_27CD87530);
    sub_21B4C54C8();
    (*(v16 + 8))(v18, v15);
    v37 = sub_21B4C5858();
    v38 = *(v37 - 8);
    v36 = 0;
    if ((*(v38 + 48))(v27, 1, v37) != 1)
    {
      v36 = sub_21B4C5818();
      (*(v38 + 8))(v27, v37);
    }
  }

  [v28 setPubDate_];

  v39 = [v30 podcast];
  if (v39)
  {
    v40 = v39;
    v41 = [v39 supportsSubscription];

    v42 = v41 ^ 1;
  }

  else
  {
    v42 = 0;
  }

  [v28 setIsNotSubscribeable_];
  [v28 setIsExplicit_];
  if (v104)
  {
    v43 = [v30 artworkCatalog];
  }

  else
  {
    v43 = 0;
  }

  [v28 setArtworkCatalog_];

  [v28 setSeasonNumber_];
  [v28 setEpisodeNumber_];
  v44 = [v30 podcast];
  if (v44)
  {
    v45 = v44;
    v46 = [v44 sortType];

    v47 = v46 == 2;
  }

  else
  {
    v47 = 0;
  }

  [v28 setPodcastIsSerial_];

  v48 = [v30 episodeType];
  v49 = v28;
  v50 = v49;
  if (v48 == 3)
  {
    v51 = 1;
  }

  else
  {
    v51 = 2 * (v48 == 2);
  }

  [v49 setEpisodeType_];
  v52 = [v30 podcast];
  if (!v52 || (v53 = v52, v54 = [v52 author], v53, !v54) || (v55 = objc_msgSend(v54, sel_name), v54, !v55))
  {
    v55 = 0;
  }

  [v50 setAlbum_];

  v56 = [v30 identifiers];
  v57 = [v56 library];

  if (v57)
  {
    v58 = [v57 databaseID];
    swift_unknownObjectRelease();
    sub_21B4C9708();

    v57 = sub_21B4C96C8();
  }

  v59 = v106;
  [v50 setEpisodeUuid_];

  v60 = [v30 identifiers];
  v61 = [v60 universalStore];

  if (v61)
  {
    [v61 adamID];
    swift_unknownObjectRelease();
    v62 = sub_21B4C7238();

    v63 = v62;
    if ((v62 & 0x8000000000000000) == 0)
    {
      goto LABEL_30;
    }

    __break(1u);
  }

  v63 = 0;
LABEL_30:
  [v50 setEpisodeStoreId_];
  v64 = [v30 podcast];
  if (v64)
  {
    v65 = v64;
    v66 = [v64 feedURL];

    if (v66)
    {
      v67 = v101;
      sub_21B4C56E8();

      v68 = v67;
      v69 = 0;
    }

    else
    {
      v69 = 1;
      v68 = v101;
    }

    v70 = v102;
    v72 = v105;
    (*(v105 + 56))(v68, v69, 1, v59);
    sub_21B429EE8(v68, v70, &qword_27CD86E60);
    if ((*(v72 + 48))(v70, 1, v59))
    {
      sub_21B3F2D94(v70, &qword_27CD86E60);
      v71 = 0;
    }

    else
    {
      v73 = v98;
      (*(v72 + 16))(v98, v70, v59);
      sub_21B3F2D94(v70, &qword_27CD86E60);
      sub_21B4C5658();
      (*(v72 + 8))(v73, v59);
      v71 = sub_21B4C96C8();
    }
  }

  else
  {
    v71 = 0;
  }

  [v50 setPodcastFeedUrl_];

  v74 = [v30 author];
  if (!v74 || (v75 = v74, v76 = [v74 name], v75, !v76))
  {
    v76 = 0;
  }

  [v50 setAuthor_];

  v77 = [v30 podcast];
  if (!v77)
  {
LABEL_45:
    v82 = 0;
    goto LABEL_47;
  }

  v78 = v77;
  v79 = [v77 identifiers];
  v80 = [v79 universalStore];

  if (v80)
  {
    [v80 adamID];
    swift_unknownObjectRelease();
    v81 = sub_21B4C7238();

    v82 = v81;
    v59 = v106;
    if ((v81 & 0x8000000000000000) == 0)
    {
      goto LABEL_47;
    }

    __break(1u);
    goto LABEL_45;
  }

  v82 = 0;
  v59 = v106;
LABEL_47:
  [v50 setPodcastStoreId_];
  v83 = [v30 shareURL];
  if (v83)
  {
    v84 = v100;
    v85 = v83;
    sub_21B4C56E8();

    v86 = sub_21B4C5688();
    v87 = v105;
    (*(v105 + 8))(v84, v59);
  }

  else
  {
    v86 = 0;
    v87 = v105;
  }

  [v50 setEpisodeShareUrl_];

  v88 = [v30 podcast];
  if (v88)
  {
    v89 = v88;
    v90 = [v88 shareURL];

    if (v90)
    {
      v91 = v99;
      sub_21B4C56E8();

      v92 = 0;
      v93 = v103;
    }

    else
    {
      v92 = 1;
      v93 = v103;
      v91 = v99;
    }

    (*(v87 + 56))(v91, v92, 1, v59);
    sub_21B429EE8(v91, v93, &qword_27CD86E60);
    if ((*(v87 + 48))(v93, 1, v59) == 1)
    {
      v94 = 0;
    }

    else
    {
      v94 = sub_21B4C5688();
      (*(v87 + 8))(v93, v59);
    }
  }

  else
  {
    (*(v87 + 56))(v103, 1, 1, v59);
    v94 = 0;
  }

  [v50 setPodcastShareUrl_];

  v95 = [v30 transcriptIdentifier];
  [v50 setTranscriptIdentifier_];

  return v50;
}

unint64_t sub_21B429D54()
{
  result = qword_281200520;
  if (!qword_281200520)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281200520);
  }

  return result;
}

unint64_t sub_21B429DA0()
{
  result = qword_281200560;
  if (!qword_281200560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD86800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281200560);
  }

  return result;
}

unint64_t sub_21B429E04(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_21B429EE8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21B429F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_21B4C5468();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

id IMPlayerItem.populateContentItem(_:)(void *a1)
{
  v2 = v1;
  v172 = sub_21B4C5748();
  v169 = *(v172 - 8);
  MEMORY[0x28223BE20](v172 - 8);
  v165 = &v163 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E60);
  MEMORY[0x28223BE20](v5 - 8);
  v167 = &v163 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v168 = &v163 - v8;
  MEMORY[0x28223BE20](v9);
  v166 = &v163 - v10;
  MEMORY[0x28223BE20](v11);
  v164 = &v163 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v163 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v163 - v17;
  v19 = sub_21B4C5858();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v163 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = [v1 album];
  [a1 setAlbumArtistName_];

  v25 = [v2 author];
  [a1 setTrackArtistName_];

  v26 = [v2 title];
  [a1 setTitle_];

  [v2 duration];
  [a1 setDuration_];
  [v2 playhead];
  [a1 setElapsedTime_];
  [a1 setPlaybackRate_];
  v27 = [v2 album];
  [a1 setAlbumName_];

  if ([v2 areChaptersLoaded] && (v28 = objc_msgSend(v2, sel_timeChapters)) != 0)
  {
    v29 = v28;
    v30 = [v28 count];

    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  [a1 setNumberOfChildren_];
  [a1 setContainer_];
  [a1 setHasArtwork_];
  v32 = [v2 artworkIdentifier];
  [a1 setArtworkIdentifier_];

  v33 = [a1 identifier];
  v34 = sub_21B4C9708();
  v36 = v35;

  v177[0] = v34;
  v177[1] = v36;
  sub_21B3A5DF0();
  v37 = sub_21B4CA238();

  [a1 setLegacyUniqueID_];
  [a1 setSharableItem_];
  [a1 setHasDescription_];
  [a1 setStoreID_];
  [a1 setStoreAlbumID_];
  v38 = [v2 episodeGuid];
  if (v38 || (v38 = [v2 episodeUuid]) != 0)
  {
    v39 = v38;
    sub_21B4C9708();

    v40 = sub_21B4C96C8();
  }

  else
  {
    v40 = 0;
  }

  [a1 setExternalContentIdentifier_];

  v41 = [v2 podcastUuid];
  [a1 setCollectionIdentifier_];

  if ([v2 isVideo])
  {
    v42 = 1024;
  }

  else
  {
    v42 = 2;
  }

  [a1 setMediaType_];
  [a1 setSeasonNumber_];
  [a1 setEpisodeNumber_];
  v43 = [v2 episodeType];
  v44 = v172;
  if (v43 > 2)
  {
    v45 = 1;
  }

  else
  {
    v45 = qword_21B4D4D18[v43];
  }

  [a1 setEpisodeType_];
  [a1 setPlayable_];
  v46 = [v2 pubDate];
  if (v46)
  {
    v47 = v46;
    sub_21B4C5838();

    v48 = sub_21B4C5818();
    (*(v20 + 8))(v23, v19);
  }

  else
  {
    v48 = 0;
  }

  [a1 setReleaseDate_];

  v49 = MEMORY[0x277D84F98];
  v178 = MEMORY[0x277D84F98];
  v50 = [v2 podcastFeedUrl];
  if (v50)
  {
    v51 = v50;
    v52 = sub_21B4C9708();
    v54 = v53;

    *&v175 = sub_21B4C9708();
    *(&v175 + 1) = v55;
    v56 = MEMORY[0x277D837D0];
    sub_21B4CA2E8();
    v176 = v56;
    *&v175 = v52;
    *(&v175 + 1) = v54;
    sub_21B36EE80(&v175, v174);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v173 = v49;
    sub_21B42BC30(v174, v177, isUniquelyReferenced_nonNull_native);
    sub_21B3F135C(v177);
    v178 = v173;
  }

  v58 = [v2 episodeShareUrl];
  if (v58)
  {
    v59 = v58;
    sub_21B4C56E8();

    v60 = 0;
  }

  else
  {
    v60 = 1;
  }

  v61 = v169;
  v62 = (v169 + 56);
  v171 = *(v169 + 56);
  v171(v15, v60, 1, v44);
  sub_21B41B8D4(v15, v18);
  v170 = *(v61 + 48);
  if (v170(v18, 1, v44))
  {
    sub_21B3F2D94(v18, &qword_27CD86E60);
  }

  else
  {
    v63 = v165;
    (*(v61 + 16))(v165, v18, v44);
    sub_21B3F2D94(v18, &qword_27CD86E60);
    v64 = sub_21B4C5658();
    v66 = v65;
    (*(v61 + 8))(v63, v44);
    if (sub_21B4C97C8() < 1)
    {
    }

    else
    {
      *&v175 = sub_21B4C9708();
      *(&v175 + 1) = v67;
      v68 = MEMORY[0x277D837D0];
      sub_21B4CA2E8();
      v176 = v68;
      *&v175 = v64;
      *(&v175 + 1) = v66;
      sub_21B36EE80(&v175, v174);
      v69 = v178;
      v70 = swift_isUniquelyReferenced_nonNull_native();
      v173 = v69;
      sub_21B42BC30(v174, v177, v70);
      sub_21B3F135C(v177);
      v178 = v173;
    }
  }

  v71 = v166;
  v72 = [v2 supportsArtworkUrl];
  v73 = MEMORY[0x277D839B0];
  if (v72)
  {
    v74 = [v2 artworkUrl];
    if (v74)
    {
      v75 = v74;
      sub_21B4C56E8();

      v76 = 0;
    }

    else
    {
      v76 = 1;
    }

    v171(v71, v76, 1, v44);
    v78 = v164;
    sub_21B41B8D4(v71, v164);
    if (v170(v78, 1, v44))
    {
      sub_21B3F2D94(v78, &qword_27CD86E60);
      v79 = 0;
    }

    else
    {
      v80 = v165;
      (*(v61 + 16))(v165, v78, v44);
      sub_21B3F2D94(v78, &qword_27CD86E60);
      sub_21B4C5658();
      (*(v61 + 8))(v80, v44);
      v79 = sub_21B4C96C8();
    }

    [a1 setArtworkURL_];

    *&v175 = sub_21B4C9708();
    *(&v175 + 1) = v81;
    sub_21B4CA2E8();
    v176 = v73;
    LOBYTE(v175) = 1;
    sub_21B36EE80(&v175, v174);
    v82 = v178;
    v83 = swift_isUniquelyReferenced_nonNull_native();
    v173 = v82;
    sub_21B42BC30(v174, v177, v83);
    sub_21B3F135C(v177);
    v77 = v173;
  }

  else
  {
    v77 = v178;
  }

  *&v175 = sub_21B4C9708();
  *(&v175 + 1) = v84;
  v85 = MEMORY[0x277D837D0];
  sub_21B4CA2E8();
  v86 = [v2 isNotSubscribeable];
  v176 = v73;
  LOBYTE(v175) = v86 ^ 1;
  sub_21B36EE80(&v175, v174);
  v87 = swift_isUniquelyReferenced_nonNull_native();
  v173 = v77;
  sub_21B42BC30(v174, v177, v87);
  sub_21B3F135C(v177);
  v88 = v173;
  *&v175 = sub_21B4C9708();
  *(&v175 + 1) = v89;
  sub_21B4CA2E8();
  v90 = [v2 isPlaceholder];
  v176 = v73;
  LOBYTE(v175) = v90;
  sub_21B36EE80(&v175, v174);
  v91 = swift_isUniquelyReferenced_nonNull_native();
  v173 = v88;
  sub_21B42BC30(v174, v177, v91);
  sub_21B3F135C(v177);
  v92 = v173;
  v178 = v173;
  v93 = [v2 podcastIsSerial];
  *&v175 = sub_21B4C9708();
  *(&v175 + 1) = v94;
  sub_21B4CA2E8();
  if (v93)
  {
    v95 = 2;
  }

  else
  {
    v95 = 1;
  }

  v176 = MEMORY[0x277D83B88];
  *&v175 = v95;
  sub_21B36EE80(&v175, v174);
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v173 = v92;
  sub_21B42BC30(v174, v177, v96);
  sub_21B3F135C(v177);
  v97 = v173;
  v166 = v62;
  v178 = v173;
  v98 = [v2 episodeUuid];
  v99 = MEMORY[0x277D84F98];
  if (v98)
  {
    v100 = v98;
    v101 = sub_21B4C9708();
    v103 = v102;

    *&v175 = sub_21B4C9708();
    *(&v175 + 1) = v104;
    sub_21B4CA2E8();
    v176 = v85;
    *&v175 = v101;
    *(&v175 + 1) = v103;
    sub_21B36EE80(&v175, v174);
    v105 = swift_isUniquelyReferenced_nonNull_native();
    v173 = v99;
    sub_21B42BC30(v174, v177, v105);
    sub_21B3F135C(v177);
    v99 = v173;
  }

  *&v175 = sub_21B4C9708();
  *(&v175 + 1) = v106;
  sub_21B4CA2E8();
  v107 = [v2 isLocal];
  v176 = v73;
  LOBYTE(v175) = v107;
  sub_21B36EE80(&v175, v174);
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v173 = v99;
  sub_21B42BC30(v174, v177, v108);
  sub_21B3F135C(v177);
  [a1 setSharableItem_];
  v109 = [v2 showArtworkProperties];
  if (v109)
  {
    v110 = v109;
    v111 = sub_21B4C6318();
    v113 = v112;

    *&v175 = sub_21B4C9708();
    *(&v175 + 1) = v114;
    sub_21B4CA2E8();
    v176 = v85;
    *&v175 = v111;
    *(&v175 + 1) = v113;
    sub_21B36EE80(&v175, v174);
    v115 = swift_isUniquelyReferenced_nonNull_native();
    v173 = v97;
    sub_21B42BC30(v174, v177, v115);
    sub_21B3F135C(v177);
    v97 = v173;
    v178 = v173;
  }

  *&v175 = sub_21B4C9708();
  *(&v175 + 1) = v116;
  sub_21B4CA2E8();
  v117 = sub_21B42B588();
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87540);
  *&v175 = v117;
  sub_21B36EE80(&v175, v174);
  v118 = swift_isUniquelyReferenced_nonNull_native();
  v173 = v97;
  sub_21B42BC30(v174, v177, v118);
  sub_21B3F135C(v177);
  v119 = v173;
  v178 = v173;
  if (sub_21B4C5CD8())
  {
    *&v175 = sub_21B4C9708();
    *(&v175 + 1) = v120;
    v121 = MEMORY[0x277D837D0];
    sub_21B4CA2E8();
    v122 = [v2 transcriptIdentifier];
    if (v122)
    {
      v123 = v122;
      v124 = sub_21B4C9708();
      v126 = v125;

      v176 = v121;
      *&v175 = v124;
      *(&v175 + 1) = v126;
      sub_21B36EE80(&v175, v174);
      v127 = swift_isUniquelyReferenced_nonNull_native();
      v173 = v119;
      sub_21B42BC30(v174, v177, v127);
      sub_21B3F135C(v177);
      v178 = v173;
    }

    else
    {
      sub_21B42BA44(v177, &v175);
      sub_21B3F2D94(&v175, &qword_27CD86E70);
      sub_21B3F135C(v177);
    }

    *&v175 = sub_21B4C9708();
    *(&v175 + 1) = v128;
    v129 = MEMORY[0x277D837D0];
    sub_21B4CA2E8();
    v130 = [v2 transcriptSource];
    if (v130)
    {
      v131 = v130;
      v132 = sub_21B4C9708();
      v134 = v133;

      v176 = v129;
      *&v175 = v132;
      *(&v175 + 1) = v134;
      sub_21B36EE80(&v175, v174);
      v135 = v178;
      v136 = swift_isUniquelyReferenced_nonNull_native();
      v173 = v135;
      sub_21B42BC30(v174, v177, v136);
      sub_21B3F135C(v177);
      v178 = v173;
    }

    else
    {
      sub_21B42BA44(v177, &v175);
      sub_21B3F2D94(&v175, &qword_27CD86E70);
      sub_21B3F135C(v177);
    }

    *&v175 = sub_21B4C9708();
    *(&v175 + 1) = v137;
    v138 = MEMORY[0x277D837D0];
    sub_21B4CA2E8();
    v139 = [v2 priceType];
    if (v139)
    {
      v140 = v139;
      v141 = sub_21B4C9708();
      v143 = v142;

      v176 = v138;
      *&v175 = v141;
      *(&v175 + 1) = v143;
      sub_21B36EE80(&v175, v174);
      v144 = v178;
      v145 = swift_isUniquelyReferenced_nonNull_native();
      v173 = v144;
      sub_21B42BC30(v174, v177, v145);
      sub_21B3F135C(v177);
      v178 = v173;
    }

    else
    {
      sub_21B42BA44(v177, &v175);
      sub_21B3F2D94(&v175, &qword_27CD86E70);
      sub_21B3F135C(v177);
    }
  }

  v146 = sub_21B4C9578();
  [a1 setUserInfo_];

  v147 = sub_21B4C9578();

  [a1 setDeviceSpecificUserInfo_];

  [a1 setExplicitContent_];
  [a1 setPlayCount_];
  v148 = [v2 podcastShareUrl];
  if (v148)
  {
    v149 = v167;
    v150 = v148;
    sub_21B4C56E8();

    v151 = 0;
    v152 = v172;
  }

  else
  {
    v151 = 1;
    v152 = v172;
    v149 = v167;
  }

  v171(v149, v151, 1, v152);
  v153 = v168;
  sub_21B41B8D4(v149, v168);
  if (v170(v153, 1, v152))
  {
    sub_21B3F2D94(v153, &qword_27CD86E60);
  }

  else
  {
    v154 = v169;
    v155 = v165;
    (*(v169 + 16))(v165, v153, v152);
    sub_21B3F2D94(v153, &qword_27CD86E60);
    v156 = sub_21B4C5658();
    v158 = v157;
    (*(v154 + 8))(v155, v152);
    *&v175 = sub_21B4C9708();
    *(&v175 + 1) = v159;
    sub_21B4CA2E8();
    v176 = v85;
    *&v175 = v156;
    *(&v175 + 1) = v158;
    sub_21B36EE80(&v175, v174);
    v160 = v178;
    v161 = swift_isUniquelyReferenced_nonNull_native();
    v173 = v160;
    sub_21B42BC30(v174, v177, v161);
    sub_21B3F135C(v177);
  }

  [a1 setStreamingContent_];
  return [a1 setEditingStyleFlags_];
}

uint64_t sub_21B42B588()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87548);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B4D42A0;
  *(inited + 32) = sub_21B4C6A68();
  *(inited + 40) = v3;
  v4 = [v0 showArtworkProperties];
  if (v4)
  {
    v5 = v4;
    v6 = sub_21B4C62E8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  *(inited + 48) = v6;
  *(inited + 56) = v8;
  *(inited + 64) = sub_21B4C6A78();
  *(inited + 72) = v9;
  v10 = [v1 uberArtworkProperties];
  if (v10)
  {
    v11 = v10;
    v12 = sub_21B4C62E8();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0xF000000000000000;
  }

  *(inited + 80) = v12;
  *(inited + 88) = v14;
  *(inited + 96) = sub_21B4C6A88();
  *(inited + 104) = v15;
  v16 = [v1 episodeArtworkProperties];
  if (v16)
  {
    v17 = v16;
    v18 = sub_21B4C62E8();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xF000000000000000;
  }

  *(inited + 112) = v18;
  *(inited + 120) = v20;
  v21 = sub_21B40D040(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87550);
  swift_arrayDestroy();
  v22 = sub_21B42B794(v21);

  return v22;
}

uint64_t sub_21B42B794(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v36 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_9:
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = (v10 << 10) | (16 * v11);
      v13 = *(*(a1 + 56) + v12);
      v14 = *(*(a1 + 56) + v12 + 8);
      if (v14 >> 60 != 15)
      {
        v15 = (*(a1 + 48) + v12);
        v34 = v15[1];
        v35 = *v15;
        v16 = *(v2 + 16);
        v33 = v14;
        v32 = v13;
        v17 = v13;
        if (*(v2 + 24) <= v16)
        {
          v20 = v14;
          sub_21B40D9F4(v13, v14);
          sub_21B40D9F4(v17, v20);

          sub_21B45BB14(v16 + 1, 1);
          v2 = v36;
          v19 = v34;
        }

        else
        {
          v18 = v14;
          sub_21B40D9F4(v13, v14);
          sub_21B40D9F4(v17, v18);
          v19 = v34;
        }

        sub_21B4CA6E8();
        sub_21B4C9658();
        result = sub_21B4CA738();
        v21 = v2 + 64;
        v22 = -1 << *(v2 + 32);
        v23 = result & ~v22;
        v24 = v23 >> 6;
        if (((-1 << v23) & ~*(v2 + 64 + 8 * (v23 >> 6))) == 0)
        {
          v26 = 0;
          v27 = (63 - v22) >> 6;
          v14 = v33;
          v13 = v32;
          while (++v24 != v27 || (v26 & 1) == 0)
          {
            v28 = v24 == v27;
            if (v24 == v27)
            {
              v24 = 0;
            }

            v26 |= v28;
            v29 = *(v21 + 8 * v24);
            if (v29 != -1)
            {
              v25 = __clz(__rbit64(~v29)) + (v24 << 6);
              goto LABEL_25;
            }
          }

LABEL_28:
          __break(1u);
          return result;
        }

        v25 = __clz(__rbit64((-1 << v23) & ~*(v2 + 64 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
        v14 = v33;
        v13 = v32;
LABEL_25:
        *(v21 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v30 = 16 * v25;
        v31 = (*(v2 + 48) + v30);
        *v31 = v35;
        v31[1] = v19;
        *(*(v2 + 56) + v30) = v13;
        ++*(v2 + 16);
      }

      result = sub_21B36D4E0(v13, v14);
      v9 = v10;
      if (!v6)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      goto LABEL_9;
    }
  }

  return v2;
}

double sub_21B42BA44@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_21B37186C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21B45CBFC();
      v9 = v11;
    }

    sub_21B3F135C(*(v9 + 48) + 40 * v7);
    sub_21B36EE80((*(v9 + 56) + 32 * v7), a2);
    sub_21B4155A8(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_21B42BAE8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_21B36CEF8(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21B45D2F0();
      v10 = v15;
    }

    v11 = (*(v10 + 56) + (v8 << 6));
    v12 = v11[1];
    *a3 = *v11;
    a3[1] = v12;
    v13 = v11[3];
    a3[2] = v11[2];
    a3[3] = v13;
    sub_21B41574C(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_21B42BB98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_21B39775C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_21B45D490();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_21B415904(v6, v8);
  *v3 = v8;
  return v9;
}

_OWORD *sub_21B42BC30(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_21B37186C(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_21B45CBFC();
      goto LABEL_7;
    }

    sub_21B45BDD0(v13, a3 & 1);
    v19 = sub_21B37186C(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_21B3FB4AC(a2, v21);
      return sub_21B42BEF4(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_21B4CA688();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1(v17);

  return sub_21B36EE80(a1, v17);
}

uint64_t sub_21B42BD7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21B36CEF8(a2, a3);
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
      sub_21B45C6D8(v16, a4 & 1);
      v11 = sub_21B36CEF8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        v11 = sub_21B4CA688();
        __break(1u);
        return MEMORY[0x2821F96F8](v11, v23);
      }
    }

    else
    {
      v19 = v11;
      sub_21B45D184();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8](v11, v23);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

_OWORD *sub_21B42BEF4(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_21B36EE80(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

id IMPlayerItem.init(episode:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithEpisode_];

  return v2;
}

{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87538);
  MEMORY[0x28223BE20](v4 - 8);
  v198 = &v195 - v5;
  v200 = sub_21B4C6798();
  v203 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v197 = &v195 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v196 = &v195 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v195 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v195 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v195 - v16;
  v18 = sub_21B4C5858();
  v201 = *(v18 - 8);
  v202 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v195 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21B4C5748();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v195 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = a1;
  v26 = [a1 bestUrl];
  if (v26)
  {
    v27 = v26;
    sub_21B4C56E8();

    v28 = sub_21B4C5688();
    (*(v22 + 8))(v25, v21);
  }

  else
  {
    v28 = 0;
  }

  v29 = [v2 initWithUrl_];

  v30 = v29;
  v31 = v204;
  v32 = [v204 title];
  [v30 setTitle_];

  v33 = [objc_opt_self() validatedIdNumberFromStoreId_];
  if (v33)
  {
    v34 = v33;
    v35 = [v33 longLongValue];
  }

  else
  {
    v35 = 0;
  }

  [v30 setEpisodeStoreId_];
  v36 = v204;
  v37 = [v204 uuid];
  [v30 setEpisodeUuid_];

  v38 = [v36 guid];
  [v30 setEpisodeGuid_];

  v39 = [v36 objectID];
  [v30 setEpisodeObjectID_];

  [v36 duration];
  [v30 setDuration_];
  [v36 playhead];
  [v30 setPlayhead_];
  [v30 setIsVideo_];
  [v36 pubDate];
  sub_21B4C57A8();
  v41 = sub_21B4C5818();
  (*(v201 + 8))(v20, v202);
  [v30 setPubDate_];

  [v30 setEpisodePID_];
  [v30 setIsNotSubscribeable_];
  [v30 setIsExplicit_];

  v42 = [v36 podcast];
  if (v42)
  {
    v43 = v42;
    v44 = [v42 imageURL];

    if (v44)
    {
      sub_21B4C9708();

      sub_21B4C5718();

      if ((*(v22 + 48))(v17, 1, v21) == 1)
      {
        v45 = 0;
      }

      else
      {
        v45 = sub_21B4C5688();
        (*(v22 + 8))(v17, v21);
      }

      [v30 setArtworkUrl_];
    }
  }

  v46 = v204;
  [v30 setSeasonNumber_];
  [v30 setEpisodeNumber_];
  [v30 setEpisodeType_];
  v47 = [v46 podcast];
  if (v47)
  {
    v48 = v47;
    v49 = [v47 isSerialShowTypeInFeed];
  }

  else
  {
    v49 = 0;
  }

  [v30 setPodcastIsSerial_];
  v50 = v204;
  [v30 setPlayCount_];
  v51 = [v50 podcast];
  if (v51)
  {
    v52 = v51;
    v53 = [v51 bestAvailableStoreCleanURL];

    if (v53)
    {
      sub_21B4C56E8();

      v54 = 0;
    }

    else
    {
      v54 = 1;
    }

    (*(v22 + 56))(v11, v54, 1, v21);
    sub_21B41B8D4(v11, v14);
    if ((*(v22 + 48))(v14, 1, v21) == 1)
    {
      v55 = 0;
    }

    else
    {
      v55 = sub_21B4C5688();
      (*(v22 + 8))(v14, v21);
    }
  }

  else
  {
    (*(v22 + 56))(v14, 1, 1, v21);
    v55 = 0;
  }

  [v30 setPodcastShareUrl_];

  v56 = v204;
  v57 = [v204 priceType];
  [v30 setPriceType_];

  v58 = [v56 podcast];
  if (!v58 || (v59 = v58, v60 = [v58 displayType], v59, !v60))
  {
    v60 = 0;
  }

  [v30 setPodcastDisplayType_];

  v61 = [v204 podcast];
  if (v61 && (v62 = v61, v63 = [v61 channel], v62, v63))
  {
    v64 = [v63 subscriptionActive];
  }

  else
  {
    v64 = 0;
  }

  [v30 setPaidSubscriptionActive_];
  v65 = [v204 podcast];
  v199 = v30;
  if (v65 && (v66 = v65, v67 = [v65 channel], v66, v67) && (v68 = objc_msgSend(v67, sel_subscriptionOfferAppType), v67, v68))
  {
    v69 = sub_21B4C9708();
    v71 = v70;
  }

  else
  {
    v69 = 0;
    v71 = 0;
  }

  v72 = v203;
  v73 = *(v203 + 104);
  v74 = v196;
  v75 = v200;
  v73(v196, *MEMORY[0x277D3D6E8], v200);
  v76 = sub_21B4C6788();
  v78 = v77;
  v79 = *(v72 + 8);
  v203 = v72 + 8;
  v79(v74, v75);
  if (v71)
  {
    if (v69 == v76 && v71 == v78)
    {
      v80 = 1;
    }

    else
    {
      v80 = sub_21B4CA608();
    }
  }

  else
  {
    v80 = 0;
  }

  [v199 setIsAppleMusicEpisode_];
  v81 = v204;
  v82 = [v204 podcast];
  if (v82 && (v83 = v82, v84 = [v82 channel], v83, v84) && (v85 = objc_msgSend(v84, sel_subscriptionOfferAppType), v84, v85))
  {
    v86 = sub_21B4C9708();
    v88 = v87;
  }

  else
  {
    v86 = 0;
    v88 = 0;
  }

  v89 = v197;
  v90 = v200;
  v73(v197, *MEMORY[0x277D3D6E0], v200);
  v91 = sub_21B4C6788();
  v93 = v92;
  v79(v89, v90);
  if (v88)
  {
    v94 = v198;
    if (v86 == v91 && v88 == v93)
    {
      v95 = 1;
    }

    else
    {
      v95 = sub_21B4CA608();
    }

    v96 = &off_2782BF000;
    v97 = v199;
  }

  else
  {
    v95 = 0;
    v96 = &off_2782BF000;
    v94 = v198;
    v97 = v199;
  }

  [v97 setIsAppleNewsEpisode_];
  v98 = [v81 v96[187]];
  if (v98 && (v99 = v98, v100 = [v98 channel], v99, v100))
  {
    v101 = [v100 storeId];
  }

  else
  {
    v101 = 0;
  }

  [v97 setChannelStoreId_];
  [v97 setEntitled_];
  v102 = [v81 v96[187]];
  if (!v102 || (v103 = v102, v104 = [v102 feedURL], v103, !v104))
  {
    v104 = 0;
  }

  [v97 setPodcastFeedUrl_];

  v105 = [v81 v96[187]];
  if (v105)
  {
    v106 = v105;
    v107 = [v105 storeCollectionId];
  }

  else
  {
    v107 = 0;
  }

  [v97 setPodcastStoreId_];
  if (![v97 paidSubscriptionActive])
  {
    v108 = [v81 freeTranscriptProvider];
    if (v108)
    {
      goto LABEL_67;
    }

LABEL_69:
    v110 = 0;
    goto LABEL_70;
  }

  v108 = [v81 entitledTranscriptProvider];
  if (!v108)
  {
    goto LABEL_69;
  }

LABEL_67:
  v109 = v108;
  sub_21B4C9708();

  v110 = sub_21B4C96C8();

LABEL_70:
  [v97 setTranscriptSource_];

  v111 = [v81 transcriptIdentifier];
  [v97 setTranscriptIdentifier_];

  v112 = [v81 v96[187]];
  if (v112)
  {
    v113 = v112;
    v114 = [v112 title];

    if (v114)
    {
      sub_21B4C9708();
    }
  }

  [v97 episodeNumber];
  [v97 seasonNumber];
  v115 = [v81 v96[187]];
  if (v115)
  {
    v116 = v115;
    [v115 isSerialShowTypeInFeed];
  }

  if ([v81 valueForKey_])
  {
    sub_21B4CA278();
    swift_unknownObjectRelease();
  }

  else
  {
    v205 = 0u;
    v206 = 0u;
  }

  v117 = &off_2782BF000;
  v207[0] = v205;
  v207[1] = v206;
  if (*(&v206 + 1))
  {
    v118 = v202;
    v119 = swift_dynamicCast();
    (*(v201 + 56))(v94, v119 ^ 1u, 1, v118);
  }

  else
  {
    sub_21B3F2D94(v207, &qword_27CD86E70);
    (*(v201 + 56))(v94, 1, 1, v202);
  }

  sub_21B4C67E8();
  sub_21B4C67D8();
  v121 = v120;

  sub_21B3F2D94(v94, &qword_27CD87538);
  if (v121)
  {
    v122 = sub_21B4C96C8();
  }

  else
  {
    v122 = 0;
  }

  [v97 setAlbum_];

  v123 = [v81 podcast];
  if (!v123 || (v124 = v123, v125 = [v123 title], v124, !v125))
  {
    v125 = 0;
  }

  [v97 setAuthor_];

  v126 = [v81 podcast];
  if (!v126 || (v127 = v126, v128 = [v126 uuid], v127, !v128))
  {
    v128 = 0;
  }

  [v97 setPodcastUuid_];

  v129 = [v81 artworkTemplateURL];
  if (v129)
  {
    v130 = v129;
    v131 = sub_21B4C9708();
    v202 = v132;
    v203 = v131;

    v133 = [v81 artworkBackgroundColor];
    if (v133)
    {
      v134 = v133;
      v135 = sub_21B4C9708();
      v200 = v136;
      v201 = v135;
    }

    else
    {
      v200 = 0;
      v201 = 0;
    }

    v137 = [v81 artworkTextPrimaryColor];
    if (v137)
    {
      v138 = v137;
      v139 = sub_21B4C9708();
      v197 = v140;
      v198 = v139;
    }

    else
    {
      v197 = 0;
      v198 = 0;
    }

    v141 = [v81 artworkTextSecondaryColor];
    if (v141)
    {
      v142 = v141;
      sub_21B4C9708();
    }

    v143 = [v81 artworkTextTertiaryColor];
    if (v143)
    {
      v144 = v143;
      sub_21B4C9708();
    }

    v145 = [v81 artworkTextQuaternaryColor];
    if (v145)
    {
      v146 = v145;
      sub_21B4C9708();

      v117 = &off_2782BF000;
    }

    v147 = objc_allocWithZone(sub_21B4C6328());
    v148 = sub_21B4C6308();
    [v97 setEpisodeArtworkProperties_];
  }

  v149 = [v81 v117[187]];
  if (v149)
  {
    v150 = v149;
    v151 = [v149 artworkTemplateURL];
    if (v151 || (v151 = [v150 imageURL]) != 0)
    {
      v152 = v151;
      v202 = sub_21B4C9708();
      v203 = v153;

      v154 = [v150 artworkPrimaryColor];
      if (v154)
      {
        v155 = v154;
        v156 = sub_21B4C9708();
        v200 = v157;
        v201 = v156;
      }

      else
      {
        v200 = 0;
        v201 = 0;
      }

      v158 = [v150 artworkTextPrimaryColor];
      if (v158)
      {
        v159 = v158;
        v160 = sub_21B4C9708();
        v197 = v161;
        v198 = v160;
      }

      else
      {
        v197 = 0;
        v198 = 0;
      }

      v162 = [v150 artworkTextSecondaryColor];
      if (v162)
      {
        v163 = v162;
        v196 = sub_21B4C9708();
      }

      else
      {
        v196 = 0;
      }

      v164 = [v150 artworkTextTertiaryColor];
      if (v164)
      {
        v165 = v164;
        sub_21B4C9708();
      }

      v166 = [v150 artworkTextQuaternaryColor];
      if (v166)
      {
        v167 = v166;
        sub_21B4C9708();
      }

      v168 = objc_allocWithZone(sub_21B4C6328());
      v169 = sub_21B4C6308();
      [v97 setShowArtworkProperties_];

      v150 = v169;
      v117 = &off_2782BF000;
    }
  }

  v170 = [v81 v117[187]];
  if (v170)
  {
    v171 = v170;
    v172 = [v170 uberBackgroundImageURL];
    if (v172)
    {
      v173 = v172;
      v174 = sub_21B4C9708();
      v202 = v175;
      v203 = v174;

      v176 = [v171 uberBackgroundJoeColor];
      if (v176)
      {
        v177 = v176;
        v178 = sub_21B4C9708();
        v200 = v179;
        v201 = v178;
      }

      else
      {
        v200 = 0;
        v201 = 0;
      }

      v180 = [v171 uberArtworkTextPrimaryColor];
      if (v180)
      {
        v181 = v180;
        v182 = sub_21B4C9708();
        v197 = v183;
        v198 = v182;
      }

      else
      {
        v197 = 0;
        v198 = 0;
      }

      v184 = [v171 uberArtworkTextSecondaryColor];
      if (v184)
      {
        v185 = v184;
        v186 = sub_21B4C9708();
        v195 = v187;
        v196 = v186;
      }

      else
      {
        v195 = 0;
        v196 = 0;
      }

      v188 = [v171 uberArtworkTextTertiaryColor];
      if (v188)
      {
        v189 = v188;
        sub_21B4C9708();
      }

      v190 = [v171 uberArtworkTextQuaternaryColor];
      if (v190)
      {
        v191 = v190;
        sub_21B4C9708();
      }

      v192 = objc_allocWithZone(sub_21B4C6328());
      v193 = sub_21B4C6308();
      [v97 setUberArtworkProperties_];

      v171 = v193;
    }
  }

  return v97;
}

uint64_t sub_21B42D6E8@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD875C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  type metadata accessor for StorefrontLocalePresenter();
  v5 = swift_allocObject();
  v6 = sub_21B4C5918();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD875C8);
  v7 = swift_allocObject();
  *(v7 + ((*(*v7 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  result = sub_21B42E164(v4, v7 + *(*v7 + *MEMORY[0x277D841D0] + 16));
  *(v5 + 16) = v7;
  *a1 = v5;
  return result;
}

uint64_t sub_21B42D86C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21B4C8798();
  MEMORY[0x28223BE20](v2 - 8);
  sub_21B4C8788();
  v3 = sub_21B4C87B8();
  swift_allocObject();
  result = sub_21B4C87A8();
  v5 = MEMORY[0x277D21D48];
  a1[3] = v3;
  a1[4] = v5;
  *a1 = result;
  return result;
}

uint64_t sub_21B42D920@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for JSPackageLoadingTracker();
  v2 = swift_allocObject();
  type metadata accessor for JSPackageLoadingState();
  swift_storeEnumTagMultiPayload();
  result = sub_21B4C5A08();
  *a1 = v2;
  return result;
}

uint64_t sub_21B42D994@<X0>(uint64_t *a1@<X8>)
{
  sub_21B4C8868();
  sub_21B4C8858();
  v2 = sub_21B38AFE8();

  *a1 = v2;
  return result;
}

uint64_t sub_21B42DA10@<X0>(uint64_t a1@<X8>)
{
  if (qword_2812006B0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for AssetCaches();
  v3 = __swift_project_value_buffer(v2, qword_281200258);

  return sub_21B36ED6C(v3, a1);
}

id sub_21B42DA88@<X0>(void *a1@<X8>)
{
  sub_21B3F12CC(0, &qword_2811FCD88);
  result = [swift_getObjCClassFromMetadata() defaultStore];
  *a1 = result;
  return result;
}

uint64_t sub_21B42DAF8@<X0>(uint64_t *a1@<X8>)
{
  sub_21B4C8868();
  sub_21B4C8858();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86BE8);
  sub_21B4C8808();

  v2 = type metadata accessor for NowPlayingArtworkProvider();
  v3 = swift_allocObject();
  result = sub_21B3F8414(&v5, v3 + 16);
  a1[3] = v2;
  a1[4] = &protocol witness table for NowPlayingArtworkProvider;
  *a1 = v3;
  return result;
}

uint64_t sub_21B42DBB4@<X0>(uint64_t a1@<X8>)
{
  sub_21B4C8868();
  sub_21B4C8858();

  return LibraryImageProvider.init(asPartOf:)(a1);
}

uint64_t sub_21B42DC24@<X0>(void (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  a1(0);
  sub_21B4C8868();
  v5 = sub_21B4C8858();
  result = a2(v5);
  *a3 = result;
  return result;
}

uint64_t sub_21B42DC84()
{
  sub_21B4C8868();
  sub_21B4C8858();
  sub_21B4C6AF8();
  sub_21B4C8808();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD875B0);
  sub_21B4C8808();
  sub_21B4C6EA8();
}

uint64_t sub_21B42DD18@<X0>(void *a1@<X8>)
{
  sub_21B4C8868();
  v2 = sub_21B4C8858();
  v3 = sub_21B4C9708();
  v5 = v4;
  type metadata accessor for DownloadRemovalObserver();
  swift_allocObject();
  v6 = sub_21B36F518(v2, v3, v5);

  *a1 = v6;
  return result;
}

uint64_t sub_21B42DDA8@<X0>(uint64_t *a1@<X8>)
{
  sub_21B4C7118();
  result = sub_21B4C7108();
  *a1 = result;
  return result;
}

uint64_t sub_21B42DDDC@<X0>(uint64_t *a1@<X8>)
{
  sub_21B4C8868();
  sub_21B4C8858();
  a1[3] = &type metadata for InMemoryStateNetworking;
  a1[4] = sub_21B42E110();
  *a1 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD875E0);
  sub_21B4C8808();
}

uint64_t sub_21B42DE7C@<X0>(uint64_t *a1@<X8>)
{
  sub_21B4C6CB8();
  sub_21B4C8868();
  sub_21B4C8858();
  v2 = sub_21B435FC8();

  *a1 = v2;
  return result;
}

uint64_t sub_21B42DF18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  swift_allocObject();
  result = sub_21B4C6818();
  *a2 = result;
  return result;
}

uint64_t sub_21B42DF9C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  sub_21B4C8868();
  sub_21B4C8858();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  sub_21B4C8808();
  v5 = sub_21B4C7068();

  *a3 = v5;
  return result;
}

uint64_t sub_21B42E030@<X0>(uint64_t *a1@<X8>)
{
  sub_21B4C7088();
  sub_21B4C8868();
  sub_21B4C8858();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87598);
  sub_21B4C8808();
  v2 = sub_21B4C7078();

  *a1 = v2;
  return result;
}

uint64_t sub_21B42E0C0@<X0>(uint64_t *a1@<X8>)
{
  sub_21B4C6F88();
  swift_allocObject();
  result = sub_21B4C6F78();
  *a1 = result;
  return result;
}

unint64_t sub_21B42E110()
{
  result = qword_27CD875B8;
  if (!qword_27CD875B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD875B8);
  }

  return result;
}

uint64_t sub_21B42E164(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD875C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Dependency.init<A>(injecting:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_21B4C84A8();
}

uint64_t sub_21B42E258()
{
  swift_getAssociatedTypeWitness();
  sub_21B4C8858();
  return sub_21B4C84D8();
}

id sub_21B42E2E0@<X0>(void *a1@<X8>)
{
  v2 = sub_21B4C6BE8();
  result = [objc_allocWithZone(v2) init];
  v4 = MEMORY[0x277D3D7E0];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

uint64_t sub_21B42E340@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21B4C6518();
  v3 = MEMORY[0x277D3D638];
  a1[3] = v2;
  a1[4] = v3;
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_21B4C6508();
}

uint64_t sub_21B42E384@<X0>(uint64_t a1@<X8>)
{
  if (qword_2812006B0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for AssetCaches();
  v3 = __swift_project_value_buffer(v2, qword_281200258);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD87610);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v3, v4);
}

uint64_t sub_21B42E440@<X0>(uint64_t a1@<X8>)
{
  if (qword_2812006B0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for AssetCaches();
  v3 = __swift_project_value_buffer(v2, qword_281200258);
  v4 = *(v2 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD874D8);
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_21B42E53C(void (*a1)(uint64_t))
{
  v2 = sub_21B4C6FF8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21B4C6FE8();
  a1(v6);
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_21B42E61C()
{
  sub_21B4C8868();
  sub_21B4C8858();
  type metadata accessor for AssetDownloaders();
  sub_21B4C8808();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87678);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87680) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21B4D4DC0;
  v3 = v8 + v2;
  v4 = *MEMORY[0x277D3D778];
  v5 = sub_21B4C6A48();
  v9 = *(*(v5 - 8) + 104);
  v9(v3, v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD870B8);
  sub_21B3F1314(&qword_2811FD510, &qword_27CD870B8);
  sub_21B4C5D88();
  v9(v3 + v1, *MEMORY[0x277D3D790], v5);
  sub_21B4C5D88();
  v9(v3 + 2 * v1, *MEMORY[0x277D3D780], v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E40);
  sub_21B3F1314(&qword_2811FD4D0, &qword_27CD86E40);
  sub_21B4C5D88();
  v9(v3 + 3 * v1, *MEMORY[0x277D3D788], v5);
  sub_21B4C5D88();
  v6 = sub_21B40D158(v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return v6;
}

void sub_21B42E980(uint64_t *a1@<X8>)
{
  v2 = sub_21B4C5748();
  v3 = *(v2 - 8);
  v4 = (MEMORY[0x28223BE20])();
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v35 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v35 - v10;
  v12 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v13 = sub_21B4C96C8();
  v14 = [v12 stringForKey_];

  if (v14)
  {
    v36 = a1;
    v35[2] = sub_21B4C9708();
    v16 = v15;

    v17 = sub_21B4C96C8();
    v18 = [v12 URLForKey_];

    if (v18)
    {
      v35[1] = v16;
      sub_21B4C56E8();

      (*(v3 + 32))(v11, v9, v2);
      v19 = sub_21B4C96C8();
      v20 = [v12 BOOLForKey_];

      if ((v20 & 1) == 0)
      {
        (*(v3 + 16))(v6, v11, v2);
        v27 = sub_21B4C6B48();
        v28 = MEMORY[0x277D3D7C0];
        v29 = v36;
        v36[3] = v27;
        v29[4] = v28;
        __swift_allocate_boxed_opaque_existential_1(v29);
        sub_21B4C6B38();

        (*(v3 + 8))(v11, v2);
        return;
      }

      (*(v3 + 8))(v11, v2);
    }

    a1 = v36;
  }

  v21 = sub_21B4C96C8();
  v22 = [v12 stringForKey_];

  if (v22)
  {
    sub_21B4C9708();

    v23 = sub_21B4C96C8();
    v24 = [v12 stringForKey_];

    if (v24)
    {
      sub_21B4C9708();

      v25 = sub_21B4C96C8();
      v26 = [v12 BOOLForKey_];

      if ((v26 & 1) == 0)
      {
        v32 = [objc_opt_self() mainBundle];
        v33 = sub_21B4C7028();
        v34 = MEMORY[0x277D3D8A8];
        a1[3] = v33;
        a1[4] = v34;
        __swift_allocate_boxed_opaque_existential_1(a1);
        sub_21B4C7018();
        goto LABEL_13;
      }
    }
  }

  v30 = sub_21B4C7008();
  v31 = MEMORY[0x277D3D8A0];
  a1[3] = v30;
  a1[4] = v31;
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_21B4C6FD8();
LABEL_13:
}

uint64_t sub_21B42EE50@<X0>(uint64_t *a1@<X8>)
{
  sub_21B4C6CD8();
  sub_21B4C8868();
  sub_21B4C8858();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86D60);
  sub_21B4C8808();
  sub_21B4C70A8();
  swift_allocObject();
  swift_unknownObjectRetain();
  sub_21B4C7098();

  v2 = sub_21B4C6CC8();

  result = swift_unknownObjectRelease();
  *a1 = v2;
  return result;
}

uint64_t sub_21B42EF2C()
{
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD87610);
  MEMORY[0x28223BE20](v49);
  v48 = v31 - v0;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E48);
  v1 = *(v47 - 8);
  v2 = MEMORY[0x28223BE20](v47);
  v46 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v45 = v31 - v4;
  v50 = sub_21B4C6A48();
  v5 = *(v50 - 8);
  v6 = MEMORY[0x28223BE20](v50);
  v44 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v43 = v31 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD87650);
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v31 - v10;
  v12 = sub_21B4C6A38();
  v13 = *(v12 + 16);
  if (v13)
  {
    v56 = MEMORY[0x277D84F90];
    sub_21B3F2E34(0, v13, 0);
    v39 = sub_21B4C8868();
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD874E0);
    v37 = sub_21B3F12CC(0, &qword_281200500);
    v14 = v56;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v36 = v16;
    v17 = (*(v15 + 64) + 32) & ~*(v15 + 64);
    v31[1] = v12;
    v18 = v12 + v17;
    v35 = *(v15 + 56);
    v34 = (v1 + 8);
    v33 = (v15 - 8);
    v40 = v15;
    v32 = v11;
    v19 = v50;
    do
    {
      v53 = v14;
      v54 = v13;
      v20 = v43;
      v52 = v18;
      v21 = v36;
      v36(v43, v18, v19);
      v51 = *(v42 + 48);
      v21(v11, v20, v19);
      sub_21B4C8858();
      v22 = v44;
      v21(v44, v20, v19);
      v23 = v45;
      sub_21B425734(v22, v45);
      sub_21B4C8808();
      sub_21B3F1314(&qword_2811FD588, &qword_27CD86E48);
      v24 = v47;
      sub_21B4C5D88();
      sub_21B4C8808();
      sub_21B4C9D98();
      sub_21B4C6F18();

      (*v34)(v23, v24);
      v25 = *v33;
      (*v33)(v22, v19);
      v26 = v20;
      v14 = v53;
      v25(v26, v19);
      v56 = v14;
      v28 = *(v14 + 16);
      v27 = *(v14 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_21B3F2E34(v27 > 1, v28 + 1, 1);
        v14 = v56;
      }

      *(v14 + 16) = v28 + 1;
      v11 = v32;
      sub_21B42F5A8(v32, v14 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v28);
      v18 = v52 + v35;
      v13 = v54 - 1;
    }

    while (v54 != 1);
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  v29 = sub_21B44D630(v14);

  v55 = v29;
  sub_21B4C6F38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD87660);
  sub_21B42F618();
  sub_21B3F1314(&qword_27CD87670, &unk_27CD87660);
  return sub_21B4C9598();
}

uint64_t sub_21B42F52C()
{
  v0 = sub_21B4C7268();
  MEMORY[0x28223BE20](v0 - 8);
  sub_21B4C7258();
  return sub_21B4C6588();
}

uint64_t sub_21B42F5A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD87650);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21B42F618()
{
  result = qword_27CD86C30;
  if (!qword_27CD86C30)
  {
    sub_21B4C6A48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD86C30);
  }

  return result;
}

void UserSettings.isPersonalizationDisabled.setter(char a1)
{
  v3 = *v1;
  os_unfair_lock_lock((v3 + 20));
  *(v3 + 16) = a1;

  os_unfair_lock_unlock((v3 + 20));
}

void (*UserSettings.isPersonalizationDisabled.modify(uint64_t a1))(os_unfair_lock_s **a1)
{
  *a1 = *v1;
  sub_21B4C61A8();
  *(a1 + 8) = *(a1 + 9);
  return sub_21B42F744;
}

void sub_21B42F744(os_unfair_lock_s **a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  os_unfair_lock_lock(*a1 + 5);
  LOBYTE(v1[4]._os_unfair_lock_opaque) = v2;

  os_unfair_lock_unlock(v1 + 5);
}

uint64_t UserSettings.init(isPersonalizationDisabled:)@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87688);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = a1;
  *a2 = result;
  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

UIColor_optional __swiftcall ArtworkModel.joeColorBackground(for:)(UIUserInterfaceStyle a1)
{
  if (a1 == UIUserInterfaceStyleLight)
  {
    v1 = *(v2 + 64);
    if (v1 != 255)
    {
      v6 = Color.color.getter(*(v2 + 56), v1);
      sub_21B3AA190(v6, &v11);
      if ((v15 & 1) == 0)
      {
        v9 = v13;
        if (v13 <= 0.94 || (v9 = 0.94, v12 >= 0.15))
        {
          v8 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithHue:v11 saturation:fmin(v12 brightness:0.15) alpha:{v9, v14}];
          goto LABEL_13;
        }
      }
    }

    goto LABEL_9;
  }

  if (a1 != UIUserInterfaceStyleDark || (v3 = [objc_opt_self() whiteColor], LOBYTE(v11) = 31, JoeColorClampBrightnessAlgorithm.joeColor(for:contrasting:selecting:)(v2, v3, &v11), v5 = v4, v3, !v5))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_14;
  }

  v6 = v5;
  sub_21B3AA190(v6, &v11);
  v7 = v5;
  if ((v15 & 1) == 0)
  {
    v8 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithHue:v11 saturation:v12 brightness:fmin(v13 alpha:{0.7), v14}];
LABEL_13:
    v10 = v8;

    v7 = v10;
  }

LABEL_14:
  result.value.super.isa = v7;
  result.is_nil = v1;
  return result;
}

BOOL sub_21B42FB14(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_21B42FB44@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_21B42FB70@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unint64_t sub_21B42FBC0()
{
  result = qword_27CD87690;
  if (!qword_27CD87690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD87690);
  }

  return result;
}

unint64_t sub_21B42FC18()
{
  result = qword_27CD87698;
  if (!qword_27CD87698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD87698);
  }

  return result;
}

unint64_t sub_21B42FC70()
{
  result = qword_27CD876A0;
  if (!qword_27CD876A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD876A0);
  }

  return result;
}

unint64_t sub_21B42FCC8()
{
  result = qword_27CD876A8;
  if (!qword_27CD876A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD876A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JoeColorCandidates(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for JoeColorCandidates(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

BOOL sub_21B42FED0(float64x2_t *a1, float64x2_t *a2)
{
  v2.f64[0] = a1[2].f64[1];
  v3.f64[0] = a2[2].f64[1];
  v2.f64[1] = a1->f64[1];
  v3.f64[1] = a2->f64[1];
  return (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v2, v3), vceqq_f64(a1[1], a2[1])))) & 1) != 0 && a1[2].f64[0] == a2[2].f64[0];
}

uint64_t sub_21B42FF78(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v97 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v98 = *v97;
    if (!*v97)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_21B4A95A4(v7);
      v7 = result;
    }

    v89 = (v7 + 16);
    v90 = *(v7 + 16);
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = (v7 + 16 * v90);
        v92 = *v91;
        v93 = &v89[2 * v90];
        v94 = v93[1];
        sub_21B430554((*a3 + 48 * *v91), (*a3 + 48 * *v93), (*a3 + 48 * v94), v98);
        if (v4)
        {
        }

        if (v94 < v92)
        {
          goto LABEL_114;
        }

        if (v90 - 2 >= *v89)
        {
          goto LABEL_115;
        }

        *v91 = v92;
        v91[1] = v94;
        v95 = *v89 - v90;
        if (*v89 < v90)
        {
          goto LABEL_116;
        }

        v90 = *v89 - 1;
        result = memmove(v93, v93 + 2, 16 * v95);
        *v89 = v90;
        if (v90 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v96 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 48 * v6 + 40);
      v10 = *a3 + 48 * v8;
      v11 = *(v10 + 40);
      v12 = v8 + 2;
      v13 = (v10 + 136);
      v14 = v9;
      while (v5 != v12)
      {
        v15 = *v13;
        v13 += 6;
        v16 = v15 >= v14;
        ++v12;
        v14 = v15;
        if ((((v9 < v11) ^ v16) & 1) == 0)
        {
          v6 = v12 - 1;
          if (v9 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v17 = 48 * v6;
        v18 = 48 * v8 + 40;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v29 + v18);
            v22 = *(v29 + v18 - 40);
            v23 = v29 + v17;
            v24 = *v21;
            v25 = *(v21 - 2);
            v26 = *(v21 - 1);
            v28 = *(v23 - 32);
            v27 = *(v23 - 16);
            *(v21 - 5) = *(v23 - 48);
            *(v21 - 3) = v28;
            *(v21 - 1) = v27;
            *(v23 - 48) = v22;
            *(v23 - 40) = v25;
            *(v23 - 24) = v26;
            *(v23 - 8) = v24;
          }

          ++v20;
          v17 -= 48;
          v18 += 48;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21B3F21F0(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v42 = *(v7 + 16);
    v41 = *(v7 + 24);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_21B3F21F0((v41 > 1), v42 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v43;
    v44 = v7 + 32;
    v45 = (v7 + 32 + 16 * v42);
    *v45 = v8;
    v45[1] = v6;
    v98 = *v97;
    if (!*v97)
    {
      goto LABEL_127;
    }

    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *(v7 + 32);
          v48 = *(v7 + 40);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_57:
          if (v50)
          {
            goto LABEL_104;
          }

          v63 = (v7 + 16 * v43);
          v65 = *v63;
          v64 = v63[1];
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_106;
          }

          v69 = (v44 + 16 * v46);
          v71 = *v69;
          v70 = v69[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_111;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v43 < 2)
        {
          goto LABEL_112;
        }

        v73 = (v7 + 16 * v43);
        v75 = *v73;
        v74 = v73[1];
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_72:
        if (v68)
        {
          goto LABEL_108;
        }

        v76 = (v44 + 16 * v46);
        v78 = *v76;
        v77 = v76[1];
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_110;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v46 - 1 >= v43)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v84 = (v44 + 16 * (v46 - 1));
        v85 = *v84;
        v86 = (v44 + 16 * v46);
        v87 = v86[1];
        sub_21B430554((*a3 + 48 * *v84), (*a3 + 48 * *v86), (*a3 + 48 * v87), v98);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_99;
        }

        if (v46 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *(v7 + 16);
        if (v46 >= v88)
        {
          goto LABEL_101;
        }

        v43 = v88 - 1;
        result = memmove((v44 + 16 * v46), v86 + 2, 16 * (v88 - 1 - v46));
        *(v7 + 16) = v88 - 1;
        if (v88 <= 2)
        {
          goto LABEL_3;
        }
      }

      v51 = v44 + 16 * v43;
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_102;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_103;
      }

      v58 = (v7 + 16 * v43);
      v60 = *v58;
      v59 = v58[1];
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_105;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_107;
      }

      if (v62 >= v54)
      {
        v80 = (v44 + 16 * v46);
        v82 = *v80;
        v81 = v80[1];
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v96;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v30 = *a3;
  v31 = *a3 + 48 * v6;
  v32 = v8 - v6;
LABEL_30:
  v33 = *(v30 + 48 * v6 + 40);
  v34 = v32;
  v35 = v31;
  while (1)
  {
    if (v33 >= *(v35 - 8))
    {
LABEL_29:
      ++v6;
      v31 += 48;
      --v32;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v30)
    {
      break;
    }

    v36 = *v35;
    v37 = *(v35 + 8);
    v38 = *(v35 + 24);
    v39 = *(v35 - 32);
    *v35 = *(v35 - 48);
    *(v35 + 16) = v39;
    *(v35 + 32) = *(v35 - 16);
    *(v35 - 40) = v37;
    *(v35 - 24) = v38;
    *(v35 - 8) = v33;
    *(v35 - 48) = v36;
    v35 -= 48;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_21B430554(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 48;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 48;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[6 * v9] <= a4)
    {
      memmove(a4, __dst, 48 * v9);
    }

    v12 = &v4[6 * v9];
    if (v8 < 48)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v6[5] < v4[5])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 6;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 6;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 6;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 2);
    *(v7 + 1) = *(v13 + 1);
    *(v7 + 2) = v16;
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[6 * v11] <= a4)
  {
    memmove(a4, __src, 48 * v11);
  }

  v12 = &v4[6 * v11];
  if (v10 >= 48 && v6 > v7)
  {
LABEL_20:
    v5 -= 6;
    do
    {
      v17 = v5 + 6;
      if (*(v12 - 1) < *(v6 - 1))
      {
        v21 = v6 - 6;
        if (v17 != v6)
        {
          v22 = *v21;
          v23 = *(v6 - 1);
          *(v5 + 1) = *(v6 - 2);
          *(v5 + 2) = v23;
          *v5 = v22;
        }

        if (v12 <= v4 || (v6 -= 6, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v18 = v12 - 6;
      if (v17 != v12)
      {
        v19 = *v18;
        v20 = *(v12 - 1);
        *(v5 + 1) = *(v12 - 2);
        *(v5 + 2) = v20;
        *v5 = v19;
      }

      v5 -= 6;
      v12 -= 6;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_31:
  v24 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v25 = (v24 >> 3) + (v24 >> 63);
  if (v6 != v4 || v6 >= &v4[6 * v25])
  {
    memmove(v6, v4, 48 * v25);
  }

  return 1;
}

uint64_t sub_21B430790(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_21B4307D8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_21B430838()
{
  result = qword_27CD876B0;
  if (!qword_27CD876B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD876B0);
  }

  return result;
}

void sub_21B43088C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21B488BA0(a1, a2);
  if (!v3)
  {
    *a3 = v5;
    *(a3 + 8) = v6;
  }
}

__n128 Color.analyzedColor.getter@<Q0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_21B411908(a1, a2);
  v6 = Color.color.getter(a1, a2);
  AnalyzedColor.init(color:)(&v9, v6);
  sub_21B40F788(a1, a2);
  v7 = *&v9.referenceX;
  *(a3 + 32) = *&v9.coordinates.y;
  *(a3 + 48) = v7;
  *(a3 + 64) = v9.referenceZ;
  result = *&v9.RGB.blue;
  *a3 = *&v9.RGB.red;
  *(a3 + 16) = result;
  return result;
}

void sub_21B430964(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  sub_21B489018(a1, a2);
  if (!v3)
  {
    *a3 = v5;
  }
}

double HSBColor.init(uiColor:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21B3AA190(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

BOOL static HSBColor.== infix(_:_:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a1 == a5;
  if (a2 != a6)
  {
    v8 = 0;
  }

  if (a3 != a7)
  {
    v8 = 0;
  }

  return a4 == a8 && v8;
}

id HSBColor.uiColor.getter(double a1, double a2, double a3, double a4)
{
  v8 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v8 initWithHue:a1 saturation:a2 brightness:a3 alpha:a4];
}

uint64_t HSBColor.hash(into:)(double a1, double a2, double a3, double a4)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x21CEF3E70](*&a1);
  if (a2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a2;
  }

  MEMORY[0x21CEF3E70](*&v7);
  if (a3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a3;
  }

  MEMORY[0x21CEF3E70](*&v8);
  if (a4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = a4;
  }

  return MEMORY[0x21CEF3E70](*&v9);
}

uint64_t HSBColor.hashValue.getter(double a1, double a2, double a3, double a4)
{
  sub_21B4CA6E8();
  HSBColor.hash(into:)(a1, a2, a3, a4);
  return sub_21B4CA738();
}

uint64_t sub_21B430C4C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_21B4CA6E8();
  HSBColor.hash(into:)(v1, v2, v3, v4);
  return sub_21B4CA738();
}

uint64_t sub_21B430CC0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_21B4CA6E8();
  HSBColor.hash(into:)(v1, v2, v3, v4);
  return sub_21B4CA738();
}

unint64_t sub_21B430D28()
{
  result = qword_27CD876B8;
  if (!qword_27CD876B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD876B8);
  }

  return result;
}

uint64_t static InterpolateFloats.linearly<A>(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v18[1] = a1;
  v18[2] = a2;
  v18[3] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v18 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v18 - v14;
  swift_getAssociatedConformanceWitness();
  sub_21B4CA658();
  sub_21B4CA5E8();
  sub_21B4CA4A8();
  v16 = *(v6 + 8);
  v16(v12, a3);
  sub_21B4C9BB8();
  sub_21B4C9BB8();
  sub_21B4CA498();
  v16(v9, a3);
  v16(v12, a3);
  return (v16)(v15, a3);
}

uint64_t static InterpolateFloats.byEasingInQuadradtic<A>(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B4C9BB8();
  static InterpolateFloats.linearly<A>(_:_:_:)(a1, a2, a3, a4);
  return (*(v8 + 8))(v10, a3);
}

uint64_t static InterpolateFloats.byEasingOutQuadradtic<A>(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v21 = a4;
  v22 = a2;
  v19 = a5;
  v20 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v19 - v15;
  swift_getAssociatedConformanceWitness();
  sub_21B4CA658();
  sub_21B4CA5E8();
  sub_21B4CA4A8();
  v17 = *(v7 + 8);
  v17(v10, a3);
  sub_21B4C9BB8();
  v17(v13, a3);
  static InterpolateFloats.linearly<A>(_:_:_:)(v20, v22, a3, v19);
  return (v17)(v16, a3);
}

uint64_t static InterpolateFloats.byEasingInOutQuadradtic<A>(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v48 = a3;
  v44 = a1;
  v45 = a2;
  v43 = a6;
  v42 = *(*(a5 + 16) + 8);
  v8 = *(v42 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v38 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v47 = v36 - v12;
  v13 = *(a4 - 8);
  MEMORY[0x28223BE20](v14);
  v37 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v39 = v36 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = v36 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = v36 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = v36 - v25;
  MEMORY[0x28223BE20](v27);
  v40 = v36 - v28;
  sub_21B4C9618();
  sub_21B4C9618();
  sub_21B4C9608();
  v29 = *(v13 + 8);
  v29(v20, a4);
  v29(v23, a4);
  v46 = a5;
  v41 = v26;
  v30 = sub_21B4C96A8();
  swift_getAssociatedConformanceWitness();
  if (v30)
  {
    sub_21B4CA658();
    sub_21B4CA5E8();
    sub_21B4C9BB8();
    v29(v20, a4);
    v31 = v40;
    sub_21B4C9BB8();
  }

  else
  {
    v36[1] = AssociatedTypeWitness;
    sub_21B4CA658();
    sub_21B4CA5E8();
    sub_21B4CA658();
    v32 = v37;
    sub_21B4CA5E8();
    v33 = v39;
    v36[0] = v8;
    v34 = v42;
    sub_21B4C9BB8();
    v29(v32, a4);
    v38 = *(v34 + 8);
    sub_21B4CA4A8();
    v29(v33, a4);
    v29(v20, a4);
    sub_21B4CA658();
    sub_21B4CA5E8();
    sub_21B4C9BB8();
    v31 = v40;
    sub_21B4CA498();
    v29(v33, a4);
    v29(v20, a4);
  }

  v29(v23, a4);
  static InterpolateFloats.linearly<A>(_:_:_:)(v44, v45, a4, v43);
  v29(v41, a4);
  return (v29)(v31, a4);
}

uint64_t ContextMenuPreviewBackgroundColor.hashValue.getter()
{
  v1 = *v0;
  sub_21B4CA6E8();
  MEMORY[0x21CEF3E40](v1);
  return sub_21B4CA738();
}

void ContextMenuPreviewView.previewMargins.getter(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
}

BOOL _s10PodcastsUI25ContextMenuPreviewMarginsO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 16);
  v5 = *a2;
  v4 = *(a2 + 16);
  if (*(a1 + 32) == 1)
  {
    v6 = *&v2.f64[0] | *&v3.f64[0] | *&v3.f64[1] | *&v2.f64[1];
    v7 = vorrq_s8(v5, v4);
    v8 = vextq_s8(v7, v7, 8uLL).u64[0];
    v9 = vorr_s8(*v7.i8, v8) == 0;
    if (!*(a2 + 32))
    {
      v9 = 0;
    }

    v10 = vorr_s8(*v7.i8, v8) != 0;
    v11 = (*(a2 + 32) & 1) != 0 && v10;
    if (!v6)
    {
      return v9;
    }

    return v11;
  }

  else
  {
    v13 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, v5), vceqq_f64(v2, v4))));
    if (*(a2 + 32))
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    return v14 & 1;
  }
}

unint64_t sub_21B431A50()
{
  result = qword_27CD876C0;
  if (!qword_27CD876C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD876C0);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ContextMenuPreviewMargins(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ContextMenuPreviewMargins(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ContextMenuPreviewMargins(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
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

  *(result + 33) = v3;
  return result;
}

uint64_t sub_21B431B3C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21B431B58(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 32) = 1;
  }

  else
  {
    *(result + 32) = 0;
  }

  return result;
}

uint64_t InteractionContext.Page.contentReference.getter()
{
  v1 = v0;
  v2 = type metadata accessor for InteractionContext.Page(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B37D280(v1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 5)
      {
        if (v4[8])
        {
          return 0;
        }

        return sub_21B4C6688();
      }

LABEL_11:
      sub_21B431E30(v4);
      return 0;
    }

    v7 = v4[8];
    v8 = *(v4 + 3);
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD876C8) + 64);
    if ((v7 & 1) == 0)
    {

      v6 = sub_21B4C6658();
      sub_21B3F2D94(&v4[v9], &qword_27CD876D0);
      return v6;
    }

    if (v8)
    {
      v6 = sub_21B4C6648();

      sub_21B3F2D94(&v4[v9], &qword_27CD876D0);
      return v6;
    }

    sub_21B3F2D94(&v4[v9], &qword_27CD876D0);
    return 0;
  }

  if (!EnumCaseMultiPayload)
  {
    if ((v4[8] & 1) == 0)
    {
      return sub_21B4C6668();
    }

    return 0;
  }

  if (EnumCaseMultiPayload != 2)
  {
    goto LABEL_11;
  }

  if ((v4[8] & 1) == 0)
  {

    return sub_21B4C6688();
  }

  if (!*(v4 + 3))
  {
    return 0;
  }

  v6 = sub_21B4C6678();

  return v6;
}

uint64_t sub_21B431E30(uint64_t a1)
{
  v2 = type metadata accessor for InteractionContext.Page(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t InteractionContext.View.episodeCellType.getter(uint64_t result)
{
  if (result - 5 >= 3)
  {
    return result;
  }

  else
  {
    return 5;
  }
}

BOOL static InteractionContext.View.== infix(_:_:)(int a1, int a2)
{
  switch(a1)
  {
    case 5u:
      return a2 == 5;
    case 6u:
      return a2 == 6;
    case 7u:
      return a2 == 7;
  }

  if ((a2 - 5) < 3u)
  {
    return 0;
  }

  switch(a1)
  {
    case 2u:
      return a2 == 2;
    case 3u:
      return a2 == 3;
    case 4u:
      return a2 == 4;
    default:
      return (a2 - 2) >= 3u && ((a2 ^ a1) & 1) == 0;
  }
}

BOOL static InteractionContext.EpisodeCellType.== infix(_:_:)(int a1, int a2)
{
  switch(a1)
  {
    case 2u:
      return a2 == 2;
    case 3u:
      return a2 == 3;
    case 4u:
      return a2 == 4;
  }

  if ((a2 - 2) < 3u)
  {
    return 0;
  }

  return (a2 ^ a1 ^ 1) & 1;
}

BOOL sub_21B432010(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 5:
      return v3 == 5;
    case 6:
      return v3 == 6;
    case 7:
      return v3 == 7;
  }

  if ((v3 - 5) < 3)
  {
    return 0;
  }

  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v2 != 4)
  {
    return (v3 - 2) >= 3 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 4;
}

BOOL sub_21B4320D8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 2:
      return v3 == 2;
    case 3:
      return v3 == 3;
    case 4:
      return v3 == 4;
  }

  if ((v3 - 2) < 3)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t InteractionContext.Origin.hashValue.getter()
{
  v1 = *v0;
  sub_21B4CA6E8();
  MEMORY[0x21CEF3E40](v1);
  return sub_21B4CA738();
}

uint64_t InteractionContext.origin.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for InteractionContext(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t InteractionContext.init(page:view:origin:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a3;
  sub_21B39C754(a1, a4);
  result = type metadata accessor for InteractionContext(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = v6;
  return result;
}

uint64_t static InteractionContext.none.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for InteractionContext.Page(0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for InteractionContext(0);
  *(a1 + *(result + 20)) = 7;
  *(a1 + *(result + 24)) = 2;
  return result;
}

uint64_t InteractionContext.Page.init(rawString:adamID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (a2)
  {
    if (a1 == 0x65676150776F6873 && a2 == 0xE800000000000000 || (sub_21B4CA608() & 1) != 0)
    {

      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD876C8) + 64);
      *a5 = a3;
      *(a5 + 8) = a4 & 1;
      v11 = sub_21B4C69B8();
      *(a5 + 16) = 0;
      *(a5 + 24) = 0;
      (*(*(v11 - 8) + 56))(a5 + v10, 1, 1, v11);
      type metadata accessor for InteractionContext.Page(0);
      goto LABEL_95;
    }

    if (a1 == 0x5065646F73697065 && a2 == 0xEB00000000656761 || (sub_21B4CA608() & 1) != 0)
    {

      *a5 = a3;
      *(a5 + 8) = a4 & 1;
      type metadata accessor for InteractionContext.Page(0);
      *(a5 + 16) = 0;
      *(a5 + 24) = 0;
      goto LABEL_95;
    }

    if (a1 == 0x506C656E6E616863 && a2 == 0xEB00000000656761 || (sub_21B4CA608() & 1) != 0)
    {

      *a5 = a3;
      *(a5 + 8) = a4 & 1;
      type metadata accessor for InteractionContext.Page(0);
      goto LABEL_95;
    }

    if (a1 == 0x4C6C656E6E616863 && a2 == 0xEB00000000747369 || (sub_21B4CA608() & 1) != 0 || a1 == 0x79726F6765746163 && a2 == 0xEC0000007473694CLL || (sub_21B4CA608() & 1) != 0)
    {
      goto LABEL_85;
    }

    if (a1 == 0x4C65646F73697065 && a2 == 0xEB00000000747369 || (sub_21B4CA608() & 1) != 0)
    {

      v12 = sub_21B4C69B8();
      (*(*(v12 - 8) + 56))(a5, 1, 1, v12);
      type metadata accessor for InteractionContext.Page(0);
      goto LABEL_95;
    }

    if (a1 == 0x6573776F7262 && a2 == 0xE600000000000000 || (sub_21B4CA608() & 1) != 0 || a1 == 0x6867696C68676968 && a2 == 0xEA00000000007374 || (sub_21B4CA608() & 1) != 0 || a1 == 0x7972617262696CLL && a2 == 0xE700000000000000 || (sub_21B4CA608() & 1) != 0 || a1 == 0x437972617262696CLL && a2 == 0xEF736C656E6E6168 || (sub_21B4CA608() & 1) != 0 || a1 == 0x4C7972617262696CLL && a2 == 0xED00007473657461 || (sub_21B4CA608() & 1) != 0 || a1 == 0x537972617262696CLL && a2 == 0xEC00000064657661 || (sub_21B4CA608() & 1) != 0 || a1 == 0x537972617262696CLL && a2 == 0xEC00000073776F68 || (sub_21B4CA608() & 1) != 0 || a1 == 1701670760 && a2 == 0xE400000000000000 || (sub_21B4CA608() & 1) != 0 || a1 == 0x65537478654E7075 && a2 == 0xEC0000006C6C4165 || (sub_21B4CA608() & 1) != 0 || a1 == 0xD000000000000014 && 0x800000021B4DFF00 == a2 || (sub_21B4CA608() & 1) != 0 || a1 == 0x6F4E6E657473696CLL && a2 == 0xE900000000000077 || (sub_21B4CA608() & 1) != 0 || a1 == 0x6979616C50776F6ELL && a2 == 0xEA0000000000676ELL || (sub_21B4CA608() & 1) != 0 || a1 == 0x796C746E65636572 && a2 == 0xEF64657461647055 || (sub_21B4CA608() & 1) != 0 || a1 == 0x686372616573 && a2 == 0xE600000000000000 || (sub_21B4CA608() & 1) != 0 || a1 == 0x7473694C776F6873 && a2 == 0xE800000000000000 || (sub_21B4CA608() & 1) != 0)
    {
LABEL_85:

      type metadata accessor for InteractionContext.Page(0);
      goto LABEL_95;
    }

    if (a1 == 0x6E6F6974617473 && a2 == 0xE700000000000000 || (sub_21B4CA608() & 1) != 0)
    {

      *a5 = 2;
      type metadata accessor for InteractionContext.Page(0);
      goto LABEL_95;
    }

    if (a1 == 0x7472616843706F74 && a2 == 0xE900000000000073)
    {
    }

    else
    {
      sub_21B4CA608();
    }
  }

  type metadata accessor for InteractionContext.Page(0);
LABEL_95:

  return swift_storeEnumTagMultiPayload();
}

BOOL InteractionContext.Page.isEpisodePage.getter()
{
  v1 = type metadata accessor for InteractionContext.Page(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B37D280(v0, v3);
  v4 = swift_getEnumCaseMultiPayload() == 2;
  sub_21B431E30(v3);
  return v4;
}

BOOL InteractionContext.Page.isEpisodeDetailTranscriptsPage.getter()
{
  v1 = type metadata accessor for InteractionContext.Page(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B37D280(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 5)
  {
    sub_21B431E30(v3);
  }

  return EnumCaseMultiPayload == 5;
}

BOOL InteractionContext.Page.isShowPage.getter()
{
  v1 = type metadata accessor for InteractionContext.Page(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B37D280(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {

    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD876C8);
    sub_21B3F2D94(&v3[*(v5 + 64)], &qword_27CD876D0);
  }

  else
  {
    sub_21B431E30(v3);
  }

  return EnumCaseMultiPayload == 3;
}

BOOL InteractionContext.Page.isUnfollowedLibraryShow.getter()
{
  v1 = v0;
  v2 = type metadata accessor for InteractionContext.Page(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD876D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16[-v6 - 8];
  sub_21B37D280(v1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {

    v9 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD876C8) + 64)];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v9 = v4;
LABEL_5:
    sub_21B43588C(v9, v7);
    goto LABEL_7;
  }

  v10 = sub_21B4C69B8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  sub_21B431E30(v4);
LABEL_7:
  v11 = sub_21B4C69B8();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
    sub_21B3F2D94(v7, &qword_27CD876D0);
    return 0;
  }

  else
  {
    sub_21B4C69A8();
    (*(v12 + 8))(v7, v11);
    v13 = v16[64] == 9;
    sub_21B435838(v16);
  }

  return v13;
}

uint64_t InteractionContext.Page.episodeListSettings.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for InteractionContext.Page(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B37D280(v2, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {

    v8 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD876C8) + 64)];
    return sub_21B43588C(v8, a1);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v8 = v6;
    return sub_21B43588C(v8, a1);
  }

  v10 = sub_21B4C69B8();
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  return sub_21B431E30(v6);
}

uint64_t InteractionContext.Page.adamID.getter()
{
  v1 = type metadata accessor for InteractionContext.Page(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B37D280(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v5 = *v3;

      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD876C8);
      sub_21B3F2D94(&v3[*(v6 + 64)], &qword_27CD876D0);
      return v5;
    }

    if (EnumCaseMultiPayload != 5)
    {
      goto LABEL_8;
    }

    return *v3;
  }

  if (!EnumCaseMultiPayload)
  {
    return *v3;
  }

  if (EnumCaseMultiPayload != 2)
  {
LABEL_8:
    sub_21B431E30(v3);
    return 0;
  }

  v5 = *v3;

  return v5;
}

uint64_t InteractionContext.Page.uuid.getter()
{
  v1 = type metadata accessor for InteractionContext.Page(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B37D280(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v6 = *(v3 + 2);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD876C8);
    sub_21B3F2D94(&v3[*(v7 + 64)], &qword_27CD876D0);
    return v6;
  }

  else if (EnumCaseMultiPayload == 2)
  {
    return *(v3 + 2);
  }

  else
  {
    sub_21B431E30(v3);
    return 0;
  }
}

uint64_t InteractionContext.Page.isRecentlyPlayedSeeAll.getter()
{
  v1 = v0;
  v2 = type metadata accessor for InteractionContext.Page(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v16[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD876D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16[-1] - v6;
  sub_21B37D280(v1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {

    v9 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD876C8) + 64)];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v9 = v4;
LABEL_5:
    sub_21B43588C(v9, v7);
    goto LABEL_7;
  }

  v10 = sub_21B4C69B8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  sub_21B431E30(v4);
LABEL_7:
  v11 = sub_21B4C69B8();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
    sub_21B3F2D94(v7, &qword_27CD876D0);
  }

  else
  {
    sub_21B4C69A8();
    (*(v12 + 8))(v7, v11);
    if (v19 == 10 && v16[0] == 1)
    {
      v13 = vorrq_s8(v17, v18);
      if (!(*&vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL)) | v16[3] | v16[2] | v16[1]))
      {
        return 1;
      }
    }

    sub_21B435838(v16);
  }

  return 0;
}

uint64_t InteractionContext.Page.isUpNextSeeAll.getter()
{
  v1 = v0;
  v2 = type metadata accessor for InteractionContext.Page(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD876D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15[-v6 - 8];
  sub_21B37D280(v1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {

    v9 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD876C8) + 64)];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v9 = v4;
LABEL_5:
    sub_21B43588C(v9, v7);
    goto LABEL_7;
  }

  v10 = sub_21B4C69B8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  sub_21B431E30(v4);
LABEL_7:
  v11 = sub_21B4C69B8();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
    sub_21B3F2D94(v7, &qword_27CD876D0);
  }

  else
  {
    sub_21B4C69A8();
    (*(v12 + 8))(v7, v11);
    if (v15[64] == 6)
    {
      return 1;
    }

    sub_21B435838(v15);
  }

  return 0;
}

uint64_t InteractionContext.Page.isTranscriptView.getter()
{
  v1 = type metadata accessor for InteractionContext.Page(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B37D280(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 25)
  {
    return 1;
  }

  sub_21B431E30(v3);
  return 0;
}

Swift::Void __swiftcall InteractionContext.Page.log(preamble:origin:)(Swift::String preamble, PodcastsUI::InteractionContext::Origin origin)
{
  v3 = v2;
  v4 = origin;
  object = preamble._object;
  countAndFlagsBits = preamble._countAndFlagsBits;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD876D0);
  MEMORY[0x28223BE20](v5 - 8);
  v111 = &v102[-v6];
  v7 = sub_21B4C69B8();
  v113 = *(v7 - 8);
  v114 = v7;
  MEMORY[0x28223BE20](v7);
  v106 = &v102[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v112 = &v102[-v10];
  MEMORY[0x28223BE20](v11);
  v13 = &v102[-v12];
  v14 = sub_21B4C7558();
  v116 = *(v14 - 8);
  v117 = v14;
  MEMORY[0x28223BE20](v14);
  v107 = &v102[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v115 = &v102[-v17];
  MEMORY[0x28223BE20](v18);
  v20 = &v102[-v19];
  MEMORY[0x28223BE20](v21);
  v23 = &v102[-v22];
  v24 = type metadata accessor for InteractionContext.Page(0);
  MEMORY[0x28223BE20](v24);
  v26 = &v102[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v27);
  v29 = &v102[-v28];
  MEMORY[0x28223BE20](v30);
  v32 = &v102[-v31];
  v33 = *v4;
  v108 = sub_21B4346F4(v3);
  v119 = v34;
  v123 = 0;
  v124 = 0xE000000000000000;
  MEMORY[0x21CEF2F30](0x3D6E696769726FLL, 0xE700000000000000);
  LOBYTE(v122) = v33;
  sub_21B4CA478();
  v109 = v123;
  v121 = v124;
  sub_21B37D280(v3, v32);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v118 = v13;
  if (EnumCaseMultiPayload == 3)
  {
    v36 = *(v32 + 2);
    v37 = *(v32 + 3);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD876C8);
    sub_21B3F2D94(&v32[*(v38 + 64)], &qword_27CD876D0);
    if (!v37)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_21B431E30(v32);
LABEL_8:

      v37 = 0xE400000000000000;
      v36 = 1701736302;
      goto LABEL_9;
    }

    v36 = *(v32 + 2);
    v37 = *(v32 + 3);
    if (!v37)
    {
      goto LABEL_8;
    }
  }

LABEL_9:
  v39 = InteractionContext.Page.adamID.getter();
  if ((v40 & 1) == 0)
  {
    v41 = v39;
    if ((sub_21B4C7228() & 1) == 0)
    {
      v105 = v36;
      sub_21B4C7488();
      v54 = object;

      v55 = v119;

      v56 = sub_21B4C7538();
      v57 = sub_21B4C9D08();
      v104 = v23;
      v58 = v57;

      v103 = v58;
      if (os_log_type_enabled(v56, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v123 = v60;
        *v59 = 136447491;
        *(v59 + 4) = sub_21B36CF74(countAndFlagsBits, v54, &v123);
        *(v59 + 12) = 2082;
        *(v59 + 14) = sub_21B36CF74(v108, v55, &v123);
        *(v59 + 22) = 2082;
        v61 = v56;
        v62 = sub_21B36CF74(v105, v37, &v123);

        *(v59 + 24) = v62;
        *(v59 + 32) = 2160;
        *(v59 + 34) = 1752392040;
        *(v59 + 42) = 2081;
        v122 = v41;
        sub_21B391890();
        v63 = sub_21B4CA268();
        v65 = sub_21B36CF74(v63, v64, &v123);

        *(v59 + 44) = v65;
        *(v59 + 52) = 2082;
        *(v59 + 54) = sub_21B36CF74(v109, v121, &v123);
        _os_log_impl(&dword_21B365000, v61, v103, "%{public}s: %{public}s(uuid=%{public}s, adamID=%{private,mask.hash}s), %{public}s", v59, 0x3Eu);
        swift_arrayDestroy();
        MEMORY[0x21CEF5710](v60, -1, -1);
        MEMORY[0x21CEF5710](v59, -1, -1);
      }

      else
      {
      }

      (*(v116 + 8))(v104, v117);
      goto LABEL_26;
    }
  }

  sub_21B37D280(v3, v29);
  v42 = swift_getEnumCaseMultiPayload();
  if (v42 != 3)
  {
    if (v42 == 2)
    {
      if (!*(v29 + 3))
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }

    sub_21B431E30(v29);
LABEL_21:

    v66 = 0;
    goto LABEL_27;
  }

  v43 = *(v29 + 3);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD876C8);
  sub_21B3F2D94(&v29[*(v44 + 64)], &qword_27CD876D0);
  if (!v43)
  {
    goto LABEL_21;
  }

LABEL_16:
  v105 = v36;

  sub_21B4C7488();
  v45 = object;

  v46 = v119;

  v47 = v121;

  v48 = sub_21B4C7538();
  v49 = sub_21B4C9D08();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v103 = v49;
    v51 = v50;
    v104 = swift_slowAlloc();
    v123 = v104;
    *v51 = 136446978;
    *(v51 + 4) = sub_21B36CF74(countAndFlagsBits, v45, &v123);
    *(v51 + 12) = 2082;
    *(v51 + 14) = sub_21B36CF74(v108, v46, &v123);
    *(v51 + 22) = 2082;
    v52 = sub_21B36CF74(v105, v37, &v123);

    *(v51 + 24) = v52;
    *(v51 + 32) = 2082;
    *(v51 + 34) = sub_21B36CF74(v109, v47, &v123);
    _os_log_impl(&dword_21B365000, v48, v103, "%{public}s: %{public}s(uuid=%{public}s, adamID=none), %{public}s", v51, 0x2Au);
    v53 = v104;
    swift_arrayDestroy();
    MEMORY[0x21CEF5710](v53, -1, -1);
    MEMORY[0x21CEF5710](v51, -1, -1);
  }

  else
  {
  }

  (*(v116 + 8))(v20, v117);
LABEL_26:
  v66 = 1;
LABEL_27:
  sub_21B37D280(v3, v26);
  v67 = swift_getEnumCaseMultiPayload();
  v68 = v118;
  v69 = v111;
  if (v67 == 3)
  {

    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD876C8);
    sub_21B43588C(&v26[*(v73 + 64)], v69);
    v71 = v113;
    v70 = v114;
    v72 = v115;
  }

  else
  {
    v71 = v113;
    v70 = v114;
    v72 = v115;
    if (v67 == 1)
    {
      sub_21B43588C(v26, v111);
    }

    else
    {
      (*(v113 + 56))(v111, 1, 1, v114);
      sub_21B431E30(v26);
    }
  }

  v74 = (*(v71 + 48))(v69, 1, v70);
  v75 = object;
  v76 = v112;
  if (v74 == 1)
  {
    sub_21B3F2D94(v69, &qword_27CD876D0);
    if (v66)
    {
    }

    else
    {
      v92 = v107;
      sub_21B4C7488();

      v93 = v119;

      v94 = v121;

      v95 = sub_21B4C7538();
      v96 = sub_21B4C9D08();

      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v123 = v98;
        *v97 = 136446722;
        *(v97 + 4) = sub_21B36CF74(countAndFlagsBits, v75, &v123);
        *(v97 + 12) = 2082;
        v99 = sub_21B36CF74(v108, v93, &v123);

        *(v97 + 14) = v99;
        *(v97 + 22) = 2082;
        v100 = sub_21B36CF74(v109, v94, &v123);

        *(v97 + 24) = v100;
        _os_log_impl(&dword_21B365000, v95, v96, "%{public}s: %{public}s, %{public}s", v97, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x21CEF5710](v98, -1, -1);
        MEMORY[0x21CEF5710](v97, -1, -1);
      }

      else
      {
      }

      (*(v116 + 8))(v92, v117);
    }
  }

  else
  {
    (*(v71 + 32))(v68, v69, v70);
    sub_21B4C7488();
    v113 = *(v71 + 16);
    (v113)(v76, v68, v70);

    v77 = v119;

    v78 = v121;

    v79 = sub_21B4C7538();
    v80 = sub_21B4C9D08();

    LODWORD(v114) = v80;
    v81 = v80;
    v82 = v79;
    if (os_log_type_enabled(v79, v81))
    {
      v83 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v123 = v111;
      *v83 = 136446978;
      *(v83 + 4) = sub_21B36CF74(countAndFlagsBits, v75, &v123);
      *(v83 + 12) = 2082;
      v84 = sub_21B36CF74(v108, v77, &v123);

      *(v83 + 14) = v84;
      *(v83 + 22) = 2082;
      v85 = sub_21B36CF74(v109, v78, &v123);

      *(v83 + 24) = v85;
      *(v83 + 32) = 2080;
      (v113)(v106, v76, v70);
      v86 = sub_21B4C9758();
      v88 = v87;
      v89 = *(v71 + 8);
      v89(v76, v70);
      v90 = sub_21B36CF74(v86, v88, &v123);

      *(v83 + 34) = v90;
      _os_log_impl(&dword_21B365000, v82, v114, "%{public}s: %{public}s, %{public}s, %s", v83, 0x2Au);
      v91 = v111;
      swift_arrayDestroy();
      MEMORY[0x21CEF5710](v91, -1, -1);
      MEMORY[0x21CEF5710](v83, -1, -1);

      (*(v116 + 8))(v115, v117);
      v89(v118, v70);
    }

    else
    {

      v101 = *(v71 + 8);
      v101(v76, v70);
      (*(v116 + 8))(v72, v117);
      v101(v118, v70);
    }
  }
}

unint64_t sub_21B4346F4(uint64_t a1)
{
  v2 = type metadata accessor for InteractionContext.Page(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B37D280(a1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x6573776F7262;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_21B3F2D94(v4, &qword_27CD876D0);
      result = 0x4C65646F73697065;
      break;
    case 2:
      sub_21B431E30(v4);
      result = 0x5065646F73697065;
      break;
    case 3:

      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD876C8);
      sub_21B3F2D94(&v4[*(v7 + 64)], &qword_27CD876D0);
      result = 0x65676150776F6873;
      break;
    case 4:
      result = 0x6E6F6974617473;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
      return result;
    case 7:
    case 9:
      result = 0x79726F6765746163;
      break;
    case 8:
      result = 0x4C6C656E6E616863;
      break;
    case 10:
      result = 0x6867696C68676968;
      break;
    case 11:
      result = 0x7972617262696CLL;
      break;
    case 12:
      result = 0x437972617262696CLL;
      break;
    case 13:
      result = 0x4C7972617262696CLL;
      break;
    case 14:
    case 15:
      result = 0x537972617262696CLL;
      break;
    case 16:
      result = 1701670760;
      break;
    case 17:
      result = 0x65537478654E7075;
      break;
    case 18:
      result = 0xD000000000000014;
      break;
    case 19:
      result = 0x6F4E6E657473696CLL;
      break;
    case 20:
      result = 0x6979616C50776F6ELL;
      break;
    case 21:
      result = 0x796C746E65636572;
      break;
    case 22:
      result = 0x686372616573;
      break;
    case 23:
      result = 0x7473694C776F6873;
      break;
    case 24:
      result = 0x7472616843706F74;
      break;
    case 25:
      result = 0xD000000000000011;
      break;
    case 26:
      result = 1701736302;
      break;
    default:
      result = 0x506C656E6E616863;
      break;
  }

  return result;
}

uint64_t _s10PodcastsUI18InteractionContextV4PageO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B4C69B8();
  v106 = *(v4 - 8);
  v107 = v4;
  MEMORY[0x28223BE20](v4);
  v100 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD876D0);
  MEMORY[0x28223BE20](v6 - 8);
  v98 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v103 = &v96 - v9;
  MEMORY[0x28223BE20](v10);
  v104 = &v96 - v11;
  MEMORY[0x28223BE20](v12);
  v101 = &v96 - v13;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87718);
  MEMORY[0x28223BE20](v105);
  v99 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v102 = &v96 - v16;
  v17 = type metadata accessor for InteractionContext.Page(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v96 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v96 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v96 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v96 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v96 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87720);
  MEMORY[0x28223BE20](v35 - 8);
  v38 = &v96 + *(v37 + 56) - v36;
  v39 = a1;
  v40 = &v96 - v36;
  sub_21B37D280(v39, &v96 - v36);
  sub_21B37D280(a2, v38);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_21B37D280(v40, v31);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_21B3F2D94(v31, &qword_27CD876D0);
        goto LABEL_72;
      }

      v62 = *(v105 + 48);
      v63 = v102;
      sub_21B43588C(v31, v102);
      sub_21B43588C(v38, v63 + v62);
      v65 = v106;
      v64 = v107;
      v66 = *(v106 + 48);
      if (v66(v63, 1, v107) == 1)
      {
        if (v66(v63 + v62, 1, v64) == 1)
        {
          sub_21B3F2D94(v63, &qword_27CD876D0);
          goto LABEL_117;
        }

        goto LABEL_96;
      }

      v74 = v101;
      sub_21B36C7AC(v63, v101, &qword_27CD876D0);
      if (v66(v63 + v62, 1, v64) == 1)
      {
        (*(v65 + 8))(v74, v64);
LABEL_96:
        v75 = &qword_27CD87718;
        v76 = v63;
        goto LABEL_114;
      }

      v78 = v100;
      (*(v65 + 32))(v100, v63 + v62, v64);
      sub_21B435DC8();
      v79 = sub_21B4C96B8();
      v80 = *(v65 + 8);
      v80(v78, v64);
      v80(v74, v64);
      sub_21B3F2D94(v63, &qword_27CD876D0);
      if (v79)
      {
        goto LABEL_117;
      }

      goto LABEL_115;
    case 2u:
      sub_21B37D280(v40, v28);
      v45 = *v28;
      v47 = *(v28 + 2);
      v46 = *(v28 + 3);
      if (swift_getEnumCaseMultiPayload() != 2)
      {

        goto LABEL_72;
      }

      v48 = v38[8];
      v49 = *(v38 + 3);
      if (v28[8])
      {
        if (!v38[8])
        {
LABEL_27:

LABEL_28:

          goto LABEL_115;
        }
      }

      else
      {
        if (v45 != *v38)
        {
          v48 = 1;
        }

        if (v48)
        {
          goto LABEL_27;
        }
      }

      if (v46)
      {
        if (!v49)
        {
          goto LABEL_28;
        }

        if (v47 == *(v38 + 2) && v46 == v49)
        {
        }

        else
        {
          v81 = sub_21B4CA608();

          if ((v81 & 1) == 0)
          {
            goto LABEL_115;
          }
        }
      }

      else if (v49)
      {
        goto LABEL_28;
      }

LABEL_117:
      v82 = v40;
      goto LABEL_118;
    case 3u:
      v97 = v40;
      sub_21B37D280(v40, v25);
      v50 = *v25;
      v52 = *(v25 + 2);
      v51 = *(v25 + 3);
      v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD876C8) + 64);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        sub_21B3F2D94(&v25[v53], &qword_27CD876D0);

        v40 = v97;
LABEL_72:
        sub_21B3F2D94(v40, &qword_27CD87720);
        return 0;
      }

      v54 = v25[8];
      v55 = *v38;
      v56 = v38[8];
      v57 = *(v38 + 3);
      v102 = *(v38 + 2);
      v58 = &v25[v53];
      v59 = v104;
      sub_21B43588C(v58, v104);
      v60 = &v38[v53];
      v61 = v103;
      sub_21B43588C(v60, v103);
      if (v54)
      {
        if (!v56)
        {
LABEL_34:

          sub_21B3F2D94(v61, &qword_27CD876D0);
          sub_21B3F2D94(v59, &qword_27CD876D0);
          sub_21B431E30(v97);
          return 0;
        }
      }

      else
      {
        if (v50 == v55)
        {
          v71 = v56;
        }

        else
        {
          v71 = 1;
        }

        if (v71)
        {
          goto LABEL_34;
        }
      }

      v72 = v107;
      if (!v51)
      {
        v40 = v97;
        v73 = v106;
        if (!v57)
        {
          goto LABEL_120;
        }

        goto LABEL_112;
      }

      v73 = v106;
      if (!v57)
      {
        v40 = v97;
LABEL_112:

LABEL_113:
        sub_21B3F2D94(v61, &qword_27CD876D0);
        v76 = v59;
        v75 = &qword_27CD876D0;
LABEL_114:
        sub_21B3F2D94(v76, v75);
        goto LABEL_115;
      }

      if (v52 == v102 && v51 == v57)
      {

        goto LABEL_120;
      }

      v83 = sub_21B4CA608();

      v40 = v97;
      if ((v83 & 1) == 0)
      {
        goto LABEL_113;
      }

LABEL_120:
      v84 = v61;
      v85 = *(v105 + 48);
      v86 = v99;
      sub_21B36C7AC(v59, v99, &qword_27CD876D0);
      sub_21B36C7AC(v84, v86 + v85, &qword_27CD876D0);
      v87 = v59;
      v88 = *(v73 + 48);
      if (v88(v86, 1, v72) == 1)
      {
        sub_21B3F2D94(v84, &qword_27CD876D0);
        sub_21B3F2D94(v87, &qword_27CD876D0);
        v89 = v88(v86 + v85, 1, v72);
        v90 = v97;
        if (v89 == 1)
        {
          sub_21B3F2D94(v86, &qword_27CD876D0);
          goto LABEL_128;
        }

        goto LABEL_125;
      }

      v91 = v98;
      sub_21B36C7AC(v86, v98, &qword_27CD876D0);
      if (v88(v86 + v85, 1, v72) == 1)
      {
        sub_21B3F2D94(v103, &qword_27CD876D0);
        sub_21B3F2D94(v104, &qword_27CD876D0);
        (*(v73 + 8))(v91, v72);
        v90 = v97;
LABEL_125:
        sub_21B3F2D94(v86, &qword_27CD87718);
LABEL_126:
        sub_21B431E30(v90);
        return 0;
      }

      v92 = v86 + v85;
      v93 = v100;
      (*(v73 + 32))(v100, v92, v72);
      sub_21B435DC8();
      v94 = sub_21B4C96B8();
      v95 = *(v73 + 8);
      v95(v93, v72);
      sub_21B3F2D94(v103, &qword_27CD876D0);
      sub_21B3F2D94(v104, &qword_27CD876D0);
      v95(v91, v72);
      sub_21B3F2D94(v86, &qword_27CD876D0);
      v90 = v97;
      if ((v94 & 1) == 0)
      {
        goto LABEL_126;
      }

LABEL_128:
      v82 = v90;
LABEL_118:
      sub_21B431E30(v82);
      return 1;
    case 4u:
      sub_21B37D280(v40, v22);
      v43 = *v22;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_72;
      }

      v44 = *v38;
      if (v43 == 2)
      {
        if (v44 != 2)
        {
          goto LABEL_115;
        }

        goto LABEL_117;
      }

      if (v44 != 2 && ((v44 ^ v43) & 1) == 0)
      {
        goto LABEL_117;
      }

      goto LABEL_115;
    case 5u:
      sub_21B37D280(v40, v19);
      v67 = *v19;
      v68 = v19[9];
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_72;
      }

      v69 = v38[8];
      if (v19[8])
      {
        if (!v38[8])
        {
          goto LABEL_115;
        }
      }

      else
      {
        if (v67 != *v38)
        {
          v69 = 1;
        }

        if (v69)
        {
LABEL_115:
          sub_21B431E30(v40);
          return 0;
        }
      }

      v77 = v68 ^ v38[9];
      sub_21B431E30(v40);
      return v77 ^ 1u;
    case 6u:
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_117;
      }

      goto LABEL_72;
    case 7u:
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_117;
      }

      goto LABEL_72;
    case 8u:
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_117;
      }

      goto LABEL_72;
    case 9u:
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        goto LABEL_117;
      }

      goto LABEL_72;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        goto LABEL_117;
      }

      goto LABEL_72;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        goto LABEL_117;
      }

      goto LABEL_72;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        goto LABEL_117;
      }

      goto LABEL_72;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        goto LABEL_117;
      }

      goto LABEL_72;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        goto LABEL_117;
      }

      goto LABEL_72;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        goto LABEL_117;
      }

      goto LABEL_72;
    case 0x10u:
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        goto LABEL_117;
      }

      goto LABEL_72;
    case 0x11u:
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        goto LABEL_117;
      }

      goto LABEL_72;
    case 0x12u:
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        goto LABEL_117;
      }

      goto LABEL_72;
    case 0x13u:
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        goto LABEL_117;
      }

      goto LABEL_72;
    case 0x14u:
      if (swift_getEnumCaseMultiPayload() == 20)
      {
        goto LABEL_117;
      }

      goto LABEL_72;
    case 0x15u:
      if (swift_getEnumCaseMultiPayload() == 21)
      {
        goto LABEL_117;
      }

      goto LABEL_72;
    case 0x16u:
      if (swift_getEnumCaseMultiPayload() == 22)
      {
        goto LABEL_117;
      }

      goto LABEL_72;
    case 0x17u:
      if (swift_getEnumCaseMultiPayload() == 23)
      {
        goto LABEL_117;
      }

      goto LABEL_72;
    case 0x18u:
      if (swift_getEnumCaseMultiPayload() == 24)
      {
        goto LABEL_117;
      }

      goto LABEL_72;
    case 0x19u:
      if (swift_getEnumCaseMultiPayload() == 25)
      {
        goto LABEL_117;
      }

      goto LABEL_72;
    case 0x1Au:
      if (swift_getEnumCaseMultiPayload() == 26)
      {
        goto LABEL_117;
      }

      goto LABEL_72;
    default:
      sub_21B37D280(v40, v34);
      v41 = *v34;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_72;
      }

      v42 = v38[8];
      if (v34[8])
      {
        if (!v38[8])
        {
          goto LABEL_115;
        }
      }

      else
      {
        if (v41 != *v38)
        {
          v42 = 1;
        }

        if (v42)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_117;
  }
}

uint64_t sub_21B435800(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B43588C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD876D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21B435908()
{
  result = qword_27CD87708;
  if (!qword_27CD87708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD87708);
  }

  return result;
}

void sub_21B435984(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_21B4CA188();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_21B4359D0()
{
  if (!qword_2811FD458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD87710);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2811FD458);
    }
  }
}

uint64_t getEnumTagSinglePayload for InteractionContext.View(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9)
  {
    v2 = a2 + 7;
    if (a2 + 7 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    if (v4 <= 1)
    {
      if (!v4)
      {
        goto LABEL_19;
      }

      v5 = a1[1];
      if (!a1[1])
      {
        goto LABEL_19;
      }

      return (*a1 | (v5 << 8)) - 7;
    }

    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v5 << 8)) - 7;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (v5)
      {
        return (*a1 | (v5 << 8)) - 7;
      }
    }
  }

LABEL_19:
  v7 = *a1;
  v9 = v7 >= 2;
  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  v9 = v9 && v8 >= 3;
  if (!v9 || v8 - 2 <= 3)
  {
    return 0;
  }

  return v8 - 5;
}

uint64_t storeEnumTagSinglePayload for InteractionContext.View(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 7;
  if (a3 + 7 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF9)
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_21B435BB0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 < 2)
  {
    return 0;
  }

  v2 = (v1 + 2147483646) & 0x7FFFFFFF;
  result = v2 - 2;
  if (v2 <= 2)
  {
    return 0;
  }

  return result;
}

_BYTE *sub_21B435BD8(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InteractionContext.EpisodeCellType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_19;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_19:
  v7 = *a1;
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 2;
  if (v8 <= 2)
  {
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for InteractionContext.EpisodeCellType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_21B435D48(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_21B435D64(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_21B435DC8()
{
  result = qword_27CD87728;
  if (!qword_27CD87728)
  {
    sub_21B4C69B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD87728);
  }

  return result;
}

uint64_t InMemoryEpisodeStateDataSource<>.init(asPartOf:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87588);
  sub_21B4C8808();
  v0 = sub_21B4C7068();

  return v0;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87590);
  sub_21B4C8808();
  v0 = sub_21B4C7068();

  return v0;
}

uint64_t InMemoryPodcastStateDataSource.init(asPartOf:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87598);
  sub_21B4C8808();
  v0 = sub_21B4C7078();

  return v0;
}

uint64_t InMemoryStateRepository.init(asPartOf:)()
{
  v0 = sub_21B435FC8();

  return v0;
}

uint64_t sub_21B435FC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87588);
  sub_21B4C8808();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87590);
  sub_21B4C8808();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87598);
  sub_21B4C8808();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87580);
  sub_21B4C8808();
  return sub_21B4C6CA8();
}

uint64_t PushRestrictions.init(asPartOf:)()
{
  sub_21B3F12CC(0, &qword_27CD87730);
  sub_21B4C8808();
  sub_21B3F12CC(0, &qword_27CD874F0);
  sub_21B4C87E8();
  v0 = sub_21B4C66B8();

  return v0;
}

uint64_t sub_21B43614C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21B389F80(a3, v25 - v10);
  v12 = sub_21B4C9A58();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21B385E00(v11);
  }

  else
  {
    sub_21B4C9A48();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21B4C99C8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21B4C9778() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_21B385E00(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21B385E00(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_21B43640C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21B389F80(a3, v25 - v10);
  v12 = sub_21B4C9A58();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21B385E00(v11);
  }

  else
  {
    sub_21B4C9A48();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21B4C99C8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21B4C9778() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87750);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_21B385E00(a3);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21B385E00(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87750);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void *DownloadRemovalObserver.__allocating_init(asPartOf:deletionKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_21B36F518(a1, a2, a3);

  return v6;
}

void *DownloadRemovalObserver.init(asPartOf:deletionKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_21B36F518(a1, a2, a3);

  return v3;
}

uint64_t sub_21B436784()
{
  v1 = *(v0 + 80);

  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_21B436828;

  return sub_21B3A4F48();
}

uint64_t sub_21B436828()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21B43691C()
{
  if (*(v0 + 56))
  {

    sub_21B4C9A78();
  }

  *(v0 + 56) = 0;
}

uint64_t sub_21B436990()
{
  v2 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 152);
    v5 = *(v2 + 160);

    return MEMORY[0x2822009F8](sub_21B436A9C, v4, v5);
  }

  return result;
}

uint64_t sub_21B436A9C()
{
  v23 = v0;
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[2];
    sub_21B4C7528();

    v3 = sub_21B4C7538();
    v4 = sub_21B4C9CC8();

    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[10];
    v7 = v0[7];
    v8 = v0[8];
    if (v5)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v22 = v10;
      *v9 = 136315138;
      v11 = sub_21B36CF74(v2, v1, &v22);

      *(v9 + 4) = v11;
      _os_log_impl(&dword_21B365000, v3, v4, "Received notice of new episodes to delete: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x21CEF5710](v10, -1, -1);
      MEMORY[0x21CEF5710](v9, -1, -1);
    }

    else
    {
    }

    v17 = *(v8 + 8);
    v17(v6, v7);
    v0[26] = v17;
    v18 = v0[21];
    v0[27] = sub_21B4C6D58();
    v19 = v18;
    v20 = sub_21B4C6D28();
    v0[28] = v20;
    v21 = swift_task_alloc();
    v0[29] = v21;
    *v21 = v0;
    v21[1] = sub_21B436D34;

    return sub_21B39203C(v20);
  }

  else
  {
    v12 = v0[17];
    v13 = v0[14];
    v14 = v0[15];
    (*(v0[12] + 8))(v0[13], v0[11]);
    (*(v14 + 8))(v12, v13);

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_21B436D34()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_21B436FFC;
  }

  else
  {

    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_21B436E50;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21B436E50()
{
  v1 = objc_allocWithZone(*(v0 + 216));
  v2 = sub_21B4C6D08();
  *(v0 + 40) = v2;
  v3 = MEMORY[0x277D3D818];
  sub_21B390588(&qword_2811FD4B8, 255, MEMORY[0x277D3D818]);
  sub_21B390588(&qword_2811FD4C0, 255, v3);
  sub_21B4C9D18();

  v4 = *(v0 + 144);
  v5 = *(v0 + 48);
  swift_getAssociatedConformanceWitness();
  v6 = swift_task_alloc();
  *(v0 + 200) = v6;
  *v6 = v0;
  v6[1] = sub_21B436990;

  return MEMORY[0x282200310](v0 + 16, v5, v4);
}

uint64_t sub_21B436FFC()
{
  v23 = v0;
  v1 = *(v0 + 240);

  sub_21B4C7528();
  v2 = v1;
  v3 = sub_21B4C7538();
  v4 = sub_21B4C9CE8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 240);
    v6 = *(v0 + 72);
    v7 = *(v0 + 56);
    v21 = *(v0 + 208);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315138;
    *(v0 + 32) = v5;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86970);
    v11 = sub_21B4C9758();
    v13 = sub_21B36CF74(v11, v12, &v22);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_21B365000, v3, v4, "Failed to process episode deletions: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x21CEF5710](v9, -1, -1);
    MEMORY[0x21CEF5710](v8, -1, -1);

    v21(v6, v7);
  }

  else
  {
    v14 = *(v0 + 208);
    v15 = *(v0 + 72);
    v16 = *(v0 + 56);

    v14(v15, v16);
  }

  v17 = *(v0 + 144);
  v18 = *(v0 + 48);
  swift_getAssociatedConformanceWitness();
  v19 = swift_task_alloc();
  *(v0 + 200) = v19;
  *v19 = v0;
  v19[1] = sub_21B436990;

  return MEMORY[0x282200310](v0 + 16, v18, v17);
}

uint64_t sub_21B437274()
{
  v1[3] = v0;
  type metadata accessor for DownloadRemovalObserver();
  sub_21B390588(&qword_2811FEEF0, v2, type metadata accessor for DownloadRemovalObserver);
  v4 = sub_21B4C99C8();
  v1[4] = v4;
  v1[5] = v3;

  return MEMORY[0x2822009F8](sub_21B437328, v4, v3);
}

uint64_t sub_21B437328()
{
  v1 = v0[3];
  v0[6] = sub_21B4C6D58();
  v2 = *(v1 + 24);
  v0[7] = v2;
  v3 = v2;
  v4 = sub_21B4C6D28();
  v0[8] = v4;
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_21B4373E8;

  return sub_21B39203C(v4);
}

uint64_t sub_21B4373E8()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_21B437634;
  }

  else
  {

    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_21B437504;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21B437504()
{
  v1 = objc_allocWithZone(*(v0 + 48));
  v2 = sub_21B4C6D08();
  *(v0 + 16) = v2;
  v3 = MEMORY[0x277D3D818];
  sub_21B390588(&qword_2811FD4B8, 255, MEMORY[0x277D3D818]);
  sub_21B390588(&qword_2811FD4C0, 255, v3);
  sub_21B4C9D18();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_21B437634()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B437698()
{
  v1 = *(v0 + 328);
  sub_21B4C73B8();
  v2 = sub_21B4C73C8();
  sub_21B4C7438();
  v3 = sub_21B4C9E48();
  if (sub_21B4CA148())
  {
    v5 = *(v0 + 48);
    v4 = *(v0 + 56);
    v6 = *(v0 + 40);

    sub_21B4C7468();

    if ((*(v5 + 88))(v4, v6) == *MEMORY[0x277D85B00])
    {
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
      v7 = "FAILURE";
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_21B4C7368();
    _os_signpost_emit_with_name_impl(&dword_21B365000, v2, v3, v9, "RemovePendingDownloads", v7, v8, 2u);
    MEMORY[0x21CEF5710](v8, -1, -1);
  }

  v10 = *(v0 + 280);
  v11 = *(v0 + 264);
  v12 = *(v0 + 216);
  v13 = *(v0 + 200);
  v14 = *(v0 + 168);
  v15 = *(v0 + 152);

  v11(v14, v15);
  v10(v12, v13);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_21B437910@<X0>(void *a1@<X8>)
{
  v3 = sub_21B4C6D18();
  v4 = v3;
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = sub_21B47576C(*(v3 + 16), 0);
    v7 = sub_21B438854(&v25, (v6 + 4), v5, v4);
    sub_21B439160();
    if (v7 == v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

LABEL_5:
  v8 = sub_21B4C9F78();

  if (v1)
  {
    return result;
  }

  if (v8 >> 62)
  {
LABEL_27:
    v10 = sub_21B4CA4B8();
    if (v10)
    {
LABEL_8:
      v11 = 0;
      v26 = MEMORY[0x277D84F90];
      do
      {
        v12 = v11;
        while (1)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x21CEF3AB0](v12, v8);
            v11 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              goto LABEL_25;
            }
          }

          else
          {
            if (v12 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_26;
            }

            v13 = *(v8 + 8 * v12 + 32);
            v11 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
LABEL_25:
              __break(1u);
LABEL_26:
              __break(1u);
              goto LABEL_27;
            }
          }

          v14 = v13;
          v15 = [v14 uuid];
          if (v15)
          {
            break;
          }

          ++v12;
          if (v11 == v10)
          {
            goto LABEL_29;
          }
        }

        v24 = a1;
        v16 = v15;
        v17 = sub_21B4C9708();
        v23 = v18;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_21B36CCAC(0, *(v26 + 2) + 1, 1, v26);
        }

        v20 = *(v26 + 2);
        v19 = *(v26 + 3);
        if (v20 >= v19 >> 1)
        {
          v26 = sub_21B36CCAC((v19 > 1), v20 + 1, 1, v26);
        }

        v21 = v26;
        *(v26 + 2) = v20 + 1;
        v22 = &v21[16 * v20];
        a1 = v24;
        *(v22 + 4) = v17;
        *(v22 + 5) = v23;
      }

      while (v11 != v10);
      goto LABEL_29;
    }
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_8;
    }
  }

  v26 = MEMORY[0x277D84F90];
LABEL_29:

  *a1 = v26;
  return result;
}

uint64_t DownloadRemovalObserver.deinit()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return v0;
}

uint64_t DownloadRemovalObserver.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t DownloadRemovalObserver.removeDownloadedEpisode(uuid:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86AE0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21B4D2830;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  *(v13 + 48) = 2;
  v14 = sub_21B4C9A58();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v13;
  v15[5] = v5;
  v15[6] = a3;
  v15[7] = a4;

  sub_21B416040(a3);
  sub_21B438370(0, 0, v12, &unk_21B4D56C0, v15);
}

uint64_t DownloadRemovalObserver.delete(episodes:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  v11 = sub_21B4C9A58();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = v4;
  v12[6] = a2;
  v12[7] = a3;

  sub_21B416040(a2);
  sub_21B438370(0, 0, v10, &unk_21B4D56C8, v12);
}

uint64_t sub_21B43808C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_21B4380B0, 0, 0);
}

uint64_t sub_21B4380B0()
{

  sub_21B438BBC(v1);

  v2 = objc_allocWithZone(sub_21B4C6D58());
  v3 = sub_21B4C6D08();
  *(v0 + 48) = v3;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_21B438180;

  return sub_21B39203C(v3);
}

uint64_t sub_21B438180()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_21B43830C;
  }

  else
  {
    v2 = sub_21B438294;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21B438294()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v1();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21B43830C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B438370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_21B389F80(a3, v22 - v9);
  v11 = sub_21B4C9A58();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_21B385E00(v10);
  }

  else
  {
    sub_21B4C9A48();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_21B4C99C8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_21B4C9778() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_21B385E00(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21B385E00(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_21B4385DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_21B389F80(a3, v22 - v9);
  v11 = sub_21B4C9A58();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_21B385E00(v10);
  }

  else
  {
    sub_21B4C9A48();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_21B4C99C8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_21B4C9778() + 32;
      sub_21B4C93B8();

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_21B385E00(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21B385E00(a3);
  sub_21B4C93B8();
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void *sub_21B438854(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 24 * (v17 | (v12 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      *v11 = *v18;
      *(v11 + 8) = v20;
      *(v11 + 16) = v21;
      if (v14 == v10)
      {
        sub_21B439118(v19, v20, v21);
        goto LABEL_24;
      }

      v11 += 24;
      sub_21B439118(v19, v20, v21);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_21B4389B4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_21B438AA8;

  return v5(v2 + 32);
}

uint64_t sub_21B438AA8()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_21B438BBC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_21B392AD8();
  result = MEMORY[0x21CEF32C0](v2, MEMORY[0x277D3D958], v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v5 += 24;
      sub_21B439118(v7, v6, v8);
      sub_21B444D78(v9, v7, v6, v8);
      sub_21B43913C(v9[0], v9[1], v10);
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_21B438C80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_21B40AB58;

  return sub_21B43808C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t dispatch thunk of DownloadRemovalObserver.removeDownloadsRecordedInUserDefaults()()
{
  v4 = (*(*v0 + 184) + **(*v0 + 184));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_21B40998C;

  return v4();
}

uint64_t dispatch thunk of DownloadRemovalObserver.process(removals:)(uint64_t a1)
{
  v6 = (*(*v1 + 192) + **(*v1 + 192));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21B40AB58;

  return v6(a1);
}

uint64_t objectdestroy_9Tm()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21B439060(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21B40AB58;

  return sub_21B4389B4(a1, v4);
}

id sub_21B439118(id result, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  if (a3 == 1)
  {
    return result;
  }

  return result;
}

void sub_21B43913C(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  else if (a3 == 1)
  {
  }
}

uint64_t sub_21B439168()
{
  result = sub_21B4C96C8();
  qword_2812048E8 = result;
  return result;
}

uint64_t sub_21B4391A0()
{
  result = sub_21B4C96C8();
  qword_27CD88F78 = result;
  return result;
}

uint64_t sub_21B4391DC()
{
  result = sub_21B4C96C8();
  qword_27CD88F80 = result;
  return result;
}

id AMSDialogResult.selectedAction.getter()
{
  v1 = [v0 originalRequest];
  v2 = [v0 selectedActionIdentifier];
  if (!v2)
  {
    sub_21B4C9708();
    v2 = sub_21B4C96C8();
  }

  v3 = [v1 locateActionWithIdentifier_];

  return v3;
}

uint64_t sub_21B4392B4(uint64_t a1, char a2)
{
  v4 = type metadata accessor for PageRenderActivity();
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PageRenderEvent();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v16 - v12;
  if (a1)
  {
    sub_21B439470();
    v14 = swift_allocError();
    *v15 = 0;
    *v13 = v14;
    v13[8] = a2 & 1;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_21B4394C4(v13, v10);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_21B439528(v10, v6);
      PageRenderController.notify(_:)(v6);
      sub_21B43958C(v6, type metadata accessor for PageRenderActivity);
    }

    return sub_21B43958C(v13, type metadata accessor for PageRenderEvent);
  }

  return result;
}

unint64_t sub_21B439470()
{
  result = qword_2811FEC48[0];
  if (!qword_2811FEC48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811FEC48);
  }

  return result;
}

uint64_t sub_21B4394C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageRenderEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B439528(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageRenderActivity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B43958C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_21B4396B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DisplayLinkHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}