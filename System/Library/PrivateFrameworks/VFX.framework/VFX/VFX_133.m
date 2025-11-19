double sub_1AFB45F5C()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED73B840;
  v4 = 0;
  v5 = 2;
  v6 = 0;
  v7 = 2;
  v8 = 0;

  sub_1AF702F3C(1, v1);

  result = *v1;
  xmmword_1ED7259E0 = v1[0];
  *algn_1ED7259F0 = v1[1];
  qword_1ED725A00 = v2;
  return result;
}

uint64_t sub_1AFB46024(uint64_t a1, uint64_t a2)
{
  v70 = *(a2 + 40);
  v6 = *(a2 + 56);
  v5 = *(a2 + 64);
  v8 = *(a2 + 72);
  v7 = *(a2 + 80);
  sub_1AF65C8F0(v7);
  v86 = v2;
  if (v7 >= 1 && v6)
  {
    v9 = 0;
    v77 = *(v8 + 32);
    v75 = *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v10 = *(a2 + 16);
    v82[0] = *a2;
    v82[1] = v10;
    v83 = *(a2 + 32);
    v69 = v6;
    do
    {
      v73 = v9;
      v11 = (v70 + 48 * v9);
      v72 = *v11;
      v71 = v11[1];
      v13 = *(v11 + 2);
      v12 = *(v11 + 3);
      v15 = *(v11 + 4);
      v14 = *(v11 + 5);
      if (v75)
      {
        v16 = *(v14 + 376);

        os_unfair_lock_lock(v16);
        os_unfair_lock_lock(*(v14 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v77);
      v17 = *(v8 + 64);
      v84[0] = *(v8 + 48);
      v84[1] = v17;
      v85 = *(v8 + 80);
      v18 = v14;
      v19 = *(*(*(*(v14 + 40) + 16) + 32) + 16) + 1;
      *(v8 + 48) = ecs_stack_allocator_allocate(*(v8 + 32), 48 * v19, 8);
      *(v8 + 56) = v19;
      *(v8 + 72) = 0;
      *(v8 + 80) = 0;
      *(v8 + 64) = 0;
      v20 = sub_1AF64B110(&type metadata for DrawCallComponent, &off_1F2560850, v13, v12, v15, v8);
      v21 = v20;
      if (v13)
      {
        for (; v15; --v15)
        {
          v26 = *v21;
          *(v26 + 16) = 3;
          *(v26 + 24) = 0;
          *(v26 + 32) = 0u;
          *(v26 + 48) = 0u;
          *(v26 + 64) = 0u;
          *(v26 + 80) = 0u;
          *(v26 + 96) = 1;
          *(v26 + 104) = 0u;
          *(v26 + 120) = 0u;
          *(v26 + 136) = 0u;
          *(v26 + 152) = 0;
          *(v26 + 160) = 0u;
          *(v26 + 176) = 0u;
          *(v26 + 192) = 0u;
          *(v26 + 208) = 0u;
          *(v26 + 224) = 0;
          if (*(*(v26 + 232) + 16))
          {
            swift_isUniquelyReferenced_nonNull_native();
            v81[0] = *(v26 + 232);
            *(v26 + 232) = 0x8000000000000000;
            sub_1AFB49F58();
            sub_1AFDFE4B8();
            *(v26 + 232) = v81[0];
          }

          sub_1AF8949C0(1);
          *(v26 + 352) = 0;
          *(v26 + 360) = 0;

          MEMORY[0x1B2718E00](v27);
          if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1AFDFD458();
          }

          sub_1AFDFD4B8();
          ++v21;
        }
      }

      else if (v72 != v71)
      {
        v22 = v71 - v72;
        v23 = (v20 + 8 * v72);
        do
        {
          v24 = *v23;
          *(v24 + 16) = 3;
          *(v24 + 24) = 0;
          *(v24 + 32) = 0u;
          *(v24 + 48) = 0u;
          *(v24 + 64) = 0u;
          *(v24 + 80) = 0u;
          *(v24 + 96) = 1;
          *(v24 + 104) = 0u;
          *(v24 + 120) = 0u;
          *(v24 + 136) = 0u;
          *(v24 + 152) = 0;
          *(v24 + 160) = 0u;
          *(v24 + 176) = 0u;
          *(v24 + 192) = 0u;
          *(v24 + 208) = 0u;
          *(v24 + 224) = 0;
          if (*(*(v24 + 232) + 16))
          {
            swift_isUniquelyReferenced_nonNull_native();
            v81[0] = *(v24 + 232);
            *(v24 + 232) = 0x8000000000000000;
            sub_1AFB49F58();
            sub_1AFDFE4B8();
            *(v24 + 232) = v81[0];
          }

          sub_1AF8949C0(1);
          *(v24 + 352) = 0;
          *(v24 + 360) = 0;

          MEMORY[0x1B2718E00](v25);
          if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1AFDFD458();
          }

          sub_1AFDFD4B8();
          ++v23;
          --v22;
        }

        while (v22);
      }

      v28 = v86;
      sub_1AF630994(v8, v82, v84);
      v86 = v28;
      sub_1AF62D29C(v18);
      ecs_stack_allocator_pop_snapshot(v77);
      if (v75)
      {
        os_unfair_lock_unlock(*(v18 + 344));
        os_unfair_lock_unlock(*(v18 + 376));
      }

      v9 = v73 + 1;
    }

    while (v73 + 1 != v69);
  }

  v29 = (a1 + 8);
  v30 = *(a1 + 8);
  v31 = 1 << *(v30 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v30 + 64);
  v34 = (v31 + 63) >> 6;

  v35 = 0;
  v36 = MEMORY[0x1E69E7CC0];
  while (v33)
  {
LABEL_39:
    v42 = (v35 << 9) | (8 * __clz(__rbit64(v33)));
    v43 = *(*(v30 + 48) + v42);
    v44 = *(*(v30 + 56) + v42);
    if (v44 >> 62)
    {
      v78 = v43;
      v45 = sub_1AFDFE108();
      v43 = v78;
      if (v45)
      {
LABEL_41:
        v76 = v36;
        goto LABEL_48;
      }
    }

    else if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_41;
    }

    v79 = v43;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_1AF4217DC(0, *(v36 + 2) + 1, 1, v36);
    }

    v47 = *(v36 + 2);
    v46 = *(v36 + 3);
    v43 = v79;
    if (v47 >= v46 >> 1)
    {
      v59 = sub_1AF4217DC(v46 > 1, v47 + 1, 1, v36);
      v43 = v79;
      v36 = v59;
    }

    *(v36 + 2) = v47 + 1;
    v76 = v36;
    *&v36[8 * v47 + 32] = v43;
LABEL_48:
    v33 &= v33 - 1;
    v80 = sub_1AF6B0CF0(v81, v43);
    v49 = *v48;
    if (!*v48)
    {
      goto LABEL_34;
    }

    v50 = v48;
    if (v49 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject(), v49 = *v50, (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0))
    {
      if (v49 >> 62)
      {
        v37 = sub_1AFDFE108();
        sub_1AFDFE108();
        sub_1AFDFE108();
        if (v37 < 1)
        {
          goto LABEL_61;
        }
      }

      else if (!(*((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
      {
LABEL_61:
        v38 = MEMORY[0x1E69E7CC0];
LABEL_33:
        *v50 = v38;

        goto LABEL_34;
      }

      sub_1AFB49E28(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v38 = swift_allocObject();
      v39 = j__malloc_size_0(v38);
      v40 = v39 - 32;
      if (v39 < 32)
      {
        v40 = v39 - 25;
      }

      v38[2] = 0;
      v38[3] = (2 * (v40 >> 3)) | 1;
      goto LABEL_33;
    }

    if (!(v49 >> 62))
    {
      v74 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_53:
      v52 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_54;
    }

    v74 = sub_1AFDFE108();
    v49 = *v50;
    if (!(*v50 >> 62))
    {
      goto LABEL_53;
    }

    sub_1AFDFE108();
    v52 = sub_1AFDFE108();
    v49 = *v50;
LABEL_54:
    v53 = v52 - v74;
    v54 = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *v50 = v49;
    if (v54)
    {
      if ((v49 & 0x8000000000000000) == 0 && (v49 & 0x4000000000000000) == 0)
      {
        v55 = v53;
        v56 = v49 & 0xFFFFFFFFFFFFFF8;
        if (v55 <= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_66;
        }

        goto LABEL_65;
      }
    }

    else if ((v49 & 0x8000000000000000) == 0 && (v49 & 0x4000000000000000) == 0)
    {
      goto LABEL_65;
    }

    sub_1AFDFE108();
LABEL_65:
    v49 = sub_1AFDFE268();
    *v50 = v49;
    v56 = v49 & 0xFFFFFFFFFFFFFF8;
LABEL_66:
    type metadata accessor for DrawCall();
    swift_arrayDestroy();
    if (v74)
    {
      if (v49 >> 62)
      {
        v57 = sub_1AFDFE108();
      }

      else
      {
        v57 = *(v56 + 16);
      }

      memmove((v56 + 32), (v56 + 8 * v74 + 32), 8 * (v57 - v74));
      if (v49 >> 62)
      {
        v58 = sub_1AFDFE108();
      }

      else
      {
        v58 = *(v56 + 16);
      }

      *(v56 + 16) = v58 - v74;
    }

LABEL_34:
    (v80)(v81, 0);
    v36 = v76;
  }

  while (1)
  {
    v41 = v35 + 1;
    if (v35 + 1 >= v34)
    {
      break;
    }

    v33 = *(v30 + 8 * v35++ + 72);
    if (v33)
    {
      v35 = v41;
      goto LABEL_39;
    }
  }

  v60 = *(v36 + 2);
  if (v60)
  {
    v61 = (v36 + 32);
    do
    {
      v62 = *v61++;
      v63 = sub_1AF449D3C(v62);
      if (v64)
      {
        v65 = v63;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v67 = *v29;
        v81[0] = *v29;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1AF84F9A8();
          v67 = v81[0];
        }

        sub_1AF6B7628(v65, v67);
        *v29 = v67;
      }

      --v60;
    }

    while (v60);
  }

  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_1AFB4691C(void *a1, char a2, unsigned __int8 a3)
{
  if ([a1 isDrawingBlur])
  {
    v6 = 8256;
  }

  else
  {
    v6 = 0;
  }

  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_useDitherFade))
  {
    v6 |= 0xCu;
  }

  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_enableBreakthrough))
  {
    v6 |= 0x20u;
  }

  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_enableClipping))
  {
    v6 |= 2u;
  }

  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_enableNearFieldVignetting))
  {
    v6 |= 0x200u;
  }

  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_depthOnly))
  {
    v6 |= 0x800u;
  }

  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_renderInGBuffer))
  {
    v6 |= 0x4000u;
  }

  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_outputsNormalRoughness))
  {
    v6 |= 0x10000u;
  }

  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_outputsAlbedoMetalness))
  {
    v6 |= 0x40000000u;
  }

  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_outputsRadianceAO))
  {
    v6 |= 0x80000000;
  }

  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_enableSSAO))
  {
    v6 |= 0x20000000u;
  }

  if ([a1 respondsToSelector_])
  {
    v7 = [a1 renderMode];
    if (v7 <= 3)
    {
      switch(v7)
      {
        case 1:
          v6 |= 0x20000u;
          goto LABEL_53;
        case 2:
          v6 |= 0x40000u;
          goto LABEL_53;
        case 3:
          v6 |= 0x80000u;
          goto LABEL_53;
      }
    }

    else
    {
      if (v7 <= 5)
      {
        if (v7 == 4)
        {
          v6 |= 0x100000u;
        }

        else
        {
          v6 |= 0x200000u;
        }

        goto LABEL_53;
      }

      if (v7 == 6)
      {
        v6 |= 0x400000u;
        goto LABEL_53;
      }

      if (v7 == 7)
      {
        v6 |= 0x800000u;
        goto LABEL_53;
      }
    }

    if (v7 == 8)
    {
      v6 |= 0x1000000u;
    }
  }

LABEL_53:
  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_portalClippingMode) - 1 < 3)
  {
    v6 |= 0xC000000u;
  }

  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_isLayeredRendering))
  {
    v6 |= 0x2000000u;
  }

  if ([a1 respondsToSelector_])
  {
    v6 |= ([a1 renderPassOptions] << 9) & 0x1000;
  }

  else if (!a2 && (v6 & 0x800) == 0)
  {
    if ([a1 respondsToSelector_])
    {
      [a1 fadeOpacity];
      if (v8 < 1.0)
      {
        v6 |= 0x1000u;
      }
    }

    if ((v6 & 0x1020) == 0x20)
    {
      v6 |= 0x1000u;
    }
  }

  v9 = a2 == 1 && (v6 & 0x2800) == 2048;
  v10 = v6 | 0x2000;
  if (!v9)
  {
    v10 = v6;
  }

  return v10 | a3 & ((v10 & 1) == 0) | 0x400u;
}

id sub_1AFB46D20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = [a1 colorPixelFormatAtIndex_];
  v17 = [a1 colorPixelFormatAtIndex_];
  v4 = [a1 colorPixelFormatAtIndex_];
  v5 = [a1 colorPixelFormatAtIndex_];
  v6 = [a1 colorPixelFormatAtIndex_];
  v7 = [a1 colorPixelFormatAtIndex_];
  v8 = [a1 colorPixelFormatAtIndex_];
  v9 = [a1 colorPixelFormatAtIndex_];
  v10 = [a1 depthPixelFormat];
  v11 = [a1 stencilPixelFormat];
  result = [a1 sampleCount];
  v13 = qword_1EB63E310;
  v14 = result;
  if ((result & 0xFE) == 0)
  {
    v14 = 1;
  }

  *a2 = v18;
  *(a2 + 8) = v17;
  v15 = v10 != 260 && v13 >= 0x2540BE407;
  v16 = 253;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  if (!v15)
  {
    v16 = v11;
  }

  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  *(a2 + 64) = v10;
  *(a2 + 72) = v16;
  *(a2 + 80) = v14;
  return result;
}

uint64_t sub_1AFB46E90(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1AF12E2A0(Strong);

    if (v4)
    {
      return 4;
    }
  }

  if (*(a1 + 393) == 1)
  {
    v6 = swift_unknownObjectUnownedLoadStrong();
    if (v6)
    {

      return 2;
    }

    else
    {
      return 1;
    }
  }

  else if (*(a1 + 396))
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AFB46F1C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, unint64_t a8)
{
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v15 = result;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if ((a5 & 0x100000000) == 0 && (a5 & 0x7FFFFFFF) == 0)
    {

      goto LABEL_6;
    }

    v191 = a1;
    *(Strong + 240) = 1;
    sub_1AFB46D20([a2 renderTargetInfo], v209);
    swift_unknownObjectRelease();
    v18 = sub_1AFB4691C(a2, a6, a7 & 1);
    *&v208[4] = v209[0];
    *&v208[20] = v209[1];
    *&v208[36] = v209[2];
    *&v208[52] = v209[3];
    *&v208[68] = v209[4];
    *&v208[84] = v210;
    v187 = v18;
    v211 = v18;
    v212 = *v208;
    v213 = *&v208[16];
    *(v216 + 12) = *&v208[76];
    v216[0] = *&v208[64];
    v215 = *&v208[48];
    v214 = *&v208[32];
    if ([a2 respondsToSelector_])
    {
      v19 = [a2 renderGraphMaterialOverride];
      v20 = *(a8 + 368);
      v21 = *(a8 + 372);
      if (__PAIR64__(v21, v20) == 0xFFFFFFFF)
      {
        if (v19 == -1)
        {
          goto LABEL_17;
        }

LABEL_20:

        *(v17 + 240) = 0;
      }

      if (v19 != -1)
      {
        if (v19 == (v20 | (v21 << 32)))
        {
          goto LABEL_17;
        }

        goto LABEL_20;
      }
    }

    else
    {
      LODWORD(v20) = *(a8 + 368);
      v21 = *(a8 + 372);
      if (__PAIR64__(v21, v20) == 0xFFFFFFFF)
      {
LABEL_17:
        v182 = a2;
        v22 = v15;
        v23 = *(v17 + 520);
        v24 = v17;
        v192 = a8;
        v25 = *(v23 + 56);

        os_unfair_lock_lock(v25);
        v26 = *(*(v23 + 24) + 8 * a6 + 32);
        os_unfair_lock_unlock(v25);

        if (*(*(v192 + 232) + 16) < v26)
        {

LABEL_75:
          *(v24 + 240) = 0;
        }

        v183 = v24;
        v27 = sub_1AFB43678(&v211);
        v184 = v22;
        if (!v27)
        {

          v38 = sub_1AF0D8F8C(&v211);

          if (v38)
          {
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            HIDWORD(v201[1]) = -335544320;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD000000000000026, 0x80000001AFF48BF0);
            sub_1AFDFE458();
            MEMORY[0x1B2718AE0](0x6E6169726176202CLL, 0xEB00000000203A74);
            LODWORD(v193) = v187;
            sub_1AFDFE458();
            MEMORY[0x1B2718AE0](2108962, 0xE300000000000000);
            strcpy(v201, "PassFormat: ");
            v39 = _sSo17CFXRenderPassDescas28CustomDebugStringConvertible3VFXsACP16debugDescriptionSSvgTW_0();
            MEMORY[0x1B2718AE0](v39);

            v40 = v201[1];
            v201[1] = 0xE000000000000000;

            MEMORY[0x1B2718AE0](v201[0], v40);

            v41 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              v167 = v41;
              swift_once();
              v41 = v167;
            }

            v201[0] = 0;
            sub_1AF0D4F18(v41, v201, 0, 0xE000000000000000);

            *(v183 + 276) = 1;
            sub_1AF885E08(v22);
          }

          *(v183 + 240) = 0;
        }

        v30 = v28;
        v179 = v29;
        v181 = v27;
        v31 = v182;
        if ([v182 respondsToSelector_])
        {
          v32 = [v182 stencilInfo];
          DepthStencilDesc = CFXGPUDeviceGetDepthStencilDesc(*(v183 + 16), v30);
          v35 = sub_1AF755D74(v32, DepthStencilDesc, v34);
          DepthStencil = CFXGPUDeviceCreateDepthStencil(*(v183 + 16), v35, v36);
          *(v192 + 116) = [v32 backReferenceValue];
          *(v192 + 112) = [v32 frontReferenceValue];
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          sub_1AF8263A0(DepthStencil, DepthStencil);
          swift_unknownObjectRelease();
          v30 = DepthStencil;
        }

        v180 = v30;
        if ((a7 & 1) == 0)
        {
          [objc_msgSend(v182 renderTargetInfo)];
          swift_unknownObjectRelease();
        }

        v24 = v183;
        v42 = v192;
        v43 = **(v184 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
        v196 = &type metadata for REExternalDataTable;
        v197 = &off_1F253A1B8;
        v193 = v182;
        memset(v203, 0, sizeof(v203));
        v204 = 0u;
        v205 = xmmword_1AFE22A20;
        v206 = xmmword_1AFE22A20;
        v207 = xmmword_1AFE22A20;
        v202 = a6;
        v201[0] = v184;
        v201[1] = v183;
        v201[2] = v43;
        v201[3] = 1;

        swift_unknownObjectRetain();
        sub_1AF5FD5D8(&v193, v203);
        if (*(v192 + 208) <= 0)
        {
          v44 = 3;
        }

        else
        {
          v44 = 26;
        }

        v45 = sub_1AFB46E90(v183);
        if (v45 > 2u)
        {
          if (v45 == 3)
          {
            v98 = swift_unknownObjectUnownedLoadStrong();
            if (v98)
            {
              v189 = v98;
              v102 = sub_1AF1311B0(v98, v99, v100, v101);
              v104 = v103;
              v52 = v191;
              swift_getObjectType();
              v105 = sub_1AF6F3458(v102, v104, 0, 1, v44);
              MEMORY[0x1EEE9AC00](v105, v106);
              v107 = *(v184 + 184);

              sub_1AF6D3DD4(&type metadata for FrameConstantsStorage, &off_1F255F3C8, v107, sub_1AFB49C00);
              v109 = v108;
              v111 = v110;

              if (v109)
              {
                v112 = sub_1AF6F3458(v109, v111, 0, 12, v44);
              }

              MEMORY[0x1EEE9AC00](v112, v113);
              v114 = *(v184 + 184);
              MEMORY[0x1EEE9AC00](v115, v116);
              v178 = v44;

              sub_1AF6D2ADC(&type metadata for FrameConstantsStorage, &off_1F255F3C8, v114, sub_1AFB4A454);

              MEMORY[0x1EEE9AC00](v117, v118);
              v119 = *(v184 + 184);

              sub_1AF6D3DD4(&type metadata for FrameConstantsStorage, &off_1F255F3C8, v119, sub_1AFB4A430);
              v121 = v120;
              v123 = v122;

              if (v121)
              {
                v124 = sub_1AF6F3458(v121, v123, 0, 0, v178);
              }

              MEMORY[0x1EEE9AC00](v124, v125);
              v126 = *(v184 + 184);
              MEMORY[0x1EEE9AC00](v127, v128);

              sub_1AF6D2ADC(&type metadata for FrameConstantsStorage, &off_1F255F3C8, v126, sub_1AFB4A454);

              goto LABEL_71;
            }
          }

          else
          {
            v146 = swift_unknownObjectUnownedLoadStrong();
            if (v146)
            {
              v147 = v146;
              v148 = sub_1AF1310A0(v146);
              *(&v204 + 1) = v148;
              if (v148)
              {
                v149 = v148;
                sub_1AF22DB5C(v149, 3u, 0, 1u);
                sub_1AF22DB5C(v149, 3u, 1u, 2u);
              }

              else
              {
              }

              v145 = v191;
              goto LABEL_73;
            }
          }
        }

        else if (v45 - 1 < 2)
        {
          v174 = v45;
          MEMORY[0x1EEE9AC00](v45, v46);
          v47 = *(v184 + 184);
          MEMORY[0x1EEE9AC00](v48, v49);

          sub_1AF6D2ADC(&type metadata for FrameConstantsStorage, &off_1F255F3C8, v47, sub_1AFB49B48);

          MEMORY[0x1EEE9AC00](v50, v51);
          v177 = v44;
          v52 = v191;
          v53 = *(v184 + 184);

          sub_1AF6D3DD4(&type metadata for FrameConstantsStorage, &off_1F255F3C8, v53, sub_1AFB49B88);
          v55 = v54;
          v57 = v56;

          if (v55)
          {
            swift_getObjectType();
            v58 = sub_1AF6F3458(v55, v57, 0, 0, v44);
          }

          MEMORY[0x1EEE9AC00](v58, v59);
          v60 = *(v184 + 184);
          MEMORY[0x1EEE9AC00](v61, v62);

          sub_1AF6D2ADC(&type metadata for FrameConstantsStorage, &off_1F255F3C8, v60, sub_1AFB4A454);

          if ((v179 & 1) == 0)
          {
            MEMORY[0x1EEE9AC00](v63, v64);
            v129 = *(v184 + 184);

            sub_1AF6D2ADC(&type metadata for FrameConstantsStorage, &off_1F255F3C8, v129, sub_1AFB49BA8);

            v132 = v193;
            v133 = v195;
            v134 = v198;
            v186 = v196;
            v190 = v197;
            v136 = v199;
            v135 = v200;
            v137 = v177;
            if (v193)
            {
              v176 = v198;
              v138 = v199;
              v139 = v194;
              swift_getObjectType();
              v137 = v177;
              v136 = v138;
              v134 = v176;
              v130 = sub_1AF6F3458(v132, v139, 0, 10, v177);
            }

            if (v133)
            {
              swift_getObjectType();
              v130 = sub_1AF6F3458(v133, v186, 0, 11, v137);
            }

            v140 = v191;
            if (v190)
            {
              swift_getObjectType();
              v140 = v191;
              v130 = sub_1AF6F3458(v190, v134, 0, 12, v137);
            }

            v31 = v182;
            if (v136)
            {
              swift_getObjectType();
              v140 = v191;
              sub_1AF6F3458(v136, v135, 0, 14, 2);
              sub_1AFB49E28(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
              v141 = swift_allocObject();
              *(v141 + 16) = xmmword_1AFE4C3E0;
              *(v141 + 32) = v136;
              swift_unknownObjectRetain();
              sub_1AFB41F64(v141, 1, 2);
            }

            MEMORY[0x1EEE9AC00](v130, v131);
            v142 = *(v184 + 184);
            MEMORY[0x1EEE9AC00](v143, v144);

            sub_1AF6D2ADC(&type metadata for FrameConstantsStorage, &off_1F255F3C8, v142, sub_1AFB4A454);

            v145 = v140;
            v24 = v183;
            goto LABEL_72;
          }

          v65 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
          if (v174 == 2)
          {
            v66 = swift_unknownObjectUnownedLoadStrong();
            if (v66)
            {
              v69 = v66;
              sub_1AF1311B8(v66, v182, v67, v68);
              v73 = sub_1AF1311C4(v69, v70, v71, v72);
              v173 = v74;
              v175 = v73;
              v77 = sub_1AF131210(v69, v74, v75, v76);
              v79 = v78;
              v82 = sub_1AF13125C(v69, v78, v80, v81);
              v171 = v83;
              v172 = v82;
              v86 = sub_1AF1312A8(v69, v83, v84, v85);
              v185 = v87;
              v188 = v86;
              v90 = sub_1AF1312F4(v69, v65, v88, v89);
              v92 = v91;
              v93 = v65;
              sub_1AF131350(v69, v93, v94, v95);
              v169 = v97;
              v170 = v96;
LABEL_68:

              swift_getObjectType();
              sub_1AF6F3458(v175, v173, 0, 15, v177);
              sub_1AF6F3458(v90, v92, 0, 18, 2);
              sub_1AF6F3458(v77, v79, 0, 16, 2);
              sub_1AF6F3458(v172, v171, 0, 17, 2);
              sub_1AF6F3458(v170, v169, 0, 19, 2);
              sub_1AF6F3458(v188, v185, 0, 20, v177);
              v193 = 0;
              sub_1AF64E46C();
              v166 = v65;
              sub_1AFDFD408();

              if (v193)
              {
                sub_1AFB41F64(v193, 1, 2);
              }

LABEL_71:
              v145 = v52;
              v31 = v182;
              v24 = v183;
LABEL_72:
              v42 = v192;
LABEL_73:
              sub_1AFB416F0(v42, &v211, v181, v180, v179 & 1, v145, v201, v31);

              sub_1AF5FD668(v201);
              swift_unknownObjectRelease();
              goto LABEL_74;
            }
          }

          else
          {
            v150 = *(v183 + 56);
            if (v150)
            {
              v151 = *(v183 + 248);
              v152 = v150;
              v153 = v151;
              sub_1AFDEB10C(v152);
              v93 = v153;
              v154 = sub_1AFDEB2FC(v152);
              v173 = v155;
              v175 = v154;
              v77 = sub_1AFDEB410(v152);
              v168 = v156;
              v157 = sub_1AFDEB248(v152) - 1;
              v158 = sub_1AFDEB530(v152);
              v171 = v159;
              v172 = v158;
              v160 = sub_1AFDEB644(v152);
              v185 = v161;
              v188 = v160;
              v162 = v65;
              v90 = sub_1AFDEB738(v152, v93, v162);
              v92 = v163;
              sub_1AFDEB928(v152, v93, v162, v157);
              v169 = v165;
              v170 = v164;

              v79 = v168;
              v69 = v93;
              goto LABEL_68;
            }
          }

          sub_1AF5FD668(v201);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          *(v183 + 240) = 0;
        }

        sub_1AF5FD668(v201);
        swift_unknownObjectRelease();
LABEL_74:
        swift_unknownObjectRelease();
        goto LABEL_75;
      }
    }

    if ((v21 & v20) == 0xFFFFFFFFLL)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

LABEL_6:
}

void sub_1AFB4816C(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v30 = *MEMORY[0x1E69E9840];
  sub_1AFB1A01C(a2);
  memcpy(__dst, (a1 + 48), sizeof(__dst));
  v10 = sub_1AFB19B34();
  v11 = v10;
  v12 = *(a1 + 1216);
  if (*(v12 + 16) && (v13 = sub_1AF449CB8(v10), (v14 & 1) != 0))
  {
    v15 = *(v12 + 56) + 16 * v13;
    v16 = *v15;
    LODWORD(v17) = *(v15 + 8);
    v18 = *(v15 + 12);
  }

  else
  {
    v19 = *(a3 + 232);
    memcpy(aBlock, (a1 + 48), sizeof(aBlock));
    v16 = CFXBufferAllocatorPerFrameAllocateWithBytes(v19, aBlock, 0x480uLL);
    v17 = v20;
    v21 = HIDWORD(v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = *(a1 + 1216);
    sub_1AF85904C(v16, v17, v11, isUniquelyReferenced_nonNull_native);
    *(a1 + 1216) = aBlock[0];
    v18 = v21;
  }

  v23 = [swift_unknownObjectRetain() storageMode];
  swift_unknownObjectRelease();
  if (v23 != 2)
  {
    [swift_unknownObjectRetain() contents];
    v24 = v16;
  }

  sub_1AFB1D694(a4 & 1);
  swift_getObjectType();
  sub_1AF6F3458(v16, v17, 0, 1, a6);
  v25 = swift_allocObject();
  *(v25 + 16) = v16;
  *(v25 + 24) = v17;
  *(v25 + 28) = v18;
  *(v25 + 32) = a4 & 1;
  aBlock[4] = sub_1AFB49CF8;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AFB483E8;
  aBlock[3] = &unk_1F24E6230;
  v26 = _Block_copy(aBlock);

  [a2 setLateLatchingPatchHandler_];
  _Block_release(v26);
}

uint64_t sub_1AFB483E8(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v6 = *(a1 + 32);

  v6(a2, a3, a4);
}

uint64_t sub_1AFB48458(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(result + 1416);
  if (v5)
  {
    swift_getObjectType();
    result = sub_1AFB41F64(v5, 1, a3);
  }

  v6 = *(v4 + 1504);
  if (v6)
  {
    swift_getObjectType();
    return sub_1AFB41F64(v6, 1, a3);
  }

  return result;
}

uint64_t sub_1AFB484E0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  *(a1 + 16) = (*(a1 + 16) | a2) & 1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a1 + 8);
  if (a4)
  {
    v9 = 0xFFFFFFFFLL;
  }

  else
  {
    v9 = a3;
  }

  v10 = sub_1AF449D3C(v9);
  v12 = v11;
  v13 = v8[2] + ((v11 & 1) == 0);
  if (v8[3] < v13)
  {
    sub_1AF84120C(v13, isUniquelyReferenced_nonNull_native);
    v10 = sub_1AF449D3C(v9);
    if ((v12 & 1) == (v14 & 1))
    {
      goto LABEL_8;
    }

    v10 = sub_1AFDFF1A8();
    __break(1u);
  }

  if (isUniquelyReferenced_nonNull_native)
  {
LABEL_8:
    *(a1 + 8) = v8;
    if (v12)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v19 = v10;
  sub_1AF84F9A8();
  v10 = v19;
  *(a1 + 8) = v8;
  if ((v12 & 1) == 0)
  {
LABEL_9:
    v15 = v10;
    sub_1AF85B950(v10, v9, MEMORY[0x1E69E7CC0], v8);
    v10 = v15;
  }

LABEL_10:
  v16 = (v8[7] + 8 * v10);

  MEMORY[0x1B2718E00](v17);
  if (*((*v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AFDFD458();
  }

  return sub_1AFDFD4B8();
}

void *sub_1AFB48658@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  result = sub_1AF42C508(MEMORY[0x1E69E7CC0]);
  *a1 = v2;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

void *sub_1AFB48690(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1AFDFE108();
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC0];
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  v3 = sub_1AFB48720(v2, 0);

  sub_1AFB487C4((v3 + 4), v2, a1);

  return v3;
}

void *sub_1AFB48720(uint64_t a1, uint64_t a2)
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

  sub_1AFB49E28(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
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

unint64_t sub_1AFB487C4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    if (a2 >= 1)
    {
      sub_1AFDFE108();
      sub_1AFDFE108();
      sub_1AFDFE108();

      sub_1AFDFE578();
    }
  }

  else if (a2 >= 1)
  {
    sub_1AF64E46C();
    swift_arrayInitWithCopy();
  }

  return a3;
}

uint64_t sub_1AFB488A0(void *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a1;
  if (a4)
  {
    v117 = *a1;
    v7 = *(v117 + 16);
    if (v7)
    {
      v8 = ( + 72);
      do
      {
        v9 = *(v8 - 5);
        v10 = *(v8 - 3);
        v125 = *(v8 - 8);
        v124[0] = v9;
        v124[1] = v10;
        v11 = *v8;
        v8 += 6;
        sub_1AF88DAE0(v124, &v103);
        sub_1AFB442D0(v124, 1, v11, v5);
        sub_1AF88DB3C(v124);
        --v7;
      }

      while (v7);
      sub_1AFB49620(&v117, qword_1ED725B00, &type metadata for BufferArgument, type metadata accessor for IndexedArray);
    }

    v116 = v6[1];
    v12 = *(v116 + 16);
    if (v12)
    {
      v13 = ( + 64);
      do
      {
        v14 = *(v13 - 4);
        v15 = *(v13 - 3);
        v16 = *(v13 - 2);
        v17 = *v13;
        v18 = *(v13 - 8);
        sub_1AF64E4D0(v14, v15, v16, v18);
        v19 = v17;
        v5 = a3;
        sub_1AFB445B8(v14, v15, v16, v18, 1, v19, a3);
        sub_1AF88DCFC(v14, v15, v16, v18);
        v13 += 5;
        --v12;
      }

      while (v12);
      sub_1AFB49620(&v116, &qword_1EB642AA8, &type metadata for TextureArgument, type metadata accessor for IndexedArray);
      v6 = a1;
    }

    v115 = v6[2];
    v20 = *(v115 + 16);
    if (v20)
    {
      v21 = ( + 64);
      do
      {
        v24 = *(v21 - 4);
        v23 = *(v21 - 3);
        v25 = *(v21 - 2);
        v26 = *(v21 - 8);
        v27 = *v21;
        if (v26 == 1)
        {
          v98 = *(v21 - 3);
          sub_1AFB4967C((a3 + 5), &v101);
          if (!v102)
          {
            sub_1AF8949B0(v24, v98, v25, 1);

            sub_1AFB4970C(&v101);
            goto LABEL_79;
          }

          sub_1AF0FBA54(&v101, &v103);
          if (!v25)
          {
            sub_1AF8949B0(v24, v98, 0, 1);
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v103);
LABEL_79:
            v103 = 0;
            v104 = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD00000000000001FLL, 0x80000001AFF48B90);
            LOBYTE(v101) = v24;
            sub_1AFDFE458();
            MEMORY[0x1B2718AE0](0x2064656D616E20, 0xE700000000000000);
            v93 = v25 == 0;
            if (v25)
            {
              v94 = v98;
            }

            else
            {
              v94 = 7104878;
            }

            goto LABEL_88;
          }

          v28 = *sub_1AF441150(&v103, v105);

          v23 = v98;
          v29 = sub_1AFDFCEC8();
          v22 = [v28 sampler:v24 :v29];

          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v103);
        }

        else
        {
          sub_1AF8949B0(*(v21 - 4), *(v21 - 3), *(v21 - 2), 0);
          swift_unknownObjectRetain();
          v22 = v24;
        }

        v21 += 5;
        [a2 setVertexSamplerState:v22 atIndex:v27];
        swift_unknownObjectRelease();
        sub_1AF894E80(v24, v23, v25, v26);
        --v20;
      }

      while (v20);
      sub_1AFB49620(&v115, &unk_1EB642AB0, &type metadata for SamplerArgument, type metadata accessor for IndexedArray);
      v4 = a4;
      v6 = a1;
      v5 = a3;
    }
  }

  if ((v4 & 8) != 0)
  {
    v114 = v6[6];
    v30 = *(v114 + 16);
    if (v30)
    {
      v31 = ( + 72);
      do
      {
        v32 = *(v31 - 5);
        v33 = *(v31 - 3);
        v123 = *(v31 - 8);
        v122[0] = v32;
        v122[1] = v33;
        v34 = *v31;
        v31 += 6;
        sub_1AF88DAE0(v122, &v103);
        sub_1AFB442D0(v122, 8, v34, v5);
        sub_1AF88DB3C(v122);
        --v30;
      }

      while (v30);
      sub_1AFB49620(&v114, qword_1ED725B00, &type metadata for BufferArgument, type metadata accessor for IndexedArray);
    }

    v113 = v6[7];
    v35 = *(v113 + 16);
    if (v35)
    {
      v36 = ( + 64);
      do
      {
        v37 = *(v36 - 4);
        v38 = *(v36 - 3);
        v39 = *(v36 - 2);
        v40 = *v36;
        v41 = *(v36 - 8);
        sub_1AF64E4D0(v37, v38, v39, v41);
        v42 = v40;
        v5 = a3;
        sub_1AFB445B8(v37, v38, v39, v41, 8, v42, a3);
        sub_1AF88DCFC(v37, v38, v39, v41);
        v36 += 5;
        --v35;
      }

      while (v35);
      sub_1AFB49620(&v113, &qword_1EB642AA8, &type metadata for TextureArgument, type metadata accessor for IndexedArray);
      v6 = a1;
    }

    v112 = v6[8];
    v43 = *(v112 + 16);
    if (v43)
    {
      v44 = ( + 64);
      do
      {
        v47 = *(v44 - 4);
        v46 = *(v44 - 3);
        v25 = *(v44 - 2);
        v48 = *(v44 - 8);
        v49 = *v44;
        if (v48 == 1)
        {
          sub_1AFB4967C((a3 + 5), &v101);
          if (!v102)
          {
LABEL_74:
            sub_1AF8949B0(v47, v46, v25, 1);

            sub_1AFB4970C(&v101);
LABEL_76:
            v103 = 0;
            v104 = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD00000000000001FLL, 0x80000001AFF48B90);
            LOBYTE(v101) = v47;
            goto LABEL_85;
          }

          sub_1AF0FBA54(&v101, &v103);
          if (!v25)
          {
LABEL_75:
            sub_1AF8949B0(v47, v46, 0, 1);
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v103);
            goto LABEL_76;
          }

          v50 = *sub_1AF441150(&v103, v105);

          v51 = sub_1AFDFCEC8();
          v45 = [v50 sampler:v47 :v51];

          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v103);
        }

        else
        {
          sub_1AF8949B0(*(v44 - 4), *(v44 - 3), *(v44 - 2), 0);
          swift_unknownObjectRetain();
          v45 = v47;
        }

        v44 += 5;
        [a2 setObjectSamplerState:v45 atIndex:v49];
        swift_unknownObjectRelease();
        sub_1AF894E80(v47, v46, v25, v48);
        --v43;
      }

      while (v43);
      sub_1AFB49620(&v112, &unk_1EB642AB0, &type metadata for SamplerArgument, type metadata accessor for IndexedArray);
      v4 = a4;
      v6 = a1;
      v5 = a3;
    }
  }

  if ((v4 & 0x10) != 0)
  {
    v111 = v6[9];
    v52 = *(v111 + 16);
    if (v52)
    {
      v53 = ( + 72);
      do
      {
        v54 = *(v53 - 5);
        v55 = *(v53 - 3);
        v121 = *(v53 - 8);
        v120[0] = v54;
        v120[1] = v55;
        v56 = *v53;
        v53 += 6;
        sub_1AF88DAE0(v120, &v103);
        sub_1AFB442D0(v120, 16, v56, v5);
        sub_1AF88DB3C(v120);
        --v52;
      }

      while (v52);
      sub_1AFB49620(&v111, qword_1ED725B00, &type metadata for BufferArgument, type metadata accessor for IndexedArray);
    }

    v110 = v6[10];
    v57 = *(v110 + 16);
    if (v57)
    {
      v58 = ( + 64);
      do
      {
        v59 = *(v58 - 4);
        v60 = *(v58 - 3);
        v61 = *(v58 - 2);
        v62 = *v58;
        v63 = *(v58 - 8);
        sub_1AF64E4D0(v59, v60, v61, v63);
        v64 = v62;
        v5 = a3;
        sub_1AFB445B8(v59, v60, v61, v63, 16, v64, a3);
        sub_1AF88DCFC(v59, v60, v61, v63);
        v58 += 5;
        --v57;
      }

      while (v57);
      sub_1AFB49620(&v110, &qword_1EB642AA8, &type metadata for TextureArgument, type metadata accessor for IndexedArray);
      v6 = a1;
    }

    v109 = v6[11];
    v65 = *(v109 + 16);
    if (v65)
    {
      v66 = ( + 64);
      do
      {
        v47 = *(v66 - 4);
        v46 = *(v66 - 3);
        v25 = *(v66 - 2);
        v68 = *(v66 - 8);
        v69 = *v66;
        if (v68 == 1)
        {
          sub_1AFB4967C((a3 + 5), &v101);
          if (!v102)
          {
            goto LABEL_74;
          }

          sub_1AF0FBA54(&v101, &v103);
          if (!v25)
          {
            goto LABEL_75;
          }

          v70 = *sub_1AF441150(&v103, v105);

          v71 = sub_1AFDFCEC8();
          v67 = [v70 sampler:v47 :v71];

          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v103);
        }

        else
        {
          sub_1AF8949B0(*(v66 - 4), *(v66 - 3), *(v66 - 2), 0);
          swift_unknownObjectRetain();
          v67 = v47;
        }

        v66 += 5;
        [a2 setMeshSamplerState:v67 atIndex:v69];
        swift_unknownObjectRelease();
        sub_1AF894E80(v47, v46, v25, v68);
        --v65;
      }

      while (v65);
      sub_1AFB49620(&v109, &unk_1EB642AB0, &type metadata for SamplerArgument, type metadata accessor for IndexedArray);
      v4 = a4;
      v6 = a1;
      v5 = a3;
    }
  }

  if ((v4 & 2) == 0)
  {
    return sub_1AFB41F64(v6[13], 1, v4);
  }

  v108 = v6[3];
  v72 = *(v108 + 16);
  if (v72)
  {
    v73 = ( + 72);
    do
    {
      v74 = *(v73 - 5);
      v75 = *(v73 - 3);
      v119 = *(v73 - 8);
      v118[0] = v74;
      v118[1] = v75;
      v76 = *v73;
      v73 += 6;
      sub_1AF88DAE0(v118, &v103);
      sub_1AFB442D0(v118, 2, v76, v5);
      sub_1AF88DB3C(v118);
      --v72;
    }

    while (v72);
    sub_1AFB49620(&v108, qword_1ED725B00, &type metadata for BufferArgument, type metadata accessor for IndexedArray);
  }

  v107 = v6[4];
  v77 = *(v107 + 16);
  if (v77)
  {
    v78 = ( + 64);
    do
    {
      v79 = *(v78 - 4);
      v80 = *(v78 - 3);
      v81 = *(v78 - 2);
      v82 = *v78;
      v83 = *(v78 - 8);
      sub_1AF64E4D0(v79, v80, v81, v83);
      sub_1AFB445B8(v79, v80, v81, v83, 2, v82, a3);
      sub_1AF88DCFC(v79, v80, v81, v83);
      v78 += 5;
      --v77;
    }

    while (v77);
    sub_1AFB49620(&v107, &qword_1EB642AA8, &type metadata for TextureArgument, type metadata accessor for IndexedArray);
    v6 = a1;
  }

  v106 = v6[5];
  v84 = *(v106 + 16);
  if (!v84)
  {
    return sub_1AFB41F64(v6[13], 1, v4);
  }

  v85 = ( + 64);
  while (1)
  {
    v87 = *(v85 - 4);
    v46 = *(v85 - 3);
    v25 = *(v85 - 2);
    v88 = *(v85 - 8);
    v89 = *v85;
    if (v88 == 1)
    {
      break;
    }

    sub_1AF8949B0(*(v85 - 4), *(v85 - 3), *(v85 - 2), 0);
    swift_unknownObjectRetain();
    v86 = v87;
LABEL_67:
    v85 += 5;
    [a2 setFragmentSamplerState:v86 atIndex:v89];
    swift_unknownObjectRelease();
    sub_1AF894E80(v87, v46, v25, v88);
    if (!--v84)
    {
      sub_1AFB49620(&v106, &unk_1EB642AB0, &type metadata for SamplerArgument, type metadata accessor for IndexedArray);
      v4 = a4;
      v6 = a1;
      return sub_1AFB41F64(v6[13], 1, v4);
    }
  }

  sub_1AFB4967C((a3 + 5), &v101);
  if (!v102)
  {
    sub_1AF8949B0(v87, v46, v25, 1);

    sub_1AFB4970C(&v101);
    goto LABEL_84;
  }

  sub_1AF0FBA54(&v101, &v103);
  if (v25)
  {
    v90 = *sub_1AF441150(&v103, v105);

    v91 = sub_1AFDFCEC8();
    v86 = [v90 sampler:v87 :v91];

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v103);
    goto LABEL_67;
  }

  sub_1AF8949B0(v87, v46, 0, 1);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v103);
LABEL_84:
  v103 = 0;
  v104 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD00000000000001FLL, 0x80000001AFF48B90);
  LOBYTE(v101) = v87;
LABEL_85:
  sub_1AFDFE458();
  MEMORY[0x1B2718AE0](0x2064656D616E20, 0xE700000000000000);
  v93 = v25 == 0;
  if (v25)
  {
    v94 = v46;
  }

  else
  {
    v94 = 7104878;
  }

LABEL_88:
  if (v93)
  {
    v95 = 0xE300000000000000;
  }

  else
  {
    v95 = v25;
  }

  MEMORY[0x1B2718AE0](v94, v95);

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFB49620(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1AFB49E28(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AFB4967C(uint64_t a1, uint64_t a2)
{
  sub_1AF5FD6BC(0, &unk_1ED72ADD0, qword_1ED72ADE0, &protocol descriptor for ExternalDataTable, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AFB4970C(uint64_t a1)
{
  sub_1AF5FD6BC(0, &unk_1ED72ADD0, qword_1ED72ADE0, &protocol descriptor for ExternalDataTable, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AFB4979C(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRelease();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1AFB497F8(uint64_t a1, void (*a2)(uint64_t))
{
  if (qword_1ED7259D0 != -1)
  {
    swift_once();
  }

  v28[0] = xmmword_1ED7259E0;
  v28[1] = *algn_1ED7259F0;
  v29 = qword_1ED725A00;
  sub_1AF6B06C0(a1, v28, 0x200000000, &v7);
  if (v7)
  {
    v14 = v7;
    v17 = v10;
    v18 = v11;
    v19 = v12;
    v16 = v9;
    v23 = v9;
    v22 = v8;
    v26 = v12;
    v25 = v11;
    v24 = v10;
    v20 = v13;
    v21 = v7;
    v15 = v8;
    v27 = v13;
    MEMORY[0x1EEE9AC00](v4, v5);
    v6 = *(a1 + 184);

    sub_1AF6D2ADC(&type metadata for DrawCallPool, &off_1F25608D0, v6, a2);

    sub_1AF6B8EAC(0);
    sub_1AFB49620(&v7, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720]);
  }
}

uint64_t sub_1AFB499A4(uint64_t result, int8x16_t *a2, uint64_t a3)
{
  a2[1].i64[0] = *result;
  a2[5] = vextq_s8(*(result + 8), *(result + 8), 8uLL);
  if (a3 >= 1 && (v3 = *(result + 88), *(v3 + 16) >= a3))
  {
    v7 = (v3 + 40 * a3);
    v8 = *(v7 - 1);
    v9 = *v7;
    v10 = *(v7 + 1);
    v11 = v10;
    a2[2].i64[0] = v8;
    a2[2].i64[1] = v9 | (v10 << 32);
    v12 = *(result + 80);
    a2[3].i64[0] = v12 != 2;
    a2[3].i64[1] = v11 / v12;
  }

  else
  {
    v4 = *(result + 32);
    if (v4)
    {
      v5 = *(result + 40) | (*(result + 48) << 32);
      a2[2].i64[0] = v4;
      a2[2].i64[1] = v5;
      v6 = *(result + 72);
      a2[3].i64[0] = *(result + 80) != 2;
      a2[3].i64[1] = v6;
    }

    else
    {
      a2[3].i64[1] = 0;
      a2[2].i64[0] = 0;
      a2[2].i64[1] = 0;
    }
  }

  v13 = *(result + 88);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = (v13 + 40 * v14);
    v16 = *(v15 - 1);
    v17 = *v15 | (*(v15 + 1) << 32);
    a2[4].i64[0] = v16;
    a2[4].i64[1] = v17;
  }

  return result;
}

uint64_t sub_1AFB49A68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    if (*(*a1 + 16) && (sub_1AF449CB8(a2), (v5 & 1) != 0))
    {
    }

    else
    {
      v6 = sub_1AF42C624(MEMORY[0x1E69E7CC0]);
    }

    *(a4 + 232) = v6;
  }

  else
  {
    *(a4 + 232) = a1[1];
  }
}

uint64_t sub_1AFB49C38(uint64_t result)
{
  v2 = *(result + 1504);
  if (v2)
  {
    v3 = *(v1 + 24);
    swift_getObjectType();
    return sub_1AFB41F64(v2, 1, v3);
  }

  return result;
}

uint64_t sub_1AFB49CA4(uint64_t a1)
{
  v3 = *(v1 + 24);
  swift_getObjectType();
  return sub_1AFB41F64(*(a1 + 1280), 1, v3);
}

void sub_1AFB49CF8(uint64_t a1, float32x4_t a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = sub_1AF6F2CC8(v4, v5);

  sub_1AFB1D3E4(v7, a1, v6, a2);
}

uint64_t sub_1AFB49D4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1AFB49D88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1AFB49E28(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1AFB49F58()
{
  if (!qword_1ED7230A0)
  {
    sub_1AF43D914();
    v0 = sub_1AFDFE4C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7230A0);
    }
  }
}

unint64_t sub_1AFB4A148()
{
  result = qword_1EB642AE0;
  if (!qword_1EB642AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642AE0);
  }

  return result;
}

unint64_t sub_1AFB4A1BC()
{
  result = qword_1ED725980;
  if (!qword_1ED725980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED725980);
  }

  return result;
}

unint64_t sub_1AFB4A210()
{
  result = qword_1EB642AF0;
  if (!qword_1EB642AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642AF0);
  }

  return result;
}

void sub_1AFB4A264(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AFB4A210();
    v7 = a3(a1, &type metadata for RenderingOrder.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AFB4A2DC()
{
  result = qword_1EB642B00;
  if (!qword_1EB642B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642B00);
  }

  return result;
}

unint64_t sub_1AFB4A334()
{
  result = qword_1EB642B08;
  if (!qword_1EB642B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642B08);
  }

  return result;
}

unint64_t sub_1AFB4A38C()
{
  result = qword_1EB642B10;
  if (!qword_1EB642B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642B10);
  }

  return result;
}

uint64_t sub_1AFB4A474(float32x4_t *a1, __n128 *a2, char a3, uint64_t a4, uint64_t a5)
{
  v569 = *a2;
  v570 = a2[1];
  v571 = a2[2];
  v572 = a2[3];
  v9 = a1->i64[0];
  v10 = a1[2].i64[1];
  v11 = a1[3].i64[1];
  if (a1->i8[8])
  {
    if ((a3 & 1) == 0)
    {
      result = sub_1AFB3CAA4(102, 204, 255);
      v28 = result;
      if (v9 > 5)
      {
        goto LABEL_23;
      }

      goto LABEL_18;
    }

    v563 = a1[6];
    v565 = a1[5];
    result = sub_1AFB3CAA4(255, 111, 207);
    v567 = result;
  }

  else
  {
    v563 = a1[6];
    v565 = a1[5];
    result = sub_1AFB3CAA4(128, 128, 128);
    v567 = result;
    if ((a3 & 1) == 0)
    {
      v28 = result;
      if (v9 > 5)
      {
        goto LABEL_23;
      }

      goto LABEL_18;
    }
  }

  if (v10 <= 2)
  {
    v15 = v565;
    if (v10 != 1)
    {
      if (v10 != 2)
      {
        goto LABEL_125;
      }

      *&v16 = 0;
      DWORD2(v16) = 0;
      HIDWORD(v16) = v565.i32[0];
      v599 = v16;
      v602 = 3;
      v17 = a2[4].n128_u8[0];
      v18 = (a4 + 32);
      ecs_stack_allocator_push_snapshot(*(a4 + 32));
      v19 = *(a5 + 16);
      v20 = *(a4 + 32);
      v21 = 16 * v19;
      if (v17)
      {
        v22 = ecs_stack_allocator_allocate(v20, v21 + 32, 8);
        *v22 = &type metadata for DebugInfoWireframePrimitive;
        v22[1] = &off_1F25604A8;
        v22[2] = &type metadata for DebugInfoColor;
        v22[3] = &off_1F2560488;
        if (v19)
        {
          if (v19 > 5 && ((v22 + 4) >= a5 + v21 + 32 || a5 + 32 >= &v22[v21 / 8 + 4]))
          {
            v23 = v19 & 0x7FFFFFFFFFFFFFFCLL;
            v24 = v19 & 0x7FFFFFFFFFFFFFFCLL | 2;
            v488 = v22 + 8;
            v489 = (a5 + 64);
            v490 = v19 & 0x7FFFFFFFFFFFFFFCLL;
            do
            {
              v492 = *(v489 - 2);
              v491 = *(v489 - 1);
              v494 = *v489;
              v493 = v489[1];
              v489 += 4;
              *(v488 - 2) = v492;
              *(v488 - 1) = v491;
              *v488 = v494;
              v488[1] = v493;
              v488 += 4;
              v490 -= 4;
            }

            while (v490);
            if (v19 == v23)
            {
              goto LABEL_102;
            }
          }

          else
          {
            v23 = 0;
            v24 = 2;
          }

          v25 = v19 - v23;
          v26 = (a5 + 16 * v23 + 32);
          do
          {
            v27 = *v26++;
            *&v22[2 * v24++] = v27;
            --v25;
          }

          while (v25);
LABEL_102:
          LOBYTE(v596[0]) = 1;
          sub_1AF63C898(v22, v24, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a4, &v599, v567);
LABEL_124:
          result = ecs_stack_allocator_pop_snapshot(*v18);
          goto LABEL_125;
        }

        goto LABEL_101;
      }

      v108 = ecs_stack_allocator_allocate(v20, v21 + 64, 8);
      *v108 = &type metadata for DebugInfoWireframePrimitive;
      v108[1] = &off_1F25604A8;
      v108[2] = &type metadata for DebugInfoColor;
      v108[3] = &off_1F2560488;
      v108[4] = &type metadata for WorldTransform;
      v108[5] = &off_1F2529FC0;
      v108[6] = &type metadata for Beamed;
      v108[7] = &off_1F2529FA0;
      if (v19)
      {
        if (v19 > 0x13)
        {
          v109 = 0;
          v363 = 2 * (v19 - 1);
          v110 = 4;
          if (&v108[v363 + 8] < v108 + 8 || &v108[v363 + 9] < v108 + 9 || (v19 - 1) >> 60)
          {
            goto LABEL_106;
          }

          if ((v108 + 8) >= a5 + v21 + 32 || a5 + 32 >= &v108[v21 / 8 + 8])
          {
            v109 = v19 & 0x1FFFFFFFFFFFFFFCLL;
            v110 = (v19 & 0x1FFFFFFFFFFFFFFCLL) + 4;
            v364 = v108 + 12;
            v365 = (a5 + 64);
            v366 = v19 & 0x1FFFFFFFFFFFFFFCLL;
            do
            {
              v368 = *(v365 - 2);
              v367 = *(v365 - 1);
              v370 = *v365;
              v369 = v365[1];
              v365 += 4;
              *(v364 - 2) = v368;
              *(v364 - 1) = v367;
              *v364 = v370;
              v364[1] = v369;
              v364 += 4;
              v366 -= 4;
            }

            while (v366);
            if (v19 == v109)
            {
              goto LABEL_122;
            }

            goto LABEL_106;
          }
        }

        v109 = 0;
        v110 = 4;
LABEL_106:
        v111 = v19 - v109;
        v112 = (a5 + 16 * v109 + 32);
        do
        {
          v113 = *v112++;
          *&v108[2 * v110++] = v113;
          --v111;
        }

        while (v111);
        goto LABEL_122;
      }

LABEL_121:
      v110 = 4;
LABEL_122:
      LOBYTE(v596[0]) = 1;
      v122 = MEMORY[0x1E69E7CC0];
      v123 = &v599;
      v124 = a4;
      v125 = v567;
      v126 = v569;
      v127 = v570;
      v128 = v571;
      v129 = v572;
LABEL_123:
      sub_1AF63D8A8(v108, v110, v122, 1, 0x100000000uLL, v124, v123, v125, v126, v127, v128, v129);
      goto LABEL_124;
    }

    v15.i32[3] = 0;
    v599 = xmmword_1AFE201A0;
    v600 = v15;
    v602 = 6;
    v74 = a2[4].n128_u8[0];
    v18 = (a4 + 32);
    ecs_stack_allocator_push_snapshot(*(a4 + 32));
    v75 = *(a5 + 16);
    v76 = *(a4 + 32);
    v77 = 16 * v75;
    if (v74)
    {
      v22 = ecs_stack_allocator_allocate(v76, v77 + 32, 8);
      *v22 = &type metadata for DebugInfoWireframePrimitive;
      v22[1] = &off_1F25604A8;
      v22[2] = &type metadata for DebugInfoColor;
      v22[3] = &off_1F2560488;
      if (v75)
      {
        if (v75 > 5 && ((v22 + 4) >= a5 + v77 + 32 || a5 + 32 >= &v22[v77 / 8 + 4]))
        {
          v78 = v75 & 0x7FFFFFFFFFFFFFFCLL;
          v24 = v75 & 0x7FFFFFFFFFFFFFFCLL | 2;
          v502 = v22 + 8;
          v503 = (a5 + 64);
          v504 = v75 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v506 = *(v503 - 2);
            v505 = *(v503 - 1);
            v508 = *v503;
            v507 = v503[1];
            v503 += 4;
            *(v502 - 2) = v506;
            *(v502 - 1) = v505;
            *v502 = v508;
            v502[1] = v507;
            v502 += 4;
            v504 -= 4;
          }

          while (v504);
          if (v75 == v78)
          {
            goto LABEL_102;
          }
        }

        else
        {
          v78 = 0;
          v24 = 2;
        }

        v79 = v75 - v78;
        v80 = (a5 + 16 * v78 + 32);
        do
        {
          v81 = *v80++;
          *&v22[2 * v24++] = v81;
          --v79;
        }

        while (v79);
        goto LABEL_102;
      }

LABEL_101:
      v24 = 2;
      goto LABEL_102;
    }

    v108 = ecs_stack_allocator_allocate(v76, v77 + 64, 8);
    *v108 = &type metadata for DebugInfoWireframePrimitive;
    v108[1] = &off_1F25604A8;
    v108[2] = &type metadata for DebugInfoColor;
    v108[3] = &off_1F2560488;
    v108[4] = &type metadata for WorldTransform;
    v108[5] = &off_1F2529FC0;
    v108[6] = &type metadata for Beamed;
    v108[7] = &off_1F2529FA0;
    if (!v75)
    {
      goto LABEL_121;
    }

    if (v75 > 0x13)
    {
      v118 = 0;
      v379 = 2 * (v75 - 1);
      v110 = 4;
      if (&v108[v379 + 8] < v108 + 8 || &v108[v379 + 9] < v108 + 9 || (v75 - 1) >> 60)
      {
        goto LABEL_118;
      }

      if ((v108 + 8) >= a5 + v77 + 32 || a5 + 32 >= &v108[v77 / 8 + 8])
      {
        v118 = v75 & 0x1FFFFFFFFFFFFFFCLL;
        v110 = (v75 & 0x1FFFFFFFFFFFFFFCLL) + 4;
        v380 = v108 + 12;
        v381 = (a5 + 64);
        v382 = v75 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v384 = *(v381 - 2);
          v383 = *(v381 - 1);
          v386 = *v381;
          v385 = v381[1];
          v381 += 4;
          *(v380 - 2) = v384;
          *(v380 - 1) = v383;
          *v380 = v386;
          v380[1] = v385;
          v380 += 4;
          v382 -= 4;
        }

        while (v382);
        if (v75 == v118)
        {
          goto LABEL_122;
        }

        goto LABEL_118;
      }
    }

    v118 = 0;
    v110 = 4;
LABEL_118:
    v119 = v75 - v118;
    v120 = (a5 + 16 * v118 + 32);
    do
    {
      v121 = *v120++;
      *&v108[2 * v110++] = v121;
      --v119;
    }

    while (v119);
    goto LABEL_122;
  }

  if (v10 != 3)
  {
    if (v10 != 4)
    {
      goto LABEL_125;
    }

    v13.i64[0] = 1;
    v14.i64[0] = v11;
    v42.i64[1] = 3212836864;
    v43 = vbslq_s8(vdupq_lane_s64(vceqq_s64(v14, v13).i64[0], 0), 0, xmmword_1AFE206C0);
    v42.i64[0] = 2;
    v44 = vbslq_s8(vdupq_lane_s64(vceqq_s64(v14, v42).i64[0], 0), 0, xmmword_1AFE20180);
    *&v45 = vmulq_n_f32(v43, v565.f32[0]).u64[0];
    *(&v45 + 1) = __PAIR64__(v565.u32[0], COERCE_UNSIGNED_INT(vmuls_lane_f32(v565.f32[0], v43, 2)));
    v43.i64[0] = vmulq_n_f32(v44, v565.f32[0]).u64[0];
    v43.i64[1] = __PAIR64__(v565.u32[0], COERCE_UNSIGNED_INT(vmuls_lane_f32(v565.f32[0], v44, 2)));
    v599 = v45;
    v600 = v43;
    v601 = 4;
    v602 = 7;
    v46 = a2[4].n128_u8[0];
    v18 = (a4 + 32);
    ecs_stack_allocator_push_snapshot(*(a4 + 32));
    v47 = *(a5 + 16);
    v48 = *(a4 + 32);
    v49 = 16 * v47;
    if (v46)
    {
      v22 = ecs_stack_allocator_allocate(v48, v49 + 32, 8);
      *v22 = &type metadata for DebugInfoWireframePrimitive;
      v22[1] = &off_1F25604A8;
      v22[2] = &type metadata for DebugInfoColor;
      v22[3] = &off_1F2560488;
      if (v47)
      {
        if (v47 > 5 && ((v22 + 4) >= a5 + v49 + 32 || a5 + 32 >= &v22[v49 / 8 + 4]))
        {
          v50 = v47 & 0x7FFFFFFFFFFFFFFCLL;
          v24 = v47 & 0x7FFFFFFFFFFFFFFCLL | 2;
          v495 = v22 + 8;
          v496 = (a5 + 64);
          v497 = v47 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v499 = *(v496 - 2);
            v498 = *(v496 - 1);
            v501 = *v496;
            v500 = v496[1];
            v496 += 4;
            *(v495 - 2) = v499;
            *(v495 - 1) = v498;
            *v495 = v501;
            v495[1] = v500;
            v495 += 4;
            v497 -= 4;
          }

          while (v497);
          if (v47 == v50)
          {
            goto LABEL_102;
          }
        }

        else
        {
          v50 = 0;
          v24 = 2;
        }

        v51 = v47 - v50;
        v52 = (a5 + 16 * v50 + 32);
        do
        {
          v53 = *v52++;
          *&v22[2 * v24++] = v53;
          --v51;
        }

        while (v51);
        goto LABEL_102;
      }

      goto LABEL_101;
    }

    v108 = ecs_stack_allocator_allocate(v48, v49 + 64, 8);
    *v108 = &type metadata for DebugInfoWireframePrimitive;
    v108[1] = &off_1F25604A8;
    v108[2] = &type metadata for DebugInfoColor;
    v108[3] = &off_1F2560488;
    v108[4] = &type metadata for WorldTransform;
    v108[5] = &off_1F2529FC0;
    v108[6] = &type metadata for Beamed;
    v108[7] = &off_1F2529FA0;
    if (!v47)
    {
      goto LABEL_121;
    }

    if (v47 > 0x13)
    {
      v114 = 0;
      v371 = 2 * (v47 - 1);
      v110 = 4;
      if (&v108[v371 + 8] < v108 + 8 || &v108[v371 + 9] < v108 + 9 || (v47 - 1) >> 60)
      {
        goto LABEL_112;
      }

      if ((v108 + 8) >= a5 + v49 + 32 || a5 + 32 >= &v108[v49 / 8 + 8])
      {
        v114 = v47 & 0x1FFFFFFFFFFFFFFCLL;
        v110 = (v47 & 0x1FFFFFFFFFFFFFFCLL) + 4;
        v372 = v108 + 12;
        v373 = (a5 + 64);
        v374 = v47 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v376 = *(v373 - 2);
          v375 = *(v373 - 1);
          v378 = *v373;
          v377 = v373[1];
          v373 += 4;
          *(v372 - 2) = v376;
          *(v372 - 1) = v375;
          *v372 = v378;
          v372[1] = v377;
          v372 += 4;
          v374 -= 4;
        }

        while (v374);
        if (v47 == v114)
        {
          goto LABEL_122;
        }

        goto LABEL_112;
      }
    }

    v114 = 0;
    v110 = 4;
LABEL_112:
    v115 = v47 - v114;
    v116 = (a5 + 16 * v114 + 32);
    do
    {
      v117 = *v116++;
      *&v108[2 * v110++] = v117;
      --v115;
    }

    while (v115);
    goto LABEL_122;
  }

  if (v11 == 2)
  {
LABEL_503:
    sub_1AF6DE910();
    v596[0] = v474;
    v596[1] = v475;
    v597 = 4;
    v598 = 7;
    v476 = a2[4].n128_u8[0];
    v18 = (a4 + 32);
    ecs_stack_allocator_push_snapshot(*(a4 + 32));
    v477 = *(a5 + 16);
    v478 = *(a4 + 32);
    v479 = 16 * v477;
    if (v476)
    {
      v480 = ecs_stack_allocator_allocate(v478, v479 + 32, 8);
      *v480 = &type metadata for DebugInfoWireframePrimitive;
      v480[1] = &off_1F25604A8;
      v480[2] = &type metadata for DebugInfoColor;
      v480[3] = &off_1F2560488;
      if (v477)
      {
        if (v477 > 5)
        {
          if ((v480 + 4) >= a5 + v479 + 32 || a5 + 32 >= &v480[v479 / 8 + 4])
          {
            v481 = v477 & 0x7FFFFFFFFFFFFFFCLL;
            v482 = v477 & 0x7FFFFFFFFFFFFFFCLL | 2;
            v517 = v480 + 8;
            v518 = (a5 + 64);
            v519 = v477 & 0x7FFFFFFFFFFFFFFCLL;
            do
            {
              v521 = *(v518 - 2);
              v520 = *(v518 - 1);
              v523 = *v518;
              v522 = v518[1];
              v518 += 4;
              *(v517 - 2) = v521;
              *(v517 - 1) = v520;
              *v517 = v523;
              v517[1] = v522;
              v517 += 4;
              v519 -= 4;
            }

            while (v519);
            if (v477 == v481)
            {
              goto LABEL_551;
            }
          }

          else
          {
            v481 = 0;
            v482 = 2;
          }
        }

        else
        {
          v481 = 0;
          v482 = 2;
        }

        v524 = v477 - v481;
        v525 = (a5 + 16 * v481 + 32);
        do
        {
          v526 = *v525++;
          *&v480[2 * v482++] = v526;
          --v524;
        }

        while (v524);
      }

      else
      {
        v482 = 2;
      }

LABEL_551:
      LOBYTE(v593) = 1;
      sub_1AF63C898(v480, v482, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a4, v596, v567);
      goto LABEL_124;
    }

    v108 = ecs_stack_allocator_allocate(v478, v479 + 64, 8);
    *v108 = &type metadata for DebugInfoWireframePrimitive;
    v108[1] = &off_1F25604A8;
    v108[2] = &type metadata for DebugInfoColor;
    v108[3] = &off_1F2560488;
    v108[4] = &type metadata for WorldTransform;
    v108[5] = &off_1F2529FC0;
    v108[6] = &type metadata for Beamed;
    v108[7] = &off_1F2529FA0;
    if (v477)
    {
      v483 = 0;
      if (v477 > 0x13)
      {
        v487 = 2 * (v477 - 1);
        v110 = 4;
        if (&v108[v487 + 8] >= v108 + 8 && &v108[v487 + 9] >= v108 + 9 && !((v477 - 1) >> 60))
        {
          if ((v108 + 8) >= a5 + v479 + 32 || a5 + 32 >= &v108[v479 / 8 + 8])
          {
            v483 = v477 & 0x1FFFFFFFFFFFFFFCLL;
            v110 = (v477 & 0x1FFFFFFFFFFFFFFCLL) + 4;
            v555 = v108 + 12;
            v556 = (a5 + 64);
            v557 = v477 & 0x1FFFFFFFFFFFFFFCLL;
            do
            {
              v559 = *(v556 - 2);
              v558 = *(v556 - 1);
              v561 = *v556;
              v560 = v556[1];
              v556 += 4;
              *(v555 - 2) = v559;
              *(v555 - 1) = v558;
              *v555 = v561;
              v555[1] = v560;
              v555 += 4;
              v557 -= 4;
            }

            while (v557);
            if (v477 == v483)
            {
              goto LABEL_515;
            }
          }

          else
          {
            v483 = 0;
            v110 = 4;
          }
        }
      }

      else
      {
        v110 = 4;
      }

      v484 = v477 - v483;
      v485 = (a5 + 16 * v483 + 32);
      do
      {
        v486 = *v485++;
        *&v108[2 * v110++] = v486;
        --v484;
      }

      while (v484);
    }

    else
    {
      v110 = 4;
    }

LABEL_515:
    LOBYTE(v593) = 1;
    v122 = MEMORY[0x1E69E7CC0];
    v123 = v596;
    v124 = a4;
    v125 = v567;
    v126 = v569;
    v127 = v570;
    v128 = v571;
    v129 = v572;
    goto LABEL_123;
  }

  sub_1AF6DE910();
  v599 = v82;
  v600 = v83;
  v601 = 4;
  v602 = 7;
  v84 = a2[4].n128_u8[0];
  ecs_stack_allocator_push_snapshot(*(a4 + 32));
  v85 = *(a5 + 16);
  v86 = *(a4 + 32);
  v87 = 16 * v85;
  if (v84)
  {
    v88 = ecs_stack_allocator_allocate(v86, v87 + 32, 8);
    *v88 = &type metadata for DebugInfoWireframePrimitive;
    v88[1] = &off_1F25604A8;
    v88[2] = &type metadata for DebugInfoColor;
    v88[3] = &off_1F2560488;
    if (v85)
    {
      if (v85 > 5 && ((v88 + 4) >= a5 + v87 + 32 || a5 + 32 >= &v88[v87 / 8 + 4]))
      {
        v89 = v85 & 0x7FFFFFFFFFFFFFFCLL;
        v90 = v85 & 0x7FFFFFFFFFFFFFFCLL | 2;
        v548 = v88 + 8;
        v549 = (a5 + 64);
        v550 = v85 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v552 = *(v549 - 2);
          v551 = *(v549 - 1);
          v554 = *v549;
          v553 = v549[1];
          v549 += 4;
          *(v548 - 2) = v552;
          *(v548 - 1) = v551;
          *v548 = v554;
          v548[1] = v553;
          v548 += 4;
          v550 -= 4;
        }

        while (v550);
        if (v85 == v89)
        {
          goto LABEL_499;
        }
      }

      else
      {
        v89 = 0;
        v90 = 2;
      }

      v91 = v85 - v89;
      v92 = (a5 + 16 * v89 + 32);
      do
      {
        v93 = *v92++;
        *&v88[2 * v90++] = v93;
        --v91;
      }

      while (v91);
    }

    else
    {
      v90 = 2;
    }

LABEL_499:
    LOBYTE(v596[0]) = 1;
    sub_1AF63C898(v88, v90, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a4, &v599, v567);
    goto LABEL_502;
  }

  v204 = ecs_stack_allocator_allocate(v86, v87 + 64, 8);
  *v204 = &type metadata for DebugInfoWireframePrimitive;
  v204[1] = &off_1F25604A8;
  v204[2] = &type metadata for DebugInfoColor;
  v204[3] = &off_1F2560488;
  v204[4] = &type metadata for WorldTransform;
  v204[5] = &off_1F2529FC0;
  v204[6] = &type metadata for Beamed;
  v204[7] = &off_1F2529FA0;
  if (v85)
  {
    if (v85 > 0x13)
    {
      v205 = 0;
      v509 = 2 * (v85 - 1);
      v206 = 4;
      if (&v204[v509 + 8] < v204 + 8 || &v204[v509 + 9] < v204 + 9 || (v85 - 1) >> 60)
      {
        goto LABEL_225;
      }

      if ((v204 + 8) >= a5 + v87 + 32 || a5 + 32 >= &v204[v87 / 8 + 8])
      {
        v205 = v85 & 0x1FFFFFFFFFFFFFFCLL;
        v206 = (v85 & 0x1FFFFFFFFFFFFFFCLL) + 4;
        v510 = v204 + 12;
        v511 = (a5 + 64);
        v512 = v85 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v514 = *(v511 - 2);
          v513 = *(v511 - 1);
          v516 = *v511;
          v515 = v511[1];
          v511 += 4;
          *(v510 - 2) = v514;
          *(v510 - 1) = v513;
          *v510 = v516;
          v510[1] = v515;
          v510 += 4;
          v512 -= 4;
        }

        while (v512);
        if (v85 == v205)
        {
          goto LABEL_501;
        }

        goto LABEL_225;
      }
    }

    v205 = 0;
    v206 = 4;
LABEL_225:
    v207 = v85 - v205;
    v208 = (a5 + 16 * v205 + 32);
    do
    {
      v209 = *v208++;
      *&v204[2 * v206++] = v209;
      --v207;
    }

    while (v207);
    goto LABEL_501;
  }

  v206 = 4;
LABEL_501:
  LOBYTE(v596[0]) = 1;
  sub_1AF63D8A8(v204, v206, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a4, &v599, v567, v569, v570, v571, v572);
LABEL_502:
  result = ecs_stack_allocator_pop_snapshot(*(a4 + 32));
  if (v11 != 1)
  {
    goto LABEL_503;
  }

LABEL_125:
  if (v9 > 5)
  {
    v28 = v567;
    if (v9 == 6)
    {
      goto LABEL_148;
    }

    if (v9 == 8)
    {
      goto LABEL_139;
    }

    goto LABEL_160;
  }

  v28 = v567;
  if ((v9 - 3) < 2)
  {
    return result;
  }

  if (v9)
  {
LABEL_160:
    if (a2[4].n128_u8[0])
    {
      v156 = -1;
    }

    else
    {
      v156 = 0;
    }

    v157 = vdupq_n_s32(v156);
    v568 = vbslq_s8(v157, xmmword_1AFE20150, v569);
    v566 = vbslq_s8(v157, xmmword_1AFE20160, v570);
    v562 = vbslq_s8(v157, xmmword_1AFE20180, v571);
    v158 = vbslq_s8(v157, xmmword_1AFE201A0, v572);
    v159 = vaddq_f32(v563, v158);
    v159.i32[3] = v158.i32[3];
    v564 = v159;
    LOBYTE(v588) = 0;
    v593 = 1028443341;
    v594 = 0;
    v595 = 2;
    ecs_stack_allocator_push_snapshot(*(a4 + 32));
    v160 = *(a5 + 16);
    v161 = 2 * v160;
    v162 = ecs_stack_allocator_allocate(*(a4 + 32), 16 * v160 + 64, 8);
    *v162 = &type metadata for DebugInfoWireframePrimitive;
    v162[1] = &off_1F25604A8;
    v162[2] = &type metadata for DebugInfoColor;
    v162[3] = &off_1F2560488;
    v162[4] = &type metadata for WorldTransform;
    v162[5] = &off_1F2529FC0;
    v162[6] = &type metadata for Beamed;
    v162[7] = &off_1F2529FA0;
    if (!v160)
    {
      v164 = 4;
      goto LABEL_211;
    }

    if (v160 <= 0x13)
    {
      goto LABEL_165;
    }

    v163 = 0;
    v196 = 2 * (v160 - 1);
    v164 = 4;
    if (&v162[v196 + 8] < v162 + 8 || &v162[v196 + 9] < v162 + 9 || (v160 - 1) >> 60)
    {
      goto LABEL_166;
    }

    if ((v162 + 8) < a5 + v161 * 8 + 32 && a5 + 32 < &v162[v161 + 8])
    {
LABEL_165:
      v163 = 0;
      v164 = 4;
    }

    else
    {
      v163 = v160 & 0x1FFFFFFFFFFFFFFCLL;
      v164 = (v160 & 0x1FFFFFFFFFFFFFFCLL) + 4;
      v197 = v162 + 12;
      v198 = (a5 + 64);
      v199 = v160 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v201 = *(v198 - 2);
        v200 = *(v198 - 1);
        v203 = *v198;
        v202 = v198[1];
        v198 += 4;
        *(v197 - 2) = v201;
        *(v197 - 1) = v200;
        *v197 = v203;
        v197[1] = v202;
        v197 += 4;
        v199 -= 4;
      }

      while (v199);
      if (v160 == v163)
      {
LABEL_211:
        LOBYTE(v585[0]) = 1;
        sub_1AF63D8A8(v162, v164, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a4, &v593, v28, v568, v566, v562, v564);
        result = ecs_stack_allocator_pop_snapshot(*(a4 + 32));
        if (v9 > 5)
        {
LABEL_23:
          if (v9 <= 7)
          {
            if (v9 != 6)
            {
              sub_1AF6DE920();
              v588 = v29;
              v589 = v30;
              v590 = 0x3F00000040000000;
              v592 = 4;
              v31 = a2[4].n128_u8[0];
              v32 = (a4 + 32);
              ecs_stack_allocator_push_snapshot(*(a4 + 32));
              v33 = *(a5 + 16);
              v34 = *(a4 + 32);
              v35 = 16 * v33;
              if (v31)
              {
                v36 = ecs_stack_allocator_allocate(v34, v35 + 32, 8);
                *v36 = &type metadata for DebugInfoWireframePrimitive;
                v36[1] = &off_1F25604A8;
                v36[2] = &type metadata for DebugInfoColor;
                v36[3] = &off_1F2560488;
                if (v33)
                {
                  if (v33 > 5 && ((v36 + 4) >= a5 + v35 + 32 || a5 + 32 >= &v36[v35 / 8 + 4]))
                  {
                    v37 = v33 & 0x7FFFFFFFFFFFFFFCLL;
                    v38 = v33 & 0x7FFFFFFFFFFFFFFCLL | 2;
                    v534 = v36 + 8;
                    v535 = (a5 + 64);
                    v536 = v33 & 0x7FFFFFFFFFFFFFFCLL;
                    do
                    {
                      v538 = *(v535 - 2);
                      v537 = *(v535 - 1);
                      v540 = *v535;
                      v539 = v535[1];
                      v535 += 4;
                      *(v534 - 2) = v538;
                      *(v534 - 1) = v537;
                      *v534 = v540;
                      v534[1] = v539;
                      v534 += 4;
                      v536 -= 4;
                    }

                    while (v536);
                    if (v33 == v37)
                    {
                      goto LABEL_158;
                    }
                  }

                  else
                  {
                    v37 = 0;
                    v38 = 2;
                  }

                  v39 = v33 - v37;
                  v40 = (a5 + 16 * v37 + 32);
                  do
                  {
                    v41 = *v40++;
                    *&v36[2 * v38++] = v41;
                    --v39;
                  }

                  while (v39);
                  goto LABEL_158;
                }

LABEL_157:
                v38 = 2;
                goto LABEL_158;
              }

              v168 = ecs_stack_allocator_allocate(v34, v35 + 64, 8);
              *v168 = &type metadata for DebugInfoWireframePrimitive;
              v168[1] = &off_1F25604A8;
              v168[2] = &type metadata for DebugInfoColor;
              v168[3] = &off_1F2560488;
              v168[4] = &type metadata for WorldTransform;
              v168[5] = &off_1F2529FC0;
              v168[6] = &type metadata for Beamed;
              v168[7] = &off_1F2529FA0;
              if (!v33)
              {
                goto LABEL_205;
              }

              if (v33 > 0x13)
              {
                v186 = 0;
                v458 = 2 * (v33 - 1);
                v170 = 4;
                if (&v168[v458 + 8] < v168 + 8 || &v168[v458 + 9] < v168 + 9 || (v33 - 1) >> 60)
                {
                  goto LABEL_196;
                }

                if ((v168 + 8) >= a5 + v35 + 32 || a5 + 32 >= &v168[v35 / 8 + 8])
                {
                  v186 = v33 & 0x1FFFFFFFFFFFFFFCLL;
                  v170 = (v33 & 0x1FFFFFFFFFFFFFFCLL) + 4;
                  v459 = v168 + 12;
                  v460 = (a5 + 64);
                  v461 = v33 & 0x1FFFFFFFFFFFFFFCLL;
                  do
                  {
                    v463 = *(v460 - 2);
                    v462 = *(v460 - 1);
                    v465 = *v460;
                    v464 = v460[1];
                    v460 += 4;
                    *(v459 - 2) = v463;
                    *(v459 - 1) = v462;
                    *v459 = v465;
                    v459[1] = v464;
                    v459 += 4;
                    v461 -= 4;
                  }

                  while (v461);
                  if (v33 == v186)
                  {
                    goto LABEL_206;
                  }

                  goto LABEL_196;
                }
              }

              v186 = 0;
              v170 = 4;
LABEL_196:
              v187 = v33 - v186;
              v188 = (a5 + 16 * v186 + 32);
              do
              {
                v189 = *v188++;
                *&v168[2 * v170++] = v189;
                --v187;
              }

              while (v187);
              goto LABEL_206;
            }

LABEL_148:
            v589 = xmmword_1AFE20160;
            v588 = 0uLL;
            v590 = 0x3F8000003F000000;
            v591 = xmmword_1AFE9AB20;
            v592 = 9;
            v146 = a2[4].n128_u8[0];
            v32 = (a4 + 32);
            ecs_stack_allocator_push_snapshot(*(a4 + 32));
            v147 = *(a5 + 16);
            v148 = *(a4 + 32);
            v149 = 16 * v147;
            if (v146)
            {
              v36 = ecs_stack_allocator_allocate(v148, v149 + 32, 8);
              *v36 = &type metadata for DebugInfoWireframePrimitive;
              v36[1] = &off_1F25604A8;
              v36[2] = &type metadata for DebugInfoColor;
              v36[3] = &off_1F2560488;
              if (v147)
              {
                if (v147 > 5 && ((v36 + 4) >= a5 + v149 + 32 || a5 + 32 >= &v36[v149 / 8 + 4]))
                {
                  v150 = v147 & 0x7FFFFFFFFFFFFFFCLL;
                  v38 = v147 & 0x7FFFFFFFFFFFFFFCLL | 2;
                  v387 = v36 + 8;
                  v388 = (a5 + 64);
                  v389 = v147 & 0x7FFFFFFFFFFFFFFCLL;
                  do
                  {
                    v391 = *(v388 - 2);
                    v390 = *(v388 - 1);
                    v393 = *v388;
                    v392 = v388[1];
                    v388 += 4;
                    *(v387 - 2) = v391;
                    *(v387 - 1) = v390;
                    *v387 = v393;
                    v387[1] = v392;
                    v387 += 4;
                    v389 -= 4;
                  }

                  while (v389);
                  if (v147 == v150)
                  {
                    goto LABEL_158;
                  }
                }

                else
                {
                  v150 = 0;
                  v38 = 2;
                }

                v151 = v147 - v150;
                v152 = (a5 + 16 * v150 + 32);
                do
                {
                  v153 = *v152++;
                  *&v36[2 * v38++] = v153;
                  --v151;
                }

                while (v151);
                goto LABEL_158;
              }

              goto LABEL_157;
            }

            v168 = ecs_stack_allocator_allocate(v148, v149 + 64, 8);
            *v168 = &type metadata for DebugInfoWireframePrimitive;
            v168[1] = &off_1F25604A8;
            v168[2] = &type metadata for DebugInfoColor;
            v168[3] = &off_1F2560488;
            v168[4] = &type metadata for WorldTransform;
            v168[5] = &off_1F2529FC0;
            v168[6] = &type metadata for Beamed;
            v168[7] = &off_1F2529FA0;
            if (!v147)
            {
              goto LABEL_205;
            }

            if (v147 > 0x13)
            {
              v169 = 0;
              v291 = 2 * (v147 - 1);
              v170 = 4;
              if (&v168[v291 + 8] < v168 + 8 || &v168[v291 + 9] < v168 + 9 || (v147 - 1) >> 60)
              {
                goto LABEL_172;
              }

              if ((v168 + 8) >= a5 + v149 + 32 || a5 + 32 >= &v168[v149 / 8 + 8])
              {
                v169 = v147 & 0x1FFFFFFFFFFFFFFCLL;
                v170 = (v147 & 0x1FFFFFFFFFFFFFFCLL) + 4;
                v292 = v168 + 12;
                v293 = (a5 + 64);
                v294 = v147 & 0x1FFFFFFFFFFFFFFCLL;
                do
                {
                  v296 = *(v293 - 2);
                  v295 = *(v293 - 1);
                  v298 = *v293;
                  v297 = v293[1];
                  v293 += 4;
                  *(v292 - 2) = v296;
                  *(v292 - 1) = v295;
                  *v292 = v298;
                  v292[1] = v297;
                  v292 += 4;
                  v294 -= 4;
                }

                while (v294);
                if (v147 == v169)
                {
                  goto LABEL_206;
                }

                goto LABEL_172;
              }
            }

            v169 = 0;
            v170 = 4;
LABEL_172:
            v171 = v147 - v169;
            v172 = (a5 + 16 * v169 + 32);
            do
            {
              v173 = *v172++;
              *&v168[2 * v170++] = v173;
              --v171;
            }

            while (v171);
            goto LABEL_206;
          }

          if (v9 != 8)
          {
            if (v9 != 9)
            {
              return result;
            }

            v588 = xmmword_1AFE201A0;
            v589 = xmmword_1AFE9BB90;
            v592 = 6;
            v66 = a2[4].n128_u8[0];
            v32 = (a4 + 32);
            ecs_stack_allocator_push_snapshot(*(a4 + 32));
            v67 = *(a5 + 16);
            v68 = *(a4 + 32);
            v69 = 16 * v67;
            if (v66)
            {
              v36 = ecs_stack_allocator_allocate(v68, v69 + 32, 8);
              *v36 = &type metadata for DebugInfoWireframePrimitive;
              v36[1] = &off_1F25604A8;
              v36[2] = &type metadata for DebugInfoColor;
              v36[3] = &off_1F2560488;
              if (v67)
              {
                if (v67 > 5 && ((v36 + 4) >= a5 + v69 + 32 || a5 + 32 >= &v36[v69 / 8 + 4]))
                {
                  v70 = v67 & 0x7FFFFFFFFFFFFFFCLL;
                  v38 = v67 & 0x7FFFFFFFFFFFFFFCLL | 2;
                  v541 = v36 + 8;
                  v542 = (a5 + 64);
                  v543 = v67 & 0x7FFFFFFFFFFFFFFCLL;
                  do
                  {
                    v545 = *(v542 - 2);
                    v544 = *(v542 - 1);
                    v547 = *v542;
                    v546 = v542[1];
                    v542 += 4;
                    *(v541 - 2) = v545;
                    *(v541 - 1) = v544;
                    *v541 = v547;
                    v541[1] = v546;
                    v541 += 4;
                    v543 -= 4;
                  }

                  while (v543);
                  if (v67 == v70)
                  {
                    goto LABEL_158;
                  }
                }

                else
                {
                  v70 = 0;
                  v38 = 2;
                }

                v71 = v67 - v70;
                v72 = (a5 + 16 * v70 + 32);
                do
                {
                  v73 = *v72++;
                  *&v36[2 * v38++] = v73;
                  --v71;
                }

                while (v71);
                goto LABEL_158;
              }

              goto LABEL_157;
            }

            v168 = ecs_stack_allocator_allocate(v68, v69 + 64, 8);
            *v168 = &type metadata for DebugInfoWireframePrimitive;
            v168[1] = &off_1F25604A8;
            v168[2] = &type metadata for DebugInfoColor;
            v168[3] = &off_1F2560488;
            v168[4] = &type metadata for WorldTransform;
            v168[5] = &off_1F2529FC0;
            v168[6] = &type metadata for Beamed;
            v168[7] = &off_1F2529FA0;
            if (!v67)
            {
              goto LABEL_205;
            }

            if (v67 > 0x13)
            {
              v190 = 0;
              v466 = 2 * (v67 - 1);
              v170 = 4;
              if (&v168[v466 + 8] < v168 + 8 || &v168[v466 + 9] < v168 + 9 || (v67 - 1) >> 60)
              {
                goto LABEL_202;
              }

              if ((v168 + 8) >= a5 + v69 + 32 || a5 + 32 >= &v168[v69 / 8 + 8])
              {
                v190 = v67 & 0x1FFFFFFFFFFFFFFCLL;
                v170 = (v67 & 0x1FFFFFFFFFFFFFFCLL) + 4;
                v467 = v168 + 12;
                v468 = (a5 + 64);
                v469 = v67 & 0x1FFFFFFFFFFFFFFCLL;
                do
                {
                  v471 = *(v468 - 2);
                  v470 = *(v468 - 1);
                  v473 = *v468;
                  v472 = v468[1];
                  v468 += 4;
                  *(v467 - 2) = v471;
                  *(v467 - 1) = v470;
                  *v467 = v473;
                  v467[1] = v472;
                  v467 += 4;
                  v469 -= 4;
                }

                while (v469);
                if (v67 == v190)
                {
                  goto LABEL_206;
                }

                goto LABEL_202;
              }
            }

            v190 = 0;
            v170 = 4;
LABEL_202:
            v191 = v67 - v190;
            v192 = (a5 + 16 * v190 + 32);
            do
            {
              v193 = *v192++;
              *&v168[2 * v170++] = v193;
              --v191;
            }

            while (v191);
            goto LABEL_206;
          }

LABEL_139:
          v588 = xmmword_1AFE201A0;
          v589 = xmmword_1AFE9BB90;
          v592 = 6;
          v138 = a2[4].n128_u8[0];
          v32 = (a4 + 32);
          ecs_stack_allocator_push_snapshot(*(a4 + 32));
          v139 = *(a5 + 16);
          v140 = *(a4 + 32);
          v141 = 16 * v139;
          if (v138)
          {
            v36 = ecs_stack_allocator_allocate(v140, v141 + 32, 8);
            *v36 = &type metadata for DebugInfoWireframePrimitive;
            v36[1] = &off_1F25604A8;
            v36[2] = &type metadata for DebugInfoColor;
            v36[3] = &off_1F2560488;
            if (v139)
            {
              if (v139 > 5 && ((v36 + 4) >= a5 + v141 + 32 || a5 + 32 >= &v36[v141 / 8 + 4]))
              {
                v142 = v139 & 0x7FFFFFFFFFFFFFFCLL;
                v38 = v139 & 0x7FFFFFFFFFFFFFFCLL | 2;
                v401 = v36 + 8;
                v402 = (a5 + 64);
                v403 = v139 & 0x7FFFFFFFFFFFFFFCLL;
                do
                {
                  v405 = *(v402 - 2);
                  v404 = *(v402 - 1);
                  v407 = *v402;
                  v406 = v402[1];
                  v402 += 4;
                  *(v401 - 2) = v405;
                  *(v401 - 1) = v404;
                  *v401 = v407;
                  v401[1] = v406;
                  v401 += 4;
                  v403 -= 4;
                }

                while (v403);
                if (v139 == v142)
                {
                  goto LABEL_158;
                }
              }

              else
              {
                v142 = 0;
                v38 = 2;
              }

              v143 = v139 - v142;
              v144 = (a5 + 16 * v142 + 32);
              do
              {
                v145 = *v144++;
                *&v36[2 * v38++] = v145;
                --v143;
              }

              while (v143);
              goto LABEL_158;
            }

            goto LABEL_157;
          }

          v168 = ecs_stack_allocator_allocate(v140, v141 + 64, 8);
          *v168 = &type metadata for DebugInfoWireframePrimitive;
          v168[1] = &off_1F25604A8;
          v168[2] = &type metadata for DebugInfoColor;
          v168[3] = &off_1F2560488;
          v168[4] = &type metadata for WorldTransform;
          v168[5] = &off_1F2529FC0;
          v168[6] = &type metadata for Beamed;
          v168[7] = &off_1F2529FA0;
          if (!v139)
          {
            goto LABEL_205;
          }

          if (v139 > 0x13)
          {
            v178 = 0;
            v307 = 2 * (v139 - 1);
            v170 = 4;
            if (&v168[v307 + 8] < v168 + 8 || &v168[v307 + 9] < v168 + 9 || (v139 - 1) >> 60)
            {
              goto LABEL_184;
            }

            if ((v168 + 8) >= a5 + v141 + 32 || a5 + 32 >= &v168[v141 / 8 + 8])
            {
              v178 = v139 & 0x1FFFFFFFFFFFFFFCLL;
              v170 = (v139 & 0x1FFFFFFFFFFFFFFCLL) + 4;
              v308 = v168 + 12;
              v309 = (a5 + 64);
              v310 = v139 & 0x1FFFFFFFFFFFFFFCLL;
              do
              {
                v312 = *(v309 - 2);
                v311 = *(v309 - 1);
                v314 = *v309;
                v313 = v309[1];
                v309 += 4;
                *(v308 - 2) = v312;
                *(v308 - 1) = v311;
                *v308 = v314;
                v308[1] = v313;
                v308 += 4;
                v310 -= 4;
              }

              while (v310);
              if (v139 == v178)
              {
                goto LABEL_206;
              }

              goto LABEL_184;
            }
          }

          v178 = 0;
          v170 = 4;
LABEL_184:
          v179 = v139 - v178;
          v180 = (a5 + 16 * v178 + 32);
          do
          {
            v181 = *v180++;
            *&v168[2 * v170++] = v181;
            --v179;
          }

          while (v179);
          goto LABEL_206;
        }

LABEL_18:
        if (v9 <= 1)
        {
          if (!v9)
          {
            goto LABEL_128;
          }

          if (v9 != 1)
          {
            return result;
          }

LABEL_47:
          sub_1AF6DE920();
          v588 = v54;
          v589 = v55;
          LOBYTE(v590) = 2;
          v592 = 0;
          v56 = a2[4].n128_u8[0];
          v32 = (a4 + 32);
          ecs_stack_allocator_push_snapshot(*(a4 + 32));
          v57 = *(a5 + 16);
          v58 = *(a4 + 32);
          v59 = 16 * v57;
          if (v56)
          {
            v60 = ecs_stack_allocator_allocate(v58, v59 + 32, 8);
            *v60 = &type metadata for DebugInfoWireframePrimitive;
            v60[1] = &off_1F25604A8;
            v60[2] = &type metadata for DebugInfoColor;
            v60[3] = &off_1F2560488;
            if (v57)
            {
              if (v57 > 5 && ((v60 + 4) >= a5 + v59 + 32 || a5 + 32 >= &v60[v59 / 8 + 4]))
              {
                v61 = v57 & 0x7FFFFFFFFFFFFFFCLL;
                v62 = v57 & 0x7FFFFFFFFFFFFFFCLL | 2;
                v416 = v60 + 8;
                v417 = (a5 + 64);
                v418 = v57 & 0x7FFFFFFFFFFFFFFCLL;
                do
                {
                  v420 = *(v417 - 2);
                  v419 = *(v417 - 1);
                  v422 = *v417;
                  v421 = v417[1];
                  v417 += 4;
                  *(v416 - 2) = v420;
                  *(v416 - 1) = v419;
                  *v416 = v422;
                  v416[1] = v421;
                  v416 += 4;
                  v418 -= 4;
                }

                while (v418);
                if (v57 == v61)
                {
                  goto LABEL_229;
                }
              }

              else
              {
                v61 = 0;
                v62 = 2;
              }

              v63 = v57 - v61;
              v64 = (a5 + 16 * v61 + 32);
              do
              {
                v65 = *v64++;
                *&v60[2 * v62++] = v65;
                --v63;
              }

              while (v63);
            }

            else
            {
              v62 = 2;
            }

LABEL_229:
            LOBYTE(v585[0]) = 1;
            sub_1AF63C898(v60, v62, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a4, &v588, v28);
            goto LABEL_232;
          }

          v102 = ecs_stack_allocator_allocate(v58, v59 + 64, 8);
          *v102 = &type metadata for DebugInfoWireframePrimitive;
          v102[1] = &off_1F25604A8;
          v102[2] = &type metadata for DebugInfoColor;
          v102[3] = &off_1F2560488;
          v102[4] = &type metadata for WorldTransform;
          v102[5] = &off_1F2529FC0;
          v102[6] = &type metadata for Beamed;
          v102[7] = &off_1F2529FA0;
          if (!v57)
          {
            v104 = 4;
LABEL_231:
            LOBYTE(v585[0]) = 1;
            sub_1AF63D8A8(v102, v104, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a4, &v588, v28, v569, v570, v571, v572);
LABEL_232:
            ecs_stack_allocator_pop_snapshot(*v32);
            sub_1AF6DE920();
            v585[0] = v210;
            v585[1] = v211;
            v586 = 2;
            v587 = 0;
            ecs_stack_allocator_push_snapshot(*v32);
            v212 = *(a5 + 16);
            v213 = *v32;
            v214 = 16 * v212;
            if (v56)
            {
              v215 = ecs_stack_allocator_allocate(v213, v214 + 32, 8);
              *v215 = &type metadata for DebugInfoWireframePrimitive;
              v215[1] = &off_1F25604A8;
              v215[2] = &type metadata for DebugInfoColor;
              v215[3] = &off_1F2560488;
              if (v212)
              {
                if (v212 > 5 && ((v215 + 4) >= a5 + v214 + 32 || a5 + 32 >= &v215[v214 / 8 + 4]))
                {
                  v216 = v212 & 0x7FFFFFFFFFFFFFFCLL;
                  v217 = v212 & 0x7FFFFFFFFFFFFFFCLL | 2;
                  v423 = v215 + 8;
                  v424 = (a5 + 64);
                  v425 = v212 & 0x7FFFFFFFFFFFFFFCLL;
                  do
                  {
                    v427 = *(v424 - 2);
                    v426 = *(v424 - 1);
                    v429 = *v424;
                    v428 = v424[1];
                    v424 += 4;
                    *(v423 - 2) = v427;
                    *(v423 - 1) = v426;
                    *v423 = v429;
                    v423[1] = v428;
                    v423 += 4;
                    v425 -= 4;
                  }

                  while (v425);
                  if (v212 == v216)
                  {
                    goto LABEL_248;
                  }
                }

                else
                {
                  v216 = 0;
                  v217 = 2;
                }

                v218 = v212 - v216;
                v219 = (a5 + 16 * v216 + 32);
                do
                {
                  v220 = *v219++;
                  *&v215[2 * v217++] = v220;
                  --v218;
                }

                while (v218);
              }

              else
              {
                v217 = 2;
              }

LABEL_248:
              LOBYTE(v582[0]) = 1;
              sub_1AF63C898(v215, v217, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a4, v585, v28);
              goto LABEL_251;
            }

            v221 = ecs_stack_allocator_allocate(v213, v214 + 64, 8);
            *v221 = &type metadata for DebugInfoWireframePrimitive;
            v221[1] = &off_1F25604A8;
            v221[2] = &type metadata for DebugInfoColor;
            v221[3] = &off_1F2560488;
            v221[4] = &type metadata for WorldTransform;
            v221[5] = &off_1F2529FC0;
            v221[6] = &type metadata for Beamed;
            v221[7] = &off_1F2529FA0;
            if (!v212)
            {
              v223 = 4;
LABEL_250:
              LOBYTE(v582[0]) = 1;
              sub_1AF63D8A8(v221, v223, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a4, v585, v28, v569, v570, v571, v572);
LABEL_251:
              ecs_stack_allocator_pop_snapshot(*v32);
              sub_1AF6DE920();
              v582[0] = v227;
              v582[1] = v228;
              v583 = 2;
              v584 = 0;
              ecs_stack_allocator_push_snapshot(*v32);
              v229 = *(a5 + 16);
              v230 = *v32;
              v231 = 16 * v229;
              if (v56)
              {
                v232 = ecs_stack_allocator_allocate(v230, v231 + 32, 8);
                *v232 = &type metadata for DebugInfoWireframePrimitive;
                v232[1] = &off_1F25604A8;
                v232[2] = &type metadata for DebugInfoColor;
                v232[3] = &off_1F2560488;
                if (v229)
                {
                  if (v229 > 5 && ((v232 + 4) >= a5 + v231 + 32 || a5 + 32 >= &v232[v231 / 8 + 4]))
                  {
                    v233 = v229 & 0x7FFFFFFFFFFFFFFCLL;
                    v234 = v229 & 0x7FFFFFFFFFFFFFFCLL | 2;
                    v430 = v232 + 8;
                    v431 = (a5 + 64);
                    v432 = v229 & 0x7FFFFFFFFFFFFFFCLL;
                    do
                    {
                      v434 = *(v431 - 2);
                      v433 = *(v431 - 1);
                      v436 = *v431;
                      v435 = v431[1];
                      v431 += 4;
                      *(v430 - 2) = v434;
                      *(v430 - 1) = v433;
                      *v430 = v436;
                      v430[1] = v435;
                      v430 += 4;
                      v432 -= 4;
                    }

                    while (v432);
                    if (v229 == v233)
                    {
                      goto LABEL_267;
                    }
                  }

                  else
                  {
                    v233 = 0;
                    v234 = 2;
                  }

                  v235 = v229 - v233;
                  v236 = (a5 + 16 * v233 + 32);
                  do
                  {
                    v237 = *v236++;
                    *&v232[2 * v234++] = v237;
                    --v235;
                  }

                  while (v235);
                }

                else
                {
                  v234 = 2;
                }

LABEL_267:
                LOBYTE(v579[0]) = 1;
                sub_1AF63C898(v232, v234, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a4, v582, v28);
                goto LABEL_270;
              }

              v238 = ecs_stack_allocator_allocate(v230, v231 + 64, 8);
              *v238 = &type metadata for DebugInfoWireframePrimitive;
              v238[1] = &off_1F25604A8;
              v238[2] = &type metadata for DebugInfoColor;
              v238[3] = &off_1F2560488;
              v238[4] = &type metadata for WorldTransform;
              v238[5] = &off_1F2529FC0;
              v238[6] = &type metadata for Beamed;
              v238[7] = &off_1F2529FA0;
              if (!v229)
              {
                v240 = 4;
LABEL_269:
                LOBYTE(v579[0]) = 1;
                sub_1AF63D8A8(v238, v240, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a4, v582, v28, v569, v570, v571, v572);
LABEL_270:
                ecs_stack_allocator_pop_snapshot(*v32);
                sub_1AF6DE920();
                v579[0] = v244;
                v579[1] = v245;
                v580 = 2;
                v581 = 0;
                ecs_stack_allocator_push_snapshot(*v32);
                v246 = *(a5 + 16);
                v247 = *v32;
                v248 = 16 * v246;
                if (v56)
                {
                  v249 = ecs_stack_allocator_allocate(v247, v248 + 32, 8);
                  *v249 = &type metadata for DebugInfoWireframePrimitive;
                  v249[1] = &off_1F25604A8;
                  v249[2] = &type metadata for DebugInfoColor;
                  v249[3] = &off_1F2560488;
                  if (v246)
                  {
                    if (v246 > 5 && ((v249 + 4) >= a5 + v248 + 32 || a5 + 32 >= &v249[v248 / 8 + 4]))
                    {
                      v250 = v246 & 0x7FFFFFFFFFFFFFFCLL;
                      v251 = v246 & 0x7FFFFFFFFFFFFFFCLL | 2;
                      v437 = v249 + 8;
                      v438 = (a5 + 64);
                      v439 = v246 & 0x7FFFFFFFFFFFFFFCLL;
                      do
                      {
                        v441 = *(v438 - 2);
                        v440 = *(v438 - 1);
                        v443 = *v438;
                        v442 = v438[1];
                        v438 += 4;
                        *(v437 - 2) = v441;
                        *(v437 - 1) = v440;
                        *v437 = v443;
                        v437[1] = v442;
                        v437 += 4;
                        v439 -= 4;
                      }

                      while (v439);
                      if (v246 == v250)
                      {
                        goto LABEL_286;
                      }
                    }

                    else
                    {
                      v250 = 0;
                      v251 = 2;
                    }

                    v252 = v246 - v250;
                    v253 = (a5 + 16 * v250 + 32);
                    do
                    {
                      v254 = *v253++;
                      *&v249[2 * v251++] = v254;
                      --v252;
                    }

                    while (v252);
                  }

                  else
                  {
                    v251 = 2;
                  }

LABEL_286:
                  LOBYTE(v576[0]) = 1;
                  sub_1AF63C898(v249, v251, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a4, v579, v28);
                  goto LABEL_289;
                }

                v255 = ecs_stack_allocator_allocate(v247, v248 + 64, 8);
                *v255 = &type metadata for DebugInfoWireframePrimitive;
                v255[1] = &off_1F25604A8;
                v255[2] = &type metadata for DebugInfoColor;
                v255[3] = &off_1F2560488;
                v255[4] = &type metadata for WorldTransform;
                v255[5] = &off_1F2529FC0;
                v255[6] = &type metadata for Beamed;
                v255[7] = &off_1F2529FA0;
                if (!v246)
                {
                  v257 = 4;
LABEL_288:
                  LOBYTE(v576[0]) = 1;
                  sub_1AF63D8A8(v255, v257, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a4, v579, v28, v569, v570, v571, v572);
LABEL_289:
                  ecs_stack_allocator_pop_snapshot(*v32);
                  sub_1AF6DE920();
                  v576[0] = v261;
                  v576[1] = v262;
                  v577 = 2;
                  v578 = 0;
                  ecs_stack_allocator_push_snapshot(*v32);
                  v263 = *(a5 + 16);
                  v264 = *v32;
                  v265 = 16 * v263;
                  if (v56)
                  {
                    v266 = ecs_stack_allocator_allocate(v264, v265 + 32, 8);
                    *v266 = &type metadata for DebugInfoWireframePrimitive;
                    v266[1] = &off_1F25604A8;
                    v266[2] = &type metadata for DebugInfoColor;
                    v266[3] = &off_1F2560488;
                    if (v263)
                    {
                      if (v263 > 5 && ((v266 + 4) >= a5 + v265 + 32 || a5 + 32 >= &v266[v265 / 8 + 4]))
                      {
                        v267 = v263 & 0x7FFFFFFFFFFFFFFCLL;
                        v268 = v263 & 0x7FFFFFFFFFFFFFFCLL | 2;
                        v444 = v266 + 8;
                        v445 = (a5 + 64);
                        v446 = v263 & 0x7FFFFFFFFFFFFFFCLL;
                        do
                        {
                          v448 = *(v445 - 2);
                          v447 = *(v445 - 1);
                          v450 = *v445;
                          v449 = v445[1];
                          v445 += 4;
                          *(v444 - 2) = v448;
                          *(v444 - 1) = v447;
                          *v444 = v450;
                          v444[1] = v449;
                          v444 += 4;
                          v446 -= 4;
                        }

                        while (v446);
                        if (v263 == v267)
                        {
                          goto LABEL_305;
                        }
                      }

                      else
                      {
                        v267 = 0;
                        v268 = 2;
                      }

                      v269 = v263 - v267;
                      v270 = (a5 + 16 * v267 + 32);
                      do
                      {
                        v271 = *v270++;
                        *&v266[2 * v268++] = v271;
                        --v269;
                      }

                      while (v269);
                    }

                    else
                    {
                      v268 = 2;
                    }

LABEL_305:
                    LOBYTE(v573[0]) = 1;
                    sub_1AF63C898(v266, v268, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a4, v576, v28);
                    goto LABEL_308;
                  }

                  v272 = ecs_stack_allocator_allocate(v264, v265 + 64, 8);
                  *v272 = &type metadata for DebugInfoWireframePrimitive;
                  v272[1] = &off_1F25604A8;
                  v272[2] = &type metadata for DebugInfoColor;
                  v272[3] = &off_1F2560488;
                  v272[4] = &type metadata for WorldTransform;
                  v272[5] = &off_1F2529FC0;
                  v272[6] = &type metadata for Beamed;
                  v272[7] = &off_1F2529FA0;
                  if (!v263)
                  {
                    v274 = 4;
LABEL_307:
                    LOBYTE(v573[0]) = 1;
                    sub_1AF63D8A8(v272, v274, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a4, v576, v28, v569, v570, v571, v572);
LABEL_308:
                    ecs_stack_allocator_pop_snapshot(*v32);
                    sub_1AF6DE920();
                    v573[0] = v278;
                    v573[1] = v279;
                    v574 = 2;
                    v575 = 0;
                    ecs_stack_allocator_push_snapshot(*v32);
                    v280 = *(a5 + 16);
                    v281 = *v32;
                    v282 = 16 * v280;
                    if (v56)
                    {
                      v36 = ecs_stack_allocator_allocate(v281, v282 + 32, 8);
                      *v36 = &type metadata for DebugInfoWireframePrimitive;
                      v36[1] = &off_1F25604A8;
                      v36[2] = &type metadata for DebugInfoColor;
                      v36[3] = &off_1F2560488;
                      if (v280)
                      {
                        if (v280 > 5 && ((v36 + 4) >= a5 + v282 + 32 || a5 + 32 >= &v36[v282 / 8 + 4]))
                        {
                          v283 = v280 & 0x7FFFFFFFFFFFFFFCLL;
                          v38 = v280 & 0x7FFFFFFFFFFFFFFCLL | 2;
                          v451 = v36 + 8;
                          v452 = (a5 + 64);
                          v453 = v280 & 0x7FFFFFFFFFFFFFFCLL;
                          do
                          {
                            v455 = *(v452 - 2);
                            v454 = *(v452 - 1);
                            v457 = *v452;
                            v456 = v452[1];
                            v452 += 4;
                            *(v451 - 2) = v455;
                            *(v451 - 1) = v454;
                            *v451 = v457;
                            v451[1] = v456;
                            v451 += 4;
                            v453 -= 4;
                          }

                          while (v453);
                          if (v280 == v283)
                          {
                            goto LABEL_324;
                          }
                        }

                        else
                        {
                          v283 = 0;
                          v38 = 2;
                        }

                        v284 = v280 - v283;
                        v285 = (a5 + 16 * v283 + 32);
                        do
                        {
                          v286 = *v285++;
                          *&v36[2 * v38++] = v286;
                          --v284;
                        }

                        while (v284);
                      }

                      else
                      {
                        v38 = 2;
                      }

LABEL_324:
                      v154 = MEMORY[0x1E69E7CC0];
                      v155 = v573;
                      goto LABEL_159;
                    }

                    v168 = ecs_stack_allocator_allocate(v281, v282 + 64, 8);
                    *v168 = &type metadata for DebugInfoWireframePrimitive;
                    v168[1] = &off_1F25604A8;
                    v168[2] = &type metadata for DebugInfoColor;
                    v168[3] = &off_1F2560488;
                    v168[4] = &type metadata for WorldTransform;
                    v168[5] = &off_1F2529FC0;
                    v168[6] = &type metadata for Beamed;
                    v168[7] = &off_1F2529FA0;
                    if (!v280)
                    {
                      v170 = 4;
LABEL_326:
                      v194 = MEMORY[0x1E69E7CC0];
                      v195 = v573;
                      goto LABEL_207;
                    }

                    if (v280 > 0x13)
                    {
                      v287 = 0;
                      v355 = 2 * (v280 - 1);
                      v170 = 4;
                      if (&v168[v355 + 8] < v168 + 8 || &v168[v355 + 9] < v168 + 9 || (v280 - 1) >> 60)
                      {
                        goto LABEL_320;
                      }

                      if ((v168 + 8) >= a5 + v282 + 32 || a5 + 32 >= &v168[v282 / 8 + 8])
                      {
                        v287 = v280 & 0x1FFFFFFFFFFFFFFCLL;
                        v170 = (v280 & 0x1FFFFFFFFFFFFFFCLL) + 4;
                        v356 = v168 + 12;
                        v357 = (a5 + 64);
                        v358 = v280 & 0x1FFFFFFFFFFFFFFCLL;
                        do
                        {
                          v360 = *(v357 - 2);
                          v359 = *(v357 - 1);
                          v362 = *v357;
                          v361 = v357[1];
                          v357 += 4;
                          *(v356 - 2) = v360;
                          *(v356 - 1) = v359;
                          *v356 = v362;
                          v356[1] = v361;
                          v356 += 4;
                          v358 -= 4;
                        }

                        while (v358);
                        if (v280 == v287)
                        {
                          goto LABEL_326;
                        }

                        goto LABEL_320;
                      }
                    }

                    v287 = 0;
                    v170 = 4;
LABEL_320:
                    v288 = v280 - v287;
                    v289 = (a5 + 16 * v287 + 32);
                    do
                    {
                      v290 = *v289++;
                      *&v168[2 * v170++] = v290;
                      --v288;
                    }

                    while (v288);
                    goto LABEL_326;
                  }

                  if (v263 > 0x13)
                  {
                    v273 = 0;
                    v347 = 2 * (v263 - 1);
                    v274 = 4;
                    if (&v272[v347 + 8] < v272 + 8 || &v272[v347 + 9] < v272 + 9 || (v263 - 1) >> 60)
                    {
                      goto LABEL_301;
                    }

                    if ((v272 + 8) >= a5 + v265 + 32 || a5 + 32 >= &v272[v265 / 8 + 8])
                    {
                      v273 = v263 & 0x1FFFFFFFFFFFFFFCLL;
                      v274 = (v263 & 0x1FFFFFFFFFFFFFFCLL) + 4;
                      v348 = v272 + 12;
                      v349 = (a5 + 64);
                      v350 = v263 & 0x1FFFFFFFFFFFFFFCLL;
                      do
                      {
                        v352 = *(v349 - 2);
                        v351 = *(v349 - 1);
                        v354 = *v349;
                        v353 = v349[1];
                        v349 += 4;
                        *(v348 - 2) = v352;
                        *(v348 - 1) = v351;
                        *v348 = v354;
                        v348[1] = v353;
                        v348 += 4;
                        v350 -= 4;
                      }

                      while (v350);
                      if (v263 == v273)
                      {
                        goto LABEL_307;
                      }

                      goto LABEL_301;
                    }
                  }

                  v273 = 0;
                  v274 = 4;
LABEL_301:
                  v275 = v263 - v273;
                  v276 = (a5 + 16 * v273 + 32);
                  do
                  {
                    v277 = *v276++;
                    *&v272[2 * v274++] = v277;
                    --v275;
                  }

                  while (v275);
                  goto LABEL_307;
                }

                if (v246 > 0x13)
                {
                  v256 = 0;
                  v339 = 2 * (v246 - 1);
                  v257 = 4;
                  if (&v255[v339 + 8] < v255 + 8 || &v255[v339 + 9] < v255 + 9 || (v246 - 1) >> 60)
                  {
                    goto LABEL_282;
                  }

                  if ((v255 + 8) >= a5 + v248 + 32 || a5 + 32 >= &v255[v248 / 8 + 8])
                  {
                    v256 = v246 & 0x1FFFFFFFFFFFFFFCLL;
                    v257 = (v246 & 0x1FFFFFFFFFFFFFFCLL) + 4;
                    v340 = v255 + 12;
                    v341 = (a5 + 64);
                    v342 = v246 & 0x1FFFFFFFFFFFFFFCLL;
                    do
                    {
                      v344 = *(v341 - 2);
                      v343 = *(v341 - 1);
                      v346 = *v341;
                      v345 = v341[1];
                      v341 += 4;
                      *(v340 - 2) = v344;
                      *(v340 - 1) = v343;
                      *v340 = v346;
                      v340[1] = v345;
                      v340 += 4;
                      v342 -= 4;
                    }

                    while (v342);
                    if (v246 == v256)
                    {
                      goto LABEL_288;
                    }

                    goto LABEL_282;
                  }
                }

                v256 = 0;
                v257 = 4;
LABEL_282:
                v258 = v246 - v256;
                v259 = (a5 + 16 * v256 + 32);
                do
                {
                  v260 = *v259++;
                  *&v255[2 * v257++] = v260;
                  --v258;
                }

                while (v258);
                goto LABEL_288;
              }

              if (v229 > 0x13)
              {
                v239 = 0;
                v331 = 2 * (v229 - 1);
                v240 = 4;
                if (&v238[v331 + 8] < v238 + 8 || &v238[v331 + 9] < v238 + 9 || (v229 - 1) >> 60)
                {
                  goto LABEL_263;
                }

                if ((v238 + 8) >= a5 + v231 + 32 || a5 + 32 >= &v238[v231 / 8 + 8])
                {
                  v239 = v229 & 0x1FFFFFFFFFFFFFFCLL;
                  v240 = (v229 & 0x1FFFFFFFFFFFFFFCLL) + 4;
                  v332 = v238 + 12;
                  v333 = (a5 + 64);
                  v334 = v229 & 0x1FFFFFFFFFFFFFFCLL;
                  do
                  {
                    v336 = *(v333 - 2);
                    v335 = *(v333 - 1);
                    v338 = *v333;
                    v337 = v333[1];
                    v333 += 4;
                    *(v332 - 2) = v336;
                    *(v332 - 1) = v335;
                    *v332 = v338;
                    v332[1] = v337;
                    v332 += 4;
                    v334 -= 4;
                  }

                  while (v334);
                  if (v229 == v239)
                  {
                    goto LABEL_269;
                  }

                  goto LABEL_263;
                }
              }

              v239 = 0;
              v240 = 4;
LABEL_263:
              v241 = v229 - v239;
              v242 = (a5 + 16 * v239 + 32);
              do
              {
                v243 = *v242++;
                *&v238[2 * v240++] = v243;
                --v241;
              }

              while (v241);
              goto LABEL_269;
            }

            if (v212 > 0x13)
            {
              v222 = 0;
              v323 = 2 * (v212 - 1);
              v223 = 4;
              if (&v221[v323 + 8] < v221 + 8 || &v221[v323 + 9] < v221 + 9 || (v212 - 1) >> 60)
              {
                goto LABEL_244;
              }

              if ((v221 + 8) >= a5 + v214 + 32 || a5 + 32 >= &v221[v214 / 8 + 8])
              {
                v222 = v212 & 0x1FFFFFFFFFFFFFFCLL;
                v223 = (v212 & 0x1FFFFFFFFFFFFFFCLL) + 4;
                v324 = v221 + 12;
                v325 = (a5 + 64);
                v326 = v212 & 0x1FFFFFFFFFFFFFFCLL;
                do
                {
                  v328 = *(v325 - 2);
                  v327 = *(v325 - 1);
                  v330 = *v325;
                  v329 = v325[1];
                  v325 += 4;
                  *(v324 - 2) = v328;
                  *(v324 - 1) = v327;
                  *v324 = v330;
                  v324[1] = v329;
                  v324 += 4;
                  v326 -= 4;
                }

                while (v326);
                if (v212 == v222)
                {
                  goto LABEL_250;
                }

                goto LABEL_244;
              }
            }

            v222 = 0;
            v223 = 4;
LABEL_244:
            v224 = v212 - v222;
            v225 = (a5 + 16 * v222 + 32);
            do
            {
              v226 = *v225++;
              *&v221[2 * v223++] = v226;
              --v224;
            }

            while (v224);
            goto LABEL_250;
          }

          if (v57 > 0x13)
          {
            v103 = 0;
            v315 = 2 * (v57 - 1);
            v104 = 4;
            if (&v102[v315 + 8] < v102 + 8 || &v102[v315 + 9] < v102 + 9 || (v57 - 1) >> 60)
            {
              goto LABEL_98;
            }

            if ((v102 + 8) >= a5 + v59 + 32 || a5 + 32 >= &v102[v59 / 8 + 8])
            {
              v103 = v57 & 0x1FFFFFFFFFFFFFFCLL;
              v104 = (v57 & 0x1FFFFFFFFFFFFFFCLL) + 4;
              v316 = v102 + 12;
              v317 = (a5 + 64);
              v318 = v57 & 0x1FFFFFFFFFFFFFFCLL;
              do
              {
                v320 = *(v317 - 2);
                v319 = *(v317 - 1);
                v322 = *v317;
                v321 = v317[1];
                v317 += 4;
                *(v316 - 2) = v320;
                *(v316 - 1) = v319;
                *v316 = v322;
                v316[1] = v321;
                v316 += 4;
                v318 -= 4;
              }

              while (v318);
              if (v57 == v103)
              {
                goto LABEL_231;
              }

              goto LABEL_98;
            }
          }

          v103 = 0;
          v104 = 4;
LABEL_98:
          v105 = v57 - v103;
          v106 = (a5 + 16 * v103 + 32);
          do
          {
            v107 = *v106++;
            *&v102[2 * v104++] = v107;
            --v105;
          }

          while (v105);
          goto LABEL_231;
        }

        if (v9 != 2)
        {
          if (v9 != 5)
          {
            return result;
          }

          goto LABEL_47;
        }

        v588 = 0u;
        *&v589 = 0x400000003F000000;
        v592 = 5;
        v94 = a2[4].n128_u8[0];
        v32 = (a4 + 32);
        ecs_stack_allocator_push_snapshot(*(a4 + 32));
        v95 = *(a5 + 16);
        v96 = *(a4 + 32);
        v97 = 16 * v95;
        if (v94)
        {
          v36 = ecs_stack_allocator_allocate(v96, v97 + 32, 8);
          *v36 = &type metadata for DebugInfoWireframePrimitive;
          v36[1] = &off_1F25604A8;
          v36[2] = &type metadata for DebugInfoColor;
          v36[3] = &off_1F2560488;
          if (v95)
          {
            if (v95 > 5 && ((v36 + 4) >= a5 + v97 + 32 || a5 + 32 >= &v36[v97 / 8 + 4]))
            {
              v98 = v95 & 0x7FFFFFFFFFFFFFFCLL;
              v38 = v95 & 0x7FFFFFFFFFFFFFFCLL | 2;
              v527 = v36 + 8;
              v528 = (a5 + 64);
              v529 = v95 & 0x7FFFFFFFFFFFFFFCLL;
              do
              {
                v531 = *(v528 - 2);
                v530 = *(v528 - 1);
                v533 = *v528;
                v532 = v528[1];
                v528 += 4;
                *(v527 - 2) = v531;
                *(v527 - 1) = v530;
                *v527 = v533;
                v527[1] = v532;
                v527 += 4;
                v529 -= 4;
              }

              while (v529);
              if (v95 == v98)
              {
                goto LABEL_158;
              }
            }

            else
            {
              v98 = 0;
              v38 = 2;
            }

            v99 = v95 - v98;
            v100 = (a5 + 16 * v98 + 32);
            do
            {
              v101 = *v100++;
              *&v36[2 * v38++] = v101;
              --v99;
            }

            while (v99);
            goto LABEL_158;
          }

          goto LABEL_157;
        }

        v168 = ecs_stack_allocator_allocate(v96, v97 + 64, 8);
        *v168 = &type metadata for DebugInfoWireframePrimitive;
        v168[1] = &off_1F25604A8;
        v168[2] = &type metadata for DebugInfoColor;
        v168[3] = &off_1F2560488;
        v168[4] = &type metadata for WorldTransform;
        v168[5] = &off_1F2529FC0;
        v168[6] = &type metadata for Beamed;
        v168[7] = &off_1F2529FA0;
        if (!v95)
        {
          goto LABEL_205;
        }

        if (v95 > 0x13)
        {
          v182 = 0;
          v408 = 2 * (v95 - 1);
          v170 = 4;
          if (&v168[v408 + 8] < v168 + 8 || &v168[v408 + 9] < v168 + 9 || (v95 - 1) >> 60)
          {
            goto LABEL_190;
          }

          if ((v168 + 8) >= a5 + v97 + 32 || a5 + 32 >= &v168[v97 / 8 + 8])
          {
            v182 = v95 & 0x1FFFFFFFFFFFFFFCLL;
            v170 = (v95 & 0x1FFFFFFFFFFFFFFCLL) + 4;
            v409 = v168 + 12;
            v410 = (a5 + 64);
            v411 = v95 & 0x1FFFFFFFFFFFFFFCLL;
            do
            {
              v413 = *(v410 - 2);
              v412 = *(v410 - 1);
              v415 = *v410;
              v414 = v410[1];
              v410 += 4;
              *(v409 - 2) = v413;
              *(v409 - 1) = v412;
              *v409 = v415;
              v409[1] = v414;
              v409 += 4;
              v411 -= 4;
            }

            while (v411);
            if (v95 == v182)
            {
              goto LABEL_206;
            }

            goto LABEL_190;
          }
        }

        v182 = 0;
        v170 = 4;
LABEL_190:
        v183 = v95 - v182;
        v184 = (a5 + 16 * v182 + 32);
        do
        {
          v185 = *v184++;
          *&v168[2 * v170++] = v185;
          --v183;
        }

        while (v183);
        goto LABEL_206;
      }
    }

LABEL_166:
    v165 = v160 - v163;
    v166 = (a5 + 16 * v163 + 32);
    do
    {
      v167 = *v166++;
      *&v162[2 * v164++] = v167;
      --v165;
    }

    while (v165);
    goto LABEL_211;
  }

LABEL_128:
  v588 = xmmword_1AFE201A0;
  v589 = xmmword_1AFE9BBB0;
  LOBYTE(v590) = 2;
  v592 = 0;
  v130 = a2[4].n128_u8[0];
  v32 = (a4 + 32);
  ecs_stack_allocator_push_snapshot(*(a4 + 32));
  v131 = *(a5 + 16);
  v132 = *(a4 + 32);
  v133 = 16 * v131;
  if ((v130 & 1) == 0)
  {
    v168 = ecs_stack_allocator_allocate(v132, v133 + 64, 8);
    *v168 = &type metadata for DebugInfoWireframePrimitive;
    v168[1] = &off_1F25604A8;
    v168[2] = &type metadata for DebugInfoColor;
    v168[3] = &off_1F2560488;
    v168[4] = &type metadata for WorldTransform;
    v168[5] = &off_1F2529FC0;
    v168[6] = &type metadata for Beamed;
    v168[7] = &off_1F2529FA0;
    if (v131)
    {
      if (v131 > 0x13)
      {
        v174 = 0;
        v299 = 2 * (v131 - 1);
        v170 = 4;
        if (&v168[v299 + 8] < v168 + 8 || &v168[v299 + 9] < v168 + 9 || (v131 - 1) >> 60)
        {
          goto LABEL_178;
        }

        if ((v168 + 8) >= a5 + v133 + 32 || a5 + 32 >= &v168[v133 / 8 + 8])
        {
          v174 = v131 & 0x1FFFFFFFFFFFFFFCLL;
          v170 = (v131 & 0x1FFFFFFFFFFFFFFCLL) + 4;
          v300 = v168 + 12;
          v301 = (a5 + 64);
          v302 = v131 & 0x1FFFFFFFFFFFFFFCLL;
          do
          {
            v304 = *(v301 - 2);
            v303 = *(v301 - 1);
            v306 = *v301;
            v305 = v301[1];
            v301 += 4;
            *(v300 - 2) = v304;
            *(v300 - 1) = v303;
            *v300 = v306;
            v300[1] = v305;
            v300 += 4;
            v302 -= 4;
          }

          while (v302);
          if (v131 == v174)
          {
            goto LABEL_206;
          }

          goto LABEL_178;
        }
      }

      v174 = 0;
      v170 = 4;
LABEL_178:
      v175 = v131 - v174;
      v176 = (a5 + 16 * v174 + 32);
      do
      {
        v177 = *v176++;
        *&v168[2 * v170++] = v177;
        --v175;
      }

      while (v175);
      goto LABEL_206;
    }

LABEL_205:
    v170 = 4;
LABEL_206:
    LOBYTE(v585[0]) = 1;
    v194 = MEMORY[0x1E69E7CC0];
    v195 = &v588;
LABEL_207:
    sub_1AF63D8A8(v168, v170, v194, 1, 0x100000000uLL, a4, v195, v28, v569, v570, v571, v572);
    return ecs_stack_allocator_pop_snapshot(*v32);
  }

  v36 = ecs_stack_allocator_allocate(v132, v133 + 32, 8);
  *v36 = &type metadata for DebugInfoWireframePrimitive;
  v36[1] = &off_1F25604A8;
  v36[2] = &type metadata for DebugInfoColor;
  v36[3] = &off_1F2560488;
  if (!v131)
  {
    goto LABEL_157;
  }

  if (v131 > 5 && ((v36 + 4) >= a5 + v133 + 32 || a5 + 32 >= &v36[v133 / 8 + 4]))
  {
    v134 = v131 & 0x7FFFFFFFFFFFFFFCLL;
    v38 = v131 & 0x7FFFFFFFFFFFFFFCLL | 2;
    v394 = v36 + 8;
    v395 = (a5 + 64);
    v396 = v131 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v398 = *(v395 - 2);
      v397 = *(v395 - 1);
      v400 = *v395;
      v399 = v395[1];
      v395 += 4;
      *(v394 - 2) = v398;
      *(v394 - 1) = v397;
      *v394 = v400;
      v394[1] = v399;
      v394 += 4;
      v396 -= 4;
    }

    while (v396);
    if (v131 == v134)
    {
      goto LABEL_158;
    }
  }

  else
  {
    v134 = 0;
    v38 = 2;
  }

  v135 = v131 - v134;
  v136 = (a5 + 16 * v134 + 32);
  do
  {
    v137 = *v136++;
    *&v36[2 * v38++] = v137;
    --v135;
  }

  while (v135);
LABEL_158:
  LOBYTE(v585[0]) = 1;
  v154 = MEMORY[0x1E69E7CC0];
  v155 = &v588;
LABEL_159:
  sub_1AF63C898(v36, v38, v154, 1, 0x100000000uLL, a4, v155, v28);
  return ecs_stack_allocator_pop_snapshot(*v32);
}

double sub_1AFB4D3D8@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 257;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 12) = _D0;
  *(a1 + 20) = 0;
  *(a1 + 24) = xmmword_1AFE9BBC0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 1;
  *(a1 + 64) = 1065353216;
  *(a1 + 68) = 0;
  *(a1 + 76) = 0;
  *(a1 + 80) = xmmword_1AFE208C0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0x3F80000000000000;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  *&result = 0xFFFFFFFFLL;
  *(a1 + 132) = 0xFFFFFFFFLL;
  return result;
}

unint64_t sub_1AFB4D500(char a1)
{
  result = 1684957547;
  switch(a1)
  {
    case 1:
      result = 0x6874676E65727473;
      break;
    case 2:
      result = 0x6E696E65706D6164;
      break;
    case 3:
      result = 2003790950;
      break;
    case 4:
      result = 0x6F6D416573696F6ELL;
      break;
    case 5:
      result = 0x6565536573696F6ELL;
      break;
    case 6:
      result = 0x5073746365666661;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x73726579616CLL;
      break;
    case 9:
      result = 0x6F69746365726964;
      break;
    case 10:
      result = 0x66664F6C6C6166;
      break;
    case 11:
      result = 0x5066664F6C6C6166;
      break;
    case 12:
    case 13:
      result = 0x5266664F6C6C6166;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0x65727574786574;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1AFB4D8B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFB50548();
  *a1 = result;
  return result;
}

unint64_t sub_1AFB4D8E0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1AFB4D500(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1AFB4D928@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFB50548();
  *a1 = result;
  return result;
}

uint64_t sub_1AFB4D95C(uint64_t a1)
{
  v2 = sub_1AFB53F44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB4D998(uint64_t a1)
{
  v2 = sub_1AFB53F44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFB4D9D4(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6465657073;
    v7 = 0x746E65747865;
    if (a1 != 10)
    {
      v7 = 0x6C61636F6CLL;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x4566666F6C6C6166;
    v9 = 0x65727574786574;
    if (a1 != 7)
    {
      v9 = 0x657669746361;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 1684957547;
    v2 = 0x6F6D416573696F6ELL;
    v3 = 0x6565536573696F6ELL;
    if (a1 != 4)
    {
      v3 = 0x79726F6765746163;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6874676E65727473;
    if (a1 != 1)
    {
      v4 = 0x6E696E65706D6164;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

__n128 sub_1AFB4DB5C@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFB50C60(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1AFB4DBC0(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1AFDFEE28();
  }

  return v12 & 1;
}

uint64_t sub_1AFB4DC6C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  sub_1AFDFF288();
  a3(v5);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFB4DCF0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  sub_1AFDFD038();
}

uint64_t sub_1AFB4DD60(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  sub_1AFDFF288();
  a4(v6);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFB4DDC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFB504FC();
  *a1 = result;
  return result;
}

uint64_t sub_1AFB4DDF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AFB4D9D4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1AFB4DE40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFB504FC();
  *a1 = result;
  return result;
}

uint64_t sub_1AFB4DE68(uint64_t a1)
{
  v2 = sub_1AFB51804();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB4DEA4(uint64_t a1)
{
  v2 = sub_1AFB51804();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFB4DEE0(void *a1)
{
  v3 = v1;
  sub_1AFB53EDC(0, &qword_1EB642B38, sub_1AFB51804, &type metadata for ForceField.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFB51804();
  sub_1AFDFF3F8();
  v16 = *(v3 + 8);
  v15 = *(v3 + 9);
  v12 = *(v3 + 80);
  LOBYTE(v13) = 0;
  sub_1AFDFE8F8();
  if (!v2)
  {
    LOBYTE(v13) = 11;
    sub_1AFDFE8C8();
    LOBYTE(v13) = 1;
    sub_1AFDFE8E8();
    LOBYTE(v13) = 2;
    sub_1AFDFE8E8();
    LOBYTE(v13) = 3;
    sub_1AFDFE8E8();
    LOBYTE(v13) = 4;
    sub_1AFDFE998();
    LOBYTE(v13) = 5;
    sub_1AFDFE998();
    LOBYTE(v13) = 6;
    sub_1AFDFE8E8();
    *&v13 = *(v3 + 132);
    v14 = 7;
    sub_1AF480018();
    sub_1AFDFE918();
    LOBYTE(v13) = 8;
    sub_1AFDFE8C8();
    LOBYTE(v13) = 9;
    sub_1AFDFE8E8();
    v13 = v12;
    v14 = 10;
    sub_1AFB53EDC(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    sub_1AFB518AC(&qword_1ED72F758);
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v10, v6);
}

__n128 sub_1AFB4E29C@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFB505E0(a1, v8);
  if (!v2)
  {
    v5 = v9[0];
    *(a2 + 96) = v8[6];
    *(a2 + 112) = v5;
    *(a2 + 124) = *(v9 + 12);
    v6 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v6;
    v7 = v8[5];
    *(a2 + 64) = v8[4];
    *(a2 + 80) = v7;
    result = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1AFB4E310@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AFB50474();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

void sub_1AFB4E360(uint64_t a1)
{
  v2 = *(v1 + 32);
  v17[0] = *(v1 + 16);
  v17[1] = v2;
  v18 = *(v1 + 48);
  sub_1AF6B06C0(a1, v17, 0x200000000, &v3);
  if (v3)
  {
    v13 = v6;
    v14 = v7;
    v15 = v8;
    v16 = v9;
    v11 = v4;
    v12 = v5;
    v10 = v3;
    sub_1AFD06C54(&v10);
    sub_1AFB53B70(&v3, &qword_1ED725EA0, &type metadata for QueryResult);
  }
}

void sub_1AFB4E438(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v5 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v3);

  sub_1AF6B1B20(a1, v5, v3);
  v6 = *(v4 + 40);

  os_unfair_lock_unlock(v6);
}

uint64_t sub_1AFB4E514(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6573696F6ELL;
    v7 = 0x6E656C7562727574;
    if (a1 != 10)
    {
      v7 = 0x676E69727073;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x73726579616CLL;
    v9 = 0x65727574786574;
    if (a1 != 7)
    {
      v9 = 0x7261656E696CLL;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6C6169646172;
    v2 = 0x636974656E67616DLL;
    v3 = 0x63696E6F6D726168;
    if (a1 != 4)
    {
      v3 = 1734439524;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 1684957559;
    if (a1 != 1)
    {
      v4 = 0x786574726F76;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

double sub_1AFB4E66C@<D0>(uint64_t a1@<X8>)
{
  __asm { FMOV            V0.4S, #1.0 }

  *a1 = _Q0;
  *(a1 + 16) = _Q0;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 32) = result;
  *(a1 + 40) = 255;
  return result;
}

uint64_t sub_1AFB4E6E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFB50594();
  *a1 = result;
  return result;
}

uint64_t sub_1AFB4E718@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AFB4E514(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1AFB4E760@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFB50594();
  *a1 = result;
  return result;
}

uint64_t sub_1AFB4E788(uint64_t a1)
{
  v2 = sub_1AFB519B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB4E7C4(uint64_t a1)
{
  v2 = sub_1AFB519B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFB4E800(void *a1)
{
  v3 = v1;
  sub_1AFB53EDC(0, &qword_1EB642B50, sub_1AFB519B0, &type metadata for ParticleForceField.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12[-v9];
  sub_1AF441150(a1, a1[3]);
  sub_1AFB519B0();
  sub_1AFDFF3F8();
  v21 = 0;
  sub_1AFDFE8E8();
  if (!v2)
  {
    v20 = 2;
    sub_1AFDFE8E8();
    v19 = 3;
    sub_1AFDFE8E8();
    v18 = 4;
    sub_1AFDFE8E8();
    v17 = 5;
    sub_1AFDFE8E8();
    v13 = *(v3 + 40);
    v16 = 6;
    sub_1AFA08840();
    sub_1AFDFE918();
    v15 = 7;
    sub_1AFDFE8E8();
    v14 = 8;
    sub_1AFDFE8E8();
    v12[11] = 9;
    sub_1AFDFE8E8();
    v12[10] = 10;
    sub_1AFDFE8E8();
    v12[9] = 11;
    sub_1AFDFE8E8();
  }

  return (*(v7 + 8))(v10, v6);
}

double sub_1AFB4EADC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AFB51250(a1, &v6);
  if (!v2)
  {
    v5 = *v7;
    *a2 = v6;
    a2[1] = v5;
    result = *&v7[12];
    *(a2 + 28) = *&v7[12];
  }

  return result;
}

void sub_1AFB4EB3C(uint64_t a1, float32x4_t a2)
{
  v2 = a2.i64[0];
  v3 = a2.f32[2];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 80);
  if (v6 == 1 && a2.f32[2] < 0.0 || v6 == 2 && a2.f32[2] > 0.0)
  {
    return;
  }

  if (v4 <= 1)
  {
    v15 = 1.0;
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_39;
      }

      v16 = fabsf(*&v2);
      v17 = 0.0;
      v18 = 0.0;
      v34 = *(a1 + 80);
      if (*&v8 >= v16)
      {
        v32 = HIDWORD(v2);
        v19 = powf(v16 / *&v8, v7);
        HIDWORD(v2) = v32;
        v8 = v34;
        v18 = 1.0 - v19;
      }

      v20 = fabsf(*(&v2 + 1));
      if (*(&v8 + 1) >= v20)
      {
        v21 = powf(v20 / *(&v8 + 1), v7);
        DWORD2(v8) = DWORD2(v34);
        v17 = 1.0 - v21;
      }

      v22 = fabsf(v3);
      v23 = 0.0;
      if (*(&v8 + 2) >= v22)
      {
        v23 = 1.0 - powf(v22 / *(&v8 + 2), v7);
      }

      if (v17 >= v18)
      {
        v15 = v18;
      }

      else
      {
        v15 = v17;
      }

      if (v23 < v15)
      {
        v15 = v23;
        if (v5 != 1)
        {
          return;
        }

        goto LABEL_31;
      }
    }

LABEL_30:
    if (v5 != 1)
    {
      return;
    }

    goto LABEL_31;
  }

  if (v4 == 2)
  {
    v24 = vmulq_f32(a2, a2);
    v25 = sqrtf(v24.f32[2] + vaddv_f32(*v24.f32));
    v15 = 0.0;
    if (*(&v8 + 2) >= v25)
    {
      v15 = 1.0 - powf(v25 / *(&v8 + 2), *(a1 + 64));
    }

    goto LABEL_30;
  }

  if (v4 == 3)
  {
    v9 = fabsf(a2.f32[2]);
    LODWORD(v10) = *(a1 + 88);
    if (*(&v8 + 2) < v9)
    {
      return;
    }

    v30 = *a2.f32;
    v33 = *(a1 + 80);
    v11 = 1.0 - powf(v9 / *(&v8 + 2), v7);
    if (v11 == 0.0)
    {
      return;
    }

    v12 = (v9 * *&v33) / fmaxf(v10, 0.001);
    v13 = sqrtf(vaddv_f32(vmul_f32(v30, v30)));
    v14 = 0.0;
    if (v12 >= v13)
    {
      v14 = 1.0 - powf(v13 / v12, v7);
    }

    v15 = v11 * v14;
    if (v5 != 1)
    {
      return;
    }

LABEL_31:
    ceilf(v15);
    return;
  }

  if (v4 != 4)
  {
LABEL_39:
    sub_1AFDFE518();
    __break(1u);
    return;
  }

  v26 = fabsf(a2.f32[2]);
  if (*(&v8 + 2) >= v26)
  {
    v31 = *a2.f32;
    v35 = *(a1 + 80);
    v27 = 1.0 - powf(v26 / *(&v8 + 2), v7);
    if (v27 != 0.0)
    {
      v28 = sqrtf(vaddv_f32(vmul_f32(v31, v31)));
      v29 = 0.0;
      if (*&v35 >= v28)
      {
        v29 = 1.0 - powf(v28 / *&v35, v7);
      }

      v15 = v27 * v29;
      if (v5 == 1)
      {
        goto LABEL_31;
      }
    }
  }
}

void sub_1AFB4EE18(void *a1, __int128 *a2, void *a3, uint64_t a4, float a5, float32_t a6, int32x4_t a7, float32x4_t a8, float32x4_t a9, float32x4_t a10, float32x4_t a11, float32x4_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, float32x4_t a17, float a18, float a19)
{
  v111 = *MEMORY[0x1E69E9840];
  v25 = a1[11];
  v26 = a1[12];
  v27 = a1[13];
  v28 = a1[2];
  v29 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v25, v26, v27, v28);
  v30 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v25, v26, v27, v28);
  v31 = sub_1AF9C5EE8();
  v33 = a1[6];
  v34 = a1[7];
  v35 = v34 - v33;
  if (v34 != v33)
  {
    v36 = v32;
    v90 = vaddq_f32(a8, a9);
    v88 = vextq_s8(vuzp1q_s32(a7, a7), a7, 0xCuLL);
    v87 = vnegq_f32(a7);
    v37 = (v31 + 4 * v33);
    v38 = 16 * v33;
    v39 = (v30 + v38);
    for (i = (v29 + v38); ; ++i)
    {
      v44 = a2[7];
      v109 = a2[6];
      v110[0] = v44;
      *(v110 + 12) = *(a2 + 124);
      v45 = a2[3];
      v105 = a2[2];
      v106 = v45;
      v46 = a2[5];
      v107 = a2[4];
      v108 = v46;
      v47 = a2[1];
      v103 = *a2;
      v104 = v47;
      v48 = 1.0;
      if ((v36 & 1) == 0)
      {
        v48 = *v37;
      }

      v95 = v48;
      v49 = *i;
      v94 = *v39;
      v50 = v103;
      v51 = *(&v103 + 3);
      v52 = *(&v104 + 1);
      v53 = *&v110[0];
      v54 = *(&v103 + 3);
      if (*(&v104 + 1) > 0.0)
      {
        v55 = a3[1];
        v56 = a3[2] ^ *a3;
        v57 = a3[3] ^ v55;
        *a3 ^= v57;
        a3[1] = v56 ^ v55;
        a3[2] = v56 ^ (v55 << 17);
        a3[3] = __ROR8__(v57, 19);
        v58 = vcvts_n_f32_u64((9 * ((((5 * v55) >> 32) >> 25) | (640 * v55))) & 0xFFFFFFLL, 0x18uLL);
        v54 = v51 + (v52 * ((v58 + v58) + -1.0));
      }

      v59 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(a17, a12, v49, 2), a11, *v49.f32, 1), a10, v49.f32[0]);
      v96 = v49;
      v98 = v59;
      v59.i32[3] = a9.i32[3];
      v60 = v54 * a5;
      sub_1AFB4EB3C(&v103, v59);
      v63 = v60 * v61;
      v41 = 0uLL;
      if ((v60 * v61) == 0.0)
      {
        goto LABEL_6;
      }

      v64 = v63 * a19;
      if (v50 <= 4)
      {
        if (v50 > 2)
        {
          v70 = 0.0;
          if (*&v53 >= 0.0)
          {
            v70 = *&v53;
          }

          v102 = 0uLL;
          v99 = v63 * a19;
          v71 = srdnoise3(&v102, ((1.25 / (v70 + 0.083333)) + -1.0) * v96.f32[0], vmuls_lane_f32((1.25 / (v70 + 0.083333)) + -1.0, *v96.f32, 1), vmuls_lane_f32((1.25 / (v70 + 0.083333)) + -1.0, v96, 2), *(&v53 + 1) * a18);
          *v41.f32 = vmul_n_f32(vmul_n_f32(*v102.f32, v71), v99);
          v42 = v99 * vmuls_lane_f32(v71, v102, 2);
          if (v50 == 4)
          {
            v72 = vmulq_f32(v94, v94);
            v72.f32[0] = sqrtf(v72.f32[2] + vaddv_f32(*v72.f32)) * v95;
            *v41.f32 = vmul_n_f32(*v41.f32, v72.f32[0]);
            v42 = v72.f32[0] * v42;
          }
        }

        else
        {
          v65 = v95 * v64;
          if (v50)
          {
            if (v50 == 1)
            {
              v66 = vsubq_f32(v96, v90);
              v67 = vsub_f32(*v96.f32, *v90.f32);
              v68 = v65 / fmaxf(sqrtf(vmuls_lane_f32(v66.f32[2], v66, 2) + vaddv_f32(vmul_f32(v67, v67))), 0.00001);
              *v41.f32 = vmul_n_f32(v67, v68);
              v42 = vmuls_lane_f32(v68, v66, 2);
            }

            else
            {
              if (v50 != 2)
              {
                goto LABEL_39;
              }

              v77 = vsubq_f32(v96, v90);
              v78 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v77, v77), v77, 0xCuLL), v87), v77, v88);
              v77.i32[0] = vextq_s8(v78, v78, 8uLL).u32[0];
              v77.i32[1] = v78.i32[0];
              *v41.f32 = vmul_n_f32(*v77.f32, v64);
              v42 = vmuls_lane_f32(v64, *v78.i8, 1);
            }
          }

          else
          {
            v41.i64[0] = vmulq_n_f32(a7, v65).u64[0];
            v42 = *&a7.i32[2] * v65;
          }
        }

        goto LABEL_5;
      }

      if (v50 <= 6)
      {
        v73 = vsubq_f32(v96, v90);
        if (v50 == 5)
        {
          v74 = vsub_f32(*v96.f32, *v90.f32);
          v73.f32[0] = sqrtf(vmuls_lane_f32(v73.f32[2], v73, 2) + vaddv_f32(vmul_f32(v74, v74)));
          *v41.f32 = vmul_n_f32(vmul_n_f32(vmul_n_f32(vsub_f32(0, v74), v73.f32[0]), v95), v64);
          v42 = (((0.0 - v73.f32[2]) * v73.f32[0]) * v95) * v64;
        }

        else
        {
          v82 = vmlaq_f32(vmulq_f32(v88, vnegq_f32(v94)), a7, vextq_s8(vuzp1q_s32(v94, v94), v94, 0xCuLL));
          v83 = vsub_f32(*v96.f32, *v90.f32);
          v84 = (1.0 / sqrtf(COERCE_FLOAT(vmulq_f32(v73, v73).i32[2]) + vaddv_f32(vmul_f32(v83, v83)))) * v64;
          v83.i32[0] = vextq_s8(v82, v82, 8uLL).u32[0];
          v83.i32[1] = v82.i32[0];
          *v41.f32 = vmul_n_f32(v83, v84);
          v42 = vmuls_lane_f32(v84, *v82.i8, 1);
        }

        goto LABEL_5;
      }

      if (v50 == 7)
      {
        v75 = (a6 * -2.0) * sqrtf(fabsf(v51));
        v76 = vmuls_lane_f32(v75, v94, 2);
        *v41.f32 = vsub_f32(vmul_n_f32(*v94.f32, v75), vmul_n_f32(vsub_f32(*v96.f32, *v90.f32), v64));
        v42 = v76 - vmuls_lane_f32(v64, vsubq_f32(v96, v90), 2);
LABEL_5:
        v41.i64[1] = LODWORD(v42);
        goto LABEL_6;
      }

      if (v50 == 8)
      {
        break;
      }

      if (v50 != 9)
      {
LABEL_39:
        sub_1AFDFE518();
        __break(1u);
        return;
      }

      v79 = *(a4 + 72);
      if (v79 != 1)
      {
        v80.n128_u32[3] = v98.u32[3];
        v80.n128_u64[0] = vadd_f32(vmul_f32(*v98.f32, 0x3F0000003F000000), 0x3F0000003F000000);
        v80.n128_f32[2] = vmuls_lane_f32(0.5, v98, 2) + 0.5;
        v100 = v63 * a19;
        *v81.i64 = v79(a4, v80);
        v41.i64[0] = vmulq_n_f32(v81, v100).u64[0];
        v42 = vmuls_lane_f32(v100, v81, 2);
        goto LABEL_5;
      }

LABEL_6:
      v43 = vaddq_f32(v41, *v39);
      v43.i32[3] = 0;
      *v39++ = v43;
      ++v37;
      if (!--v35)
      {
        return;
      }
    }

    v41.i32[0] = 2.0;
    if (v51 <= 2.0)
    {
      v69 = v51 * a19;
      if (a6 > 2.0)
      {
LABEL_38:
        v85 = vmulq_f32(v94, v94);
        v85.f32[0] = sqrtf(v85.f32[2] + vaddv_f32(*v85.f32));
        *v62.i32 = fmaxf(v85.f32[0], 0.00001);
        v86 = -(v61 * v85.f32[0]) * (v41.f32[0] + (v85.f32[0] * v69));
        *v41.f32 = vdup_lane_s32(v62, 0);
        v41.i64[0] = vmulq_n_f32(vdivq_f32(v94, v41), v86).u64[0];
        v42 = (v94.f32[2] / *v62.i32) * v86;
        goto LABEL_5;
      }
    }

    else
    {
      v69 = a19 + a19;
      if (a6 > 2.0)
      {
        goto LABEL_38;
      }
    }

    v41.f32[0] = a6;
    goto LABEL_38;
  }
}

uint64_t sub_1AFB4F490(uint64_t a1)
{
  v1 = *(a1 + 88);
  v182 = *(a1 + 72);
  v183 = v1;
  v2 = *(a1 + 120);
  v184 = *(a1 + 104);
  v185 = v2;
  v3 = *(a1 + 24);
  v179[0] = *(a1 + 8);
  v179[1] = v3;
  v4 = *(a1 + 40);
  v147 = a1;
  v5 = *(a1 + 56);
  v180 = v4;
  v181 = v5;
  v6 = *&v179[0];

  sub_1AF3CF4B8(*(&v179[0] + 1), &v153);
  v151 = v6;

  if (v155.columns[0].u8[12] == 1)
  {
    v9 = 1.0;
    v132 = 1.0;
    v133 = 1.0;
    v10 = 1.0;
    v11 = 1.0;
    v12 = 1.0;
    v13 = 1.0;
    v14 = 1.0;
    v15 = 1.0;
    v16 = 1.0;
  }

  else
  {
    if (!v155.columns[0].i32[2])
    {
      return result;
    }

    v16 = *v153.i32;
    v14 = *&v153.i32[3];
    v15 = *&v153.i32[2];
    v12 = *&v154.i32[1];
    v13 = *v154.i32;
    v10 = *&v154.i32[3];
    v11 = *&v154.i32[2];
    v132 = *&v153.i32[1];
    v9 = v155.columns[0].i32[1];
    v133 = v155.columns[0].i32[0];
  }

  LODWORD(v8) = *(v151 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 64);
  v143 = v8;
  v17 = v180;
  swift_retain_n();
  v142 = v17;
  sub_1AFB95040(v17, &v168);
  *v146 = v168.columns[0];
  v148 = v168.columns[1];
  v149 = v168.columns[2];
  v150 = v168.columns[3];

  if (v169)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  v19 = *(v144 + 64);
  v188[0] = *(v144 + 48);
  v188[1] = v19;
  v189 = *(v144 + 80);
  sub_1AF6B06C0(v151, v188, 0x200000000, v170);
  v124 = *&v170[0];
  if (*&v170[0])
  {
    v123 = *(&v170[2] + 1);
    v20 = *(&v171 + 1);
    v131 = v172.i64[1];
    v174 = *(v170 + 8);
    v175 = *(&v170[1] + 8);
    if (v173.i64[0] <= 0)
    {
      sub_1AFB53B70(v170, &qword_1ED725EA0, &type metadata for QueryResult);
    }

    else
    {
      if (*(&v171 + 1))
      {
        v21 = vdupq_n_s32(v18);
        v141 = vbslq_s8(v21, xmmword_1AFE20150, *v146);
        v140 = vbslq_s8(v21, xmmword_1AFE20160, v148);
        v139 = vbslq_s8(v21, xmmword_1AFE20180, v149);
        v138 = vbslq_s8(v21, xmmword_1AFE201A0, v150);
        v130 = v131[4];
        v129 = *(v172.i64[0] + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v167[2] = v170[2];
        v167[3] = v171;
        v167[4] = v172;
        v167[5] = v173;
        v167[0] = v170[0];
        v167[1] = v170[1];
        sub_1AF5DD298(v167, &v153);
        v22 = 0;
        v150.i64[0] = 0;
        v137 = 0x80000001AFF48D50;
        v136 = xmmword_1AFE431C0;
        v135 = xmmword_1AFE9BBD0;
        v122 = v20;
        do
        {
          v128 = v22;
          v23 = (v123 + 48 * v22);
          v25 = *v23;
          v24 = v23[1];
          v27 = *(v23 + 2);
          v26 = *(v23 + 3);
          v29 = *(v23 + 4);
          v28 = *(v23 + 5);
          v134 = v28;
          v149.i64[0] = v24;
          if (v129)
          {
            v30 = *(v134 + 47);

            v31 = v30;
            v28 = v134;
            os_unfair_lock_lock(v31);
            os_unfair_lock_lock(*(v28 + 43));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v130);
          v32 = v131;
          v33 = *(v131 + 4);
          v186[0] = *(v131 + 3);
          v186[1] = v33;
          v187 = v131[10];
          v34 = v131[4];
          v35 = *(*(*(*(v28 + 5) + 16) + 32) + 16) + 1;

          v32[6] = ecs_stack_allocator_allocate(v34, 48 * v35, 8);
          v32[7] = v35;
          v32[9] = 0;
          v32[10] = 0;
          v32[8] = 0;

          v36 = sub_1AF64B110(&type metadata for ForceField, &off_1F2560F10, v27, v26, v29, v32);
          sub_1AF64B110(&type metadata for ForceFieldRuntime, &off_1F2560FC0, v27, v26, v29, v32);
          v37 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v27, v26, v29, v32);
          if (v27)
          {
            v39 = v150.i64[0];
            v40 = v148;
            v42 = v145;
            v41 = *v146;
            if (v29)
            {
              v43 = v36 + 56;
              v44 = (v37 + 32);
              do
              {
                v45 = *(v43 - 56);
                if (v45 > 4)
                {
                  if (v45 <= 6)
                  {
                    v38.i32[0] = v9;
                    if (v45 != 5)
                    {
                      *v38.i32 = v14;
                    }
                  }

                  else
                  {
                    *v38.i32 = v13;
                    if (v45 != 7)
                    {
                      *v38.i32 = v12;
                      if (v45 != 8)
                      {
                        *v38.i32 = v11;
                        if (v45 != 9)
                        {
                          goto LABEL_71;
                        }
                      }
                    }
                  }
                }

                else if (v45 <= 1)
                {
                  *v38.i32 = v16;
                  if (v45)
                  {
                    *v38.i32 = v132;
                    if (v45 != 1)
                    {
                      goto LABEL_71;
                    }
                  }
                }

                else
                {
                  *v38.i32 = v15;
                  if (v45 != 2)
                  {
                    *v38.i32 = v10;
                    if (v45 != 3)
                    {
                      v38.i32[0] = v133;
                    }
                  }
                }

                if (*v38.i32 != 0.0)
                {
                  v46 = *v44;
                  v47 = v44[1];
                  v48 = vmulq_f32(v46, v46);
                  *&v49 = v48.f32[2] + vaddv_f32(*v48.f32);
                  *v48.f32 = vrsqrte_f32(v49);
                  *v48.f32 = vmul_f32(*v48.f32, vrsqrts_f32(v49, vmul_f32(*v48.f32, *v48.f32)));
                  v50 = vmulq_n_f32(*v44, vmul_f32(*v48.f32, vrsqrts_f32(v49, vmul_f32(*v48.f32, *v48.f32))).f32[0]);
                  v51 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v139, v50, 2), v140, *v50.f32, 1), v141, v50.f32[0]);
                  *v146 = v38;
                  v52 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v138, v139, v47, 2), v140, *v47.f32, 1), v141, v47.f32[0]);
                  v53 = v44[-2];
                  v54 = v44[-1];
                  v55 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v46, *(v43 + 40), 2), v54, *(v43 + 40), 1), v53, COERCE_FLOAT(*(v43 + 40)));
                  v191.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v141, v53.f32[0]), v140, *v53.f32, 1), v139, v53, 2), v138, v53, 3);
                  v191.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v141, v54.f32[0]), v140, *v54.f32, 1), v139, v54, 2), v138, v54, 3);
                  v191.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v141, v46.f32[0]), v140, *v46.f32, 1), v139, v46, 2), v138, v46, 3);
                  v191.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v141, v47.f32[0]), v140, *v47.f32, 1), v139, v47, 2), v138, v47, 3);
                  v51.i32[3] = v42.i32[3];
                  v52.i32[3] = v41.i32[3];
                  v149 = v52;
                  v150 = v51;
                  v55.i32[3] = v40.i32[3];
                  v148 = v55;
                  v192 = __invert_f4(v191);
                  v56 = *(v43 + 24);
                  DWORD2(v56) = fmaxf(COERCE_FLOAT(*(v43 + 32)), 0.001);
                  v57 = *(v43 - 36);
                  v58 = *(v43 + 8);
                  v59 = *(v43 - 16);
                  v60 = *(v43 - 8) == 1;
                  v61 = *v43;
                  v62 = vmul_f32(__PAIR64__(v143, v146[0]), *(v43 - 44));
                  v63 = *(v43 + 56);
                  v153 = v149;
                  v154 = v150;
                  v155 = v192;
                  v156 = v148;
                  v157 = v56;
                  v159 = v62;
                  v158 = v143;
                  v160 = v146[0];
                  v162 = v63;
                  v161 = v57;
                  v163 = v58;
                  v164 = v60;
                  v165 = v61;
                  v166 = v59;
                  if (*v147)
                  {
                    ObjectType = swift_getObjectType();
                    type metadata accessor for particle_force_field_uniforms(0);
                    sub_1AF6F4524(&v153, 1, ObjectType, v65, v66, v67, v68, v69);
                  }

                  sub_1AFB54454(0, &qword_1ED730B70, &type metadata for FunctionConstant, MEMORY[0x1E69E6F90]);
                  v70 = swift_allocObject();
                  v152 = 0;
                  v71 = v135;
                  *(v70 + 16) = v136;
                  *(v70 + 32) = v71;
                  *(v70 + 48) = 0;
                  *(v70 + 64) = v45;
                  *(v70 + 128) = 14;
                  v72 = v147;
                  v73 = v147[18];
                  v74 = *(v151 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare);
                  v75 = *(v151 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
                  v146[0] = v75;

                  v145.i64[0] = &v121;
                  MEMORY[0x1EEE9AC00](v76, v77);
                  v78 = v144;
                  *(&v121 - 10) = v72;
                  *(&v121 - 9) = v78;
                  *(&v121 - 8) = 0xD000000000000014;
                  *(&v121 - 7) = v137;
                  *(&v121 - 6) = v70;
                  *(&v121 - 5) = v73;
                  *(&v121 - 4) = 0;
                  *(&v121 - 24) = v74;
                  v119 = v75;
                  v120 = v179;
                  sub_1AFCBF008(v142, sub_1AFA09F2C);

                  v40 = v148;
                  v41 = v149;
                  v42 = v150;
                }

                v43 += 144;
                v44 += 4;
                --v29;
              }

              while (v29);
              v145 = v42;
              *v146 = v41;
              v148 = v40;
            }
          }

          else
          {
            v79 = v149.i64[0] + 1;
            v80 = v36 - 132;
            v81 = v37 - 32;
            v39 = v150.i64[0];
LABEL_41:
            v82 = v80 + 144 * v25;
            v83 = (v81 + (v25 << 6));
            while (v79 != ++v25)
            {
              v84 = *(v82 + 132);
              if (v84 > 4)
              {
                if (v84 <= 6)
                {
                  v38.i32[0] = v9;
                  if (v84 != 5)
                  {
                    *v38.i32 = v14;
                  }
                }

                else
                {
                  *v38.i32 = v13;
                  if (v84 != 7)
                  {
                    *v38.i32 = v12;
                    if (v84 != 8)
                    {
                      *v38.i32 = v11;
                      if (v84 != 9)
                      {
LABEL_71:
                        LODWORD(v120) = 0;
                        v119 = 465;
                        result = sub_1AFDFE518();
                        __break(1u);
                        return result;
                      }
                    }
                  }
                }
              }

              else if (v84 <= 1)
              {
                *v38.i32 = v16;
                if (v84)
                {
                  *v38.i32 = v132;
                  if (v84 != 1)
                  {
                    goto LABEL_71;
                  }
                }
              }

              else
              {
                *v38.i32 = v15;
                if (v84 != 2)
                {
                  *v38.i32 = v10;
                  if (v84 != 3)
                  {
                    v38.i32[0] = v133;
                  }
                }
              }

              v82 += 144;
              v83 += 4;
              if (*v38.i32 != 0.0)
              {
                v149.i64[0] = v81;
                v150.i64[0] = v80;
                v85 = *v83;
                v86 = v83[1];
                v87 = vmulq_f32(v85, v85);
                *&v88 = v87.f32[2] + vaddv_f32(*v87.f32);
                *v87.f32 = vrsqrte_f32(v88);
                *v87.f32 = vmul_f32(*v87.f32, vrsqrts_f32(v88, vmul_f32(*v87.f32, *v87.f32)));
                v89 = vmulq_n_f32(*v83, vmul_f32(*v87.f32, vrsqrts_f32(v88, vmul_f32(*v87.f32, *v87.f32))).f32[0]);
                v121 = v38;
                v90 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v139, v89, 2), v140, *v89.f32, 1), v141, v89.f32[0]);
                v91 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v138, v139, v86, 2), v140, *v86.f32, 1), v141, v86.f32[0]);
                v92 = v83[-2];
                v93 = v83[-1];
                v94 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v85, *(v82 + 84), 2), v93, *(v82 + 84), 1), v92, COERCE_FLOAT(*(v82 + 84)));
                v193.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v141, v92.f32[0]), v140, *v92.f32, 1), v139, v92, 2), v138, v92, 3);
                v193.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v141, v93.f32[0]), v140, *v93.f32, 1), v139, v93, 2), v138, v93, 3);
                v193.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v141, v85.f32[0]), v140, *v85.f32, 1), v139, v85, 2), v138, v85, 3);
                v193.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v141, v86.f32[0]), v140, *v86.f32, 1), v139, v86, 2), v138, v86, 3);
                v90.i32[3] = v127.i32[3];
                v91.i32[3] = v126.i32[3];
                v126 = v91;
                v127 = v90;
                v94.i32[3] = v125.i32[3];
                v125 = v94;
                v194 = __invert_f4(v193);
                v95 = *(v82 + 68);
                DWORD2(v95) = fmaxf(COERCE_FLOAT(*(v82 + 76)), 0.001);
                v96 = *(v82 + 8);
                v97 = *(v82 + 52);
                v98 = *(v82 + 36) == 1;
                v99 = *(v82 + 44);
                v100 = *(v82 + 28);
                v101 = vmul_f32(__PAIR64__(v143, v121.u32[0]), *v82);
                v102 = *(v82 + 100);
                v153 = v126;
                v154 = v127;
                v155 = v194;
                v156 = v125;
                v157 = v95;
                v159 = v101;
                v158 = v143;
                v160 = v121.i32[0];
                v162 = v102;
                v161 = v96;
                v163 = v97;
                v164 = v98;
                v165 = v99;
                v166 = v100;
                if (*v147)
                {
                  v103 = swift_getObjectType();
                  type metadata accessor for particle_force_field_uniforms(0);
                  sub_1AF6F4524(&v153, 1, v103, v104, v105, v106, v107, v108);
                }

                sub_1AFB54454(0, &qword_1ED730B70, &type metadata for FunctionConstant, MEMORY[0x1E69E6F90]);
                v109 = swift_allocObject();
                v152 = 0;
                v110 = v135;
                *(v109 + 16) = v136;
                *(v109 + 32) = v110;
                *(v109 + 48) = 0;
                *(v109 + 64) = v84;
                *(v109 + 128) = 14;
                v111 = v147;
                v112 = v147[18];
                v113 = *(v151 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare);
                v114 = *(v151 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
                v121.i64[0] = v114;

                MEMORY[0x1EEE9AC00](v115, v116);
                v117 = v144;
                *(&v121 - 10) = v111;
                *(&v121 - 9) = v117;
                *(&v121 - 8) = 0xD000000000000014;
                *(&v121 - 7) = v137;
                *(&v121 - 6) = v109;
                *(&v121 - 5) = v112;
                *(&v121 - 4) = 0;
                *(&v121 - 24) = v113;
                v119 = v114;
                v120 = v179;
                sub_1AFCBF008(v142, sub_1AFA09E00);

                v80 = v150.i64[0];
                v81 = v149.i64[0];
                goto LABEL_41;
              }
            }
          }

          v176 = v124;
          v177 = v174;
          v178 = v175;
          sub_1AF630994(v131, &v176, v186);
          v150.i64[0] = v39;
          v118 = v134;
          sub_1AF62D29C(v134);
          ecs_stack_allocator_pop_snapshot(v130);
          if (v129)
          {
            os_unfair_lock_unlock(*(v118 + 43));
            os_unfair_lock_unlock(*(v118 + 47));
          }

          v22 = v128 + 1;
        }

        while (v128 + 1 != v122);
      }

      else
      {
        v155.columns[0] = v170[2];
        v155.columns[1] = v171;
        v155.columns[2] = v172;
        v155.columns[3] = v173;
        v153 = v170[0];
        v154 = v170[1];
        sub_1AF5DD298(&v153, v167);
      }

      sub_1AFB53B70(v170, &qword_1ED725EA0, &type metadata for QueryResult);
      return sub_1AFB53B70(v170, &qword_1ED725EA0, &type metadata for QueryResult);
    }
  }

  else
  {
  }
}

uint64_t sub_1AFB501F8()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

__n128 initializeWithCopy for ForceField(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ForceField(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 140))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ForceField(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 140) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 140) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1AFB50380()
{
  v0 = swift_allocObject();
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v6 = qword_1ED73B840;
  v7 = 0;
  v8 = 2;
  v9 = 0;
  v10 = 2;
  v11 = 0;
  sub_1AF5C7EC8(v4);
  v1 = v4[1];
  *(v0 + 48) = v4[0];
  *(v0 + 64) = v1;
  *(v0 + 80) = v5;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 32) = 0xE000000000000000;
  *(v0 + 40) = v2;
  return v0;
}

uint64_t sub_1AFB50474()
{
  v2 = 0;
  MEMORY[0x1B271DEC0](&v2, 8);
  v0 = v2;
  v2 = 0;
  MEMORY[0x1B271DEC0](&v2, 8);
  v2 = 0;
  MEMORY[0x1B271DEC0](&v2, 8);
  v2 = 0;
  MEMORY[0x1B271DEC0](&v2, 8);
  return v0;
}

uint64_t sub_1AFB504FC()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AFB50548()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AFB50594()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AFB505E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFB53EDC(0, &qword_1EB642B20, sub_1AFB51804, &type metadata for ForceField.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v37 - v9;
  v56 = 0;
  v55 = 0;
  v53 = 0uLL;
  v54 = 0;
  v11 = a1[3];
  v12 = a1[4];
  sub_1AF441150(a1, v11);
  if (sub_1AF694FF8(2025, v11, v12))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFB51804();
    sub_1AFDFF3B8();
    if (!v2)
    {
      LOBYTE(v42) = 0;
      v13 = sub_1AFDFE748();
      LOBYTE(v42) = 11;
      if (sub_1AFDFE808())
      {
        LOBYTE(v42) = 11;
        LOBYTE(v40) = sub_1AFDFE718() & 1;
        v40 = v40;
      }

      else
      {
        v40 = 0;
      }

      LOBYTE(v42) = 1;
      sub_1AFDFE738();
      v14 = v29;
      LOBYTE(v42) = 8;
      v30 = sub_1AFDFE718();
      LOBYTE(v42) = 2;
      sub_1AFDFE738();
      v15 = v31;
      LOBYTE(v42) = 3;
      sub_1AFDFE738();
      v16 = v32;
      LOBYTE(v42) = 4;
      v39 = sub_1AFDFE7E8();
      LOBYTE(v42) = 5;
      v33 = sub_1AFDFE7E8();
      v38 = v13;
      v34 = v33;
      LOBYTE(v42) = 6;
      sub_1AFDFE738();
      v19 = v35;
      v37 = v34;
      LOBYTE(v42) = 9;
      sub_1AFDFE738();
      v26 = v36;
      sub_1AFB53EDC(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
      LOBYTE(v52[0]) = 10;
      sub_1AFB518AC(&qword_1ED72F748);
      sub_1AFDFE768();
      v41 = v42;
      LOBYTE(v52[0]) = 7;
      sub_1AF47FEB4();
      sub_1AFDFE768();
      v25 = v30 & 1;
      (*(v7 + 8))(v10, v6);
      v57 = 0;
      v23 = 0;
      v20 = v42;
      v24 = v40;
      v17 = v39;
      v18 = v37;
      v22 = v38;
      goto LABEL_7;
    }
  }

  else
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF398();
    if (!v2)
    {
      sub_1AF441150(v52, v52[3]);
      sub_1AFB51858();
      sub_1AFDFEE88();
      v15 = DWORD2(v42);
      v14 = DWORD1(v42);
      v16 = v43;
      v17 = v44;
      v18 = v45;
      v19 = v48;
      v20 = v51;
      LODWORD(v21) = v50;
      DWORD1(v21) = v50;
      *(&v21 + 1) = v49;
      v41 = v21;
      v22 = qword_1AFE9C608[v42];
      v57 = 2 - v46;
      v23 = qword_1AFE9C640[v47];
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v52);
      v24 = 0;
      v25 = 1;
      v26 = 0;
LABEL_7:
      result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
      *a2 = v22;
      *(a2 + 8) = v25;
      *(a2 + 9) = v24;
      *(a2 + 10) = 0;
      *(a2 + 12) = v14;
      *(a2 + 16) = v15;
      *(a2 + 20) = v16;
      *(a2 + 24) = v17;
      *(a2 + 32) = v18;
      *(a2 + 40) = v23;
      *(a2 + 48) = 0;
      *(a2 + 56) = v57;
      *(a2 + 64) = v19;
      *(a2 + 68) = v55;
      *(a2 + 76) = v56;
      v28 = v53;
      *(a2 + 112) = v54;
      *(a2 + 80) = v41;
      *(a2 + 96) = v28;
      *(a2 + 116) = v26;
      *(a2 + 120) = 0;
      *(a2 + 128) = 1;
      *(a2 + 132) = v20;
      return result;
    }
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

uint64_t sub_1AFB50C60@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFB53EDC(0, &qword_1EB642B90, sub_1AFB53F44, &type metadata for ForceField_LEGACY.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v35 - v9;
  v11 = a1[3];
  v40 = a1;
  sub_1AF441150(a1, v11);
  sub_1AFB53F44();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v40);
  }

  v12 = v7;
  v43 = 0;
  sub_1AFB53F98();
  sub_1AFDFE768();
  v13 = v41;
  LOBYTE(v41) = 1;
  sub_1AFDFE738();
  v15 = v14;
  LOBYTE(v41) = 2;
  sub_1AFDFE738();
  v17 = v16;
  LOBYTE(v41) = 3;
  sub_1AFDFE738();
  v19 = v18;
  LOBYTE(v41) = 4;
  sub_1AFDFE738();
  v21 = v20;
  LOBYTE(v41) = 5;
  v39 = sub_1AFDFE7E8();
  LOBYTE(v41) = 6;
  v42 = sub_1AFDFE718();
  LOBYTE(v41) = 7;
  v38 = sub_1AFDFE718();
  v43 = 8;
  sub_1AFA08788();
  sub_1AFDFE768();
  v23 = v41;
  v43 = 9;
  sub_1AFB53FEC();
  v24 = v6;
  sub_1AFDFE768();
  v37 = v41;
  v43 = 10;
  sub_1AFB54040();
  sub_1AFDFE768();
  v36 = v41;
  LOBYTE(v41) = 11;
  sub_1AFDFE738();
  v26 = v25;
  sub_1AFA3B754(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
  v43 = 12;
  v35 = sub_1AFB54094();
  sub_1AFDFE768();
  v27 = v41;
  v43 = 13;
  sub_1AFDFE768();
  v28 = v41;
  v43 = 14;
  sub_1AFDFE768();
  v35 = v41;
  v29 = v40[3];
  v30 = v40[4];
  sub_1AF441150(v40, v29);
  if (sub_1AF694FF8(1097, v29, v30))
  {
    v43 = 15;
    sub_1AF47FEB4();
    sub_1AFDFE768();
    (*(v12 + 8))(v10, v24);
    v31 = v41;
  }

  else
  {
    (*(v12 + 8))(v10, v24);
    v31 = 0xFFFFFFFFLL;
  }

  v32 = v42 & 1;
  v33 = v38 & 1;
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v40);
  *a2 = v13;
  *(a2 + 4) = v15;
  *(a2 + 8) = v17;
  *(a2 + 12) = v19;
  *(a2 + 16) = v21;
  *(a2 + 24) = v39;
  *(a2 + 32) = v32;
  *(a2 + 33) = v33;
  *(a2 + 36) = v23;
  v34 = v36;
  *(a2 + 40) = v37;
  *(a2 + 41) = v34;
  *(a2 + 44) = v26;
  *(a2 + 48) = v27;
  *(a2 + 56) = v28;
  *(a2 + 64) = v35;
  *(a2 + 72) = v31;
  return result;
}

uint64_t sub_1AFB51250@<X0>(void *a1@<X0>, float *a2@<X8>)
{
  v47 = a2;
  sub_1AFB53EDC(0, &qword_1EB642B40, sub_1AFB519B0, &type metadata for ParticleForceField.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v45 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AFB519B0();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v10 = v6;
  v11 = v47;
  v12 = a1[3];
  v13 = a1[4];
  sub_1AF441150(a1, v12);
  v14 = sub_1AF694FF8(2025, v12, v13);
  v15 = a1;
  if (v14)
  {
    LOBYTE(v49) = 8;
    v16 = v5;
    v17 = v9;
    sub_1AFDFE738();
    v19 = v18;
    LOBYTE(v49) = 9;
    sub_1AFDFE738();
    v21 = v20;
    LOBYTE(v49) = 10;
    sub_1AFDFE738();
    v23 = v22;
    LOBYTE(v49) = 11;
    sub_1AFDFE738();
    v25 = v24;
  }

  else
  {
    LOBYTE(v49) = 1;
    v16 = v5;
    v17 = v9;
    sub_1AFDFE738();
    v19 = v26;
    v21 = 1.0;
    v23 = 1.0;
    v25 = 1.0;
  }

  LOBYTE(v49) = 0;
  sub_1AFDFE738();
  v28 = v27;
  LOBYTE(v49) = 2;
  sub_1AFDFE738();
  v30 = v29;
  LOBYTE(v49) = 3;
  sub_1AFDFE738();
  v32 = v31;
  LOBYTE(v49) = 4;
  sub_1AFDFE738();
  v34 = v33;
  LOBYTE(v49) = 5;
  sub_1AFDFE738();
  v46 = v35;
  v48 = 6;
  sub_1AFA08788();
  sub_1AFDFE768();
  v37 = v15;
  v38 = v49;
  v39 = v15[3];
  v40 = v15[4];
  v41 = v37;
  sub_1AF441150(v37, v39);
  if (sub_1AF694FF8(1097, v39, v40))
  {
    LOBYTE(v49) = 7;
    sub_1AFDFE738();
    v45 = v42;
    (*(v10 + 8))(v17, v16);
  }

  else
  {
    (*(v10 + 8))(v17, v16);
    v45 = 1.0;
  }

  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v41);
  *v11 = v19;
  *(v11 + 1) = v28;
  *(v11 + 2) = v30;
  *(v11 + 3) = v32;
  v43 = v45;
  v44 = v46;
  *(v11 + 4) = v34;
  *(v11 + 5) = v44;
  v11[6] = v43;
  v11[7] = v21;
  v11[8] = v23;
  v11[9] = v25;
  *(v11 + 10) = v38;
  return result;
}

uint64_t sub_1AFB516E0()
{
  type metadata accessor for ForceFieldSystem();
  v0 = swift_allocObject();
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v7 = qword_1ED73B840;
  v8 = 0;
  v9 = 2;
  v10 = 0;
  v11 = 2;
  v12 = 0;
  sub_1AF703348(1, v4);
  sub_1AF6C0CEC(0, &qword_1ED7269A0, sub_1AF5C5300);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for ForceFieldRuntime;
  *(inited + 40) = &off_1F2560F40;
  sub_1AF5D1EC0(inited, v5);
  sub_1AFB51928(v4);
  swift_setDeallocating();
  v2 = v5[1];
  *(v0 + 16) = v5[0];
  *(v0 + 32) = v2;
  *(v0 + 48) = v6;
  return v0;
}

unint64_t sub_1AFB51804()
{
  result = qword_1EB642B28;
  if (!qword_1EB642B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642B28);
  }

  return result;
}

unint64_t sub_1AFB51858()
{
  result = qword_1EB642B30;
  if (!qword_1EB642B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642B30);
  }

  return result;
}

uint64_t sub_1AFB518AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AFB53EDC(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AFB51928(uint64_t a1)
{
  sub_1AFA3B754(0, &qword_1ED723E88, &type metadata for ForceField, &off_1F2560F10, type metadata accessor for Query1);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1AFB519B0()
{
  result = qword_1EB642B48;
  if (!qword_1EB642B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642B48);
  }

  return result;
}

uint64_t sub_1AFB51A04(uint64_t *a1)
{
  v403 = *MEMORY[0x1E69E9840];
  sub_1AF0D4E74();
  v274 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v273 = &v252 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v272 = sub_1AFDFC298();
  v5 = *(v272 - 8);
  MEMORY[0x1EEE9AC00](v272, v6);
  v271 = &v252 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v265 = a1;
  v9 = *a1;
  v8 = a1[1];

  sub_1AF3CF4B8(v8, &v395);

  if (BYTE12(v397) == 1)
  {
    v254 = 1.0;
    v255 = 1.0;
    v287 = 255;
    v11 = 1.0;
    v12 = 1.0;
    v13 = 1.0;
    v14 = 1.0;
    DWORD2(v253) = 1.0;
    HIDWORD(v253) = 1.0;
    LODWORD(v253) = 1.0;
    DWORD1(v253) = 1.0;
  }

  else
  {
    if (!DWORD2(v397))
    {
      return result;
    }

    v287 = DWORD2(v397);
    v253 = v395;
    v13 = *(&v396 + 2);
    v14 = *(&v396 + 1);
    v12 = *(&v396 + 3);
    v11 = *&v397;
    v254 = *&v396;
    v255 = *(&v397 + 1);
  }

  v15 = v265;
  sub_1AFB93E58();
  v17 = v16;
  v18 = *(v9 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 48);
  v19 = v15[4];

  sub_1AFB95040(v19, &v346);
  v310 = v346.columns[1];
  v311 = v346.columns[0];
  v308 = v346.columns[3];
  v309 = v346.columns[2];

  if (v347)
  {
    v20 = -1;
  }

  else
  {
    v20 = 0;
  }

  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v331 = qword_1ED73B840;
  v332 = 0;
  v333 = 2;
  v334 = 0;
  v335 = 2;
  v336 = 0;
  sub_1AF5C7EC8(v314);
  v329[0] = v314[0];
  v329[1] = v314[1];
  v330 = v315;
  v262 = OBJC_IVAR____TtC3VFX13EntityManager_queryManager;
  sub_1AF6B06C0(v9, v329, 0x200000000, v348);
  v264 = *&v348[0];
  if (*&v348[0])
  {
    v21 = *(&v349 + 1);
    v279 = *(&v350 + 1);
    v263 = v350;
    v383 = *(v348 + 8);
    v384 = *(&v348[1] + 8);
    v260 = v351;
    v261 = *(&v348[2] + 1);
    if (v351 <= 0 || !*(&v349 + 1))
    {
      v397 = v348[2];
      v398 = v349;
      v399 = v350;
      v400 = v351;
      v395 = v348[0];
      v396 = v348[1];
      sub_1AF5DD298(&v395, v390);
LABEL_243:

      sub_1AFB53A80(v314, sub_1AFB53AE0);
      sub_1AFB53B70(v348, &qword_1ED725EA0, &type metadata for QueryResult);
      return sub_1AFB53B70(v348, &qword_1ED725EA0, &type metadata for QueryResult);
    }

    v22 = vdupq_n_s32(v20);
    v23 = v18;
    v284 = vbslq_s8(v22, xmmword_1AFE20150, v311);
    v283 = vbslq_s8(v22, xmmword_1AFE20160, v310);
    v282 = vbslq_s8(v22, xmmword_1AFE20180, v309);
    v281 = vbslq_s8(v22, xmmword_1AFE201A0, v308);
    v278 = v279[4];
    v277 = *(v263 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v345[2] = v348[2];
    v345[3] = v349;
    v345[4] = v350;
    v345[5] = v351;
    v345[0] = v348[0];
    v345[1] = v348[1];
    sub_1AF5DD298(v345, &v395);
    v24 = 0;
    v25 = 0;
    v270 = 0x80000001AFF48D10;
    v267 = (v5 + 32);
    v266 = xmmword_1AFE431C0;
    v300 = v9;
    v259 = v21;
    while (1)
    {
      v276 = v24;
      v26 = (v261 + 48 * v24);
      v27 = *v26;
      v28 = v26[1];
      v29 = v26[2];
      v30 = *(v26 + 2);
      v31 = *(v26 + 3);
      v32 = *(v26 + 4);
      v33 = *(v26 + 5);
      if (v277)
      {
        v34 = *(v33 + 376);

        os_unfair_lock_lock(v34);
        os_unfair_lock_lock(*(v33 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v278);

      v36 = v279;
      sub_1AF630914(v35, v279, v352);

      LOBYTE(v337) = 1;
      *&v395 = v263;
      *(&v395 + 1) = v33;
      *&v396 = v36;
      *(&v396 + 1) = v29;
      *&v397 = (v28 - v27 + v29);
      *(&v397 + 1) = v260;
      *&v398 = v27;
      *(&v398 + 1) = v28;
      v399 = 0uLL;
      LOBYTE(v400) = 1;
      *(&v400 + 1) = v30;
      v401 = v31;
      v402 = v32;
      v288 = sub_1AF705EA8(v33, &v395);
      v269 = sub_1AF705F44(v33, &v395);
      v275 = v33;
      v285 = sub_1AF705994(v33, &v395);
      v280 = 32;
      if (!*(&v400 + 1))
      {
        break;
      }

      v37 = v402;
      v38 = v287;
      v39 = v300;
      v41 = v310;
      v40 = v311;
      if (v402)
      {
        v268 = v25;
        v42 = 0;
        v43 = v288;
        v286 = v402;
        while (1)
        {
          v46 = v43 + 144 * v42;
          if ((v38 & *(v46 + 32)) == 0 || (*(v46 + 8) & 1) == 0)
          {
            goto LABEL_24;
          }

          v295 = v42;
          v47 = (v285 + (v42 << 6));
          v49 = *v47[4].f32;
          v48 = *v47[6].f32;
          v50 = vmulq_f32(v49, v49);
          *&v51 = v50.f32[2] + vaddv_f32(*v50.f32);
          v52 = *v47[2].f32;
          *v50.f32 = vrsqrte_f32(v51);
          *v50.f32 = vmul_f32(*v50.f32, vrsqrts_f32(v51, vmul_f32(*v50.f32, *v50.f32)));
          v53 = vmulq_n_f32(v49, vmul_f32(*v50.f32, vrsqrts_f32(v51, vmul_f32(*v50.f32, *v50.f32))).f32[0]);
          v54 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v282, v53, 2), v283, *v53.f32, 1), v284, v53.f32[0]);
          v55 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v281, v282, v48, 2), v283, *v48.f32, 1), v284, v48.f32[0]);
          v56 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v284, COERCE_FLOAT(*v47->f32)), v283, *v47, 1), v282, *v47->f32, 2);
          v310 = *v47->f32;
          v311 = v49;
          v404.columns[0] = vmlaq_laneq_f32(v56, v281, v310, 3);
          v404.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v284, v52.f32[0]), v283, *v52.f32, 1), v282, v52, 2), v281, v52, 3);
          v404.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v284, v49.f32[0]), v283, *v49.f32, 1), v282, v49, 2), v281, v49, 3);
          v404.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v284, v48.f32[0]), v283, *v48.f32, 1), v282, v48, 2), v281, v48, 3);
          v54.i32[3] = v41.i32[3];
          v309 = v54;
          v55.i32[3] = v40.i32[3];
          v307 = v52;
          v308 = v55;
          v405 = __invert_f4(v404);
          v298 = v405.columns[1];
          v299 = v405.columns[0];
          v296 = v405.columns[3];
          v297 = v405.columns[2];
          v339 = 0u;
          v340 = 0u;
          v337 = 0u;
          v338 = 0u;
          v341 = 0;
          v342 = 1;
          v343 = 0;
          v344 = 0;
          v57 = *v46;
          if (*v46 == 9)
          {
            sub_1AF8E60EC(*(v46 + 132), 1, v353);
            if (!v356)
            {
              goto LABEL_31;
            }

            v377[0] = v353[0];
            v377[1] = v353[1];
            v377[2] = v354;
            v378 = v355;
            v379 = v356;
            v312 = v354;
            v313 = v355;
            if (sub_1AF8FE1C4(&v312) != 7)
            {
              sub_1AFB53B70(v353, &unk_1ED725420, &type metadata for TextureCPURuntime);
LABEL_31:
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v58 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              sub_1AF6EFB60();
              v59 = swift_allocObject();
              *(v59 + 16) = v266;
              *(v59 + 56) = MEMORY[0x1E69E6158];
              *(v59 + 64) = sub_1AF0D544C();
              v60 = v270;
              *(v59 + 32) = 0xD00000000000001ELL;
              *(v59 + 40) = v60;
              sub_1AFDFC4C8();

              v61 = v271;
              sub_1AFDFC288();
              v62 = v273;
              v63 = v274[12];
              v64 = v274[16];
              v65 = &v273[v274[20]];
              (*v267)(v273, v61, v272);
              *(v62 + v63) = v58;
              *(v62 + v64) = 0;
              *v65 = 0xD00000000000001ELL;
              *(v65 + 1) = v60;
              sub_1AFDFC608();

              sub_1AFB53A80(v62, sub_1AF0D4E74);
              v40 = v308;
              v41 = v309;
              v38 = v287;
              v43 = v288;
              v39 = v300;
              v37 = v286;
              v42 = v295;
              goto LABEL_24;
            }

            sub_1AF478ACC(v377, 2, 1, &v337);
            v44 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v311, *(v46 + 96), 2), v307, *(v46 + 96), 1), v310, COERCE_FLOAT(*(v46 + 96)));
            v44.i32[3] = v306.i32[3];
            v301 = v44;
            v45 = v13;
            v38 = v287;
            v43 = v288;
            v37 = v286;
            v42 = v295;
          }

          else
          {
            v66 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v311, *(v46 + 96), 2), v307, *(v46 + 96), 1), v310, COERCE_FLOAT(*(v46 + 96)));
            v66.i32[3] = v306.i32[3];
            v301 = v66;
            if (v57 <= 3)
            {
              v38 = v287;
              v43 = v288;
              v37 = v286;
              v42 = v295;
              if (v57 > 1)
              {
                v45 = v57 == 2 ? *(&v253 + 2) : v12;
              }

              else if (v57)
              {
                v45 = *(&v253 + 1);
                if (v57 != 1)
                {
                  goto LABEL_246;
                }
              }

              else
              {
                v45 = *&v253;
              }
            }

            else
            {
              v38 = v287;
              v43 = v288;
              v37 = v286;
              v42 = v295;
              if (v57 <= 5)
              {
                v45 = v57 == 4 ? v11 : v255;
              }

              else if (v57 == 6)
              {
                v45 = *(&v253 + 3);
              }

              else if (v57 == 7)
              {
                v45 = v254;
              }

              else
              {
                v45 = v14;
                if (v57 != 8)
                {
                  goto LABEL_246;
                }
              }
            }
          }

          if (v45 != 0.0)
          {
            break;
          }

          v306 = v301;
          v40 = v308;
          v41 = v309;
LABEL_24:
          if (++v42 == v37)
          {
            v310 = v41;
            v311 = v40;
            goto LABEL_239;
          }
        }

        v67 = *(v46 + 16);
        v68 = *(v265 + 13);
        v325[0] = *(v265 + 11);
        v325[1] = v68;
        v326 = v265[15];
        sub_1AF6B06C0(v39, v325, 0x200000000, &v357);
        if (v357)
        {
          v294 = v364;
          if (v364 >= 1)
          {
            v293 = v361;
            if (v361)
            {
              v69 = 0;
              *&v291 = v269 + 32 * v295;
              v70 = v17 * v67;
              v290 = v360;
              v289 = v362;
              v307.i32[0] = *(v362 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
              v306.i64[0] = *(v363 + 32);
              v322 = v357;
              v323 = v358;
              v324 = v359;
              *&v292 = v46;
              v311.i64[0] = v363;
              do
              {
                v305 = v69;
                v71 = (v290 + 48 * v69);
                v72 = *v71;
                v73 = v71[1];
                v74 = v71[2];
                v75 = *(v71 + 2);
                v76 = *(v71 + 3);
                v77 = *(v71 + 4);
                v78 = *(v71 + 5);
                if (v307.i32[0])
                {
                  v79 = *(v78 + 376);

                  os_unfair_lock_lock(v79);
                  os_unfair_lock_lock(*(v78 + 344));
                }

                else
                {
                }

                ecs_stack_allocator_push_snapshot(v306.i64[0]);
                v80 = v311.i64[0];
                v81 = *(v311.i64[0] + 48);
                v303 = *(v311.i64[0] + 64);
                v304 = v81;
                v302.i64[0] = *(v311.i64[0] + 80);
                v82 = *(*(*(*(v78 + 40) + 16) + 32) + 16) + 1;
                v80[6] = ecs_stack_allocator_allocate(*(v311.i64[0] + 32), 48 * v82, 8);
                v80[7] = v82;
                v80[9] = 0;
                v80[10] = 0;
                v80[8] = 0;
                LOBYTE(v312) = 1;
                v385[0] = v289;
                v310.i64[0] = v78;
                v385[1] = v78;
                v385[2] = v80;
                v385[3] = v74;
                v385[4] = (v73 - v72 + v74);
                v385[5] = v294;
                v385[6] = v72;
                v385[7] = v73;
                v385[8] = 0;
                v385[9] = 0;
                v386 = 1;
                v387 = v75;
                v388 = v76;
                v389 = v77;
                sub_1AFB4EE18(v385, v292, v291, &v337, v45, v70, v309, v308, v301, v299, v298, v297, v83, v84, v85, v86, v296, v23, v17);
                v87 = v80[6];
                v88 = v80[8];
                if (!v88)
                {
                  v110 = v80[7];
                  v111 = v80[4];
                  goto LABEL_80;
                }

                for (i = 0; i != v88; ++i)
                {
                  v91 = (v87 + 48 * i);
                  v92 = *v91;
                  v93 = v91[4];
                  v94 = v80[9];
                  if (v94)
                  {
                    v95 = v92 == v94;
                  }

                  else
                  {
                    v95 = 0;
                  }

                  if (v95)
                  {
                    goto LABEL_53;
                  }

                  v96 = v322;
                  if (!v322[11])
                  {
                    goto LABEL_53;
                  }

                  v97 = v91[2];
                  v98 = v322 + 41;
                  v99 = v322[9];
                  if (v99 >= 0x10)
                  {
                    v100 = &v98[v322[8]];
                    v101 = v99 >> 4;
                    v102 = v322 + 41;
                    while (*v100 != v92)
                    {
                      ++v102;
                      v100 += 16;
                      if (!--v101)
                      {
                        goto LABEL_69;
                      }
                    }

                    v103 = v102[v322[10]];
                    v104 = v103 > 5;
                    v105 = (1 << v103) & 0x23;
                    if (v104 || v105 == 0)
                    {
LABEL_53:

                      v93(v90);

                      goto LABEL_54;
                    }
                  }

LABEL_69:
                  if (swift_conformsToProtocol2() && v97)
                  {
                    if (sub_1AF5FC8D8(v97))
                    {
                      goto LABEL_53;
                    }

                    v107 = v96[9];
                    if (v107 < 0x10)
                    {
                      goto LABEL_53;
                    }

                    v108 = &v98[v96[8]];
                    v109 = 16 * (v107 >> 4);
                    while (*v108 != v97)
                    {
                      v108 += 16;
                      v109 -= 16;
                      if (!v109)
                      {
                        goto LABEL_53;
                      }
                    }
                  }

LABEL_54:
                  v80 = v311.i64[0];
                }

                v110 = *(v311.i64[0] + 56);
                v87 = *(v311.i64[0] + 48);
                v111 = *(v311.i64[0] + 32);
                if (*(v311.i64[0] + 64) >= 1)
                {
                  swift_arrayDestroy();
                }

LABEL_80:
                v39 = v300;
                v112 = v310.i64[0];
                v113 = v302.i64[0];
                ecs_stack_allocator_deallocate(v111, v87, 48 * v110);
                v114 = v303;
                *(v80 + 3) = v304;
                *(v80 + 4) = v114;
                v80[10] = v113;
                if (*(v80[13] + 16))
                {

                  sub_1AF62F348(v115, v112);

                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v117 = v80[13];
                  if (isUniquelyReferenced_nonNull_native)
                  {
                    v118 = v117[2];
                    v119 = swift_isUniquelyReferenced_nonNull_native();
                    v80[13] = v117;
                    if ((v119 & 1) == 0)
                    {
                      v117 = sub_1AF420EA0(0, v118, 1, v117);
                      v80[13] = v117;
                    }

                    sub_1AF43A540(0);
                    swift_arrayDestroy();
                    if (v118)
                    {
                      v120 = v117[2] - v118;
                      memmove(v117 + 4, &v117[9 * v118 + 4], 72 * v120);
                      v117[2] = v120;
                    }

                    v80[13] = v117;
                  }

                  else
                  {
                    v121 = MEMORY[0x1E69E7CC0];
                    if (v117[3] >= 2uLL)
                    {
                      sub_1AF6C0CEC(0, &qword_1ED7269C0, sub_1AF43A540);
                      v121 = swift_allocObject();
                      v122 = j__malloc_size_0(v121);
                      v121[2] = 0;
                      v121[3] = 2 * ((v122 - 32) / 72);
                    }

                    v80[13] = v121;
                  }

                  if (*(v80[2] + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
                  {
                    v124 = (v112 + 232);
                    v123 = *(v112 + 232);
                    v125 = *(v112 + 256);
                    v126 = v123 - v125;
                    if (v123 == v125)
                    {
                      v127 = *(v112 + 240);
                    }

                    else
                    {
                      v128 = *(v112 + 56);
                      v129 = *(v128 + 16);
                      *&v304 = *(v112 + 232);
                      if (v129)
                      {
                        v303.i64[0] = *(v112 + 48);

                        swift_retain_n();

                        v130 = v128 + 56;
                        do
                        {
                          sub_1AF640BC8();
                          v130 += 40;
                          --v129;
                        }

                        while (v129);

                        v112 = v310.i64[0];
                        v123 = v304;
                        v39 = v300;
                      }

                      if ((*(v112 + 184) & 1) == 0)
                      {
                        v131 = *(v112 + 168);
                        v132 = *(v112 + 16);
                        v133 = *(v132 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

                        os_unfair_lock_lock(v133);

                        v134 = OBJC_IVAR____TtC3VFX13EntityManager_firstFreeIndex;
                        v135 = OBJC_IVAR____TtC3VFX13EntityManager_entityCount;
                        v136 = *(v132 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
                        v303.i64[0] = v125 + *(v132 + OBJC_IVAR____TtC3VFX13EntityManager_entityCount);
                        v137 = *(v132 + OBJC_IVAR____TtC3VFX13EntityManager_firstFreeIndex);

                        v138 = (v131 + 4 * v125);
                        do
                        {
                          v139 = *v138++;
                          v140 = (v136 + 12 * v139);
                          *v140 = v137;
                          v140[1] = -1;
                          ++v140[2];
                          *(v132 + v134) = v139;
                          v137 = v139;
                          --v126;
                        }

                        while (v126);
                        v123 = v304;
                        *(v132 + v135) = v303.i64[0] - v304;

                        v141 = *(v132 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

                        os_unfair_lock_unlock(v141);

                        v39 = v300;
                        v112 = v310.i64[0];
                      }

                      v142 = *(v112 + 192);
                      if (v142)
                      {
                        v143 = *(v112 + 208);
                        sub_1AF75D364(v125, v123, v142);
                        sub_1AF75D364(v125, v123, v143);
                      }

                      v125 = *(v112 + 232);
                      v127 = *(v112 + 240);
                      if (v127 == v125)
                      {
                        v127 = 0;
                        v125 = 0;
                        *v124 = 0;
                        v124[1] = 0;
                      }
                    }

                    *(v112 + 248) = v127;
                    *(v112 + 256) = v125;
                  }
                }

                ecs_stack_allocator_pop_snapshot(v306.i64[0]);
                if (v307.i8[0])
                {
                  os_unfair_lock_unlock(*(v112 + 344));
                  os_unfair_lock_unlock(*(v112 + 376));
                }

                v69 = v305 + 1;
              }

              while (v305 + 1 != v293);
            }
          }

          sub_1AFB53B70(&v357, &qword_1ED725EA0, &type metadata for QueryResult);
        }

        v42 = v295;
        v306 = v301;
        v40 = v308;
        v41 = v309;
        v38 = v287;
        v43 = v288;
        v37 = v286;
        goto LABEL_24;
      }

LABEL_240:
      v316 = v264;
      v317 = v383;
      v318 = v384;
      sub_1AF630994(v279, &v316, v352);
      v251 = v275;
      sub_1AF62D29C(v275);
      ecs_stack_allocator_pop_snapshot(v278);
      if (v277)
      {
        os_unfair_lock_unlock(*(v251 + 43));
        os_unfair_lock_unlock(*(v251 + 47));
      }

      v24 = v276 + 1;
      if (v276 + 1 == v259)
      {
        goto LABEL_243;
      }
    }

    v268 = v25;
    v144 = *(&v398 + 1);
    v145 = v398;
    v146 = v287;
    if (v398 == *(&v398 + 1))
    {
      goto LABEL_239;
    }

    v147 = v285 + 32;
    v148 = v257;
    v149 = v258;
    v150 = v288;
    while (1)
    {
      while (1)
      {
        v151 = v256;
        while (1)
        {
          v152 = (v269 + 32 * v145);
          v153 = v144 - v145;
          v154 = (v147 + (v145 << 6));
          v155 = v150 + 144 * v145++;
          while ((v146 & *(v155 + 32)) == 0 || *(v155 + 8) != 1)
          {
            v152 += 4;
            ++v145;
            v154 += 4;
            v155 += 144;
            if (!--v153)
            {
              v256 = v151;
              v257 = v148;
              v258 = v149;
              goto LABEL_239;
            }
          }

          v309 = v151;
          *&v304 = v147;
          v305 = v144;
          v157 = *v154;
          v156 = v154[1];
          v158 = vmulq_f32(v157, v157);
          *&v159 = v158.f32[2] + vaddv_f32(*v158.f32);
          v160 = v154[-1];
          *v158.f32 = vrsqrte_f32(v159);
          *v158.f32 = vmul_f32(*v158.f32, vrsqrts_f32(v159, vmul_f32(*v158.f32, *v158.f32)));
          v161 = vmulq_n_f32(*v154, vmul_f32(*v158.f32, vrsqrts_f32(v159, vmul_f32(*v158.f32, *v158.f32))).f32[0]);
          v162 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v282, v161, 2), v283, *v161.f32, 1), v284, v161.f32[0]);
          v163 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v281, v282, v156, 2), v283, *v156.f32, 1), v284, v156.f32[0]);
          v307 = v154[-2];
          v308 = v157;
          v406.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v284, v307.f32[0]), v283, *v307.f32, 1), v282, v307, 2), v281, v307, 3);
          v298 = v160;
          v406.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v284, v160.f32[0]), v283, *v160.f32, 1), v282, v160, 2), v281, v160, 3);
          v406.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v284, v157.f32[0]), v283, *v157.f32, 1), v282, v157, 2), v281, v157, 3);
          v406.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v284, v156.f32[0]), v283, *v156.f32, 1), v282, v156, 2), v281, v156, 3);
          v162.i32[3] = v149.i32[3];
          v163.i32[3] = v148.i32[3];
          v257 = v163;
          v258 = v162;
          v407 = __invert_f4(v406);
          v302 = v407.columns[1];
          v303 = v407.columns[0];
          v301 = v407.columns[2];
          v299 = v407.columns[3];
          v339 = 0u;
          v340 = 0u;
          v337 = 0u;
          v338 = 0u;
          v341 = 0;
          v342 = 1;
          v343 = 0;
          v344 = 0;
          v164 = *v155;
          if (*v155 != 9)
          {
            break;
          }

          sub_1AF8E60EC(*(v155 + 132), 1, v365);
          if (v368)
          {
            v380[0] = v365[0];
            v380[1] = v365[1];
            v380[2] = v366;
            v381 = v367;
            v382 = v368;
            v312 = v366;
            v313 = v367;
            if (sub_1AF8FE1C4(&v312) == 7)
            {
              sub_1AF478ACC(v380, 2, 1, &v337);
              v172 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v308, *(v155 + 96), 2), v298, *(v155 + 96), 1), v307, COERCE_FLOAT(*(v155 + 96)));
              v172.i32[3] = v309.i32[3];
              v173 = v13;
              v146 = v287;
              v150 = v288;
              v144 = v305;
              v147 = v304;
              goto LABEL_150;
            }

            sub_1AFB53B70(v365, &unk_1ED725420, &type metadata for TextureCPURuntime);
          }

          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v165 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            swift_once();
          }

          if (qword_1ED730E98 != -1)
          {
            swift_once();
          }

          sub_1AF6EFB60();
          v166 = swift_allocObject();
          *(v166 + 16) = v266;
          *(v166 + 56) = MEMORY[0x1E69E6158];
          *(v166 + 64) = sub_1AF0D544C();
          *(v166 + 32) = 0xD00000000000001ELL;
          *(v166 + 40) = v270;
          sub_1AFDFC4C8();

          v167 = v271;
          sub_1AFDFC288();
          v168 = v273;
          v169 = v274[12];
          v170 = v274[16];
          v171 = &v273[v274[20]];
          (*v267)(v273, v167, v272);
          *(v168 + v169) = v165;
          *(v168 + v170) = 0;
          *v171 = 0xD00000000000001ELL;
          *(v171 + 1) = v270;
          sub_1AFDFC608();

          sub_1AFB53A80(v168, sub_1AF0D4E74);
          v146 = v287;
          v148 = v257;
          v149 = v258;
          v150 = v288;
          v144 = v305;
          v147 = v304;
          v151 = v309;
          if (v153 == 1)
          {
            v256 = v309;
            v25 = v268;
            goto LABEL_240;
          }
        }

        v172 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v308, *(v155 + 96), 2), v298, *(v155 + 96), 1), v307, COERCE_FLOAT(*(v155 + 96)));
        v172.i32[3] = v309.i32[3];
        if (v164 <= 3)
        {
          v146 = v287;
          v150 = v288;
          v144 = v305;
          v147 = v304;
          if (v164 > 1)
          {
            v173 = v164 == 2 ? *(&v253 + 2) : v12;
          }

          else if (v164)
          {
            v173 = *(&v253 + 1);
            if (v164 != 1)
            {
              goto LABEL_246;
            }
          }

          else
          {
            v173 = *&v253;
          }
        }

        else
        {
          v146 = v287;
          v150 = v288;
          v144 = v305;
          v147 = v304;
          if (v164 <= 5)
          {
            v173 = v164 == 4 ? v11 : v255;
          }

          else if (v164 == 6)
          {
            v173 = *(&v253 + 3);
          }

          else
          {
            if (v164 == 7)
            {
              v173 = v254;
              goto LABEL_150;
            }

            v173 = v14;
            if (v164 != 8)
            {
LABEL_246:
              result = sub_1AFDFE518();
              __break(1u);
              return result;
            }
          }
        }

LABEL_150:
        v256 = v172;
        if (v173 != 0.0)
        {
          break;
        }

        v148 = v257;
        v149 = v258;
        if (v153 == 1)
        {
          goto LABEL_239;
        }
      }

      v174 = *(v155 + 16);
      v175 = *(v265 + 13);
      v327[0] = *(v265 + 11);
      v327[1] = v175;
      v328 = v265[15];
      sub_1AF6B06C0(v300, v327, 0x200000000, &v369);
      if (v369)
      {
        v289 = v376;
        if (v376 >= 1)
        {
          v286 = v373;
          if (v373)
          {
            v176 = 0;
            v177 = v17 * v174;
            v285 = v372;
            v252 = v374;
            LODWORD(v295) = *(v374 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
            v294 = *(v375 + 32);
            v319 = v369;
            v320 = v370;
            v321 = v371;
            v309.i64[0] = v375;
            do
            {
              v293 = v176;
              v178 = (v285 + 48 * v176);
              v180 = *v178;
              v179 = v178[1];
              v181 = v178[2];
              v182 = *(v178 + 3);
              v308.i64[0] = *(v178 + 2);
              v307.i64[0] = v182;
              v183 = *(v178 + 5);
              v298.i64[0] = *(v178 + 4);
              if (v295)
              {
                v184 = *(v183 + 376);

                os_unfair_lock_lock(v184);
                os_unfair_lock_lock(*(v183 + 344));
              }

              else
              {
              }

              ecs_stack_allocator_push_snapshot(v294);
              v185 = v309.i64[0];
              v186 = *(v309.i64[0] + 48);
              v291 = *(v309.i64[0] + 64);
              v292 = v186;
              v290 = *(v309.i64[0] + 80);
              v187 = *(*(*(*(v183 + 40) + 16) + 32) + 16);
              v188 = *(v309.i64[0] + 32);
              v296.i64[0] = v183;
              v189 = v187 + 1;
              v185[6] = ecs_stack_allocator_allocate(v188, 48 * (v187 + 1), 8);
              v185[7] = v189;
              v190 = v296.i64[0];
              v185[9] = 0;
              v185[10] = 0;
              v185[8] = 0;
              LOBYTE(v312) = 1;
              v390[0] = v252;
              v390[1] = v190;
              v390[2] = v185;
              v390[3] = v181;
              v390[4] = (v179 - v180 + v181);
              v390[5] = v289;
              v390[6] = v180;
              v390[7] = v179;
              v390[8] = 0;
              v390[9] = 0;
              v391 = 1;
              v392 = v308.i64[0];
              v393 = v307.i64[0];
              v394 = v298.i64[0];
              sub_1AFB4EE18(v390, v155, v152, &v337, v173, v177, v258, v257, v256, v303, v302, v301, v191, v192, v193, v194, v299, v23, v17);
              v195 = v185[6];
              v308.i64[0] = v185[8];
              if (!v308.i64[0])
              {
                v215 = v185[7];
                v216 = v185[4];
                goto LABEL_191;
              }

              v196 = 0;
              v307.i64[0] = v195;
              do
              {
                v198 = (v195 + 48 * v196);
                v199 = *v198;
                v200 = v198[4];
                v201 = v185[9];
                if (v201)
                {
                  v202 = v199 == v201;
                }

                else
                {
                  v202 = 0;
                }

                if (v202)
                {
                  goto LABEL_163;
                }

                v203 = v319;
                if (!v319[11])
                {
                  goto LABEL_163;
                }

                v204 = v198[2];
                v205 = v319[9];
                if (v205 >= 0x10)
                {
                  v206 = (v319 + v319[8] + 41);
                  v207 = v205 >> 4;
                  v208 = v319 + 41;
                  while (*v206 != v199)
                  {
                    ++v208;
                    v206 += 2;
                    if (!--v207)
                    {
                      goto LABEL_179;
                    }
                  }

                  v209 = v208[v319[10]];
                  v104 = v209 > 5;
                  v210 = (1 << v209) & 0x23;
                  if (v104 || v210 == 0)
                  {
LABEL_163:

                    v200(v197);

                    goto LABEL_164;
                  }
                }

LABEL_179:
                v298.i64[0] = v319 + 41;
                if (swift_conformsToProtocol2() && v204)
                {
                  v297.i64[0] = v204;
                  if (sub_1AF5FC8D8(v204))
                  {
                    goto LABEL_163;
                  }

                  v212 = v203[9];
                  if (v212 < 0x10)
                  {
                    goto LABEL_163;
                  }

                  v213 = (v298.i64[0] + v203[8]);
                  v214 = 16 * (v212 >> 4);
                  while (*v213 != v297.i64[0])
                  {
                    v213 += 2;
                    v214 -= 16;
                    if (!v214)
                    {
                      goto LABEL_163;
                    }
                  }
                }

LABEL_164:
                ++v196;
                v185 = v309.i64[0];
                v195 = v307.i64[0];
              }

              while (v196 != v308.i64[0]);
              v215 = *(v309.i64[0] + 56);
              v195 = *(v309.i64[0] + 48);
              v216 = *(v309.i64[0] + 32);
              if (*(v309.i64[0] + 64) >= 1)
              {
                v217 = *(v309.i64[0] + 48);
                swift_arrayDestroy();
                v195 = v217;
              }

              v190 = v296.i64[0];
LABEL_191:
              v218 = v290;
              ecs_stack_allocator_deallocate(v216, v195, 48 * v215);
              v219 = v291;
              *(v185 + 3) = v292;
              *(v185 + 4) = v219;
              v185[10] = v218;
              if (!*(v185[13] + 16))
              {
                goto LABEL_202;
              }

              sub_1AF62F348(v220, v190);

              v221 = swift_isUniquelyReferenced_nonNull_native();
              v222 = v185[13];
              if (v221)
              {
                v223 = v222[2];
                v224 = swift_isUniquelyReferenced_nonNull_native();
                v185[13] = v222;
                if ((v224 & 1) == 0)
                {
                  v222 = sub_1AF420EA0(0, v223, 1, v222);
                  v185[13] = v222;
                }

                sub_1AF43A540(0);
                swift_arrayDestroy();
                if (v223)
                {
                  v225 = v222[2] - v223;
                  memmove(v222 + 4, &v222[9 * v223 + 4], 72 * v225);
                  v222[2] = v225;
                  v185 = v309.i64[0];
                }

                v185[13] = v222;
              }

              else
              {
                v226 = MEMORY[0x1E69E7CC0];
                if (v222[3] >= 2uLL)
                {
                  sub_1AF6C0CEC(0, &qword_1ED7269C0, sub_1AF43A540);
                  v226 = swift_allocObject();
                  v227 = j__malloc_size_0(v226);
                  v226[2] = 0;
                  v226[3] = 2 * ((v227 - 32) / 72);
                }

                v185[13] = v226;
              }

              v190 = v296.i64[0];
              if (*(v185[2] + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
              {
                v229 = *(v296.i64[0] + 256);
                v298.i64[0] = *(v296.i64[0] + 232);
                v230 = v298.i64[0] - v229;
                if (v298.i64[0] == v229)
                {
                  v231 = *(v296.i64[0] + 240);
                }

                else
                {
                  v297.i64[0] = v296.i64[0] + 232;
                  v307.i64[0] = v229;
                  v232 = *(v296.i64[0] + 56);
                  v233 = *(v232 + 16);
                  if (v233)
                  {
                    v234 = *(v296.i64[0] + 48);
                    v235 = *(v296.i64[0] + 64);
                    v308.i64[0] = *(v296.i64[0] + 128);
                    *&v291 = v234;

                    swift_retain_n();
                    v290 = v235;

                    *&v292 = v232;
                    v236 = v232 + 56;
                    do
                    {
                      sub_1AF640BC8();
                      v236 += 40;
                      --v233;
                    }

                    while (v233);

                    v190 = v296.i64[0];
                  }

                  if ((*(v190 + 184) & 1) == 0)
                  {
                    *&v291 = *(v190 + 168);
                    v237 = *(v190 + 16);
                    v238 = *(v237 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

                    os_unfair_lock_lock(v238);

                    v239 = OBJC_IVAR____TtC3VFX13EntityManager_firstFreeIndex;
                    v308.i64[0] = OBJC_IVAR____TtC3VFX13EntityManager_entityCount;
                    v240 = *(v237 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
                    *&v292 = v307.i64[0] + *(v237 + OBJC_IVAR____TtC3VFX13EntityManager_entityCount);
                    v241 = *(v237 + OBJC_IVAR____TtC3VFX13EntityManager_firstFreeIndex);

                    v242 = (v291 + 4 * v307.i64[0]);
                    do
                    {
                      v243 = *v242++;
                      v244 = (v240 + 12 * v243);
                      *v244 = v241;
                      v244[1] = -1;
                      ++v244[2];
                      *(v237 + v239) = v243;
                      v241 = v243;
                      --v230;
                    }

                    while (v230);
                    *(v237 + v308.i64[0]) = v292 - v298.i64[0];

                    v245 = *(v237 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

                    os_unfair_lock_unlock(v245);

                    v190 = v296.i64[0];
                  }

                  v246 = *(v190 + 192);
                  if (v246)
                  {
                    v247 = *(v190 + 208);
                    v308.i64[0] = *(v190 + 216);
                    v248 = v307.i64[0];
                    v249 = v298.i64[0];
                    sub_1AF75D364(v307.i64[0], v298.i64[0], v246);
                    sub_1AF75D364(v248, v249, v247);
                  }

                  v229 = *(v190 + 232);
                  v231 = *(v190 + 240);
                  if (v231 == v229)
                  {
                    v231 = 0;
                    v229 = 0;
                    v250 = v297.i64[0];
                    *v297.i64[0] = 0;
                    *(v250 + 8) = 0;
                  }
                }

                v228 = v293;
                *(v190 + 248) = v231;
                *(v190 + 256) = v229;
              }

              else
              {
LABEL_202:
                v228 = v293;
              }

              ecs_stack_allocator_pop_snapshot(v294);
              if (v295)
              {
                os_unfair_lock_unlock(*(v190 + 344));
                os_unfair_lock_unlock(*(v190 + 376));
              }

              v176 = v228 + 1;
            }

            while (v176 != v286);
          }
        }

        sub_1AFB53B70(&v369, &qword_1ED725EA0, &type metadata for QueryResult);
      }

      v150 = v288;
      v146 = v287;
      v148 = v257;
      v149 = v258;
      v144 = v305;
      v147 = v304;
      if (v153 == 1)
      {
LABEL_239:
        v25 = v268;
        goto LABEL_240;
      }
    }
  }

  sub_1AFB53A80(v314, sub_1AFB53AE0);
}

uint64_t sub_1AFB53A80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AFB53AE0()
{
  if (!qword_1EB642B58)
  {
    v0 = type metadata accessor for Query3();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB642B58);
    }
  }
}

uint64_t sub_1AFB53B70(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AFB54454(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for ForceField_LEGACY(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 80))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ForceField_LEGACY(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1AFB53CD0()
{
  result = qword_1EB642B60;
  if (!qword_1EB642B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642B60);
  }

  return result;
}

unint64_t sub_1AFB53D28()
{
  result = qword_1EB642B68;
  if (!qword_1EB642B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642B68);
  }

  return result;
}

unint64_t sub_1AFB53D80()
{
  result = qword_1EB642B70;
  if (!qword_1EB642B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642B70);
  }

  return result;
}

unint64_t sub_1AFB53DD8()
{
  result = qword_1EB642B78;
  if (!qword_1EB642B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642B78);
  }

  return result;
}

unint64_t sub_1AFB53E30()
{
  result = qword_1EB642B80;
  if (!qword_1EB642B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642B80);
  }

  return result;
}

unint64_t sub_1AFB53E88()
{
  result = qword_1EB642B88;
  if (!qword_1EB642B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642B88);
  }

  return result;
}

void sub_1AFB53EDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1AFB53F44()
{
  result = qword_1EB642B98;
  if (!qword_1EB642B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642B98);
  }

  return result;
}

unint64_t sub_1AFB53F98()
{
  result = qword_1EB642BA0;
  if (!qword_1EB642BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642BA0);
  }

  return result;
}

unint64_t sub_1AFB53FEC()
{
  result = qword_1EB642BA8;
  if (!qword_1EB642BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642BA8);
  }

  return result;
}

unint64_t sub_1AFB54040()
{
  result = qword_1EB642BB0;
  if (!qword_1EB642BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642BB0);
  }

  return result;
}

unint64_t sub_1AFB54094()
{
  result = qword_1ED7231A0;
  if (!qword_1ED7231A0)
  {
    sub_1AFA3B754(255, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7231A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ForceField_LEGACY.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ForceField_LEGACY.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1AFB542E0(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AFB54454(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AFB54348()
{
  result = qword_1EB642BC8;
  if (!qword_1EB642BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642BC8);
  }

  return result;
}

unint64_t sub_1AFB543D0()
{
  result = qword_1EB642BE0;
  if (!qword_1EB642BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642BE0);
  }

  return result;
}

void sub_1AFB54454(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AFB544A8()
{
  result = qword_1EB642BF8;
  if (!qword_1EB642BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642BF8);
  }

  return result;
}

unint64_t sub_1AFB54500()
{
  result = qword_1EB642C00;
  if (!qword_1EB642C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642C00);
  }

  return result;
}

unint64_t sub_1AFB54558()
{
  result = qword_1EB642C08;
  if (!qword_1EB642C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642C08);
  }

  return result;
}

unint64_t sub_1AFB545B0()
{
  result = qword_1EB642C10;
  if (!qword_1EB642C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642C10);
  }

  return result;
}

unint64_t sub_1AFB54604()
{
  result = qword_1EB642C18;
  if (!qword_1EB642C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642C18);
  }

  return result;
}

unint64_t sub_1AFB54658()
{
  result = qword_1EB642C20;
  if (!qword_1EB642C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642C20);
  }

  return result;
}

unint64_t sub_1AFB546AC()
{
  result = qword_1EB642C28;
  if (!qword_1EB642C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642C28);
  }

  return result;
}

void sub_1AFB5470C(unint64_t a1, id a2, void *a3)
{
  v7 = [a2 supportsFamily_];
  if (a1 >> 62)
  {
    v55 = v7;
    v8 = sub_1AFDFE108();
    v7 = v55;
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return;
    }
  }

  v57 = v3;
  v56 = v7;
  v9 = 0;
  v10 = a1 & 0xC000000000000001;
  while (1)
  {
    if (v10)
    {
      v11 = MEMORY[0x1B2719C70](v9, a1);
    }

    else
    {
      v11 = *(a1 + 8 * v9 + 32);
      swift_unknownObjectRetain();
    }

    swift_getObjectType();
    if (![v11 index])
    {
      break;
    }

    swift_unknownObjectRelease();
    if (v8 == ++v9)
    {
      goto LABEL_20;
    }
  }

  if (qword_1ED72AB78 != -1)
  {
    swift_once();
  }

  if (byte_1ED73B6A0 == 1)
  {
    v12 = swift_dynamicCastObjCProtocolConditional();
    if (!v12)
    {
LABEL_39:
      sub_1AFDFE218();
      sub_1AFDFEDD8();
      MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF38D60);
      sub_1AFB57470();
      swift_allocError();
      *v49 = 0;
      v49[1] = 0xE000000000000000;
      swift_willThrow();
LABEL_44:
      swift_unknownObjectRelease();
      return;
    }

    v13 = v12;
    v14 = [a2 newArgumentEncoderWithBufferBinding_];
    if ([v14 encodedLength] < 1 || (objc_msgSend(v14, sel_setArgumentBuffer_offset_, a3, 0), v15 = objc_msgSend(v14, sel_constantDataAtIndex_, 0), v16 = objc_msgSend(swift_unknownObjectRetain(), sel_contents), v17 = a3, v18 = v15 - v16, v18 < 0))
    {
      v19 = 0;
    }

    else if (v18 >= [a3 length])
    {
      v19 = 0;
    }

    else
    {
      v19 = v18;
    }

    swift_getObjectType();
    v47 = [v13 bufferStructType];
    if (!v47)
    {
      sub_1AFDFE218();
      sub_1AFDFEDD8();
      MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF38D80);
      sub_1AFB57470();
      swift_allocError();
      *v54 = 0;
      v54[1] = 0xE000000000000000;
      swift_willThrow();
      swift_unknownObjectRelease();
      goto LABEL_44;
    }

    v48 = v47;
    sub_1AFB58670(29796, 0xE200000000000000, v19, 4, v47);
    if (v57)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    sub_1AFB58670(1701669236, 0xE400000000000000, (v19 + 4), 4, v48);
    sub_1AFB58E88(7103081, 0xE300000000000000, 10, 0xD0, 8, v48, v56);
    sub_1AFB58E88(0x70616D5F727276, 0xE700000000000000, 12, 0, 0x18, v48, v56);
    sub_1AFB58A60(0x6E61696461727269, 0xEA00000000006563, 20, 0x20, v48, v56);
    sub_1AFB58A60(0x65636E6169646172, 0xE800000000000000, 21, 0x28, v48, v56);
    sub_1AFB58A60(0x54554C66647262, 0xE700000000000000, 22, 0x30, v48, v56);
    sub_1AFB58A60(0x614D776F64616873, 0xE900000000000070, 23, 0x38, v48, v56);
    sub_1AFB58A60(0x7865546F617373, 0xE700000000000000, 24, 0x40, v48, v56);
    sub_1AFB58E88(0x696E556C65786F76, 0xE800000000000000, 33, 0x60, 0x48, v48, v56);
    sub_1AFB58A60(0x7865547474616373, 0xE800000000000000, 34, 0x50, v48, v56);
    v20 = 0;

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
LABEL_20:
    v20 = v3;
  }

  v21 = 0;
  while (1)
  {
    if (v10)
    {
      v22 = MEMORY[0x1B2719C70](v21, a1);
    }

    else
    {
      v22 = *(a1 + 8 * v21 + 32);
      swift_unknownObjectRetain();
    }

    swift_getObjectType();
    if ([v22 index] == 1)
    {
      break;
    }

    swift_unknownObjectRelease();
    if (v8 == ++v21)
    {
      return;
    }
  }

  v23 = swift_dynamicCastObjCProtocolConditional();
  if (!v23)
  {
    goto LABEL_39;
  }

  v24 = v23;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v25 = [v24 bufferStructType];
  if (v25)
  {
    v26 = v25;
    if ([v24 bufferDataSize] == 1152)
    {
      KeyPath = swift_getKeyPath();
      sub_1AFB5936C(0xD000000000000011, 0x80000001AFF48DE0, KeyPath, v26);
      if (!v20)
      {

        v28 = swift_getKeyPath();
        sub_1AFB5936C(0xD000000000000011, 0x80000001AFF48E00, v28, v26);

        v29 = swift_getKeyPath();
        sub_1AFB5936C(0x6F72665F6A6F7270, 0xEE00776569765F6DLL, v29, v26);

        v30 = swift_getKeyPath();
        sub_1AFB5936C(0x6F72665F77656976, 0xEE006A6F72705F6DLL, v30, v26);

        v31 = swift_getKeyPath();
        sub_1AFB5A9C4(0x6D61635F73777263, 0xEF736F705F617265, v31, v26);

        v32 = swift_getKeyPath();
        sub_1AFB597E4(0xD00000000000001BLL, 0x80000001AFF48E20, v32, v26);

        v33 = swift_getKeyPath();
        sub_1AFB597E4(0xD00000000000001DLL, 0x80000001AFF48E40, v33, v26);

        v34 = swift_getKeyPath();
        sub_1AFB5936C(0xD000000000000012, 0x80000001AFF48E60, v34, v26);

        v35 = swift_getKeyPath();
        sub_1AFB59C5C(0xD000000000000016, 0x80000001AFF48E80, v35, v26);

        v36 = swift_getKeyPath();
        sub_1AFB59C5C(0xD000000000000010, 0x80000001AFF48EA0, v36, v26);

        v37 = swift_getKeyPath();
        sub_1AFB5A0D4(0x74726F7077656976, 0xED0000746E756F43, v37, v26);

        v38 = swift_getKeyPath();
        sub_1AFB5A0D4(0xD000000000000016, 0x80000001AFF48EC0, v38, v26);

        v39 = swift_getKeyPath();
        sub_1AFB59C5C(0x536D6F724663646ELL, 0xED00006E65657263, v39, v26);

        v40 = swift_getKeyPath();
        sub_1AFB5A54C(0x7261467261656ELL, 0xE700000000000000, v40, v26);

        v41 = swift_getKeyPath();
        sub_1AFB5A54C(0xD000000000000014, 0x80000001AFF48EE0, v41, v26);

        v42 = swift_getKeyPath();
        sub_1AFB5A0D4(0x6361704F65646166, 0xEB00000000797469, v42, v26);

        v43 = swift_getKeyPath();
        sub_1AFB5A54C(0xD000000000000029, 0x80000001AFF48F00, v43, v26);

        v44 = swift_getKeyPath();
        sub_1AFB5A9C4(0xD000000000000017, 0x80000001AFF48F30, v44, v26);

        v45 = swift_getKeyPath();
        sub_1AFB5A9C4(0xD000000000000011, 0x80000001AFF48F50, v45, v26);

        v46 = swift_getKeyPath();
        sub_1AFB59C5C(0xD000000000000010, 0x80000001AFF48F70, v46, v26);
      }

      swift_unknownObjectRelease_n();
    }

    else
    {
      sub_1AFDFE218();

      [v24 bufferDataSize];
      v51 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v51);

      MEMORY[0x1B2718AE0](540877088, 0xE400000000000000);
      v52 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v52);

      sub_1AFB57470();
      swift_allocError();
      *v53 = 0xD000000000000020;
      v53[1] = 0x80000001AFF48DB0;
      swift_willThrow();
      swift_unknownObjectRelease_n();
    }
  }

  else
  {
    sub_1AFDFE218();
    sub_1AFDFEDD8();
    MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF38D80);
    sub_1AFB57470();
    swift_allocError();
    *v50 = 0;
    v50[1] = 0xE000000000000000;
    swift_willThrow();
    swift_unknownObjectRelease_n();
  }
}

uint64_t sub_1AFB55538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v111[2] = *MEMORY[0x1E69E9840];
  if (((*(a2 + 393) & 1) != 0 || (*(a2 + 395) & 1) != 0 || *(a2 + 396) == 1) && !*(a1 + 1528))
  {
    v10 = sub_1AF42680C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v12 = v10[2];
    v11 = v10[3];
    v13 = v11 >> 1;
    v14 = v12 + 1;
    v109 = a3;
    if (v11 >> 1 <= v12)
    {
      v10 = sub_1AF42680C(v11 > 1, v12 + 1, 1, v10);
      v11 = v10[3];
      v13 = v11 >> 1;
    }

    v10[2] = v14;
    v15 = &v10[6 * v12];
    *(v15 + 32) = 8;
    strcpy(v15 + 40, "viewportCount");
    *(v15 + 27) = -4864;
    *(v15 + 7) = xmmword_1AFE9C660;
    *(v15 + 72) = 1;
    v16 = v12 + 2;
    if (v13 < (v12 + 2))
    {
      v10 = sub_1AF42680C(v11 > 1, v12 + 2, 1, v10);
    }

    v10[2] = v16;
    v17 = &v10[6 * v14];
    *(v17 + 32) = 8;
    v17[5] = 0xD000000000000012;
    v17[6] = 0x80000001AFF49170;
    *(v17 + 7) = xmmword_1AFE9C670;
    *(v17 + 72) = 1;
    v18 = v10[3];
    v19 = v12 + 3;
    if ((v12 + 3) > (v18 >> 1))
    {
      v10 = sub_1AF42680C(v18 > 1, v12 + 3, 1, v10);
    }

    v10[2] = v19;
    v20 = &v10[6 * v16];
    *(v20 + 32) = 8;
    v20[5] = 0xD000000000000012;
    v20[6] = 0x80000001AFF49190;
    *(v20 + 7) = vdupq_n_s64(0x80uLL);
    *(v20 + 72) = 1;
    v21 = v10[3];
    v22 = v12 + 4;
    if ((v12 + 4) > (v21 >> 1))
    {
      v10 = sub_1AF42680C(v21 > 1, v12 + 4, 1, v10);
    }

    v10[2] = v22;
    v23 = &v10[6 * v19];
    *(v23 + 32) = 8;
    v23[5] = 0x72506F5477656976;
    v23[6] = 0xEF79617272416A6FLL;
    *(v23 + 7) = xmmword_1AFE9C680;
    *(v23 + 72) = 1;
    v24 = v10[3];
    v25 = v12 + 5;
    if ((v12 + 5) > (v24 >> 1))
    {
      v10 = sub_1AF42680C(v24 > 1, v12 + 5, 1, v10);
    }

    v10[2] = v25;
    v26 = &v10[6 * v22];
    *(v26 + 32) = 8;
    v26[5] = 0x69566F546A6F7270;
    v26[6] = 0xEF79617272417765;
    *(v26 + 7) = xmmword_1AFE9C690;
    *(v26 + 72) = 1;
    v27 = v10[3];
    v28 = v12 + 6;
    if ((v12 + 6) > (v27 >> 1))
    {
      v10 = sub_1AF42680C(v27 > 1, v12 + 6, 1, v10);
    }

    v10[2] = v28;
    v29 = &v10[6 * v25];
    *(v29 + 32) = 8;
    v29[5] = 0xD000000000000017;
    v29[6] = 0x80000001AFF491B0;
    *(v29 + 7) = xmmword_1AFE9C6A0;
    *(v29 + 72) = 1;
    v30 = v10[3];
    v31 = v12 + 7;
    if ((v12 + 7) > (v30 >> 1))
    {
      v10 = sub_1AF42680C(v30 > 1, v12 + 7, 1, v10);
    }

    v10[2] = v31;
    v32 = &v10[6 * v28];
    *(v32 + 32) = 8;
    v32[5] = 0xD000000000000016;
    v32[6] = 0x80000001AFF48EC0;
    *(v32 + 7) = xmmword_1AFE9C6B0;
    *(v32 + 72) = 1;
    v33 = v10[3];
    v34 = v12 + 8;
    if ((v12 + 8) > (v33 >> 1))
    {
      v10 = sub_1AF42680C(v33 > 1, v12 + 8, 1, v10);
    }

    v10[2] = v34;
    v35 = &v10[6 * v31];
    *(v35 + 32) = 8;
    v35[5] = 0xD000000000000010;
    v35[6] = 0x80000001AFF48EA0;
    *(v35 + 7) = xmmword_1AFE9C6C0;
    *(v35 + 72) = 1;
    v36 = v10[3];
    v37 = v12 + 9;
    if ((v12 + 9) > (v36 >> 1))
    {
      v10 = sub_1AF42680C(v36 > 1, v12 + 9, 1, v10);
    }

    v10[2] = v37;
    v38 = &v10[6 * v34];
    *(v38 + 32) = 8;
    v38[5] = 0xD000000000000015;
    v38[6] = 0x80000001AFF491D0;
    *(v38 + 7) = xmmword_1AFE9C6D0;
    *(v38 + 72) = 1;
    v39 = v10[3];
    v40 = v12 + 10;
    if ((v12 + 10) > (v39 >> 1))
    {
      v10 = sub_1AF42680C(v39 > 1, v12 + 10, 1, v10);
    }

    v10[2] = v40;
    v41 = &v10[6 * v37];
    *(v41 + 32) = 8;
    v41[5] = 0xD000000000000029;
    v41[6] = 0x80000001AFF48F00;
    *(v41 + 7) = xmmword_1AFE9C6E0;
    *(v41 + 72) = 1;
    v42 = v10[3];
    v43 = v12 + 11;
    if ((v12 + 11) > (v42 >> 1))
    {
      v10 = sub_1AF42680C(v42 > 1, v12 + 11, 1, v10);
    }

    v10[2] = v43;
    v44 = &v10[6 * v40];
    *(v44 + 32) = 8;
    v44[5] = 0xD000000000000017;
    v44[6] = 0x80000001AFF48F30;
    *(v44 + 7) = xmmword_1AFE9C6F0;
    *(v44 + 72) = 1;
    v45 = v10[3];
    v46 = v12 + 12;
    if ((v12 + 12) > (v45 >> 1))
    {
      v10 = sub_1AF42680C(v45 > 1, v12 + 12, 1, v10);
    }

    v10[2] = v46;
    v47 = &v10[6 * v43];
    *(v47 + 32) = 8;
    v47[5] = 0xD000000000000010;
    v47[6] = 0x80000001AFF48F70;
    *(v47 + 7) = xmmword_1AFE9C700;
    *(v47 + 72) = 1;
    v48 = v10[3];
    v49 = v12 + 13;
    if ((v12 + 13) > (v48 >> 1))
    {
      v10 = sub_1AF42680C(v48 > 1, v12 + 13, 1, v10);
    }

    v10[2] = v49;
    v50 = &v10[6 * v46];
    *(v50 + 32) = 9;
    v50[5] = 0x6361704F65646166;
    v50[6] = 0xEB00000000797469;
    *(v50 + 7) = xmmword_1AFE9C710;
    *(v50 + 72) = 1;
    v51 = v10[3];
    v52 = v12 + 14;
    if ((v12 + 14) > (v51 >> 1))
    {
      v10 = sub_1AF42680C(v51 > 1, v12 + 14, 1, v10);
    }

    v10[2] = v52;
    v53 = &v10[6 * v49];
    *(v53 + 32) = 1;
    v53[5] = 0xD000000000000015;
    v53[6] = 0x80000001AFF491F0;
    *(v53 + 7) = xmmword_1AFE9C720;
    *(v53 + 72) = 1;
    v54 = v10[3];
    v55 = v12 + 15;
    if ((v12 + 15) > (v54 >> 1))
    {
      v10 = sub_1AF42680C(v54 > 1, v12 + 15, 1, v10);
    }

    v10[2] = v55;
    v56 = &v10[6 * v52];
    *(v56 + 32) = 1;
    v56[5] = 0xD000000000000015;
    v56[6] = 0x80000001AFF491F0;
    *(v56 + 7) = xmmword_1AFE9C730;
    *(v56 + 72) = 3;
    v57 = v10[3];
    v58 = v12 + 16;
    if ((v12 + 16) > (v57 >> 1))
    {
      v10 = sub_1AF42680C(v57 > 1, v12 + 16, 1, v10);
    }

    v10[2] = v58;
    v59 = &v10[6 * v55];
    *(v59 + 32) = 9;
    v59[5] = 0xD000000000000012;
    v59[6] = 0x80000001AFF49210;
    *(v59 + 7) = xmmword_1AFE9C740;
    *(v59 + 72) = 2;
    v60 = v10[3];
    v61 = v12 + 17;
    if ((v12 + 17) > (v60 >> 1))
    {
      v10 = sub_1AF42680C(v60 > 1, v12 + 17, 1, v10);
    }

    v10[2] = v61;
    v62 = &v10[6 * v58];
    *(v62 + 32) = 9;
    v62[5] = 0x6361704F65646166;
    v62[6] = 0xEB00000000797469;
    *(v62 + 7) = vdupq_n_s64(4uLL);
    *(v62 + 72) = 2;
    v63 = v10[3];
    v64 = v12 + 18;
    if ((v12 + 18) > (v63 >> 1))
    {
      v10 = sub_1AF42680C(v63 > 1, v12 + 18, 1, v10);
    }

    v10[2] = v64;
    v65 = &v10[6 * v61];
    *(v65 + 32) = 9;
    v65[5] = 0xD000000000000012;
    v65[6] = 0x80000001AFF49230;
    *(v65 + 7) = xmmword_1AFE9C750;
    *(v65 + 72) = 2;
    v66 = v10[3];
    v67 = v12 + 19;
    if ((v12 + 19) > (v66 >> 1))
    {
      v10 = sub_1AF42680C(v66 > 1, v12 + 19, 1, v10);
    }

    v10[2] = v67;
    v68 = &v10[6 * v64];
    *(v68 + 32) = 9;
    v68[5] = 0xD000000000000017;
    v68[6] = 0x80000001AFF49250;
    *(v68 + 7) = xmmword_1AFE9C760;
    *(v68 + 72) = 2;
    v69 = v10[3];
    v70 = v12 + 20;
    if ((v12 + 20) > (v69 >> 1))
    {
      v10 = sub_1AF42680C(v69 > 1, v12 + 20, 1, v10);
    }

    v10[2] = v70;
    v71 = &v10[6 * v67];
    *(v71 + 32) = 9;
    v71[5] = 0xD000000000000019;
    v71[6] = 0x80000001AFF49270;
    *(v71 + 7) = xmmword_1AFE9C770;
    *(v71 + 72) = 2;
    v72 = v10[3];
    v73 = v12 + 21;
    if ((v12 + 21) > (v72 >> 1))
    {
      v10 = sub_1AF42680C(v72 > 1, v12 + 21, 1, v10);
    }

    v10[2] = v73;
    v74 = &v10[6 * v70];
    *(v74 + 32) = 9;
    v74[5] = 0x6C506C6174726F70;
    v74[6] = 0xEB00000000656E61;
    *(v74 + 7) = vdupq_n_s64(0x10uLL);
    *(v74 + 72) = 2;
    v75 = v10[3];
    if ((v12 + 22) > (v75 >> 1))
    {
      v10 = sub_1AF42680C(v75 > 1, v12 + 22, 1, v10);
    }

    v10[2] = v12 + 22;
    v76 = &v10[6 * v73];
    *(v76 + 32) = 9;
    v76[5] = 0xD000000000000019;
    v76[6] = 0x80000001AFF49290;
    *(v76 + 7) = xmmword_1AFE9C780;
    *(v76 + 72) = 2;
    *(a1 + 1528) = v10;
    a3 = v109;
    v5 = a5;
  }

  sub_1AFB56474(a2);
  *(a1 + 1272) = *(a1 + 8);
  v77 = sub_1AF5B47A0(a4, v5);
  v79 = v78;
  if (v5)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  v81 = sub_1AF130FD8(Strong);

  if (v81)
  {
    v111[1] = &unk_1F2629960;
    v82 = swift_dynamicCastObjCProtocolConditional();
    if (!v82)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v82 = 0;
  }

  if (qword_1ED72AB78 != -1)
  {
    swift_once();
  }

  if (byte_1ED73B6A0 == 1)
  {
    v83 = *(a1 + 1288);
    if (!v83)
    {
      goto LABEL_81;
    }

    swift_getObjectType();
    v84 = [swift_unknownObjectRetain() encodedLength];
    CFXBufferAllocatorPerFrameAllocateWithLength(*(a2 + 232), v84);
    *(a1 + 1256) = v85;
    *(a1 + 1264) = v86;
    sub_1AF471B58(v85, v86, 0);
    *[v83 constantDataAtIndex_] = *(a1 + 1272);
    if (*(a2 + 393))
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v110 = a3;
      sub_1AF471CAC(v82, 24);
      v89 = swift_unknownObjectRetain();
      sub_1AF471CAC(v89, 20);
      swift_unknownObjectRelease();
      v90 = swift_unknownObjectRetain();
      sub_1AF471CAC(v90, 21);
      swift_unknownObjectRelease();
      v91 = sub_1AF7181D8();
      sub_1AF471CAC(v91, 22);
      sub_1AF8932F0(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v92 = swift_allocObject();
      *(v92 + 16) = xmmword_1AFE55130;
      *(v92 + 32) = v77;
      *(v92 + 40) = v79;
      *(v92 + 48) = v91;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      *(a1 + 1280) = v92;
      if (v82)
      {
        v95 = swift_unknownObjectRetain();
        MEMORY[0x1B2718E00](v95);
        if (*((*(a1 + 1280) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 1280) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1AFDFD458();
        }

        v93 = sub_1AFDFD4B8();
      }

      MEMORY[0x1EEE9AC00](v93, v94);
      v96 = *(v110 + 184);
      MEMORY[0x1EEE9AC00](v97, v98);

      sub_1AF6D2ADC(&type metadata for LightsUniforms, &off_1F252B0E8, v96, sub_1AFB49B48);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v87 = *(a2 + 232);
    v111[0] = *(a1 + 1272);
    *(a1 + 1256) = CFXBufferAllocatorPerFrameAllocateWithBytes(v87, v111, 8uLL);
    *(a1 + 1264) = v88;
  }

  v99 = (a1 + 1232);
  *(a1 + 1240) = 0u;
  v100 = *(a1 + 1232);
  if ((v100 & 0x8000000000000000) == 0 && (v100 & 0x4000000000000000) == 0)
  {
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v100 = *v99;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (v100 >> 62)
      {
        v102 = sub_1AFDFE108();
      }

      else
      {
        v102 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_1AF64E3CC(0, v102);
      if ((*(a2 + 393) & 1) == 0)
      {
        goto LABEL_81;
      }

LABEL_80:
      *(a1 + 1328) = 0;
      *(a1 + 1344) = 0u;
      *(a1 + 1360) = 0u;
      *(a1 + 1328) = *(a1 + 1536);
      sub_1AFB579B4(a1 + 1312);
      sub_1AFB57B2C(a1 + 1400, v105);
      goto LABEL_81;
    }
  }

  if (v100 >> 62)
  {
    v107 = sub_1AFDFE108();
    sub_1AFDFE108();
    sub_1AFDFE108();
    v103 = v107;
  }

  else
  {
    v103 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  }

  v104 = sub_1AFC892CC(0, v103);

  *v99 = v104;
  if (*(a2 + 393))
  {
    goto LABEL_80;
  }

LABEL_81:
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}