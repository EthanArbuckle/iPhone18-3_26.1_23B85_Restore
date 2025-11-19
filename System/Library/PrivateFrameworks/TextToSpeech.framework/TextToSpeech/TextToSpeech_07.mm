uint64_t sub_1A93C91FC()
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 5792);
  sub_1A93D06F4();
  swift_allocError();
  *v2 = v1;
  swift_willThrow();
  v3 = *(v0 + 8);
  v4 = *MEMORY[0x1E69E9840];

  return v3();
}

BOOL sub_1A93C92B8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a5 == a2;
  if (a4 != a1)
  {
    v5 = 0;
  }

  return (a3 & 0x100000000) == 0 && v5;
}

void sub_1A93C92D4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_1A9387478(0, &qword_1EB388030, 0x1E69584E0);
  v6 = sub_1A957C4C8();

  v7 = a3;
  v5(v6, v7);
}

void sub_1A93C9384(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 384);
  if (a1)
  {
    if (v4)
    {
      v5 = *(v2 + 384);

      v6 = sub_1A937A354(a1, v4);

      if (v6)
      {
        return;
      }
    }
  }

  else if (!v4)
  {
    return;
  }

  v7 = *(v2 + 40);
  if (!v7)
  {
    return;
  }

  v8 = [v7 parameterTree];
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = [v8 allParameters];

  sub_1A9387478(0, &qword_1EB386D58, 0x1E698D840);
  v11 = sub_1A957C4C8();

  if (a1)
  {
    if (v11 >> 62)
    {
      v12 = sub_1A957CE48();
      if (v12)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
LABEL_11:
        if (v12 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v12; ++i)
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x1AC585DE0](i, v11);
          }

          else
          {
            v14 = *(v11 + 8 * i + 32);
          }

          v15 = v14;
          v16 = [v14 identifier];
          v17 = sub_1A957C0F8();
          v19 = v18;

          if (*(a1 + 16))
          {
            v20 = sub_1A937A490(v17, v19);
            v22 = v21;

            if (v22)
            {
              LODWORD(v23) = *(*(a1 + 56) + 4 * v20);
              [v15 setValue_];
            }
          }

          else
          {
          }
        }

        goto LABEL_24;
      }
    }

LABEL_24:

    v24 = *(v2 + 384);
    *(v2 + 384) = a1;
  }
}

void sub_1A93C95C0()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    return;
  }

  v14 = v1;
  if (!TTSHasRBSAssertionEntitlement())
  {
    goto LABEL_8;
  }

  v14 = v14;
  if (![v14 remoteProcessIdentifier] || !MEMORY[0x1E69C7648])
  {

LABEL_8:
    v13 = v14;
    goto LABEL_9;
  }

  v2 = [v14 remoteProcessIdentifier];

  v3 = [objc_opt_self() targetWithPid_];
  v4 = sub_1A957C0C8();
  v5 = sub_1A957C0C8();
  v6 = [objc_opt_self() attributeWithDomain:v4 name:v5];

  sub_1A937829C(&qword_1EB386D48, &qword_1A95898C8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A95892B0;
  *(v7 + 32) = v6;
  v8 = objc_allocWithZone(MEMORY[0x1E69C7540]);
  v9 = v6;
  v10 = sub_1A957C0C8();
  sub_1A9387478(0, &qword_1EB386D50, 0x1E69C7558);
  v11 = sub_1A957C4B8();

  v12 = [v8 initWithExplanation:v10 target:v3 attributes:v11];

  v13 = *(v0 + 392);
  *(v0 + 392) = v12;
LABEL_9:
}

uint64_t sub_1A93C980C()
{
  if (*(v0 + 400))
  {
    v1 = *(v0 + 400);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
    *(v0 + 400) = MEMORY[0x1E69E7CC0];
  }

  return v1;
}

void sub_1A93C984C()
{
  v2 = v1;
  v52[1] = *MEMORY[0x1E69E9840];
  v3 = (*(*v0 + 248))();
  if (v3)
  {
    v4 = v3;
    v5 = [(SEL *)v3 avFormat];
    if (v5)
    {
      v6 = v5;
      if (*(v0 + 352))
      {
      }

      else
      {
        v7 = sub_1A93C980C();
        v8 = v7;
        if (v7 >> 62)
        {
          goto LABEL_26;
        }

        for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A957CE48())
        {
          v50 = v0;
          v43 = v2;
          v44 = v4;
          v0 = 0;
          v48 = v8;
          v49 = v8 & 0xC000000000000001;
          v45 = v8 & 0xFFFFFFFFFFFFFF8;
          v46 = i;
          v2 = &property descriptor for TTSAXResource.footprint;
          v10 = &property descriptor for TTSAXResource.footprint;
          v4 = &property descriptor for TTSAXResource.footprint;
          v47 = v6;
          while (1)
          {
            if (v49)
            {
              v11 = MEMORY[0x1AC585DE0](v0, v8);
            }

            else
            {
              if (v0 >= *(v45 + 16))
              {
                goto LABEL_25;
              }

              v11 = *(v8 + 8 * v0 + 32);
            }

            v12 = v11;
            if (__OFADD__(v0, 1))
            {
              break;
            }

            v51 = (v0 + 1);
            v13 = [v11 AUAudioUnit];
            v14 = [v13 renderResourcesAllocated];

            if (v14)
            {
              v15 = [v12 AUAudioUnit];
              [v15 deallocateRenderResources];
            }

            v16 = [v12 AUAudioUnit];
            [v16 setRenderingOffline_];

            v17 = [v12 AUAudioUnit];
            [v17 setMaximumFramesToRender_];

            v18 = [v12 AUAudioUnit];
            v19 = [v18 v10[445]];

            v20 = v12;
            v21 = [v19 objectAtIndexedSubscript_];

            v52[0] = 0;
            v22 = v47;
            v23 = v4;
            v24 = [v21 v4[446]];

            if (!v24)
            {
              v41 = v52[0];

              sub_1A957AEF8();

              v32 = v20;
              goto LABEL_23;
            }

            v25 = v52[0];
            v26 = [v20 AUAudioUnit];
            v27 = [v26 v10[445]];

            v28 = [v27 objectAtIndexedSubscript_];
            [v28 setEnabled_];

            v29 = [v20 &off_1E7881A08 + 5];
            v30 = [v29 inputBusses];

            v31 = [v30 &selRef_xmlEscaped];
            v52[0] = 0;
            v32 = v20;
            v6 = v47;
            LODWORD(v30) = [v31 v23 + 2552];

            v33 = v52[0];
            if (!v30)
            {
              goto LABEL_21;
            }

            v34 = v52[0];
            v35 = [v32 &off_1E7881A08 + 5];
            v36 = [v35 inputBusses];

            v37 = [v36 objectAtIndexedSubscript_];
            [v37 setEnabled_];

            v38 = [v32 &off_1E7881A08 + 5];
            v52[0] = 0;
            LODWORD(v36) = [v38 allocateRenderResourcesAndReturnError_];

            v33 = v52[0];
            if (!v36)
            {
LABEL_21:
              v40 = v33;

              sub_1A957AEF8();

              v22 = v47;
LABEL_23:
              swift_willThrow();

              goto LABEL_29;
            }

            v39 = v52[0];

            ++v0;
            v8 = v48;
            v10 = &property descriptor for TTSAXResource.footprint;
            v4 = v23;
            if (v51 == v46)
            {

              v0 = v50;
              goto LABEL_28;
            }
          }

          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          ;
        }

LABEL_28:
        *(v0 + 352) = 1;
      }
    }

    else
    {
    }
  }

LABEL_29:
  v42 = *MEMORY[0x1E69E9840];
}

uint64_t static TTSAURenderer.format(forVoice:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93916A8;

  return sub_1A93CFBC0(a1);
}

uint64_t sub_1A93C9FBC(void *a1, void *aBlock)
{
  v2[2] = a1;
  v2[3] = _Block_copy(aBlock);
  v4 = a1;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1A93CA084;

  return sub_1A93CFBC0(v4);
}

uint64_t sub_1A93CA084(void *a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  (v4)[2](v4, a1);
  _Block_release(v4);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t TTSAURenderer.SpeechBuffer.Marker.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  MEMORY[0x1AC5863C0](*v0);
  MEMORY[0x1AC5863C0](v1);
  MEMORY[0x1AC5863C0](v2);
  MEMORY[0x1AC5863C0](v3);
  sub_1A957C228();

  return sub_1A957C228();
}

uint64_t TTSAURenderer.SpeechBuffer.Marker.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](v1);
  MEMORY[0x1AC5863C0](v2);
  MEMORY[0x1AC5863C0](v3);
  MEMORY[0x1AC5863C0](v4);
  sub_1A957C228();
  sub_1A957C228();
  return sub_1A957D548();
}

uint64_t sub_1A93CA378()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](v1);
  MEMORY[0x1AC5863C0](v2);
  MEMORY[0x1AC5863C0](v3);
  MEMORY[0x1AC5863C0](v4);
  sub_1A957C228();
  sub_1A957C228();
  return sub_1A957D548();
}

uint64_t sub_1A93CA430()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  MEMORY[0x1AC5863C0](*v0);
  MEMORY[0x1AC5863C0](v1);
  MEMORY[0x1AC5863C0](v2);
  MEMORY[0x1AC5863C0](v3);
  sub_1A957C228();

  return sub_1A957C228();
}

uint64_t sub_1A93CA4CC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](v1);
  MEMORY[0x1AC5863C0](v2);
  MEMORY[0x1AC5863C0](v3);
  MEMORY[0x1AC5863C0](v4);
  sub_1A957C228();
  sub_1A957C228();
  return sub_1A957D548();
}

uint64_t TTSAURenderer.SpeechBuffer.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A957B0B8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TTSAURenderer.SpeechBuffer.id.setter(uint64_t a1)
{
  v3 = sub_1A957B0B8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t TTSAURenderer.SpeechBuffer.offset.setter(int a1)
{
  result = type metadata accessor for TTSAURenderer.SpeechBuffer();
  *(v1 + *(result + 20)) = a1;
  return result;
}

id TTSAURenderer.SpeechBuffer.audio.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTSAURenderer.SpeechBuffer() + 24));

  return v1;
}

void TTSAURenderer.SpeechBuffer.audio.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTSAURenderer.SpeechBuffer() + 24);

  *(v1 + v3) = a1;
}

uint64_t TTSAURenderer.SpeechBuffer.markers.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTSAURenderer.SpeechBuffer() + 28));
}

uint64_t TTSAURenderer.SpeechBuffer.markers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTSAURenderer.SpeechBuffer() + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A93CA890(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 88);
    for (i = (a2 + 88); (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(v3 - 7), *(i - 7)), vceqq_s64(*(v3 - 5), *(i - 5))))) & 1) != 0; i += 8)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      if ((*(v3 - 3) != *(i - 3) || *(v3 - 2) != *(i - 2)) && (sub_1A957D3E8() & 1) == 0)
      {
        break;
      }

      if ((v5 != v7 || v6 != v8) && (sub_1A957D3E8() & 1) == 0)
      {
        break;
      }

      v3 += 8;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1A93CA998(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_1A9387478(0, &qword_1EB386D70, 0x1E6958430);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1AC585DE0](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x1AC585DE0](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_1A957CC18();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_1A957CC18();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_1A957CE48();
  }

  result = sub_1A957CE48();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t TTSAURenderer.SpeechBuffer.hash(into:)(uint64_t a1)
{
  v2 = v1;
  sub_1A957B0B8();
  sub_1A93CFF90(&qword_1ED96FE78, 255, MEMORY[0x1E69695A8]);
  sub_1A957C068();
  v4 = type metadata accessor for TTSAURenderer.SpeechBuffer();
  v5 = *(v1 + v4[5]);
  sub_1A957D528();
  v6 = *(v1 + v4[6]);
  sub_1A957CC28();
  v7 = *(v2 + v4[7]);

  return sub_1A93CF068(a1, v7);
}

uint64_t TTSAURenderer.SpeechBuffer.hashValue.getter()
{
  v1 = v0;
  sub_1A957D4F8();
  sub_1A957B0B8();
  sub_1A93CFF90(&qword_1ED96FE78, 255, MEMORY[0x1E69695A8]);
  sub_1A957C068();
  v2 = type metadata accessor for TTSAURenderer.SpeechBuffer();
  v3 = *(v0 + v2[5]);
  sub_1A957D528();
  v4 = *(v0 + v2[6]);
  sub_1A957CC28();
  sub_1A93CF068(v6, *(v1 + v2[7]));
  return sub_1A957D548();
}

uint64_t sub_1A93CAD84(int *a1)
{
  v3 = v1;
  sub_1A957D4F8();
  sub_1A957B0B8();
  sub_1A93CFF90(&qword_1ED96FE78, 255, MEMORY[0x1E69695A8]);
  sub_1A957C068();
  v4 = *(v1 + a1[5]);
  sub_1A957D528();
  v5 = *(v1 + a1[6]);
  sub_1A957CC28();
  sub_1A93CF068(v7, *(v3 + a1[7]));
  return sub_1A957D548();
}

uint64_t sub_1A93CAE50(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_1A957B0B8();
  sub_1A93CFF90(&qword_1ED96FE78, 255, MEMORY[0x1E69695A8]);
  sub_1A957C068();
  v6 = *(v2 + a2[5]);
  sub_1A957D528();
  v7 = *(v2 + a2[6]);
  sub_1A957CC28();
  v8 = *(v4 + a2[7]);

  return sub_1A93CF068(a1, v8);
}

uint64_t sub_1A93CAF18(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_1A957D4F8();
  sub_1A957B0B8();
  sub_1A93CFF90(&qword_1ED96FE78, 255, MEMORY[0x1E69695A8]);
  sub_1A957C068();
  v5 = *(v2 + a2[5]);
  sub_1A957D528();
  v6 = *(v2 + a2[6]);
  sub_1A957CC28();
  sub_1A93CF068(v8, *(v4 + a2[7]));
  return sub_1A957D548();
}

void *TTSAURenderer.RenderRequest.init(ssml:voice:jobIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = sub_1A957B0B8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v20[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  memcpy(v20, a3, sizeof(v20));
  if (!a5)
  {
    sub_1A957B0A8();
    a4 = sub_1A957B088();
    a5 = v18;
    (*(v13 + 8))(v17, v12);
  }

  *a6 = a1;
  a6[1] = a2;
  result = memcpy(a6 + 2, v20, 0x118uLL);
  a6[37] = a4;
  a6[38] = a5;
  return result;
}

uint64_t sub_1A93CB118()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t sub_1A93CB150(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_1A93CB1E8(void *__src)
{
  v2[76] = v1;
  memcpy(v2 + 2, __src, 0x118uLL);
  type metadata accessor for AudioUnitCache();
  sub_1A93CFF90(&qword_1EB386D10, v3, type metadata accessor for AudioUnitCache);
  v5 = sub_1A957C5A8();
  v2[77] = v5;
  v2[78] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A93CB2B0, v5, v4);
}

uint64_t sub_1A93CB2B0()
{
  v22 = v0;
  v1 = v0[76];
  memcpy(v21, v0 + 2, sizeof(v21));
  v2 = *(*v1 + 152);
  v3 = v2(v21);
  v5 = v4;
  v6 = (*(*v1 + 104))();
  if (*(v6 + 16))
  {
    v7 = sub_1A937A490(v3, v5);
    v9 = v8;

    if (v9)
    {
      v10 = v0[76];
      v11 = *(v6 + 56) + 16 * v7;
      v12 = *(v11 + 8);
      v13 = *v11;

      memcpy(v21, v0 + 2, sizeof(v21));
      v14 = v2(v21);
      v16 = v15;
      v17 = (*(*v10 + 120))(v0 + 72);
      sub_1A93CB6B8(0, 0, v14, v16);
      v17(v0 + 72, 0);
      sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
      sub_1A957C748();

      v18 = v0[1];

      return v18(v13);
    }
  }

  else
  {
  }

  memcpy(v0 + 37, v0 + 2, 0x118uLL);
  v20 = swift_task_alloc();
  v0[79] = v20;
  *v20 = v0;
  v20[1] = sub_1A93CB550;

  return CoreSynthesizer.Voice.fetchAudioUnit()();
}

uint64_t sub_1A93CB550(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 632);
  v6 = *v2;
  *(*v2 + 640) = v1;

  if (v1)
  {
    v7 = *(v4 + 624);
    v8 = *(v4 + 616);

    return MEMORY[0x1EEE6DFA0](sub_1A93CB6A0, v8, v7);
  }

  else
  {
    v9 = *(v6 + 8);

    return v9(a1);
  }
}

uint64_t sub_1A93CB6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v4;
    sub_1A93CED3C(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v23;
  }

  else
  {
    v13 = *v4;
    v14 = sub_1A937A490(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v24 = *v5;
      if (!v17)
      {
        sub_1A93CEEDC();
        v18 = v24;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(v18 + 56) + 16 * v14;
      v22 = *v20;
      v21 = *(v20 + 8);

      result = sub_1A93CEB8C(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_1A93CB7C4(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v2 = (*(*v1 + 152))(__dst);
  v4 = v3;
  v5 = (*(*v1 + 120))(__dst);
  sub_1A93CB6B8(0, 0, v2, v4);
  return v5(__dst, 0);
}

uint64_t sub_1A93CB894(void *a1, const void *a2)
{
  v5 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v25 - v8;
  memcpy(v28, a2, sizeof(v28));
  memcpy(v27, a2, sizeof(v27));
  v10 = (*(*v2 + 152))(v27);
  v12 = v11;
  v13 = sub_1A957C688();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  v15 = sub_1A93CFF90(&qword_1EB386D10, v14, type metadata accessor for AudioUnitCache);
  v16 = swift_allocObject();
  v16[2] = v2;
  v16[3] = v15;
  v16[4] = v2;
  memcpy(v16 + 5, v28, 0x118uLL);
  swift_retain_n();
  v17 = a1;
  sub_1A937B3DC(v28, v27);
  v18 = sub_1A93C4B70(0, 0, v9, &unk_1A9589310, v16);
  v19 = (*(*v2 + 120))(v27);
  v21 = v20;
  v22 = *v20;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v21;
  *v21 = 0x8000000000000000;
  sub_1A93CED3C(v17, v18, v10, v12, isUniquelyReferenced_nonNull_native);

  *v21 = v26;
  return v19(v27, 0);
}

uint64_t sub_1A93CBB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1A957D018();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  type metadata accessor for AudioUnitCache();
  sub_1A93CFF90(&qword_1EB386D10, v9, type metadata accessor for AudioUnitCache);
  v11 = sub_1A957C5A8();
  v5[7] = v11;
  v5[8] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1A93CBC14, v11, v10);
}

uint64_t sub_1A93CBC14()
{
  v1 = *(v0 + 48);
  sub_1A957D468();
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_1A93CBCE0;
  v3 = *(v0 + 48);

  return sub_1A93CC26C(0x43561A8829300000, 16, 0, 0, 1);
}

uint64_t sub_1A93CBCE0()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 80) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 64);
  v9 = *(v2 + 56);
  if (v0)
  {
    v10 = sub_1A93CBF20;
  }

  else
  {
    v10 = sub_1A93CBE78;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

uint64_t sub_1A93CBE78()
{
  v6 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  memcpy(v5, *(v0 + 24), sizeof(v5));
  (*(*v2 + 136))(v5);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A93CBF20()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_1A93CBF84(uint64_t a1)
{
  v2 = *(a1 + 160);
  v1 = *(a1 + 168);
  v3 = *(a1 + 176);
  return sub_1A94F70E8();
}

uint64_t sub_1A93CBF94()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1A93CC01C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v7 = a3();
  v9 = sub_1A93CFF90(a4, v8, a5);

  return TTSActor.unownedExecutor.getter(v7, v9);
}

_DWORD *sub_1A93CC09C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

BOOL sub_1A93CC0FC(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_1A93CC12C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_1A93CC158@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_1A93CC22C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_1A93D11E8(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1A93CC26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1A957D008();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1A93CC36C, 0, 0);
}

uint64_t sub_1A93CC36C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_1A957D018();
  v7 = sub_1A93CFF90(&qword_1EB385E98, 255, MEMORY[0x1E69E8820]);
  sub_1A957D448();
  sub_1A93CFF90(&qword_1EB385EA0, 255, MEMORY[0x1E69E87E8]);
  sub_1A957D028();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x1E69E8938] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1A93CC504;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x1EEE6DE58](v11, v0 + 2, v6, v7);
}

uint64_t sub_1A93CC504()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A93CC6C0, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_1A93CC6C0()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_1A93CC72C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1A93836DC;

  return v7();
}

uint64_t sub_1A93CC814(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1A9382328;

  return v8();
}

uint64_t sub_1A93CC8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = v26 - v12;
  sub_1A9391BAC(a3, v26 - v12, &qword_1EB388000, &qword_1A9587710);
  v14 = sub_1A957C688();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1A937B960(v13, &qword_1EB388000, &qword_1A9587710);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1A957C678();
  (*(v15 + 8))(v13, v14);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v16 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v17 = sub_1A957C5A8();
  v19 = v18;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v20 = sub_1A957C1C8() + 32;
    v21 = swift_allocObject();
    *(v21 + 16) = a4;
    *(v21 + 24) = a5;

    if (v19 | v17)
    {
      v27[0] = 0;
      v27[1] = 0;
      v22 = v27;
      v27[2] = v17;
      v27[3] = v19;
    }

    else
    {
      v22 = 0;
    }

    v26[1] = 7;
    v26[2] = v22;
    v26[3] = v20;
    v24 = swift_task_create();

    sub_1A937B960(a3, &qword_1EB388000, &qword_1A9587710);

    return v24;
  }

LABEL_8:
  sub_1A937B960(a3, &qword_1EB388000, &qword_1A9587710);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1A93CCBF8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A93CF138(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1A93CCE18(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1A93CCC64(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1A93CF14C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1A93CCF10(v6);
  return sub_1A957CF88();
}

void *sub_1A93CCCE0(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_1A957CE48();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1A93CCD90(v2, 0);

    v1 = sub_1A93CF160(&v5, v3 + 4, v2, v1);
    sub_1A932D088();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

void *sub_1A93CCD90(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A937829C(&qword_1EB386D48, &qword_1A95898C8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_1A93CCE18(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1A957D388();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1A957C518();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1A93CD258(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1A93CD024(0, v2, 1, a1);
  }

  return result;
}

void sub_1A93CCF10(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1A957D388();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1A9387478(0, &qword_1EB388030, 0x1E69584E0);
        v6 = sub_1A957C518();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1A93CD864(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1A93CD0CC(0, v2, 1, a1);
  }
}

uint64_t sub_1A93CD024(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + (a3 << 6));
    v6 = result - a3;
LABEL_5:
    v7 = v6;
    v8 = v5;
    while (1)
    {
      v9 = *(v8 + 1);
      v10 = v8 - 4;
      v11 = *(v8 - 7);
      if (*v8 == 1 && *v10 == 1)
      {
        v9 = *(v8 + 2);
        v11 = *(v8 - 6);
      }

      if (v9 >= v11)
      {
LABEL_4:
        ++a3;
        v5 += 4;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v13 = v8[2];
      v12 = v8[3];
      v15 = *v8;
      v14 = v8[1];
      v16 = *(v8 - 3);
      *v8 = *v10;
      v8[1] = v16;
      v17 = *(v8 - 1);
      v8[2] = *(v8 - 2);
      v8[3] = v17;
      *v10 = v15;
      *(v8 - 3) = v14;
      v8 -= 4;
      v10[2] = v13;
      v10[3] = v12;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1A93CD0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
LABEL_5:
    v21 = a3;
    v7 = *(v4 + 8 * a3);
    v19 = v6;
    v20 = v5;
    while (1)
    {
      v8 = *v5;
      v9 = v7;
      v10 = v8;
      v11 = [v9 byteSampleOffset];
      if (v11 != [v10 byteSampleOffset])
      {
        break;
      }

      v12 = [v9 mark];
      if (v12 == [v10 mark] && objc_msgSend(v9, sel_mark) == 1)
      {
        v13 = [v9 textRange];
        v14 = [v10 textRange];
LABEL_11:
        v15 = v14;

        if (v13 >= v15)
        {
          goto LABEL_4;
        }

        if (!v4)
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }

      if (!v4)
      {
LABEL_18:
        __break(1u);
        return;
      }

LABEL_15:
      v16 = *v5;
      v7 = *(v5 + 8);
      *v5 = v7;
      *(v5 + 8) = v16;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
LABEL_4:
        a3 = v21 + 1;
        v5 = v20 + 8;
        v6 = v19 - 1;
        if (v21 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    v13 = [v9 byteSampleOffset];
    v14 = [v10 byteSampleOffset];
    goto LABEL_11;
  }
}

uint64_t sub_1A93CD258(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v106 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_107:
    v5 = *v106;
    if (!*v106)
    {
      goto LABEL_145;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_139:
      result = sub_1A938911C(v11);
      v11 = result;
    }

    v101 = *(v11 + 2);
    if (v101 >= 2)
    {
      while (*a3)
      {
        v102 = *&v11[16 * v101];
        v103 = *&v11[16 * v101 + 24];
        sub_1A93CE0E0((*a3 + (v102 << 6)), (*a3 + (*&v11[16 * v101 + 16] << 6)), (*a3 + (v103 << 6)), v5);
        if (v6)
        {
        }

        if (v103 < v102)
        {
          goto LABEL_132;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1A938911C(v11);
        }

        if (v101 - 2 >= *(v11 + 2))
        {
          goto LABEL_133;
        }

        v104 = &v11[16 * v101];
        *v104 = v102;
        *(v104 + 1) = v103;
        result = sub_1A93CE710(v101 - 1);
        v101 = *(v11 + 2);
        if (v101 <= 1)
        {
        }
      }

      goto LABEL_143;
    }
  }

  v9 = a4;
  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v12 = v10++;
    if (v10 < v8)
    {
      v13 = (*a3 + (v10 << 6));
      v15 = *v13;
      v14 = v13[1];
      v16 = v13[2];
      v17 = (*a3 + (v12 << 6));
      if (v15 == 1 && *v17 == 1)
      {
        v18 = v16 < v17[2];
      }

      else
      {
        v18 = v14 < v17[1];
      }

      v19 = v18;
      if (v8 <= v12 + 2)
      {
        v20 = v12 + 2;
      }

      else
      {
        v20 = v8;
      }

      v21 = v20 - v12 - 2;
      v22 = v12 << 6;
      v23 = (*a3 + (v12 << 6) + 144);
      while (v21)
      {
        v26 = *(v23 - 1);
        v27 = *v23;
        if (*(v23 - 2) == 1 && *(v23 - 10) == 1)
        {
          v24 = v27 < v16;
        }

        else
        {
          v24 = v26 < v14;
        }

        v25 = v24;
        --v21;
        v23 += 8;
        ++v10;
        v16 = v27;
        v14 = v26;
        if (v19 != v25)
        {
          goto LABEL_26;
        }
      }

      v10 = v20;
LABEL_26:
      if (v19)
      {
        if (v10 < v12)
        {
          goto LABEL_136;
        }

        if (v12 < v10)
        {
          v28 = (v10 << 6) - 64;
          v29 = v10;
          v30 = v12;
          do
          {
            if (v30 != --v29)
            {
              v40 = *a3;
              if (!*a3)
              {
                goto LABEL_142;
              }

              v31 = (v40 + v22);
              v32 = (v40 + v28);
              v34 = v31[2];
              v33 = v31[3];
              v36 = *v31;
              v35 = v31[1];
              v37 = v32[3];
              v39 = *v32;
              v38 = v32[1];
              v31[2] = v32[2];
              v31[3] = v37;
              *v31 = v39;
              v31[1] = v38;
              *v32 = v36;
              v32[1] = v35;
              v32[2] = v34;
              v32[3] = v33;
            }

            ++v30;
            v28 -= 64;
            v22 += 64;
          }

          while (v30 < v29);
          v8 = a3[1];
        }
      }
    }

    if (v10 < v8)
    {
      if (__OFSUB__(v10, v12))
      {
        goto LABEL_135;
      }

      if (v10 - v12 < v9)
      {
        if (__OFADD__(v12, v9))
        {
          goto LABEL_137;
        }

        if (v12 + v9 < v8)
        {
          v8 = v12 + v9;
        }

        if (v8 < v12)
        {
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (v10 != v8)
        {
          break;
        }
      }
    }

LABEL_56:
    if (v10 < v12)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A9389130(0, *(v11 + 2) + 1, 1, v11);
      v11 = result;
    }

    v5 = *(v11 + 2);
    v56 = *(v11 + 3);
    v57 = v5 + 1;
    if (v5 >= v56 >> 1)
    {
      result = sub_1A9389130((v56 > 1), v5 + 1, 1, v11);
      v11 = result;
    }

    *(v11 + 2) = v57;
    v58 = &v11[16 * v5];
    *(v58 + 4) = v12;
    *(v58 + 5) = v10;
    v59 = *v106;
    if (!*v106)
    {
      goto LABEL_144;
    }

    if (v5)
    {
      while (1)
      {
        v60 = v57 - 1;
        if (v57 >= 4)
        {
          break;
        }

        if (v57 == 3)
        {
          v61 = *(v11 + 4);
          v62 = *(v11 + 5);
          v71 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          v64 = v71;
LABEL_76:
          if (v64)
          {
            goto LABEL_123;
          }

          v77 = &v11[16 * v57];
          v79 = *v77;
          v78 = *(v77 + 1);
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_126;
          }

          v83 = &v11[16 * v60 + 32];
          v85 = *v83;
          v84 = *(v83 + 1);
          v71 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v71)
          {
            goto LABEL_129;
          }

          if (__OFADD__(v81, v86))
          {
            goto LABEL_130;
          }

          if (v81 + v86 >= v63)
          {
            if (v63 < v86)
            {
              v60 = v57 - 2;
            }

            goto LABEL_97;
          }

          goto LABEL_90;
        }

        v87 = &v11[16 * v57];
        v89 = *v87;
        v88 = *(v87 + 1);
        v71 = __OFSUB__(v88, v89);
        v81 = v88 - v89;
        v82 = v71;
LABEL_90:
        if (v82)
        {
          goto LABEL_125;
        }

        v90 = &v11[16 * v60];
        v92 = *(v90 + 4);
        v91 = *(v90 + 5);
        v71 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v71)
        {
          goto LABEL_128;
        }

        if (v93 < v81)
        {
          goto LABEL_3;
        }

LABEL_97:
        v98 = v60 - 1;
        if (v60 - 1 >= v57)
        {
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*a3)
        {
          goto LABEL_141;
        }

        v99 = *&v11[16 * v98 + 32];
        v5 = *&v11[16 * v60 + 40];
        sub_1A93CE0E0((*a3 + (v99 << 6)), (*a3 + (*&v11[16 * v60 + 32] << 6)), (*a3 + (v5 << 6)), v59);
        if (v6)
        {
        }

        if (v5 < v99)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1A938911C(v11);
        }

        if (v98 >= *(v11 + 2))
        {
          goto LABEL_120;
        }

        v100 = &v11[16 * v98];
        *(v100 + 4) = v99;
        *(v100 + 5) = v5;
        result = sub_1A93CE710(v60);
        v57 = *(v11 + 2);
        if (v57 <= 1)
        {
          goto LABEL_3;
        }
      }

      v65 = &v11[16 * v57 + 32];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_121;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_122;
      }

      v72 = &v11[16 * v57];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_124;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_127;
      }

      if (v76 >= v68)
      {
        v94 = &v11[16 * v60 + 32];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_131;
        }

        if (v63 < v97)
        {
          v60 = v57 - 2;
        }

        goto LABEL_97;
      }

      goto LABEL_76;
    }

LABEL_3:
    v8 = a3[1];
    v9 = a4;
    if (v10 >= v8)
    {
      goto LABEL_107;
    }
  }

  v41 = *a3;
  v42 = *a3 + (v10 << 6);
  v43 = v12 - v10;
LABEL_46:
  v44 = v43;
  v45 = v42;
  while (1)
  {
    v46 = *(v45 + 1);
    v47 = v45 - 4;
    v48 = *(v45 - 7);
    if (*v45 == 1 && *v47 == 1)
    {
      v46 = *(v45 + 2);
      v48 = *(v45 - 6);
    }

    if (v46 >= v48)
    {
LABEL_45:
      ++v10;
      v42 += 64;
      --v43;
      if (v10 != v8)
      {
        goto LABEL_46;
      }

      v10 = v8;
      goto LABEL_56;
    }

    if (!v41)
    {
      break;
    }

    v50 = v45[2];
    v49 = v45[3];
    v52 = *v45;
    v51 = v45[1];
    v53 = *(v45 - 3);
    *v45 = *v47;
    v45[1] = v53;
    v54 = *(v45 - 1);
    v45[2] = *(v45 - 2);
    v45[3] = v54;
    *v47 = v52;
    *(v45 - 3) = v51;
    v45 -= 4;
    v47[2] = v50;
    v47[3] = v49;
    if (__CFADD__(v44++, 1))
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
  return result;
}

void sub_1A93CD864(void ***a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v7 = v5;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_118:
    v6 = a3;
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_158;
    }

    v4 = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_152;
    }

    v97 = v4;
LABEL_121:
    v98 = v7;
    v4 = *(v97 + 2);
    if (v4 >= 2)
    {
      while (*v6)
      {
        v7 = v4 - 1;
        v99 = *&v97[16 * v4];
        v100 = v97;
        v101 = *&v97[16 * v4 + 24];
        sub_1A93CE334((*v6 + 8 * v99), (*v6 + 8 * *&v97[16 * v4 + 16]), (*v6 + 8 * v101), v9);
        if (v98)
        {
          goto LABEL_129;
        }

        if (v101 < v99)
        {
          goto LABEL_145;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = sub_1A938911C(v100);
        }

        if (v4 - 2 >= *(v100 + 2))
        {
          goto LABEL_146;
        }

        v102 = &v100[16 * v4];
        *v102 = v99;
        *(v102 + 1) = v101;
        sub_1A93CE710(v4 - 1);
        v97 = v100;
        v4 = *(v100 + 2);
        if (v4 <= 1)
        {
          goto LABEL_129;
        }
      }

      goto LABEL_156;
    }

LABEL_129:

    return;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v11 = &selRef_taskRequestForIdentifier_;
  while (2)
  {
    v12 = v9;
    v9 = (v9 + 1);
    if (v9 >= v8)
    {
      goto LABEL_39;
    }

    v105 = v10;
    v107 = v12;
    v4 = *a3;
    v13 = *(*a3 + 8 * v12);
    v6 = *(*a3 + 8 * v9);
    v14 = v13;
    v15 = [v6 v11[226]];
    if (v15 == [v14 v11[226]])
    {
      v16 = [v6 mark];
      if (v16 != [v14 mark] || objc_msgSend(v6, sel_mark) != 1)
      {
        v111 = 1;
        if (v7)
        {
LABEL_130:

          return;
        }

        goto LABEL_13;
      }

      v17 = [v6 textRange];
      v18 = [v14 textRange];
    }

    else
    {
      v17 = [v6 v11[226]];
      v18 = [v14 v11[226]];
    }

    v111 = v17 < v18;
    if (v7)
    {
      goto LABEL_130;
    }

LABEL_13:

    v12 = v107;
    v9 = (v107 + 2);
    if (v107 + 2 >= v8)
    {
      v10 = v105;
      if (v111)
      {
        goto LABEL_31;
      }

      goto LABEL_39;
    }

    v4 += 8 * v107 + 16;
    do
    {
      v19 = *(v4 - 8);
      v6 = *v4;
      v20 = v19;
      v21 = [v6 v11[226]];
      if (v21 != [v20 v11[226]])
      {
        v23 = [v6 v11[226]];
        v24 = [v20 v11[226]];
LABEL_22:
        v25 = v24;

        v26 = v23 < v25;
        v11 = &selRef_taskRequestForIdentifier_;
        v27 = !v26;
        if (((v111 ^ v27) & 1) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_16;
      }

      v22 = [v6 mark];
      if (v22 == [v20 mark] && objc_msgSend(v6, sel_mark) == 1)
      {
        v23 = [v6 textRange];
        v24 = [v20 textRange];
        goto LABEL_22;
      }

      if (!v111)
      {
        v10 = v105;
        v12 = v107;
        goto LABEL_39;
      }

LABEL_16:
      v4 += 8;
      v9 = (v9 + 1);
    }

    while (v8 != v9);
    v9 = v8;
LABEL_30:
    v10 = v105;
    v12 = v107;
    if (v111)
    {
LABEL_31:
      if (v9 >= v12)
      {
        v28 = v9;
        if (v12 < v9)
        {
          v29 = 8 * v9 - 8;
          v30 = 8 * v12;
          v31 = v12;
          do
          {
            v28 = (v28 - 1);
            if (v31 != v28)
            {
              v32 = *a3;
              if (!*a3)
              {
                goto LABEL_155;
              }

              v33 = *(v32 + v30);
              *(v32 + v30) = *(v32 + v29);
              *(v32 + v29) = v33;
            }

            v31 = (v31 + 1);
            v29 -= 8;
            v30 += 8;
          }

          while (v31 < v28);
        }

        goto LABEL_39;
      }

LABEL_151:
      __break(1u);
LABEL_152:
      v97 = sub_1A938911C(v4);
      goto LABEL_121;
    }

LABEL_39:
    v34 = a3[1];
    if (v9 >= v34)
    {
      goto LABEL_65;
    }

    if (__OFSUB__(v9, v12))
    {
      goto LABEL_148;
    }

    if (v9 - v12 >= a4)
    {
LABEL_65:
      if (v9 < v12)
      {
        goto LABEL_147;
      }

      v51 = v10;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v10 = v51;
      }

      else
      {
        v10 = sub_1A9389130(0, *(v51 + 2) + 1, 1, v51);
      }

      v4 = *(v10 + 2);
      v52 = *(v10 + 3);
      v53 = v4 + 1;
      if (v4 >= v52 >> 1)
      {
        v10 = sub_1A9389130((v52 > 1), v4 + 1, 1, v10);
      }

      *(v10 + 2) = v53;
      v54 = &v10[16 * v4];
      *(v54 + 4) = v12;
      *(v54 + 5) = v9;
      v55 = *a1;
      if (!*a1)
      {
        goto LABEL_157;
      }

      if (!v4)
      {
LABEL_3:
        v8 = a3[1];
        if (v9 >= v8)
        {
          goto LABEL_118;
        }

        continue;
      }

      while (1)
      {
        v6 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v56 = *(v10 + 4);
          v57 = *(v10 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_85:
          if (v59)
          {
            goto LABEL_136;
          }

          v72 = &v10[16 * v53];
          v74 = *v72;
          v73 = *(v72 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_139;
          }

          v78 = &v10[16 * v6 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_142;
          }

          if (__OFADD__(v76, v81))
          {
            goto LABEL_143;
          }

          if (v76 + v81 >= v58)
          {
            if (v58 < v81)
            {
              v6 = v53 - 2;
            }

            goto LABEL_106;
          }

          goto LABEL_99;
        }

        v82 = &v10[16 * v53];
        v84 = *v82;
        v83 = *(v82 + 1);
        v66 = __OFSUB__(v83, v84);
        v76 = v83 - v84;
        v77 = v66;
LABEL_99:
        if (v77)
        {
          goto LABEL_138;
        }

        v85 = &v10[16 * v6];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        v66 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v66)
        {
          goto LABEL_141;
        }

        if (v88 < v76)
        {
          goto LABEL_3;
        }

LABEL_106:
        v4 = v6 - 1;
        if (v6 - 1 >= v53)
        {
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
          goto LABEL_150;
        }

        if (!*a3)
        {
          goto LABEL_154;
        }

        v93 = v10;
        v94 = *&v10[16 * v4 + 32];
        v95 = *&v10[16 * v6 + 40];
        sub_1A93CE334((*a3 + 8 * v94), (*a3 + 8 * *&v10[16 * v6 + 32]), (*a3 + 8 * v95), v55);
        if (v7)
        {
          goto LABEL_129;
        }

        if (v95 < v94)
        {
          goto LABEL_132;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_1A938911C(v93);
        }

        if (v4 >= *(v93 + 2))
        {
          goto LABEL_133;
        }

        v96 = &v93[16 * v4];
        *(v96 + 4) = v94;
        *(v96 + 5) = v95;
        sub_1A93CE710(v6);
        v10 = v93;
        v53 = *(v93 + 2);
        if (v53 <= 1)
        {
          goto LABEL_3;
        }
      }

      v60 = &v10[16 * v53 + 32];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_134;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_135;
      }

      v67 = &v10[16 * v53];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_137;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_140;
      }

      if (v71 >= v63)
      {
        v89 = &v10[16 * v6 + 32];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_144;
        }

        if (v58 < v92)
        {
          v6 = v53 - 2;
        }

        goto LABEL_106;
      }

      goto LABEL_85;
    }

    break;
  }

  if (__OFADD__(v12, a4))
  {
    goto LABEL_149;
  }

  if (v12 + a4 >= v34)
  {
    v35 = a3[1];
  }

  else
  {
    v35 = (v12 + a4);
  }

  if (v35 < v12)
  {
LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

  if (v9 == v35)
  {
    goto LABEL_65;
  }

  v106 = v10;
  v108 = v12;
  v103 = v7;
  v4 = *a3;
  v36 = *a3 + 8 * v9 - 8;
  v37 = v12 - v9;
  v38 = v9;
  v110 = v35;
  while (2)
  {
    v112 = v38;
    v39 = *(v4 + 8 * v38);
    v40 = v37;
    v41 = v36;
LABEL_52:
    v42 = *v41;
    v6 = v39;
    v43 = v42;
    v44 = [v6 v11[226]];
    if (v44 != [v43 v11[226]])
    {
      v46 = [v6 v11[226]];
      v47 = [v43 v11[226]];
LABEL_57:
      v48 = v47;

      if (v46 >= v48)
      {
        v11 = &selRef_taskRequestForIdentifier_;
LABEL_50:
        v38 = (v112 + 1);
        v36 += 8;
        --v37;
        if ((v112 + 1) == v110)
        {
          v9 = v110;
          v7 = v103;
          v10 = v106;
          v12 = v108;
          goto LABEL_65;
        }

        continue;
      }

      if (!v4)
      {
        goto LABEL_153;
      }

      goto LABEL_61;
    }

    break;
  }

  v45 = [v6 mark];
  if (v45 == [v43 mark] && objc_msgSend(v6, sel_mark) == 1)
  {
    v46 = [v6 textRange];
    v47 = [v43 textRange];
    goto LABEL_57;
  }

  if (v4)
  {
LABEL_61:
    v49 = *v41;
    v39 = *(v41 + 8);
    *v41 = v39;
    *(v41 + 8) = v49;
    v41 -= 8;
    v50 = __CFADD__(v40++, 1);
    v11 = &selRef_taskRequestForIdentifier_;
    if (v50)
    {
      goto LABEL_50;
    }

    goto LABEL_52;
  }

LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
}

uint64_t sub_1A93CE0E0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 63;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 6;
  v11 = a3 - __src;
  v12 = a3 - __src + 63;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 6;
  if (v10 < v12 >> 6)
  {
    if (a4 != __dst || &__dst[64 * v10] <= a4)
    {
      memmove(a4, __dst, v10 << 6);
    }

    v14 = &v4[64 * v10];
    if (v8 < 64)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_41;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v20 = *(v6 + 1);
      v21 = *(v4 + 1);
      if (*v6 == 1 && *v4 == 1)
      {
        v20 = *(v6 + 2);
        v21 = *(v4 + 2);
      }

      if (v20 < v21)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 64;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 64;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 64;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *v15;
    v18 = *(v15 + 1);
    v19 = *(v15 + 3);
    *(v7 + 2) = *(v15 + 2);
    *(v7 + 3) = v19;
    *v7 = v17;
    *(v7 + 1) = v18;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[64 * v13] <= a4)
  {
    memmove(a4, __src, v13 << 6);
  }

  v14 = &v4[64 * v13];
  if (v11 >= 64 && v6 > v7)
  {
LABEL_27:
    v22 = v6 - 64;
    v23 = v5;
    v24 = v14;
    do
    {
      v26 = *(v24 - 64);
      v25 = *(v24 - 56);
      v24 -= 64;
      v27 = *(v6 - 7);
      if (v26 == 1 && *v22 == 1)
      {
        v25 = *(v24 + 16);
        v27 = *(v6 - 6);
      }

      v5 = v23 - 64;
      if (v25 < v27)
      {
        if (v23 != v6)
        {
          v31 = *v22;
          v32 = *(v6 - 3);
          v33 = *(v6 - 1);
          *(v23 - 2) = *(v6 - 2);
          *(v23 - 1) = v33;
          *v5 = v31;
          *(v23 - 3) = v32;
        }

        if (v14 <= v4 || (v6 -= 64, v22 <= v7))
        {
          v6 = v22;
          goto LABEL_41;
        }

        goto LABEL_27;
      }

      if (v14 != v23)
      {
        v28 = *v24;
        v29 = *(v24 + 16);
        v30 = *(v24 + 48);
        *(v23 - 2) = *(v24 + 32);
        *(v23 - 1) = v30;
        *v5 = v28;
        *(v23 - 3) = v29;
      }

      v14 = v24;
      v23 -= 64;
    }

    while (v24 > v4);
    v14 = v24;
  }

LABEL_41:
  v34 = v14 - v4 + (v14 - v4 < 0 ? 0x3FuLL : 0);
  if (v6 != v4 || v6 >= &v4[v34 & 0xFFFFFFFFFFFFFFC0])
  {
    memmove(v6, v4, v34 >> 6 << 6);
  }

  return 1;
}

uint64_t sub_1A93CE334(void **__dst, id *__src, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_50;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v4;
      v17 = *v6;
      v18 = v16;
      v19 = [v17 byteSampleOffset];
      if (v19 == [v18 byteSampleOffset])
      {
        v20 = [v17 mark];
        if (v20 != [v18 mark] || objc_msgSend(v17, sel_mark) != 1)
        {

LABEL_24:
          v15 = v6;
          if (v7 == v6++)
          {
            goto LABEL_13;
          }

LABEL_12:
          *v7 = *v15;
          goto LABEL_13;
        }

        v21 = [v17 textRange];
        v22 = [v18 textRange];
      }

      else
      {
        v21 = [v17 byteSampleOffset];
        v22 = [v18 byteSampleOffset];
      }

      v23 = v4;
      v24 = v22;

      v25 = v21 < v24;
      v4 = v23;
      if (v25)
      {
        goto LABEL_24;
      }

      v15 = v23;
      v4 = v23 + 1;
      if (v7 != v23)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
    v39 = v4;
LABEL_33:
    v27 = v6 - 1;
    --v5;
    v28 = v14;
    v41 = v6;
    v40 = v6 - 1;
    do
    {
      v29 = *--v28;
      v30 = *v27;
      v31 = v29;
      v32 = v30;
      v33 = [v31 byteSampleOffset];
      if (v33 == [v32 byteSampleOffset])
      {
        v34 = [v31 mark];
        if (v34 != [v32 mark] || objc_msgSend(v31, sel_mark) != 1)
        {

LABEL_44:
          if (v5 + 1 != v41)
          {
            *v5 = *v40;
          }

          if (v14 <= v4 || (v6 = v40, v40 <= v7))
          {
            v6 = v40;
            goto LABEL_50;
          }

          goto LABEL_33;
        }

        v35 = [v31 textRange];
        v36 = [v32 textRange];
      }

      else
      {
        v35 = [v31 byteSampleOffset];
        v36 = [v32 byteSampleOffset];
      }

      v37 = v36;

      v25 = v35 < v37;
      v4 = v39;
      if (v25)
      {
        goto LABEL_44;
      }

      v6 = v41;
      if (v5 + 1 != v14)
      {
        *v5 = *v28;
      }

      --v5;
      v14 = v28;
      v27 = v40;
    }

    while (v28 > v39);
    v14 = v28;
  }

LABEL_50:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_1A93CE710(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A938911C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_1A93CE79C(char *a1, int64_t a2, char a3)
{
  result = sub_1A93CE7BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A93CE7BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB386D88, &qword_1A95898F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A93CE8C8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1A937829C(&qword_1EB386DB8, &qword_1A9589948);
  v37 = a2;
  result = sub_1A957D118();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v38 = *(*(v5 + 56) + v22);
      if ((v37 & 1) == 0)
      {

        v26 = v38;
      }

      v27 = *(v8 + 40);
      sub_1A957D4F8();
      sub_1A957C228();
      result = sub_1A957D548();
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
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v38;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_1A93CEB8C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A957CE28() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1A957D4F8();

      sub_1A957C228();
      v13 = sub_1A957D548();

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
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
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

void sub_1A93CED3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1A937A490(a3, a4);
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
      sub_1A93CE8C8(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_1A937A490(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        sub_1A957D438();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_1A93CEEDC();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = v24[7] + 16 * v13;
    v26 = *(v25 + 8);
    v31 = *v25;
    *v25 = a1;
    *(v25 + 8) = a2;

    return;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v27 = (v24[6] + 16 * v13);
  *v27 = a3;
  v27[1] = a4;
  v28 = (v24[7] + 16 * v13);
  *v28 = a1;
  v28[1] = a2;
  v29 = v24[2];
  v17 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v30;
}

void *sub_1A93CEEDC()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB386DB8, &qword_1A9589948);
  v2 = *v0;
  v3 = sub_1A957D108();
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
        v23 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v23;

        v22 = v23;
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

uint64_t sub_1A93CF068(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1AC5863C0](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v8 = v5[1];
      v9 = v5[2];
      v10 = v5[3];
      v11 = v5[4];
      v12 = v5[5];
      MEMORY[0x1AC5863C0](*(v5 - 2));
      MEMORY[0x1AC5863C0](v6);
      MEMORY[0x1AC5863C0](v7);
      MEMORY[0x1AC5863C0](v8);

      sub_1A957C228();
      sub_1A957C228();

      v5 += 8;
      --v3;
    }

    while (v3);
  }

  return result;
}

id sub_1A93CF160(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_1A957CE38();
  sub_1A9387478(0, &qword_1EB388030, 0x1E69584E0);
  sub_1A93D0BE8();
  result = sub_1A957C8F8();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_1A957CE58())
      {
        goto LABEL_30;
      }

      sub_1A9387478(0, &qword_1EB388030, 0x1E69584E0);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

unint64_t sub_1A93CF37C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&qword_1EB386DB8, &qword_1A9589948);
    v3 = sub_1A957D128();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v14 = *i;

      v7 = v14;

      result = sub_1A937A490(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 16 * result) = v14;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1A93CF4C8(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_1A93CF4D4()
{
  v2 = v0[4];
  v3 = v0[44];
  v4 = v0[45];
  v5 = v0[46];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A9382328;

  return sub_1A93C447C(v6, v7, v8, v2, (v0 + 5), v3, v4, v5);
}

uint64_t sub_1A93CF5C8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1A93CF5D8@<X0>(void *a1@<X8>)
{
  result = (*(*v1 + 392))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A93D1010;
  }

  else
  {
    v7 = 0;
  }

  *a1 = v7;
  a1[1] = result;
  return result;
}

double sub_1A93CF674@<D0>(_OWORD *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4(&v7);
  if (!v2)
  {
    result = *&v7;
    *a1 = v7;
  }

  return result;
}

uint64_t sub_1A93CF6B8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a2;
  v7 = a1;
  return v3(&v7, &v6);
}

uint64_t sub_1A93CF70C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(*v1 + 400);
  sub_1A932D0E4(v2);
  return v4(v2, v3);
}

uint64_t type metadata accessor for TTSAURenderer.SpeechBuffer()
{
  result = qword_1EB393A40;
  if (!qword_1EB393A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s12TextToSpeech13TTSAURendererC0C6BufferV6MarkerV2eeoiySbAG_AGtFZ_0(int64x2_t *a1, int64x2_t *a2)
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*a1, *a2), vceqq_s64(a1[1], a2[1])))) & 1) == 0)
  {
    return 0;
  }

  v3 = a1[3].i64[0];
  v4 = a1[3].i64[1];
  v5 = a2[3].i64[0];
  v6 = a2[3].i64[1];
  if ((a1[2].i64[0] != a2[2].i64[0] || a1[2].i64[1] != a2[2].i64[1]) && (sub_1A957D3E8() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v5 && v4 == v6)
  {
    return 1;
  }

  return sub_1A957D3E8();
}

uint64_t _s12TextToSpeech13TTSAURendererC0C6BufferV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1A957B098() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TTSAURenderer.SpeechBuffer();
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = v4;
  sub_1A9387478(0, &qword_1ED96FDA0, 0x1E69E58C0);
  v6 = *(v5 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if ((sub_1A957CC18() & 1) == 0)
  {
    return 0;
  }

  v9 = *(v5 + 28);
  v10 = *(a1 + v9);
  v11 = *(a2 + v9);

  return sub_1A93CA890(v10, v11);
}

char *sub_1A93CF95C(uint64_t a1)
{
  v1 = (*(*a1 + 160))(0, 0);
  v2 = sub_1A93CCCE0(v1);

  if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_14:

    v7 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v30 = v7;

    sub_1A93CCBF8(&v30);

    return v30;
  }

  v3 = sub_1A957CE48();
  if (!v3)
  {
    goto LABEL_14;
  }

LABEL_4:
  v4 = v2;
  v30 = MEMORY[0x1E69E7CC0];
  sub_1A93CE79C(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v2;
    v25 = v2 & 0xC000000000000001;
    v26 = v3;
    v7 = v30;
    v27 = v4;
    do
    {
      if (v25)
      {
        v8 = MEMORY[0x1AC585DE0](v5, v6);
      }

      else
      {
        v8 = *(v6 + 8 * v5 + 32);
      }

      v9 = v8;
      v29 = [v8 mark];
      v28 = [v9 byteSampleOffset];
      v10 = [v9 textRange];
      v12 = v11;
      v13 = [v9 bookmarkName];
      v14 = sub_1A957C0F8();
      v16 = v15;

      v17 = [v9 phoneme];
      v18 = sub_1A957C0F8();
      v20 = v19;

      v30 = v7;
      v22 = *(v7 + 2);
      v21 = *(v7 + 3);
      if (v22 >= v21 >> 1)
      {
        sub_1A93CE79C((v21 > 1), v22 + 1, 1);
        v7 = v30;
      }

      ++v5;
      *(v7 + 2) = v22 + 1;
      v23 = &v7[64 * v22];
      *(v23 + 4) = v29;
      *(v23 + 5) = v28;
      *(v23 + 6) = v10;
      *(v23 + 7) = v12;
      *(v23 + 8) = v14;
      *(v23 + 9) = v16;
      *(v23 + 10) = v18;
      *(v23 + 11) = v20;
      v6 = v27;
    }

    while (v26 != v5);

    goto LABEL_15;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1A93CFBE0()
{
  v1 = v0 + 16;
  v2 = *(v0 + 152);
  v3 = objc_opt_self();
  [v2 auComponentDesc];
  *(v0 + 56) = v0 + 144;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1A93CFD40;
  v4 = swift_continuation_init();
  v5 = sub_1A937829C(&qword_1EB386DC0, &unk_1A9589950);
  *(v0 + 168) = v8;
  v6 = v0 + 168;
  *(v6 - 32) = v5;
  *(v6 - 88) = MEMORY[0x1E69E9820];
  *(v6 - 80) = 1107296256;
  *(v6 - 72) = sub_1A93BA9AC;
  *(v6 - 64) = &unk_1F1CF3F40;
  *(v6 - 56) = v4;
  *(v6 + 16) = v9;
  [v3 instantiateWithComponentDescription:v6 options:1 completionHandler:?];

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1A93CFD40()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_1A93CFF18;
  }

  else
  {
    v3 = sub_1A93CFE50;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A93CFE50()
{
  v1 = *(v0 + 144);
  v2 = [v1 outputBusses];
  v3 = [v2 objectAtIndexedSubscript_];

  v4 = [v3 format];
  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_1A93CFF18()
{
  v1 = *(v0 + 160);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_1A93CFF90(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A93CFFD8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A93CBB00(v3, v4, v5, v2, v0 + 40);
}

uint64_t sub_1A93D0070(uint64_t a1, uint64_t a2)
{
  result = sub_1A93CFF90(&qword_1EB386D00, a2, type metadata accessor for TTSAURenderer);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A93D00CC()
{
  result = qword_1EB386D18;
  if (!qword_1EB386D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386D18);
  }

  return result;
}

uint64_t sub_1A93D016C(uint64_t a1, uint64_t a2)
{
  result = sub_1A93CFF90(&qword_1EB386D10, a2, type metadata accessor for AudioUnitCache);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A93D0298(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A93D02B0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A93D0308(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void *sub_1A93D0358(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_1A93D03B0()
{
  sub_1A957B0B8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TTSAudioBuffer();
    if (v1 <= 0x3F)
    {
      sub_1A93D1068(319, &qword_1EB386D28, &type metadata for TTSAURenderer.SpeechBuffer.Marker, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A93D0478(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A93D04C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A93D0528(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 312))
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

uint64_t sub_1A93D0570(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 312) = 1;
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

    *(result + 312) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A93D0610(uint64_t a1, int a2)
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

uint64_t sub_1A93D0630(uint64_t result, int a2, int a3)
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

unint64_t sub_1A93D06F4()
{
  result = qword_1EB386D68;
  if (!qword_1EB386D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386D68);
  }

  return result;
}

uint64_t sub_1A93D0748(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = (*(*result + 416))();

    if (v5)
    {
      v5(a1, a2);
      return sub_1A93CF5C8(v5);
    }
  }

  return result;
}

uint64_t sub_1A93D0808(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A93D0820()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v14 = 64;
  v5 = [v1 renderBlock];
  v6 = (*(v5 + 2))(v5, &v14, &v13, v2, 0, [v4 mutableAudioBufferList], 0);
  _Block_release(v5);
  if (v6 != sub_1A957BE28() || (v14 & 0x100) != 0)
  {
    sub_1A93D06F4();
    v10 = swift_allocError();
    *v11 = 2;
    sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
    swift_allocError();
    *v12 = v10;
    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    [v4 setFrameLength_];
    v7 = *(*(v3 + 64) + 40);
    *v7 = v14;
    *(v7 + 8) = v4;
    v8 = v4;
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1A93D0990(uint64_t a1, id a2)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = [a2 jobIdentifier];
  v7 = sub_1A957C0F8();
  v9 = v8;

  v10 = [v5 jobIdentifier];
  v11 = sub_1A957C0F8();
  v13 = v12;

  if (v7 == v11 && v9 == v13)
  {

    goto LABEL_8;
  }

  v15 = sub_1A957D3E8();

  if (v15)
  {
LABEL_8:
    v18[3] = sub_1A937829C(&qword_1EB386D98, &qword_1A95898F8);
    v18[4] = sub_1A93B744C(&qword_1EB386DA0, &qword_1EB386D98, &qword_1A95898F8);
    v18[0] = a1;
    v17 = *(*v4 + 144);

    v17(v18);
    return sub_1A9378138(v18);
  }

  return result;
}

uint64_t sub_1A93D0B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = [*(v5 + 16) mutableAudioBufferList];
  v8 = v7[2];
  *a5 = *v7;
  *(a5 + 16) = v8;

  return sub_1A957BE28();
}

uint64_t sub_1A93D0B8C(uint64_t a1)
{
  v2 = type metadata accessor for TTSAURenderer.SpeechBuffer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A93D0BE8()
{
  result = qword_1EB386D90;
  if (!qword_1EB386D90)
  {
    sub_1A9387478(255, &qword_1EB388030, 0x1E69584E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386D90);
  }

  return result;
}

uint64_t sub_1A93D0C50(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 24));

  return MEMORY[0x1EEE6BDD0](v2, a2, 7);
}

uint64_t sub_1A93D0CAC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A9382328;

  return sub_1A93C9FBC(v2, v3);
}

uint64_t sub_1A93D0D60()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A93836DC;

  return sub_1A93CC72C(v2, v3, v5);
}

uint64_t sub_1A93D0E20()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A93D0E60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A93836DC;

  return sub_1A93CC814(a1, v4, v5, v7);
}

uint64_t sub_1A93D0F2C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93836DC;

  return sub_1A938F98C(a1, v5);
}

uint64_t sub_1A93D1010(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

void sub_1A93D1068(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A93D11E8(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1A93D1250@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1A937829C(&qword_1EB386DF0, &qword_1A9589B20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A9589B10;
  *(inited + 32) = 0;
  *(inited + 40) = &type metadata for TTSMarkup.SpeechDocument;
  *(inited + 48) = &protocol witness table for TTSMarkup.SpeechDocument;
  *(inited + 56) = 15;
  *(inited + 64) = &type metadata for TTSMarkup.SpeechText;
  *(inited + 72) = &protocol witness table for TTSMarkup.SpeechText;
  *(inited + 80) = 11;
  *(inited + 88) = &type metadata for TTSMarkup.Pause;
  *(inited + 96) = &protocol witness table for TTSMarkup.Pause;
  *(inited + 104) = 3;
  *(inited + 112) = &type metadata for TTSMarkup.Audio;
  *(inited + 120) = &protocol witness table for TTSMarkup.Audio;
  *(inited + 128) = 10;
  *(inited + 136) = &type metadata for TTSMarkup.Emphasis;
  *(inited + 144) = &protocol witness table for TTSMarkup.Emphasis;
  *(inited + 152) = 9;
  *(inited + 160) = &type metadata for TTSMarkup.Language;
  *(inited + 168) = &protocol witness table for TTSMarkup.Language;
  *(inited + 176) = 12;
  *(inited + 184) = &type metadata for TTSMarkup.Mark;
  *(inited + 192) = &protocol witness table for TTSMarkup.Mark;
  *(inited + 200) = 5;
  *(inited + 208) = &type metadata for TTSMarkup.Paragraph;
  *(inited + 216) = &protocol witness table for TTSMarkup.Paragraph;
  *(inited + 224) = 4;
  *(inited + 232) = &type metadata for TTSMarkup.Phoneme;
  *(inited + 240) = &protocol witness table for TTSMarkup.Phoneme;
  *(inited + 248) = 2;
  *(inited + 256) = &type metadata for TTSMarkup.Prosody;
  *(inited + 264) = &protocol witness table for TTSMarkup.Prosody;
  *(inited + 272) = 1;
  *(inited + 280) = &type metadata for TTSMarkup.SayAs;
  *(inited + 288) = &protocol witness table for TTSMarkup.SayAs;
  *(inited + 296) = 6;
  *(inited + 304) = &type metadata for TTSMarkup.Sentence;
  *(inited + 312) = &protocol witness table for TTSMarkup.Sentence;
  *(inited + 320) = 7;
  *(inited + 328) = &type metadata for TTSMarkup.Sub;
  *(inited + 336) = &protocol witness table for TTSMarkup.Sub;
  *(inited + 344) = 8;
  *(inited + 352) = &type metadata for TTSMarkup.Voice;
  *(inited + 360) = &protocol witness table for TTSMarkup.Voice;
  *(inited + 368) = 13;
  *(inited + 376) = &type metadata for TTSMarkup.GenericSpeechElement;
  *(inited + 384) = &protocol witness table for TTSMarkup.GenericSpeechElement;
  v5 = sub_1A93D1780(inited);
  v6 = swift_setDeallocating();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xB8))(v23, v6);
  if (*(v5 + 16) && (v7 = sub_1A93D1650(v23[0]), (v8 & 1) != 0))
  {
    v22 = *(*(v5 + 56) + 16 * v7);

    v9 = *(&v22 + 1);
    v10 = *(*(&v22 + 1) + 96);
    v11 = v22;
    v12 = sub_1A957CC58();
    v21[1] = v21;
    v13 = *(v12 - 8);
    v14 = *(v13 + 64);
    MEMORY[0x1EEE9AC00](v12, v15);
    v17 = v21 - v16;
    v10(v2, v11, v9);
    v18 = *(v11 - 8);
    if ((*(v18 + 48))(v17, 1, v11) != 1)
    {
      *(a1 + 24) = v22;
      v20 = sub_1A93981E4(a1);
      return (*(v18 + 32))(v20, v17, v11);
    }

    result = (*(v13 + 8))(v17, v12);
  }

  else
  {
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_1A93D1650(unsigned __int8 a1)
{
  v2 = *(v1 + 40);
  sub_1A93D1874();
  v3 = sub_1A957C058();
  return sub_1A93D16B8(a1, v3);
}

unint64_t sub_1A93D16B8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1A9379484();
    do
    {
      v7 = *(*(v2 + 48) + v4);
      if (sub_1A957C098())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1A93D1780(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&qword_1EB386E00, &qword_1A9589B28);
    v3 = sub_1A957D128();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 8);
      v11 = *i;
      result = sub_1A93D1650(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A93D1874()
{
  result = qword_1EB386DF8;
  if (!qword_1EB386DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386DF8);
  }

  return result;
}

Swift::Void __swiftcall Array.printByIndex(delimiter:)(Swift::String delimiter)
{
  v3 = v2;
  v4 = v1;
  v35 = delimiter;
  v5 = *(v2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](delimiter._countAndFlagsBits, delimiter._object);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v40 = sub_1A957CC58();
  v9 = *(v40 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v40, v11);
  v39 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v30 - v15;
  v43 = v4;
  v36 = v3;
  v17 = sub_1A957C578();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1AC5852A0](v41, v17, WitnessTable);
  v42 = v41[0];
  sub_1A957D0E8();
  sub_1A957D0B8();
  v19 = sub_1A957D0D8();
  v20 = (v9 + 32);
  v37 = TupleTypeMetadata2 - 8;
  v38 = v19;
  v32 = "6";
  v33 = (v5 + 32);
  v31 = "ce/Helpers/Extensions.swift";
  v21 = (v5 + 8);
  for (i = v34; ; (*v21)(i, v25))
  {
    v23 = v39;
    sub_1A957D0C8();
    (*v20)(v16, v23, v40);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v16, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v24 = *v16;
    v25 = v36;
    (*v33)(i, &v16[*(TupleTypeMetadata2 + 48)], v36);
    v26 = sub_1A957CA68();
    v41[0] = 0;
    v41[1] = 0xE000000000000000;
    MEMORY[0x1AC585140](91, 0xE100000000000000);
    v42 = v24;
    v27 = sub_1A957D3A8();
    MEMORY[0x1AC585140](v27);

    MEMORY[0x1AC585140](93, 0xE100000000000000);
    MEMORY[0x1AC585140](v35._countAndFlagsBits, v35._object);
    sub_1A957D3C8();
    v28 = sub_1A9445750();
    v29 = sub_1A938983C();
    sub_1A94457AC(v26, v28, v29 & 1, 0xD00000000000006BLL, v32 | 0x8000000000000000, 0xD000000000000018, v31 | 0x8000000000000000);
  }
}

id sub_1A93D1C98()
{
  v1 = sub_1A957CAD8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A957CAC8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v10 = sub_1A957BF48();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v13 = v0[2];
  if (v13)
  {
    v14 = v0[2];
  }

  else
  {
    v22[4] = sub_1A9387478(0, &qword_1ED96FE90, 0x1E69E9610);
    v15 = v0;
    v16 = (*(*v0 + 152))();
    v22[2] = v17;
    v22[3] = v16;
    sub_1A957BF38();
    v22[5] = MEMORY[0x1E69E7CC0];
    v22[1] = sub_1A93D9964(&qword_1ED96FE98, MEMORY[0x1E69E8030]);
    sub_1A937829C(&unk_1EB387BB0, &qword_1A9589CC0);
    sub_1A93B744C(&qword_1ED96FEA8, &unk_1EB387BB0, &qword_1A9589CC0);
    sub_1A957CE08();
    (*(v2 + 104))(v6, *MEMORY[0x1E69E8090], v1);
    v18 = sub_1A957CB08();
    v19 = v0[2];
    v15[2] = v18;
    v14 = v18;

    v13 = 0;
  }

  v20 = v13;
  return v14;
}

uint64_t sub_1A93D1F68()
{
  sub_1A9387478(0, &qword_1EB3863B0, 0x1E69D3348);
  v1 = *(v0 + 32);
  v2 = sub_1A957CA38();
  v3 = sub_1A957CC18();

  sub_1A937829C(&unk_1EB388300, &unk_1A9589B30);
  if (v3)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1A95873F0;
    v5 = swift_allocObject();
    *(v5 + 16) = 0xD000000000000027;
    *(v5 + 24) = 0x80000001A95C1940;
    *(v5 + 32) = 0;
    *(v5 + 40) = 1;
    *(v4 + 32) = v5;
    v6 = (v4 + 40);
    v7 = ".ma.new-asset-installed";
    v8 = 0xD000000000000046;
  }

  else
  {
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1A9588500;
    v9 = swift_allocObject();
    *(v9 + 16) = 0xD000000000000027;
    *(v9 + 24) = 0x80000001A95C1940;
    *(v9 + 32) = 0;
    *(v9 + 40) = 1;
    *(v4 + 32) = v9;
    v10 = swift_allocObject();
    *(v10 + 16) = 0xD000000000000033;
    *(v10 + 24) = 0x80000001A95C1970;
    *(v10 + 32) = 0;
    *(v10 + 40) = 1;
    *(v4 + 40) = v10;
    v6 = (v4 + 48);
    v7 = "SIRI_TEXT_TO_SPEECH";
    v8 = 0xD000000000000047;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v7 | 0x8000000000000000;
  *(v11 + 32) = 0;
  *(v11 + 40) = 1;
  *v6 = v11;
  return v4;
}

uint64_t sub_1A93D212C()
{
  v1 = [*(v0 + 24) string];
  v2 = sub_1A957C0F8();
  v4 = v3;

  MEMORY[0x1AC585140](v2, v4);

  return 0x5F69726953;
}

void *SiriVoiceLoader.__allocating_init(technology:type:priority:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[5] = 1;
  v6[2] = 0;
  v6[3] = a1;
  v6[4] = a2;
  swift_beginAccess();
  v6[5] = a3;
  return v6;
}

void *SiriVoiceLoader.init(technology:type:priority:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = 1;
  v3[2] = 0;
  v3[3] = a1;
  v3[4] = a2;
  swift_beginAccess();
  v3[5] = a3;
  return v3;
}

uint64_t sub_1A93D22D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

uint64_t sub_1A93D239C(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_1A93D242C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A93D99E4;

  return sub_1A93D264C(0);
}

uint64_t sub_1A93D24BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A93D254C;

  return sub_1A93D264C(1);
}

uint64_t sub_1A93D254C(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1A93D264C(char a1)
{
  *(v2 + 96) = v1;
  *(v2 + 152) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A93D2670, 0, 0);
}

uint64_t sub_1A93D2670()
{
  v23 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 152);
  v3 = swift_allocObject();
  *(v0 + 104) = v3;
  sub_1A937829C(&qword_1EB386E50, &qword_1A9593230);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A9587160;
  *(inited + 32) = 3;
  v5 = *(v1 + 24);
  *(inited + 64) = sub_1A9387478(0, &qword_1EB3863A8, 0x1E69D3340);
  *(inited + 40) = v5;
  v6 = sub_1A93D92D4(inited);
  swift_setDeallocating();
  v7 = v5;
  v8 = sub_1A937B960(inited + 32, &qword_1EB386E58, &qword_1A9589CF0);
  *(v3 + 16) = v6;
  if (v2 == 1)
  {
    v22 = MEMORY[0x1E69E6370];
    v21[0] = 1;
    v8 = sub_1A93D2B0C(v21, 5);
  }

  v9 = *(v0 + 96);
  v10 = (*(*v9 + 152))(v8);
  v12 = v11;
  *(v0 + 112) = v11;
  sub_1A937829C(&qword_1EB386D48, &qword_1A95898C8);
  v13 = swift_allocObject();
  *(v0 + 120) = v13;
  *(v13 + 16) = xmmword_1A95892B0;
  v14 = v9[4];
  *(v13 + 32) = v14;
  v15 = swift_task_alloc();
  *(v0 + 128) = v15;
  v15[2] = v9;
  v15[3] = v13;
  v15[4] = v3;
  v15[5] = v10;
  v15[6] = v12;
  v16 = *(MEMORY[0x1E69E8920] + 4);
  v17 = v14;
  v18 = swift_task_alloc();
  *(v0 + 136) = v18;
  v19 = sub_1A937829C(&qword_1EB386958, &qword_1A9587790);
  *v18 = v0;
  v18[1] = sub_1A93D28EC;

  return MEMORY[0x1EEE6DE38](v0 + 88, 0, 0, 0xD000000000000010, 0x80000001A95C1B40, sub_1A93D9594, v15, v19);
}

uint64_t sub_1A93D28EC()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v9 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_1A93D2A84;
  }

  else
  {
    v5 = v2[15];
    v6 = v2[16];
    v7 = v2[14];

    v4 = sub_1A93D2A1C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A93D2A1C()
{
  v1 = v0[13];

  v2 = v0[11];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1A93D2A84()
{
  v1 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];

  v5 = v0[1];
  v6 = v0[18];

  return v5();
}

_OWORD *sub_1A93D2B0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1A93981D4(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_1A93D8CC4(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    sub_1A937B960(a1, &qword_1EB3869D0, &qword_1A9587A10);
    v8 = *v2;
    v9 = sub_1A93D8830(a2);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_1A93D8EC4();
        v14 = v16;
      }

      sub_1A93981D4((*(v14 + 56) + 32 * v11), v17);
      sub_1A93D8B30(v11, v14);
      *v3 = v14;
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    return sub_1A937B960(v17, &qword_1EB3869D0, &qword_1A9587A10);
  }

  return result;
}

uint64_t sub_1A93D2C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a5;
  v35 = a6;
  v33 = a4;
  v37 = sub_1A957BF18();
  v40 = *(v37 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v37, v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A957BF48();
  v38 = *(v12 - 8);
  v39 = v12;
  v13 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A937829C(&qword_1EB386E70, &unk_1A9589D10);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v32 - v21;
  v36 = sub_1A93D1C98();
  (*(v18 + 16))(v22, a1, v17);
  v23 = (*(v18 + 80) + 48) & ~*(v18 + 80);
  v24 = swift_allocObject();
  v26 = v33;
  v25 = v34;
  *(v24 + 2) = a3;
  *(v24 + 3) = v26;
  v27 = v35;
  *(v24 + 4) = v25;
  *(v24 + 5) = v27;
  (*(v18 + 32))(&v24[v23], v22, v17);
  aBlock[4] = sub_1A93D95A4;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A93C80E8;
  aBlock[3] = &unk_1F1CF42B0;
  v28 = _Block_copy(aBlock);

  sub_1A957BF28();
  v41 = MEMORY[0x1E69E7CC0];
  sub_1A93D9964(qword_1ED96FED0, MEMORY[0x1E69E7F60]);
  sub_1A937829C(&qword_1EB386D78, &qword_1A95898D0);
  sub_1A93B744C(&qword_1ED96FEB0, &qword_1EB386D78, &qword_1A95898D0);
  v29 = v37;
  sub_1A957CE08();
  v30 = v36;
  MEMORY[0x1AC5859B0](0, v16, v11, v28);
  _Block_release(v28);

  (*(v40 + 8))(v11, v29);
  (*(v38 + 8))(v16, v39);
}

uint64_t sub_1A93D2FE4(const void *a1)
{
  v3 = *(*(sub_1A937829C(&qword_1EB388000, &qword_1A9587710) - 8) + 64) + 15;
  v1[119] = swift_task_alloc();
  memcpy(v1 + 2, a1, 0x118uLL);
  memcpy(v1 + 37, a1, 0x118uLL);
  v4 = swift_task_alloc();
  v1[120] = v4;
  *v4 = v1;
  v4[1] = sub_1A93D30D4;

  return sub_1A93D4DB8((v1 + 37));
}

uint64_t sub_1A93D30D4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 960);
  v6 = *v2;
  *(*v2 + 968) = v1;

  if (v1)
  {
    v7 = sub_1A93D345C;
  }

  else
  {
    *(v4 + 976) = a1;
    v7 = sub_1A93D31FC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1A93D31FC()
{
  v1 = v0[122];
  v2 = v0[119];
  v3 = sub_1A957C0C8();
  v0[111] = nullsub_23;
  v0[112] = 0;
  v0[107] = MEMORY[0x1E69E9820];
  v0[108] = 1107296256;
  v0[109] = sub_1A93D34C0;
  v0[110] = &unk_1F1CED6D0;
  v4 = _Block_copy(v0 + 107);
  v5 = v0[112];

  v0[117] = nullsub_23;
  v0[118] = 0;
  v0[113] = MEMORY[0x1E69E9820];
  v0[114] = 1107296256;
  v0[115] = sub_1A93D3530;
  v0[116] = &unk_1F1CF3FE0;
  v6 = _Block_copy(v0 + 113);
  v7 = v0[118];

  [v1 downloadWithReservation:v3 useBattery:1 progress:v4 then:v6];
  _Block_release(v6);
  _Block_release(v4);

  v8 = sub_1A957C688();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  memcpy(v9 + 4, v0 + 2, 0x118uLL);
  sub_1A937B3DC((v0 + 2), (v0 + 72));
  sub_1A938A404(0, 0, v2, &unk_1A9589B70, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1A93D345C()
{
  v1 = v0[119];

  v2 = v0[1];
  v3 = v0[121];

  return v2();
}

uint64_t sub_1A93D34C0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v8(a2, a3, a4);
}

void sub_1A93D3530(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_1A93D359C(const void *a1)
{
  v3 = *(*(sub_1A937829C(&qword_1EB388000, &qword_1A9587710) - 8) + 64) + 15;
  v1[107] = swift_task_alloc();
  memcpy(v1 + 2, a1, 0x118uLL);
  memcpy(v1 + 37, a1, 0x118uLL);
  v4 = swift_task_alloc();
  v1[108] = v4;
  *v4 = v1;
  v4[1] = sub_1A93D368C;

  return sub_1A93D4DB8((v1 + 37));
}

uint64_t sub_1A93D368C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 864);
  v6 = *v2;
  *(*v2 + 872) = v1;

  if (v1)
  {
    v7 = sub_1A93D3AF8;
  }

  else
  {
    *(v4 + 880) = a1;
    v7 = sub_1A93D37B4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1A93D37B4()
{
  v1 = v0[110];
  v2 = swift_task_alloc();
  v0[111] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E88D0] + 4);
  v4 = swift_task_alloc();
  v0[112] = v4;
  *v4 = v0;
  v4[1] = sub_1A93D38A8;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1A93D38A8()
{
  v1 = *(*v0 + 896);
  v2 = *(*v0 + 888);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A93D39C0, 0, 0);
}

uint64_t sub_1A93D39C0()
{
  v1 = v0[110];
  v2 = v0[107];
  [v1 purgeImmediately_];
  v3 = sub_1A957C688();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  memcpy(v4 + 4, v0 + 2, 0x118uLL);
  sub_1A937B3DC((v0 + 2), (v0 + 72));
  sub_1A938A404(0, 0, v2, &unk_1A9589B88, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1A93D3AF8()
{
  v1 = v0[107];

  v2 = v0[1];
  v3 = v0[109];

  return v2();
}

void sub_1A93D3B5C(uint64_t a1, void *a2)
{
  v4 = sub_1A937829C(&qword_1EB386E38, &qword_1A9589CD8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = aBlock - v8;
  (*(v5 + 16))(aBlock - v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v9, v4);
  aBlock[4] = sub_1A93D87C4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A93D3530;
  aBlock[3] = &unk_1F1CF41E8;
  v12 = _Block_copy(aBlock);

  [a2 cancelDownloadingThen_];
  _Block_release(v12);
}

uint64_t sub_1A93D3D0C(const void *a1)
{
  v3 = *(*(sub_1A937829C(&qword_1EB388000, &qword_1A9587710) - 8) + 64) + 15;
  v1[107] = swift_task_alloc();
  memcpy(v1 + 2, a1, 0x118uLL);
  memcpy(v1 + 37, a1, 0x118uLL);
  v4 = swift_task_alloc();
  v1[108] = v4;
  *v4 = v1;
  v4[1] = sub_1A93D3DFC;

  return sub_1A93D4DB8((v1 + 37));
}

uint64_t sub_1A93D3DFC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 864);
  v6 = *v2;
  *(*v2 + 872) = v1;

  if (v1)
  {
    v7 = sub_1A93D99C4;
  }

  else
  {
    *(v4 + 880) = a1;
    v7 = sub_1A93D3F24;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1A93D3F24()
{
  v1 = v0[110];
  v2 = v0[107];
  [v1 purgeImmediately_];

  v3 = sub_1A957C688();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  memcpy(v4 + 4, v0 + 2, 0x118uLL);
  sub_1A937B3DC((v0 + 2), (v0 + 72));
  sub_1A938A404(0, 0, v2, &unk_1A9589B98, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1A93D404C(uint64_t a1, const void *a2)
{
  v2[37] = a1;
  memcpy(v2 + 2, a2, 0x118uLL);
  v3 = swift_task_alloc();
  v2[38] = v3;
  *v3 = v2;
  v3[1] = sub_1A93D40F0;

  return sub_1A93D4DB8((v2 + 2));
}

uint64_t sub_1A93D40F0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 304);
  v6 = *v2;
  *(*v2 + 312) = v1;

  if (v1)
  {
    v7 = sub_1A93D4314;
  }

  else
  {
    *(v4 + 320) = a1;
    v7 = sub_1A93D4218;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1A93D4218()
{
  v1 = v0[40];
  v2 = sub_1A957B7F8();

  if (v2)
  {
    v3 = v0[37];
    v4 = [v2 bundleURL];

    sub_1A957AF98();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v0[37];
  v7 = sub_1A957AFD8();
  (*(*(v7 - 8) + 56))(v6, v5, 1, v7);
  v8 = v0[1];

  return v8();
}

uint64_t sub_1A93D432C(uint64_t a1, const void *a2)
{
  v2[49] = a1;
  v4 = sub_1A937829C(&qword_1EB386E08, &qword_1A9589BB0);
  v2[50] = v4;
  v5 = *(v4 - 8);
  v2[51] = v5;
  v6 = *(v5 + 64) + 15;
  v2[52] = swift_task_alloc();
  v7 = sub_1A937829C(&qword_1EB386E10, qword_1A9589BB8);
  v2[53] = v7;
  v8 = *(v7 - 8);
  v2[54] = v8;
  v2[55] = *(v8 + 64);
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  memcpy(v2 + 2, a2, 0x118uLL);
  v9 = swift_task_alloc();
  v2[58] = v9;
  *v9 = v2;
  v9[1] = sub_1A93D44C4;

  return sub_1A93D4DB8((v2 + 2));
}

uint64_t sub_1A93D44C4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 464);
  v6 = *v2;
  *(*v2 + 472) = v1;

  if (v1)
  {
    v7 = sub_1A93D4934;
  }

  else
  {
    *(v4 + 480) = a1;
    v7 = sub_1A93D45EC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1A93D45EC()
{
  v22 = v0[60];
  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[54];
  v18 = v0[55];
  v4 = v0[52];
  v5 = v0[53];
  v7 = v0[50];
  v6 = v0[51];
  v8 = v0[49];
  (*(v6 + 104))(v4, *MEMORY[0x1E69E8650], v7);
  sub_1A957C698();
  (*(v6 + 8))(v4, v7);
  v21 = sub_1A957C0C8();
  v19 = *(v3 + 16);
  v19(v2, v1, v5);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  v17 = *(v3 + 32);
  v17(v10 + v9, v2, v5);
  v0[41] = sub_1A93D7A14;
  v0[42] = v10;
  v0[37] = MEMORY[0x1E69E9820];
  v0[38] = 1107296256;
  v0[39] = sub_1A93D34C0;
  v0[40] = &unk_1F1CF40A8;
  aBlock = _Block_copy(v0 + 37);
  v11 = v0[42];

  v19(v2, v1, v5);
  v12 = swift_allocObject();
  v17(v12 + v9, v2, v5);
  v0[47] = sub_1A93D7AA0;
  v0[48] = v12;
  v0[43] = MEMORY[0x1E69E9820];
  v0[44] = 1107296256;
  v0[45] = sub_1A93D3530;
  v0[46] = &unk_1F1CF40F8;
  v13 = _Block_copy(v0 + 43);
  v14 = v0[48];

  [v22 downloadWithReservation:v21 useBattery:1 progress:aBlock then:v13];
  _Block_release(v13);
  _Block_release(aBlock);

  (*(v3 + 8))(v1, v5);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1A93D4934()
{
  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[52];

  v4 = v0[1];
  v5 = v0[59];

  return v4();
}

uint64_t sub_1A93D49AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB386E30, &qword_1A9589CD0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v11 - v8;
  v11[3] = a1 / a2;
  sub_1A937829C(&qword_1EB386E10, qword_1A9589BB8);
  sub_1A957C6B8();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1A93D4AB8(uint64_t a1, const void *a2)
{
  v3[73] = v2;
  v3[72] = a1;
  memcpy(v3 + 2, a2, 0x118uLL);
  v4 = swift_task_alloc();
  v3[74] = v4;
  *v4 = v3;
  v4[1] = sub_1A93D4B60;

  return sub_1A93D4DB8((v3 + 2));
}

uint64_t sub_1A93D4B60(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 592);
  v7 = *v2;
  *(v3 + 600) = a1;
  *(v3 + 608) = v1;

  if (v1)
  {
    v5 = sub_1A93D4DA0;
  }

  else
  {
    v5 = sub_1A93D4C78;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A93D4C78()
{
  v1 = *(**(v0 + 584) + 152);
  v2 = *(v0 + 600);
  v3 = v1();
  sub_1A94A3F1C(v2, v3, v4, (v0 + 296));
  v5 = sub_1A932D058(v0 + 296);
  v6 = *(v0 + 600);
  if (v5 == 1)
  {
    sub_1A93D7B08();
    swift_allocError();
    *v7 = 4;
    swift_willThrow();
  }

  else
  {
    v9 = *(v0 + 576);

    memcpy(v9, (v0 + 296), 0x118uLL);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1A93D4DB8(uint64_t a1)
{
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  *(v2 + 128) = v1;
  *(v2 + 136) = v4;
  *(v2 + 144) = v3;
  *(v2 + 194) = *(a1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1A93D4E38, 0, 0);
}

uint64_t sub_1A93D4E38()
{
  v27 = v0;
  v1 = *(v0 + 194);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 128);
  v5 = swift_allocObject();
  *(v0 + 152) = v5;
  sub_1A937829C(&qword_1EB386E50, &qword_1A9593230);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A9587160;
  *(inited + 32) = 3;
  v7 = *(v4 + 24);
  *(inited + 64) = sub_1A9387478(0, &qword_1EB3863A8, 0x1E69D3340);
  *(inited + 40) = v7;
  v8 = sub_1A93D92D4(inited);
  swift_setDeallocating();
  v9 = v7;
  sub_1A937B960(inited + 32, &qword_1EB386E58, &qword_1A9589CF0);
  *(v5 + 16) = v8;
  v26 = MEMORY[0x1E69E6158];
  v25[0] = v3;
  v25[1] = v2;
  sub_1A93D2B0C(v25, 0);
  *(v0 + 192) = v1;
  *(v0 + 193) = 2;
  sub_1A93B1148();
  sub_1A957C438();
  sub_1A957C438();
  if (*(v0 + 88) == *(v0 + 104) && *(v0 + 96) == *(v0 + 112))
  {
    v10 = *(v0 + 112);
  }

  else
  {
    v11 = *(v0 + 96);
    v12 = *(v0 + 112);
    v13 = sub_1A957D3E8();

    if ((v13 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v14 = sub_1A9387478(0, &qword_1EB385F20, 0x1E69D3330);
  v15 = sub_1A957CAA8();
  v26 = v14;
  v25[0] = v15;
  sub_1A93D2B0C(v25, 4);
LABEL_6:
  v16 = *(v0 + 128);
  sub_1A937829C(&qword_1EB386D48, &qword_1A95898C8);
  v17 = swift_allocObject();
  *(v0 + 160) = v17;
  *(v17 + 16) = xmmword_1A95892B0;
  v18 = *(v16 + 32);
  *(v17 + 32) = v18;
  v19 = swift_task_alloc();
  *(v0 + 168) = v19;
  v19[2] = v16;
  v19[3] = v17;
  v19[4] = v5;
  v20 = *(MEMORY[0x1E69E8920] + 4);
  v21 = v18;
  v22 = swift_task_alloc();
  *(v0 + 176) = v22;
  v23 = sub_1A957B848();
  *v22 = v0;
  v22[1] = sub_1A93D5150;

  return MEMORY[0x1EEE6DE38](v0 + 120, 0, 0, 0xD000000000000014, 0x80000001A95C1B20, sub_1A93D93F0, v19, v23);
}

uint64_t sub_1A93D5150()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v8 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = sub_1A93D52DC;
  }

  else
  {
    v5 = *(v2 + 160);
    v6 = *(v2 + 168);

    v4 = sub_1A93D5274;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A93D5274()
{
  v1 = v0[19];

  v2 = v0[15];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1A93D52DC()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];

  v4 = v0[1];
  v5 = v0[23];

  return v4();
}

uint64_t sub_1A93D5354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v6 = sub_1A957BF18();
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1A957BF48();
  v28 = *(v30 - 8);
  v11 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1A93D1C98();
  v15 = sub_1A937829C(&qword_1EB386E60, &qword_1A9589CF8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v27 - v19;
  (*(v16 + 16))(&v27 - v19, a1, v15);
  v21 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v22 = swift_allocObject();
  v23 = v27;
  *(v22 + 16) = a3;
  *(v22 + 24) = v23;
  (*(v16 + 32))(v22 + v21, v20, v15);
  aBlock[4] = sub_1A93D93FC;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A93C80E8;
  aBlock[3] = &unk_1F1CF4260;
  v24 = _Block_copy(aBlock);

  sub_1A957BF28();
  v32 = MEMORY[0x1E69E7CC0];
  sub_1A93D9964(qword_1ED96FED0, MEMORY[0x1E69E7F60]);
  sub_1A937829C(&qword_1EB386D78, &qword_1A95898D0);
  sub_1A93B744C(&qword_1ED96FEB0, &qword_1EB386D78, &qword_1A95898D0);
  sub_1A957CE08();
  v25 = v29;
  MEMORY[0x1AC5859B0](0, v14, v10, v24);
  _Block_release(v24);

  (*(v31 + 8))(v10, v6);
  (*(v28 + 8))(v14, v30);
}

uint64_t sub_1A93D5718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_1A957BC88();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v8 = sub_1A957B308();
  v4[12] = v8;
  v9 = *(v8 - 8);
  v4[13] = v9;
  v10 = *(v9 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A93D5840, 0, 0);
}

uint64_t sub_1A93D5840()
{
  v1 = [objc_allocWithZone(sub_1A957B6C8()) init];
  v0[16] = v1;
  v2 = swift_task_alloc();
  v0[17] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E88D0] + 4);
  v4 = swift_task_alloc();
  v0[18] = v4;
  v5 = sub_1A937829C(&qword_1EB386E20, &qword_1A9589BD0);
  *v4 = v0;
  v4[1] = sub_1A93D5964;

  return MEMORY[0x1EEE6DDE0](v0 + 7, 0, 0, 0xD000000000000015, 0x80000001A95C1A90, sub_1A93D99E8, v2, v5);
}

uint64_t sub_1A93D5964()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A93D5A7C, 0, 0);
}

uint64_t sub_1A93D5A7C()
{
  v78 = v0;
  v1 = v0;
  v2 = *(v0 + 56);
  v71 = v2 >> 62;
  if (v2 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A957CE48())
  {
    v4 = 0;
    v5 = *(v1 + 64);
    v75 = v2 & 0xFFFFFFFFFFFFFF8;
    v76 = v2 & 0xC000000000000001;
    v72 = (*(v1 + 104) + 8);
    v73 = v5;
    v74 = i;
    while (1)
    {
      if (v76)
      {
        v6 = MEMORY[0x1AC585DE0](v4, v2);
      }

      else
      {
        if (v4 >= *(v75 + 16))
        {
          goto LABEL_29;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = sub_1A957B778();
      v10 = sub_1A957B718();
      v12 = v11;

      if (!v12)
      {
        goto LABEL_4;
      }

      if (v10 == *(v5 + 40) && v12 == *(v5 + 48))
      {
      }

      else
      {
        v13 = sub_1A957D3E8();

        if ((v13 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      v14 = v2;
      v15 = *(v1 + 120);
      v16 = *(v1 + 96);
      v17 = v1;
      memcpy(__dst, *(v1 + 64), sizeof(__dst));
      CoreSynthesizer.Voice.primaryLocale.getter(v15);
      v18 = Locale.siriLocaleIdentifier.getter();
      v20 = v19;
      (*v72)(v15, v16);
      v21 = sub_1A957B778();
      v22 = sub_1A957B758();
      v24 = v23;

      if (v18 == v22 && v20 == v24)
      {

        v1 = v17;
        v2 = v14;
        v5 = v73;
        i = v74;
      }

      else
      {
        v25 = sub_1A957D3E8();

        v1 = v17;
        v2 = v14;
        v5 = v73;
        i = v74;
        if ((v25 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      v26 = sub_1A957B778();
      sub_1A957B728();

      v27 = *(v5 + 72);
      if (*(v5 + 120))
      {
        if (*(v5 + 120) != 2 || v27 != 2 || (v28 = vorrq_s8(*(v5 + 88), *(v5 + 104)), *&vorr_s8(*v28.i8, *&vextq_s8(v28, v28, 8uLL)) | *(v5 + 80)))
        {
LABEL_4:

          goto LABEL_5;
        }
      }

      else
      {
        v29 = qword_1A9589DF0[v27];
      }

      v30 = sub_1A957B708();
      v31 = sub_1A957B708();

      if (v30 == v31)
      {
        v32 = *(v1 + 128);

        goto LABEL_53;
      }

LABEL_5:
      ++v4;
      if (v8 == i)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

LABEL_31:
  v33 = *(v1 + 64);
  v34 = *(v33 + 72);
  if (*(v33 + 120))
  {
    if (*(v33 + 120) != 2 || ((v35 = vorrq_s8(*(v33 + 88), *(v33 + 104)), v36 = *&vorr_s8(*v35.i8, *&vextq_s8(v35, v35, 8uLL)) | *(v33 + 80), v34 == 2) ? (v37 = v36 == 0) : (v37 = 0), !v37))
    {
      v39 = *(v1 + 80);
      v38 = *(v1 + 88);
      v40 = *(v1 + 72);

      v41 = sub_1A93772F8();
      (*(v39 + 16))(v38, v41, v40);
      v42 = sub_1A957BC68();
      v43 = sub_1A957CA78();
      v44 = os_log_type_enabled(v42, v43);
      v45 = *(v1 + 128);
      v47 = *(v1 + 80);
      v46 = *(v1 + 88);
      v48 = *(v1 + 72);
      if (v44)
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_1A9324000, v42, v43, "Tried to subscribe to a non-siri voice.", v49, 2u);
        MEMORY[0x1AC587CD0](v49, -1, -1);
      }

      (*(v47 + 8))(v46, v48);
      goto LABEL_53;
    }
  }

  else
  {
    v50 = qword_1A9589DF0[v34];
  }

  v51 = *(v1 + 104);
  v52 = *(v1 + 112);
  v53 = *(v1 + 96);
  memcpy(__dst, *(v1 + 64), sizeof(__dst));
  CoreSynthesizer.Voice.primaryLocale.getter(v52);
  Locale.siriLocaleIdentifier.getter();
  (*(v51 + 8))(v52, v53);
  v55 = *(v33 + 40);
  v54 = *(v33 + 48);
  objc_allocWithZone(sub_1A957B768());

  v56 = sub_1A957B748();
  sub_1A957B738();
  if (v71)
  {
    v57 = sub_1A957CE48();
    if (v57)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v57 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v57)
    {
LABEL_43:
      __dst[0] = MEMORY[0x1E69E7CC0];
      result = sub_1A957CFA8();
      if (v57 < 0)
      {
        __break(1u);
        return result;
      }

      v59 = 0;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v60 = MEMORY[0x1AC585DE0](v59, v2);
        }

        else
        {
          v60 = *(v2 + 8 * v59 + 32);
        }

        ++v59;
        v61 = v60;
        sub_1A957B778();

        sub_1A957CF78();
        v62 = *(__dst[0] + 16);
        sub_1A957CFB8();
        sub_1A957CFC8();
        sub_1A957CF88();
      }

      while (v57 != v59);

      v63 = __dst[0];
      goto LABEL_52;
    }
  }

  v63 = MEMORY[0x1E69E7CC0];
LABEL_52:
  v64 = *(v1 + 128);
  sub_1A937829C(&qword_1EB386D48, &qword_1A95898C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A95892B0;
  *(inited + 32) = v56;
  __dst[0] = v63;
  v66 = v56;
  sub_1A93D9040(inited);
  sub_1A957B6B8();

LABEL_53:
  v68 = *(v1 + 112);
  v67 = *(v1 + 120);
  v69 = *(v1 + 88);

  v70 = *(v1 + 8);

  return v70();
}

uint64_t sub_1A93D610C()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E88D0] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = sub_1A937829C(&qword_1EB386E20, &qword_1A9589BD0);
  *v4 = v0;
  v4[1] = sub_1A93D6214;

  return MEMORY[0x1EEE6DDE0](v0 + 2, 0, 0, 0xD000000000000015, 0x80000001A95C1A90, sub_1A93D7B5C, v2, v5);
}

uint64_t sub_1A93D6214()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A93D632C, 0, 0);
}

uint64_t sub_1A93D6364()
{
  v1 = [objc_allocWithZone(sub_1A957B6C8()) init];
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E88D0] + 4);
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = sub_1A937829C(&qword_1EB386E20, &qword_1A9589BD0);
  *v4 = v0;
  v4[1] = sub_1A93D6488;

  return MEMORY[0x1EEE6DDE0](v0 + 2, 0, 0, 0xD000000000000015, 0x80000001A95C1A90, sub_1A93D99E8, v2, v5);
}

uint64_t sub_1A93D6488()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A93D65A0, 0, 0);
}

uint64_t sub_1A93D65A0()
{
  v26 = v0;
  v1 = v0[2];
  v24 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A957CE48())
  {
    v3 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      v8 = MEMORY[0x1E69E7CC0];
      goto LABEL_13;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v4 = *(v1 + 32);
      goto LABEL_7;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

  v4 = MEMORY[0x1AC585DE0](0, v1);
LABEL_7:
  v5 = v4;
  v6 = v0[3];
  v25 = v4;
  if (sub_1A93D68B8(&v25, v6))
  {
    sub_1A957CF78();
    v7 = *(v24 + 16);
    sub_1A957CFB8();
    sub_1A957CFC8();
    sub_1A957CF88();
    if (i == 1)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

  if (i != 1)
  {
LABEL_23:
    v15 = 5;
    do
    {
      v16 = v15 - 4;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1AC585DE0](v15 - 4, v1);
      }

      else
      {
        if (v16 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v17 = *(v1 + 8 * v15);
      }

      v18 = v17;
      v19 = v15 - 3;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_34;
      }

      v20 = v0[3];
      v25 = v17;
      if (sub_1A93D68B8(&v25, v20))
      {
        sub_1A957CF78();
        v21 = *(v24 + 16);
        sub_1A957CFB8();
        sub_1A957CFC8();
        sub_1A957CF88();
      }

      else
      {
      }

      ++v15;
    }

    while (v19 != i);
  }

LABEL_12:
  v8 = v24;
  v3 = MEMORY[0x1E69E7CC0];
LABEL_13:

  if (v8 < 0 || (v8 & 0x4000000000000000) != 0)
  {
    v9 = sub_1A957CE48();
    if (!v9)
    {
      goto LABEL_37;
    }

LABEL_16:
    v25 = v3;
    result = sub_1A957CFA8();
    if ((v9 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1AC585DE0](v11, v8);
        }

        else
        {
          v12 = *(v8 + 8 * v11 + 32);
        }

        ++v11;
        v13 = v12;
        sub_1A957B778();

        sub_1A957CF78();
        v14 = v25[2];
        sub_1A957CFB8();
        sub_1A957CFC8();
        sub_1A957CF88();
      }

      while (v9 != v11);
      goto LABEL_37;
    }

    __break(1u);
  }

  else
  {
    v9 = *(v8 + 16);
    if (v9)
    {
      goto LABEL_16;
    }

LABEL_37:

    v22 = v0[4];
    sub_1A957B6B8();

    v23 = v0[1];

    return v23();
  }

  return result;
}

BOOL sub_1A93D68B8(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1A957B308();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v39[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = *a1;
  v11 = sub_1A957B778();
  v12 = sub_1A957B718();
  v14 = v13;

  if (v14)
  {
    v12 = sub_1A957C1A8();
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(a2 + 40);
  v18 = *(a2 + 48);
  v19 = sub_1A957C1A8();
  if (!v16)
  {

    return 1;
  }

  if (v12 == v19 && v16 == v20)
  {
  }

  else
  {
    v22 = sub_1A957D3E8();

    if ((v22 & 1) == 0)
    {
      return 1;
    }
  }

  memcpy(v39, a2, sizeof(v39));
  CoreSynthesizer.Voice.primaryLocale.getter(v9);
  v24 = Locale.siriLocaleIdentifier.getter();
  v26 = v25;
  (*(v5 + 8))(v9, v4);
  v27 = sub_1A957B778();
  v28 = sub_1A957B758();
  v30 = v29;

  if (v24 == v28 && v26 == v30)
  {
  }

  else
  {
    v32 = sub_1A957D3E8();

    if ((v32 & 1) == 0)
    {
      return 1;
    }
  }

  v33 = sub_1A957B778();
  sub_1A957B728();

  v34 = *(a2 + 72);
  if (!*(a2 + 120))
  {
    v36 = qword_1A9589DF0[v34];
LABEL_26:
    v37 = sub_1A957B708();
    return v37 != sub_1A957B708();
  }

  result = 1;
  if (*(a2 + 120) == 2 && v34 == 2)
  {
    v35 = vorrq_s8(*(a2 + 88), *(a2 + 104));
    if (!(*&vorr_s8(*v35.i8, *&vextq_s8(v35, v35, 8uLL)) | *(a2 + 80)))
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t SiriVoiceLoader.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A93D6D1C()
{
  v2 = *(**v0 + 192);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93D99E4;

  return v6();
}

uint64_t sub_1A93D6E30()
{
  v2 = *(**v0 + 200);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93D99E4;

  return v6();
}

uint64_t sub_1A93D6F44(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 256);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A93836DC;

  return v10(a1, a2);
}

uint64_t sub_1A93D707C(uint64_t a1)
{
  v4 = *(**v1 + 216);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93836DC;

  return v8(a1);
}

uint64_t sub_1A93D71A0(uint64_t a1)
{
  v4 = *(**v1 + 224);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A9382328;

  return v8(a1);
}

uint64_t sub_1A93D72C4(uint64_t a1)
{
  v4 = *(**v1 + 232);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93836DC;

  return v8(a1);
}

uint64_t sub_1A93D73E8(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 248);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A93836DC;

  return v10(a1, a2);
}

uint64_t sub_1A93D7518(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 240);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A93836DC;

  return v10(a1, a2);
}

uint64_t sub_1A93D7648(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB386E28, &qword_1A9589CC8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v11 - v6;
  (*(v3 + 16))(&v11 - v6, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v7, v2);
  sub_1A957B6A8();
}

uint64_t sub_1A93D7790(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A93D77A8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A93836DC;

  return sub_1A93D5718(v2, v3, v4, v0 + 32);
}

uint64_t sub_1A93D7840()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A93836DC;

  return sub_1A93D6344(v2, v3, v4, v0 + 32);
}

uint64_t sub_1A93D78D0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  v5 = *(v0 + 80);

  sub_1A93B183C(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152));
  v6 = *(v0 + 160);

  v7 = *(v0 + 168);

  v8 = *(v0 + 176);

  v9 = *(v0 + 184);

  if (*(v0 + 240))
  {

    v10 = *(v0 + 256);
  }

  if (*(v0 + 280))
  {

    v11 = *(v0 + 296);
  }

  return MEMORY[0x1EEE6BDD0](v0, 312, 7);
}

uint64_t sub_1A93D7984()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A9382328;

  return sub_1A93D6344(v2, v3, v4, v0 + 32);
}

uint64_t sub_1A93D7A14(uint64_t a1, uint64_t a2)
{
  v4 = *(*(sub_1A937829C(&qword_1EB386E10, qword_1A9589BB8) - 8) + 80);

  return sub_1A93D49AC(a1, a2);
}

uint64_t sub_1A93D7AA0()
{
  v1 = *(sub_1A937829C(&qword_1EB386E10, qword_1A9589BB8) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_1A957C6C8();
}

unint64_t sub_1A93D7B08()
{
  result = qword_1EB386E18;
  if (!qword_1EB386E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386E18);
  }

  return result;
}

uint64_t dispatch thunk of SiriVoiceLoader.voices()()
{
  v2 = *(*v0 + 192);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93D99C8;

  return v6();
}

uint64_t dispatch thunk of SiriVoiceLoader.installedVoices()()
{
  v2 = *(*v0 + 200);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93D7EAC;

  return v6();
}

uint64_t sub_1A93D7EAC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of SiriVoiceLoader.download(voice:)(uint64_t a1)
{
  v4 = *(*v1 + 216);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93836DC;

  return v8(a1);
}

uint64_t dispatch thunk of SiriVoiceLoader.cancelDownload(voice:)(uint64_t a1)
{
  v4 = *(*v1 + 224);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A9382328;

  return v8(a1);
}

uint64_t dispatch thunk of SiriVoiceLoader.purge(voice:)(uint64_t a1)
{
  v4 = *(*v1 + 232);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93836DC;

  return v8(a1);
}

uint64_t dispatch thunk of SiriVoiceLoader.url(forVoice:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 240);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A93836DC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of SiriVoiceLoader.downloadProgress(voice:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 248);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A93836DC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of SiriVoiceLoader.record(forVoice:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 256);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A93836DC;

  return v10(a1, a2);
}

uint64_t sub_1A93D8694()
{
  v0 = *(sub_1A937829C(&qword_1EB386E28, &qword_1A9589CC8) - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);

  sub_1A937829C(&qword_1EB386E28, &qword_1A9589CC8);
  return sub_1A957C5C8();
}

uint64_t sub_1A93D8740(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_1A937829C(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_1A93D87C4()
{
  v1 = *(sub_1A937829C(&qword_1EB386E38, &qword_1A9589CD8) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_1A957C5C8();
}

unint64_t sub_1A93D8830(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](a1);
  v4 = sub_1A957D548();

  return sub_1A93D8E58(a1, v4);
}

uint64_t sub_1A93D889C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1A937829C(&qword_1EB386E68, &unk_1A9589D00);
  result = sub_1A957D118();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        sub_1A93981D4(v22, v33);
      }

      else
      {
        sub_1A937BA14(v22, v33);
      }

      v23 = *(v8 + 40);
      sub_1A957D4F8();
      MEMORY[0x1AC5863C0](v21);
      result = sub_1A957D548();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = sub_1A93981D4(v33, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_36;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1A93D8B30(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A957CE28() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v6);
      sub_1A957D4F8();
      MEMORY[0x1AC5863C0](v11);
      result = sub_1A957D548();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 32 * v3);
        v18 = (v16 + 32 * v6);
        if (v3 != v6 || v17 >= v18 + 2)
        {
          v9 = v18[1];
          *v17 = *v18;
          v17[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_1A93D8CC4(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1A93D8830(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1A93D8EC4();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1A93D889C(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1A93D8830(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      type metadata accessor for TTSAssetProperty();
      result = sub_1A957D438();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (v20[7] + 32 * v9);
    sub_1A9378138(v21);

    return sub_1A93981D4(a1, v21);
  }

  else
  {

    return sub_1A93D8DF0(v9, a2, a1, v20);
  }
}

_OWORD *sub_1A93D8DF0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1A93981D4(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_1A93D8E58(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_1A93D8EC4()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB386E68, &unk_1A9589D00);
  v2 = *v0;
  v3 = sub_1A957D108();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1A937BA14(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_1A93981D4(v19, (*(v4 + 56) + 32 * v17));
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

uint64_t sub_1A93D9040(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1A957CE48();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_1A957CE48();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1A93B6054(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1A93D9130(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1A93D9130(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A957CE48();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1A957CE48();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A93B744C(&qword_1EB386E48, &qword_1EB386E40, &unk_1A9589CE0);
          for (i = 0; i != v6; ++i)
          {
            sub_1A937829C(&qword_1EB386E40, &unk_1A9589CE0);
            v9 = sub_1A93B62EC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1A957B768();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1A93D92D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&qword_1EB386E68, &unk_1A9589D00);
    v3 = sub_1A957D128();
    for (i = a1 + 32; ; i += 40)
    {
      sub_1A9391BAC(i, &v11, &qword_1EB386E58, &qword_1A9589CF0);
      v5 = v11;
      result = sub_1A93D8830(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1A93981D4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A93D93FC()
{
  v1 = v0;
  v2 = *(sub_1A937829C(&qword_1EB386E60, &qword_1A9589CF8) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v1 + 24);
  sub_1A957B848();
  swift_beginAccess();
  v6 = *(v5 + 16);

  v7 = sub_1A957B838();

  if (v7)
  {
    sub_1A937829C(&qword_1EB386E60, &qword_1A9589CF8);
    return sub_1A957C5C8();
  }

  else
  {
    sub_1A93D7B08();
    swift_allocError();
    *v9 = 4;
    sub_1A937829C(&qword_1EB386E60, &qword_1A9589CF8);
    return sub_1A957C5B8();
  }
}

void type metadata accessor for TTSAssetProperty()
{
  if (!qword_1EB386258)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB386258);
    }
  }
}

uint64_t sub_1A93D95A4()
{
  v22 = *(*(sub_1A937829C(&qword_1EB386E70, &unk_1A9589D10) - 8) + 80);
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v24 = v0[4];
  v4 = sub_1A957B848();
  swift_beginAccess();
  v5 = *(v2 + 16);

  v25 = v4;
  v6 = sub_1A957B788();

  if (v6 >> 62)
  {
LABEL_26:
    v26 = v6 & 0xFFFFFFFFFFFFFF8;
    v7 = sub_1A957CE48();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_27:
    v23 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

  v26 = v6 & 0xFFFFFFFFFFFFFF8;
  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_27;
  }

LABEL_3:
  v8 = 0;
  v23 = MEMORY[0x1E69E7CC0];
  do
  {
    v9 = v8;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1AC585DE0](v9, v6);
      }

      else
      {
        if (v9 >= *(v26 + 16))
        {
          goto LABEL_25;
        }

        v10 = *(v6 + 8 * v9 + 32);
      }

      v11 = v10;
      v8 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v12 = [v25 assistantVoiceMaps];
      v13 = sub_1A957B7C8();

      sub_1A957B7E8();
      v14 = sub_1A957C1A8();
      v16 = v15;

      if (*(v13 + 16))
      {
        sub_1A937A490(v14, v16);
        v18 = v17;

        if (v18)
        {

          sub_1A93847E0(__src);
          goto LABEL_14;
        }
      }

      else
      {
      }

      sub_1A94A3F1C(v11, v24, v3, __src);
LABEL_14:
      memcpy(__dst, __src, sizeof(__dst));
      if (sub_1A932D058(__dst) != 1)
      {
        break;
      }

      memcpy(v28, __src, sizeof(v28));
      sub_1A937B960(v28, &unk_1EB387BC0, &qword_1A9587E30);
      ++v9;
      if (v8 == v7)
      {
        goto LABEL_28;
      }
    }

    memcpy(v28, __src, sizeof(v28));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1A93A3558(0, *(v23 + 2) + 1, 1, v23);
    }

    v20 = *(v23 + 2);
    v19 = *(v23 + 3);
    if (v20 >= v19 >> 1)
    {
      v23 = sub_1A93A3558((v19 > 1), v20 + 1, 1, v23);
    }

    memcpy(v27, v28, sizeof(v27));
    *(v23 + 2) = v20 + 1;
    memcpy(&v23[280 * v20 + 32], v27, 0x118uLL);
  }

  while (v8 != v7);
LABEL_28:

  __src[0] = v23;
  sub_1A937829C(&qword_1EB386E70, &unk_1A9589D10);
  return sub_1A957C5C8();
}

uint64_t sub_1A93D9964(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A93D99EC()
{
  v0 = sub_1A957BC88();
  sub_1A9377618(v0, qword_1EB389268);
  sub_1A937731C(v0, qword_1EB389268);
  return sub_1A957BC78();
}

uint64_t VoiceDatabaseError.hashValue.getter()
{
  v1 = *v0;
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](v1);
  return sub_1A957D548();
}

uint64_t VoiceDatabase.Context.hashValue.getter()
{
  v1 = *v0;
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](v1);
  return sub_1A957D548();
}

uint64_t sub_1A93D9B94@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A937829C(&qword_1EB386E78, qword_1A9589E60);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v16[-v10];
  v12 = OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase____lazy_storage___currentBootTime;
  swift_beginAccess();
  sub_1A9391BAC(v1 + v12, v11, &qword_1EB386E78, qword_1A9589E60);
  v13 = sub_1A957B078();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return (*(v14 + 32))(a1, v11, v13);
  }

  sub_1A937B960(v11, &qword_1EB386E78, qword_1A9589E60);
  sub_1A94A9510();
  (*(v14 + 16))(v8, a1, v13);
  (*(v14 + 56))(v8, 0, 1, v13);
  swift_beginAccess();
  sub_1A93D9D80(v8, v1 + v12);
  return swift_endAccess();
}

uint64_t sub_1A93D9D80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB386E78, qword_1A9589E60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A93D9DF0(uint64_t a1)
{
  v3 = sub_1A937829C(&qword_1EB386E78, qword_1A9589E60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v12 - v6;
  v8 = sub_1A957B078();
  v9 = *(v8 - 8);
  (*(v9 + 32))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase____lazy_storage___currentBootTime;
  swift_beginAccess();
  sub_1A93D9D80(v7, v1 + v10);
  return swift_endAccess();
}

void (*sub_1A93D9F18(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = *(*(sub_1A937829C(&qword_1EB386E78, qword_1A9589E60) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[7] = v7;
  v8 = sub_1A957B078();
  v5[8] = v8;
  v9 = *(v8 - 8);
  v5[9] = v9;
  if (v3)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v5[10] = v10;
  sub_1A93D9B94(v10);
  return sub_1A93DA038;
}

void sub_1A93DA038(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 56);
  v6 = *(*a1 + 64);
  v7 = *(*a1 + 48);
  if (a2)
  {
    (*(v3 + 16))(v2[7], v2[10], v2[8]);
    (*(v3 + 56))(v5, 0, 1, v6);
    v8 = OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase____lazy_storage___currentBootTime;
    swift_beginAccess();
    sub_1A93D9D80(v5, v7 + v8);
    swift_endAccess();
    (*(v3 + 8))(v4, v6);
  }

  else
  {
    (*(v3 + 32))(v2[7], v2[10], v2[8]);
    (*(v3 + 56))(v5, 0, 1, v6);
    v9 = OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase____lazy_storage___currentBootTime;
    swift_beginAccess();
    sub_1A93D9D80(v5, v7 + v9);
    swift_endAccess();
  }

  free(v4);
  free(v5);

  free(v2);
}

uint64_t sub_1A93DA1B0()
{
  v0 = swift_allocObject();
  sub_1A93E9DFC();
  return v0;
}

uint64_t sub_1A93DA244@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  return result;
}

uint64_t sub_1A93DA290(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 192);

  return v3(v4);
}

uint64_t sub_1A93DA2E4()
{
  v1 = OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase____lazy_storage___scheduler;
  if (*(v0 + OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase____lazy_storage___scheduler))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase____lazy_storage___scheduler);
  }

  else
  {
    v3 = sub_1A94A8B3C();
    swift_beginAccess();
    v2 = *v3;
    v4 = *(v0 + v1);
    *(v0 + v1) = v2;
    swift_retain_n();
  }

  return v2;
}

uint64_t sub_1A93DA36C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase____lazy_storage___scheduler);
  *(v1 + OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase____lazy_storage___scheduler) = a1;
}

uint64_t (*sub_1A93DA384(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_1A93DA2E4();
  return sub_1A93DA3CC;
}

uint64_t sub_1A93DA3D8()
{
  v1 = OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase____lazy_storage___store;
  if (*(v0 + OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase____lazy_storage___store))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase____lazy_storage___store);
  }

  else
  {
    type metadata accessor for SQLiteVoiceBackingStore();
    v3 = v0;
    v2 = SQLiteVoiceBackingStore.__allocating_init(readOnly:)(*(v0 + OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase_context));
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1A93DA458(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase____lazy_storage___store);
  *(v1 + OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase____lazy_storage___store) = a1;
}

uint64_t (*sub_1A93DA470(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_1A93DA3D8();
  return sub_1A93DA4B8;
}

uint64_t sub_1A93DA4C4(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(v3 + *a3);
  *(v3 + *a3) = v4;
}

uint64_t VoiceDatabase.__allocating_init(additionalLoaders:context:)(void *a1, char *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  VoiceDatabase.init(additionalLoaders:context:)(a1, a2);
  return v7;
}

uint64_t VoiceDatabase.init(additionalLoaders:context:)(void *a1, char *a2)
{
  v3 = v2;
  v66 = *a2;
  swift_defaultActor_initialize();
  v5 = OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase____lazy_storage___currentBootTime;
  v6 = sub_1A957B078();
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase_debouncer;
  type metadata accessor for Debouncer();
  *(v2 + v7) = sub_1A94B8ED8(0.05);
  v8 = OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase_prefs;
  type metadata accessor for VoiceDatabase.Preferences();
  v9 = swift_allocObject();
  sub_1A93E9DFC();
  *(v3 + v8) = v9;
  v10 = OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase_executor;
  type metadata accessor for TTSExecutor();
  *(v3 + v10) = TTSExecutor.__allocating_init()();
  *(v3 + OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase____lazy_storage___scheduler) = 0;
  *(v3 + OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase____lazy_storage___store) = 0;
  v11 = OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase_eventHandlers;
  v67 = v3;
  *(v3 + v11) = sub_1A93EDF30(MEMORY[0x1E69E7CC0]);
  LODWORD(v11) = TTSIsBaseSystem();
  sub_1A937829C(&qword_1EB386E80, &qword_1A9596E30);
  v12 = swift_allocObject();
  if (v11)
  {
    *(v12 + 16) = xmmword_1A9587160;
    v13 = type metadata accessor for AXOnDiskVoiceLoader();
    v14 = AXOnDiskVoiceLoader.__allocating_init()();
    *(v12 + 56) = v13;
    *(v12 + 64) = &protocol witness table for AXOnDiskVoiceLoader;
    *(v12 + 32) = v14;
  }

  else
  {
    *(v12 + 16) = xmmword_1A9589E30;
    v15 = type metadata accessor for AXOnDiskVoiceLoader();
    v16 = AXOnDiskVoiceLoader.__allocating_init()();
    *(v12 + 56) = v15;
    *(v12 + 64) = &protocol witness table for AXOnDiskVoiceLoader;
    *(v12 + 32) = v16;
    v17 = type metadata accessor for AXVoiceLoader();
    v18 = AXVoiceLoader.__allocating_init()();
    *(v12 + 96) = v17;
    *(v12 + 104) = &protocol witness table for AXVoiceLoader;
    *(v12 + 72) = v18;
    v19 = type metadata accessor for SiriVoiceLoader();
    sub_1A9387478(0, &qword_1EB3863A8, 0x1E69D3340);
    v20 = sub_1A957CB88();
    v21 = sub_1A93D21B4();
    v22 = sub_1A938983C();
    v23 = SiriVoiceLoader.__allocating_init(technology:type:priority:)(v20, v21, v22);
    *(v12 + 136) = v19;
    *(v12 + 144) = &protocol witness table for SiriVoiceLoader;
    *(v12 + 112) = v23;
    v24 = sub_1A957CBB8();
    v25 = sub_1A93D21B4();
    v26 = sub_1A938983C();
    v27 = SiriVoiceLoader.__allocating_init(technology:type:priority:)(v24, v25, v26);
    *(v12 + 176) = v19;
    *(v12 + 184) = &protocol witness table for SiriVoiceLoader;
    *(v12 + 152) = v27;
    v28 = sub_1A957CB98();
    v29 = sub_1A93D21B4();
    v30 = sub_1A938983C();
    v31 = SiriVoiceLoader.__allocating_init(technology:type:priority:)(v28, v29, v30);
    *(v12 + 216) = v19;
    *(v12 + 224) = &protocol witness table for SiriVoiceLoader;
    *(v12 + 192) = v31;
    v32 = sub_1A957CBA8();
    v33 = sub_1A93D21B4();
    v34 = sub_1A938983C();
    v35 = SiriVoiceLoader.__allocating_init(technology:type:priority:)(v32, v33, v34);
    *(v12 + 256) = v19;
    *(v12 + 264) = &protocol witness table for SiriVoiceLoader;
    *(v12 + 232) = v35;
    v36 = sub_1A957CB78();
    sub_1A9387478(0, &qword_1EB3863B0, 0x1E69D3348);
    v37 = sub_1A957CA38();
    v38 = sub_1A938983C();
    v39 = SiriVoiceLoader.__allocating_init(technology:type:priority:)(v36, v37, v38);
    *(v12 + 296) = v19;
    *(v12 + 304) = &protocol witness table for SiriVoiceLoader;
    *(v12 + 272) = v39;
  }

  v69[0] = v12;
  sub_1A93E30D4(a1);
  v40 = v12;
  v41 = sub_1A93EE028(MEMORY[0x1E69E7CC0]);
  v42 = *(v12 + 16);
  if (!v42)
  {
LABEL_19:

    result = v67;
    *(v67 + OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase_loaderMap) = v41;
    *(v67 + OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase_context) = v66;
    return result;
  }

  v43 = 0;
  v44 = v12 + 32;
  while (v43 < *(v40 + 16))
  {
    sub_1A9379534(v44, v69);
    v47 = v70;
    v48 = v71;
    sub_1A93780F4(v69, v70);
    v49 = (*(v48 + 8))(v47, v48);
    v51 = v50;
    sub_1A9379534(v69, v68);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = sub_1A937A490(v49, v51);
    v55 = v41[2];
    v56 = (v54 & 1) == 0;
    v57 = __OFADD__(v55, v56);
    v58 = v55 + v56;
    if (v57)
    {
      goto LABEL_21;
    }

    v59 = v54;
    if (v41[3] < v58)
    {
      sub_1A93EBBA0(v58, isUniquelyReferenced_nonNull_native, &qword_1EB386F58, &qword_1A958A798, sub_1A93F0F10);
      v53 = sub_1A937A490(v49, v51);
      if ((v59 & 1) != (v60 & 1))
      {
        goto LABEL_23;
      }

LABEL_14:
      if (v59)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    v64 = v53;
    sub_1A93ED248(&qword_1EB386F58, &qword_1A958A798, sub_1A93F0F10);
    v53 = v64;
    if (v59)
    {
LABEL_6:
      v45 = v53;

      v46 = (v41[7] + 40 * v45);
      sub_1A9378138(v46);
      sub_1A932D070(v68, v46);
      goto LABEL_7;
    }

LABEL_15:
    v41[(v53 >> 6) + 8] |= 1 << v53;
    v61 = (v41[6] + 16 * v53);
    *v61 = v49;
    v61[1] = v51;
    sub_1A932D070(v68, v41[7] + 40 * v53);
    v62 = v41[2];
    v57 = __OFADD__(v62, 1);
    v63 = v62 + 1;
    if (v57)
    {
      goto LABEL_22;
    }

    v41[2] = v63;
LABEL_7:
    ++v43;
    sub_1A9378138(v69);
    v44 += 40;
    if (v42 == v43)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1A957D438();
  __break(1u);
  return result;
}

uint64_t sub_1A93DAB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1A932D070(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1A93EC738(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_1A937B960(a1, &qword_1EB386E88, &unk_1A9589E78);
    sub_1A93EB2E0(a2, a3, v10);

    return sub_1A937B960(v10, &qword_1EB386E88, &unk_1A9589E78);
  }

  return result;
}

uint64_t sub_1A93DAC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1A937829C(&qword_1EB386E78, qword_1A9589E60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v21 - v10;
  v12 = sub_1A957B078();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1, v12) == 1)
  {
    sub_1A937B960(a1, &qword_1EB386E78, qword_1A9589E60);
    sub_1A93EB3B0(a2, a3, v11);

    return sub_1A937B960(v11, &qword_1EB386E78, qword_1A9589E60);
  }

  else
  {
    (*(v13 + 32))(v17, a1, v12);
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_1A93EC8D8(v17, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v22;
  }

  return result;
}

uint64_t sub_1A93DAE2C(uint64_t a1)
{
  v2[45] = a1;
  v2[46] = v1;
  v3 = sub_1A957BC88();
  v2[47] = v3;
  v4 = *(v3 - 8);
  v2[48] = v4;
  v5 = *(v4 + 64) + 15;
  v2[49] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A93DAEEC, v1, 0);
}

uint64_t sub_1A93DAEEC()
{
  v68 = v0;
  v1 = *(v0 + 360);
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_29:
    v60 = *(v0 + 392);

    v61 = *(v0 + 8);

    return v61();
  }

  v3 = *(v0 + 384);
  v4 = v1 + 32;
  v63 = (v3 + 16);
  v65 = *(**(v0 + 368) + 232);
  v64 = (v3 + 8);
  while (1)
  {
    v5 = *(v0 + 368);
    sub_1A9379534(v4, v0 + 88);
    v6 = *(v0 + 112);
    v7 = *(v0 + 120);
    sub_1A93780F4((v0 + 88), v6);
    v8 = (*(v7 + 8))(v6, v7);
    v10 = v9;
    v11 = v65();
    if (!*(v11 + 16))
    {
      break;
    }

    v12 = sub_1A937A490(v8, v10);
    v14 = v13;

    if ((v14 & 1) == 0)
    {
      goto LABEL_9;
    }

    sub_1A9379534(*(v11 + 56) + 40 * v12, v0 + 128);

    sub_1A937B960(v0 + 128, &qword_1EB386E88, &unk_1A9589E78);
LABEL_4:
    sub_1A9378138((v0 + 88));
    v4 += 40;
    if (!--v2)
    {
      goto LABEL_29;
    }
  }

LABEL_9:

  v15 = *(v0 + 368);
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0;
  sub_1A937B960(v0 + 128, &qword_1EB386E88, &unk_1A9589E78);
  sub_1A937829C(&qword_1EB386E80, &qword_1A9596E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A9587160;
  sub_1A9379534(v0 + 88, inited + 32);
  sub_1A93DF6C4(inited);
  swift_setDeallocating();
  sub_1A9378138((inited + 32));
  if (qword_1EB389260 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 392);
  v18 = *(v0 + 376);
  v19 = sub_1A937731C(v18, qword_1EB389268);
  (*v63)(v17, v19, v18);
  sub_1A9379534(v0 + 88, v0 + 168);
  v20 = sub_1A957BC68();
  v21 = sub_1A957CA58();
  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 392);
  v24 = *(v0 + 376);
  v66 = v2;
  if (v22)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v67 = v26;
    *v25 = 136315138;
    v28 = *(v0 + 192);
    v27 = *(v0 + 200);
    sub_1A93780F4((v0 + 168), v28);
    v62 = v23;
    v29 = (*(v27 + 8))(v28, v27);
    v31 = v30;
    sub_1A9378138((v0 + 168));
    v32 = sub_1A937A5C0(v29, v31, &v67);

    *(v25 + 4) = v32;
    _os_log_impl(&dword_1A9324000, v20, v21, "Adding loader with id %s", v25, 0xCu);
    sub_1A9378138(v26);
    MEMORY[0x1AC587CD0](v26, -1, -1);
    MEMORY[0x1AC587CD0](v25, -1, -1);

    (*v64)(v62, v24);
  }

  else
  {

    (*v64)(v23, v24);
    sub_1A9378138((v0 + 168));
  }

  v33 = *(v0 + 368);
  v34 = *(v0 + 112);
  v35 = *(v0 + 120);
  sub_1A93780F4((v0 + 88), v34);
  v36 = (*(v35 + 8))(v34, v35);
  v38 = v37;
  sub_1A9379534(v0 + 88, v0 + 208);
  v39 = (*(*v33 + 248))(v0 + 328);
  v41 = v40;
  if (!*(v0 + 232))
  {
    sub_1A937B960(v0 + 208, &qword_1EB386E88, &unk_1A9589E78);
    sub_1A93EB2E0(v36, v38, v0 + 248);

    sub_1A937B960(v0 + 248, &qword_1EB386E88, &unk_1A9589E78);
LABEL_28:
    v2 = v66;
    v39();
    goto LABEL_4;
  }

  sub_1A932D070((v0 + 208), v0 + 288);
  v42 = *v41;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v67 = *v41;
  v44 = v67;
  *v41 = 0x8000000000000000;
  v46 = sub_1A937A490(v36, v38);
  v47 = *(v44 + 16);
  v48 = (v45 & 1) == 0;
  result = v47 + v48;
  if (__OFADD__(v47, v48))
  {
    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  v50 = v45;
  if (*(v44 + 24) >= result)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v45)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_1A93ED248(&qword_1EB386F58, &qword_1A958A798, sub_1A93F0F10);
      if (v50)
      {
        goto LABEL_23;
      }
    }

LABEL_25:
    v53 = v67;
    v67[(v46 >> 6) + 8] |= 1 << v46;
    v55 = (v53[6] + 16 * v46);
    *v55 = v36;
    v55[1] = v38;
    result = sub_1A932D070((v0 + 288), v53[7] + 40 * v46);
    v56 = v53[2];
    v57 = __OFADD__(v56, 1);
    v58 = v56 + 1;
    if (v57)
    {
      goto LABEL_36;
    }

    v53[2] = v58;
    goto LABEL_27;
  }

  sub_1A93EBBA0(result, isUniquelyReferenced_nonNull_native, &qword_1EB386F58, &qword_1A958A798, sub_1A93F0F10);
  v51 = sub_1A937A490(v36, v38);
  if ((v50 & 1) == (v52 & 1))
  {
    v46 = v51;
    if ((v50 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_23:

    v53 = v67;
    v54 = (v67[7] + 40 * v46);
    sub_1A9378138(v54);
    sub_1A932D070((v0 + 288), v54);
LABEL_27:
    v59 = *v41;
    *v41 = v53;

    goto LABEL_28;
  }

  return sub_1A957D438();
}

uint64_t sub_1A93DB5D8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A93DB5F8, v1, 0);
}

uint64_t sub_1A93DB5F8()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_1A93F0AAC(&qword_1EB386160, 255, type metadata accessor for VoiceDatabase);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E69E88A0] + 4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1A93DB720;

  return MEMORY[0x1EEE6DD58]();
}

uint64_t sub_1A93DB720()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_1A93DB844;
  }

  else
  {
    v7 = *(v2 + 24);
    v6 = *(v2 + 32);

    v5 = sub_1A93F0F04;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1A93DB844()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_1A93DB8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[25] = a3;
  v4[26] = a4;
  v4[24] = a2;
  v6 = *(*(sub_1A937829C(&qword_1EB388000, &qword_1A9587710) - 8) + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v7 = sub_1A957B078();
  v4[29] = v7;
  v8 = *(v7 - 8);
  v4[30] = v8;
  v9 = *(v8 + 64) + 15;
  v4[31] = swift_task_alloc();
  v10 = sub_1A937829C(&qword_1EB386F30, &qword_1A958A730);
  v4[32] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v4[33] = swift_task_alloc();
  v12 = *(*(sub_1A937829C(&qword_1EB386E78, qword_1A9589E60) - 8) + 64) + 15;
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A93DBA40, a4, 0);
}

uint64_t sub_1A93DBA40()
{
  v1 = *(v0 + 200);
  v2 = *(v1 + 16);
  if (v2)
  {
    v69 = *(v0 + 256);
    v3 = *(v0 + 240);
    v66 = (v3 + 48);
    v67 = (v3 + 56);
    v60 = (v3 + 32);
    v61 = v3;
    v63 = (v3 + 8);
    v4 = (v1 + 40);
    v68 = *(v0 + 208);
    v5 = *(*v68 + 232);
    v64 = OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase_prefs;
    v65 = v5;
    while (1)
    {
      v6 = *(v0 + 208);
      v8 = *(v4 - 1);
      v7 = *v4;

      v10 = v5(v9);
      if (!*(v10 + 16) || (v11 = sub_1A937A490(v8, v7), (v12 & 1) == 0))
      {

        goto LABEL_4;
      }

      sub_1A9379534(*(v10 + 56) + 40 * v11, v0 + 56);

      v13 = sub_1A932D070((v0 + 56), v0 + 16);
      v14 = (*(**(v68 + v64) + 184))(v13);
      if (!*(v14 + 16))
      {
        break;
      }

      v15 = sub_1A937A490(v8, v7);
      v17 = v16;

      if ((v17 & 1) == 0)
      {
        goto LABEL_11;
      }

      (*(v61 + 16))(*(v0 + 288), *(v14 + 56) + *(v61 + 72) * v15, *(v0 + 232));
      v18 = 0;
LABEL_12:

      v20 = *(v0 + 280);
      v19 = *(v0 + 288);
      v21 = *(v0 + 264);
      v22 = *(v0 + 232);
      v23 = *(v0 + 208);
      v24 = *v67;
      v25 = (*v67)(v19, v18, 1, v22);
      (*(*v23 + 160))(v25);
      v24(v20, 0, 1, v22);
      v26 = *(v69 + 48);
      sub_1A9391BAC(v19, v21, &qword_1EB386E78, qword_1A9589E60);
      sub_1A9391BAC(v20, v21 + v26, &qword_1EB386E78, qword_1A9589E60);
      v27 = *v66;
      v28 = (*v66)(v21, 1, v22);
      v29 = *(v0 + 232);
      if (v28 == 1)
      {
        v30 = *(v0 + 288);
        sub_1A937B960(*(v0 + 280), &qword_1EB386E78, qword_1A9589E60);
        sub_1A937B960(v30, &qword_1EB386E78, qword_1A9589E60);
        if (v27(v21 + v26, 1, v29) != 1)
        {
          goto LABEL_17;
        }

        sub_1A937B960(*(v0 + 264), &qword_1EB386E78, qword_1A9589E60);
      }

      else
      {
        sub_1A9391BAC(*(v0 + 264), *(v0 + 272), &qword_1EB386E78, qword_1A9589E60);
        v31 = v27(v21 + v26, 1, v29);
        v33 = *(v0 + 280);
        v32 = *(v0 + 288);
        v34 = *(v0 + 272);
        if (v31 == 1)
        {
          v35 = *(v0 + 232);
          sub_1A937B960(*(v0 + 280), &qword_1EB386E78, qword_1A9589E60);
          sub_1A937B960(v32, &qword_1EB386E78, qword_1A9589E60);
          (*v63)(v34, v35);
LABEL_17:
          sub_1A937B960(*(v0 + 264), &qword_1EB386F30, &qword_1A958A730);
LABEL_18:
          v37 = *(v0 + 216);
          v36 = *(v0 + 224);
          v38 = *(v0 + 208);
          v39 = sub_1A957C688();
          v40 = *(v39 - 8);
          (*(v40 + 56))(v36, 1, 1, v39);
          sub_1A9379534(v0 + 16, v0 + 96);
          v41 = swift_allocObject();
          v41[2] = 0;
          v42 = v41 + 2;
          v41[3] = 0;
          v41[4] = v38;
          sub_1A932D070((v0 + 96), (v41 + 5));
          sub_1A9391BAC(v36, v37, &qword_1EB388000, &qword_1A9587710);
          LODWORD(v36) = (*(v40 + 48))(v37, 1, v39);

          v43 = *(v0 + 216);
          if (v36 == 1)
          {
            sub_1A937B960(*(v0 + 216), &qword_1EB388000, &qword_1A9587710);
            if (*v42)
            {
              goto LABEL_20;
            }

LABEL_22:
            v45 = 0;
            v47 = 0;
          }

          else
          {
            sub_1A957C678();
            (*(v40 + 8))(v43, v39);
            if (!*v42)
            {
              goto LABEL_22;
            }

LABEL_20:
            v44 = v41[3];
            swift_getObjectType();
            swift_unknownObjectRetain();
            v45 = sub_1A957C5A8();
            v47 = v46;
            swift_unknownObjectRelease();
          }

          v5 = v65;
          v48 = **(v0 + 192);

          if (v47 | v45)
          {
            v49 = v0 + 136;
            *(v0 + 136) = 0;
            *(v0 + 144) = 0;
            *(v0 + 152) = v45;
            *(v0 + 160) = v47;
          }

          else
          {
            v49 = 0;
          }

          v54 = *(v0 + 224);
          *(v0 + 168) = 1;
          *(v0 + 176) = v49;
          *(v0 + 184) = v48;
          swift_task_create();

          sub_1A937B960(v54, &qword_1EB388000, &qword_1A9587710);
          sub_1A9378138((v0 + 16));
          goto LABEL_4;
        }

        v62 = *(v0 + 264);
        v50 = *(v0 + 248);
        v51 = *(v0 + 232);
        (*v60)(v50, v21 + v26, v51);
        sub_1A93F0AAC(&qword_1EB386248, 255, MEMORY[0x1E6969530]);
        v52 = sub_1A957C098();
        v53 = *v63;
        (*v63)(v50, v51);
        sub_1A937B960(v33, &qword_1EB386E78, qword_1A9589E60);
        sub_1A937B960(v32, &qword_1EB386E78, qword_1A9589E60);
        v53(v34, v51);
        sub_1A937B960(v62, &qword_1EB386E78, qword_1A9589E60);
        if ((v52 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      sub_1A9378138((v0 + 16));
      v5 = v65;
LABEL_4:
      v4 += 2;
      if (!--v2)
      {
        goto LABEL_29;
      }
    }

LABEL_11:
    v18 = 1;
    goto LABEL_12;
  }

LABEL_29:
  v55 = *(v0 + 208);
  v56 = sub_1A93F0AAC(&qword_1EB386160, 255, type metadata accessor for VoiceDatabase);
  v57 = swift_task_alloc();
  *(v0 + 296) = v57;
  *v57 = v0;
  v57[1] = sub_1A93DC204;
  v58 = *(v0 + 192);

  return sub_1A93DC470(v55, v56);
}

uint64_t sub_1A93DC204()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 288);
  v3 = *(*v0 + 280);
  v4 = *(*v0 + 272);
  v5 = *(*v0 + 264);
  v6 = *(*v0 + 248);
  v7 = *(*v0 + 224);
  v8 = *(*v0 + 216);
  v11 = *v0;

  v9 = *(v11 + 8);

  return v9();
}

uint64_t sub_1A93DC3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1A93F0EFC;

  return sub_1A93E0A40(a5);
}

uint64_t sub_1A93DC470(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = sub_1A957C5A8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A93DC504, v4, v6);
}

uint64_t sub_1A93DC504()
{
  *(v0 + 56) = **(v0 + 32);
  *(v0 + 64) = sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
  if (sub_1A957C7D8())
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 72) = 0;
    v3 = *(MEMORY[0x1E69E8708] + 4);
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    v5 = sub_1A937829C(&qword_1EB386F38, &unk_1A958A750);
    *v4 = v0;
    v4[1] = sub_1A93DC63C;
    v6 = *(v0 + 24);
    v7 = *(v0 + 32);
    v8 = *(v0 + 16);

    return MEMORY[0x1EEE6DAC8](v0 + 96, v8, v6, v5);
  }
}

uint64_t sub_1A93DC63C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = *(v2 + 48);
    v6 = sub_1A93DC888;
  }

  else
  {
    *(v2 + 97) = *(v2 + 96);
    v4 = *(v2 + 40);
    v5 = *(v2 + 48);
    v6 = sub_1A93DC758;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1A93DC758()
{
  if (*(v0 + 97))
  {
    v1 = *(v0 + 64);
    v2 = *(v0 + 72);
    v3 = *(v0 + 56);
    if (sub_1A957C7D8())
    {
      if (v2)
      {
        swift_willThrow();
      }

      v4 = *(v0 + 8);

      return v4();
    }

    *(v0 + 72) = v2;
  }

  v6 = *(MEMORY[0x1E69E8708] + 4);
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  v8 = sub_1A937829C(&qword_1EB386F38, &unk_1A958A750);
  *v7 = v0;
  v7[1] = sub_1A93DC63C;
  v9 = *(v0 + 24);
  v10 = *(v0 + 32);
  v11 = *(v0 + 16);

  return MEMORY[0x1EEE6DAC8](v0 + 96, v11, v9, v8);
}

uint64_t sub_1A93DC888()
{
  v1 = v0[11];
  if (v0[9])
  {

    v1 = v0[9];
  }

  v2 = v0[7];
  v3 = v0[8];
  if (sub_1A957C7D8())
  {
    if (v1)
    {
      swift_willThrow();
    }

    v4 = v0[1];

    return v4();
  }

  else
  {
    v0[9] = v1;
    v6 = *(MEMORY[0x1E69E8708] + 4);
    v7 = swift_task_alloc();
    v0[10] = v7;
    v8 = sub_1A937829C(&qword_1EB386F38, &unk_1A958A750);
    *v7 = v0;
    v7[1] = sub_1A93DC63C;
    v9 = v0[3];
    v10 = v0[4];
    v11 = v0[2];

    return MEMORY[0x1EEE6DAC8](v0 + 12, v11, v9, v8);
  }
}

uint64_t sub_1A93DC9E4()
{
  v1 = (*(**(v0 + 136) + 232))();
  v2 = v1;
  v3 = 0;
  v4 = v1 + 64;
  v5 = -1;
  v6 = -1 << *(v1 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v1 + 64);
  v8 = (63 - v6) >> 6;
  v9 = MEMORY[0x1E69E7CC0];
  for (*(v0 + 144) = MEMORY[0x1E69E7CC0]; v7; *(v0 + 144) = v9)
  {
LABEL_10:
    while (1)
    {
      v11 = *(v0 + 136);
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      sub_1A9379534(*(v2 + 56) + 40 * (v12 | (v3 << 6)), v0 + 56);
      sub_1A932D070((v0 + 56), v0 + 16);
      if (sub_1A93DCDF0((v0 + 16), v11))
      {
        break;
      }

      sub_1A9378138((v0 + 16));
      *(v0 + 144) = v9;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    sub_1A932D070((v0 + 16), v0 + 96);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1A93ED5A8(0, *(v9 + 16) + 1, 1);
    }

    v14 = *(v9 + 16);
    v13 = *(v9 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1A93ED5A8((v13 > 1), v14 + 1, 1);
    }

    *(v9 + 16) = v14 + 1;
    sub_1A932D070((v0 + 96), v9 + 40 * v14 + 32);
  }

  while (1)
  {
LABEL_6:
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return MEMORY[0x1EEE6DD58]();
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v10);
    ++v3;
    if (v7)
    {
      v3 = v10;
      goto LABEL_10;
    }
  }

  v15 = *(v0 + 136);

  sub_1A93F0AAC(&qword_1EB386160, 255, type metadata accessor for VoiceDatabase);
  v16 = swift_task_alloc();
  *(v0 + 152) = v16;
  *(v16 + 16) = v9;
  *(v16 + 24) = v15;
  v17 = *(MEMORY[0x1E69E88A0] + 4);
  v18 = swift_task_alloc();
  *(v0 + 160) = v18;
  *v18 = v0;
  v18[1] = sub_1A93DCCA8;

  return MEMORY[0x1EEE6DD58]();
}

void sub_1A93DCCA8()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[18];
    v6 = v2[19];
    v7 = v2[17];

    MEMORY[0x1EEE6DFA0](sub_1A93F0F04, v7, 0);
  }
}

uint64_t sub_1A93DCDF0(void *a1, uint64_t a2)
{
  v4 = sub_1A957B078();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v47 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1A937829C(&qword_1EB386F30, &qword_1A958A730);
  v9 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49, v10);
  v12 = &v46 - v11;
  v13 = sub_1A937829C(&qword_1EB386E78, qword_1A9589E60);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v48 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v46 - v20;
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v46 - v23;
  v25 = *(a2 + OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase_prefs);
  v26 = a1[3];
  v27 = a1[4];
  sub_1A93780F4(a1, v26);
  v28 = (*(v27 + 8))(v26, v27);
  v30 = v29;
  v31 = (*(*v25 + 184))();
  if (*(v31 + 16))
  {
    v32 = sub_1A937A490(v28, v30);
    v34 = v33;

    if (v34)
    {
      (*(v5 + 16))(v24, *(v31 + 56) + *(v5 + 72) * v32, v4);

      v35 = *(v5 + 56);
      v36 = v35(v24, 0, 1, v4);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v35 = *(v5 + 56);
  v36 = v35(v24, 1, 1, v4);
LABEL_6:
  (*(*a2 + 160))(v36);
  v35(v21, 0, 1, v4);
  v37 = *(v49 + 48);
  sub_1A9391BAC(v24, v12, &qword_1EB386E78, qword_1A9589E60);
  sub_1A9391BAC(v21, &v12[v37], &qword_1EB386E78, qword_1A9589E60);
  v38 = *(v5 + 48);
  if (v38(v12, 1, v4) != 1)
  {
    v40 = v48;
    sub_1A9391BAC(v12, v48, &qword_1EB386E78, qword_1A9589E60);
    if (v38(&v12[v37], 1, v4) != 1)
    {
      v41 = v47;
      (*(v5 + 32))(v47, &v12[v37], v4);
      sub_1A93F0AAC(&qword_1EB386248, 255, MEMORY[0x1E6969530]);
      v42 = v40;
      v43 = sub_1A957C098();
      v44 = *(v5 + 8);
      v44(v41, v4);
      sub_1A937B960(v21, &qword_1EB386E78, qword_1A9589E60);
      sub_1A937B960(v24, &qword_1EB386E78, qword_1A9589E60);
      v44(v42, v4);
      sub_1A937B960(v12, &qword_1EB386E78, qword_1A9589E60);
      v39 = v43 ^ 1;
      return v39 & 1;
    }

    sub_1A937B960(v21, &qword_1EB386E78, qword_1A9589E60);
    sub_1A937B960(v24, &qword_1EB386E78, qword_1A9589E60);
    (*(v5 + 8))(v40, v4);
    goto LABEL_11;
  }

  sub_1A937B960(v21, &qword_1EB386E78, qword_1A9589E60);
  sub_1A937B960(v24, &qword_1EB386E78, qword_1A9589E60);
  if (v38(&v12[v37], 1, v4) != 1)
  {
LABEL_11:
    sub_1A937B960(v12, &qword_1EB386F30, &qword_1A958A730);
    v39 = 1;
    return v39 & 1;
  }

  sub_1A937B960(v12, &qword_1EB386E78, qword_1A9589E60);
  v39 = 0;
  return v39 & 1;
}

uint64_t sub_1A93DD364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[19] = a2;
  v6 = *(*(sub_1A937829C(&qword_1EB388000, &qword_1A9587710) - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A93DD414, a4, 0);
}

uint64_t sub_1A93DD414()
{
  v29 = v0;
  v1 = *(v0 + 160);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      sub_1A9379534(v3, v0 + 16);
      v6 = *(v0 + 40);
      v7 = *(v0 + 48);
      sub_1A93780F4((v0 + 16), v6);
      (*(v7 + 24))(&v28, v6, v7);
      v8 = v28;
      *(v0 + 192) = *sub_1A953C318();
      *(v0 + 196) = v8;
      sub_1A93F079C();
      if ((sub_1A957CD88() & 1) == 0)
      {
        v9 = *(v0 + 184);
        v26 = *(v0 + 176);
        v27 = v2;
        v10 = *(v0 + 168);
        v11 = sub_1A957C688();
        v12 = *(v11 - 8);
        (*(v12 + 56))(v9, 1, 1, v11);
        sub_1A9379534(v0 + 16, v0 + 56);
        v13 = swift_allocObject();
        v13[2] = 0;
        v14 = v13 + 2;
        v13[3] = 0;
        v13[4] = v10;
        sub_1A932D070((v0 + 56), (v13 + 5));
        sub_1A9391BAC(v9, v26, &qword_1EB388000, &qword_1A9587710);
        LODWORD(v9) = (*(v12 + 48))(v26, 1, v11);

        v15 = *(v0 + 176);
        if (v9 == 1)
        {
          sub_1A937B960(*(v0 + 176), &qword_1EB388000, &qword_1A9587710);
        }

        else
        {
          sub_1A957C678();
          (*(v12 + 8))(v15, v11);
        }

        v2 = v27;
        if (*v14)
        {
          v16 = v13[3];
          v17 = *v14;
          swift_getObjectType();
          swift_unknownObjectRetain();
          v18 = sub_1A957C5A8();
          v20 = v19;
          swift_unknownObjectRelease();
        }

        else
        {
          v18 = 0;
          v20 = 0;
        }

        v21 = **(v0 + 152);

        if (v20 | v18)
        {
          v4 = v0 + 96;
          *(v0 + 96) = 0;
          *(v0 + 104) = 0;
          *(v0 + 112) = v18;
          *(v0 + 120) = v20;
        }

        else
        {
          v4 = 0;
        }

        v5 = *(v0 + 184);
        *(v0 + 128) = 1;
        *(v0 + 136) = v4;
        *(v0 + 144) = v21;
        swift_task_create();

        sub_1A937B960(v5, &qword_1EB388000, &qword_1A9587710);
      }

      sub_1A9378138((v0 + 16));
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  v23 = *(v0 + 176);
  v22 = *(v0 + 184);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1A93DD788(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v4 = *(*(sub_1A937829C(&qword_1EB386E78, qword_1A9589E60) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v5 = sub_1A957BC88();
  v3[19] = v5;
  v6 = *(v5 - 8);
  v3[20] = v6;
  v7 = *(v6 + 64) + 15;
  v3[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A93DD884, v2, 0);
}

uint64_t sub_1A93DD884()
{
  v38 = v0;
  v1 = (*(**(v0 + 136) + 232))();
  if (*(v1 + 16) && (v2 = sub_1A937A490(*(v0 + 120), *(v0 + 128)), (v3 & 1) != 0))
  {
    sub_1A9379534(*(v1 + 56) + 40 * v2, v0 + 16);

    sub_1A937B960(v0 + 16, &qword_1EB386E88, &unk_1A9589E78);
    if (qword_1EB389260 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 160);
    v4 = *(v0 + 168);
    v6 = *(v0 + 152);
    v7 = *(v0 + 128);
    v8 = sub_1A937731C(v6, qword_1EB389268);
    (*(v5 + 16))(v4, v8, v6);

    v9 = sub_1A957BC68();
    v10 = sub_1A957CA58();

    v11 = os_log_type_enabled(v9, v10);
    v13 = *(v0 + 160);
    v12 = *(v0 + 168);
    v14 = *(v0 + 152);
    if (v11)
    {
      v16 = *(v0 + 120);
      v15 = *(v0 + 128);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v36[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_1A937A5C0(v16, v15, v36);
      _os_log_impl(&dword_1A9324000, v9, v10, "Evicting loader with id %s", v17, 0xCu);
      sub_1A9378138(v18);
      MEMORY[0x1AC587CD0](v18, -1, -1);
      MEMORY[0x1AC587CD0](v17, -1, -1);
    }

    (*(v13 + 8))(v12, v14);
    v20 = *(v0 + 128);
    v19 = *(v0 + 136);
    v21 = *(v0 + 120);
    v37 = 0;
    memset(v36, 0, sizeof(v36));
    v22 = *(*v19 + 248);

    v23 = v22(v0 + 56);
    sub_1A93DAB84(v36, v21, v20);
    v24 = v23(v0 + 56, 0);
    v25 = (*(*v19 + 208))(v24);
    *(v0 + 176) = v25;
    v26 = *(*v25 + 136);
    v35 = (v26 + *v26);
    v27 = v26[1];
    v28 = swift_task_alloc();
    *(v0 + 184) = v28;
    *v28 = v0;
    v28[1] = sub_1A93DDCA8;
    v30 = *(v0 + 120);
    v29 = *(v0 + 128);

    return v35(v30, v29);
  }

  else
  {

    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_1A937B960(v0 + 16, &qword_1EB386E88, &unk_1A9589E78);
    v32 = *(v0 + 168);
    v33 = *(v0 + 144);

    v34 = *(v0 + 8);

    return v34();
  }
}

uint64_t sub_1A93DDCA8()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;

  v5 = *(v2 + 176);
  v6 = *(v2 + 136);
  if (v0)
  {

    v7 = sub_1A93F0F1C;
  }

  else
  {

    v7 = sub_1A93DDE04;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}