unint64_t sub_1AF3D0B94@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 0xFFFFFFFF)
  {
LABEL_2:
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 1;
    goto LABEL_3;
  }

  v3 = 0;
  v6 = 1;
  if ((result & 0x80000000) != 0)
  {
    v4 = 0;
    v5 = 0;
    goto LABEL_3;
  }

  v4 = 0;
  v5 = 0;
  if (result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v7 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v8 = *(v7 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v7[2] == HIDWORD(result))
    {
      v9 = *(*(v2 + 144) + 8 * *v7 + 32);
      v10 = *(v9 + 48);
      v11 = (v10 + 32);
      v12 = *(v10 + 16) + 1;
      while (--v12)
      {
        v13 = v11 + 5;
        v14 = *v11;
        v11 += 5;
        if (v14 == &type metadata for ParticleFlockingAlignVelocityOnPlane)
        {
          v6 = 0;
          v15 = (&(*(v13 - 2))[2 * v8] + *(v9 + 128));
          v3 = *v15;
          v4 = *(v15 + 2);
          v5 = *(v15 + 3);
          goto LABEL_3;
        }
      }
    }

    goto LABEL_2;
  }

LABEL_3:
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  return result;
}

unint64_t sub_1AF3D0C8C@<X0>(unint64_t result@<X0>, __int128 *a2@<X8>)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v4 = *(v3 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v3[2] == HIDWORD(result))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for ParticleSubSpawn.State)
        {
          v11 = (&(*(v9 - 2))[4 * v4].Kind + *(v5 + 128));
          v12 = v11[3];
          v14 = *v11;
          v13 = v11[1];
          v18[2] = v11[2];
          v18[3] = v12;
          v18[0] = v14;
          v18[1] = v13;
          v15 = v11[1];
          *a2 = *v11;
          a2[1] = v15;
          v16 = v11[3];
          a2[2] = v11[2];
          a2[3] = v16;
          return sub_1AF44323C(v18, &v17);
        }
      }
    }
  }

  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

__n128 sub_1AF3D0D90@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v5 = *(v4 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v4[2] == HIDWORD(a1))
    {
      v6 = *(*(v2 + 144) + 8 * *v4 + 32);
      v7 = *(v6 + 48);
      v8 = (v7 + 32);
      v9 = *(v7 + 16) + 1;
      while (--v9)
      {
        v10 = v8 + 5;
        v11 = *v8;
        v8 += 5;
        if (v11 == &type metadata for ParticleSpawnState)
        {
          v12 = &(*(v10 - 2))[8 * v5] + *(v6 + 128);
          v13 = *(v12 + 5);
          *(a2 + 64) = *(v12 + 4);
          *(a2 + 80) = v13;
          *(a2 + 96) = *(v12 + 6);
          *(a2 + 112) = v12[112];
          v14 = *(v12 + 1);
          *a2 = *v12;
          *(a2 + 16) = v14;
          result = *(v12 + 2);
          v15 = *(v12 + 3);
          *(a2 + 32) = result;
          *(a2 + 48) = v15;
          return result;
        }
      }
    }
  }

  result.n128_u64[0] = 0;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 112) = 2;
  return result;
}

__n128 sub_1AF3D0E88@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v5 = *(v4 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v4[2] == HIDWORD(a1))
    {
      v6 = *(*(v2 + 144) + 8 * *v4 + 32);
      v7 = *(v6 + 48);
      v8 = (v7 + 32);
      v9 = *(v7 + 16) + 1;
      while (--v9)
      {
        v10 = v8 + 5;
        v11 = *v8;
        v8 += 5;
        if (v11 == &type metadata for ParticleRibbonRenderer)
        {
          v12 = &(*(v10 - 2))[7 * v5] + *(v6 + 128);
          v13 = *(v12 + 80);
          *(a2 + 64) = *(v12 + 64);
          *(a2 + 80) = v13;
          *(a2 + 89) = *(v12 + 89);
          v14 = *(v12 + 16);
          *a2 = *v12;
          *(a2 + 16) = v14;
          result = *(v12 + 48);
          *(a2 + 32) = *(v12 + 32);
          *(a2 + 48) = result;
          return result;
        }
      }
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0x20000000000;
  result.n128_u64[0] = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 89) = 0u;
  return result;
}

unint64_t sub_1AF3D0F7C(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
LABEL_2:
    v2 = 0;
    v3 = 1;
    return v2 | (v3 << 32);
  }

  v2 = 0;
  v3 = 1;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v5[2] == HIDWORD(a1))
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for ParticleSpawnDuration)
        {
          v3 = 0;
          v2 = *(&(*(v11 - 2))->Kind + 4 * v6 + *(v7 + 128));
          return v2 | (v3 << 32);
        }
      }
    }

    goto LABEL_2;
  }

  return v2 | (v3 << 32);
}

unint64_t sub_1AF3D1058(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
LABEL_2:
    v2 = 0;
    v3 = 1;
    return v2 | (v3 << 32);
  }

  v2 = 0;
  v3 = 1;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v5[2] == HIDWORD(a1))
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for ParticleSpawnDelay)
        {
          v3 = 0;
          v2 = *(&(*(v11 - 2))->Kind + 4 * v6 + *(v7 + 128));
          return v2 | (v3 << 32);
        }
      }
    }

    goto LABEL_2;
  }

  return v2 | (v3 << 32);
}

unint64_t sub_1AF3D1134@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v4 = *(v3 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v3[2] == HIDWORD(result))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for VFXParticleCollisionDataComponent)
        {
          v11 = (&(*(v9 - 2))[v4].Kind + *(v5 + 128));
          v12 = v11[1];
          *a2 = *v11;
          a2[1] = v12;
        }
      }
    }
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t sub_1AF3D11F4(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 == 0xFFFFFFFF || v5[2] == v4)
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for Bindings)
        {
          v13 = *(&(*(v11 - 2))->Kind + 24 * v6 + *(v7 + 128));

          return v13;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3D131C(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 == 0xFFFFFFFF || v5[2] == v4)
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for REMeshAssetPointCache)
        {
          v13 = *(&(*(v11 - 2))->Kind + 24 * v6 + *(v7 + 128));

          return v13;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3D1440(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 == 0xFFFFFFFF || v5[2] == v4)
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for TextureClient)
        {
          v13 = *(&(*(v11 - 2))[v6].Kind + *(v7 + 128));

          return v13;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3D1538(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 1;
  }

  result = 1;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 1;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    result = 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for TextureCGImage)
      {
        v13 = *(&(*(v11 - 2))->Kind + 8 * v6 + *(v7 + 128));
        v14 = v13;
        return v13;
      }
    }
  }

  return result;
}

uint64_t sub_1AF3D161C()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;

    v2 = sub_1AF9A178C(1, 0);
    v4 = v3;

    if (v4)
    {
      v5 = 0xFFFFFFFFLL;
    }

    else
    {
      v5 = v2;
    }

    v6 = sub_1AF67CCDC(v5, v1);

    return v6;
  }

  else
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF3D1700()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;

    v2 = sub_1AF9A178C(1, 0);
    v4 = v3;

    if (v4)
    {
      v5 = 0xFFFFFFFFLL;
    }

    else
    {
      v5 = v2;
    }

    v6 = sub_1AF67CE70(v5, v1);

    return v6;
  }

  else
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF3D17D4(uint64_t a1, __int128 *a2)
{
  v127 = *MEMORY[0x1E69E9840];
  v4 = sub_1AFDFC318();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RenderGraphNode(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v76 = v8;
    v10 = *(*result + 152);
    v11 = *result + 152;
    v12 = result;
    v13 = swift_retain_n();
    v84 = v10;
    v85 = v12;
    v83 = v11;
    v10(&v88, v13);
    v109 = v89;
    v14 = *(v89 + 16);

    v77 = v5;
    if (v14)
    {
      v74 = a2;
      v16 = 0;
      v78 = MEMORY[0x1E69E7CC0];
      v17 = v15 + 32;
      v75 = v4;
      v81 = v15 + 32;
      v82 = a1;
      v80 = v14;
      while (1)
      {
        v18 = v16;
        v19 = *(v17 + 8 * v16++);
        v20 = swift_allocObject();
        *(v20 + 16) = 0xC0000000000000D0;
        sub_1AF4410A8(v19);
        v21 = sub_1AF9C5694(v19, v20 | 0x8000000000000000);

        if (!v21)
        {
          goto LABEL_5;
        }

        v86 = v16;
        v22 = v85;

        v84(&v94, v23);
        v24 = v95;
        v107 = v94;
        v108 = v95;
        v25 = MEMORY[0x1E69E62F8];
        sub_1AF444058(&v107, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
        v106 = v96;
        sub_1AF444058(&v106, &unk_1EB638968, &type metadata for TypeConstraint, v25, sub_1AF449B08);
        v105 = v97;
        sub_1AF44943C(&v105, sub_1AF445C2C);
        v104 = v98;
        sub_1AF44943C(&v104, sub_1AF445C2C);
        v103 = v99;
        sub_1AF444058(&v103, &unk_1EB638978, &type metadata for AnyValue, v25, sub_1AF449B08);
        v26 = *(v24 + 8 * v18 + 32);
        sub_1AF4410A8(v26);
        v27 = sub_1AF444058(&v108, &unk_1EB638968, &type metadata for TypeConstraint, v25, sub_1AF449B08);
        v28 = (*(*v22 + 248))(v27);
        if (v18 < 0 || v18 >= *(v28 + 16))
        {
          break;
        }

        v29 = *(v28 + v18 + 32);
        sub_1AF441114(v26);

        v14 = v80;
        v17 = v81;
        v16 = v86;
        if (v29 == 3)
        {
          goto LABEL_5;
        }

        v30 = v79[12];
        if (!*(v30 + 16))
        {
          goto LABEL_5;
        }

        v31 = sub_1AF0D3F10(v85);
        if ((v32 & 1) == 0)
        {
          goto LABEL_5;
        }

        v33 = *(*(v30 + 56) + 8 * v31);
        v34 = *(v33 + 16);
        if (!v34)
        {
          goto LABEL_5;
        }

        v35 = (v33 + 40);
        while (1)
        {
          v36 = *v35;
          v35 += 3;
          if (v36 == v18)
          {
            break;
          }

          if (!--v34)
          {
            goto LABEL_5;
          }
        }

        v37 = v74[5];
        v38 = v74[3];
        v123 = v74[4];
        v124 = v37;
        v39 = v74[5];
        v40 = v74[7];
        v125 = v74[6];
        v126 = v40;
        v41 = v74[1];
        v119 = *v74;
        v120 = v41;
        v42 = v74[3];
        v44 = *v74;
        v43 = v74[1];
        v121 = v74[2];
        v122 = v42;
        v115 = v123;
        v116 = v39;
        v45 = v74[7];
        v117 = v125;
        v118 = v45;
        v111 = v44;
        v112 = v43;
        v113 = v121;
        v114 = v38;
        v46 = (&v111 + v18);
        v48 = *v46;
        v47 = v46[1];
        v73 = v46;
        if (RGResourceIsNull(v47) || RGPassIsNull(v48))
        {
LABEL_38:
          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }

        if (RGResourceIsTexture(v47))
        {
          v49 = sub_1AF43943C(v47, v29);
          v50 = sub_1AF9711C0(v18, v92);
          v70 = v51;
          v71 = v50;
          v72 = v49;
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v78 = sub_1AF4218E0(0, *(v78 + 2) + 1, 1, v78);
          }

          v53 = *(v78 + 2);
          v52 = *(v78 + 3);
          if (v53 >= v52 >> 1)
          {
            v78 = sub_1AF4218E0(v52 > 1, v53 + 1, 1, v78);
          }

          v54 = v78;
          *(v78 + 2) = v53 + 1;
          v55 = &v54[32 * v53];
          v56 = v70;
          *(v55 + 4) = v71;
          *(v55 + 5) = v56;
          v55[48] = v29;
          *(v55 + 7) = v72;
          v57 = v79[10];
          v115 = v123;
          v116 = v124;
          v117 = v125;
          v118 = v126;
          v111 = v119;
          v112 = v120;
          v113 = v121;
          v114 = v122;
          v59 = *v73;
          v58 = v73[1];
          if (RGResourceIsNull(v58))
          {
            goto LABEL_38;
          }

          if (RGPassIsNull(v59))
          {
            goto LABEL_38;
          }

          sub_1AF24F974(v57, v58, v59, v72, v110);
          v60 = *&v110[0];
          if (RGResourceIsNull(*(&v110[0] + 1)))
          {
            goto LABEL_38;
          }

          if (RGPassIsNull(v60))
          {
            goto LABEL_38;
          }

          v110[4] = v123;
          v110[5] = v124;
          v110[6] = v125;
          v110[7] = v126;
          v110[0] = v119;
          v110[1] = v120;
          v110[2] = v121;
          v110[3] = v122;
          v61 = &v110[v18];
          v62 = *v61;
          if (RGResourceIsNull(v61[1]) || RGPassIsNull(v62))
          {
            goto LABEL_38;
          }

          RGPassDependsOn(v60, v62);
          swift_unknownObjectRelease();
          sub_1AF441114(v19);
          v4 = v75;
          if (v16 == v14)
          {
            goto LABEL_34;
          }
        }

        else
        {
LABEL_5:
          sub_1AF441114(v19);
          if (v16 == v14)
          {
            v4 = v75;
            goto LABEL_34;
          }
        }
      }

      sub_1AF441114(v26);

      v14 = v80;
      v17 = v81;
      v16 = v86;
      goto LABEL_5;
    }

    v78 = MEMORY[0x1E69E7CC0];
LABEL_34:
    v63 = MEMORY[0x1E69E62F8];
    sub_1AF444058(&v109, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
    *&v111 = v88;
    sub_1AF444058(&v111, &unk_1EB638968, &type metadata for TypeConstraint, v63, sub_1AF449B08);
    sub_1AF444058(&v109, &unk_1EB638968, &type metadata for TypeConstraint, v63, sub_1AF449B08);
    *&v110[0] = v90;
    sub_1AF444058(v110, &unk_1EB638968, &type metadata for TypeConstraint, v63, sub_1AF449B08);
    v102 = v91;
    sub_1AF44943C(&v102, sub_1AF445C2C);
    v101 = v92;
    sub_1AF44943C(&v101, sub_1AF445C2C);
    v100 = v93;
    sub_1AF444058(&v100, &unk_1EB638978, &type metadata for AnyValue, v63, sub_1AF449B08);
    v64 = v78;
    if (*(v78 + 2))
    {
      v65 = v79[3];
      v67 = v76;
      v66 = v77;
      (*(v77 + 16))(v76, v85 + OBJC_IVAR____TtC3VFX4Node_authoringID, v4);

      v68 = OBJC_IVAR____TtC3VFX22RenderGraphDiagnostics_texturePreviewsByNodeID;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v87 = *(v65 + v68);
      *(v65 + v68) = 0x8000000000000000;
      sub_1AF852204(v64, v67, isUniquelyReferenced_nonNull_native);
      (*(v66 + 8))(v67, v4);
      *(v65 + v68) = v87;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1AF3D2090()
{
  v2 = v0;
  v3 = MEMORY[0x1E69E7CC0];
  *&v65[0] = sub_1AF439808(MEMORY[0x1E69E7CC0]);
  *(&v65[0] + 1) = v4;
  sub_1AF413434(sub_1AF448110, v0, 1, 0x1000000000000000uLL, 0, v3, v65);
  if (v1)
  {
  }

  else
  {
    v60 = sub_1AF429194(*&v65[0], *(&v65[0] + 1), sub_1AF42AEBC);

    v6 = *(v0 + 128);
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = v6 + 32;
      v77 = *(v0 + 128);

      for (i = 0; i != v7; ++i)
      {
        v10 = v8 + 16 * i;
        v11 = *(v10 + 8);
        v12 = *(v11 + 16);
        if (v12)
        {
          v13 = *v10;

          v14 = 32;
          do
          {
            v15 = *(v2 + 120);
            if (*(v15 + 16))
            {
              v16 = sub_1AF41A9B4(*(v11 + v14));
              if (v17)
              {
                v18 = (*(v15 + 56) + 16 * v16);
                v19 = *v18;
                RGPassReadsFrom(v13, v18[1]);
                RGPassDependsOn(v13, v19);
              }
            }

            v14 += 8;
            --v12;
          }

          while (v12);
        }
      }
    }

    v20 = *(*(v2 + 112) + 16);
    v61 = *(v2 + 112);

    if (v20)
    {
      v21 = 0;
      v22 = v61 + 32;
      while (1)
      {
        v23 = (v22 + 40 * v21);
        v24 = *v23;
        v25 = v23[2];
        v59 = v23[3];
        v26 = v23[4];
        v27 = *(v2 + 104);
        if (!*(v27 + 16))
        {
          break;
        }

        v28 = v23[1];
        sub_1AFDFF288();
        v77 = v26;

        v29 = v24;

        sub_1AFDFD038();
        v30 = sub_1AFDFF2F8();
        v31 = -1 << *(v27 + 32);
        v32 = v30 & ~v31;
        if (((*(v27 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
LABEL_26:

          v24 = v29;
          v26 = v77;
          goto LABEL_27;
        }

        ++v21;
        v33 = ~v31;
        while (1)
        {
          v34 = (*(v27 + 48) + 16 * v32);
          v35 = *v34 == v28 && v34[1] == v25;
          if (v35 || (sub_1AFDFEE28() & 1) != 0)
          {
            break;
          }

          v32 = (v32 + 1) & v33;
          if (((*(v27 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        v22 = v61 + 32;
        if (v21 == v20)
        {
          goto LABEL_29;
        }
      }

LABEL_27:

      if (v26)
      {
        *&v65[0] = 0;
        *(&v65[0] + 1) = 0xE000000000000000;

        sub_1AFDFE218();

        *&v65[0] = 0xD000000000000017;
        *(&v65[0] + 1) = 0x80000001AFF27AA0;
        MEMORY[0x1B2718AE0](v59, v26);

        MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF27AC0);
        sub_1AF3C5A5C(v24, 0, 1, *&v65[0], *(&v65[0] + 1));

        swift_willThrow();
      }

      else
      {
        sub_1AF3C5A5C(v24, 0, 1, 0xD000000000000028, 0x80000001AFF27A70);
        swift_willThrow();
      }
    }

    else
    {
LABEL_29:

      if (*(v2 + 88) == 1)
      {
        v36 = *(v60 + 2);
        if (v36)
        {
          v37 = v36 - 1;
          for (j = v60 + 40; ; j += 144)
          {
            v65[0] = *(j - 8);
            v39 = *(j + 8);
            v40 = *(j + 24);
            v41 = *(j + 56);
            v65[3] = *(j + 40);
            v65[4] = v41;
            v65[1] = v39;
            v65[2] = v40;
            v42 = *(j + 72);
            v43 = *(j + 88);
            v44 = *(j + 104);
            *(v66 + 9) = *(j + 113);
            v65[6] = v43;
            v66[0] = v44;
            v65[5] = v42;
            v45 = *&v65[0];
            v67 = *j;
            v46 = *(j + 4);
            v48 = *(j + 1);
            v47 = *(j + 2);
            v70 = *(j + 3);
            v71 = v46;
            v68 = v48;
            v69 = v47;
            v50 = *(j + 6);
            v49 = *(j + 7);
            v51 = *(j + 5);
            v75 = j[128];
            v73 = v50;
            v74 = v49;
            v72 = v51;
            if (sub_1AF44812C(&v67) != 1)
            {
              v63[6] = v73;
              v63[7] = v74;
              v64 = v75;
              v63[2] = v69;
              v63[3] = v70;
              v63[4] = v71;
              v63[5] = v72;
              v63[0] = v67;
              v63[1] = v68;
              if (sub_1AF448140(v63) == 1)
              {
                nullsub_106();
              }

              else
              {
                nullsub_106();
                v53 = v52[5];
                v76[4] = v52[4];
                v76[5] = v53;
                v54 = v52[7];
                v76[6] = v52[6];
                v76[7] = v54;
                v55 = v52[1];
                v76[0] = *v52;
                v76[1] = v55;
                v56 = v52[3];
                v76[2] = v52[2];
                v76[3] = v56;
                sub_1AF4495B8(v65, v62, sub_1AF448148);
                sub_1AF3D17D4(v45, v76);
                sub_1AF44943C(v65, sub_1AF448148);
              }
            }

            if (!v37)
            {
              break;
            }

            --v37;
          }
        }
      }

      else
      {

        v57 = *(v2 + 24);
        v58 = OBJC_IVAR____TtC3VFX22RenderGraphDiagnostics_texturePreviewsByNodeID;

        *(v57 + v58) = MEMORY[0x1E69E7CC8];
      }
    }
  }

  return result;
}

void sub_1AF3D268C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  sub_1AF432C94(v4, v5);
  if (!v2)
  {
    v79 = v70;
    v80 = v71;
    v81 = v72;
    v75 = v66;
    v76 = v67;
    v77 = v68;
    v78 = v69;
    v73 = v64;
    v74 = v65;
    if (sub_1AF44812C(&v73) == 1)
    {
      goto LABEL_42;
    }

    v82[6] = v79;
    v82[7] = v80;
    v83 = v81;
    v82[2] = v75;
    v82[3] = v76;
    v82[4] = v77;
    v82[5] = v78;
    v82[0] = v73;
    v82[1] = v74;
    if (sub_1AF448140(v82) == 1)
    {
      nullsub_106();
      goto LABEL_42;
    }

    nullsub_106();
    v7 = *(v4 + 16);
    v27 = *(v7 + 16);
    if (v27)
    {
      v23 = v4;
      v24 = a2;
      v34 = v6[2];
      v35 = *v6;
      v40 = v6[3];
      v41 = v6[1];
      v33 = v6[4];
      v38 = v6[7];
      v39 = v6[5];
      v31 = v6[8];
      v32 = v6[6];
      v37 = v6[9];
      v36 = v6[11];
      v8 = v6[13];
      v29 = v6[12];
      v30 = v6[10];
      v26 = v7 + 32;
      v9 = v6[15];
      v28 = v6[14];

      v10 = 0;
      v25 = v5;
      while (1)
      {
        *&v43[0] = *(v26 + 16 * v10);

        v5(&v45, v43);

        v61 = v52;
        v62 = v53;
        v63 = v54;
        v57 = v48;
        v58 = v49;
        v59 = v50;
        v60 = v51;
        v55 = v46;
        v56 = v47;
        if (sub_1AF44812C(&v55) != 1)
        {
          v43[6] = v61;
          v43[7] = v62;
          v44 = v63;
          v43[2] = v57;
          v43[3] = v58;
          v43[4] = v59;
          v43[5] = v60;
          v43[0] = v55;
          v43[1] = v56;
          if (sub_1AF448140(v43) != 1)
          {
            nullsub_106();
            v12 = v11;
            for (i = 0; i != 8; ++i)
            {
              v14 = v12[5];
              v42[4] = v12[4];
              v42[5] = v14;
              v15 = v12[7];
              v42[6] = v12[6];
              v42[7] = v15;
              v16 = v12[1];
              v42[0] = *v12;
              v42[1] = v16;
              v17 = v12[3];
              v42[2] = v12[2];
              v42[3] = v17;
              v18 = *&v42[i];
              if (!RGResourceIsNull(*(&v42[i] + 1)) && !RGPassIsNull(v18))
              {
                if (!RGResourceIsNull(v41) && !RGPassIsNull(v35))
                {
                  RGPassDependsOn(v35, v18);
                }

                if (!RGResourceIsNull(v40) && !RGPassIsNull(v34))
                {
                  RGPassDependsOn(v34, v18);
                }

                if (!RGResourceIsNull(v39) && !RGPassIsNull(v33))
                {
                  RGPassDependsOn(v33, v18);
                }

                if (!RGResourceIsNull(v38) && !RGPassIsNull(v32))
                {
                  RGPassDependsOn(v32, v18);
                }

                if (!RGResourceIsNull(v37) && !RGPassIsNull(v31))
                {
                  RGPassDependsOn(v31, v18);
                }

                if (!RGResourceIsNull(v36) && !RGPassIsNull(v30))
                {
                  RGPassDependsOn(v30, v18);
                }

                if (!RGResourceIsNull(v8) && !RGPassIsNull(v29))
                {
                  RGPassDependsOn(v29, v18);
                }

                if (!RGResourceIsNull(v9) && !RGPassIsNull(v28))
                {
                  RGPassDependsOn(v28, v18);
                }
              }
            }

            v5 = v25;
            goto LABEL_9;
          }

          nullsub_106();
        }

LABEL_9:
        if (++v10 == v27)
        {

          v4 = v23;
          a2 = v24;
          break;
        }
      }
    }

LABEL_42:
    v19 = v68;
    *(a2 + 88) = v69;
    v20 = v71;
    *(a2 + 104) = v70;
    *(a2 + 120) = v20;
    v21 = v64;
    *(a2 + 24) = v65;
    v22 = v67;
    *(a2 + 40) = v66;
    *(a2 + 56) = v22;
    *(a2 + 72) = v19;
    *a2 = v4;
    *(a2 + 136) = v72;
    *(a2 + 8) = v21;
  }
}

uint64_t sub_1AF3D2AF0()
{

  swift_unknownObjectUnownedDestroy();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1AF3D2B70()
{
  sub_1AF3D2AF0();

  return swift_deallocClassInstance();
}

void sub_1AF3D2BB8(uint64_t a1, void *a2, void (*a3)(uint64_t, id))
{
  swift_unknownObjectRetain();
  v6 = a2;
  a3(a1, v6);
  swift_unknownObjectRelease();
}

uint64_t sub_1AF3D2C28(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF12DDCC(a2);
  sub_1AF130C80(a2, v4, v5, v6);
  v7 = sub_1AF1CF878(v3);

  v8 = *&v7[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];

  swift_unknownObjectRelease();
  v9 = MEMORY[0x1E69E7CC0];
  v49 = sub_1AF439B40(MEMORY[0x1E69E7CC0]);
  v50 = v10;
  sub_1AF41388C(sub_1AF42BA40, v8, 1, 0x1000000000000000uLL, 0, v9, &v49);
  v11 = sub_1AF429950(v49, v50, sub_1AF42AF58);

  v12 = v11[2];
  if (v12)
  {
    v13 = v11 + 5;
    v14 = MEMORY[0x1E69E7CC0];
    do
    {
      if ((*v13 & 1) == 0)
      {
        v15 = *(v13 - 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1AF4217DC(0, *(v14 + 2) + 1, 1, v14);
        }

        v17 = *(v14 + 2);
        v16 = *(v14 + 3);
        if (v17 >= v16 >> 1)
        {
          v14 = sub_1AF4217DC(v16 > 1, v17 + 1, 1, v14);
        }

        *(v14 + 2) = v17 + 1;
        *&v14[8 * v17 + 32] = v15;
      }

      v13 += 12;
      --v12;
    }

    while (v12);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v18 = *(v14 + 2);
  if (v18)
  {
    v19 = 0;
    v20 = (v8 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v21 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
    do
    {
      v24 = &v14[8 * v19 + 32];
      v26 = *v24;
      v25 = *(v24 + 1);
      v27 = v26 == -1 && v25 == 0;
      if (!v27 && (v26 & 0x80000000) == 0 && v20[1] > v26)
      {
        v28 = (*v20 + 12 * v26);
        if (v25 == -1 || v28[2] == v25)
        {
          v30 = *(v28 + 2);
          v31 = *(*(v8 + 144) + 8 * *v28 + 32);
          v32 = *(v31 + 48);
          v33 = (v32 + 32);
          v34 = *(v32 + 16) + 1;
          while (--v34)
          {
            v35 = v33 + 5;
            v36 = *v33;
            v33 += 5;
            if (v36 == &type metadata for TextureLoadPolicy)
            {
              if (*(&(*(v35 - 2))->Kind + 4 * v30 + *(v31 + 128) + 1) == 1 && *(v31 + 232) <= v30 && *(v31 + 240) > v30)
              {
                v46 = v8;
                v47 = v21;
                v45 = *(v8 + v21);
                v38 = *v45;
                v39 = *(v31 + 344);

                os_unfair_lock_lock(v39);
                v48 = v38;
                ecs_stack_allocator_push_snapshot(*(v38 + 32));
                v40 = *(*(v31 + 40) + 16);
                v41 = *(v40 + 128);
                if (!*(v41 + 16) || (v42 = sub_1AF0D3F10(&type metadata for TextureLoadRequestGPU), (v43 & 1) == 0) || *(*(v40 + 24) + 16 * *(*(v41 + 56) + 8 * v42) + 32) != &type metadata for TextureLoadRequestGPU)
                {
                  v22 = *(v48 + 32);

                  v23 = ecs_stack_allocator_allocate(v22, 8, 8);
                  *v23 = v30;
                  sub_1AF648EC4(&type metadata for TextureLoadRequestGPU, &off_1F2544788, v23, 1, 1, *v45);
                }

                ecs_stack_allocator_pop_snapshot(*(v48 + 32));
                os_unfair_lock_unlock(*(v31 + 344));

                v8 = v46;
                v21 = v47;
              }

              break;
            }
          }
        }
      }

      ++v19;
    }

    while (v19 != v18);
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1AF3D3038@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (**(result + 8) == _TtC3VFX22RenderGraphTextureNode)
  {

    v3 = 1;
    v4 = sub_1AF9A178C(1, 0);
    v6 = v5;

    if (v6)
    {
      v7 = 0xFFFFFFFFLL;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1AF65A128(v7);
    if (result)
    {

      v8 = sub_1AF9A178C(1, 0);
      v10 = v9;

      v3 = 0;
      v11 = 0xFFFFFFFFLL;
      if ((v10 & 1) == 0)
      {
        v11 = v8;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
    v3 = 1;
  }

  *a2 = v11;
  *(a2 + 8) = v3;
  return result;
}

void sub_1AF3D3154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v14 = a5;
  swift_unknownObjectRetain();
  v15 = a7;
  sub_1AF3D3224(a1, a2, a3, a4, v14, a6, v15);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

void sub_1AF3D3224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v36 = a1;
  sub_1AF0D4E74();
  v35 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v34 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1AFDFC298();
  MEMORY[0x1EEE9AC00](v33, v16);
  v32[7] = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RGGraphTranslator();
  inited = swift_initStackObject();
  v19 = MEMORY[0x1E69E7CC0];
  v20 = MEMORY[0x1E69E7CC8];
  *(inited + 104) = MEMORY[0x1E69E7CD0];
  *(inited + 112) = v19;
  *(inited + 120) = v20;
  *(inited + 128) = v19;
  *(inited + 136) = v19;
  *(inited + 16) = a3;
  *(inited + 24) = a4;
  swift_unknownObjectUnownedInit();
  *(inited + 40) = a6;
  *(inited + 72) = v36;
  *(inited + 80) = a2;
  v40 = sub_1AF439D90(v19);
  v38[2] = 0x1000000000000000;
  v38[3] = &v40;
  v37[2] = sub_1AF439E84;
  v37[3] = v38;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v39[0] = sub_1AF42B0F4(v19);
  v39[1] = v21;
  sub_1AF412D4C(sub_1AF439EA4, v37, 1, 0x1000000000000000uLL, 0, v19, v39);

  v22 = sub_1AF3D9B48(v40);

  *(inited + 96) = v22;
  v23 = sub_1AF12DDCC(a5);
  v27 = sub_1AF130C80(a5, v24, v25, v26);
  v28 = sub_1AF1CF878(v23);

  v29 = *&v28[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];

  swift_unknownObjectRelease();
  *(inited + 48) = v29;
  *(inited + 56) = v27;
  *(inited + 64) = 4;
  *(inited + 88) = (sub_1AF12EE78(a5) >> 8) & 1;
  sub_1AF3D2090();

  sub_1AF3C4160(v30, &qword_1ED72F7F0);

  v31 = sub_1AFDFD3F8();

  [a7 addObjectsFromArray_];
  swift_setDeallocating();
  sub_1AF3D2AF0();
  swift_deallocClassInstance();
}

uint64_t sub_1AF3D37F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a1;
  v50 = a2;
  sub_1AF449890(0, &qword_1ED726B50, MEMORY[0x1E69E6D30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v48 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v41 - v9;
  v11 = sub_1AFDFE488();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v47 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v45 = &v41 - v18;
  v19 = *(a3 + 86);
  v54 = *(a3 + 87);
  v55 = v19;
  *(a3 + 86) = 0;
  v53 = thread_serialization_context;
  v20 = thread_serialization_context(v17);
  v21 = *v20;
  v51 = a3;
  v52 = v21;
  *v20 = a3;
  v46 = type metadata accessor for SerializationContext();
  swift_allocObject();
  LOBYTE(v56) = 1;
  v22 = sub_1AF69D428(0, 0, 1, 0x100000000);
  *(v22 + 80) = 16843008;
  if (qword_1ED727D50 != -1)
  {
    swift_once();
  }

  v23 = qword_1ED73B620;
  v44 = type metadata accessor for BinaryDecoder();
  v24 = swift_allocObject();

  *(v24 + 48) = sub_1AF43A744(MEMORY[0x1E69E7CC0]);
  *(v24 + 16) = v23;
  *(v24 + 24) = 0;
  *(v24 + 32) = sub_1AF69B6E0;
  *(v24 + 40) = 0;
  v43 = "count buffer bytesPerIndex ";
  sub_1AFDFE478();
  v42 = *(v12 + 48);
  v42(v10, 1, v11);
  v25 = *(v12 + 32);
  v26 = v45;
  v25(v45, v10, v11);
  v27 = v46;
  v57 = v46;
  v56 = v22;

  sub_1AF8247D4(&v56, v26);
  v59 = v44;
  v60 = &off_1F2533B98;

  v58[0] = v24;
  v28 = v48;
  sub_1AFDFE478();
  v42(v28, 1, v11);
  v29 = v47;
  v25(v47, v28, v11);
  v57 = v27;
  v30 = v51;
  v56 = v51;
  v31 = v59;
  v32 = v60;
  sub_1AF448018(v58, v59);
  v33 = v32[1];

  v33(v29, &v56, v31, v32);
  (*(v12 + 8))(v29, v11);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v56);
  v34 = v59;
  v35 = v60;
  sub_1AF441150(v58, v59);
  v36 = v35[3];
  v37 = sub_1AF4480BC();
  v36(&v61, &type metadata for AuthoringGraphCoder, v49, v50, &type metadata for AuthoringGraphCoder, v37, v34, v35);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v58);
  v38 = (v53)(&thread_serialization_context);
  *v38 = v52;
  v39 = v55;
  *(v30 + 87) = v54;
  *(v30 + 86) = v39;
  return v61;
}

uint64_t sub_1AF3D3DC4(uint64_t a1, uint64_t a2)
{
  sub_1AF449890(0, &qword_1ED726B50, MEMORY[0x1E69E6D30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v23[-v6];
  v8 = sub_1AFDFE488();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = a1;
  v24 = *(a2 + 86);
  v13 = *(a2 + 87);
  *(a2 + 86) = 0;
  sub_1AF69493C(2u, 0, 1, v26);
  sub_1AFDFE478();
  (*(v9 + 48))(v7, 1, v8);
  (*(v9 + 32))(v12, v7, v8);
  v25[3] = type metadata accessor for SerializationContext();
  v25[0] = a2;
  v14 = v27;
  v15 = v28;
  sub_1AF448018(v26, v27);
  v16 = *(v15 + 8);

  v16(v12, v25, v14, v15);
  (*(v9 + 8))(v12, v8);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v25);
  v17 = v27;
  v18 = v28;
  sub_1AF441150(v26, v27);
  v19 = *(v18 + 24);
  v20 = sub_1AF448068();
  v21 = v19(&v29, &type metadata for AuthoringGraphCoder, v20, v17, v18);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v26);
  *(a2 + 87) = v13;
  *(a2 + 86) = v24;
  return v21;
}

id sub_1AF3D4120(void *a1, uint64_t a2)
{
  v3 = a1;
  swift_unknownObjectRetain();
  v4 = sub_1AFDFC1B8();
  v6 = v5;

  v7 = sub_1AF3D37F8(v4, v6, a2);
  swift_unknownObjectRelease();
  sub_1AF439ED8(v4, v6);

  return v7;
}

id sub_1AF3D41AC(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v4 = sub_1AF3D3DC4(a1, a2);
  v6 = v5;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v7 = sub_1AFDFC1A8();
  sub_1AF439ED8(v4, v6);

  return v7;
}

id sub_1AF3D4238()
{
  swift_unknownObjectRetain();
  sub_1AF3D429C();
  swift_unknownObjectRelease();
  v0 = sub_1AFDFD3F8();

  return v0;
}

char *sub_1AF3D429C()
{
  type metadata accessor for Graph();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    v0 = MEMORY[0x1E69E7CC0];
    v1 = sub_1AF3FBEE4(sub_1AF3D4444, 0, 0, 0x1000000000000000uLL, 0, MEMORY[0x1E69E7CC0]);
    v3 = sub_1AF429C28(v1, v2, sub_1AF42AFCC);

    v4 = 0;
    v5 = *(v3 + 2) + 1;
LABEL_3:
    v6 = &v3[v4 + 2] + 1;
    while (v5 != ++v4)
    {
      v7 = v6 + 2;
      v8 = *v6;
      v6 += 2;
      if (v8)
      {
        v9 = *(v7 - 3);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v0 = sub_1AF420554(0, *(v0 + 2) + 1, 1, v0);
        }

        v11 = *(v0 + 2);
        v10 = *(v0 + 3);
        if (v11 >= v10 >> 1)
        {
          v0 = sub_1AF420554(v10 > 1, v11 + 1, 1, v0);
        }

        *(v0 + 2) = v11 + 1;
        v12 = &v0[16 * v11];
        *(v12 + 4) = v9;
        *(v12 + 5) = v8;
        goto LABEL_3;
      }
    }
  }

  else
  {
    v0 = MEMORY[0x1E69E7CC0];
  }

  swift_unknownObjectRelease();
  return v0;
}

unint64_t sub_1AF3D4444@<X0>(unint64_t result@<X0>, unint64_t *a2@<X8>)
{
  v3 = **(result + 8);
  if (v3 == _TtC3VFX11PresentNode)
  {
    result = sub_1AF9A2EE0();
    *a2 = result;
    a2[1] = v4;
  }

  else if (v3 == _TtC3VFX18PublishTextureNode)
  {

    sub_1AF9A178C(1, 0);
    if (v5)
    {

      v6 = 0;
      v7 = 0;
    }

    else
    {
      v6 = sub_1AF9A9F5C();
      v7 = v8;
    }

    *a2 = v6;
    a2[1] = v7;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

uint64_t sub_1AF3D4518()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t sub_1AF3D45C4()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF3D472C()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF3D486C()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF3D49A4()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF3D4ADC()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF3D4C3C()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF3D4DA8()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF3D4F08()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF3D506C()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF3D51B4()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF3D5324()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF3D547C()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3D5584()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3D5690()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3D57B8()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3D58E8()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3D5A0C()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3D5B34()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3D5C54()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3D5D88()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3D5EA4()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3D5FF8()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3D60F0()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3D623C()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3D6378()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3D64F0()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3D664C()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3D6748()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3D6874()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3D69E0()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3D6B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = v4;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v23 = MEMORY[0x1E69E7CC0];
  sub_1AFC05D04(0, v6, 0);
  v7 = v23;
  v10 = (a1 + 40);
  while (1)
  {
    v11 = *v10;

    v13 = a4(v12, v11, a2, a3);
    if (v5)
    {
      break;
    }

    v15 = v13;
    v16 = v14;
    v5 = 0;

    v18 = *(v23 + 16);
    v17 = *(v23 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_1AFC05D04(v17 > 1, v18 + 1, 1);
    }

    v10 += 2;
    *(v23 + 16) = v18 + 1;
    v19 = v23 + 16 * v18;
    *(v19 + 32) = v15;
    *(v19 + 40) = v16;
    if (!--v6)
    {
      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AF3D6C48(uint64_t a1, uint64_t *a2)
{
  v26 = a2;
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v34 = MEMORY[0x1E69E7CC0];
    sub_1AFC05D98(0, v2, 0);
    v3 = v34;
    v5 = (a1 + 32);
    v27 = &v33 + 1;
    do
    {
      v6 = *v5;
      v31 = *v5;
      if (v31)
      {
        v7 = *(v31 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw);
        if (*v7 == _TtC3VFX16_PlaceholderNode)
        {
          v8 = *(v7 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode + 24);
          v9 = *(v7 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode + 32);
          v28 = v7 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode;
          v10 = sub_1AF441150((v7 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode), v8);
          v30 = &v25;
          v11 = *(v8 - 8);
          v12 = MEMORY[0x1EEE9AC00](v10, v10);
          v14 = &v25 - v13;
          (*(v11 + 16))(&v25 - v13, v12);
          v29 = *(v9 + 24);
          swift_retain_n();

          v15 = v29(v8, v9);
          (*(v11 + 8))(v14, v8);
          v16 = *v26;
          if (*(*v26 + 16) && (v17 = sub_1AF0D3F10(v15), (v18 & 1) != 0))
          {
            v19 = *(*(v16 + 56) + 8 * v17);

            v32[0] = v19;
            sub_1AF44479C(0);
          }

          else
          {

            sub_1AF441194(v28, v32);

            sub_1AF4498F4(0, &qword_1EB638380);
          }

          type metadata accessor for AuthoringNode();
          swift_dynamicCast();
          *(&v33 + 1) = *(&v31 + 1);
        }

        else
        {
          v33 = v6;
          swift_retain_n();
        }
      }

      else
      {
        *&v33 = 0;
        *v27 = *(&v6 + 1);
      }

      v20 = v33;

      v34 = v3;
      v22 = *(v3 + 16);
      v21 = *(v3 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1AFC05D98(v21 > 1, v22 + 1, 1);
        v3 = v34;
      }

      *(v3 + 16) = v22 + 1;
      v23 = v3 + 16 * v22;
      *(v23 + 32) = v20;
      *(v23 + 40) = *(&v31 + 1);
      ++v5;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_1AF3D6FA0(uint64_t a1, uint64_t *a2)
{
  v26 = a2;
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v34 = MEMORY[0x1E69E7CC0];
    sub_1AFC05D98(0, v2, 0);
    v3 = v34;
    v5 = (a1 + 32);
    v27 = &v33 + 1;
    do
    {
      v6 = *v5;
      v31 = *v5;
      if (v31)
      {
        v7 = *(v31 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw);
        if (*v7 == _TtC3VFX16_PlaceholderNode)
        {
          v8 = *(v7 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode + 24);
          v9 = *(v7 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode + 32);
          v28 = v7 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode;
          v10 = sub_1AF441150((v7 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode), v8);
          v30 = &v25;
          v11 = *(v8 - 8);
          v12 = MEMORY[0x1EEE9AC00](v10, v10);
          v14 = &v25 - v13;
          (*(v11 + 16))(&v25 - v13, v12);
          v29 = *(v9 + 24);

          v15 = v29(v8, v9);
          (*(v11 + 8))(v14, v8);
          v16 = *v26;
          if (*(*v26 + 16) && (v17 = sub_1AF0D3F10(v15), (v18 & 1) != 0))
          {
            v19 = *(*(v16 + 56) + 8 * v17);

            v32[0] = v19;
            type metadata accessor for AuthoringNode();
          }

          else
          {
            sub_1AF441194(v28, v32);

            sub_1AF4498F4(0, &qword_1EB638380);
            type metadata accessor for AuthoringNode();
          }

          swift_dynamicCast();
          *(&v33 + 1) = *(&v31 + 1);
        }

        else
        {
          v33 = v6;
          swift_retain_n();
        }
      }

      else
      {
        *&v33 = 0;
        *v27 = *(&v6 + 1);
      }

      v20 = v33;

      v34 = v3;
      v22 = *(v3 + 16);
      v21 = *(v3 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1AFC05D98(v21 > 1, v22 + 1, 1);
        v3 = v34;
      }

      *(v3 + 16) = v22 + 1;
      v23 = v3 + 16 * v22;
      *(v23 + 32) = v20;
      *(v23 + 40) = *(&v31 + 1);
      ++v5;
      --v2;
    }

    while (v2);
  }

  return v3;
}

unint64_t sub_1AF3D72E8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1AFC05E7C(0, v2, 0);
    v5 = v20;
    v6 = (a1 + 40);
    while (1)
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v9 = *a2;
      if (*(*a2 + 16))
      {
        v10 = sub_1AF0D3F10(*(v6 - 1));
        if ((v11 & 1) != 0 && (*(*(v9 + 56) + v10) & 1) == 0)
        {
          break;
        }
      }

      type metadata accessor for _PlaceholderNode(0);
      v12 = swift_allocObject();
      v19[3] = type metadata accessor for Node();
      v19[4] = &off_1EE8015B0;
      v19[0] = v7;
      sub_1AF441194(v19, v12 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode);
      v12[3] = 0;
      v12[4] = 0;
      v13 = v3;
      v12[2] = v3;
      swift_retain_n();
      sub_1AFDFC308();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v19);

      v20 = v5;
      v15 = *(v5 + 16);
      v14 = *(v5 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1AFC05E7C(v14 > 1, v15 + 1, 1);
        v5 = v20;
      }

      v6 += 2;
      *(v5 + 16) = v15 + 1;
      v16 = v5 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v8;
      --v2;
      v3 = v13;
      if (!v2)
      {
        return v5;
      }
    }

    result = sub_1AF0D3F10(v7);
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1AF3D7490(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v28 = MEMORY[0x1E69E7CC0];
    sub_1AFC05E7C(0, v3, 0);
    v4 = v28;
    v7 = (a1 + 40);
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      v10 = *a2;
      if (*(*a2 + 16) && (v11 = sub_1AF0D3F10(*(v7 - 1)), (v12 & 1) != 0) && (*(*(v10 + 56) + v11) & 1) == 0)
      {
        v17 = *a3;
        v18 = xmmword_1AFE21110;
        if (*(*a3 + 16))
        {
          v19 = sub_1AF0D3F10(v9);
          v18 = xmmword_1AFE21110;
          if (v20)
          {
            v22 = *(*(v17 + 56) + 16 * v19);

            v18 = v22;
          }
        }

        v25 = v18;
        sub_1AF449B08(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        type metadata accessor for Node();

        swift_dynamicCast();
        v13 = v24;
      }

      else
      {
        type metadata accessor for _PlaceholderNode(0);
        v13 = swift_allocObject();
        v26 = type metadata accessor for Node();
        v27 = &off_1EE8015B0;
        *&v25 = v9;
        sub_1AF441194(&v25, v13 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode);
        v13[4] = 0;
        v13[2] = MEMORY[0x1E69E7CC0];
        v13[3] = 0;
        swift_retain_n();
        sub_1AFDFC308();
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v25);
      }

      v28 = v4;
      v15 = *(v4 + 16);
      v14 = *(v4 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1AFC05E7C(v14 > 1, v15 + 1, 1);
        v4 = v28;
      }

      v7 += 2;
      *(v4 + 16) = v15 + 1;
      v16 = v4 + 16 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v8;
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t sub_1AF3D76CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1AFC05E7C(0, v3, 0);
    v4 = v23;
    v7 = (a1 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = *a2;
      if (*(*a2 + 16) && (v11 = sub_1AF0D3F10(*(v7 - 1)), (v12 & 1) != 0) && (*(*(v10 + 56) + v11) & 1) == 0)
      {
        v17 = *a3;
        if (*(*a3 + 16) && (v18 = sub_1AF0D3F10(v8), (v19 & 1) != 0))
        {
          v13 = *(*(v17 + 56) + 8 * v18);
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        type metadata accessor for _PlaceholderNode(0);
        v13 = swift_allocObject();
        v22[3] = type metadata accessor for Node();
        v22[4] = &off_1EE8015B0;
        v22[0] = v8;
        sub_1AF441194(v22, v13 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode);
        v13[4] = 0;
        v13[2] = MEMORY[0x1E69E7CC0];
        v13[3] = 0;
        swift_retain_n();
        sub_1AFDFC308();
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v22);
      }

      v23 = v4;
      v15 = *(v4 + 16);
      v14 = *(v4 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1AFC05E7C(v14 > 1, v15 + 1, 1);
        v4 = v23;
      }

      v7 += 2;
      *(v4 + 16) = v15 + 1;
      v16 = v4 + 16 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v9;
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t sub_1AF3D7890(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_1AFC05E7C(0, v3, 0);
    v4 = v25;
    v7 = (a1 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = *a2;
      if (*(*a2 + 16) && (v11 = sub_1AF0D3F10(*(v7 - 1)), (v12 & 1) != 0) && (*(*(v10 + 56) + v11) & 1) == 0)
      {
        v17 = *a3;
        v18 = *(*a3 + 16);
        if (v18)
        {
          v19 = sub_1AF0D3F10(v8);
          if (v20)
          {
            v18 = *(*(v17 + 56) + 8 * v19);
          }

          else
          {
            v18 = 0;
          }
        }

        v24[0] = v18;
        type metadata accessor for Node();

        swift_dynamicCast();
        v13 = v23;
      }

      else
      {
        type metadata accessor for _PlaceholderNode(0);
        v13 = swift_allocObject();
        v24[3] = type metadata accessor for Node();
        v24[4] = &off_1EE8015B0;
        v24[0] = v8;
        sub_1AF441194(v24, v13 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode);
        v13[4] = 0;
        v13[2] = MEMORY[0x1E69E7CC0];
        v13[3] = 0;
        swift_retain_n();
        sub_1AFDFC308();
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v24);
      }

      v25 = v4;
      v15 = *(v4 + 16);
      v14 = *(v4 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1AFC05E7C(v14 > 1, v15 + 1, 1);
        v4 = v25;
      }

      v7 += 2;
      *(v4 + 16) = v15 + 1;
      v16 = v4 + 16 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v9;
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t sub_1AF3D7A84(uint64_t a1, uint64_t *a2)
{
  v28 = a2;
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v35 = MEMORY[0x1E69E7CC0];
    sub_1AFC05E2C(0, v2, 0);
    v3 = v35;
    v5 = (a1 + 32);
    v29 = &v34 + 1;
    do
    {
      v6 = *v5;
      v32 = *v5;
      if (v32)
      {
        if (*v32 == _TtC3VFX16_PlaceholderNode)
        {
          v7 = *(v32 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode + 24);
          v8 = *(v32 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode + 32);
          v30 = v32 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode;
          v9 = sub_1AF441150((v32 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode), v7);
          v31 = &v27;
          v10 = *(v7 - 8);
          v11 = MEMORY[0x1EEE9AC00](v9, v9);
          v13 = &v27 - v12;
          (*(v10 + 16))(&v27 - v12, v11);
          v14 = *(v8 + 24);
          swift_retain_n();
          v15 = v14(v7, v8);
          (*(v10 + 8))(v13, v7);
          v16 = *v28;
          if (*(*v28 + 16) && (v17 = sub_1AF0D3F10(v15), (v18 & 1) != 0))
          {
            v19 = (*(v16 + 56) + 16 * v17);
            v20 = *v19;
            v21 = v19[1];

            v33[0] = v20;
            v33[1] = v21;
            sub_1AF449B08(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          }

          else
          {
            sub_1AF441194(v30, v33);

            sub_1AF4498F4(0, &qword_1EB638380);
          }

          type metadata accessor for Node();
          swift_dynamicCast();
          *(&v34 + 1) = *(&v32 + 1);
        }

        else
        {
          v34 = v6;
          swift_retain_n();
        }
      }

      else
      {
        *&v34 = 0;
        *v29 = *(&v6 + 1);
      }

      v22 = v34;

      v35 = v3;
      v24 = *(v3 + 16);
      v23 = *(v3 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1AFC05E2C(v23 > 1, v24 + 1, 1);
        v3 = v35;
      }

      *(v3 + 16) = v24 + 1;
      v25 = v3 + 16 * v24;
      *(v25 + 32) = v22;
      *(v25 + 40) = *(&v32 + 1);
      ++v5;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_1AF3D7DC0(uint64_t a1, uint64_t *a2)
{
  v26 = a2;
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v33 = MEMORY[0x1E69E7CC0];
    sub_1AFC05E2C(0, v2, 0);
    v3 = v33;
    v5 = (a1 + 32);
    v27 = &v32 + 1;
    do
    {
      v6 = *v5;
      v30 = *v5;
      v7 = v30;
      if (v30)
      {
        if (*v30 == _TtC3VFX16_PlaceholderNode)
        {
          v8 = *(v30 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode + 24);
          v9 = *(v30 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode + 32);
          v28 = v30 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode;
          v10 = sub_1AF441150((v30 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode), v8);
          v29 = &v25;
          v11 = *(v8 - 8);
          v12 = MEMORY[0x1EEE9AC00](v10, v10);
          v14 = &v25 - v13;
          (*(v11 + 16))(&v25 - v13, v12);
          v15 = *(v9 + 24);
          swift_retain_n();
          v16 = v15(v8, v9);
          (*(v11 + 8))(v14, v8);
          v17 = *v26;
          if (*(*v26 + 16) && (v18 = sub_1AF0D3F10(v16), (v19 & 1) != 0))
          {
            v20 = *(*(v17 + 56) + 8 * v18);

            *&v32 = v20;
            *(&v32 + 1) = *(&v30 + 1);
            v7 = v20;
          }

          else
          {
            sub_1AF441194(v28, v31);

            sub_1AF4498F4(0, &qword_1EB638380);
            type metadata accessor for Node();
            swift_dynamicCast();
            *(&v32 + 1) = *(&v30 + 1);
            v7 = v32;
          }
        }

        else
        {
          v32 = v6;
          swift_retain_n();
        }
      }

      else
      {
        *&v32 = 0;
        *v27 = *(&v6 + 1);
      }

      v33 = v3;
      v22 = *(v3 + 16);
      v21 = *(v3 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1AFC05E2C(v21 > 1, v22 + 1, 1);
        v3 = v33;
      }

      *(v3 + 16) = v22 + 1;
      v23 = v3 + 16 * v22;
      *(v23 + 32) = v7;
      *(v23 + 40) = *(&v30 + 1);
      ++v5;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_1AF3D80E8(uint64_t a1, uint64_t *a2)
{
  v25 = a2;
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v32 = MEMORY[0x1E69E7CC0];
    sub_1AFC05E2C(0, v2, 0);
    v3 = v32;
    v5 = (a1 + 32);
    v26 = &v31 + 1;
    do
    {
      v6 = *v5;
      v29 = *v5;
      if (v29)
      {
        if (*v29 == _TtC3VFX16_PlaceholderNode)
        {
          v7 = *(v29 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode + 24);
          v8 = *(v29 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode + 32);
          v27 = v29 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode;
          v9 = sub_1AF441150((v29 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode), v7);
          v28 = &v24;
          v10 = *(v7 - 8);
          v11 = MEMORY[0x1EEE9AC00](v9, v9);
          v13 = &v24 - v12;
          (*(v10 + 16))(&v24 - v12, v11);
          v14 = *(v8 + 24);

          v15 = v14(v7, v8);
          (*(v10 + 8))(v13, v7);
          v16 = *v25;
          if (*(*v25 + 16) && (v17 = sub_1AF0D3F10(v15), (v18 & 1) != 0))
          {
            v30[0] = *(*(v16 + 56) + 8 * v17);
            type metadata accessor for Node();
          }

          else
          {
            sub_1AF441194(v27, v30);
            sub_1AF4498F4(0, &qword_1EB638380);
            type metadata accessor for Node();
          }

          swift_dynamicCast();
          *(&v31 + 1) = *(&v29 + 1);
        }

        else
        {
          v31 = v6;
          swift_retain_n();
        }
      }

      else
      {
        *&v31 = 0;
        *v26 = *(&v6 + 1);
      }

      v19 = v31;

      v32 = v3;
      v21 = *(v3 + 16);
      v20 = *(v3 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1AFC05E2C(v20 > 1, v21 + 1, 1);
        v3 = v32;
      }

      *(v3 + 16) = v21 + 1;
      v22 = v3 + 16 * v21;
      *(v22 + 32) = v19;
      *(v22 + 40) = *(&v29 + 1);
      ++v5;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_1AF3D83F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1AFDFE368();
    v6 = (a2 + 32);
    v7 = MEMORY[0x1E69E6158];
    do
    {
      if (*(a1 + 16) && (v10 = sub_1AF0D3F10(*v6), (v11 & 1) != 0))
      {
        v12 = (*(a1 + 56) + 16 * v10);
        v8 = *v12;
        v9 = v12[1];
      }

      else
      {
        v8 = 0;
        v9 = 1;
      }

      sub_1AF449B08(0, &qword_1ED726CC0, v7, MEMORY[0x1E69E6720]);
      type metadata accessor for Node();

      swift_dynamicCast();
      sub_1AF447EB0(v8, v9);
      sub_1AFDFE328();
      sub_1AFDFE398();
      sub_1AFDFE3A8();
      sub_1AFDFE348();
      ++v6;
      --v3;
    }

    while (v3);
    return v13;
  }

  return result;
}

uint64_t sub_1AF3D8564(void *key)
{
  if (objc_getAssociatedObject(v1, key))
  {
    sub_1AFDFDFB8();
    swift_unknownObjectRelease();
    sub_1AF0DB6BC(&v3, v4);
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  sub_1AF449B08(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  _s13WeakReferenceCMa();
  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1AF3D862C@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1AF0D3F10(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    *&v14[0] = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1AF845B40();
      v9 = *&v14[0];
    }

    memmove(a2, (*(v9 + 56) + 144 * v7), 0x89uLL);
    sub_1AF6B24F4(v7, v9);
    *v3 = v9;
    result.n128_f64[0] = nullsub_106();
  }

  else
  {
    sub_1AF4481DC(v14);
    v11 = v15[0];
    a2[6] = v14[6];
    a2[7] = v11;
    *(a2 + 121) = *(v15 + 9);
    v12 = v14[3];
    a2[2] = v14[2];
    a2[3] = v12;
    v13 = v14[5];
    a2[4] = v14[4];
    a2[5] = v13;
    result = v14[1];
    *a2 = v14[0];
    a2[1] = result;
  }

  return result;
}

uint64_t sub_1AF3D86F8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1AF419940(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1AF847128();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = sub_1AFDFC318();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 16 * v5);
  sub_1AF6B31F0(v5, v7);
  *v2 = v7;
  return v10;
}

double sub_1AF3D87D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1AF0D3F10(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1AF84CF84();
      v9 = v15;
    }

    v10 = *(v9 + 56) + 120 * v7;
    v11 = *(v10 + 80);
    *(a2 + 64) = *(v10 + 64);
    *(a2 + 80) = v11;
    *(a2 + 96) = *(v10 + 96);
    *(a2 + 112) = *(v10 + 112);
    v12 = *(v10 + 16);
    *a2 = *v10;
    *(a2 + 16) = v12;
    v13 = *(v10 + 48);
    *(a2 + 32) = *(v10 + 32);
    *(a2 + 48) = v13;
    sub_1AF6B4E24(v7, v9);
    *v3 = v9;
  }

  else
  {
    *a2 = 1;
    result = 0.0;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 104) = 0u;
  }

  return result;
}

void *sub_1AF3D88AC(uint64_t a1, void *a2)
{
  v4 = sub_1AFDFC318();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a2 = sub_1AF4276E0(0, a2[2] + 1, 1, a2, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
  }

  v11 = a2[2];
  v10 = a2[3];
  if (v11 >= v10 >> 1)
  {
    a2 = sub_1AF4276E0(v10 > 1, v11 + 1, 1, a2, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
  }

  a2[2] = v11 + 1;
  (*(v5 + 32))(a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v9, v4);
  return a2;
}

uint64_t sub_1AF3D8A74(__int128 *a1, uint64_t a2)
{
  v5 = a1[5];
  v6 = a1[7];
  v55 = a1[6];
  v56[0] = v6;
  *(v56 + 9) = *(a1 + 121);
  v7 = a1[1];
  v8 = a1[3];
  v51 = a1[2];
  v52 = v8;
  v9 = a1[3];
  v10 = a1[5];
  v53 = a1[4];
  v54 = v10;
  v11 = a1[1];
  v49 = *a1;
  v50 = v11;
  v12 = a1[7];
  v47[6] = v55;
  v48[0] = v12;
  *(v48 + 9) = *(a1 + 121);
  v47[2] = v51;
  v47[3] = v9;
  v47[4] = v53;
  v47[5] = v5;
  v47[0] = v49;
  v47[1] = v7;
  if (sub_1AF448314(v47) == 1)
  {
    sub_1AF3D93EC(a2, v45);
    v13 = v45;
    return sub_1AF44832C(v13, &qword_1EB638CB0, sub_1AF448148);
  }

  *&v44[96] = v55;
  *&v44[112] = v56[0];
  *&v44[121] = *(v56 + 9);
  *&v44[32] = v51;
  *&v44[48] = v52;
  *&v44[64] = v53;
  *&v44[80] = v54;
  *v44 = v49;
  *&v44[16] = v50;
  sub_1AF4495B8(v44, &v28, sub_1AF448148);
  v18 = *v44;
  v19 = *&v44[8];
  v20 = *&v44[24];
  v21 = *&v44[40];
  v22 = *&v44[56];
  v23 = *&v44[72];
  v24 = *&v44[88];
  v25 = *&v44[104];
  v26 = *&v44[120];
  v27 = v44[136];
  sub_1AF633BB4(&v18, a2, &v36);
  v45[6] = v42;
  v46[0] = v43[0];
  *(v46 + 9) = *(v43 + 9);
  v45[2] = v38;
  v45[3] = v39;
  v45[4] = v40;
  v45[5] = v41;
  v45[0] = v36;
  v45[1] = v37;
  if (sub_1AF448314(v45) != 1)
  {
    sub_1AF44832C(a1, &qword_1EB638CB0, sub_1AF448148);
    v34 = v42;
    v35[0] = v43[0];
    *(v35 + 9) = *(v43 + 9);
    v30 = v38;
    v31 = v39;
    v32 = v40;
    v33 = v41;
    v28 = v36;
    v29 = v37;
    v13 = &v28;
    return sub_1AF44832C(v13, &qword_1EB638CB0, sub_1AF448148);
  }

  v34 = v42;
  v35[0] = v43[0];
  *(v35 + 9) = *(v43 + 9);
  v30 = v38;
  v31 = v39;
  v32 = v40;
  v33 = v41;
  v28 = v36;
  v29 = v37;
  sub_1AF44832C(&v28, &qword_1EB638CB0, sub_1AF448148);
  v14 = *(v2 + 8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1AF422330(0, *(v14 + 2) + 1, 1, v14, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
  }

  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1AF422330(v15 > 1, v16 + 1, 1, v14, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
  }

  result = sub_1AF44832C(a1, &qword_1EB638CB0, sub_1AF448148);
  *(v14 + 2) = v16 + 1;
  *&v14[8 * v16 + 32] = a2;
  *(v2 + 8) = v14;
  return result;
}

uint64_t sub_1AF3D8DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v5 = sub_1AF3D9548(a3);
LABEL_10:

    return sub_1AF447EB0(v5, v6);
  }

  v9 = sub_1AF633F0C(a1, a2, a3);
  if (v10 != 1)
  {
    v15 = v9;
    v16 = v10;
    sub_1AF447EB0(a1, a2);
    v5 = v15;
    v6 = v16;
    goto LABEL_10;
  }

  v11 = *(v3 + 8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_1AF422330(0, *(v11 + 2) + 1, 1, v11, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
  }

  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_1AF422330(v12 > 1, v13 + 1, 1, v11, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
  }

  result = sub_1AF447EB0(a1, a2);
  *(v11 + 2) = v13 + 1;
  *&v11[8 * v13 + 32] = a3;
  *(v3 + 8) = v11;
  return result;
}

uint64_t sub_1AF3D8F00(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), void (*a4)(unint64_t, uint64_t), void (*a5)(void))
{
  if (!a1)
  {
    sub_1AF3D9620(a2, a4, a5);
    goto LABEL_5;
  }

  if (a3(v8, a2))
  {

LABEL_5:
  }

  v10 = *(v5 + 8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1AF422330(0, *(v10 + 2) + 1, 1, v10, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1AF422330(v11 > 1, v12 + 1, 1, v10, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
  }

  *(v10 + 2) = v12 + 1;
  *&v10[8 * v12 + 32] = a2;
  *(v5 + 8) = v10;
  return result;
}

uint64_t sub_1AF3D9030(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t), void (*a5)(unint64_t, uint64_t), void (*a6)(void))
{
  if (a1 == 1)
  {
    v8 = sub_1AF3D96FC(a2, a5, a6);
LABEL_10:

    return a4(v8);
  }

  v12 = a3(v11, a2);
  if (v12 != 1)
  {
    v17 = v12;
    a4(a1);
    v8 = v17;
    goto LABEL_10;
  }

  v13 = *(v6 + 8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_1AF422330(0, *(v13 + 2) + 1, 1, v13, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
  }

  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = sub_1AF422330(v14 > 1, v15 + 1, 1, v13, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
  }

  result = a4(a1);
  *(v13 + 2) = v15 + 1;
  *&v13[8 * v15 + 32] = a2;
  *(v6 + 8) = v13;
  return result;
}

uint64_t sub_1AF3D9194(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    sub_1AF3D97D8(a2, v36);
    v4 = v36;
    return sub_1AF44943C(v4, sub_1AF443FDC);
  }

  v5 = *(a1 + 80);
  v32 = *(a1 + 64);
  v33 = v5;
  v34 = *(a1 + 96);
  v35 = *(a1 + 112);
  v6 = *(a1 + 16);
  v29[0] = *a1;
  v29[1] = v6;
  v7 = *(a1 + 48);
  v30 = *(a1 + 32);
  v31 = v7;
  v37 = v35;
  v36[5] = v5;
  v36[6] = v34;
  v36[3] = v7;
  v36[4] = v32;
  v36[1] = v6;
  v36[2] = v30;
  v36[0] = v29[0];
  sub_1AF0D8094(v29, &v13, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);
  sub_1AF634450(v36, a2, &v21);
  if (v21 != 1)
  {
    sub_1AF44943C(a1, sub_1AF443FDC);
    v17 = v25;
    v18 = v26;
    v19 = v27;
    v13 = v21;
    v14 = v22;
    v20 = v28;
    v15 = v23;
    v16 = v24;
    v4 = &v13;
    return sub_1AF44943C(v4, sub_1AF443FDC);
  }

  v17 = v25;
  v18 = v26;
  v19 = v27;
  v13 = v21;
  v14 = v22;
  v20 = v28;
  v15 = v23;
  v16 = v24;
  sub_1AF44943C(&v13, sub_1AF443FDC);
  v9 = *(v2 + 8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1AF422330(0, *(v9 + 2) + 1, 1, v9, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1AF422330(v10 > 1, v11 + 1, 1, v9, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
  }

  result = sub_1AF44943C(a1, sub_1AF443FDC);
  *(v9 + 2) = v11 + 1;
  *&v9[8 * v11 + 32] = a2;
  *(v2 + 8) = v9;
  return result;
}

double sub_1AF3D93EC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AF3D862C(a1, &v20);
  v28[6] = v26;
  v29[0] = v27[0];
  *(v29 + 9) = *(v27 + 9);
  v28[2] = v22;
  v28[3] = v23;
  v28[4] = v24;
  v28[5] = v25;
  v28[0] = v20;
  v28[1] = v21;
  if (sub_1AF448314(v28) == 1)
  {
    v18[6] = v26;
    v19[0] = v27[0];
    *(v19 + 9) = *(v27 + 9);
    v18[2] = v22;
    v18[3] = v23;
    v18[4] = v24;
    v18[5] = v25;
    v18[0] = v20;
    v18[1] = v21;
    sub_1AF44832C(v18, &qword_1EB638CB0, sub_1AF448148);
    v5 = v27[0];
    a2[6] = v26;
    a2[7] = v5;
    *(a2 + 121) = *(v27 + 9);
    v6 = v23;
    a2[2] = v22;
    a2[3] = v6;
    v7 = v25;
    a2[4] = v24;
    a2[5] = v7;
    v8 = v21;
    *a2 = v20;
    a2[1] = v8;
  }

  else
  {
    v9 = v23;
    a2[2] = v22;
    a2[3] = v9;
    *(a2 + 121) = *(v27 + 9);
    v10 = v27[0];
    a2[6] = v26;
    a2[7] = v10;
    v11 = v25;
    a2[4] = v24;
    a2[5] = v11;
    v12 = v21;
    *a2 = v20;
    a2[1] = v12;
    v13 = *(v2 + 8);
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = 0;
      v16 = v13 + 32;
      while (*(v16 + 8 * v15) != a1)
      {
        if (v14 == ++v15)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v15 = 0;
    }

    sub_1AF620D10(v15);
    *&v8 = nullsub_106();
  }

  return *&v8;
}

uint64_t sub_1AF3D9548(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1AF0D3F10(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v1;
  v16 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1AF846294();
    v8 = v16;
  }

  v9 = v6;
  v10 = *(*(v8 + 56) + 16 * v6);
  sub_1AF6B2920(v9, v8);
  *v2 = v8;
  v11 = v2[1];
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = v11 + 32;
    while (*(v14 + 8 * v13) != a1)
    {
      if (v12 == ++v13)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v13 = 0;
  }

  sub_1AF620D10(v13);
  return v10;
}

uint64_t sub_1AF3D9620(uint64_t a1, void (*a2)(unint64_t, uint64_t), void (*a3)(void))
{
  v6 = v3;
  v8 = sub_1AF0D3F10(a1);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v3;
  v19 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v12 = v19;
  }

  v13 = *(*(v12 + 56) + 8 * v10);
  a2(v10, v12);
  *v6 = v12;
  v14 = v6[1];
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = v14 + 32;
    while (*(v17 + 8 * v16) != a1)
    {
      if (v15 == ++v16)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v16 = 0;
  }

  sub_1AF620D10(v16);
  return v13;
}

uint64_t sub_1AF3D96FC(uint64_t a1, void (*a2)(unint64_t, uint64_t), void (*a3)(void))
{
  v6 = v3;
  v8 = sub_1AF0D3F10(a1);
  if ((v9 & 1) == 0)
  {
    return 1;
  }

  v10 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v3;
  v19 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v12 = v19;
  }

  v13 = *(*(v12 + 56) + 8 * v10);
  a2(v10, v12);
  *v6 = v12;
  v14 = v6[1];
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = v14 + 32;
    while (*(v17 + 8 * v16) != a1)
    {
      if (v15 == ++v16)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v16 = 0;
  }

  sub_1AF620D10(v16);
  return v13;
}

uint64_t sub_1AF3D97D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF3D87D4(a1, v17);
  if (*v17 == 1)
  {
    v15[4] = *&v17[64];
    v15[5] = *&v17[80];
    v15[6] = *&v17[96];
    v15[0] = *v17;
    v15[1] = *&v17[16];
    v16 = *&v17[112];
    v15[2] = *&v17[32];
    v15[3] = *&v17[48];
    result = sub_1AF44943C(v15, sub_1AF443FDC);
    *a2 = 1;
    *(a2 + 56) = *&v17[56];
    *(a2 + 72) = *&v17[72];
    *(a2 + 88) = *&v17[88];
    *(a2 + 104) = *&v17[104];
    *(a2 + 8) = *&v17[8];
    *(a2 + 24) = *&v17[24];
    *(a2 + 40) = *&v17[40];
  }

  else
  {
    v6 = *&v17[80];
    v7 = *&v17[96];
    v8 = *&v17[48];
    *(a2 + 64) = *&v17[64];
    *(a2 + 80) = v6;
    *(a2 + 96) = v7;
    v9 = *&v17[16];
    v10 = *&v17[32];
    *a2 = *v17;
    *(a2 + 16) = v9;
    *(a2 + 112) = *&v17[112];
    *(a2 + 32) = v10;
    *(a2 + 48) = v8;
    v11 = *(v2 + 8);
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = 0;
      v14 = v11 + 32;
      while (*(v14 + 8 * v13) != a1)
      {
        if (v12 == ++v13)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = 0;
    }

    return sub_1AF620D10(v13);
  }

  return result;
}

uint64_t sub_1AF3D9910(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1AF449BDC(0, &unk_1EB630BB0, sub_1AF444318);
    v2 = sub_1AFDFE5C8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_14:
    v11 = *(*(a1 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v5)))));
    sub_1AF44438C();
    sub_1AF444318();

    swift_dynamicCast();
    v12 = sub_1AFDFF278();
    v13 = -1 << *(v2 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) != 0)
    {
      v9 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = (63 - v13) >> 6;
      do
      {
        if (v15 + 1 == v16)
        {
          v15 = 0;
        }

        else
        {
          ++v15;
        }

        v17 = *(v7 + 8 * v15);
      }

      while (v17 == -1);
      v9 = __clz(__rbit64(~v17)) + (v15 << 6);
    }

    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    *(*(v2 + 48) + 8 * v9) = v11;
    *(*(v2 + 56) + 8 * v9) = v19;
    ++*(v2 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (v8 + 1 >= v6)
    {
      break;
    }

    v5 = *(a1 + 8 * v8++ + 72);
    if (v5)
    {
      v8 = v10;
      goto LABEL_14;
    }
  }

  return v2;
}

uint64_t sub_1AF3D9B48(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1AF448C14(0, &qword_1EB638D28, &qword_1EB638D30, &unk_1EB638D38, sub_1AF448B40);
    v2 = sub_1AFDFE5C8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_14:
    v11 = *(*(a1 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v5)))));
    v12 = MEMORY[0x1E69E62F8];
    sub_1AF448AC4(0, &unk_1EB638D40, &unk_1EB63F680, sub_1AF448BAC, MEMORY[0x1E69E62F8]);
    sub_1AF448AC4(0, &qword_1EB638D30, &unk_1EB638D38, sub_1AF448B40, v12);

    swift_dynamicCast();
    v13 = sub_1AFDFF278();
    v14 = -1 << *(v2 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v7 + 8 * (v15 >> 6))) != 0)
    {
      v9 = __clz(__rbit64((-1 << v15) & ~*(v7 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = (63 - v14) >> 6;
      do
      {
        if (v16 + 1 == v17)
        {
          v16 = 0;
        }

        else
        {
          ++v16;
        }

        v18 = *(v7 + 8 * v16);
      }

      while (v18 == -1);
      v9 = __clz(__rbit64(~v18)) + (v16 << 6);
    }

    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    *(*(v2 + 48) + 8 * v9) = v11;
    *(*(v2 + 56) + 8 * v9) = v20;
    ++*(v2 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (v8 + 1 >= v6)
    {
      break;
    }

    v5 = *(a1 + 8 * v8++ + 72);
    if (v5)
    {
      v8 = v10;
      goto LABEL_14;
    }
  }

  return v2;
}

uint64_t sub_1AF3D9DE4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1AF43DB74();
    v2 = sub_1AFDFE5C8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_14:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v5)));
    v12 = *(*(a1 + 48) + v11);
    v24 = *(*(a1 + 56) + v11);
    v13 = v24;
    sub_1AF0D4478(0, &qword_1ED721F80);
    v14 = v12;
    v15 = v13;
    swift_dynamicCast();
    sub_1AF0DB6BC((v25 + 8), v23);
    sub_1AF0DB6BC(v23, v25);
    sub_1AFDFCEF8();
    sub_1AFDFF288();
    sub_1AFDFD038();
    v16 = sub_1AFDFF2F8();

    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) != 0)
    {
      v9 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = (63 - v17) >> 6;
      do
      {
        if (v19 + 1 == v20)
        {
          v19 = 0;
        }

        else
        {
          ++v19;
        }

        v21 = *(v7 + 8 * v19);
      }

      while (v21 == -1);
      v9 = __clz(__rbit64(~v21)) + (v19 << 6);
    }

    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v5 &= v5 - 1;
    *(*(v2 + 48) + 8 * v9) = v14;
    sub_1AF0DB6BC(v25, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (v8 + 1 >= v6)
    {
      break;
    }

    v5 = *(a1 + 8 * v8++ + 72);
    if (v5)
    {
      v8 = v10;
      goto LABEL_14;
    }
  }

  return v2;
}

uint64_t sub_1AF3DA05C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1AF4427B0();
    v2 = sub_1AFDFE5C8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_14:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = *(*(a1 + 48) + 8 * v12);
    sub_1AF0D5A54(*(a1 + 56) + 32 * v12, v33 + 8);
    *&v33[0] = v13;
    v31[0] = v33[0];
    v31[1] = v33[1];
    v32 = v34;
    *&v30[0] = v13;
    type metadata accessor for VFXHitTestOption(0);
    v14 = v13;
    swift_dynamicCast();
    sub_1AF0DB6BC((v31 + 8), v25);
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1AF0DB6BC(v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1AF0DB6BC(v29, v30);
    v15 = sub_1AFDFE158();
    v16 = -1 << *(v2 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) != 0)
    {
      v9 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = (63 - v16) >> 6;
      do
      {
        if (v18 + 1 == v19)
        {
          v18 = 0;
        }

        else
        {
          ++v18;
        }

        v20 = *(v7 + 8 * v18);
      }

      while (v20 == -1);
      v9 = __clz(__rbit64(~v20)) + (v18 << 6);
    }

    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v22;
    *(v10 + 16) = v23;
    *(v10 + 32) = v24;
    sub_1AF0DB6BC(v30, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (v8 + 1 >= v6)
    {
      break;
    }

    v5 = *(a1 + 8 * v8++ + 72);
    if (v5)
    {
      v8 = v11;
      goto LABEL_14;
    }
  }

  return v2;
}

void *sub_1AF3DA2E8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1AF449BDC(0, &unk_1EB6385B0, sub_1AF4436C4);
    v2 = sub_1AFDFE5C8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_12;
  }

LABEL_9:
  while (1)
  {
    v11 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      break;
    }

    v5 = *(a1 + 8 * v7++ + 72);
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + 16 * (v12 | (v11 << 6)));
        v15 = *v13;
        v14 = v13[1];
        sub_1AF4436C4();

        swift_dynamicCast();
        sub_1AF0DB6BC(&v20, v22);
        sub_1AF0DB6BC(v22, v23);
        sub_1AF0DB6BC(v23, &v21);
        v16 = sub_1AF41A54C(v15, v14, MEMORY[0x1E69E60C8], sub_1AF41B38C);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v10);
          sub_1AF0DB6BC(&v21, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_9;
          }
        }

        else
        {
          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          sub_1AF0DB6BC(&v21, (v2[7] + 32 * v16));
          ++v2[2];
          v7 = v11;
          if (!v5)
          {
            goto LABEL_9;
          }
        }

LABEL_12:
        v11 = v7;
      }
    }
  }

  return v2;
}

BOOL sub_1AF3DA55C(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 4) == *(a2 + 4) && *(a1 + 6) == *(a2 + 6))
  {
    result = 0;
    if (*(a1 + 8) == *(a2 + 8) && *(a1 + 12) == *(a2 + 12) && *(a1 + 14) == *(a2 + 14))
    {
      result = 0;
      if (*(a1 + 16) == *(a2 + 16) && *(a1 + 20) == *(a2 + 20) && *(a1 + 22) == *(a2 + 22))
      {
        result = 0;
        if (*(a1 + 24) == *(a2 + 24) && *(a1 + 28) == *(a2 + 28) && *(a1 + 30) == *(a2 + 30))
        {
          result = 0;
          if (*(a1 + 32) == *(a2 + 32) && *(a1 + 36) == *(a2 + 36) && *(a1 + 38) == *(a2 + 38))
          {
            result = 0;
            if (*(a1 + 40) == *(a2 + 40) && *(a1 + 44) == *(a2 + 44) && *(a1 + 46) == *(a2 + 46))
            {
              result = 0;
              if (*(a1 + 48) == *(a2 + 48) && *(a1 + 52) == *(a2 + 52) && *(a1 + 54) == *(a2 + 54))
              {
                result = 0;
                if (*(a1 + 56) == *(a2 + 56) && *(a1 + 60) == *(a2 + 60) && *(a1 + 62) == *(a2 + 62))
                {
                  result = 0;
                  if (*(a1 + 64) == *(a2 + 64) && *(a1 + 68) == *(a2 + 68) && *(a1 + 70) == *(a2 + 70))
                  {
                    v4 = *(a1 + 72);
                    v5 = *(a1 + 76);
                    v6 = *(a1 + 78);
                    return v4 == *(a2 + 72) && v5 == *(a2 + 76) && v6 == *(a2 + 78);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_1AF3DA770(char a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AF4410E4(a2, sub_1AF4410A8);
  v10 = sub_1AF3FB9C8(a4, a5, a1 & 1, a2, 1, MEMORY[0x1E69E7CC0]);
  if (v5)
  {
    return sub_1AF4410E4(a2, sub_1AF441114);
  }

  v13 = sub_1AF42A36C(v10, v11, sub_1AF42ADF4);

  v14 = swift_allocObject();
  v14[2] = 0;
  v14[4] = 0;
  v14[5] = 0;
  v14[6] = sub_1AF42B820(MEMORY[0x1E69E7CC0], sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
  sub_1AFDFC308();
  sub_1AF4410E4(a2, sub_1AF441114);
  result = v14;
  v14[3] = v13;
  return result;
}

uint64_t sub_1AF3DA924(uint64_t a1)
{
  v3 = sub_1AFDFC318();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF449890(0, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v33 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v33 - v13;
  v15 = *(v4 + 56);
  v35 = v3;
  v15(&v33 - v13, 1, 1, v3, v12);
  type metadata accessor for AuthoringNode();
  v16 = swift_allocObject();
  *(v16 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v1;
  v17 = *(a1 + 16);
  *(swift_allocObject() + 16) = 0xC0000000000000D0;
  v36 = v1;

  if (v17 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17;
  }

  v38 = MEMORY[0x1E69E7CC0];
  sub_1AFC05D04(0, v18, 0);
  v19 = 0;
  v20 = v38;
  do
  {
    v21 = 0uLL;
    if (v19 < v17)
    {
      v37 = *(a1 + 32 + 16 * v19);

      v21 = v37;
    }

    v38 = v20;
    v23 = *(v20 + 16);
    v22 = *(v20 + 24);
    if (v23 >= v22 >> 1)
    {
      v37 = v21;
      sub_1AFC05D04(v22 > 1, v23 + 1, 1);
      v21 = v37;
      v20 = v38;
    }

    ++v19;
    *(v20 + 16) = v23 + 1;
    *(v20 + 16 * v23 + 32) = v21;
  }

  while (v18 != v19);
  *(v16 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v20;
  v24 = v33;
  sub_1AF449A04(v14, v33, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1AF449890);
  v25 = *(v4 + 48);
  v26 = v35;
  if (v25(v24, 1, v35) == 1)
  {
    v27 = v34;
    sub_1AFDFC308();
    sub_1AF44832C(v14, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    if (v25(v24, 1, v26) != 1)
    {
      sub_1AF44832C(v24, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    }
  }

  else
  {
    sub_1AF44832C(v14, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    v27 = v34;
    (*(v4 + 32))(v34, v24, v26);
  }

  (*(v4 + 32))(v16 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v27, v26);
  (*(v4 + 24))(v36 + OBJC_IVAR____TtC3VFX4Node_authoringID, v16 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v26);
  v28 = v16 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
  *v28 = 0;
  *(v28 + 8) = 0;
  *(v28 + 16) = 1;
  v29 = v16 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
  *v29 = 0;
  *(v29 + 8) = 0;
  *(v29 + 16) = 1;
  v30 = v16 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
  *(v30 + 8) = 1;
  *v30 = 0;
  v31 = (v16 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
  *v31 = 0;
  v31[1] = 0;
  return v16;
}

uint64_t sub_1AF3DADCC()
{
  type metadata accessor for ConstantNode(0);
  v0 = swift_dynamicCastClass();
  if (v0)
  {
    sub_1AF0D5A54(v0 + OBJC_IVAR____TtC3VFX12ConstantNode_holder + 8, v3);
  }

  else
  {
    memset(v3, 0, sizeof(v3));
  }

  sub_1AF449B08(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  if (swift_dynamicCast())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1AF3DAE80(__objc2_class **a1, int a2, unint64_t a3, int a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, unint64_t *a10)
{
  v12 = v11;
  v106 = a6;
  v107 = a7;
  v108 = a4;
  LODWORD(v114) = a2;
  v104 = v10;
  v101 = *v10;
  v17 = sub_1AFDFC318();
  v102 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v99 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v98 = &v92 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v92 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v92 - v29;
  v105 = a9;
  if (!*(*a9 + 16) || (result = sub_1AF0D3F10(a1), (v32 & 1) == 0))
  {
    if (!*(*a8 + 16) || (result = sub_1AF0D3F10(a1), (v33 & 1) == 0))
    {
      v100 = a10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v109 = *a8;
      *a8 = 0x8000000000000000;
      sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
      *a8 = v109;

      if (v114)
      {
        if (*a1 == _TtC3VFX21AuthoringSubGraphNode && (v35 = *(a1 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph), (v36 = swift_dynamicCastClass()) != 0))
        {
          v92 = v36;
          v103 = v11;
          v96 = a3;
          v37 = *(v102 + 16);
          v37(v30, a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v17);
          v37(v26, v30, v17);

          v95 = v35;

          v38 = swift_isUniquelyReferenced_nonNull_native();
          v93 = a5;
          if ((v38 & 1) == 0)
          {
            a5 = sub_1AF4276E0(0, v93[2] + 1, 1, v93, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v40 = a5[2];
          v39 = a5[3];
          if (v40 >= v39 >> 1)
          {
            a5 = sub_1AF4276E0(v39 > 1, v40 + 1, 1, a5, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v41 = v102;
          (*(v102 + 8))(v30, v17);
          a5[2] = v40 + 1;
          (*(v41 + 32))(a5 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v40, v26, v17);
          *&v109 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
          *(&v109 + 1) = v42;
          v43 = v106;
          v44 = v107;
          v45 = v96;
          v46 = v103;
          sub_1AF412AA8(v106, v107, 1, v96, v108 & 1, a5, &v109);
          v12 = v46;
          if (v46)
          {

LABEL_14:
          }

          a5 = v93;
          v61 = v44;
          a3 = v45;
          v60 = v43;
        }

        else
        {

          v60 = v106;
          v61 = v107;
        }

        v48 = v108;
        sub_1AF3E805C(1, a3, v108 & 1, a1, v104, a5, v60, v61, a8, v105, v100);
        if (v12)
        {
        }

        v47 = a5;
        type metadata accessor for Node();
        type metadata accessor for AuthoringNode();
        v62 = swift_dynamicCastMetatype();
        v97 = a8;
        v94 = v17;
        if (v62)
        {
          v63 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

          v65 = sub_1AF3D6B1C(v64, a8, v105, sub_1AF3FCC84);
          v103 = 0;

          *(a1 + v63) = v65;
          v48 = v108;
        }

        else
        {
          v103 = 0;
        }
      }

      else
      {
        v94 = v17;
        v97 = a8;
        v103 = v11;
        v47 = a5;

        v48 = v108;
      }

      v49 = v48 & 1;
      v50 = swift_allocObject();
      v51 = v106;
      v52 = v107;
      *(v50 + 16) = v106;
      *(v50 + 24) = v52;
      v53 = v104;

      sub_1AF4410E4(a3, sub_1AF4410A8);

      v54 = swift_allocObject();
      LODWORD(v95) = v114 & 1;
      *(v54 + 16) = v114 & 1;
      v96 = a3;
      *(v54 + 24) = a3;
      *(v54 + 32) = v49;
      v55 = v105;
      *(v54 + 40) = v105;
      *(v54 + 48) = v53;
      *(v54 + 56) = v47;
      *(v54 + 64) = v51;
      *(v54 + 72) = v52;
      v56 = v97;
      v57 = v100;
      *(v54 + 80) = v97;
      *(v54 + 88) = v57;
      v58 = swift_allocObject();
      *(v58 + 16) = sub_1AF449D4C;
      *(v58 + 24) = v54;
      *&v109 = v53;
      *(&v109 + 1) = a1;
      v110 = v47;
      v111 = sub_1AF449D50;
      v112 = v58;
      v113 = v57;
      swift_bridgeObjectRetain_n();

      v59 = v103;
      sub_1AF449CCC(&v109);
      v103 = v59;
      if (v59)
      {

        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();
      }

      v93 = v47;

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      v66 = sub_1AF633A88(a1);
      v67 = v107;
      v68 = v55;
      v69 = v96;
      v70 = v103;
      v71 = v56;
      if (v66)
      {
        v72 = v68[1];
        v73 = swift_isUniquelyReferenced_nonNull_native();
        v68[1] = v72;
        if ((v73 & 1) == 0)
        {
          v72 = sub_1AF422330(0, *(v72 + 2) + 1, 1, v72, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
          v68[1] = v72;
        }

        v75 = *(v72 + 2);
        v74 = *(v72 + 3);
        if (v75 >= v74 >> 1)
        {
          v72 = sub_1AF422330(v74 > 1, v75 + 1, 1, v72, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
        }

        *(v72 + 2) = v75 + 1;
        *&v72[8 * v75 + 32] = a1;
        v68 = v105;
        v105[1] = v72;
      }

      v76 = swift_isUniquelyReferenced_nonNull_native();
      *&v109 = *v56;
      *v56 = 0x8000000000000000;
      sub_1AF850FDC(0, a1, v76);
      *v56 = v109;

      if ((v114 & 1) == 0)
      {
        sub_1AF3E805C(v95, v69, v108 & 1, a1, v104, v93, v106, v67, v56, v68, v100);
        if (!v70)
        {
          if (*a1 == _TtC3VFX21AuthoringSubGraphNode && a1)
          {
            v77 = *(a1 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph);
            v78 = swift_dynamicCastClass();
            if (v78)
            {
              v104 = v78;
              v79 = *(v102 + 16);
              v114 = v77;
              v80 = v98;
              v81 = v94;
              v79(v98, a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v94);
              v82 = v81;
              v79(v99, v80, v81);
              v83 = v93;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v83 = sub_1AF4276E0(0, v83[2] + 1, 1, v83, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
              }

              v85 = v83[2];
              v84 = v83[3];
              v86 = v83;
              if (v85 >= v84 >> 1)
              {
                v86 = sub_1AF4276E0(v84 > 1, v85 + 1, 1, v83, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
              }

              v87 = v102;
              (*(v102 + 8))(v98, v82);
              v86[2] = v85 + 1;
              (*(v87 + 32))(v86 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v85, v99, v82);
              *&v109 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
              *(&v109 + 1) = v88;
              sub_1AF412AA8(v106, v107, v95, v69, v108 & 1, v86, &v109);
            }

            v68 = v105;
          }

          type metadata accessor for Node();
          type metadata accessor for AuthoringNode();
          if (swift_dynamicCastMetatype())
          {
            v89 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

            v91 = sub_1AF3D6B1C(v90, v71, v68, sub_1AF3FCC84);

            *(a1 + v89) = v91;
            goto LABEL_14;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AF3DBA8C(uint64_t a1, int a2, unint64_t a3, int a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v137 = a3;
  v135 = a5;
  v136 = a6;
  v134 = v10;
  v16 = *v10;
  v17 = sub_1AFDFC318();
  v18 = *(v17 - 8);
  v128 = v17;
  v129 = v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v126 = &v119[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21, v22);
  v125 = &v119[-v23];
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v119[-v26];
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v119[-v30];
  v133 = a9;
  v32 = *a9;
  if (*(*a9 + 16))
  {
    v33 = sub_1AF0D3F10(a1);
    if (v34)
    {
      v27 = *(*(v32 + 56) + 8 * v33);

      return v27;
    }
  }

  if (!*(*a8 + 16) || (sub_1AF0D3F10(a1), (v35 & 1) == 0))
  {
    v132 = a7;
    v124 = v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v139 = *a8;
    *a8 = 0x8000000000000000;
    sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
    *a8 = v139;

    if (a4)
    {
      v37 = (*(*a1 + 296))(1);
    }

    else
    {
    }

    v38 = a10;
    v130 = a2;
    v131 = v37;
    if (a2)
    {
      if (*v37 == _TtC3VFX21AuthoringSubGraphNode)
      {
        v39 = v37;
        v40 = swift_dynamicCastClass();
        v41 = v138;
        if (v40)
        {
          v122 = v40;
          v123 = a1;
          v121 = a8;
          v42 = *(v129 + 16);
          v43 = v39 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
          v44 = v128;
          v42(v31, v43, v128);
          v42(v27, v31, v44);

          v45 = v135;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v45 = sub_1AF4276E0(0, v135[2] + 1, 1, v135, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v47 = v45[2];
          v46 = v45[3];
          v127 = a10;
          if (v47 >= v46 >> 1)
          {
            v45 = sub_1AF4276E0(v46 > 1, v47 + 1, 1, v45, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v48 = v129;
          v49 = v31;
          v50 = v128;
          (*(v129 + 8))(v49, v128);
          v45[2] = v47 + 1;
          (*(v48 + 32))(v45 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v47, v27, v50);
          v51 = v138;
          v52 = sub_1AF3FB9C8(v136, v132, 1, v137, a4 & 1, v45);
          v54 = v51;
          if (v51)
          {

            return v27;
          }

          v59 = v52;
          v60 = v53;

          v61 = *(v60 + 16);
          if (v61)
          {
            v138 = 0;
            *&v139 = MEMORY[0x1E69E7CC0];
            sub_1AFDFE368();
            v62 = 32;
            do
            {
              if (*(v59 + 16))
              {
                sub_1AF0D3F10(*(v60 + v62));
                if (v63)
                {
                }
              }

              sub_1AFDFE328();
              sub_1AFDFE398();
              sub_1AFDFE3A8();
              sub_1AFDFE348();
              v62 += 8;
              --v61;
            }

            while (v61);

            v54 = v138;
            v64 = v139;
          }

          else
          {

            v64 = MEMORY[0x1E69E7CC0];
          }

          v65 = swift_allocObject();
          v66 = MEMORY[0x1E69E7CC0];
          v65->cache = 0;
          v65->vtable = v66;
          v65->info = 0;
          v65[1].isa = 0;
          v67 = v131;

          v65[1].superclass = sub_1AF42B820(v66, sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
          sub_1AFDFC308();

          v65->vtable = v64;

          *(v67 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph) = v65;

          a8 = v121;
          v27 = v133;
          v56 = v134;
          v57 = v135;
          v58 = v136;
          a1 = v123;
          v41 = v54;
          v38 = v127;
        }

        else
        {
          v27 = v133;
          v56 = v134;
          v57 = v135;
          v58 = v136;
        }
      }

      else
      {
        v27 = v133;
        v56 = v134;
        v57 = v135;
        v58 = v136;
        v41 = v138;
      }

      sub_1AF3EABD8(1, v137, a4 & 1, a1, v56, v57, v58, v132, a8, v27, v38);
      if (v41)
      {
LABEL_35:

        return v27;
      }

      v127 = v38;
      v123 = a1;
      v68 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;
      v69 = v131;

      v55 = a8;
      v71 = sub_1AF3D6B1C(v70, a8, v27, sub_1AF3FD1BC);
      v138 = 0;

      *(v69 + v68) = v71;
    }

    else
    {
      v127 = a10;
      v123 = a1;
      v55 = a8;
    }

    v72 = a4 & 1;
    v73 = swift_allocObject();
    LODWORD(v122) = a4;
    v74 = v136;
    v75 = v132;
    *(v73 + 16) = v136;
    *(v73 + 24) = v75;
    v76 = v134;

    v77 = v137;
    sub_1AF4410E4(v137, sub_1AF4410A8);

    v78 = swift_allocObject();
    v79 = v77;
    v80 = v130 & 1;
    *(v78 + 16) = v130 & 1;
    *(v78 + 24) = v79;
    *(v78 + 32) = v72;
    v27 = v133;
    *(v78 + 40) = v133;
    *(v78 + 48) = v76;
    v81 = v75;
    v82 = v135;
    *(v78 + 56) = v135;
    *(v78 + 64) = v74;
    *(v78 + 72) = v81;
    *(v78 + 80) = v55;
    v83 = v127;
    *(v78 + 88) = v127;
    v84 = swift_allocObject();
    *(v84 + 16) = sub_1AF449240;
    *(v84 + 24) = v78;
    *&v139 = v76;
    *(&v139 + 1) = v131;
    v140 = v82;
    v141 = sub_1AF44122C;
    v142 = v84;
    v143 = v83;
    swift_bridgeObjectRetain_n();

    v85 = v138;
    sub_1AF4411F8(&v139, &v144);
    if (v85)
    {

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      return v27;
    }

    v120 = v80;

    v86 = v27;
    v27 = v144;
    v121 = v55;
    swift_isEscapingClosureAtFileLocation();

    v87 = v121;
    swift_isEscapingClosureAtFileLocation();

    v89 = v123;
    sub_1AF3D8F00(v88, v123, sub_1AF633A48, sub_1AF6B761C, sub_1AF843E0C);

    v90 = swift_isUniquelyReferenced_nonNull_native();
    *&v139 = *v87;
    *v87 = 0x8000000000000000;
    sub_1AF850FDC(0, v89, v90);
    *v87 = v139;

    if ((v130 & 1) == 0)
    {
      v91 = v82;
      v92 = v122;
      v93 = v132;
      sub_1AF3EABD8(v120, v137, v122 & 1, v89, v134, v91, v136, v132, v87, v86, v127);
      v95 = *v27;
      v138 = 0;
      if (v95 == _TtC3VFX21AuthoringSubGraphNode)
      {
        v96 = *(v27 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph);
        if (swift_dynamicCastClass())
        {
          v134 = v96;
          v97 = v128;
          v98 = *(v129 + 16);
          v99 = v125;
          v98(v125, v27 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v128);
          v98(v126, v99, v97);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v135 = sub_1AF4276E0(0, v135[2] + 1, 1, v135, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v101 = v135[2];
          v100 = v135[3];
          v102 = v129;
          if (v101 >= v100 >> 1)
          {
            v118 = sub_1AF4276E0(v100 > 1, v101 + 1, 1, v135, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
            v102 = v129;
            v135 = v118;
          }

          (*(v102 + 8))(v125, v97);
          v103 = v135;
          v135[2] = v101 + 1;
          (*(v102 + 32))(v103 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v101, v126, v97);
          v104 = v138;
          v105 = sub_1AF3FB9C8(v136, v93, v120, v137, v92 & 1, v103);
          if (v104)
          {

            return v27;
          }

          v107 = v105;
          v108 = v106;
          v138 = 0;

          v109 = *(v108 + 16);
          v110 = MEMORY[0x1E69E7CC0];
          if (v109)
          {
            *&v139 = MEMORY[0x1E69E7CC0];
            sub_1AFDFE368();
            v111 = 32;
            do
            {
              if (*(v107 + 16))
              {
                sub_1AF0D3F10(*(v108 + v111));
                if (v112)
                {
                }
              }

              sub_1AFDFE328();
              sub_1AFDFE398();
              sub_1AFDFE3A8();
              sub_1AFDFE348();
              v111 += 8;
              --v109;
            }

            while (v109);

            v113 = v139;
          }

          else
          {

            v113 = MEMORY[0x1E69E7CC0];
          }

          v114 = swift_allocObject();
          v114[2] = 0;
          v114[3] = v110;
          v114[4] = 0;
          v114[5] = 0;

          v114[6] = sub_1AF42B820(v110, sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
          sub_1AFDFC308();

          v114[3] = v113;

          *(v27 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph) = v114;
        }
      }

      v115 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

      v117 = sub_1AF3D6B1C(v116, v121, v133, sub_1AF3FD1BC);

      *(v27 + v115) = v117;

      return v27;
    }

    goto LABEL_35;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

unint64_t sub_1AF3DC99C(char *a1, int a2, unint64_t a3, int a4, void *a5, uint64_t a6, uint64_t a7, uint64_t *a8, void *a9, uint64_t a10)
{
  v12 = v10;
  v108 = a7;
  v109 = a6;
  v105 = a5;
  v107 = a4;
  LODWORD(v106) = a2;
  v16 = a9;
  v117 = *MEMORY[0x1E69E9840];
  v101 = *v10;
  v17 = sub_1AFDFC318();
  v103 = *(v17 - 8);
  v104 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v99 = v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v98 = v93 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = v93 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = v93 - v29;
  if (!*(*a9 + 16) || (result = sub_1AF0D3F10(a1), (v32 & 1) == 0))
  {
    if (!*(*a8 + 16) || (result = sub_1AF0D3F10(a1), (v33 & 1) == 0))
    {
      v100 = a10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v112 = *a8;
      *a8 = 0x8000000000000000;
      sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
      *a8 = v112;

      v97 = a9;
      if (v106)
      {
        if (*a1 == _TtC3VFX12SubGraphNode && (v35 = *&a1[OBJC_IVAR____TtC3VFX12SubGraphNode_graph]) != 0 && (v96 = swift_dynamicCastClass()) != 0)
        {
          v102 = a3;
          v93[1] = v35;
          v36 = *(v103 + 16);
          v37 = v104;
          v36(v30, &a1[OBJC_IVAR____TtC3VFX4Node_authoringID], v104);
          v36(v26, v30, v37);

          v38 = v105;

          v39 = swift_isUniquelyReferenced_nonNull_native();
          v40 = v38;
          if ((v39 & 1) == 0)
          {
            v40 = sub_1AF4276E0(0, v105[2] + 1, 1, v105, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v42 = v40[2];
          v41 = v40[3];
          if (v42 >= v41 >> 1)
          {
            v95 = sub_1AF4276E0(v41 > 1, v42 + 1, 1, v40, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          else
          {
            v95 = v40;
          }

          v43 = v103;
          v44 = v30;
          v45 = v104;
          (*(v103 + 8))(v44, v104);
          v46 = v95;
          v95[2] = v42 + 1;
          v47 = v43;
          v48 = v46;
          (*(v47 + 32))(v46 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v42, v26, v45);
          v49 = MEMORY[0x1E69E7CC0];
          *&v112 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
          *(&v112 + 1) = v50;
          v51 = v96[2];
          v93[0] = v96 + 2;
          v52 = sub_1AF0D4098(v49, sub_1AF44034C, sub_1AF0D3F10);
          v110 = v49;
          v111 = v52;
          if (v51 >> 62)
          {
            v53 = sub_1AFDFE108();
          }

          else
          {
            v53 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v54 = v102;
          swift_bridgeObjectRetain_n();

          sub_1AF4410E4(v54, sub_1AF4410A8);

          v94 = v51;
          if (v53)
          {
            v55 = 0;
            v56 = v51 & 0xC000000000000001;
            while (1)
            {
              if (v56)
              {
                v57 = MEMORY[0x1B2719C70](v55, v51);
              }

              else
              {
                v57 = *(v51 + 8 * v55 + 32);
              }

              sub_1AF3DC99C(v57, 1, v102, v107 & 1, v48, v109, v108, &v111, &v112, &v110);
              if (v11)
              {
                break;
              }

              ++v55;
              v48 = v95;
              v51 = v94;
              if (v53 == v55)
              {
                goto LABEL_41;
              }
            }

            sub_1AF4410E4(v102, sub_1AF441114);

            goto LABEL_50;
          }

LABEL_41:
          v96 = a8;
          v87 = v12;

          a3 = v102;
          sub_1AF4410E4(v102, sub_1AF441114);

          if (v110 >> 62)
          {
            v88 = sub_1AFDFE108();
          }

          else
          {
            v88 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v16 = v97;
          v89 = v105;
          v60 = v108;
          v62 = v107;
          if (v88)
          {

            sub_1AF48F7F8(v90);
          }

          v74 = v89;
          v12 = v87;
          a8 = v96;
        }

        else
        {

          v74 = v105;
          v60 = v108;
          v62 = v107;
        }

        sub_1AF3EBFD4(1, a3, v62 & 1, a1, v12, v74, v109, v60, a8, v16, v100);
        if (v11)
        {
        }

        v96 = a8;
        v58 = v12;
        v59 = v74;
        type metadata accessor for Node();
        if (swift_dynamicCastMetatype())
        {

          v76 = sub_1AF3D72E8(v75, v96);
          v95 = 0;

          *(a1 + 2) = v76;
        }

        else
        {
          v95 = 0;
          type metadata accessor for AuthoringNode();
        }

        v61 = a1;
      }

      else
      {
        v96 = a8;
        v58 = v10;
        v95 = v11;

        v59 = v105;
        v60 = v108;
        v61 = a1;
        v62 = v107;
      }

      v63 = v62 & 1;
      v64 = swift_allocObject();
      v65 = v109;
      *(v64 + 16) = v109;
      *(v64 + 24) = v60;

      sub_1AF4410E4(a3, sub_1AF4410A8);

      v66 = swift_allocObject();
      v67 = a3;
      v68 = v66;
      v69 = v106 & 1;
      *(v66 + 16) = v69;
      v102 = v67;
      *(v66 + 24) = v67;
      *(v66 + 32) = v63;
      *(v66 + 40) = v97;
      *(v66 + 48) = v58;
      *(v66 + 56) = v59;
      *(v66 + 64) = v65;
      v70 = v96;
      *(v66 + 72) = v60;
      *(v66 + 80) = v70;
      v71 = v100;
      *(v66 + 88) = v100;
      v72 = swift_allocObject();
      *(v72 + 16) = sub_1AF446E4C;
      *(v72 + 24) = v68;
      *&v112 = v58;
      *(&v112 + 1) = v61;
      v113 = v59;
      v114 = sub_1AF449D50;
      v115 = v72;
      v116 = v71;
      swift_bridgeObjectRetain_n();

      v73 = v95;
      sub_1AF449CCC(&v112);
      if (v73)
      {

        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();
      }

      else
      {
        LODWORD(v95) = v69;

        v77 = v70;
        swift_isEscapingClosureAtFileLocation();

        v78 = v97;
        swift_isEscapingClosureAtFileLocation();

        v79 = sub_1AF633A88(v61);
        v80 = v108;
        v81 = v107;
        if (v79)
        {
          v82 = v78[1];
          v83 = swift_isUniquelyReferenced_nonNull_native();
          v78[1] = v82;
          if ((v83 & 1) == 0)
          {
            v82 = sub_1AF422330(0, *(v82 + 2) + 1, 1, v82, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
            v78[1] = v82;
          }

          v85 = *(v82 + 2);
          v84 = *(v82 + 3);
          if (v85 >= v84 >> 1)
          {
            v82 = sub_1AF422330(v84 > 1, v85 + 1, 1, v82, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
          }

          *(v82 + 2) = v85 + 1;
          *&v82[8 * v85 + 32] = v61;
          v78 = v97;
          v97[1] = v82;
        }

        v86 = swift_isUniquelyReferenced_nonNull_native();
        *&v112 = *v77;
        *v77 = 0x8000000000000000;
        sub_1AF850FDC(0, v61, v86);
        *v77 = v112;

        if ((v106 & 1) == 0)
        {
          sub_1AF3EBFD4(v95, v102, v81 & 1, v61, v58, v105, v109, v80, v77, v78, v100);
          type metadata accessor for Node();
          if (swift_dynamicCastMetatype())
          {

            v92 = sub_1AF3D72E8(v91, v77);

            *(v61 + 2) = v92;
LABEL_50:
          }

          type metadata accessor for AuthoringNode();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AF3DDA58(uint64_t a1, int a2, unint64_t a3, int a4, void *a5, uint64_t a6, uint64_t a7, char *a8, uint64_t a9, uint64_t a10)
{
  v139 = a7;
  v142 = a6;
  v143 = a3;
  LODWORD(v145) = a2;
  v141 = v10;
  v133 = *v10;
  v134 = sub_1AFDFC318();
  v16 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134, v17);
  v131 = &v125[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19, v20);
  v130 = &v125[-v21];
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v125[-v24];
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v125[-v28];
  v138 = a9;
  v30 = *a9;
  if (*(*a9 + 16))
  {
    v31 = sub_1AF0D3F10(a1);
    if (v32)
    {
      a8 = *(*(v30 + 56) + 8 * v31);

      return a8;
    }
  }

  v144 = a1;
  if (!*(*a8 + 16) || (sub_1AF0D3F10(v144), (v33 & 1) == 0))
  {
    v137 = a5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v147 = *a8;
    *a8 = 0x8000000000000000;
    v35 = v144;
    sub_1AF850FDC(1, v144, isUniquelyReferenced_nonNull_native);
    *a8 = v147;

    sub_1AF44479C(0);
    v37 = v36;
    v38 = type metadata accessor for AuthoringNode();
    v153 = v35;
    v140 = v11;
    v135 = v38;
    v136 = v37;
    if ((a4 & 1) != 0 && v37 == v38)
    {
      v39 = *(*v35 + 296);

      v35 = v39(1);
      v153 = v35;
    }

    else
    {
    }

    v128 = v16;
    if (v145)
    {
      v40 = v140;
      if (*v35 == _TtC3VFX21AuthoringSubGraphNode && (v41 = *(v35 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph), (v42 = swift_dynamicCastClass()) != 0))
      {
        v129 = v42;
        v43 = *(v16 + 16);
        v44 = v35 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
        v45 = v134;
        v43(v29, v44, v134);
        v43(v25, v29, v45);

        v46 = v137;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_1AF4276E0(0, v137[2] + 1, 1, v137, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v48 = v46[2];
        v47 = v46[3];
        v127 = v41;
        if (v48 >= v47 >> 1)
        {
          v46 = sub_1AF4276E0(v47 > 1, v48 + 1, 1, v46, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v49 = v128;
        v50 = v29;
        v51 = v134;
        (*(v128 + 8))(v50, v134);
        v46[2] = v48 + 1;
        (*(v49 + 32))(v46 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v48, v25, v51);
        v53 = v139;
        v52 = v140;
        v54 = sub_1AF3FBC60(v142, v139, 1, v143, a4 & 1, v46);
        v40 = v52;
        if (v52)
        {

          goto LABEL_22;
        }

        v86 = v54;
        v129 = v55;

        if (v136 == v135)
        {
          v140 = 0;
          v102 = *(v129 + 16);
          if (v102)
          {
            *&v147 = MEMORY[0x1E69E7CC0];
            sub_1AFDFE368();
            v103 = 32;
            do
            {
              if (*(v86 + 16) && (sub_1AF0D3F10(*(v129 + v103)), (v105 & 1) != 0))
              {
              }

              else
              {
                v104 = 1;
              }

              v146 = v104;
              swift_dynamicCast();
              sub_1AFDFE328();
              sub_1AFDFE398();
              sub_1AFDFE3A8();
              sub_1AFDFE348();
              v103 += 8;
              --v102;
            }

            while (v102);

            v106 = v147;
          }

          else
          {

            v106 = MEMORY[0x1E69E7CC0];
          }

          v72 = v138;
          v107 = v153;
          v108 = swift_allocObject();
          v109 = MEMORY[0x1E69E7CC0];
          v108->cache = 0;
          v108->vtable = v109;
          v108->info = 0;
          v108[1].isa = 0;

          v108[1].superclass = sub_1AF42B820(v109, sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
          sub_1AFDFC308();

          v108->vtable = v106;

          *(v107 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph) = v108;

          v53 = v139;
          v40 = v140;
        }

        else
        {

          v72 = v138;
        }

        v71 = v137;
      }

      else
      {
        v71 = v137;
        v72 = v138;
        v53 = v139;
      }

      v73 = v142;
      sub_1AF3ED5A0(1, v143, a4 & 1, v144, v141, v71, v142, v53, a8, v72, a10);
      if (v40)
      {
        goto LABEL_25;
      }

      v129 = a10;
      v56 = v73;
      v140 = 0;
      type metadata accessor for Node();
      v81 = swift_dynamicCastMetatype();
      v35 = v153;
      v132 = a8;
      if (v81)
      {
        v82 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

        v84 = v140;
        v85 = sub_1AF3D6B1C(v83, a8, v72, sub_1AF3FD720);
        v140 = v84;

        *(v35 + v82) = v85;
      }
    }

    else
    {
      v129 = a10;
      v56 = v142;
      v132 = a8;
      v53 = v139;
    }

    LODWORD(v127) = a4;
    v57 = a4 & 1;
    v58 = swift_allocObject();
    v59 = v56;
    *(v58 + 16) = v56;
    *(v58 + 24) = v53;
    v60 = v53;
    v61 = v141;

    v62 = v143;
    sub_1AF4410E4(v143, sub_1AF4410A8);

    v63 = swift_allocObject();
    v126 = v145 & 1;
    *(v63 + 16) = v145 & 1;
    *(v63 + 24) = v62;
    *(v63 + 32) = v57;
    v64 = v137;
    v65 = v138;
    *(v63 + 40) = v138;
    *(v63 + 48) = v61;
    *(v63 + 56) = v64;
    *(v63 + 64) = v59;
    v66 = v132;
    *(v63 + 72) = v60;
    *(v63 + 80) = v66;
    v67 = v129;
    *(v63 + 88) = v129;
    v68 = v65;
    v69 = swift_allocObject();
    *(v69 + 16) = sub_1AF4447D0;
    *(v69 + 24) = v63;
    *&v147 = v61;
    *(&v147 + 1) = v35;
    v148 = v64;
    v149 = sub_1AF44122C;
    v150 = v69;
    v151 = v67;

    v70 = v140;
    sub_1AF4411F8(&v147, &v152);
    if (!v70)
    {

      a8 = v152;
      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      v76 = v144;
      sub_1AF3D9030(v75, v144, sub_1AF633B74, sub_1AF449DA4, sub_1AF6B761C, sub_1AF84466C);
      v77 = v68;
      if (v136 == v135)
      {
        *&v147 = a8;

        swift_dynamicCast();
      }

      v78 = v132;
      v79 = swift_isUniquelyReferenced_nonNull_native();
      *&v147 = *v78;
      *v78 = 0x8000000000000000;
      sub_1AF850FDC(0, v76, v79);
      *v78 = v147;

      v80 = v139;
      if (v145)
      {
        goto LABEL_25;
      }

      sub_1AF3ED5A0(v126, v143, v127 & 1, v76, v141, v137, v142, v139, v78, v68, v129);
      v87 = v153;
      if (*v153 == _TtC3VFX21AuthoringSubGraphNode)
      {
        v88 = *(v153 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph);
        v89 = swift_dynamicCastClass();
        if (v89)
        {
          v144 = v89;
          v140 = 0;
          v90 = *(v128 + 16);
          v91 = v87 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
          v92 = v130;
          v93 = v134;
          v90(v130, v91, v134);
          v90(v131, v92, v93);

          v145 = v88;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v137 = sub_1AF4276E0(0, v137[2] + 1, 1, v137, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v95 = v137[2];
          v94 = v137[3];
          if (v95 >= v94 >> 1)
          {
            v137 = sub_1AF4276E0(v94 > 1, v95 + 1, 1, v137, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v96 = v128;
          v97 = v134;
          (*(v128 + 8))(v130, v134);
          v98 = v137;
          v137[2] = v95 + 1;
          (*(v96 + 32))(v98 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v95, v131, v97);
          v99 = v140;
          v100 = sub_1AF3FBC60(v142, v80, v126, v143, v127 & 1, v98);
          if (v99)
          {

            goto LABEL_22;
          }

          v110 = v100;
          v111 = v101;

          if (v136 == v135)
          {
            v140 = 0;
            v112 = *(v111 + 16);
            if (v112)
            {
              v113 = MEMORY[0x1E69E7CC0];
              *&v147 = MEMORY[0x1E69E7CC0];
              sub_1AFDFE368();
              v114 = 32;
              do
              {
                if (*(v110 + 16) && (sub_1AF0D3F10(*(v111 + v114)), (v116 & 1) != 0))
                {
                }

                else
                {
                  v115 = 1;
                }

                v146 = v115;
                swift_dynamicCast();
                sub_1AFDFE328();
                sub_1AFDFE398();
                sub_1AFDFE3A8();
                sub_1AFDFE348();
                v114 += 8;
                --v112;
              }

              while (v112);

              v117 = v147;
            }

            else
            {
              v113 = MEMORY[0x1E69E7CC0];

              v117 = MEMORY[0x1E69E7CC0];
            }

            v118 = v153;
            v119 = swift_allocObject();
            v119->cache = 0;
            v119->vtable = v113;
            v119->info = 0;
            v119[1].isa = 0;

            v119[1].superclass = sub_1AF42B820(v113, sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
            sub_1AFDFC308();

            v119->vtable = v117;

            *(v118 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph) = v119;

            v77 = v138;
          }

          else
          {
          }

          v78 = v132;
        }
      }

      type metadata accessor for Node();
      if (swift_dynamicCastMetatype())
      {
        v120 = v153;
        v121 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

        v123 = a8;
        v124 = sub_1AF3D6B1C(v122, v78, v77, sub_1AF3FD720);

        *(v120 + v121) = v124;
        a8 = v123;
      }

      goto LABEL_25;
    }

    a8 = "";
    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();
LABEL_22:

LABEL_25:

    return a8;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF3DEAB4@<X0>(__objc2_class **a1@<X0>, int a2@<W1>, unint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, __int128 *a9@<X8>, unint64_t a10, uint64_t a11)
{
  v13 = v12;
  v164 = a6;
  v165 = a7;
  v160 = a5;
  v163 = a4;
  v166 = a3;
  LODWORD(v162) = a2;
  v17 = a10;
  v211 = *MEMORY[0x1E69E9840];
  v156 = *v11;
  v18 = sub_1AFDFC318();
  v154 = *(v18 - 8);
  v155 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v152 = v144 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v153 = v144 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = v144 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = v144 - v30;
  v32 = *a10;
  if (*(*a10 + 16))
  {
    v33 = sub_1AF0D3F10(a1);
    if (v34)
    {
      v35 = (*(v32 + 56) + 144 * v33);
      v193 = *v35;
      v36 = v35[3];
      v37 = v35[4];
      v38 = v35[2];
      v194 = v35[1];
      v195 = v38;
      v196 = v36;
      v197 = v37;
      v39 = v35[5];
      v40 = v35[6];
      v41 = v35[7];
      *(v200 + 9) = *(v35 + 121);
      v199 = v40;
      v200[0] = v41;
      v198 = v39;
      v42 = v35[7];
      a9[6] = v35[6];
      a9[7] = v42;
      *(a9 + 121) = *(v35 + 121);
      v43 = v35[3];
      a9[2] = v35[2];
      a9[3] = v43;
      v44 = v35[5];
      a9[4] = v35[4];
      a9[5] = v44;
      v45 = v35[1];
      *a9 = *v35;
      a9[1] = v45;
      return sub_1AF4495B8(&v193, &v185, sub_1AF448148);
    }
  }

  if (*(*a8 + 16))
  {
    sub_1AF0D3F10(a1);
    if (v47)
    {
      LODWORD(v143) = 0;
      v142 = 156;
      sub_1AFDFE518();
      __break(1u);
      goto LABEL_87;
    }
  }

  v158 = a11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v193 = *a8;
  *a8 = 0x8000000000000000;
  sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
  *a8 = v193;

  sub_1AF448148();
  v159 = a10;
  if ((v162 & 1) == 0)
  {
    v147 = v49;
    v148 = a9;
    v157 = v12;
    v151 = a8;

    v73 = a1;
    v74 = v163;
    goto LABEL_18;
  }

  v50 = v49;
  if (*a1 != _TtC3VFX12SubGraphNode)
  {

    v94 = v160;
    v95 = v166;
LABEL_42:
    v74 = v163;
    sub_1AF3EEB38(1, v95, v163 & 1, a1, v161, v94, v164, v165, a8, v17, v158);
    if (v13)
    {
    }

    v157 = 0;
    v148 = a9;
    type metadata accessor for Node();
    v147 = v50;
    v104 = swift_dynamicCastMetatype();
    v151 = a8;
    if (v104)
    {

      v106 = v157;
      v107 = sub_1AF3D72E8(v105, a8);
      v157 = v106;

      a1[2] = v107;
    }

    else
    {
      type metadata accessor for AuthoringNode();
    }

    v73 = a1;
LABEL_18:
    v75 = v74 & 1;
    v76 = swift_allocObject();
    v77 = v164;
    v78 = v165;
    *(v76 + 16) = v164;
    *(v76 + 24) = v78;
    v79 = v161;

    v80 = v166;
    sub_1AF4410E4(v166, sub_1AF4410A8);

    v81 = swift_allocObject();
    LODWORD(v150) = v162 & 1;
    *(v81 + 16) = v162 & 1;
    *(v81 + 24) = v80;
    *(v81 + 32) = v75;
    v82 = v160;
    *(v81 + 40) = v159;
    *(v81 + 48) = v79;
    *(v81 + 56) = v82;
    *(v81 + 64) = v77;
    *(v81 + 72) = v78;
    v83 = v151;
    v84 = v158;
    *(v81 + 80) = v151;
    *(v81 + 88) = v84;
    v85 = swift_allocObject();
    *(v85 + 16) = sub_1AF448310;
    *(v85 + 24) = v81;
    *&v170 = v79;
    *(&v170 + 1) = v73;
    v171 = v82;
    v172 = sub_1AF441390;
    v173 = v85;
    v174 = v84;
    swift_bridgeObjectRetain_n();

    v86 = v157;
    sub_1AF441360(&v170);
    if (v86)
    {

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();
    }

    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();

    v191 = v207;
    v192[0] = v208[0];
    *(v192 + 9) = *(v208 + 9);
    v187 = v203;
    v188 = v204;
    v189 = v205;
    v190 = v206;
    v185 = v201;
    v186 = v202;
    v199 = v207;
    v200[0] = v208[0];
    *(v200 + 9) = *(v208 + 9);
    v195 = v203;
    v196 = v204;
    v197 = v205;
    v198 = v206;
    v193 = v201;
    v194 = v202;
    nullsub_106();
    v209[6] = v199;
    v210[0] = v200[0];
    *(v210 + 9) = *(v200 + 9);
    v209[2] = v195;
    v209[3] = v196;
    v209[4] = v197;
    v209[5] = v198;
    v209[0] = v193;
    v209[1] = v194;
    sub_1AF4495B8(&v185, v183, sub_1AF448148);
    v87 = v159;
    sub_1AF3D8A74(v209, v73);
    v88 = swift_isUniquelyReferenced_nonNull_native();
    *&v183[0] = *v83;
    *v83 = 0x8000000000000000;
    sub_1AF850FDC(0, v73, v88);
    *v83 = *&v183[0];

    if (v162)
    {
      goto LABEL_21;
    }

    sub_1AF3EEB38(v150, v166, v163 & 1, v73, v161, v82, v164, v165, v83, v87, v158);
    if (*v73 == _TtC3VFX12SubGraphNode)
    {
      v108 = v151;
      if (v73)
      {
        v109 = v73;
        v110 = *(v73 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph);
        if (v110)
        {
          v162 = swift_dynamicCastClass();
          if (v162)
          {
            v157 = 0;
            v111 = v153;
            v112 = *(v154 + 16);
            v145 = v73;
            v113 = v155;
            v112(v153, v73 + OBJC_IVAR____TtC3VFX4Node_authoringID, v155);
            v114 = v152;
            v112(v152, v111, v113);
            v115 = v160;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v115 = sub_1AF4276E0(0, v115[2] + 1, 1, v115, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
            }

            v117 = v115[2];
            v116 = v115[3];
            v118 = v115;
            v161 = v110;
            if (v117 >= v116 >> 1)
            {
              v118 = sub_1AF4276E0(v116 > 1, v117 + 1, 1, v115, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
            }

            v119 = v154;
            v120 = v155;
            (*(v154 + 8))(v153, v155);
            v118[2] = v117 + 1;
            (*(v119 + 32))(v118 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v117, v114, v120);
            v121 = MEMORY[0x1E69E7CC0];
            v169[0] = sub_1AF439808(MEMORY[0x1E69E7CC0]);
            v169[1] = v122;
            v123 = (v162 + 16);
            v124 = *(v162 + 16);
            if ((v166 & 0x1000000000000000) != 0)
            {

              v132 = v157;
              goto LABEL_63;
            }

            *&v175 = v121;
            v125 = swift_allocObject();
            *(v125 + 16) = v124;
            MEMORY[0x1EEE9AC00](v125, v126);
            MEMORY[0x1EEE9AC00](v127, v128);
            v142 = sub_1AF449D54;
            v143 = v129;
            swift_bridgeObjectRetain_n();
            *&v183[0] = sub_1AF42B0F4(v121);
            *(&v183[0] + 1) = v130;
            v131 = v157;
            sub_1AF412D4C(sub_1AF449DD8, &v141, 1, 0x1000000000000000uLL, 0, v121, v183);
            if (!v131)
            {
              v132 = 0;

              v124 = v175;
LABEL_63:
              v133 = sub_1AF0D4098(v121, sub_1AF44034C, sub_1AF0D3F10);
              v167 = v121;
              v168 = v133;
              if (v124 >> 62)
              {
                v134 = sub_1AFDFE108();
              }

              else
              {
                v134 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v160 = v123;
              sub_1AF4410E4(v166, sub_1AF4410A8);

              if (v134)
              {
                v135 = 0;
                while (1)
                {
                  if ((v124 & 0xC000000000000001) != 0)
                  {
                    v136 = MEMORY[0x1B2719C70](v135, v124);
                  }

                  else
                  {
                    v136 = *(v124 + 8 * v135 + 32);
                  }

                  sub_1AF3DEAB4(v183, v136, v150, v166, v163 & 1, v118, v164, v165, &v168, v169, &v167);
                  if (v132)
                  {
                    break;
                  }

                  ++v135;
                  v181 = v183[6];
                  v182[0] = v184[0];
                  *(v182 + 9) = *(v184 + 9);
                  v177 = v183[2];
                  v178 = v183[3];
                  v179 = v183[4];
                  v180 = v183[5];
                  v175 = v183[0];
                  v176 = v183[1];
                  sub_1AF44943C(&v175, sub_1AF448148);

                  if (v134 == v135)
                  {
                    goto LABEL_73;
                  }
                }

                sub_1AF4410E4(v166, sub_1AF441114);

                v181 = v207;
                v182[0] = v208[0];
                *(v182 + 9) = *(v208 + 9);
                v177 = v203;
                v178 = v204;
                v179 = v205;
                v180 = v206;
                v175 = v201;
                v176 = v202;
                sub_1AF44943C(&v175, sub_1AF448148);
              }

LABEL_73:

              sub_1AF4410E4(v166, sub_1AF441114);

              if (v167 >> 62)
              {
                v137 = sub_1AFDFE108();
              }

              else
              {
                v137 = *((v167 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v109 = v145;
              if (v137)
              {

                sub_1AF48F7F8(v138);
              }

              v108 = v151;
              goto LABEL_78;
            }

LABEL_88:

            __break(1u);
            return result;
          }
        }
      }

      else
      {
        v109 = 0;
      }
    }

    else
    {
      v109 = v73;
      v108 = v151;
    }

LABEL_78:
    type metadata accessor for Node();
    if (swift_dynamicCastMetatype())
    {

      v140 = sub_1AF3D72E8(v139, v108);

      v109[2] = v140;

      goto LABEL_22;
    }

    type metadata accessor for AuthoringNode();
LABEL_21:

LABEL_22:
    v89 = v148;
    v90 = v208[0];
    v148[6] = v207;
    v89[7] = v90;
    *(v89 + 121) = *(v208 + 9);
    v91 = v204;
    v89[2] = v203;
    v89[3] = v91;
    v92 = v206;
    v89[4] = v205;
    v89[5] = v92;
    v93 = v202;
    *v89 = v201;
    v89[1] = v93;
    return result;
  }

  v51 = *(a1 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph);
  if (!v51 || (v149 = swift_dynamicCastClass()) == 0)
  {

    v17 = v159;
    v94 = v160;
    v95 = v166;
    goto LABEL_42;
  }

  v157 = v12;
  v147 = v50;
  v148 = a9;
  v52 = v155;
  v53 = a1;
  v54 = *(v154 + 16);
  v54(v31, v53 + OBJC_IVAR____TtC3VFX4Node_authoringID, v155);
  v54(v27, v31, v52);
  v145 = v53;

  v146 = v51;

  v55 = v160;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v55 = sub_1AF4276E0(0, v160[2] + 1, 1, v160, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
  }

  v57 = v55[2];
  v56 = v55[3];
  v150 = v55;
  if (v57 >= v56 >> 1)
  {
    v150 = sub_1AF4276E0(v56 > 1, v57 + 1, 1, v150, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
  }

  v17 = v159;
  v59 = v154;
  v58 = v155;
  (*(v154 + 8))(v31, v155);
  v60 = v150;
  v150[2] = v57 + 1;
  v61 = v60;
  (*(v59 + 32))(v60 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v57, v27, v58);
  v62 = MEMORY[0x1E69E7CC0];
  *&v183[0] = sub_1AF439808(MEMORY[0x1E69E7CC0]);
  *(&v183[0] + 1) = v63;
  v64 = *(v149 + 16);
  v144[1] = v149 + 16;
  v65 = v166;
  if ((v166 & 0x1000000000000000) == 0)
  {
    *&v185 = v62;
    v66 = swift_allocObject();
    v144[0] = v144;
    *(v66 + 16) = v64;
    MEMORY[0x1EEE9AC00](v66, v67);
    MEMORY[0x1EEE9AC00](v68, v69);
    v142 = sub_1AF449D54;
    v143 = v70;
    swift_bridgeObjectRetain_n();
    *&v193 = sub_1AF42B0F4(v62);
    *(&v193 + 1) = v71;
    v72 = v157;
    sub_1AF412D4C(sub_1AF449DD8, &v141, 1, 0x1000000000000000uLL, 0, v62, &v193);
    if (!v72)
    {
      v13 = 0;

      v64 = v185;
      v61 = v150;
      goto LABEL_27;
    }

LABEL_87:

    __break(1u);
    goto LABEL_88;
  }

  v13 = v157;
LABEL_27:
  *&v175 = sub_1AF0D4098(v62, sub_1AF44034C, sub_1AF0D3F10);
  *&v170 = v62;
  if (v64 >> 62)
  {
    v96 = sub_1AFDFE108();
  }

  else
  {
    v96 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1AF4410E4(v65, sub_1AF4410A8);

  v157 = v64;
  if (!v96)
  {
LABEL_37:

    v100 = v166;
    sub_1AF4410E4(v166, sub_1AF441114);

    if (v170 >> 62)
    {
      v101 = sub_1AFDFE108();
    }

    else
    {
      v101 = *((v170 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a1 = v145;
    a9 = v148;
    v102 = v160;
    if (v101)
    {

      sub_1AF48F7F8(v103);
    }

    v94 = v102;
    v95 = v100;
    v50 = v147;
    goto LABEL_42;
  }

  v97 = 0;
  v98 = v64 & 0xC000000000000001;
  while (1)
  {
    if (v98)
    {
      v99 = MEMORY[0x1B2719C70](v97, v157);
    }

    else
    {
      v99 = *(v157 + 8 * v97 + 32);
    }

    sub_1AF3DEAB4(&v193, v99, 1, v166, v163 & 1, v61, v164, v165, &v175, v183, &v170);
    if (v13)
    {
      break;
    }

    ++v97;
    v191 = v199;
    v192[0] = v200[0];
    *(v192 + 9) = *(v200 + 9);
    v187 = v195;
    v188 = v196;
    v189 = v197;
    v190 = v198;
    v185 = v193;
    v186 = v194;
    sub_1AF44943C(&v185, sub_1AF448148);

    v61 = v150;
    if (v96 == v97)
    {
      goto LABEL_37;
    }
  }

  sub_1AF4410E4(v166, sub_1AF441114);
}

uint64_t sub_1AF3DFFC4(void *a1, int a2, unint64_t a3, int a4, void *a5, uint64_t a6, uint64_t a7, uint64_t *a8, void *a9, uint64_t a10)
{
  v12 = v11;
  v148 = a7;
  v143 = a5;
  v147 = a4;
  LODWORD(v146) = a2;
  v157 = *MEMORY[0x1E69E9840];
  v142 = v10;
  v139 = *v10;
  v138 = sub_1AFDFC318();
  v17 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138, v18);
  v137 = &v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v136 = &v128 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v128 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v128 - v29;
  v144 = a9;
  v31 = *a9;
  if (*(*a9 + 16))
  {
    v32 = sub_1AF0D3F10(a1);
    if (v33)
    {
      return *(*(v31 + 56) + 12 * v32);
    }
  }

  if (*(*a8 + 16))
  {
    sub_1AF0D3F10(a1);
    if (v34)
    {
      LODWORD(v127) = 0;
      v126 = 156;
      sub_1AFDFE518();
      __break(1u);
      goto LABEL_86;
    }
  }

  v141 = a10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v150 = *a8;
  *a8 = 0x8000000000000000;
  sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
  *a8 = v150;

  sub_1AF449B08(0, qword_1ED723F40, &type metadata for Entity, MEMORY[0x1E69E6720]);
  v145 = a3;
  if ((v146 & 1) == 0)
  {
    v132 = v17;
    v131 = v36;
    v58 = v147;
    v135 = v11;
    v134 = a8;

    v59 = v143;
    goto LABEL_18;
  }

  if (*a1 != _TtC3VFX12SubGraphNode)
  {
    v37 = v36;

    v59 = v143;
    v81 = v141;
LABEL_56:
    v126 = v81;
    v108 = v147;
    sub_1AF3F0558(1, a3, v147 & 1, a1, v142, v59, a6, v148, a8, v144, v126);
    if (v12)
    {
LABEL_57:

      return a6;
    }

    v132 = v17;
    v58 = v108;
    type metadata accessor for Node();
    v131 = v37;
    v110 = swift_dynamicCastMetatype();
    v134 = a8;
    if (v110)
    {

      v112 = sub_1AF3D72E8(v111, a8);
      v135 = 0;

      a1[2] = v112;
    }

    else
    {
      v135 = 0;
      type metadata accessor for AuthoringNode();
    }

LABEL_18:
    v60 = swift_allocObject();
    v61 = a6;
    v62 = v148;
    *(v60 + 16) = a6;
    *(v60 + 24) = v62;
    a6 = v142;

    v63 = v145;
    sub_1AF4410E4(v145, sub_1AF4410A8);

    v64 = swift_allocObject();
    LODWORD(v133) = v146 & 1;
    *(v64 + 16) = v146 & 1;
    *(v64 + 24) = v63;
    *(v64 + 32) = v58 & 1;
    *(v64 + 40) = v144;
    *(v64 + 48) = a6;
    *(v64 + 56) = v59;
    *(v64 + 64) = v61;
    v65 = v134;
    *(v64 + 72) = v62;
    *(v64 + 80) = v65;
    v66 = v141;
    *(v64 + 88) = v141;
    v67 = swift_allocObject();
    *(v67 + 16) = sub_1AF448D2C;
    *(v67 + 24) = v64;
    *&v150 = a6;
    *(&v150 + 1) = a1;
    v151 = v59;
    v152 = sub_1AF448D30;
    v153 = v67;
    v154 = v66;
    swift_bridgeObjectRetain_n();

    v68 = v135;
    sub_1AF448D10(&v150, &v155);
    if (v68)
    {

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();
    }

    else
    {
      v140 = v61;

      a6 = v155;
      v135 = a1;
      v69 = v156;
      swift_isEscapingClosureAtFileLocation();

      v70 = v144;
      swift_isEscapingClosureAtFileLocation();

      LODWORD(v130) = v69;
      v71 = v69;
      v72 = v135;
      sub_1AF633DE0(a6, v71, v135);
      v73 = v147;
      if ((v74 & 0x100) != 0)
      {
        v75 = v70[1];
        v76 = swift_isUniquelyReferenced_nonNull_native();
        v70[1] = v75;
        if ((v76 & 1) == 0)
        {
          v75 = sub_1AF422330(0, *(v75 + 2) + 1, 1, v75, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
          v70[1] = v75;
        }

        v78 = *(v75 + 2);
        v77 = *(v75 + 3);
        if (v78 >= v77 >> 1)
        {
          v75 = sub_1AF422330(v77 > 1, v78 + 1, 1, v75, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
        }

        *(v75 + 2) = v78 + 1;
        *&v75[8 * v78 + 32] = v72;
        v70[1] = v75;
      }

      v79 = swift_isUniquelyReferenced_nonNull_native();
      *&v150 = *v65;
      *v65 = 0x8000000000000000;
      sub_1AF850FDC(0, v72, v79);
      *v65 = v150;

      v80 = v145;
      if ((v146 & 1) == 0)
      {
        sub_1AF3F0558(v133, v145, v73 & 1, v72, v142, v143, v140, v148, v65, v70, v141);
        if (*v72 == _TtC3VFX12SubGraphNode)
        {
          if (v72)
          {
            v82 = *(v72 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph);
            if (v82)
            {
              v142 = swift_dynamicCastClass();
              if (v142)
              {
                v129 = a6;
                v141 = v82;
                v83 = *(v132 + 16);
                v84 = v136;
                v85 = v138;
                v83(v136, v72 + OBJC_IVAR____TtC3VFX4Node_authoringID, v138);
                v83(v137, v84, v85);
                v86 = v143;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v86 = sub_1AF4276E0(0, v86[2] + 1, 1, v86, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
                }

                v88 = v86[2];
                v87 = v86[3];
                v146 = v88 + 1;
                if (v88 >= v87 >> 1)
                {
                  v86 = sub_1AF4276E0(v87 > 1, v88 + 1, 1, v86, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
                }

                v89 = v132;
                v90 = v138;
                (*(v132 + 8))(v136, v138);
                v86[2] = v146;
                (*(v89 + 32))(v86 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v88, v137, v90);
                v91 = MEMORY[0x1E69E7CC0];
                *&v150 = sub_1AF439B40(MEMORY[0x1E69E7CC0]);
                *(&v150 + 1) = v92;
                v93 = v142[2];
                v138 = (v142 + 2);
                if ((v80 & 0x1000000000000000) != 0)
                {

                  v100 = v86;
                }

                else
                {
                  v149 = v91;
                  v94 = swift_allocObject();
                  *(v94 + 16) = v93;
                  MEMORY[0x1EEE9AC00](v94, v95);
                  MEMORY[0x1EEE9AC00](v96, v97);
                  v126 = sub_1AF449D54;
                  v127 = v98;
                  swift_bridgeObjectRetain_n();
                  v155 = sub_1AF42B0F4(v91);
                  v156 = v99;
                  sub_1AF412D4C(sub_1AF449DD8, &v125, 1, 0x1000000000000000uLL, 0, v91, &v155);

                  v93 = v149;
                  v100 = v86;
                  v80 = v145;
                  v73 = v147;
                }

                v155 = sub_1AF0D4098(v91, sub_1AF44034C, sub_1AF0D3F10);
                v149 = v91;
                v116 = v133;
                if (v93 >> 62)
                {
                  v117 = sub_1AFDFE108();
                }

                else
                {
                  v117 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                sub_1AF4410E4(v80, sub_1AF4410A8);

                v143 = v100;

                v146 = v93;
                if (v117)
                {
                  v118 = v93;
                  v119 = v73;
                  v120 = 0;
                  v121 = v118 & 0xC000000000000001;
                  do
                  {
                    if (v121)
                    {
                      v122 = MEMORY[0x1B2719C70](v120, v146);
                    }

                    else
                    {
                      v122 = *(v146 + 8 * v120 + 32);
                    }

                    sub_1AF3DFFC4(v122, v116, v145, v119 & 1, v143, v140, v148, &v155, &v150, &v149);

                    ++v120;
                    v116 = v133;
                  }

                  while (v117 != v120);
                }

                sub_1AF4410E4(v145, sub_1AF441114);

                if (v149 >> 62)
                {
                  v123 = sub_1AFDFE108();
                }

                else
                {
                  v123 = *((v149 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                a6 = v129;
                if (v123)
                {

                  sub_1AF48F7F8(v124);
                }
              }
            }
          }
        }

        type metadata accessor for Node();
        if (swift_dynamicCastMetatype())
        {
          v113 = v135;

          v115 = sub_1AF3D72E8(v114, v65);

          v113[2] = v115;
        }

        else
        {
          type metadata accessor for AuthoringNode();
        }

        return a6;
      }
    }

    goto LABEL_57;
  }

  v140 = a6;
  v37 = v36;
  v38 = *(a1 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph);
  if (!v38 || (v133 = swift_dynamicCastClass()) == 0)
  {

    v59 = v143;
    a6 = v140;
    v81 = v141;
    goto LABEL_56;
  }

  v131 = v37;
  v132 = v17;
  v39 = *(v17 + 16);
  v40 = v138;
  v39(v30, a1 + OBJC_IVAR____TtC3VFX4Node_authoringID, v138);
  v39(v26, v30, v40);

  v130 = v38;

  v41 = v143;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v41 = sub_1AF4276E0(0, v143[2] + 1, 1, v143, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
  }

  v135 = v41;
  v43 = v41[2];
  v42 = v41[3];
  if (v43 >= v42 >> 1)
  {
    v135 = sub_1AF4276E0(v42 > 1, v43 + 1, 1, v135, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
  }

  v44 = v132;
  v45 = v30;
  v46 = v138;
  (*(v132 + 8))(v45, v138);
  v47 = v135;
  v135[2] = v43 + 1;
  (*(v44 + 32))(v47 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v43, v26, v46);
  v48 = MEMORY[0x1E69E7CC0];
  *&v150 = sub_1AF439B40(MEMORY[0x1E69E7CC0]);
  *(&v150 + 1) = v49;
  v50 = *(v133 + 16);
  v129 = v133 + 16;
  v51 = v145;
  if ((v145 & 0x1000000000000000) != 0)
  {

    goto LABEL_41;
  }

  v149 = v48;
  v52 = swift_allocObject();
  *(v52 + 16) = v50;
  MEMORY[0x1EEE9AC00](v52, v53);
  MEMORY[0x1EEE9AC00](v54, v55);
  v126 = sub_1AF449D54;
  v127 = v56;
  swift_bridgeObjectRetain_n();
  v155 = sub_1AF42B0F4(v48);
  v156 = v57;
  sub_1AF412D4C(sub_1AF449DD8, &v125, 1, 0x1000000000000000uLL, 0, v48, &v155);
  if (!v11)
  {
    v12 = 0;

    v50 = v149;
    v51 = v145;
LABEL_41:
    v155 = sub_1AF0D4098(v48, sub_1AF44034C, sub_1AF0D3F10);
    v149 = v48;
    if (v50 >> 62)
    {
      v101 = sub_1AFDFE108();
    }

    else
    {
      v101 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_1AF4410E4(v51, sub_1AF4410A8);
    v102 = v135;

    v103 = v50;
    if (v101)
    {
      a6 = 0;
      v104 = v50 & 0xC000000000000001;
      while (1)
      {
        if (v104)
        {
          v105 = MEMORY[0x1B2719C70](a6, v50);
        }

        else
        {
          v105 = *(v50 + 8 * a6 + 32);
        }

        sub_1AF3DFFC4(v105, 1, v145, v147 & 1, v102, v140, v148, &v155, &v150, &v149);
        if (v12)
        {
          break;
        }

        ++a6;
        v102 = v135;
        v50 = v103;
        if (v101 == a6)
        {
          goto LABEL_51;
        }
      }

      sub_1AF4410E4(v145, sub_1AF441114);

      return a6;
    }

LABEL_51:

    a3 = v145;
    sub_1AF4410E4(v145, sub_1AF441114);

    if (v149 >> 62)
    {
      v106 = sub_1AFDFE108();
    }

    else
    {
      v106 = *((v149 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v59 = v143;
    a6 = v140;
    v81 = v141;
    if (v106)
    {

      sub_1AF48F7F8(v107);
    }

    v37 = v131;
    v17 = v132;
    goto LABEL_56;
  }

LABEL_86:

  __break(1u);
  return result;
}

uint64_t sub_1AF3E1430(uint64_t a1, int a2, unint64_t a3, int a4, void *a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9, uint64_t a10)
{
  v12 = v11;
  v139 = a7;
  v140 = a3;
  *&v141 = a6;
  LODWORD(v142) = a2;
  v17 = a9;
  v134 = *v10;
  v130 = sub_1AFDFC318();
  v131 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130, v18);
  v128 = &v122 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v127 = &v122 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v122 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v122 - v29;
  v31 = *a9;
  if (*(*a9 + 16))
  {
    v32 = sub_1AF0D3F10(a1);
    if (v33)
    {
      v26 = *(*(v31 + 56) + 16 * v32);

      return v26;
    }
  }

  *&v143 = a1;
  v34 = *(*a8 + 16);
  v135 = a5;
  if (!v34)
  {
    v35 = v142;
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v144 = *a8;
    *a8 = 0x8000000000000000;
    v38 = v143;
    sub_1AF850FDC(1, v143, isUniquelyReferenced_nonNull_native);
    v39 = v38;
    *a8 = v144;

    sub_1AF449B08(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v137 = v40;
    v136 = type metadata accessor for Node();
    v150 = v38;

    if ((a4 & 1) != 0 && v137 == v136)
    {
      v41 = sub_1AF96FB80(1);
      v39 = v143;
      v38 = v41;
      v150 = v41;
    }

    v42 = a10;
    if (v35)
    {
      if (*v38 == _TtC3VFX12SubGraphNode && (v43 = *(v38 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph)) != 0)
      {
        v132 = a10;
        v44 = swift_dynamicCastClass();
        if (v44)
        {
          *&v126 = v44;
          v133 = v11;
          v123 = a9;
          v45 = *(v131 + 16);
          v46 = v38 + OBJC_IVAR____TtC3VFX4Node_authoringID;
          v47 = v130;
          v45(v30, v46, v130);
          v45(v26, v30, v47);
          v125 = v43;

          v48 = v135;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = sub_1AF4276E0(0, v135[2] + 1, 1, v135, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v50 = v48[2];
          v49 = v48[3];
          if (v50 >= v49 >> 1)
          {
            v48 = sub_1AF4276E0(v49 > 1, v50 + 1, 1, v48, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v51 = v131;
          v52 = v30;
          v53 = v130;
          (*(v131 + 8))(v52, v130);
          v48[2] = v50 + 1;
          (*(v51 + 32))(v48 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v50, v26, v53);
          v54 = v139;
          v55 = v140;
          v56 = v133;
          v57 = sub_1AF3FBEE4(v141, v139, 1, v140, a4 & 1, v48);
          v133 = v56;
          if (v56)
          {

LABEL_52:

            return v26;
          }

          v92 = v57;
          v93 = v58;

          if (v137 == v136)
          {
            v26 = *(v93 + 16);
            if (v26)
            {
              *&v149 = MEMORY[0x1E69E7CC0];
              sub_1AFDFE368();
              v94 = 32;
              v126 = xmmword_1AFE21110;
              do
              {
                v95 = v126;
                if (*(v92 + 16))
                {
                  v96 = sub_1AF0D3F10(*(v93 + v94));
                  v95 = v126;
                  if (v97)
                  {
                    v124 = *(*(v92 + 56) + 16 * v96);

                    v95 = v124;
                  }
                }

                v144 = v95;
                swift_dynamicCast();
                sub_1AFDFE328();
                sub_1AFDFE398();
                sub_1AFDFE3A8();
                sub_1AFDFE348();
                v94 += 8;
                --v26;
              }

              while (v26);

              v98 = v149;
              v54 = v139;
            }

            else
            {

              v98 = MEMORY[0x1E69E7CC0];
            }

            v99 = v150;
            v100 = swift_allocObject();
            *(v100 + 16) = v98;
            *(v99 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = v100;

            v17 = v123;
            v12 = v133;
            v71 = v135;
            v73 = v54;
            v72 = v140;
          }

          else
          {

            v17 = v123;
            v12 = v133;
            v71 = v135;
            v73 = v54;
            v72 = v55;
          }

          v39 = v143;
        }

        else
        {
          v71 = v135;
          v73 = v139;
          v72 = v140;
        }

        v42 = v132;
      }

      else
      {
        v71 = v135;
        v73 = v139;
        v72 = v140;
      }

      v101 = v39;
      v102 = v42;
      sub_1AF3F1D38(1, v72, a4 & 1, v101, v138, v71, v141, v73, a8, v17, v42);
      if (v12)
      {
        goto LABEL_52;
      }

      v132 = v102;
      v104 = swift_dynamicCastMetatype();
      v129 = a8;
      if (v104)
      {
        v38 = v150;

        v106 = sub_1AF3D7490(v105, a8, v17);
        v133 = 0;

        v38[2] = v106;
      }

      else
      {
        v133 = 0;
        type metadata accessor for AuthoringNode();
        v38 = v150;
      }
    }

    else
    {
      v132 = a10;
      v129 = a8;
      v133 = v11;
    }

    v59 = a4 & 1;
    v60 = swift_allocObject();
    LODWORD(v126) = a4;
    v61 = v141;
    v63 = v138;
    v62 = v139;
    *(v60 + 16) = v141;
    *(v60 + 24) = v62;

    v64 = v140;
    sub_1AF4410E4(v140, sub_1AF4410A8);

    v26 = swift_allocObject();
    LODWORD(v125) = v142 & 1;
    v26[16] = v142 & 1;
    *(v26 + 3) = v64;
    v26[32] = v59;
    *(v26 + 5) = v17;
    *(v26 + 6) = v63;
    v65 = v135;
    *(v26 + 7) = v135;
    *(v26 + 8) = v61;
    v66 = v129;
    *(v26 + 9) = v62;
    *(v26 + 10) = v66;
    v67 = v132;
    *(v26 + 11) = v132;
    v68 = v17;
    v69 = swift_allocObject();
    *(v69 + 16) = sub_1AF447F6C;
    *(v69 + 24) = v26;
    *&v144 = v63;
    *(&v144 + 1) = v38;
    v145 = v65;
    v146 = sub_1AF447F70;
    v147 = v69;
    v148 = v67;

    v70 = v133;
    sub_1AF447F50(&v144, &v149);
    if (v70)
    {

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();
    }

    else
    {

      v74 = v149;
      swift_isEscapingClosureAtFileLocation();
      v26 = v74;

      swift_isEscapingClosureAtFileLocation();

      v75 = v143;
      sub_1AF3D8DAC(v74, *(&v74 + 1), v143);
      v76 = v68;
      if (v137 == v136)
      {
        v144 = v74;

        swift_dynamicCast();
      }

      v77 = v129;
      v78 = swift_isUniquelyReferenced_nonNull_native();
      *&v144 = *v77;
      *v77 = 0x8000000000000000;
      sub_1AF850FDC(0, v75, v78);
      *v77 = v144;

      if ((v142 & 1) == 0)
      {
        sub_1AF3F1D38(v125, v140, v126 & 1, v75, v138, v135, v141, v139, v77, v68, v132);
        v79 = v150;
        if (*v150 == _TtC3VFX12SubGraphNode)
        {
          v80 = *(v150 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph);
          if (v80)
          {
            v81 = swift_dynamicCastClass();
            if (v81)
            {
              *&v143 = v81;
              v138 = v74;
              v82 = *(v131 + 16);
              v83 = v79 + OBJC_IVAR____TtC3VFX4Node_authoringID;
              v84 = v127;
              v85 = v80;
              v86 = v130;
              v82(v127, v83, v130);
              v82(v128, v84, v86);
              v87 = v135;

              v142 = v85;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v87 = sub_1AF4276E0(0, v87[2] + 1, 1, v87, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
              }

              v89 = v87[2];
              v88 = v87[3];
              v90 = v131;
              if (v89 >= v88 >> 1)
              {
                v121 = sub_1AF4276E0(v88 > 1, v89 + 1, 1, v87, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
                v90 = v131;
                v87 = v121;
              }

              v91 = v130;
              (*(v90 + 8))(v127, v130);
              v87[2] = v89 + 1;
              (*(v90 + 32))(v87 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v89, v128, v91);
              v107 = sub_1AF3FBEE4(v141, v139, v125, v140, v126 & 1, v87);
              v109 = v108;

              if (v137 == v136)
              {
                v133 = 0;
                v110 = *(v109 + 16);
                if (v110)
                {
                  *&v149 = MEMORY[0x1E69E7CC0];
                  sub_1AFDFE368();
                  v111 = 32;
                  v143 = xmmword_1AFE21110;
                  do
                  {
                    v112 = v143;
                    if (*(v107 + 16))
                    {
                      v113 = sub_1AF0D3F10(*(v109 + v111));
                      v112 = v143;
                      if (v114)
                      {
                        v141 = *(*(v107 + 56) + 16 * v113);

                        v112 = v141;
                      }
                    }

                    v144 = v112;
                    swift_dynamicCast();
                    sub_1AFDFE328();
                    sub_1AFDFE398();
                    sub_1AFDFE3A8();
                    sub_1AFDFE348();
                    v111 += 8;
                    --v110;
                  }

                  while (v110);

                  v115 = v149;
                }

                else
                {

                  v115 = MEMORY[0x1E69E7CC0];
                }

                v116 = v150;
                v117 = swift_allocObject();
                *(v117 + 16) = v115;
                *(v116 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = v117;

                v76 = v68;
              }

              else
              {
              }

              v26 = v138;
            }
          }
        }

        if (swift_dynamicCastMetatype())
        {
          v118 = v150;

          v120 = sub_1AF3D7490(v119, v129, v76);

          v118[2] = v120;
        }

        else
        {
          type metadata accessor for AuthoringNode();
        }
      }
    }

    goto LABEL_52;
  }

  sub_1AF0D3F10(v143);
  v35 = v142;
  if ((v36 & 1) == 0)
  {
    goto LABEL_8;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF3E2468(__objc2_class **a1, int a2, unint64_t a3, int a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v132 = a7;
  v133 = a8;
  v129 = a5;
  LODWORD(v130) = a2;
  v140[1] = *MEMORY[0x1E69E9840];
  v126 = v10;
  v121 = *v10;
  v16 = sub_1AFDFC318();
  v122 = *(v16 - 8);
  v123 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v120 = &v114 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v114 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v114 - v29;
  v128 = a9;
  v31 = *a9;
  if (*(*a9 + 16))
  {
    v32 = sub_1AF0D3F10(a1);
    if (v33)
    {
      v34 = *(*(v31 + 56) + 8 * v32);

      return v34;
    }
  }

  v117 = v19;
  if (!*(*v133 + 16))
  {
    v35 = v11;
    v37 = v133;
LABEL_8:
    v125 = a10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v135 = *v37;
    *v37 = 0x8000000000000000;
    sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
    *v37 = v135;

    sub_1AF449B08(0, &qword_1EB638DB8, &type metadata for AuthoringNodeCoder, MEMORY[0x1E69E6720]);
    v131 = a3;
    v118 = v39;
    if (v130)
    {
      v40 = v35;
      if (*a1 == _TtC3VFX21AuthoringSubGraphNode && (v41 = *(a1 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph), (v42 = swift_dynamicCastClass()) != 0))
      {
        v43 = v42;
        v119 = a4;
        v127 = a6;
        v44 = v129;
        v45 = *(v122 + 16);
        v116 = v41;
        v46 = v123;
        v45(v30, a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v123);
        v45(v26, v30, v46);
        v115 = a1;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_1AF4276E0(0, v129[2] + 1, 1, v129, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v48 = v44[2];
        v47 = v44[3];
        if (v48 >= v47 >> 1)
        {
          v124 = sub_1AF4276E0(v47 > 1, v48 + 1, 1, v44, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        else
        {
          v124 = v44;
        }

        v50 = v122;
        v49 = v123;
        (*(v122 + 8))(v30, v123);
        v51 = v124;
        v124[2] = v48 + 1;
        (*(v50 + 32))(v51 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v48, v26, v49);
        v52 = MEMORY[0x1E69E7CC0];
        *&v135 = sub_1AF43A958(MEMORY[0x1E69E7CC0]);
        *(&v135 + 1) = v53;
        v54 = *(v43 + 24);
        v114 = v43 + 24;

        a3 = v131;
        if ((v131 & 0x1000000000000000) == 0)
        {
          v55 = sub_1AF42B320(v54, 0);

          v54 = v55;
          a3 = v131;
        }

        v56 = v119;
        v140[0] = sub_1AF0D4098(v52, sub_1AF44034C, sub_1AF0D3F10);
        v134 = v52;
        if (v54 >> 62)
        {
          v57 = sub_1AFDFE108();
        }

        else
        {
          v57 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        sub_1AF4410E4(a3, sub_1AF4410A8);
        v58 = v124;

        if (v57)
        {
          v34 = 0;
          while (1)
          {
            if ((v54 & 0xC000000000000001) != 0)
            {
              v60 = MEMORY[0x1B2719C70](v34, v54);
              v58 = v124;
              v59 = v60;
            }

            else
            {
              v59 = *(v54 + 8 * v34 + 32);
            }

            sub_1AF3E2468(v59, 1, a3, v56 & 1, v58, v127, v132, v140, &v135, &v134);
            if (v40)
            {
              break;
            }

            ++v34;
            a3 = v131;
            v58 = v124;
            if (v57 == v34)
            {
              goto LABEL_33;
            }
          }

          sub_1AF4410E4(v131, sub_1AF441114);

          return v34;
        }

LABEL_33:

        sub_1AF4410E4(a3, sub_1AF441114);

        if (v134 >> 62)
        {
          v76 = sub_1AFDFE108();
        }

        else
        {
          v76 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v77 = v115;
        v78 = v126;
        a6 = v127;
        a4 = v56;
        if (v76)
        {

          sub_1AF48F6CC(v79);
        }

        a1 = v77;
        v71 = v78;
      }

      else
      {

        v71 = v126;
      }

      v34 = v128;
      sub_1AF3F32D0(1, a3, a4 & 1, a1, v71, v129, a6, v132, v133, v128, v125);
      if (v40)
      {
        goto LABEL_39;
      }

      v124 = 0;
      type metadata accessor for Node();
      type metadata accessor for AuthoringNode();
      if (swift_dynamicCastMetatype())
      {
        v81 = v34;
        v82 = a6;
        v83 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

        v85 = v81;
        v86 = v124;
        v87 = sub_1AF3D6B1C(v84, v133, v85, sub_1AF3FDCB4);
        v124 = v86;

        *(a1 + v83) = v87;
        a6 = v82;
      }
    }

    else
    {
      v124 = v35;
    }

    v119 = a4;
    v61 = a4 & 1;
    v62 = swift_allocObject();
    v34 = v132;
    *(v62 + 16) = a6;
    *(v62 + 24) = v34;
    v63 = v126;

    v64 = v131;
    sub_1AF4410E4(v131, sub_1AF4410A8);

    v65 = swift_allocObject();
    LODWORD(v116) = v130 & 1;
    *(v65 + 16) = v130 & 1;
    *(v65 + 24) = v64;
    *(v65 + 32) = v61;
    v66 = v129;
    *(v65 + 40) = v128;
    *(v65 + 48) = v63;
    *(v65 + 56) = v66;
    *(v65 + 64) = a6;
    v127 = a6;
    v67 = v133;
    *(v65 + 72) = v34;
    *(v65 + 80) = v67;
    v68 = v125;
    *(v65 + 88) = v125;
    v69 = swift_allocObject();
    *(v69 + 16) = sub_1AF449818;
    *(v69 + 24) = v65;
    *&v135 = v63;
    *(&v135 + 1) = a1;
    v136 = v66;
    v137 = sub_1AF449D48;
    v138 = v69;
    v139 = v68;
    swift_bridgeObjectRetain_n();

    v70 = v124;
    sub_1AF449DC0(&v135, v140);
    if (v70)
    {

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      return v34;
    }

    v72 = v128;
    v34 = v140[0];
    swift_isEscapingClosureAtFileLocation();

    v73 = v133;
    swift_isEscapingClosureAtFileLocation();

    sub_1AF3D9030(v74, a1, sub_1AF634138, sub_1AF449DA4, sub_1AF6B761C, sub_1AF849C40);
    v75 = swift_isUniquelyReferenced_nonNull_native();
    *&v135 = *v73;
    *v73 = 0x8000000000000000;
    sub_1AF850FDC(0, a1, v75);
    *v73 = v135;

    if ((v130 & 1) == 0)
    {
      sub_1AF3F32D0(v116, v131, v119 & 1, a1, v126, v66, v127, v132, v73, v72, v125);
      if (*a1 == _TtC3VFX21AuthoringSubGraphNode)
      {
        if (a1)
        {
          v88 = *(a1 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph);
          v89 = swift_dynamicCastClass();
          if (v89)
          {
            v90 = v89;
            v126 = v34;
            v91 = v123;
            v92 = *(v122 + 16);
            v93 = v120;
            v92(v120, a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v123);
            v92(v117, v93, v91);
            v94 = v129;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v94 = sub_1AF4276E0(0, v94[2] + 1, 1, v94, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
            }

            v96 = v94[2];
            v95 = v94[3];
            v129 = v94;
            v130 = v88;
            if (v96 >= v95 >> 1)
            {
              v129 = sub_1AF4276E0(v95 > 1, v96 + 1, 1, v129, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
            }

            v98 = v122;
            v97 = v123;
            (*(v122 + 8))(v93, v123);
            v99 = v129;
            v129[2] = v96 + 1;
            (*(v98 + 32))(v99 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v96, v117, v97);
            v100 = MEMORY[0x1E69E7CC0];
            *&v135 = sub_1AF43A958(MEMORY[0x1E69E7CC0]);
            *(&v135 + 1) = v101;
            v102 = *(v90 + 24);

            v125 = v90 + 24;
            if ((v131 & 0x1000000000000000) == 0)
            {
              v103 = sub_1AF42B320(v102, 0);

              v102 = v103;
            }

            v140[0] = sub_1AF0D4098(v100, sub_1AF44034C, sub_1AF0D3F10);
            v134 = v100;
            if (v102 >> 62)
            {
              v104 = sub_1AFDFE108();
            }

            else
            {
              v104 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v115 = a1;
            sub_1AF4410E4(v131, sub_1AF4410A8);

            if (v104)
            {
              for (i = 0; i != v104; ++i)
              {
                v106 = v131;
                if ((v102 & 0xC000000000000001) != 0)
                {
                  v107 = MEMORY[0x1B2719C70](i, v102);
                }

                else
                {
                  v107 = *(v102 + 8 * i + 32);
                }

                sub_1AF3E2468(v107, v116, v106, v119 & 1, v129, v127, v132, v140, &v135, &v134);
              }
            }

            sub_1AF4410E4(v131, sub_1AF441114);

            if (v134 >> 62)
            {
              v108 = sub_1AFDFE108();
            }

            else
            {
              v108 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            a1 = v115;
            v109 = v133;
            v34 = v126;
            if (v108)
            {

              sub_1AF48F6CC(v110);
            }

            v73 = v109;
          }
        }
      }

      type metadata accessor for Node();
      type metadata accessor for AuthoringNode();
      if (swift_dynamicCastMetatype())
      {
        v111 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

        v113 = sub_1AF3D6B1C(v112, v73, v128, sub_1AF3FDCB4);

        *(a1 + v111) = v113;

        return v34;
      }
    }

LABEL_39:

    return v34;
  }

  v35 = v11;
  sub_1AF0D3F10(a1);
  if ((v36 & 1) == 0)
  {
    v37 = v133;
    goto LABEL_8;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF3E3638(uint64_t a1, int a2, unint64_t a3, int a4, __objc2_class **a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9, uint64_t a10)
{
  v130 = a6;
  v127 = a3;
  v128 = a5;
  LODWORD(v133) = a2;
  v15 = a9;
  v16 = *v10;
  v17 = sub_1AFDFC318();
  v18 = *(v17 - 8);
  v124 = v17;
  v125 = v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v122 = &v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v121 = &v116 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = (&v116 - v26);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v116 - v30;
  v32 = *a9;
  if (*(*a9 + 16))
  {
    v33 = sub_1AF0D3F10(a1);
    if (v34)
    {
      v27 = *(*(v32 + 56) + 8 * v33);

      return v27;
    }
  }

  v131 = a1;
  if (!*(*a8 + 16))
  {
    v35 = v133;
    goto LABEL_8;
  }

  sub_1AF0D3F10(v131);
  v35 = v133;
  if ((v36 & 1) == 0)
  {
LABEL_8:
    v126 = a7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v135 = *a8;
    *a8 = 0x8000000000000000;
    v38 = v131;
    sub_1AF850FDC(1, v131, isUniquelyReferenced_nonNull_native);
    *a8 = v135;

    if (a4)
    {
      v132 = sub_1AF96FB80(1);
      v39 = a10;
      if ((v35 & 1) == 0)
      {
LABEL_10:
        v40 = a4;
        v123 = v39;
        v120 = a8;
        v41 = v127;
        v119 = v16;
        v27 = v128;
        goto LABEL_35;
      }
    }

    else
    {

      v132 = v38;
      v39 = a10;
      if ((v35 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v42 = v129;
    v43 = v130;
    if (*v132 == _TtC3VFX12SubGraphNode && (v44 = *(v132 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph)) != 0)
    {
      v123 = v39;
      v45 = v130;
      v46 = swift_dynamicCastClass();
      if (v46)
      {
        v120 = v46;
        v119 = v16;
        v116 = a9;
        v47 = v124;
        v48 = *(v125 + 16);
        v48(v31, v132 + OBJC_IVAR____TtC3VFX4Node_authoringID, v124);
        v48(v27, v31, v47);
        v117 = v44;

        v49 = v128;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_1AF4276E0(0, &v128[2]->isa + 1, 1, v128, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v51 = v49[2];
        v50 = v49[3];
        if (v51 >= v50 >> 1)
        {
          v49 = sub_1AF4276E0(v50 > 1, v51 + 1, 1, v49, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v53 = v124;
        v52 = v125;
        (*(v125 + 8))(v31, v124);
        v49[2] = v51 + 1;
        (*(v52 + 32))(v49 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v51, v27, v53);
        v54 = v134;
        v55 = sub_1AF3FC1C0(v130, v126, 1, v127, a4 & 1, v49);
        v57 = v54;
        if (v54)
        {

          goto LABEL_38;
        }

        v58 = v55;
        v59 = v56;

        v60 = *(v59 + 16);
        if (v60)
        {
          v120 = a8;
          v134 = 0;
          *&v135 = MEMORY[0x1E69E7CC0];
          sub_1AFDFE368();
          v61 = 32;
          v38 = v131;
          do
          {
            if (*(v58 + 16))
            {
              sub_1AF0D3F10(*(v59 + v61));
              if (v62)
              {
              }
            }

            sub_1AFDFE328();
            sub_1AFDFE398();
            sub_1AFDFE3A8();
            sub_1AFDFE348();
            v61 += 8;
            --v60;
          }

          while (v60);

          v57 = v134;
          v63 = v135;
          a8 = v120;
        }

        else
        {

          v63 = MEMORY[0x1E69E7CC0];
          v38 = v131;
        }

        v64 = v132;
        v65 = v119;
        v66 = swift_allocObject();
        *(v66 + 16) = v63;
        v16 = v65;
        *(v64 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = v66;

        v15 = v116;
        v27 = v128;
        v43 = v130;
      }

      else
      {
        v27 = v128;
        v43 = v45;
        v57 = v134;
      }

      v42 = v129;
      v39 = v123;
    }

    else
    {
      v27 = v128;
      v57 = v134;
    }

    v67 = a4 & 1;
    v68 = a4;
    v41 = v127;
    sub_1AF3F4928(1, v127, v67, v38, v42, v27, v43, v126, a8, v15, v39);
    if (v57)
    {
      goto LABEL_38;
    }

    v40 = v68;
    v123 = v39;
    v119 = v16;
    v69 = v132;

    v120 = a8;
    v71 = sub_1AF3D76CC(v70, a8, v15);
    v134 = 0;

    v69[2] = v71;

LABEL_35:
    v118 = v40;
    v72 = v40 & 1;
    v73 = swift_allocObject();
    v75 = v129;
    v74 = v130;
    v76 = v126;
    *(v73 + 16) = v130;
    *(v73 + 24) = v76;

    sub_1AF4410E4(v41, sub_1AF4410A8);

    v77 = swift_allocObject();
    LODWORD(v117) = v133 & 1;
    *(v77 + 16) = v133 & 1;
    *(v77 + 24) = v41;
    *(v77 + 32) = v72;
    *(v77 + 40) = v15;
    *(v77 + 48) = v75;
    *(v77 + 56) = v27;
    *(v77 + 64) = v74;
    *(v77 + 72) = v76;
    v78 = v120;
    v79 = v123;
    *(v77 + 80) = v120;
    *(v77 + 88) = v79;
    v80 = v15;
    v81 = swift_allocObject();
    *(v81 + 16) = sub_1AF4471D0;
    *(v81 + 24) = v77;
    *&v135 = v75;
    *(&v135 + 1) = v132;
    v136 = v27;
    v137 = sub_1AF449D48;
    v138 = v81;
    v139 = v79;
    swift_bridgeObjectRetain_n();

    v82 = v134;
    sub_1AF449DC0(&v135, &v140);
    v134 = v82;
    if (v82)
    {

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      return v27;
    }

    v27 = v140;
    v83 = v80;
    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();

    v85 = v131;
    sub_1AF3D8F00(v84, v131, sub_1AF634178, sub_1AF6B761C, sub_1AF849498);

    v86 = swift_isUniquelyReferenced_nonNull_native();
    *&v135 = *v78;
    *v78 = 0x8000000000000000;
    sub_1AF850FDC(0, v85, v86);
    *v78 = v135;

    if (v133)
    {
LABEL_38:

      return v27;
    }

    v88 = v83;
    v89 = v78;
    v115 = v79;
    v90 = v117;
    v91 = v134;
    sub_1AF3F4928(v117, v127, v118 & 1, v85, v129, v128, v130, v126, v78, v88, v115);
    if (v91)
    {
LABEL_41:

      return v27;
    }

    if (*v27 == _TtC3VFX12SubGraphNode)
    {
      v92 = *(v27 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph);
      if (v92)
      {
        if (swift_dynamicCastClass())
        {
          v93 = v124;
          v94 = *(v125 + 16);
          v133 = v92;
          v95 = v121;
          v94(v121, v27 + OBJC_IVAR____TtC3VFX4Node_authoringID, v124);
          v94(v122, v95, v93);

          v96 = swift_isUniquelyReferenced_nonNull_native();
          v116 = v88;
          if ((v96 & 1) == 0)
          {
            v128 = sub_1AF4276E0(0, &v128[2]->isa + 1, 1, v128, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v98 = v128[2];
          v97 = v128[3];
          v134 = 0;
          v89 = v120;
          v99 = v125;
          if (v98 >= v97 >> 1)
          {
            v114 = sub_1AF4276E0(v97 > 1, v98 + 1, 1, v128, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
            v99 = v125;
            v128 = v114;
          }

          v100 = v124;
          (*(v99 + 8))(v121, v124);
          v101 = v128;
          v128[2] = (v98 + 1);
          (*(v99 + 32))(v101 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v98, v122, v100);
          v102 = v134;
          v103 = sub_1AF3FC1C0(v130, v126, v90, v127, v118 & 1, v101);
          if (v102)
          {

            goto LABEL_41;
          }

          v105 = v103;
          v106 = v104;

          v107 = *(v106 + 16);
          if (v107)
          {
            v134 = 0;
            *&v135 = MEMORY[0x1E69E7CC0];
            sub_1AFDFE368();
            v108 = 32;
            do
            {
              if (*(v105 + 16))
              {
                sub_1AF0D3F10(*(v106 + v108));
                if (v109)
                {
                }
              }

              sub_1AFDFE328();
              sub_1AFDFE398();
              sub_1AFDFE3A8();
              sub_1AFDFE348();
              v108 += 8;
              --v107;
            }

            while (v107);

            v110 = v135;
          }

          else
          {

            v110 = MEMORY[0x1E69E7CC0];
          }

          v111 = swift_allocObject();
          *(v111 + 16) = v110;
          *(v27 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = v111;

          v88 = v116;
        }
      }
    }

    v113 = sub_1AF3D76CC(v112, v89, v88);

    v27[2] = v113;

    return v27;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF3E4408(uint64_t a1, int a2, unint64_t a3, int a4, void *a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9, char *a10)
{
  v12 = v11;
  v110 = a3;
  v111 = a7;
  v108 = a5;
  LODWORD(v112) = a2;
  v17 = a9;
  v103 = *v10;
  v18 = sub_1AFDFC318();
  v104 = *(v18 - 8);
  v105 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v102 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v101 = &v94 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v94 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v94 - v30;
  v32 = *a9;
  if (*(*a9 + 16))
  {
    v33 = sub_1AF0D3F10(a1);
    if (v34)
    {
      v27 = *(*(v32 + 56) + 8 * v33);

      return v27;
    }
  }

  if (!*(*a8 + 16) || (sub_1AF0D3F10(a1), (v35 & 1) == 0))
  {
    v107 = a10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v113 = *a8;
    *a8 = 0x8000000000000000;
    sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
    *a8 = v113;

    sub_1AF449890(0, &unk_1EB63F440, type metadata accessor for GraphCodeGen.CFGNode, MEMORY[0x1E69E6720]);
    v99 = a4;
    if (v112)
    {
      v38 = v37;
      if (*a1 == _TtC3VFX12SubGraphNode)
      {
        v39 = *(a1 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph);
        if (v39 && (v40 = swift_dynamicCastClass()) != 0)
        {
          v94 = v40;
          v96 = v38;
          v100 = a8;
          v41 = a6;
          v42 = v108;
          v106 = v11;
          v98 = a9;
          v43 = v105;
          v44 = *(v104 + 16);
          v44(v31, a1 + OBJC_IVAR____TtC3VFX4Node_authoringID, v105);
          v44(v27, v31, v43);

          v95 = v39;

          v45 = v42;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v45 = sub_1AF4276E0(0, v108[2] + 1, 1, v108, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v47 = v45[2];
          v46 = v45[3];
          LOBYTE(a4) = v99;
          v97 = v41;
          if (v47 >= v46 >> 1)
          {
            v45 = sub_1AF4276E0(v46 > 1, v47 + 1, 1, v45, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v48 = v104;
          v49 = v105;
          (*(v104 + 8))(v31, v105);
          v45[2] = v47 + 1;
          (*(v48 + 32))(v45 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v47, v27, v49);
          *&v113 = sub_1AF4415B4(MEMORY[0x1E69E7CC0]);
          *(&v113 + 1) = v50;
          v51 = v111;
          v52 = v97;
          v53 = v110;
          v54 = v106;
          (sub_1AF414A20)();
          v12 = v54;
          if (v54)
          {

LABEL_16:

            return v27;
          }

          v17 = v98;
          v27 = v108;
          v69 = v51;
          v68 = v53;
          a6 = v52;
          a8 = v100;
          v38 = v96;
        }

        else
        {

          v68 = v110;
          v69 = v111;
          v27 = v108;
          LOBYTE(a4) = v99;
        }
      }

      else
      {

        v68 = v110;
        v69 = v111;
        v27 = v108;
      }

      sub_1AF3F5CE4(1, v68, a4 & 1, a1, v109, v27, a6, v69, a8, v17, v107);
      if (v12)
      {
LABEL_29:

        return v27;
      }

      type metadata accessor for Node();
      v96 = v38;
      v73 = swift_dynamicCastMetatype();
      v100 = a8;
      if (v73)
      {

        v75 = sub_1AF3D72E8(v74, a8);
        v106 = 0;

        *(a1 + 16) = v75;
      }

      else
      {
        v106 = 0;
        type metadata accessor for AuthoringNode();
      }
    }

    else
    {
      v96 = v37;
      v100 = a8;
      v106 = v11;
    }

    v98 = v17;
    v55 = a4 & 1;
    v56 = swift_allocObject();
    v57 = v111;
    *(v56 + 16) = a6;
    *(v56 + 24) = v57;
    v58 = v109;

    v59 = v17;
    v60 = a6;
    v61 = v110;
    sub_1AF4410E4(v110, sub_1AF4410A8);

    v62 = swift_allocObject();
    LODWORD(v95) = v112 & 1;
    *(v62 + 16) = v112 & 1;
    *(v62 + 24) = v61;
    *(v62 + 32) = v55;
    *(v62 + 40) = v59;
    *(v62 + 48) = v58;
    v63 = v108;
    *(v62 + 56) = v108;
    *(v62 + 64) = v60;
    v97 = v60;
    v64 = v58;
    v65 = v100;
    *(v62 + 72) = v57;
    *(v62 + 80) = v65;
    v27 = v107;
    *(v62 + 88) = v107;
    v66 = swift_allocObject();
    *(v66 + 16) = sub_1AF449D74;
    *(v66 + 24) = v62;
    *&v113 = v64;
    *(&v113 + 1) = a1;
    v114 = v63;
    v115 = sub_1AF449D48;
    v116 = v66;
    v117 = v27;
    swift_bridgeObjectRetain_n();

    v67 = v106;
    sub_1AF449DC0(&v113, &v118);
    if (v67)
    {

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();
    }

    else
    {
      v106 = 0;

      v27 = v118;
      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      v71 = v98;
      sub_1AF3D9030(v70, a1, sub_1AF6342E4, sub_1AF449DA4, sub_1AF6B761C, sub_1AF84CDCC);
      v72 = swift_isUniquelyReferenced_nonNull_native();
      *&v113 = *v65;
      *v65 = 0x8000000000000000;
      sub_1AF850FDC(0, a1, v72);
      *v65 = v113;

      if ((v112 & 1) == 0)
      {
        v76 = v106;
        sub_1AF3F5CE4(v95, v110, v99 & 1, a1, v109, v63, v97, v111, v65, v71, v107);
        if (!v76)
        {
          if (*a1 == _TtC3VFX12SubGraphNode)
          {
            v78 = v96;
            if (a1)
            {
              if (*(a1 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph))
              {
                v79 = swift_dynamicCastClass();
                if (v79)
                {
                  v109 = v79;
                  v96 = v78;
                  v106 = 0;
                  v80 = v105;
                  v81 = *(v104 + 16);
                  v112 = a1;
                  v82 = a1 + OBJC_IVAR____TtC3VFX4Node_authoringID;
                  v83 = v101;
                  v81(v101, v82, v105);
                  v81(v102, v83, v80);

                  v84 = v63;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v84 = sub_1AF4276E0(0, v63[2] + 1, 1, v63, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
                  }

                  v86 = v84[2];
                  v85 = v84[3];
                  v87 = v104;
                  if (v86 >= v85 >> 1)
                  {
                    v84 = sub_1AF4276E0(v85 > 1, v86 + 1, 1, v84, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
                  }

                  v88 = v83;
                  v89 = v105;
                  (*(v87 + 8))(v88, v105);
                  v84[2] = v86 + 1;
                  (*(v87 + 32))(v84 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v86, v102, v89);
                  *&v113 = sub_1AF4415B4(MEMORY[0x1E69E7CC0]);
                  *(&v113 + 1) = v90;
                  v91 = v106;
                  sub_1AF414A20(v97, v111, v95, v110, v99 & 1, v84, &v113);
                  if (v91)
                  {

                    goto LABEL_16;
                  }

                  a1 = v112;
                }
              }
            }
          }

          type metadata accessor for Node();
          if (swift_dynamicCastMetatype())
          {

            v93 = sub_1AF3D72E8(v92, v65);

            *(a1 + 16) = v93;
          }

          else
          {
            type metadata accessor for AuthoringNode();
          }

          return v27;
        }
      }
    }

    goto LABEL_29;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF3E50BC@<X0>(uint64_t a1@<X0>, int a2@<W1>, unint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t a11)
{
  v125 = a7;
  v123 = a6;
  v119 = a3;
  v120 = a5;
  v122 = a4;
  LODWORD(v158) = a2;
  v121 = v11;
  v115 = *v11;
  v116 = sub_1AFDFC318();
  v16 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116, v17);
  v113 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v112 = &v106 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v106 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v106 - v28;
  v124 = a10;
  v30 = *a10;
  if (*(*a10 + 16))
  {
    v31 = sub_1AF0D3F10(a1);
    if (v32)
    {
      v33 = *(v30 + 56) + 120 * v31;
      v35 = *(v33 + 32);
      v34 = *(v33 + 48);
      v36 = *(v33 + 16);
      v135 = *v33;
      v136 = v36;
      v137 = v35;
      v138 = v34;
      v37 = *(v33 + 64);
      v38 = *(v33 + 80);
      v39 = *(v33 + 96);
      v142 = *(v33 + 112);
      v140 = v38;
      v141 = v39;
      v139 = v37;
      v40 = *v33;
      v41 = *(v33 + 16);
      v42 = *(v33 + 48);
      *(a9 + 32) = *(v33 + 32);
      *(a9 + 48) = v42;
      *a9 = v40;
      *(a9 + 16) = v41;
      v43 = *(v33 + 64);
      v44 = *(v33 + 80);
      v45 = *(v33 + 96);
      *(a9 + 112) = *(v33 + 112);
      *(a9 + 80) = v44;
      *(a9 + 96) = v45;
      *(a9 + 64) = v43;
      return sub_1AF0D8094(&v135, &v127, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);
    }
  }

  if (*(*a8 + 16))
  {
    sub_1AF0D3F10(a1);
    if (v47)
    {
      result = sub_1AFDFE518();
      __break(1u);
      return result;
    }
  }

  v117 = a11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v135 = *a8;
  *a8 = 0x8000000000000000;
  sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
  *a8 = v135;

  sub_1AF449B08(0, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720]);
  v111 = v49;
  v110 = v16;
  if (v158)
  {
    if (*a1 == _TtC3VFX12SubGraphNode)
    {
      v50 = v125;
      if (*(a1 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph))
      {
        v109 = *(a1 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph);
        v51 = swift_dynamicCastClass();
        if (v51)
        {
          v108 = v51;
          v118 = v12;
          v52 = *(v16 + 16);
          v53 = v116;
          v52(v29, a1 + OBJC_IVAR____TtC3VFX4Node_authoringID, v116);
          v52(v25, v29, v53);

          v54 = v120;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v54 = sub_1AF4276E0(0, v120[2] + 1, 1, v120, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v56 = v54[2];
          v55 = v54[3];
          v107 = v56 + 1;
          if (v56 >= v55 >> 1)
          {
            v57 = sub_1AF4276E0(v55 > 1, v56 + 1, 1, v54, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          else
          {
            v57 = v54;
          }

          v58 = v110;
          v59 = v29;
          v60 = v116;
          (*(v110 + 8))(v59, v116);
          v57[2] = v107;
          (*(v58 + 32))(v57 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v56, v25, v60);
          *&v135 = sub_1AF4417E8(MEMORY[0x1E69E7CC0]);
          *(&v135 + 1) = v61;
          v62 = v125;
          v63 = v118;
          v64 = v119;
          sub_1AF416014(v123, v125, 1, v119, v122 & 1, v57, &v135);
          v118 = v63;
          if (v63)
          {
          }

          v50 = v62;
          v12 = v118;
          goto LABEL_24;
        }
      }
    }

    else
    {

      v50 = v125;
    }

    v64 = v119;
LABEL_24:
    v68 = v122;
    sub_1AF3F760C(1, v64, v122 & 1, a1, v121, v120, v123, v50, a8, v124, v117);
    if (v12)
    {
    }

    v65 = v64;
    v109 = a9;
    type metadata accessor for Node();
    v84 = swift_dynamicCastMetatype();
    v114 = a8;
    if (v84)
    {

      v66 = v124;
      v86 = sub_1AF3D72E8(v85, a8);
      v118 = 0;

      *(a1 + 16) = v86;
      v68 = v122;

      v67 = a1;
    }

    else
    {
      v118 = 0;
      type metadata accessor for AuthoringNode();
      v67 = a1;
      v66 = v124;
    }

    goto LABEL_17;
  }

  v65 = v119;
  v114 = a8;
  v109 = a9;
  v118 = v12;

  v66 = v124;
  v67 = a1;
  v68 = v122;
LABEL_17:
  LODWORD(v119) = v68 & 1;
  v69 = swift_allocObject();
  v70 = v66;
  v71 = v123;
  v72 = v125;
  *(v69 + 16) = v123;
  *(v69 + 24) = v72;
  v73 = v121;

  sub_1AF4410E4(v65, sub_1AF4410A8);

  v74 = swift_allocObject();
  LODWORD(v108) = v158 & 1;
  *(v74 + 16) = v158 & 1;
  *(v74 + 24) = v65;
  *(v74 + 32) = v119;
  *(v74 + 40) = v70;
  *(v74 + 48) = v73;
  v75 = v120;
  *(v74 + 56) = v120;
  *(v74 + 64) = v71;
  v76 = v114;
  *(v74 + 72) = v72;
  *(v74 + 80) = v76;
  v77 = v117;
  *(v74 + 88) = v117;
  v78 = swift_allocObject();
  *(v78 + 16) = sub_1AF449D70;
  *(v78 + 24) = v74;
  *&v143 = v73;
  *(&v143 + 1) = v67;
  v144 = v75;
  v145 = sub_1AF449D50;
  v146 = v78;
  v147 = v77;
  swift_bridgeObjectRetain_n();

  v79 = v118;
  sub_1AF449CCC(&v143);
  if (v79)
  {

    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();
  }

  v118 = 0;

  swift_isEscapingClosureAtFileLocation();

  swift_isEscapingClosureAtFileLocation();

  v139 = v152;
  v140 = v153;
  v141 = v154;
  v142 = v155;
  v135 = v148;
  v136 = v149;
  v137 = v150;
  v138 = v151;
  v156[0] = v148;
  v156[1] = v149;
  v156[2] = v150;
  v156[3] = v151;
  v156[4] = v152;
  v156[5] = v153;
  v156[6] = v154;
  v157 = v155;
  sub_1AF0D8094(&v135, &v127, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);
  v80 = v124;
  sub_1AF3D9194(v156, v67);
  v81 = v114;
  v82 = swift_isUniquelyReferenced_nonNull_native();
  *&v127 = *v81;
  *v81 = 0x8000000000000000;
  sub_1AF850FDC(0, v67, v82);
  *v81 = v127;

  if (v158)
  {

    v83 = v109;
  }

  else
  {
    v87 = v118;
    sub_1AF3F760C(v108, v65, v122 & 1, v67, v121, v75, v123, v125, v81, v80, v117);
    v83 = v109;
    if (v87)
    {
      v131 = v152;
      v132 = v153;
      v133 = v154;
      v134 = v155;
      v127 = v148;
      v128 = v149;
      v129 = v150;
      v130 = v151;
      sub_1AF444058(&v127, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);
    }

    if (*v67 == _TtC3VFX12SubGraphNode)
    {
      if (v67)
      {
        v88 = *(v67 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph);
        if (v88)
        {
          v89 = swift_dynamicCastClass();
          if (v89)
          {
            v121 = v89;
            v118 = 0;
            v90 = *(v110 + 16);
            v91 = v112;
            v158 = v88;
            v92 = v116;
            v90(v112, v67 + OBJC_IVAR____TtC3VFX4Node_authoringID, v116);
            v90(v113, v91, v92);
            v93 = v120;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v93 = sub_1AF4276E0(0, v93[2] + 1, 1, v93, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
            }

            v95 = v93[2];
            v94 = v93[3];
            v96 = v93;
            v120 = (v95 + 1);
            if (v95 >= v94 >> 1)
            {
              v96 = sub_1AF4276E0(v94 > 1, v95 + 1, 1, v93, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
            }

            v97 = v110;
            v98 = v116;
            (*(v110 + 8))(v112, v116);
            v96[2] = v120;
            (*(v97 + 32))(v96 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v95, v113, v98);
            v126[0] = sub_1AF4417E8(MEMORY[0x1E69E7CC0]);
            v126[1] = v99;
            v100 = v118;
            sub_1AF416014(v123, v125, v108, v65, v122 & 1, v96, v126);
            if (v100)
            {

              v131 = v152;
              v132 = v153;
              v133 = v154;
              v134 = v155;
              v127 = v148;
              v128 = v149;
              v129 = v150;
              v130 = v151;
              sub_1AF444058(&v127, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);
            }
          }
        }
      }
    }

    type metadata accessor for Node();
    if (swift_dynamicCastMetatype())
    {

      v102 = sub_1AF3D72E8(v101, v81);

      *(v67 + 16) = v102;
    }

    else
    {
      type metadata accessor for AuthoringNode();
    }
  }

  v103 = v153;
  *(v83 + 64) = v152;
  *(v83 + 80) = v103;
  *(v83 + 96) = v154;
  *(v83 + 112) = v155;
  v104 = v149;
  *v83 = v148;
  *(v83 + 16) = v104;
  v105 = v151;
  *(v83 + 32) = v150;
  *(v83 + 48) = v105;
  return result;
}

uint64_t sub_1AF3E5F1C(uint64_t a1, int a2, unint64_t a3, int a4, __objc2_class **a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v154 = a3;
  v155 = a7;
  LODWORD(v156) = a2;
  v146 = *v10;
  v16 = sub_1AFDFC318();
  v147 = *(v16 - 8);
  v148 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v143 = &v140 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v142 = &v140 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v140 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v140 - v28;
  v30 = *a9;
  if (*(*a9 + 16))
  {
    v31 = sub_1AF0D3F10(a1);
    if (v32)
    {
      return *(*(v30 + 56) + 8 * v31);
    }
  }

  v157 = a1;
  if (!*(*a8 + 16) || (sub_1AF0D3F10(v157), (v34 & 1) == 0))
  {
    v150 = a5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v160 = *a8;
    *a8 = 0x8000000000000000;
    v33 = v157;
    sub_1AF850FDC(1, v157, isUniquelyReferenced_nonNull_native);
    *a8 = v160;

    v36 = type metadata accessor for AuthoringNode();
    v166 = v33;
    v151 = a9;
    v144 = v36;
    if ((a4 & 1) != 0 && v36 == MEMORY[0x1E69E6530])
    {
      cache = (*v33)[7].cache;

      v33 = cache(1);
      v166 = v33;
    }

    else
    {
    }

    v38 = a10;
    v152 = a6;
    v149 = a10;
    if (v156)
    {
      v39 = v151;
      v40 = v158;
      if (*v33 == _TtC3VFX21AuthoringSubGraphNode)
      {
        v41 = *(v33 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph);
        v42 = swift_dynamicCastClass();
        if (v42)
        {
          v140 = v42;
          v43 = *(v147 + 16);
          v44 = v33 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
          v45 = v148;
          v43(v29, v44, v148);
          v43(v25, v29, v45);

          v33 = v150;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = sub_1AF4276E0(0, &v150[2]->isa + 1, 1, v150, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v47 = v33[2];
          v46 = v33[3];
          v141 = v41;
          if (v47 >= v46 >> 1)
          {
            v33 = sub_1AF4276E0(v46 > 1, v47 + 1, 1, v33, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v48 = v147;
          v49 = v29;
          v50 = v148;
          (*(v147 + 8))(v49, v148);
          v33[2] = (v47 + 1);
          (*(v48 + 32))(v33 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v47, v25, v50);
          a6 = v152;
          v51 = v158;
          v52 = sub_1AF3FC510(v152, v155, 1, v154, a4 & 1, v33, sub_1AF41774C, type metadata accessor for AuthoringNode, _s11DeletedNodeCMa_0);
          if (v51)
          {
            goto LABEL_18;
          }

          v101 = v52;
          v102 = v53;
          v103 = 0;
          v104 = MEMORY[0x1E69E6530];

          if (v144 == v104)
          {
            v108 = *(v102 + 16);
            if (v108)
            {
              *&v160 = MEMORY[0x1E69E7CC0];
              sub_1AFDFE368();
              v109 = 32;
              v158 = 0;
              do
              {
                v110 = *(v101 + 16);
                if (v110)
                {
                  v111 = sub_1AF0D3F10(*(v102 + v109));
                  if (v112)
                  {
                    v110 = *(*(v101 + 56) + 8 * v111);
                  }

                  else
                  {
                    v110 = 0;
                  }
                }

                v159 = v110;
                swift_dynamicCast();
                sub_1AFDFE328();
                sub_1AFDFE398();
                sub_1AFDFE3A8();
                sub_1AFDFE348();
                v109 += 8;
                --v108;
                v103 = v158;
                a6 = v152;
              }

              while (v108);

              v113 = v160;
            }

            else
            {

              v113 = MEMORY[0x1E69E7CC0];
            }

            v114 = v166;
            v115 = swift_allocObject();
            v116 = MEMORY[0x1E69E7CC0];
            v115->cache = 0;
            v115->vtable = v116;
            v115->info = 0;
            v115[1].isa = 0;

            v115[1].superclass = sub_1AF42B820(v116, sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
            sub_1AFDFC308();

            v115->vtable = v113;

            v33 = *(v114 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph);
            *(v114 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph) = v115;

            v105 = v150;
            v39 = v151;
            v106 = v153;
            v107 = v157;
          }

          else
          {

            v105 = v150;
            v39 = v151;
            v106 = v153;
            v107 = v157;
            v33 = v141;
          }

          v69 = v105;
          v70 = v155;
          v71 = v106;
          v72 = v107;
          v40 = v103;
        }

        else
        {
          v69 = v150;
          v70 = v155;
          v71 = v153;
          v72 = v157;
        }

        v38 = v149;
      }

      else
      {
        v69 = v150;
        v70 = v155;
        v71 = v153;
        v72 = v157;
      }

      v139 = v39;
      v117 = v154;
      sub_1AF3F90D4(1, v154, a4 & 1, v72, v71, v69, a6, v70, a8, v139, v38);
      if (v40)
      {
        goto LABEL_58;
      }

      v158 = 0;
      v54 = v117;
      type metadata accessor for Node();
      v119 = swift_dynamicCastMetatype();
      v33 = v166;
      v145 = a8;
      if (v119)
      {
        v120 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

        v122 = v158;
        v123 = sub_1AF3D6B1C(v121, a8, v151, sub_1AF3FE1F8);
        v158 = v122;

        *(v33 + v120) = v123;
      }
    }

    else
    {
      v54 = v154;
      v145 = a8;
    }

    v55 = a4 & 1;
    v56 = swift_allocObject();
    LODWORD(v141) = a4;
    v57 = v152;
    v58 = v153;
    v59 = v155;
    *(v56 + 16) = v152;
    *(v56 + 24) = v59;

    v60 = v54;
    sub_1AF4410E4(v54, sub_1AF4410A8);

    v61 = swift_allocObject();
    v62 = v156 & 1;
    *(v61 + 16) = v62;
    *(v61 + 24) = v60;
    *(v61 + 32) = v55;
    v64 = v150;
    v63 = v151;
    *(v61 + 40) = v151;
    *(v61 + 48) = v58;
    *(v61 + 56) = v64;
    *(v61 + 64) = v57;
    v65 = v145;
    *(v61 + 72) = v59;
    *(v61 + 80) = v65;
    v66 = v149;
    *(v61 + 88) = v149;
    v67 = swift_allocObject();
    *(v67 + 16) = sub_1AF441214;
    *(v67 + 24) = v61;
    *&v160 = v58;
    *(&v160 + 1) = v33;
    v161 = v64;
    v162 = sub_1AF44122C;
    v163 = v67;
    v164 = v66;

    v68 = v158;
    sub_1AF4411F8(&v160, &v165);
    if (v68)
    {

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      goto LABEL_58;
    }

    LODWORD(v140) = v62;
    v158 = 0;

    v33 = v165;
    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();

    sub_1AF6345D0(v33, v157);
    v73 = v145;
    v74 = v154;
    v75 = v152;
    v76 = v141;
    v77 = v63;
    if (v78)
    {
      v79 = *(v63 + 8);
      v80 = swift_isUniquelyReferenced_nonNull_native();
      *(v63 + 8) = v79;
      if ((v80 & 1) == 0)
      {
        v79 = sub_1AF422330(0, *(v79 + 2) + 1, 1, v79, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
        *(v63 + 8) = v79;
      }

      v82 = *(v79 + 2);
      v81 = *(v79 + 3);
      if (v82 >= v81 >> 1)
      {
        v79 = sub_1AF422330(v81 > 1, v82 + 1, 1, v79, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      }

      *(v79 + 2) = v82 + 1;
      *&v79[8 * v82 + 32] = v157;
      v77 = v151;
      *(v151 + 8) = v79;
    }

    v83 = v140;
    if (v144 == MEMORY[0x1E69E6530])
    {
      *&v160 = v33;

      swift_dynamicCast();
    }

    v84 = swift_isUniquelyReferenced_nonNull_native();
    *&v160 = *v73;
    *v73 = 0x8000000000000000;
    v85 = v157;
    sub_1AF850FDC(0, v157, v84);
    *v73 = v160;

    v86 = v158;
    if (v156)
    {
      goto LABEL_58;
    }

    sub_1AF3F90D4(v83, v74, v76 & 1, v85, v153, v150, v75, v155, v73, v77, v149);
    if (v86)
    {
      goto LABEL_58;
    }

    v87 = v166;
    if (*v166 == _TtC3VFX21AuthoringSubGraphNode)
    {
      v88 = *(v166 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph);
      if (swift_dynamicCastClass())
      {
        v158 = 0;
        v89 = v147;
        v157 = v88;
        v90 = *(v147 + 16);
        v91 = v87 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
        v92 = v142;
        v93 = v148;
        v90(v142, v91, v148);
        v90(v143, v92, v93);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v150 = sub_1AF4276E0(0, &v150[2]->isa + 1, 1, v150, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v95 = v150[2];
        v94 = v150[3];
        if (v95 >= v94 >> 1)
        {
          v150 = sub_1AF4276E0(v94 > 1, v95 + 1, 1, v150, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v96 = v148;
        (*(v89 + 8))(v142, v148);
        v97 = v150;
        v150[2] = (v95 + 1);
        (*(v89 + 32))(v97 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v95, v143, v96);
        v98 = v158;
        v99 = sub_1AF3FC510(v75, v155, v140, v154, v141 & 1, v97, sub_1AF41774C, type metadata accessor for AuthoringNode, _s11DeletedNodeCMa_0);
        if (v98)
        {
LABEL_18:

LABEL_58:

          return v33;
        }

        v124 = v99;
        v125 = v100;

        if (v144 == MEMORY[0x1E69E6530])
        {
          v158 = 0;
          v126 = *(v125 + 16);
          if (v126)
          {
            v156 = v125;
            *&v160 = MEMORY[0x1E69E7CC0];
            sub_1AFDFE368();
            v127 = 32;
            do
            {
              v128 = *(v124 + 16);
              if (v128)
              {
                v129 = sub_1AF0D3F10(*(v156 + v127));
                if (v130)
                {
                  v128 = *(*(v124 + 56) + 8 * v129);
                }

                else
                {
                  v128 = 0;
                }
              }

              v159 = v128;
              swift_dynamicCast();
              sub_1AFDFE328();
              sub_1AFDFE398();
              sub_1AFDFE3A8();
              sub_1AFDFE348();
              v127 += 8;
              --v126;
            }

            while (v126);

            v131 = v160;
          }

          else
          {

            v131 = MEMORY[0x1E69E7CC0];
          }

          v132 = v166;
          v133 = swift_allocObject();
          v133->cache = 0;
          v134 = MEMORY[0x1E69E7CC0];
          v133->vtable = MEMORY[0x1E69E7CC0];
          v133->info = 0;
          v133[1].isa = 0;

          v133[1].superclass = sub_1AF42B820(v134, sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
          sub_1AFDFC308();

          v133->vtable = v131;

          *(v132 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph) = v133;
        }

        else
        {
        }

        v77 = v151;
      }
    }

    type metadata accessor for Node();
    if (swift_dynamicCastMetatype())
    {
      v135 = v166;
      v136 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

      v138 = sub_1AF3D6B1C(v137, v73, v77, sub_1AF3FE1F8);

      *(v135 + v136) = v138;
    }

    goto LABEL_58;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF3E707C(uint64_t a1, int a2, unint64_t a3, int a4, __objc2_class **a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9, uint64_t a10)
{
  v12 = v11;
  v139 = a3;
  v140 = a7;
  v138 = a6;
  v141 = a2;
  v142 = a4;
  v16 = a9;
  v17 = *v10;
  v18 = sub_1AFDFC318();
  v19 = *(v18 - 8);
  v131 = v18;
  v132 = v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v128 = &v121 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v127 = &v121 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v121 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v121 - v31;
  v33 = *a9;
  if (*(*a9 + 16))
  {
    v34 = sub_1AF0D3F10(a1);
    if (v35)
    {
      return *(*(v33 + 56) + 8 * v34);
    }
  }

  v37 = *(*a8 + 16);
  v136 = a5;
  if (!v37 || (sub_1AF0D3F10(a1), (v38 & 1) == 0))
  {
    v126 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v144 = *a8;
    *a8 = 0x8000000000000000;
    sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
    *a8 = v144;

    v135 = type metadata accessor for Node();
    v150 = a1;

    v36 = a1;
    v40 = v142;
    if (v142)
    {
      v36 = a1;
      if (v135 == MEMORY[0x1E69E6530])
      {
        v36 = sub_1AF96FB80(1);
        v150 = v36;

        v40 = v142;
      }
    }

    v41 = a10;
    v134 = a10;
    if ((v141 & 1) == 0)
    {
      v125 = a1;
      v133 = a8;
      v129 = v11;
      v130 = a9;
      v42 = v140;
      goto LABEL_30;
    }

    v42 = v140;
    if (*v36 == _TtC3VFX12SubGraphNode)
    {
      v43 = *(v36 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph);
      if (v43)
      {
        v44 = swift_dynamicCastClass();
        if (v44)
        {
          v124 = v44;
          v129 = v11;
          v45 = *(v132 + 16);
          v46 = v36 + OBJC_IVAR____TtC3VFX4Node_authoringID;
          v47 = v131;
          v45(v32, v46, v131);
          v45(v28, v32, v47);
          v123 = v43;

          v36 = v136;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = sub_1AF4276E0(0, &v136[2]->isa + 1, 1, v136, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v49 = v36[2];
          v48 = v36[3];
          v122 = (v49 + 1);
          if (v49 >= v48 >> 1)
          {
            v36 = sub_1AF4276E0(v48 > 1, v49 + 1, 1, v36, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v41 = v134;
          v50 = v132;
          v51 = v32;
          v52 = v131;
          (*(v132 + 8))(v51, v131);
          v36[2] = v122;
          (*(v50 + 32))(v36 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v49, v28, v52);
          v53 = v129;
          v54 = sub_1AF3FC510(v138, v140, 1, v139, v142 & 1, v36, sub_1AF417BB0, type metadata accessor for Node, _s11DeletedNodeCMa);
          if (v53)
          {
            goto LABEL_18;
          }

          v98 = v54;
          v124 = v55;
          v133 = a8;
          v129 = 0;
          v130 = a9;
          v99 = MEMORY[0x1E69E6530];

          if (v135 == v99)
          {
            v36 = *(v124 + 16);
            if (v36)
            {
              *&v144 = MEMORY[0x1E69E7CC0];
              sub_1AFDFE368();
              v100 = 32;
              v101 = v98;
              do
              {
                v102 = *(v98 + 16);
                if (v102)
                {
                  v103 = sub_1AF0D3F10(*(v124 + v100));
                  if (v104)
                  {
                    v102 = *(*(v98 + 56) + 8 * v103);
                  }

                  else
                  {
                    v102 = 0;
                  }
                }

                v143 = v102;
                swift_dynamicCast();
                sub_1AFDFE328();
                sub_1AFDFE398();
                sub_1AFDFE3A8();
                sub_1AFDFE348();
                v100 += 8;
                v36 = (v36 - 1);
                v98 = v101;
              }

              while (v36);

              v105 = v144;
            }

            else
            {

              v105 = MEMORY[0x1E69E7CC0];
            }

            v106 = v150;
            v107 = swift_allocObject();
            *(v107 + 16) = v105;
            *(v106 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = v107;
          }

          else
          {
          }

          v12 = v129;
          v16 = v130;
          a8 = v133;
          v56 = v136;
          v57 = v139;
          v42 = v140;
          v58 = v138;
          v40 = v142;
          goto LABEL_21;
        }

        v56 = v136;
        v58 = v138;
        v57 = v139;
        v40 = v142;
      }

      else
      {
        v56 = v136;
        v58 = v138;
        v57 = v139;
      }

      v59 = v137;
      v41 = v134;
      goto LABEL_25;
    }

    v56 = v136;
    v58 = v138;
    v57 = v139;
LABEL_21:
    v59 = v137;
LABEL_25:
    sub_1AF3FA610(1, v57, v40 & 1, a1, v59, v56, v58, v42, a8, v16, v41);
    if (v12)
    {
LABEL_33:

      return v36;
    }

    v60 = swift_dynamicCastMetatype();
    v133 = a8;
    v130 = v16;
    v125 = a1;
    if (v60)
    {
      v36 = v150;

      v62 = sub_1AF3D7890(v61, a8, v16);
      v129 = 0;

      v36[2] = v62;

      v42 = v140;
    }

    else
    {
      v129 = 0;
      type metadata accessor for AuthoringNode();
      v36 = v150;
    }

    v40 = v142;
LABEL_30:
    v63 = v40 & 1;
    v64 = swift_allocObject();
    v66 = v137;
    v65 = v138;
    *(v64 + 16) = v138;
    *(v64 + 24) = v42;

    v67 = v139;
    sub_1AF4410E4(v139, sub_1AF4410A8);

    v68 = swift_allocObject();
    v69 = v141 & 1;
    *(v68 + 16) = v69;
    *(v68 + 24) = v67;
    *(v68 + 32) = v63;
    *(v68 + 40) = v130;
    *(v68 + 48) = v66;
    v70 = v136;
    *(v68 + 56) = v136;
    *(v68 + 64) = v65;
    v71 = v133;
    v72 = v134;
    *(v68 + 72) = v42;
    *(v68 + 80) = v71;
    *(v68 + 88) = v72;
    v73 = swift_allocObject();
    *(v73 + 16) = sub_1AF441F14;
    *(v73 + 24) = v68;
    *&v144 = v66;
    *(&v144 + 1) = v36;
    v145 = v70;
    v146 = sub_1AF449D48;
    v147 = v73;
    v148 = v72;

    v74 = v129;
    sub_1AF449DC0(&v144, &v149);
    if (v74)
    {

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();
      goto LABEL_32;
    }

    LODWORD(v124) = v69;

    v36 = v149;
    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();

    v76 = v125;
    v77 = v130;
    sub_1AF6345D0(v36, v125);
    if (v78)
    {
      v79 = v77[1];
      v80 = swift_isUniquelyReferenced_nonNull_native();
      v77[1] = v79;
      if ((v80 & 1) == 0)
      {
        v79 = sub_1AF422330(0, *(v79 + 2) + 1, 1, v79, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
        v77[1] = v79;
      }

      v82 = *(v79 + 2);
      v81 = *(v79 + 3);
      if (v82 >= v81 >> 1)
      {
        v79 = sub_1AF422330(v81 > 1, v82 + 1, 1, v79, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      }

      *(v79 + 2) = v82 + 1;
      *&v79[8 * v82 + 32] = v76;
      v77[1] = v79;
    }

    if (v135 == MEMORY[0x1E69E6530])
    {
      *&v144 = v36;

      swift_dynamicCast();
    }

    v83 = v133;
    v84 = swift_isUniquelyReferenced_nonNull_native();
    *&v144 = *v83;
    *v83 = 0x8000000000000000;
    sub_1AF850FDC(0, v76, v84);
    *v83 = v144;

    if (v141)
    {
      goto LABEL_33;
    }

    sub_1AF3FA610(v124, v139, v142 & 1, v76, v137, v136, v138, v140, v83, v77, v72);
    v85 = v150;
    if (*v150 == _TtC3VFX12SubGraphNode)
    {
      v86 = *(v150 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph);
      if (v86)
      {
        if (swift_dynamicCastClass())
        {
          v129 = 0;
          v87 = v131;
          v88 = *(v132 + 16);
          v89 = v85 + OBJC_IVAR____TtC3VFX4Node_authoringID;
          v90 = v127;
          v88(v127, v89, v131);
          v88(v128, v90, v87);

          v123 = v86;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v136 = sub_1AF4276E0(0, &v136[2]->isa + 1, 1, v136, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v92 = v136[2];
          v91 = v136[3];
          v93 = v132;
          if (v92 >= v91 >> 1)
          {
            v136 = sub_1AF4276E0(v91 > 1, v92 + 1, 1, v136, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          (*(v93 + 8))(v127, v87);
          v94 = v136;
          v136[2] = (v92 + 1);
          (*(v93 + 32))(v94 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v92, v128, v87);
          v95 = v129;
          v96 = sub_1AF3FC510(v138, v140, v124, v139, v142 & 1, v94, sub_1AF417BB0, type metadata accessor for Node, _s11DeletedNodeCMa);
          if (v95)
          {
LABEL_18:

LABEL_32:

            goto LABEL_33;
          }

          v108 = v96;
          v109 = v97;

          if (v135 == MEMORY[0x1E69E6530])
          {
            v129 = 0;
            v130 = v77;
            v110 = *(v109 + 16);
            if (v110)
            {
              *&v144 = MEMORY[0x1E69E7CC0];
              sub_1AFDFE368();
              v111 = 32;
              do
              {
                v112 = *(v108 + 16);
                if (v112)
                {
                  v113 = sub_1AF0D3F10(*(v109 + v111));
                  if (v114)
                  {
                    v112 = *(*(v108 + 56) + 8 * v113);
                  }

                  else
                  {
                    v112 = 0;
                  }
                }

                v143 = v112;
                swift_dynamicCast();
                sub_1AFDFE328();
                sub_1AFDFE398();
                sub_1AFDFE3A8();
                sub_1AFDFE348();
                v111 += 8;
                --v110;
              }

              while (v110);

              v115 = v144;
            }

            else
            {

              v115 = MEMORY[0x1E69E7CC0];
            }

            v116 = v150;
            v117 = swift_allocObject();
            *(v117 + 16) = v115;
            *(v116 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = v117;

            v77 = v130;
          }

          else
          {
          }
        }
      }
    }

    if (swift_dynamicCastMetatype())
    {
      v118 = v150;

      v120 = sub_1AF3D7890(v119, v133, v77);

      v118[2] = v120;
    }

    else
    {
      type metadata accessor for AuthoringNode();
    }

    goto LABEL_33;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}