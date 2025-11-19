uint64_t sub_1B7A04F90()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B7A04FE8();
  }

  return result;
}

void sub_1B7A04FE8()
{
  v1 = v0;
  sub_1B7A9A210();
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8);
  sub_1B7A98D10();
  *(swift_allocObject() + 16) = xmmword_1B7AA28F0;
  sub_1B7A98D00();
  sub_1B7A98C40();
  sub_1B7A98C40();
  v2 = [*(v0 + 16) path];
  v3 = [v2 status];

  v8 = MEMORY[0x1E69E6370];
  LOBYTE(v7[0]) = (v3 & 0xFFFFFFFFFFFFFFFDLL) == 1;
  sub_1B7A98CE0();
  sub_1B7A05FE0(v7);
  sub_1B7A98C40();
  v8 = sub_1B7A99580();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v7);
  NWPathNetworkInquiry.interface.getter(boxed_opaque_existential_1Tm);
  sub_1B7A98CE0();
  sub_1B7A05FE0(v7);
  sub_1B7A99E40();

  __swift_destroy_boxed_opaque_existential_1(v9);
  v5 = *(v1 + OBJC_IVAR____TtC18_JetEngine_SwiftUI20NWPathNetworkInquiry_isInternetOfflineLock);
  os_unfair_lock_lock(v5 + 4);
  sub_1B7A06064();
  os_unfair_lock_unlock(v5 + 4);
  v6 = [objc_opt_self() defaultCenter];
  if (qword_1EBA45B60 != -1)
  {
    swift_once();
  }

  [v6 postNotificationName:qword_1EBA48368 object:v1];
}

id NWPathNetworkInquiry.__allocating_init()()
{
  result = [objc_opt_self() sharedDefaultEvaluator];
  if (result)
  {
    v1 = result;
    v2 = swift_allocObject();
    sub_1B7A049E8(v1);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t NWPathNetworkInquiry.deinit()
{
  v1 = v0;
  v2 = *(v0 + 24);

  os_unfair_lock_lock((v2 + 24));
  if (*(v2 + 16))
  {
    sub_1B7A96AE0();
  }

  os_unfair_lock_unlock((v2 + 24));

  v3 = OBJC_IVAR____TtC18_JetEngine_SwiftUI20NWPathNetworkInquiry__isInternetOffline;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48378);
  (*(*(v4 - 8) + 8))(v1 + v3, v4);

  return v1;
}

uint64_t NWPathNetworkInquiry.__deallocating_deinit()
{
  NWPathNetworkInquiry.deinit();

  return swift_deallocClassInstance();
}

uint64_t NWPathNetworkInquiry.isInternetOffline.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();

  return v1;
}

uint64_t sub_1B7A054D0@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();

  *a1 = v3;
  return result;
}

uint64_t sub_1B7A05550()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1B7A96F30();
}

uint64_t NWPathNetworkInquiry.$isInternetOffline.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48378);
  sub_1B7A96EF0();
  return swift_endAccess();
}

uint64_t sub_1B7A05638()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48378);
  sub_1B7A96EF0();
  return swift_endAccess();
}

uint64_t sub_1B7A056B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA483A0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48378);
  sub_1B7A96F00();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t NWPathNetworkInquiry.interface.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B7A99580();
  v15 = *(v3 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(v1 + 16) path];
  v8 = [v7 interface];

  if (v8)
  {
    v9 = [v8 type];

    if ((v9 - 1) > 3)
    {
      v10 = MEMORY[0x1E69AB1A8];
    }

    else
    {
      v10 = qword_1E7CB4A70[(v9 - 1)];
    }

    (*(v15 + 104))(v6, *v10, v3);
    return (*(v15 + 32))(a1, v6, v3);
  }

  else
  {
    v11 = *MEMORY[0x1E69AB1A0];
    v12 = *(v15 + 104);

    return v12(a1, v11, v3);
  }
}

id sub_1B7A05A00(SEL *a1)
{
  v3 = [*(v1 + 16) path];
  v4 = [v3 *a1];

  return v4;
}

uint64_t NWPathNetworkInquiry.observe(on:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v6 = sub_1B7A99BD0();
  if (qword_1EBA45B60 != -1)
  {
    swift_once();
  }

  v7 = qword_1EBA48368;
  v13 = v5;
  v12 = v2;
  sub_1B7999E90(a1, v11);
  v8 = v7;

  result = sub_1B7A99BC0();
  v10 = MEMORY[0x1E69AB3D0];
  a2[3] = v6;
  a2[4] = v10;
  *a2 = result;
  return result;
}

uint64_t sub_1B7A05B64(uint64_t a1)
{
  v1 = [*(a1 + 16) path];
  v2 = [v1 status];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();

  if (((v2 & 0xFFFFFFFFFFFFFFFDLL) != 1) != v4)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_1B7A96F30();
  }

  return result;
}

BOOL sub_1B7A05C78()
{
  v1 = [*(*v0 + 16) path];
  v2 = [v1 status];

  return (v2 & 0xFFFFFFFFFFFFFFFDLL) == 1;
}

id sub_1B7A05D10(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = [*(*v3 + 16) path];
  v6 = [v5 *a3];

  return v6;
}

uint64_t sub_1B7A05D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v7 = *v3;
  v8 = sub_1B7A99BD0();
  if (qword_1EBA45B60 != -1)
  {
    swift_once();
  }

  v9 = qword_1EBA48368;
  v15 = a2;
  v14 = v7;
  sub_1B7999E90(a1, v13);
  v10 = v9;

  result = sub_1B7A99BC0();
  v12 = MEMORY[0x1E69AB3D0];
  a3[3] = v8;
  a3[4] = v12;
  *a3 = result;
  return result;
}

uint64_t type metadata accessor for NWPathNetworkInquiry()
{
  result = qword_1EBA48388;
  if (!qword_1EBA48388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B7A05EA8()
{
  sub_1B7A05F6C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B7A05F6C()
{
  if (!qword_1EBA48398)
  {
    v0 = sub_1B7A96F50();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA48398);
    }
  }
}

uint64_t sub_1B7A05FE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B7A0608C()
{
  type metadata accessor for FlowStackTabsAuthority();
  swift_getWitnessTable();
  sub_1B7A974C0();
  if (v0 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    sub_1B7A98870();
    if (v1 <= 0x3F)
    {
      sub_1B7958DD8();
      if (v2 <= 0x3F)
      {
        sub_1B797CE50(319, qword_1EDC0EC28, &qword_1EBA47828);
        if (v3 <= 0x3F)
        {
          sub_1B79E1700();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1B7A061E4(unsigned __int16 *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  if (v6 >= 0)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(sub_1B7A99900() - 8);
  if (*(v9 + 64) <= 8uLL)
  {
    v10 = 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v5 + 80);
  if (!a2)
  {
    return 0;
  }

  v12 = v11 | 7;
  if (a2 <= v8)
  {
    goto LABEL_32;
  }

  v13 = *(v9 + 80) & 0xF8 | 7;
  v14 = v10 + ((v13 + ((((((((*(v5 + 64) - (((-17 - v11) | v11) + ((-17 - v11) | v12)) + 5) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 41) & ~v13) + 1;
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v8 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v18 < 2)
    {
LABEL_32:
      if (v8 == 0x7FFFFFFF)
      {
        v20 = *(a1 + 1);
        if (v20 >= 0xFFFFFFFF)
        {
          LODWORD(v20) = -1;
        }

        return (v20 + 1);
      }

      else
      {
        v21 = *(v5 + 48);

        return v21((v11 + ((((a1 + v12 + 16) & ~v12) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11, v6, AssociatedTypeWitness);
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_32;
  }

LABEL_21:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 > 3)
    {
      LODWORD(v14) = 4;
    }

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        LODWORD(v14) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v14) = *a1;
      }
    }

    else if (v14 == 1)
    {
      LODWORD(v14) = *a1;
    }

    else
    {
      LODWORD(v14) = *a1;
    }
  }

  return v8 + (v14 | v19) + 1;
}

void sub_1B7A064C4(_WORD *a1, uint64_t a2, unsigned int a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v28 = v7;
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  if (v8 >= 0)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(sub_1B7A99900() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v7 + 80);
  v14 = ((v13 + 16) & ~v13) + *(v7 + 64);
  v15 = *(v11 + 80) & 0xF8 | 7;
  v16 = v12 + ((v15 + ((((((((v14 + ((v13 + 16) & ~(v13 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 41) & ~v15) + 1;
  if (a3 <= v10)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v10 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v10 < a2)
  {
    v18 = ~v10 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_63:
              if (v17 == 2)
              {
                *(a1 + v16) = v19;
              }

              else
              {
                *(a1 + v16) = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *a1 = v22;
        *(a1 + 2) = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v17)
    {
      *(a1 + v16) = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *(a1 + v16) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *(a1 + v16) = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v17)
  {
    goto LABEL_36;
  }

  *(a1 + v16) = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v10 == 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
    }

    else
    {
      *(a1 + 1) = (a2 - 1);
    }
  }

  else
  {
    v23 = ((a1 + (v13 | 7) + 16) & ~(v13 | 7));
    if (v9 >= a2)
    {
      v27 = *(v28 + 56);

      v27((v13 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13, a2, v8, AssociatedTypeWitness);
    }

    else
    {
      if (v14 <= 3)
      {
        v24 = ~(-1 << (8 * v14));
      }

      else
      {
        v24 = -1;
      }

      if (v14)
      {
        v25 = v24 & (~v9 + a2);
        if (v14 <= 3)
        {
          v26 = v14;
        }

        else
        {
          v26 = 4;
        }

        bzero(v23, v14);
        if (v26 > 2)
        {
          if (v26 == 3)
          {
            *v23 = v25;
            v23[2] = BYTE2(v25);
          }

          else
          {
            *v23 = v25;
          }
        }

        else if (v26 == 1)
        {
          *v23 = v25;
        }

        else
        {
          *v23 = v25;
        }
      }
    }
  }
}

uint64_t sub_1B7A068E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v13 = type metadata accessor for FlowStackTabView();
  v14 = a8 + v13[23];
  *v14 = swift_getKeyPath();
  v14[40] = 0;
  v15 = v13[24];
  *(a8 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for FlowStackTabsAuthority();

  swift_getWitnessTable();
  *a8 = sub_1B7A97490();
  a8[1] = v16;
  v17 = *(*a1 + 112);
  v18 = v13[19];
  swift_getAssociatedTypeWitness();
  v19 = sub_1B7A98870();
  (*(*(v19 - 8) + 16))(a8 + v18, a1 + v17, v19);

  v21 = (a8 + v13[20]);
  *v21 = a2;
  v21[1] = a3;
  v22 = (a8 + v13[21]);
  *v22 = a4;
  v22[1] = a5;
  v23 = (a8 + v13[22]);
  *v23 = a6;
  v23[1] = a7;
  return result;
}

uint64_t sub_1B7A06AFC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v136 = a2;
  v3 = a1[6];
  v133 = "idChangeNotification";
  v4 = a1[2];
  v148 = v3;
  v106 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v135 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v134 = &v101 - v5;
  v131 = sub_1B7A997E0();
  v130 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v128 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v129 = &v101 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v132 = &v101 - v10;
  v156 = *(a1 - 1);
  v151 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v127 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v145 = &v101 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v125 = &v101 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v120 = &v101 - v18;
  v147 = sub_1B7A98870();
  MEMORY[0x1EEE9AC00](v147);
  v146 = &v101 - v19;
  *&v153 = a1[5];
  v144 = type metadata accessor for FlowStackTabsAuthority.Tab();
  v141 = sub_1B7A9A6E0();
  *&v154 = a1[3];
  sub_1B7A97E00();
  v20 = sub_1B7A97590();
  v150 = a1[7];
  v21 = v150;
  v138 = sub_1B7A048FC();
  v169 = v21;
  v170 = v138;
  WitnessTable = swift_getWitnessTable();
  v159 = v20;
  v160 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v112 = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA481B8);
  v23 = sub_1B7A97590();
  v139 = a1;
  v24 = sub_1B7A98E50();
  v25 = a1[8];
  v155 = v25;
  v26 = sub_1B797EC34(&qword_1EBA481B0, &qword_1EBA481B8);
  v167 = v25;
  v168 = v26;
  v27 = swift_getWitnessTable();
  v166 = MEMORY[0x1E69E6168];
  v28 = swift_getWitnessTable();
  v159 = v23;
  v160 = v24;
  v161 = v27;
  v162 = v28;
  v29 = sub_1B7A987A0();
  v111 = v29;
  v30 = v141;
  v31 = swift_getWitnessTable();
  v110 = v31;
  v159 = v20;
  v160 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v109 = OpaqueTypeConformance2;
  v33 = swift_getWitnessTable();
  v108 = v33;
  v107 = swift_getWitnessTable();
  v159 = v30;
  v160 = OpaqueTypeMetadata2;
  v161 = v29;
  v162 = v31;
  v163 = OpaqueTypeConformance2;
  v164 = v33;
  v165 = v107;
  v34 = type metadata accessor for _FlowStackTabViewBody();
  v124 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v143 = &v101 - v35;
  v115 = v34;
  v36 = sub_1B7A97590();
  v119 = v36;
  v126 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v142 = &v101 - v37;
  v114 = swift_getWitnessTable();
  v157 = v114;
  v158 = v138;
  v38 = swift_getWitnessTable();
  v118 = v38;
  v39 = v148;
  v40 = v106;
  v41 = AssociatedTypeWitness;
  v117 = *(swift_getAssociatedConformanceWitness() + 8);
  v159 = v36;
  v160 = v41;
  v161 = v38;
  v162 = v117;
  v121 = MEMORY[0x1E6981440];
  v122 = swift_getOpaqueTypeMetadata2();
  v123 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v113 = &v101 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v116 = &v101 - v44;
  v45 = v152;
  v104 = *(v152 + 8);
  v159 = sub_1B7A8FC14();
  v46 = v139;
  v105 = *(v139 + 19);
  sub_1B7A98830();
  v47 = v156;
  v48 = *(v156 + 16);
  v137 = v156 + 16;
  v49 = v120;
  v50 = v46;
  v48(v120, v45, v46);
  v138 = *(v47 + 80);
  v51 = (v138 + 72) & ~v138;
  v52 = swift_allocObject();
  *&v53 = v40;
  *(&v53 + 1) = v154;
  v154 = v53;
  *&v54 = v112;
  *(&v54 + 1) = v153;
  v153 = v54;
  v103 = v52;
  *(v52 + 16) = v53;
  *(v52 + 32) = v54;
  v55 = v150;
  *(v52 + 48) = v39;
  *(v52 + 56) = v55;
  *(v52 + 64) = v155;
  v56 = *(v47 + 32);
  v156 = v47 + 32;
  v112 = v56;
  v56(v52 + v51, v49, v46);
  v57 = v125;
  v58 = v152;
  v102 = v48;
  v48(v125, v152, v50);
  v59 = swift_allocObject();
  v60 = v153;
  *(v59 + 16) = v154;
  *(v59 + 32) = v60;
  *(v59 + 48) = v39;
  *(v59 + 56) = v55;
  v61 = v155;
  *(v59 + 64) = v155;
  v62 = v57;
  v63 = v50;
  v64 = v50;
  v65 = v112;
  v112(v59 + v51, v62, v64);
  v48(v145, v58, v63);
  v66 = swift_allocObject();
  v67 = v153;
  *(v66 + 16) = v154;
  *(v66 + 32) = v67;
  v68 = v148;
  v69 = v150;
  *(v66 + 48) = v148;
  *(v66 + 56) = v69;
  *(v66 + 64) = v61;
  v70 = v139;
  v65(v66 + v51, v145, v139);
  v71 = v127;
  v72 = v58;
  v73 = v70;
  v102(v127, v72, v70);
  v74 = swift_allocObject();
  v75 = v153;
  *(v74 + 16) = v154;
  *(v74 + 32) = v75;
  *(v74 + 48) = v68;
  *(v74 + 56) = v69;
  *(v74 + 64) = v155;
  v65(v74 + v51, v71, v73);
  sub_1B7A09134(&v159, v146, sub_1B7A099A0, v103, sub_1B7A09C8C, v59, sub_1B7A09CB8, v66, v143, sub_1B7A09D84, v74, v141, OpaqueTypeMetadata2, v111, v110, v109, v108, v107);
  v76 = v128;
  sub_1B7A99790();
  sub_1B7A8FC14();
  v77 = sub_1B7A9A6C0();

  v162 = MEMORY[0x1E69E6530];
  v159 = v77;
  v78 = v129;
  v79 = v76;
  sub_1B7A997D0();
  v80 = *(v130 + 8);
  v81 = v131;
  v80(v79, v131);
  sub_1B7957888(&v159, &qword_1EBA46B50);
  v162 = AssociatedTypeWitness;
  __swift_allocate_boxed_opaque_existential_1Tm(&v159);
  v82 = v147;
  MEMORY[0x1B8CA9A40](v147);
  v83 = v132;
  sub_1B7A997D0();
  v80(v78, v81);
  sub_1B7957888(&v159, &qword_1EBA46B50);
  v84 = v115;
  v85 = v143;
  View.automationSemantics(_:)();
  v80(v83, v81);
  (*(v124 + 8))(v85, v84);
  v86 = v134;
  MEMORY[0x1B8CA9A40](v82);
  v87 = swift_allocObject();
  v88 = v153;
  *(v87 + 16) = v154;
  *(v87 + 32) = v88;
  v89 = v150;
  *(v87 + 48) = v148;
  *(v87 + 56) = v89;
  *(v87 + 64) = v155;
  v90 = v113;
  v91 = v119;
  v92 = AssociatedTypeWitness;
  v93 = v118;
  v94 = v117;
  v95 = v142;
  sub_1B7A984B0();

  (*(v135 + 8))(v86, v92);
  (*(v126 + 8))(v95, v91);
  v159 = v91;
  v160 = v92;
  v161 = v93;
  v162 = v94;
  v96 = swift_getOpaqueTypeConformance2();
  v97 = v116;
  v98 = v122;
  sub_1B7957EE0(v90, v122, v96);
  v99 = *(v123 + 8);
  v99(v90, v98);
  sub_1B7957EE0(v97, v98, v96);
  return (v99)(v97, v98);
}

uint64_t sub_1B7A07A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v58 = a8;
  v65 = a5;
  v64 = a4;
  v66 = a1;
  v57 = a9;
  v52 = sub_1B7A99900();
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1B7A98F80();
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1B7A98D60();
  v48 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B7A98CC0();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v53 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1B7A9A280();
  v56 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FlowStackTabsAuthority.Tab();
  v20 = sub_1B7A9AB60();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v43 - v22;
  v24 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v63 = &v43 - v26;
  v55 = a2;
  v75[0] = sub_1B7A8FC14();
  v61 = a3;
  v67 = a3;
  v68 = v64;
  v69 = v65;
  v54 = a6;
  v70 = a6;
  v62 = a7;
  v71 = a7;
  v27 = v58;
  v72 = v58;
  v28 = v57;
  v73 = v57;
  v74 = v66;
  sub_1B7A9A6E0();
  swift_getWitnessTable();
  sub_1B7A9A5B0();

  if ((*(v24 + 48))(v23, 1, v19) == 1)
  {
    (*(v21 + 8))(v23, v20);
    v29 = v59;
    sub_1B7A9A220();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8);
    sub_1B7A98D10();
    *(swift_allocObject() + 16) = xmmword_1B7A9D270;
    sub_1B7A98CB0();
    sub_1B7A98CA0();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v76 = AssociatedTypeWitness;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v75);
    (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1Tm, v66, AssociatedTypeWitness);
    sub_1B7A98C60();
    sub_1B7957888(v75, &qword_1EBA46B50);
    sub_1B7A98CA0();
    sub_1B7A98CD0();
    sub_1B7A98C40();
    v32 = v60;
    sub_1B7A99E60();

    return (*(v56 + 8))(v29, v32);
  }

  else
  {
    v34 = v59;
    v35 = v60;
    v66 = v24;
    (*(v24 + 32))(v63, v23, v19);
    v75[0] = v61;
    v75[1] = v64;
    v75[2] = v65;
    v76 = v54;
    v77 = v62;
    v78 = v27;
    v79 = v28;
    type metadata accessor for FlowStackTabView();
    sub_1B797C31C(&v80);
    if (v81)
    {
      sub_1B795C1E4(&v80, &v82);
      (*(v45 + 16))(v44, &v63[*(v19 + 44)], v46);
      v36 = v47;
      sub_1B7A98D50();
      v37 = v83;
      v38 = v84;
      __swift_project_boxed_opaque_existential_1(&v82, v83);
      v39 = v49;
      v76 = v49;
      v77 = MEMORY[0x1E69AAF30];
      v40 = __swift_allocate_boxed_opaque_existential_1Tm(v75);
      v41 = v48;
      (*(v48 + 16))(v40, v36, v39);
      v42 = v50;
      sub_1B797BE80(v50);
      (*(v38 + 24))(v75, v42, v37, v38);
      (*(v51 + 8))(v42, v52);
      (*(v41 + 8))(v36, v39);
      (*(v66 + 8))(v63, v19);
      __swift_destroy_boxed_opaque_existential_1(v75);
      return __swift_destroy_boxed_opaque_existential_1(&v82);
    }

    else
    {
      sub_1B7957888(&v80, &qword_1EBA47828);
      sub_1B7A9A240();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8);
      sub_1B7A98D10();
      *(swift_allocObject() + 16) = xmmword_1B7A9D270;
      sub_1B7A98C40();
      sub_1B7A98C40();
      sub_1B7A99E60();

      (*(v56 + 8))(v34, v35);
      return (*(v66 + 8))(v63, v19);
    }
  }
}

uint64_t sub_1B7A08474()
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v0 = sub_1B7A9A470();

  return v0 & 1;
}

uint64_t sub_1B7A08588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v52 = a6;
  v53 = a7;
  v50 = a5;
  v55 = a2;
  v56 = a1;
  v63 = a9;
  v13 = sub_1B7A97D90();
  v61 = *(v13 - 8);
  v62 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B7A997E0();
  v58 = *(v15 - 8);
  v59 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v51 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v46 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A97E00();
  v19 = a4;
  v45 = a4;
  v20 = sub_1B7A97590();
  v54 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v47 = &v44 - v21;
  v22 = sub_1B7A048FC();
  v23 = a8;
  v44 = a8;
  v71 = a8;
  v72 = v22;
  WitnessTable = swift_getWitnessTable();
  v64 = v20;
  v65 = WitnessTable;
  v49 = MEMORY[0x1E697D248];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v25 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v27 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v44 - v29;
  v64 = a3;
  v65 = v19;
  v66 = v50;
  v67 = v52;
  v68 = v53;
  v69 = v23;
  v70 = a10;
  v31 = type metadata accessor for FlowStackTabView();
  v32 = v56;
  v33 = v46;
  (*(v55 + *(v31 + 80)))(v56);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v67 = AssociatedTypeWitness;
  v35 = __swift_allocate_boxed_opaque_existential_1Tm(&v64);
  (*(*(AssociatedTypeWitness - 8) + 16))(v35, v32, AssociatedTypeWitness);
  v36 = v51;
  sub_1B7A997C0();
  __swift_destroy_boxed_opaque_existential_1(&v64);
  v37 = v47;
  v38 = v45;
  View.automationSemantics(_:)();
  (*(v58 + 8))(v36, v59);
  (*(v57 + 8))(v33, v38);
  v39 = v60;
  sub_1B7A97D80();
  v40 = WitnessTable;
  sub_1B7A982E0();
  (*(v61 + 8))(v39, v62);
  (*(v54 + 8))(v37, v20);
  v64 = v20;
  v65 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1B7957EE0(v27, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v42 = *(v25 + 8);
  v42(v27, OpaqueTypeMetadata2);
  sub_1B7957EE0(v30, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v42)(v30, OpaqueTypeMetadata2);
}

uint64_t sub_1B7A08AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19[0] = a3;
  v19[1] = a4;
  v19[2] = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v11 = type metadata accessor for FlowStackTabView();
  (*(a2 + *(v11 + 84)))(v19, a1);
  v12 = __swift_project_boxed_opaque_existential_1(v19, v20);
  v13 = MEMORY[0x1EEE9AC00](v12);
  (*(v15 + 16))(&v19[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  v16 = sub_1B7A987F0();
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v16;
}

uint64_t sub_1B7A08C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v42[2] = a3;
  v51 = a2;
  v56 = a9;
  v16 = *(a5 - 8);
  v53 = a1;
  v54 = v16;
  MEMORY[0x1EEE9AC00](a1);
  v50 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA481B8);
  v18 = a5;
  v43 = a5;
  v19 = sub_1B7A97590();
  v46 = v19;
  v55 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v44 = v42 - v20;
  v62 = a3;
  v63 = a4;
  v64 = v18;
  v65 = a6;
  v66 = a7;
  v67 = a8;
  v68 = a10;
  v42[0] = a10;
  v21 = type metadata accessor for FlowStackTabView();
  v42[1] = v21;
  v22 = sub_1B7A98E50();
  v49 = v22;
  v23 = sub_1B797EC34(&qword_1EBA481B0, &qword_1EBA481B8);
  v60 = a10;
  v61 = v23;
  WitnessTable = swift_getWitnessTable();
  v48 = WitnessTable;
  v59 = MEMORY[0x1E69E6168];
  v47 = swift_getWitnessTable();
  v62 = v19;
  v63 = v22;
  v64 = WitnessTable;
  v65 = v47;
  v25 = sub_1B7A987A0();
  v52 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v45 = v42 - v29;
  v30 = *(v51 + *(v21 + 88));
  v31 = type metadata accessor for FlowStackTabsAuthority.Tab();
  v32 = v53;
  v33 = v50;
  v30(v53 + v31[12], *(v53 + v31[13]));
  LOBYTE(v62) = 3;
  v34 = v44;
  v35 = v43;
  View.presentedBy(_:)();
  (*(v54 + 8))(v33, v35);
  v62 = 0;
  v63 = 0xE000000000000000;
  swift_getAssociatedTypeWitness();
  sub_1B7A9AE60();
  v57 = *(v32 + v31[16]);
  v36 = sub_1B7A9AE20();
  MEMORY[0x1B8CAB750](v36);

  v57 = v62;
  v58 = v63;
  sub_1B7A98E60();
  v57 = v62;
  v58 = v63;
  v37 = v46;
  sub_1B7A98390();

  (*(v55 + 8))(v34, v37);
  v38 = swift_getWitnessTable();
  v39 = v45;
  sub_1B7957EE0(v27, v25, v38);
  v40 = *(v52 + 8);
  v40(v27, v25);
  sub_1B7957EE0(v39, v25, v38);
  return (v40)(v39, v25);
}

uint64_t sub_1B7A09134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v76 = a7;
  v77 = a8;
  v74 = a6;
  v72 = a5;
  v69 = a4;
  v71 = a3;
  v87 = a2;
  v67 = a1;
  v81 = a9;
  v75 = a11;
  v73 = a10;
  v85 = a13;
  v86 = a16;
  v84 = a18;
  v82 = a17;
  v83 = a15;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v64 = sub_1B7A98870();
  v79 = *(v64 - 8);
  v19 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v78 = &v60 - v21;
  v88 = a12;
  v89 = a13;
  v80 = a14;
  v90 = a14;
  v91 = a15;
  v92 = a16;
  v93 = a17;
  v94 = a18;
  v22 = type metadata accessor for _FlowStackTabViewBody();
  v23 = *(v22 + 92);
  v24 = v22;
  v65 = v22;
  v25 = v81;
  v26 = v81 + v23;
  *v26 = swift_getKeyPath();
  *(v26 + 8) = 0u;
  *(v26 + 24) = 0u;
  *(v26 + 33) = 0u;
  v27 = v25 + *(v24 + 96);
  *v27 = swift_getKeyPath();
  *(v27 + 8) = 0;
  v28 = v25 + *(v24 + 100);
  *v28 = swift_getKeyPath();
  *(v28 + 8) = 0;
  v68 = *(a12 - 8);
  v29 = *(v68 + 16);
  v62 = a12;
  v29(v25, a1, a12);
  v30 = v79;
  v63 = *(v79 + 16);
  v31 = v64;
  v63(v78, v87, v64);
  sub_1B7A9A760();
  v32 = sub_1B7A9A750();
  v33 = (*(v30 + 80) + 88) & ~*(v30 + 80);
  v34 = swift_allocObject();
  v35 = MEMORY[0x1E69E85E0];
  *(v34 + 2) = v32;
  *(v34 + 3) = v35;
  v36 = v85;
  *(v34 + 4) = a12;
  *(v34 + 5) = v36;
  v37 = v83;
  *(v34 + 6) = v80;
  *(v34 + 7) = v37;
  v38 = v82;
  *(v34 + 8) = v86;
  *(v34 + 9) = v38;
  *(v34 + 10) = v84;
  v61 = *(v30 + 32);
  v61(&v34[v33], v78, v31);
  v39 = v66;
  v40 = v31;
  v63(v66, v87, v31);
  v41 = v69;

  v42 = sub_1B7A9A750();
  v43 = swift_allocObject();
  *(v43 + 2) = v42;
  v44 = v62;
  *(v43 + 3) = MEMORY[0x1E69E85E0];
  *(v43 + 4) = v44;
  v45 = v80;
  *(v43 + 5) = v85;
  *(v43 + 6) = v45;
  v46 = v86;
  *(v43 + 7) = v83;
  *(v43 + 8) = v46;
  v47 = v84;
  *(v43 + 9) = v82;
  *(v43 + 10) = v47;
  v48 = v39;
  v49 = v40;
  v61(&v43[v33], v48, v40);
  v50 = &v43[(v33 + v19 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v50 = v71;
  *(v50 + 1) = v41;
  v51 = v65;
  v52 = v81;
  sub_1B7A98840();

  (*(v79 + 8))(v87, v49);
  result = (*(v68 + 8))(v67, v44);
  v54 = (v52 + v51[20]);
  v55 = v74;
  *v54 = v72;
  v54[1] = v55;
  v56 = (v52 + v51[21]);
  v57 = v77;
  *v56 = v76;
  v56[1] = v57;
  v58 = (v52 + v51[22]);
  v59 = v75;
  *v58 = v73;
  v58[1] = v59;
  return result;
}

uint64_t sub_1B7A0963C()
{
  v0 = sub_1B7A99350();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B7A98CC0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = 0;
  v11 = 0xE000000000000000;
  swift_getAssociatedTypeWitness();
  sub_1B7A9AE60();
  v5 = sub_1B7A8B794(v10, v11);
  v7 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8);
  sub_1B7A98D10();
  *(swift_allocObject() + 16) = xmmword_1B7A9C180;
  sub_1B7A98CB0();
  sub_1B7A98CA0();
  v12 = MEMORY[0x1E69E6158];
  v10 = v5;
  v11 = v7;
  sub_1B7A98C70();
  sub_1B7957888(&v10, &qword_1EBA46B50);
  sub_1B7A98CA0();
  sub_1B7A98CD0();
  sub_1B7A9A1E0();
  __swift_project_boxed_opaque_existential_1(&v10, v12);
  (*(v1 + 104))(v3, *MEMORY[0x1E69AB100], v0);
  sub_1B7A99E20();

  (*(v1 + 8))(v3, v0);
  __swift_destroy_boxed_opaque_existential_1(&v10);
}

uint64_t sub_1B7A099A0(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = *(type metadata accessor for FlowStackTabView() - 8);
  return sub_1B7A07A10(a1, v1 + ((*(v10 + 80) + 72) & ~*(v10 + 80)), v3, v4, v5, v6, v7, v8, v9);
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for FlowStackTabView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 72) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[19];

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1B7A98870();
  (*(*(AssociatedTypeWitness - 8) + 8))(v3 + *(v5 + 32), AssociatedTypeWitness);

  v6 = v2 + v1[23];
  if (*(v6 + 40))
  {
    if (*(v6 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v6);
    }
  }

  else
  {
  }

  v7 = v1[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1B7A99900();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1B7A09CB8(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = *(type metadata accessor for FlowStackTabView() - 8);
  return sub_1B7A08AE8(a1, v1 + ((*(v10 + 80) + 72) & ~*(v10 + 80)), v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1B7A09DB0(uint64_t a1, uint64_t (*a2)(void, void *), uint64_t (*a3)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 3);
  v7 = *(v3 + 4);
  v8 = *(v3 + 5);
  v9 = *(v3 + 6);
  v10 = *(v3 + 7);
  v11 = *(v3 + 8);
  v15[0] = *(v3 + 2);
  v5 = v15[0];
  v15[1] = v6;
  v15[2] = v7;
  v15[3] = v8;
  v15[4] = v9;
  v15[5] = v10;
  v15[6] = v11;
  v12 = *(a2(0, v15) - 8);
  return a3(a1, &v3[(*(v12 + 80) + 72) & ~*(v12 + 80)], v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1B7A09EC8()
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v0 = sub_1B7A98870();
  MEMORY[0x1B8CA9A40](v0);
}

uint64_t sub_1B7A09FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v12 - v9;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v8 + 16))(v10, a1, AssociatedTypeWitness);
  sub_1B7A98870();
  sub_1B7A98810();
  a5(a1);
}

uint64_t sub_1B7A0A1A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v207 = a2;
  v213 = *(a1 + 16);
  v192 = *(a1 + 64);
  v3 = *(v192 + 8);
  v210 = *(a1 + 40);
  v199 = *(*(v210 + 8) + 8);
  v215.i64[0] = swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v180 = sub_1B7A98870();
  MEMORY[0x1EEE9AC00](v180);
  v181 = &v162 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48500);
  v7 = sub_1B7A9A6E0();
  v217 = *(a1 + 24);
  *&v208 = v217.i64[1];
  v8 = sub_1B7A97E90();
  v191 = v3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v204 = a1;
  v216 = *(a1 + 48);
  v246 = AssociatedConformanceWitness;
  v10 = AssociatedConformanceWitness;
  v211 = AssociatedConformanceWitness;
  v195 = v216.i64[1];
  v214 = vextq_s8(v216, v216, 8uLL);
  v247 = v214;
  WitnessTable = swift_getWitnessTable();
  *v248 = v8;
  *&v248[8] = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = swift_getWitnessTable();
  *v248 = v7;
  *&v248[8] = AssociatedTypeWitness;
  *&v248[16] = OpaqueTypeMetadata2;
  *&v248[24] = v13;
  *&v248[32] = v10;
  v14 = sub_1B7A988E0();
  *v248 = MEMORY[0x1E6981910];
  *&v248[8] = v14;
  *&v248[16] = MEMORY[0x1E6981E70];
  *&v248[24] = AssociatedTypeWitness;
  sub_1B7A97090();
  v15 = sub_1B7A97B40();
  v16 = sub_1B797EC34(&qword_1EBA48508, &qword_1EBA48500);
  *v248 = v6;
  *&v248[8] = MEMORY[0x1E69E6530];
  *&v248[16] = v15;
  *&v248[24] = v16;
  *&v248[32] = MEMORY[0x1E69E6540];
  v17 = sub_1B7A988E0();
  *v248 = v8;
  *&v248[8] = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = swift_getWitnessTable();
  v242 = MEMORY[0x1E6981900];
  v243 = v18;
  v244 = MEMORY[0x1E6981E60];
  v19 = swift_getWitnessTable();
  v240 = v18;
  v241 = v19;
  v239 = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  *v248 = AssociatedTypeWitness;
  *&v248[8] = v17;
  v179 = v17;
  v21 = AssociatedTypeWitness;
  v22 = v211;
  *&v248[16] = v211;
  *&v248[24] = v20;
  v174 = v20;
  v23 = sub_1B7A97900();
  v24 = swift_getWitnessTable();
  *v248 = AssociatedTypeWitness;
  *&v248[8] = v23;
  *&v248[16] = v22;
  *&v248[24] = v24;
  v25 = sub_1B7A98980();
  v177 = *(v25 - 8);
  v178 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v176 = &v162 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v175 = &v162 - v28;
  v212 = vextq_s8(v217, v217, 8uLL);
  *v248 = v212;
  *&v248[16] = v214;
  v29 = swift_getOpaqueTypeMetadata2();
  *v248 = v212;
  *&v248[16] = v214;
  v30 = swift_getOpaqueTypeConformance2();
  *v248 = v29;
  *&v248[8] = AssociatedTypeWitness;
  *&v248[16] = v30;
  *&v248[24] = v22;
  v209 = &unk_1B7AAA5C4;
  v31 = swift_getOpaqueTypeMetadata2();
  v32 = v213;
  *v248 = v213;
  *&v248[8] = v21;
  v33 = v210;
  *&v248[16] = v31;
  *&v248[24] = v210;
  *&v248[32] = v22;
  v34 = sub_1B7A988E0();
  *v248 = v29;
  *&v248[8] = v21;
  *&v248[16] = v30;
  *&v248[24] = v22;
  v238 = swift_getOpaqueTypeConformance2();
  v35 = swift_getWitnessTable();
  *v248 = v21;
  *&v248[8] = v34;
  *&v248[16] = v22;
  *&v248[24] = v35;
  v212.i64[0] = sub_1B7A98980();
  v214.i64[0] = sub_1B7A97B40();
  v173 = *(v214.i64[0] - 8);
  MEMORY[0x1EEE9AC00](v214.i64[0]);
  v172 = &v162 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v171 = &v162 - v38;
  *v248 = v32;
  *&v248[8] = v21;
  *&v248[16] = v217.i64[0];
  *&v248[24] = v33;
  *&v248[32] = v22;
  sub_1B7A988E0();
  swift_getTupleTypeMetadata3();
  v39 = sub_1B7A98AC0();
  v40 = swift_getWitnessTable();
  *v248 = v21;
  *&v248[8] = v39;
  *&v248[16] = v22;
  *&v248[24] = v40;
  v41 = sub_1B7A98030();
  v42 = sub_1B7A976B0();
  v43 = swift_getWitnessTable();
  *v248 = v41;
  *&v248[8] = v42;
  v44 = MEMORY[0x1E697C270];
  *&v248[16] = v43;
  *&v248[24] = MEMORY[0x1E697C270];
  v45 = swift_getOpaqueTypeMetadata2();
  *v248 = v41;
  *&v248[8] = v42;
  *&v248[16] = v43;
  *&v248[24] = v44;
  v46 = swift_getOpaqueTypeConformance2();
  *v248 = v45;
  *&v248[8] = v46;
  v47 = swift_getOpaqueTypeMetadata2();
  *v248 = v217.i64[1];
  *&v248[16] = v216.i64[1];
  *&v248[8] = v21;
  *&v248[24] = v22;
  v48 = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46788);
  v49 = sub_1B7A97B40();
  *v248 = v45;
  *&v248[8] = v46;
  v50 = swift_getOpaqueTypeConformance2();
  *v248 = v217.i64[1];
  *&v248[16] = v216.i64[1];
  *&v248[8] = v21;
  *&v248[24] = v22;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = v213;
  v53 = sub_1B797EC34(&qword_1EBA46790, &qword_1EBA46788);
  v206 = v51;
  v236 = v51;
  v237 = v53;
  v54 = swift_getWitnessTable();
  v167 = v47;
  *v248 = v47;
  *&v248[8] = MEMORY[0x1E6981E70];
  *&v248[16] = v49;
  v165 = v50;
  v166 = v49;
  *&v248[24] = v50;
  *&v248[32] = MEMORY[0x1E6981E60];
  v249 = v54;
  v164 = v54;
  v55 = sub_1B7A979C0();
  v168 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v170 = &v162 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v169 = &v162 - v58;
  v59 = sub_1B7A97880();
  v183 = *(v59 - 8);
  v184 = v59;
  MEMORY[0x1EEE9AC00](v59);
  v182 = &v162 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = v55;
  v61 = sub_1B7A97B40();
  v193 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v198 = &v162 - v62;
  v194 = v21;
  v188 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v186 = &v162 - v64;
  v187 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v185 = &v162 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = v48;
  v190 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v189 = &v162 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v69);
  v197 = &v162 - v70;
  v71 = swift_getAssociatedTypeWitness();
  v72 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v74 = &v162 - v73;
  v75 = *(v215.i64[0] - 8);
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v162 - v77;
  v205 = v61;
  v79 = sub_1B7A97B40();
  v201 = *(v79 - 8);
  v202 = v79;
  MEMORY[0x1EEE9AC00](v79);
  v200 = &v162 - v80;
  v81 = v203;
  if (sub_1B7A9A930() != 1)
  {
    v100 = v196;
    v101 = v52;
    v102 = v204;
    v103 = &v81[*(v204 + 96)];
    v104 = *v103;
    if (v103[8] == 1)
    {
      v105 = v198;
      if ((v104 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v106 = v204;

      sub_1B7A9AA10();
      v107 = sub_1B7A97E70();
      sub_1B7A96D30();

      v108 = v182;
      sub_1B7A97870();
      swift_getAtKeyPath();
      sub_1B795AE10(v104, 0);
      (*(v183 + 8))(v108, v184);
      v102 = v106;
      v52 = v101;
      v105 = v198;
      if (v248[0] != 1)
      {
        goto LABEL_11;
      }
    }

    v109 = &v81[*(v102 + 92)];
    v110 = *v109;
    v111 = *(v109 + 8);
    v112 = *(v109 + 24);
    v113 = *(v109 + 5);
    LODWORD(v109) = v109[48];
    v215 = v111;
    v208 = v112;
    if (v109 == 1)
    {
      v114 = sub_1B79EA1F4(v110);
      v115 = v208;
      v116 = v215;
      if (v110)
      {
LABEL_9:
        v204 = v113;
        *&v248[8] = v116;
        *&v248[24] = v115;
        *v248 = v110;
        v249 = v113;
        v117 = MEMORY[0x1EEE9AC00](v114);
        *(&v162 - 10) = v52;
        v118 = v216;
        *(&v162 - 9) = v217;
        v215 = v117;
        v117.i64[0] = v210;
        v208 = v119;
        *&v119 = vdupq_laneq_s64(v118, 1).u64[0];
        *(&v119 + 1) = v192;
        *(&v162 - 5) = v119;
        *(&v162 - 7) = vzip1q_s64(v117, v118);
        *(&v162 - 3) = v81;
        *(&v162 - 2) = v248;
        MEMORY[0x1EEE9AC00](v120);
        *(&v162 - 8) = v52;
        *(&v162 - 7) = v121;
        *(&v162 - 5) = v122;
        *(&v162 - 2) = v123;
        *(&v162 - 2) = v124;
        *(&v162 - 1) = v81;
        v125 = v170;
        sub_1B7A979B0();
        v126 = v209;
        v127 = swift_getWitnessTable();
        v128 = v169;
        sub_1B7957EE0(v125, v126, v127);
        v217.i64[0] = *(v168 + 8);
        (v217.i64[0])(v125, v126);
        sub_1B7957EE0(v128, v126, v127);
        v90 = v206;
        sub_1B7959A28(v125, v100, v126);
        v224 = v90;
        v225 = v127;
        v129 = v193;
        v130 = v105;
        v131 = v205;
        v216.i64[0] = swift_getWitnessTable();
        v132 = swift_getWitnessTable();
        v222 = MEMORY[0x1E6981900];
        v223 = v132;
        swift_getWitnessTable();
        v99 = v200;
        sub_1B79B5878(v130, v131);

        (*(v129 + 8))(v130, v131);
        v98 = MEMORY[0x1E6981900];
        v133 = v217.i64[0];
        (v217.i64[0])(v170, v126);
        v133(v169, v126);
        goto LABEL_12;
      }
    }

    else
    {

      sub_1B7A9AA10();
      v134 = sub_1B7A97E70();
      sub_1B7A96D30();

      v52 = v101;
      v135 = v182;
      sub_1B7A97870();
      swift_getAtKeyPath();
      sub_1B7A11BFC(v110, v215.i64[0], v215.i64[1], v208, *(&v208 + 1), v113, 0);
      v114 = (*(v183 + 8))(v135, v184);
      v116 = *&v248[8];
      v115 = *&v248[24];
      v110 = *v248;
      v113 = v249;
      if (*v248)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    v136 = v216.i64[0];
    v137 = sub_1B7A98830();
    v138 = MEMORY[0x1EEE9AC00](v137);
    v138.i64[0] = v52;
    *&v139 = vdupq_laneq_s64(v217, 1).u64[0];
    *(&v139 + 1) = v210;
    *(&v162 - 4) = vzip1q_s64(v138, v217);
    *(&v162 - 3) = v139;
    v140 = v195;
    *(&v162 - 4) = v136;
    *(&v162 - 3) = v140;
    *(&v162 - 2) = v192;
    *(&v162 - 1) = v81;
    v141 = v176;
    sub_1B7A98960();
    v142 = v178;
    v143 = swift_getWitnessTable();
    v144 = v175;
    sub_1B7957EE0(v141, v142, v143);
    v145 = *(v177 + 8);
    v145(v141, v142);
    sub_1B7957EE0(v144, v142, v143);
    *v248 = sub_1B79F770C(v141);
    v146 = swift_getWitnessTable();
    v147 = v171;
    v148 = MEMORY[0x1E6981900];
    sub_1B79B5878(v248, MEMORY[0x1E6981910]);

    v145(v141, v142);
    v145(v144, v142);
    v234 = v148;
    v235 = v146;
    v149 = v214.i64[0];
    v150 = swift_getWitnessTable();
    v151 = v172;
    sub_1B7957EE0(v147, v149, v150);
    v152 = swift_getWitnessTable();
    v153 = v205;
    v90 = v206;
    v232 = v206;
    v233 = v152;
    swift_getWitnessTable();
    v99 = v200;
    sub_1B7959A28(v151, v153, v149);
    v154 = *(v173 + 8);
    v154(v151, v149);
    v154(v147, v149);
    v98 = MEMORY[0x1E6981900];
    goto LABEL_12;
  }

  sub_1B7A9A920();
  v82 = sub_1B7A9A9E0();
  v162 = v78;
  v163 = v75;
  (*(v75 + 16))(v78);
  v82(v248, 0);
  (*(v72 + 8))(v74, v71);
  v83 = v185;
  (*&v81[*(v204 + 88)])(v78);
  v84 = v186;
  sub_1B7A9AC60();
  v85 = v189;
  v86 = v208;
  v87 = v194;
  sub_1B79751D0(v84, 1, v208, v194, v195);
  (*(v188 + 8))(v84, v87);
  (*(v187 + 8))(v83, v86);
  v89 = v196;
  v88 = v197;
  v90 = v206;
  sub_1B7957EE0(v85, v196, v206);
  v217.i64[0] = *(v190 + 8);
  (v217.i64[0])(v85, v89);
  sub_1B7957EE0(v88, v89, v90);
  v91 = swift_getWitnessTable();
  v92 = v198;
  sub_1B79B5878(v85, v89);
  v220 = v90;
  v221 = v91;
  v93 = v193;
  v94 = v205;
  v216.i64[0] = swift_getWitnessTable();
  v95 = swift_getWitnessTable();
  v218 = MEMORY[0x1E6981900];
  v219 = v95;
  swift_getWitnessTable();
  v96 = v200;
  sub_1B79B5878(v92, v94);
  (*(v93 + 8))(v92, v94);
  v97 = v217.i64[0];
  (v217.i64[0])(v85, v89);
  v97(v197, v89);
  (*(v163 + 8))(v162, v215.i64[0]);
  v98 = MEMORY[0x1E6981900];
  v99 = v96;
LABEL_12:
  v155 = swift_getWitnessTable();
  v230 = v90;
  v231 = v155;
  v156 = swift_getWitnessTable();
  v157 = swift_getWitnessTable();
  v228 = v98;
  v229 = v157;
  v158 = swift_getWitnessTable();
  v226 = v156;
  v227 = v158;
  v159 = v202;
  v160 = swift_getWitnessTable();
  sub_1B7957EE0(v99, v159, v160);
  return (*(v201 + 8))(v99, v159);
}

uint64_t sub_1B7A0B968@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v86 = a7;
  v87 = a8;
  v91 = a2;
  v92 = a9;
  v85 = a1;
  v14 = sub_1B7A976B0();
  v89 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v88 = v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = a10;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v82 = sub_1B7A98870();
  MEMORY[0x1EEE9AC00](v82);
  v78 = v63 - v17;
  sub_1B7A9AB60();
  v80 = sub_1B7A98870();
  v18 = sub_1B7A9AB60();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v83 = v63 - v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v93 = a3;
  v94 = AssociatedTypeWitness;
  v21 = a4;
  v95 = a4;
  v96 = a6;
  v22 = a6;
  v97 = AssociatedConformanceWitness;
  sub_1B7A988E0();
  swift_getTupleTypeMetadata3();
  v23 = sub_1B7A98AC0();
  WitnessTable = swift_getWitnessTable();
  v79 = AssociatedTypeWitness;
  v93 = AssociatedTypeWitness;
  v94 = v23;
  v74 = v23;
  v81 = AssociatedConformanceWitness;
  v95 = AssociatedConformanceWitness;
  v96 = WitnessTable;
  v72 = WitnessTable;
  v25 = sub_1B7A98030();
  v75 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v71 = v63 - v26;
  v27 = swift_getWitnessTable();
  v93 = v25;
  v94 = v14;
  v28 = MEMORY[0x1E697C270];
  v95 = v27;
  v96 = MEMORY[0x1E697C270];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v73 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v68 = v63 - v30;
  v77 = v25;
  v93 = v25;
  v94 = v14;
  v90 = v14;
  v66 = v27;
  v95 = v27;
  v96 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v76 = OpaqueTypeMetadata2;
  v93 = OpaqueTypeMetadata2;
  v94 = OpaqueTypeConformance2;
  v67 = OpaqueTypeConformance2;
  v70 = swift_getOpaqueTypeMetadata2();
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v64 = v63 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v65 = v63 - v34;
  sub_1B7A9A760();
  v63[1] = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v93 = a3;
  v94 = v21;
  v35 = v21;
  v95 = a5;
  v96 = v22;
  v63[0] = a5;
  v36 = v22;
  v38 = v86;
  v37 = v87;
  v97 = v86;
  v98 = v87;
  v39 = a3;
  v40 = v84;
  v99 = v84;
  type metadata accessor for _FlowStackTabViewBody();
  v41 = v85;
  sub_1B7A98830();
  v42 = v83;
  sub_1B7A98880();
  v43 = (*(*(v80 - 8) + 56))(v42, 0, 1);
  MEMORY[0x1EEE9AC00](v43);
  v63[-10] = v39;
  v63[-9] = v35;
  v63[-8] = v63[0];
  v63[-7] = v36;
  v63[-6] = v38;
  v63[-5] = v37;
  v44 = v91;
  v63[-4] = v40;
  v63[-3] = v44;
  v63[-2] = v41;
  v45 = v71;
  sub_1B7A98010();
  v46 = v88;
  sub_1B7A976A0();
  v47 = v68;
  v48 = v77;
  v49 = v90;
  sub_1B7A98510();
  (*(v89 + 8))(v46, v49);
  v50 = (*(v75 + 8))(v45, v48);
  v51 = (*v44)(v50);
  v53 = v52;
  LOBYTE(v44) = v54;
  v55 = v64;
  v56 = v76;
  v57 = v67;
  sub_1B7A98200();
  sub_1B795A450(v51, v53, v44 & 1);

  (*(v73 + 8))(v47, v56);
  v93 = v56;
  v94 = v57;
  v58 = swift_getOpaqueTypeConformance2();
  v59 = v65;
  v60 = v70;
  sub_1B7957EE0(v55, v70, v58);
  v61 = *(v69 + 8);
  v61(v55, v60);
  sub_1B7957EE0(v59, v60, v58);
  v61(v59, v60);
}

uint64_t sub_1B7A0C1A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v51 = a2;
  v60 = a9;
  v61 = a1;
  v68 = a3;
  v69 = a4;
  v56 = a5;
  v70 = a5;
  v71 = a6;
  v59 = a7;
  v72 = a7;
  v73 = a8;
  v57 = a8;
  v74 = a10;
  v47 = type metadata accessor for _FlowStackTabViewBody();
  v13 = *(v47 - 8);
  v49 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v44 = &v43 - v14;
  v15 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a10;
  v19 = *(a10 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v68 = a3;
  v69 = AssociatedTypeWitness;
  v45 = AssociatedTypeWitness;
  v70 = a4;
  v71 = a6;
  v58 = a6;
  v72 = AssociatedConformanceWitness;
  v50 = sub_1B7A988E0();
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v52 = &v43 - v24;
  sub_1B7A9A760();
  v54 = sub_1B7A9A750();
  sub_1B7A9A710();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v43 = (*(v61 + 16))(isCurrentExecutor);
  v26 = v51;
  (*(v15 + 16))(v18, v51, a3);
  v27 = v44;
  v28 = v47;
  (*(v13 + 16))(v44, v26, v47);
  v29 = (*(v13 + 80) + 72) & ~*(v13 + 80);
  v30 = swift_allocObject();
  *(v30 + 2) = a3;
  *(v30 + 3) = a4;
  v31 = v58;
  v32 = v59;
  *(v30 + 4) = v56;
  *(v30 + 5) = v31;
  v33 = v57;
  *(v30 + 6) = v32;
  *(v30 + 7) = v33;
  *(v30 + 8) = v55;
  (*(v13 + 32))(&v30[v29], v27, v28);
  v34 = v53;
  sub_1B7A988D0();
  v67[1] = v32;
  v35 = v50;
  WitnessTable = swift_getWitnessTable();
  v37 = v52;
  sub_1B7957EE0(v34, v35, WitnessTable);
  v38 = v48;
  v39 = *(v48 + 8);
  v40 = v39(v34, v35);
  v41 = (*(v61 + 32))(v40);
  v67[0] = v43;
  v68 = v67;
  (*(v38 + 16))(v34, v37, v35);
  v66 = v41;
  v69 = v34;
  v70 = &v66;

  v65[0] = MEMORY[0x1E6981910];
  v65[1] = v35;
  v65[2] = MEMORY[0x1E6981910];
  v62 = MEMORY[0x1E6981900];
  v63 = WitnessTable;
  v64 = MEMORY[0x1E6981900];
  sub_1B7959BAC(&v68, 3uLL, v65);

  v39(v37, v35);

  v39(v34, v35);
}

uint64_t sub_1B7A0C770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v31 = a8;
  v32 = a2;
  v35 = a9;
  v36 = a7;
  v34 = a1;
  v28 = a10;
  v29 = a5;
  v33 = *(a10 + 8);
  v27[1] = swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = v27 - v14;
  v16 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v27 - v21;
  sub_1B7A9A760();
  v27[0] = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v37 = a3;
  v38 = a4;
  v39 = v29;
  v40 = a6;
  v23 = v36;
  v41 = v36;
  v42 = v31;
  v43 = v28;
  v24 = *(v32 + *(type metadata accessor for _FlowStackTabViewBody() + 80));
  swift_checkMetadataState();
  sub_1B7A9AC60();
  v24(v15);
  (*(v13 + 8))(v15, AssociatedTypeWitness);
  sub_1B7957EE0(v19, a4, v23);
  v25 = *(v16 + 8);
  v25(v19, a4);
  sub_1B7957EE0(v22, a4, v23);
  v25(v22, a4);
}

uint64_t sub_1B7A0CA54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t (*a5)()@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v85 = a2;
  v87 = a1;
  v96 = a7;
  v78 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v76 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v12;
  v13 = *(v12 + 8);
  v79 = *(*(*(v14 + 8) + 8) + 8);
  v83 = v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = swift_getAssociatedTypeWitness();
  v73 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v106 = a3;
  v107 = v17;
  v108 = a6;
  v109 = AssociatedConformanceWitness;
  v95 = AssociatedConformanceWitness;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v77 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v75 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v74 = &v71 - v22;
  v94 = swift_checkMetadataState();
  v82 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v81 = &v71 - v23;
  v72 = sub_1B7A9AB60();
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v25 = &v71 - v24;
  v98 = AssociatedTypeWitness;
  v97 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v26);
  v80 = &v71 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46788);
  v93 = OpaqueTypeMetadata2;
  v88 = v28;
  v92 = sub_1B7A97B40();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v71 - v29;
  sub_1B7A9A760();
  v89 = sub_1B7A9A750();
  sub_1B7A9A710();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x1EEE9AC00](isCurrentExecutor);
  v31 = v83;
  v32 = v85;
  *(&v71 - 8) = v83;
  *(&v71 - 7) = v32;
  v84 = a3;
  *(&v71 - 6) = a3;
  *(&v71 - 5) = a4;
  v33 = v31;
  *(&v71 - 4) = a5;
  *(&v71 - 3) = a6;
  v99 = a6;
  v34 = a5;
  v35 = v86;
  v36 = v87;
  *(&v71 - 2) = v86;
  *(&v71 - 1) = v36;
  sub_1B7A9A5B0();
  v38 = v97;
  v37 = v98;
  if ((*(v97 + 48))(v25, 1, v98) == 1)
  {
    (*(v71 + 8))(v25, v72);
    v106 = 0;
    v107 = 0xE000000000000000;
    sub_1B7A9AC50();
    v102 = v106;
    v103 = v107;
    MEMORY[0x1B8CAB750](0x6F697463656C6553, 0xEB0000000060206ELL);
    v106 = v33;
    v107 = v32;
    v39 = v84;
    v108 = v84;
    v109 = a4;
    v110 = v34;
    v40 = v99;
    v111 = v99;
    v112 = v35;
    type metadata accessor for _FlowStackTabViewBody();
    v41 = v94;
    v42 = sub_1B7A98870();
    v43 = v81;
    MEMORY[0x1B8CA9A40](v42);
    sub_1B7A9AE60();
    (*(v82 + 8))(v43, v41);
    MEMORY[0x1B8CAB750](0xD000000000000015, 0x80000001B7AC68E0);
    v45 = v102;
    v44 = v103;
    v106 = v102;
    v107 = v103;
    sub_1B7999DD8();

    v46 = sub_1B7A98080();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v53 = swift_allocObject();
    *(v53 + 16) = v45;
    *(v53 + 24) = v44;
    v106 = v46;
    v107 = v48;
    LOBYTE(v108) = v50 & 1;
    v109 = v52;
    v110 = sub_1B797D598;
    v111 = v53;
    v102 = v39;
    v103 = v41;
    v54 = v95;
    v104 = v40;
    v105 = v95;
    swift_getOpaqueTypeConformance2();
    sub_1B797EC34(&qword_1EBA46790, &qword_1EBA46788);
    v55 = v90;
    sub_1B7959A28(&v106, v93, v88);
    sub_1B795A450(v106, v107, v108);
  }

  else
  {
    v56 = v80;
    (*(v38 + 32))(v80, v25, v37);
    v106 = v33;
    v107 = v32;
    v39 = v84;
    v108 = v84;
    v109 = a4;
    v110 = v34;
    v57 = v99;
    v111 = v99;
    v112 = v35;
    v58 = type metadata accessor for _FlowStackTabViewBody();
    v59 = v76;
    (*(v36 + *(v58 + 88)))(v56);
    v60 = v81;
    sub_1B7A9AC60();
    v61 = v75;
    v41 = v94;
    v54 = v95;
    sub_1B79751D0(v60, 1, v39, v94, v57);
    (*(v82 + 8))(v60, v41);
    (*(v78 + 8))(v59, v39);
    v106 = v39;
    v107 = v41;
    v108 = v57;
    v109 = v54;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v63 = v74;
    v64 = v93;
    sub_1B7957EE0(v61, v93, OpaqueTypeConformance2);
    v65 = *(v77 + 8);
    v65(v61, v64);
    sub_1B7957EE0(v63, v64, OpaqueTypeConformance2);
    sub_1B797EC34(&qword_1EBA46790, &qword_1EBA46788);
    v55 = v90;
    sub_1B79B5878(v61, v64);
    v65(v61, v64);
    v65(v63, v64);
    (*(v97 + 8))(v80, v98);
    v40 = v99;
  }

  v106 = v39;
  v107 = v41;
  v108 = v40;
  v109 = v54;
  v66 = swift_getOpaqueTypeConformance2();
  v67 = sub_1B797EC34(&qword_1EBA46790, &qword_1EBA46788);
  v100 = v66;
  v101 = v67;
  v68 = v92;
  WitnessTable = swift_getWitnessTable();
  sub_1B7957EE0(v55, v68, WitnessTable);
  (*(v91 + 8))(v55, v68);
}

uint64_t sub_1B7A0D504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26 = a7;
  v27 = a8;
  v22 = a4;
  v28 = a2;
  v20 = a1;
  v23 = a9;
  v24 = a5;
  v25 = a6;
  v21 = a3;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_checkMetadataState();
  sub_1B7A9AC60();
  v29 = v21;
  v30 = v22;
  v31 = v24;
  v32 = v25;
  v33 = v26;
  v34 = v27;
  v35 = v23;
  type metadata accessor for _FlowStackTabViewBody();
  v16 = sub_1B7A98870();
  MEMORY[0x1B8CA9A40](v16);
  swift_getAssociatedConformanceWitness();
  v17 = sub_1B7A9A470();
  v18 = *(v10 + 8);
  v18(v12, AssociatedTypeWitness);
  v18(v15, AssociatedTypeWitness);

  return v17 & 1;
}

uint64_t sub_1B7A0D788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v74 = a1;
  v83 = a9;
  v97 = a2;
  v98 = a3;
  v99 = a4;
  v100 = a5;
  v101 = a6;
  v102 = a7;
  v103 = a8;
  v76 = type metadata accessor for _FlowStackTabViewBody();
  v75 = *(v76 - 8);
  v72 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v73 = &v58 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48500);
  v80 = a5;
  v67 = *(*(*(a5 + 8) + 8) + 8);
  v77 = a2;
  swift_getAssociatedTypeWitness();
  v18 = sub_1B7A9A6E0();
  v85 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v79 = a4;
  v78 = a3;
  v20 = sub_1B7A97E90();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v94 = AssociatedConformanceWitness;
  v95 = a7;
  v81 = a7;
  v96 = a6;
  WitnessTable = swift_getWitnessTable();
  v69 = v20;
  v97 = v20;
  v98 = WitnessTable;
  v62 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v24 = swift_getWitnessTable();
  v97 = v18;
  v98 = AssociatedTypeWitness;
  v99 = OpaqueTypeMetadata2;
  v100 = v24;
  v101 = AssociatedConformanceWitness;
  v25 = sub_1B7A988E0();
  v97 = MEMORY[0x1E6981910];
  v98 = v25;
  v99 = MEMORY[0x1E6981E70];
  v100 = AssociatedTypeWitness;
  v82 = AssociatedTypeWitness;
  v26 = sub_1B7A97090();
  v60 = v25;
  v61 = v26;
  v27 = sub_1B7A97B40();
  v28 = sub_1B797EC34(&qword_1EBA48508, &qword_1EBA48500);
  v84 = v17;
  v97 = v17;
  v98 = MEMORY[0x1E69E6530];
  v68 = v27;
  v99 = v27;
  v100 = v28;
  v66 = v28;
  v101 = MEMORY[0x1E69E6540];
  v71 = sub_1B7A988E0();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v64 = &v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v65 = &v58 - v31;
  sub_1B7A9A760();
  v63 = sub_1B7A9A750();
  sub_1B7A9A710();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v93 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1EEE9AC00](isCurrentExecutor);
  v33 = v77;
  v34 = v78;
  *(&v58 - 8) = v77;
  *(&v58 - 7) = v34;
  v35 = v79;
  v36 = v80;
  *(&v58 - 6) = v79;
  *(&v58 - 5) = v36;
  *(&v58 - 4) = a6;
  v59 = a6;
  v37 = v81;
  v38 = v85;
  *(&v58 - 3) = v81;
  v56 = v38;
  v39 = v74;
  sub_1B7A9A5D0();
  v93 = v97;
  v40 = v75;
  v41 = v73;
  v42 = v76;
  (*(v75 + 16))(v73, v39, v76);
  v43 = (*(v40 + 80) + 72) & ~*(v40 + 80);
  v44 = swift_allocObject();
  *(v44 + 2) = v33;
  *(v44 + 3) = v34;
  *(v44 + 4) = v35;
  *(v44 + 5) = v36;
  *(v44 + 6) = v59;
  *(v44 + 7) = v37;
  *(v44 + 8) = v85;
  (*(v40 + 32))(&v44[v43], v41, v42);
  v97 = v69;
  v98 = v62;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = swift_getWitnessTable();
  v89 = MEMORY[0x1E6981900];
  v90 = v45;
  v91 = MEMORY[0x1E6981E60];
  v46 = swift_getWitnessTable();
  v87 = v45;
  v88 = v46;
  v47 = swift_getWitnessTable();
  v48 = sub_1B7A11EA0();
  v56 = v47;
  v57 = v48;
  v49 = v64;
  sub_1B7A988C0();
  v86 = v47;
  v50 = v71;
  swift_getWitnessTable();
  v51 = v70;
  v52 = *(v70 + 16);
  v53 = v65;
  v52(v65, v49, v50);
  v54 = *(v51 + 8);
  v54(v49, v50);
  v52(v83, v53, v50);
  v54(v53, v50);
}

uint64_t sub_1B7A0DEF4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *(a9 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10(v20, AssociatedTypeWitness, a9);
  sub_1B7A12418(v20, &v22);
  if (v23)
  {
    sub_1B7957888(v20, &qword_1EBA48528);
    sub_1B795C1E4(&v22, v19);
    sub_1B795C1E4(v19, &v22);
  }

  else
  {
    sub_1B7957888(&v22, &qword_1EBA48528);
    if (qword_1EBA45B68 != -1)
    {
      swift_once();
    }

    sub_1B7957888(v20, &qword_1EBA48528);
    sub_1B7A12488(&unk_1EBA483B0, &v22);
  }

  v12 = *a1;
  if (sub_1B7A0E250(&v22, *a1))
  {
    sub_1B7A124C0(&v22);
  }

  else
  {
    sub_1B7A12488(&v22, v20);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1B7987D14(0, *(v12 + 2) + 1, 1, v12);
    }

    v15 = *(v12 + 2);
    v14 = *(v12 + 3);
    if (v15 >= v14 >> 1)
    {
      v12 = sub_1B7987D14((v14 > 1), v15 + 1, 1, v12);
    }

    sub_1B7A124C0(&v22);
    *(v12 + 2) = v15 + 1;
    v16 = &v12[40 * v15];
    v17 = v21;
    v18 = v20[1];
    *(v16 + 2) = v20[0];
    *(v16 + 3) = v18;
    *(v16 + 8) = v17;

    *a1 = v12;
  }

  return result;
}

uint64_t sub_1B7A0E170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B7A12418(a1, &v5);
  if (v6)
  {
    sub_1B7957888(a1, &qword_1EBA48528);
    sub_1B795C1E4(&v5, v7);
    return sub_1B795C1E4(v7, a2);
  }

  else
  {
    sub_1B7957888(&v5, &qword_1EBA48528);
    if (qword_1EBA45B68 != -1)
    {
      swift_once();
    }

    sub_1B7957888(a1, &qword_1EBA48528);
    return sub_1B7A12488(&unk_1EBA483B0, a2);
  }
}

BOOL sub_1B7A0E250(void *a1, uint64_t a2)
{
  v16 = a1;
  v2 = a2 + 32;
  v3 = *(a2 + 16) + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v17 = v2 + 40;
    sub_1B7A12488(v2, v18);
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v5 = *(AssociatedTypeWitness - 8);
    MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
    v7 = &v15 - v6;
    sub_1B7A9AC60();
    swift_getAssociatedConformanceWitness();
    v8 = sub_1B7A9A400();
    (*(v5 + 8))(v7, AssociatedTypeWitness);
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    v9 = swift_getAssociatedTypeWitness();
    v10 = *(v9 - 8);
    MEMORY[0x1EEE9AC00](v9);
    v12 = &v15 - v11;
    sub_1B7A9AC60();
    swift_getAssociatedConformanceWitness();
    v13 = sub_1B7A9A400();
    (*(v10 + 8))(v12, v9);
    sub_1B7A124C0(v18);
    v2 = v17;
  }

  while (v8 != v13);
  return v3 != 0;
}

uint64_t sub_1B7A0E4E0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v135 = a8;
  v138 = a3;
  v132 = a2;
  v131 = a1;
  v130 = a9;
  v139 = a10;
  v120 = *(*(*(a6 + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  v15 = sub_1B7A9A6E0();
  v16 = *(a10 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v118 = v16;
  v18 = sub_1B7A97E90();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v163 = a8;
  v164 = a7;
  v137 = v18;
  WitnessTable = swift_getWitnessTable();
  v119 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v112 = swift_getWitnessTable();
  v116 = AssociatedConformanceWitness;
  v159 = AssociatedConformanceWitness;
  v19 = sub_1B7A988E0();
  v155 = MEMORY[0x1E6981910];
  v156 = v19;
  v157 = MEMORY[0x1E6981E70];
  v158 = AssociatedTypeWitness;
  v129 = AssociatedTypeWitness;
  v20 = sub_1B7A97090();
  v117 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v115 = &v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v114 = &v105 - v23;
  v24 = v138;
  v155 = v138;
  v156 = a4;
  v133 = a4;
  v25 = a7;
  v134 = a5;
  v157 = a5;
  v158 = a6;
  v26 = v135;
  v27 = a6;
  v159 = v25;
  v160 = v135;
  v161 = v139;
  v108 = type metadata accessor for _FlowStackTabViewBody();
  v107 = *(v108 - 8);
  v105 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v106 = &v105 - v28;
  v111 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v110 = &v105 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v109 = &v105 - v32;
  v128 = v20;
  v126 = sub_1B7A97B40();
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v124 = &v105 - v33;
  v34 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v105 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A9A760();
  v123 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v127 = v19;
  v38 = v138;
  v39 = (*(v34 + 16))(v37, v132, v138);
  MEMORY[0x1EEE9AC00](v39);
  v40 = v133;
  *(&v105 - 8) = v38;
  *(&v105 - 7) = v40;
  *(&v105 - 6) = v134;
  *(&v105 - 5) = v27;
  v121 = v27;
  v122 = v25;
  *(&v105 - 4) = v25;
  *(&v105 - 3) = v26;
  v41 = v131;
  v103 = v139;
  v104 = v131;
  v120 = sub_1B7A9A5C0();
  if (qword_1EBA45B68 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(v41, v41[3]);
  v42 = swift_getAssociatedTypeWitness();
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v105 - v44;
  sub_1B7A9AC60();
  swift_getAssociatedConformanceWitness();
  v46 = sub_1B7A9A400();
  (*(v43 + 8))(v45, v42);
  __swift_project_boxed_opaque_existential_1(qword_1EBA483B0, qword_1EBA483C8);
  v47 = swift_getAssociatedTypeWitness();
  v48 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v105 - v49;
  sub_1B7A9AC60();
  swift_getAssociatedConformanceWitness();
  v51 = sub_1B7A9A400();
  v52 = (*(v48 + 8))(v50, v47);
  v53 = MEMORY[0x1E6981E60];
  if (v46 == v51)
  {
    v144 = v120;
    v54 = v107;
    v55 = v106;
    v56 = v108;
    (*(v107 + 16))(v106, v132, v108);
    v57 = (*(v54 + 80) + 72) & ~*(v54 + 80);
    v58 = swift_allocObject();
    v59 = v133;
    *(v58 + 2) = v138;
    *(v58 + 3) = v59;
    v60 = v121;
    *(v58 + 4) = v134;
    *(v58 + 5) = v60;
    v61 = v135;
    *(v58 + 6) = v122;
    *(v58 + 7) = v61;
    *(v58 + 8) = v139;
    (*(v54 + 32))(&v58[v57], v55, v56);
    v155 = v137;
    v156 = WitnessTable;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v103 = OpaqueTypeConformance2;
    v104 = v118;
    v63 = v110;
    v64 = v129;
    sub_1B7A988C0();
    v143 = OpaqueTypeConformance2;
    v65 = v127;
    v66 = swift_getWitnessTable();
    v67 = v111;
    v68 = *(v111 + 16);
    v69 = v109;
    v68(v109, v63, v65);
    v70 = *(v67 + 8);
    v70(v63, v65);
    v68(v63, v69, v65);
    v140 = MEMORY[0x1E6981900];
    v141 = v66;
    v142 = v53;
    v71 = v128;
    v72 = swift_getWitnessTable();
    v73 = v124;
    sub_1B7A0F7BC(v63, v64, v65, v71, v66, v72);
    v70(v63, v65);
    v70(v69, v65);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v52);
    v74 = v133;
    *(&v105 - 10) = v138;
    *(&v105 - 9) = v74;
    v75 = v134;
    v76 = v121;
    *(&v105 - 8) = v134;
    *(&v105 - 7) = v76;
    v77 = v135;
    *(&v105 - 6) = v122;
    *(&v105 - 5) = v77;
    v78 = v120;
    *(&v105 - 4) = v139;
    *(&v105 - 3) = v78;
    MEMORY[0x1EEE9AC00](v75);
    *(&v105 - 10) = v80;
    *(&v105 - 9) = v79;
    *(&v105 - 8) = v81;
    *(&v105 - 7) = v82;
    *(&v105 - 6) = v84;
    *(&v105 - 5) = v83;
    *(&v105 - 4) = v86;
    *(&v105 - 3) = v85;
    v155 = v137;
    v156 = WitnessTable;
    v154 = swift_getOpaqueTypeConformance2();
    v87 = v127;
    v88 = swift_getWitnessTable();
    v103 = v88;
    v104 = v116;
    v89 = v115;
    v90 = v129;
    v91 = MEMORY[0x1E6981900];
    sub_1B7A97080();

    v151 = v91;
    v152 = v88;
    v153 = MEMORY[0x1E6981E60];
    v92 = v128;
    v139 = swift_getWitnessTable();
    v93 = v117;
    v94 = *(v117 + 16);
    v95 = v114;
    v94(v114, v89, v92);
    v96 = *(v93 + 8);
    v96(v89, v92);
    v94(v89, v95, v92);
    v73 = v124;
    sub_1B7A10AD0(v89, v90, v87, v92, v88, v139);
    v97 = v89;
    v53 = MEMORY[0x1E6981E60];
    v96(v97, v92);
    v96(v95, v92);
  }

  v155 = v137;
  v156 = WitnessTable;
  v150 = swift_getOpaqueTypeConformance2();
  v98 = swift_getWitnessTable();
  v147 = MEMORY[0x1E6981900];
  v148 = v98;
  v149 = v53;
  v99 = swift_getWitnessTable();
  v145 = v98;
  v146 = v99;
  v100 = v126;
  swift_getWitnessTable();
  v101 = v125;
  (*(v125 + 16))(v130, v73, v100);
  (*(v101 + 8))(v73, v100);
}

BOOL sub_1B7A0F3DC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1B7A9A760();
  v23 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *(a9 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10(v25, AssociatedTypeWitness, a9);
  sub_1B7A12418(v25, &v26);
  if (v27)
  {
    sub_1B7957888(v25, &qword_1EBA48528);
    sub_1B795C1E4(&v26, v24);
    sub_1B795C1E4(v24, &v26);
  }

  else
  {
    sub_1B7957888(&v26, &qword_1EBA48528);
    if (qword_1EBA45B68 != -1)
    {
      swift_once();
    }

    sub_1B7957888(v25, &qword_1EBA48528);
    sub_1B7A12488(&unk_1EBA483B0, &v26);
  }

  __swift_project_boxed_opaque_existential_1(&v26, v27);
  v12 = swift_getAssociatedTypeWitness();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - v14;
  sub_1B7A9AC60();
  swift_getAssociatedConformanceWitness();
  v16 = sub_1B7A9A400();
  (*(v13 + 8))(v15, v12);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v17 = swift_getAssociatedTypeWitness();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v23 - v19;
  sub_1B7A9AC60();
  swift_getAssociatedConformanceWitness();
  v21 = sub_1B7A9A400();
  (*(v18 + 8))(v20, v17);
  sub_1B7A124C0(&v26);

  return v16 == v21;
}

uint64_t sub_1B7A0F7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1B7A97B10();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v16 - v13;
  (*(*(a3 - 8) + 16))(&v16 - v13, a1, a3, v12);
  swift_storeEnumTagMultiPayload();
  return MEMORY[0x1B8CA8D60](v14, a3, a4, a5, a6);
}

uint64_t sub_1B7A0F8BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v56 = a2;
  v65 = a1;
  v66 = a9;
  v72 = a3;
  v73 = a4;
  v74 = a5;
  v75 = a6;
  v76 = a7;
  v77 = a8;
  v78 = a10;
  v55 = type metadata accessor for _FlowStackTabViewBody();
  v53 = *(v55 - 8);
  v51 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v17 = &v46 - v16;
  v62 = a6;
  v58 = a3;
  swift_getAssociatedTypeWitness();
  v18 = sub_1B7A9A6E0();
  v59 = a10;
  v19 = *(a10 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v60 = a4;
  v61 = a5;
  v21 = sub_1B7A97E90();
  v52 = v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v69 = AssociatedConformanceWitness;
  v70 = a8;
  v63 = a7;
  v64 = a8;
  v71 = a7;
  WitnessTable = swift_getWitnessTable();
  v50 = v21;
  v72 = v21;
  v73 = WitnessTable;
  v47 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v25 = swift_getWitnessTable();
  v57 = v18;
  v72 = v18;
  v73 = AssociatedTypeWitness;
  v54 = AssociatedTypeWitness;
  v49 = OpaqueTypeMetadata2;
  v74 = OpaqueTypeMetadata2;
  v75 = v25;
  v48 = v25;
  v76 = AssociatedConformanceWitness;
  v26 = sub_1B7A988E0();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v46 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v46 - v31;
  sub_1B7A9A760();
  v46 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v68 = v65;
  v33 = v53;
  v34 = v55;
  (*(v53 + 16))(v17, v56, v55);
  v35 = (*(v33 + 80) + 72) & ~*(v33 + 80);
  v36 = swift_allocObject();
  v37 = v60;
  v38 = v61;
  *(v36 + 2) = v58;
  *(v36 + 3) = v37;
  v39 = v62;
  v40 = v63;
  *(v36 + 4) = v38;
  *(v36 + 5) = v39;
  v41 = v64;
  *(v36 + 6) = v40;
  *(v36 + 7) = v41;
  *(v36 + 8) = v59;
  (*(v33 + 32))(&v36[v35], v17, v34);

  v72 = v50;
  v73 = v47;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1B7A988C0();
  v67 = OpaqueTypeConformance2;
  swift_getWitnessTable();
  v42 = *(v27 + 16);
  v42(v32, v29, v26);
  v43 = *(v27 + 8);
  v43(v29, v26);
  v42(v66, v32, v26);
  v43(v32, v26);
}

uint64_t sub_1B7A0FDFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, char *a7@<X6>, char *a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v78 = a2;
  v81 = a1;
  v82 = a9;
  v74 = a13;
  v72 = a12;
  v60 = sub_1B7A97880();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48518);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v64 = a10;
  v21 = *(a10 + 8);
  v65 = a6;
  v75 = a3;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v76 = a4;
  v77 = a5;
  v23 = sub_1B7A97E90();
  v79 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v84 = &v58 - v24;
  v83 = v21;
  v66 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v92 = AssociatedConformanceWitness;
  v93 = a8;
  v25 = a8;
  v26 = a7;
  v94 = a7;
  WitnessTable = swift_getWitnessTable();
  v80 = v23;
  v85 = v23;
  v86 = WitnessTable;
  v70 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v71 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v68 = &v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v69 = &v58 - v30;
  sub_1B7A9A760();
  v67 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v31 = swift_checkMetadataState();
  sub_1B7A9AC60();
  v32 = v64;
  v33 = *(v64 + 24);
  v61 = v31;
  v34 = v33(v31, v64);
  v62 = &v58;
  MEMORY[0x1EEE9AC00](v34);
  v35 = v75;
  v36 = v76;
  *(&v58 - 10) = v75;
  *(&v58 - 9) = v36;
  v37 = v77;
  v38 = v78;
  v39 = v65;
  *(&v58 - 8) = v77;
  *(&v58 - 7) = v39;
  *(&v58 - 6) = v26;
  *(&v58 - 5) = v25;
  MEMORY[0x1EEE9AC00](v40);
  *(&v58 - 10) = v35;
  *(&v58 - 9) = v36;
  *(&v58 - 8) = v37;
  *(&v58 - 7) = v39;
  *(&v58 - 6) = v26;
  *(&v58 - 5) = v25;
  v56 = v25;
  v57 = v26;
  v54 = v36;
  v55 = AssociatedConformanceWitness;
  sub_1B7A97E80();
  v85 = v35;
  v86 = v36;
  v87 = v37;
  v88 = v39;
  v89 = v26;
  v90 = v25;
  v91 = v32;
  v41 = v38 + *(type metadata accessor for _FlowStackTabViewBody() + 100);
  v42 = *v41;
  LOBYTE(v35) = *(v41 + 8);

  if ((v35 & 1) == 0)
  {
    sub_1B7A9AA10();
    v43 = sub_1B7A97E70();
    sub_1B7A96D30();

    v44 = v58;
    sub_1B7A97870();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v59 + 8))(v44, v60);
    v42 = v85;
  }

  if (v42)
  {
    sub_1B7A4D1D0();
  }

  v45 = v68;
  v46 = v80;
  v47 = v84;
  sub_1B7A97070();

  (*(v79 + 8))(v47, v46);
  v48 = v71;
  v49 = *(v71 + 16);
  v50 = v69;
  v51 = OpaqueTypeMetadata2;
  v49(v69, v45, OpaqueTypeMetadata2);
  v52 = *(v48 + 8);
  v52(v45, v51);
  v49(v82, v50, v51);
  v52(v50, v51);
}

uint64_t sub_1B7A104F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v24 = a6;
  v25 = a7;
  v23 = a4;
  v26 = a1;
  v27 = a2;
  v28 = a9;
  v13 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v22 - v17;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v29 = a3;
  v30 = v23;
  v31 = a5;
  v32 = v24;
  v33 = v25;
  v34 = a8;
  v35 = a10;
  v19 = type metadata accessor for _FlowStackTabViewBody();
  (*(v26 + *(v19 + 88)))(v27);
  sub_1B7957EE0(v15, a5, a8);
  v20 = *(v13 + 8);
  v20(v15, a5);
  sub_1B7957EE0(v18, a5, a8);
  v20(v18, a5);
}

uint64_t sub_1B7A106E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v31 = a8;
  v32 = a1;
  v35 = a9;
  v36 = a7;
  v34 = a2;
  v28 = a10;
  v29 = a5;
  v33 = *(a10 + 8);
  v27[1] = swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = v27 - v14;
  v16 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v27 - v21;
  sub_1B7A9A760();
  v27[0] = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v37 = a3;
  v38 = a4;
  v39 = v29;
  v40 = a6;
  v23 = v36;
  v41 = v36;
  v42 = v31;
  v43 = v28;
  v24 = *(v32 + *(type metadata accessor for _FlowStackTabViewBody() + 80));
  swift_checkMetadataState();
  sub_1B7A9AC60();
  v24(v15);
  (*(v13 + 8))(v15, AssociatedTypeWitness);
  sub_1B7957EE0(v19, a4, v23);
  v25 = *(v16 + 8);
  v25(v19, a4);
  sub_1B7957EE0(v22, a4, v23);
  v25(v22, a4);
}

uint64_t sub_1B7A109C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = type metadata accessor for _FlowStackTabViewBody();
  v4 = (*(a1 + *(v3 + 84)))(a2);

  *a3 = v4;
  return result;
}

uint64_t sub_1B7A10AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1B7A97B10();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v16 - v13;
  (*(*(a4 - 8) + 16))(&v16 - v13, a1, a4, v12);
  swift_storeEnumTagMultiPayload();
  return MEMORY[0x1B8CA8D60](v14, a3, a4, a5, a6);
}

uint64_t sub_1B7A10BD4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B7A9AE80();
  }
}

uint64_t sub_1B7A10C04()
{
  sub_1B7A9AF80();
  sub_1B7A9A500();
  return sub_1B7A9AFA0();
}

uint64_t sub_1B7A10C58()
{
  sub_1B7A9AF80();
  sub_1B7A9A500();
  return sub_1B7A9AFA0();
}

uint64_t sub_1B7A10CA0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1B7A10CAC()
{
  v1[3] = &type metadata for _TabSection.EmptySection;
  v1[4] = sub_1B7A123C4();
  v1[0] = 0x7974706D65;
  v1[1] = 0xE500000000000000;
  return sub_1B7A0E170(v1, &unk_1EBA483B0);
}

uint64_t sub_1B7A10D00@<X0>(uint64_t *a1@<X8>)
{
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v9 - v5;
  sub_1B7A9AC60();
  swift_getAssociatedConformanceWitness();
  v7 = sub_1B7A9A400();
  result = (*(v4 + 8))(v6, AssociatedTypeWitness);
  *a1 = v7;
  return result;
}

BOOL sub_1B7A10E40(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v14 - v5;
  sub_1B7A9AC60();
  swift_getAssociatedConformanceWitness();
  v7 = sub_1B7A9A400();
  (*(v4 + 8))(v6, AssociatedTypeWitness);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  sub_1B7A9AC60();
  swift_getAssociatedConformanceWitness();
  v12 = sub_1B7A9A400();
  (*(v9 + 8))(v11, v8);
  return v7 == v12;
}

uint64_t sub_1B7A11080()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  sub_1B7A98870();
  return sub_1B7A09EC8();
}

uint64_t sub_1B7A11188(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v3 = *(sub_1B7A98870() - 8);
  v4 = (*(v3 + 80) + 88) & ~*(v3 + 80);
  return sub_1B7A09FE4(a1, *(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_1B7A112EC()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    v0 = sub_1B7A98870();
    if (v2 <= 0x3F)
    {
      v0 = sub_1B7958DD8();
      if (v3 <= 0x3F)
      {
        sub_1B797CE50(319, &qword_1EBA484D8, &qword_1EBA484E0);
        v0 = v4;
        if (v5 <= 0x3F)
        {
          sub_1B7A11B38();
          v0 = v6;
          if (v7 <= 0x3F)
          {
            sub_1B797CE50(319, &qword_1EBA484F0, &qword_1EBA484F8);
            v0 = v8;
            if (v9 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v0;
}

uint64_t sub_1B7A1147C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v12 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = v11 | 7;
  v15 = (v11 | 7) + *(v6 + 64);
  if (v13 >= a2)
  {
    goto LABEL_31;
  }

  v16 = ((((((((*(*(AssociatedTypeWitness - 8) + 64) + ((v11 + 16) & ~v11) + (v15 & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v16 <= 3)
  {
    v17 = ((a2 - v13 + 255) >> 8) + 1;
  }

  else
  {
    v17 = 2;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *&a1[v16];
      if (!*&a1[v16])
      {
        goto LABEL_31;
      }
    }

    else
    {
      v20 = *&a1[v16];
      if (!v20)
      {
        goto LABEL_31;
      }
    }

LABEL_27:
    v22 = (v20 - 1) << (8 * v16);
    if (v16 <= 3)
    {
      v23 = *a1;
    }

    else
    {
      v22 = 0;
      v23 = *a1;
    }

    return v13 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = a1[v16];
    if (a1[v16])
    {
      goto LABEL_27;
    }
  }

LABEL_31:
  if (v7 >= v12)
  {
    v26 = *(v6 + 48);

    return v26(a1, v7, v5);
  }

  else
  {
    v24 = (((&a1[v15] & ~v14) + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v10 & 0x80000000) != 0)
    {
      v27 = *(v9 + 48);

      return v27((v24 + v11 + 8) & ~v11);
    }

    else
    {
      v25 = *v24;
      if (v25 >= 0xFFFFFFFF)
      {
        LODWORD(v25) = -1;
      }

      return (v25 + 1);
    }
  }
}

void sub_1B7A11774(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v31 = v8;
  v9 = *(v8 + 84);
  swift_getAssociatedTypeWitness();
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  v15 = (v12 | 7) + *(v8 + 64);
  v16 = ((v12 + 16) & ~v12) + *(v10 + 64);
  v17 = ((((((((v16 + (v15 & ~(v12 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v14 >= a3)
  {
    v20 = 0;
    if (v14 >= a2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v17 <= 3)
    {
      v18 = ((a3 - v14 + 255) >> 8) + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v14 >= a2)
    {
LABEL_20:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *&a1[v17] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *&a1[v17] = 0;
      }

      else if (v20)
      {
        a1[v17] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v9 >= v13)
      {
        v27 = *(v31 + 56);

        v27(a1, a2, v9, v7);
      }

      else
      {
        v23 = (&a1[v15] & ~(v12 | 7));
        if (v13 >= a2)
        {
          v28 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((v11 & 0x80000000) != 0)
          {
            v30 = *(v10 + 56);

            v30((v28 + v12 + 8) & ~v12, a2);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v29 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v29 = (a2 - 1);
            }

            *v28 = v29;
          }
        }

        else
        {
          if (v16 <= 3)
          {
            v24 = ~(-1 << (8 * v16));
          }

          else
          {
            v24 = -1;
          }

          if (v16)
          {
            v25 = v24 & (~v13 + a2);
            if (v16 <= 3)
            {
              v26 = v16;
            }

            else
            {
              v26 = 4;
            }

            bzero(v23, v16);
            if (v26 > 2)
            {
              if (v26 == 3)
              {
                *v23 = v25;
                v23[2] = BYTE2(v25);
              }

              else
              {
                *v23 = v25;
              }
            }

            else if (v26 == 1)
            {
              *v23 = v25;
            }

            else
            {
              *v23 = v25;
            }
          }
        }
      }

      return;
    }
  }

  v21 = ~v14 + a2;
  bzero(a1, ((((((((v16 + (v15 & ~(v12 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v17 <= 3)
  {
    v22 = (v21 >> 8) + 1;
  }

  else
  {
    v22 = 1;
  }

  if (v17 <= 3)
  {
    *a1 = v21;
    if (v20 > 1)
    {
LABEL_30:
      if (v20 == 2)
      {
        *&a1[v17] = v22;
      }

      else
      {
        *&a1[v17] = v22;
      }

      return;
    }
  }

  else
  {
    *a1 = v21;
    if (v20 > 1)
    {
      goto LABEL_30;
    }
  }

  if (v20)
  {
    a1[v17] = v22;
  }
}

void sub_1B7A11B38()
{
  if (!qword_1EBA484E8)
  {
    v0 = sub_1B7A970E0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA484E8);
    }
  }
}

uint64_t sub_1B7A11BFC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    return sub_1B7A11C08(result);
  }

  else
  {
  }
}

uint64_t sub_1B7A11C08(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B7A11DCC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  v12 = *(type metadata accessor for _FlowStackTabViewBody() - 8);
  return sub_1B7A0E4E0(a1, v2 + ((*(v12 + 80) + 72) & ~*(v12 + 80)), v5, v6, v7, v8, v9, v10, a2, v11);
}

unint64_t sub_1B7A11EA0()
{
  result = qword_1EBA48510;
  if (!qword_1EBA48510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48510);
  }

  return result;
}

uint64_t sub_1B7A11FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v8 = v5[2];
  v9 = v5[3];
  v10 = v5[4];
  v11 = v5[5];
  v13 = v5[6];
  v12 = v5[7];
  v14 = v5[8];
  v15 = *(type metadata accessor for _FlowStackTabViewBody() - 8);
  return sub_1B7A0FDFC(a1, v5 + ((*(v15 + 80) + 72) & ~*(v15 + 80)), v8, v9, v10, v11, v13, v12, a5, v14, a2, a3, a4);
}

uint64_t objectdestroy_51Tm()
{
  v8 = *(v0 + 16);
  v1 = (type metadata accessor for _FlowStackTabViewBody() - 8);
  v2 = v0 + ((*(*v1 + 80) + 72) & ~*(*v1 + 80));
  (*(*(v8 - 8) + 8))(v2, v8);
  v3 = v2 + v1[21];

  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1B7A98870();
  (*(*(AssociatedTypeWitness - 8) + 8))(v3 + *(v5 + 32), AssociatedTypeWitness);

  v6 = v2 + v1[25];
  sub_1B7A11BFC(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), *(v6 + 48));
  sub_1B795AE10(*(v2 + v1[26]), *(v2 + v1[26] + 8));
  j__swift_release();
  return swift_deallocObject();
}

unint64_t sub_1B7A123C4()
{
  result = qword_1EBA48520;
  if (!qword_1EBA48520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48520);
  }

  return result;
}

uint64_t sub_1B7A12418(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48528);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7A124F0(uint64_t a1, int a2)
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

uint64_t sub_1B7A12538(uint64_t result, int a2, int a3)
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

unint64_t sub_1B7A125A4()
{
  result = qword_1EBA48530;
  if (!qword_1EBA48530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48530);
  }

  return result;
}

unint64_t sub_1B7A125FC()
{
  result = qword_1EBA48538;
  if (!qword_1EBA48538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48538);
  }

  return result;
}

unint64_t sub_1B7A12654()
{
  result = qword_1EBA48540;
  if (!qword_1EBA48540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48540);
  }

  return result;
}

uint64_t sub_1B7A126B8()
{
  sub_1B7995018();
  sub_1B7A97890();
  return v1;
}

uint64_t sub_1B7A126F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a4;
  v47 = a3;
  v43 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v42 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v37 - v7;
  type metadata accessor for AppMetricsViewModifier();
  v8 = sub_1B7A97590();
  v40 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v39 = &v37 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48570);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v37 - v14;
  v16 = sub_1B7A99360();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B7A97B40();
  v45 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v37 - v21;
  sub_1B7A99210();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1B7957888(v15, &qword_1EBA48570);
    v23 = v41;
    v24 = v47;
    sub_1B7957EE0(v44, a2, v47);
    v25 = v42;
    sub_1B7957EE0(v23, a2, v24);
    v26 = sub_1B7A14574(&qword_1EBA46BC8, type metadata accessor for AppMetricsViewModifier);
    v54 = v24;
    v55 = v26;
    swift_getWitnessTable();
    sub_1B7959A28(v25, v8, a2);
    v27 = *(v43 + 8);
    v27(v25, a2);
    v27(v23, a2);
  }

  else
  {
    v37 = v19;
    v38 = v17;
    (*(v17 + 32))(v19, v15, v16);
    v43 = v20;
    v28 = v47;
    View.appMetrics(pipeline:)(v19, a2, v47);
    v29 = sub_1B7A14574(&qword_1EBA46BC8, type metadata accessor for AppMetricsViewModifier);
    v48 = v28;
    v49 = v29;
    WitnessTable = swift_getWitnessTable();
    v31 = v39;
    sub_1B7957EE0(v10, v8, WitnessTable);
    v32 = *(v40 + 8);
    v32(v10, v8);
    sub_1B7957EE0(v31, v8, WitnessTable);
    v20 = v43;
    sub_1B79B5878(v10, v8);
    v32(v10, v8);
    v32(v31, v8);
    (*(v38 + 8))(v37, v16);
  }

  v33 = sub_1B7A14574(&qword_1EBA46BC8, type metadata accessor for AppMetricsViewModifier);
  v34 = v47;
  v52 = v47;
  v53 = v33;
  v50 = swift_getWitnessTable();
  v51 = v34;
  v35 = swift_getWitnessTable();
  sub_1B7957EE0(v22, v20, v35);
  return (*(v45 + 8))(v22, v20);
}

uint64_t View.appMetrics(pipeline:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B7A99360();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AppMetricsViewModifier();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6, v11);
  *(v13 + 3) = 0;
  v14 = *(v10 + 24);
  *&v13[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DE8);
  swift_storeEnumTagMultiPayload();
  v15 = *(v10 + 28);
  *&v13[v15] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98);
  swift_storeEnumTagMultiPayload();
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  (*(v7 + 32))(v17 + v16, v9, v6);
  *v13 = sub_1B7A145BC;
  *(v13 + 1) = v17;
  v13[16] = 0;
  MEMORY[0x1B8CA96D0](v13, a2, v10, a3);
  return sub_1B7A13388(v13);
}

uint64_t type metadata accessor for AppMetricsViewModifier()
{
  result = qword_1EBA48548;
  if (!qword_1EBA48548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t View.appMetrics(pipeline:scene:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a4;
  v32 = a3;
  v34 = a2;
  v36 = a5;
  v6 = sub_1B7A99360();
  v31 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = type metadata accessor for AppMetricsViewModifier();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B7A97590();
  v33 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - v17;
  (*(v7 + 16))(&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6, v16);
  v19 = *(v9 + 24);
  *&v11[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DE8);
  swift_storeEnumTagMultiPayload();
  v20 = *(v9 + 28);
  *&v11[v20] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98);
  swift_storeEnumTagMultiPayload();
  v21 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v22 = swift_allocObject();
  (*(v7 + 32))(v22 + v21, &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v31);
  *v11 = sub_1B7A13544;
  *(v11 + 1) = v22;
  v11[16] = 0;
  v23 = v34;
  *(v11 + 3) = v34;
  v24 = v23;
  v25 = v35;
  MEMORY[0x1B8CA96D0](v11, v32, v9, v35);
  sub_1B7A13388(v11);
  v26 = sub_1B7A14574(&qword_1EBA46BC8, type metadata accessor for AppMetricsViewModifier);
  v37 = v25;
  v38 = v26;
  WitnessTable = swift_getWitnessTable();
  sub_1B7957EE0(v14, v12, WitnessTable);
  v28 = *(v33 + 8);
  v28(v14, v12);
  sub_1B7957EE0(v18, v12, WitnessTable);
  return (v28)(v18, v12);
}

uint64_t View.appMetricsPresenter(_:)()
{
  swift_getKeyPath();

  sub_1B7A98150();
}

uint64_t sub_1B7A13388(uint64_t a1)
{
  v2 = type metadata accessor for AppMetricsViewModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7A133E4(uint64_t a1)
{
  v2 = sub_1B7A99360();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  sub_1B7A99760();
  swift_allocObject();
  return sub_1B7A99750();
}

uint64_t objectdestroyTm_3()
{
  v1 = sub_1B7A99360();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_1B7A135C4()
{
  sub_1B7A13708();
  if (v0 <= 0x3F)
  {
    sub_1B7A137E8(319, &qword_1EBA48568, sub_1B7A1379C, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B7A137E8(319, &qword_1EDC108B8, MEMORY[0x1E697BE48], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1B7A137E8(319, &qword_1EDC10148, MEMORY[0x1E69AB2B8], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B7A13708()
{
  if (!qword_1EBA48558)
  {
    sub_1B7A99760();
    sub_1B7A14574(&qword_1EBA48560, MEMORY[0x1E69AB278]);
    v0 = sub_1B7A97140();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA48558);
    }
  }
}

unint64_t sub_1B7A1379C()
{
  result = qword_1EDC0FC58;
  if (!qword_1EDC0FC58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC0FC58);
  }

  return result;
}

void sub_1B7A137E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B7A13868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a1;
  v21 = a2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45E28) - 8;
  MEMORY[0x1EEE9AC00](v20);
  v4 = &v16 - v3;
  v5 = type metadata accessor for AppMetricsViewModifier();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1B7A140D0(v2, &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  sub_1B7A14134(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v8);
  KeyPath = swift_getKeyPath();
  sub_1B7A99760();
  sub_1B7A14574(&qword_1EBA48560, MEMORY[0x1E69AB278]);
  v9 = sub_1B7A97120();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45E58);
  (*(*(v10 - 8) + 16))(v4, v19, v10);
  v11 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45E48) + 36)];
  *v11 = KeyPath;
  v11[1] = v9;
  sub_1B7A140D0(v2, &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = swift_allocObject();
  sub_1B7A14134(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v8);
  v13 = swift_getKeyPath();
  v14 = &v4[*(v20 + 44)];
  *v14 = sub_1B7A143AC;
  *(v14 + 1) = v12;
  *(v14 + 2) = v13;
  *(v14 + 3) = 0;
  *(v14 + 16) = 0;
  sub_1B797A8B8(*(v2 + 24), sub_1B7A14198, v18, v21);

  return sub_1B7957888(v4, &qword_1EBA45E28);
}

uint64_t sub_1B7A13B44(uint64_t a1)
{
  v2 = sub_1B7A99900();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B7A97040();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == *MEMORY[0x1E697BE30])
  {
    sub_1B7A99760();
    sub_1B7A14574(&qword_1EBA48560, MEMORY[0x1E69AB278]);
    sub_1B7A97120();
    type metadata accessor for AppMetricsViewModifier();
    sub_1B797BE80(v5);
    sub_1B7A99740();
LABEL_5:

    return (*(v3 + 8))(v5, v2);
  }

  if (v11 == *MEMORY[0x1E697BE38])
  {
    sub_1B7A99760();
    sub_1B7A14574(&qword_1EBA48560, MEMORY[0x1E69AB278]);
    sub_1B7A97120();
    type metadata accessor for AppMetricsViewModifier();
    sub_1B797BE80(v5);
    sub_1B7A99730();
    goto LABEL_5;
  }

  return (*(v7 + 8))(v10, v6);
}

void sub_1B7A13E28(char a1, uint64_t a2)
{
  v4 = sub_1B7A99900();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B7A97040();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = MEMORY[0x1EEE9AC00](v12).n128_u64[0];
  v16 = &v20 - v15;
  if (a1)
  {
    if (*(a2 + 24))
    {
      if ([*(a2 + 24) activationState])
      {
        return;
      }
    }

    else
    {
      v17 = v13;
      type metadata accessor for AppMetricsViewModifier();
      sub_1B797C2F4(v16);
      (*(v9 + 104))(v11, *MEMORY[0x1E697BE38], v17);
      v18 = sub_1B7A97030();
      v19 = *(v9 + 8);
      v19(v11, v17);
      v19(v16, v17);
      if ((v18 & 1) == 0)
      {
        return;
      }
    }

    sub_1B7A99760();
    sub_1B7A14574(&qword_1EBA48560, MEMORY[0x1E69AB278]);
    sub_1B7A97120();
    type metadata accessor for AppMetricsViewModifier();
    sub_1B797BE80(v7);
    sub_1B7A99730();

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1B7A140D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppMetricsViewModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7A14134(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppMetricsViewModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7A14198(uint64_t a1)
{
  type metadata accessor for AppMetricsViewModifier();

  return sub_1B7A13B44(a1);
}

uint64_t objectdestroy_16Tm()
{
  v1 = type metadata accessor for AppMetricsViewModifier();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_1B79599CC();

  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1B7A97040();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1B7A99900();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1B7A143AC(char a1)
{
  v3 = *(type metadata accessor for AppMetricsViewModifier() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1B7A13E28(a1, v4);
}

unint64_t sub_1B7A1442C()
{
  result = qword_1EBA48578;
  if (!qword_1EBA48578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48580);
    sub_1B797DF30();
    sub_1B7A144B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48578);
  }

  return result;
}

unint64_t sub_1B7A144B8()
{
  result = qword_1EBA45E68;
  if (!qword_1EBA45E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45E10);
    sub_1B797DFBC();
    sub_1B7A14574(&qword_1EDC10978, type metadata accessor for _OnScenePhaseChange);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA45E68);
  }

  return result;
}

uint64_t sub_1B7A14574(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B7A14628()
{
  result = qword_1EBA48588;
  if (!qword_1EBA48588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48588);
  }

  return result;
}

unint64_t sub_1B7A146E0()
{
  result = qword_1EBA48590;
  if (!qword_1EBA48590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48590);
  }

  return result;
}

uint64_t sub_1B7A14734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v78 = a1;
  v83 = a2;
  v75 = sub_1B7A97A30();
  v62 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v60 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA485C0);
  v64 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v63 = &v57 - v5;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA485C8);
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v57 - v6;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA485D0);
  MEMORY[0x1EEE9AC00](v82);
  v76 = &v57 - v7;
  v71 = sub_1B7A97C80();
  v58 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v57 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA485D8);
  v61 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v59 = &v57 - v9;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA485E0);
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v57 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA485E8);
  MEMORY[0x1EEE9AC00](v66);
  v69 = &v57 - v11;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA485F0);
  MEMORY[0x1EEE9AC00](v80);
  v70 = &v57 - v12;
  v13 = sub_1B7A97950();
  v65 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B7A97CC0();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA485F8);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v57 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48600);
  v25 = *(v24 - 8);
  v67 = v24;
  v68 = v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v57 - v27;
  v29 = *v3;
  (*(v17 + 16))(v19, v78, v16, v26);
  sub_1B7A986A0();
  v30 = (v21 + 8);
  if (v29 > 1)
  {
    if (v29 == 2)
    {
      v37 = v57;
      sub_1B7A97C70();
      v38 = sub_1B797EC34(&qword_1EBA48608, &qword_1EBA485F8);
      v39 = sub_1B7A15820(&qword_1EBA48618, MEMORY[0x1E697C848]);
      v40 = v59;
      v41 = v71;
      sub_1B7A980E0();
      (*(v58 + 8))(v37, v41);
      (*v30)(v23, v20);
      v42 = v61;
      v43 = v73;
      (*(v61 + 16))(v74, v40, v73);
      swift_storeEnumTagMultiPayload();
      v84 = v20;
      v85 = v41;
      v86 = v38;
      v87 = v39;
      swift_getOpaqueTypeConformance2();
      v44 = sub_1B7A15820(&qword_1EBA48610, MEMORY[0x1E697C5D0]);
      v84 = v20;
      v85 = v75;
      v86 = v38;
      v87 = v44;
      swift_getOpaqueTypeConformance2();
      v45 = v76;
      sub_1B7A97B30();
      sub_1B7957820(v45, v81, &qword_1EBA485D0);
      swift_storeEnumTagMultiPayload();
      sub_1B7A156DC();
      sub_1B7A15868();
      sub_1B7A97B30();
      sub_1B7957888(v45, &qword_1EBA485D0);
      return (*(v42 + 8))(v40, v43);
    }

    else
    {
      v48 = v60;
      sub_1B7A97A20();
      v49 = sub_1B797EC34(&qword_1EBA48608, &qword_1EBA485F8);
      v50 = sub_1B7A15820(&qword_1EBA48610, MEMORY[0x1E697C5D0]);
      v51 = v63;
      v52 = v75;
      sub_1B7A980E0();
      (*(v62 + 8))(v48, v52);
      (*v30)(v23, v20);
      v53 = v64;
      v54 = v77;
      (*(v64 + 16))(v74, v51, v77);
      swift_storeEnumTagMultiPayload();
      v55 = sub_1B7A15820(&qword_1EBA48618, MEMORY[0x1E697C848]);
      v84 = v20;
      v85 = v71;
      v86 = v49;
      v87 = v55;
      swift_getOpaqueTypeConformance2();
      v84 = v20;
      v85 = v52;
      v86 = v49;
      v87 = v50;
      swift_getOpaqueTypeConformance2();
      v56 = v76;
      sub_1B7A97B30();
      sub_1B7957820(v56, v81, &qword_1EBA485D0);
      swift_storeEnumTagMultiPayload();
      sub_1B7A156DC();
      sub_1B7A15868();
      sub_1B7A97B30();
      sub_1B7957888(v56, &qword_1EBA485D0);
      return (*(v53 + 8))(v51, v54);
    }
  }

  else
  {
    sub_1B7A97940();
    v31 = sub_1B797EC34(&qword_1EBA48608, &qword_1EBA485F8);
    v32 = sub_1B7A15820(&qword_1EBA48628, MEMORY[0x1E697C4E8]);
    v33 = v28;
    sub_1B7A980E0();
    (*(v65 + 8))(v15, v13);
    (*v30)(v23, v20);
    v34 = v68;
    v35 = v28;
    v36 = v67;
    (*(v68 + 16))(v69, v35, v67);
    swift_storeEnumTagMultiPayload();
    v84 = v20;
    v85 = v13;
    v86 = v31;
    v87 = v32;
    swift_getOpaqueTypeConformance2();
    v46 = v70;
    sub_1B7A97B30();
    sub_1B7957820(v46, v81, &qword_1EBA485F0);
    swift_storeEnumTagMultiPayload();
    sub_1B7A156DC();
    sub_1B7A15868();
    sub_1B7A97B30();
    sub_1B7957888(v46, &qword_1EBA485F0);
    return (*(v34 + 8))(v33, v36);
  }
}

uint64_t FlowSheetDoneButtonLabelStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1B7A9AF80();
  MEMORY[0x1B8CAC1D0](v1);
  return sub_1B7A9AFA0();
}

unint64_t sub_1B7A15580()
{
  result = qword_1EBA48598;
  if (!qword_1EBA48598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48598);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA26_PreferenceWritingModifierVy011_JetEngine_aB033_FlowSheetDoneButtonLabelStyleKeyOGGAaBHPxAaBHD1__AjA0cH0HPyHCHCTm(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
  sub_1B7A97590();
  sub_1B797EC34(a4, a2);
  return swift_getWitnessTable();
}

unint64_t sub_1B7A156DC()
{
  result = qword_1EBA48620;
  if (!qword_1EBA48620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA485F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA485F8);
    sub_1B7A97950();
    sub_1B797EC34(&qword_1EBA48608, &qword_1EBA485F8);
    sub_1B7A15820(&qword_1EBA48628, MEMORY[0x1E697C4E8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48620);
  }

  return result;
}

uint64_t sub_1B7A15820(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B7A15868()
{
  result = qword_1EBA48630;
  if (!qword_1EBA48630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA485D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA485F8);
    sub_1B7A97C80();
    sub_1B797EC34(&qword_1EBA48608, &qword_1EBA485F8);
    sub_1B7A15820(&qword_1EBA48618, MEMORY[0x1E697C848]);
    swift_getOpaqueTypeConformance2();
    sub_1B7A97A30();
    sub_1B7A15820(&qword_1EBA48610, MEMORY[0x1E697C5D0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48630);
  }

  return result;
}

unint64_t sub_1B7A15A0C()
{
  result = qword_1EBA48638;
  if (!qword_1EBA48638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48640);
    sub_1B7A156DC();
    sub_1B7A15868();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48638);
  }

  return result;
}

uint64_t MediaArtworkProtocol<>.match(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  (*(v7 + 16))(a2, a1, AssociatedTypeWitness);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, AssociatedTypeWitness);
}

uint64_t ShelfGrid.init(_:layout:padding:spacing:shelfPosition:itemContent:itemDivider:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = *a2;
  v19 = a2[1];
  v20 = a2[2];
  v21 = a2[3];
  v22 = a2[4];
  v37 = a2[5];
  v36 = *(a2 + 48);
  v41 = *a3;
  v40 = *(a3 + 8);
  v39 = a3[2];
  v38 = *(a3 + 24);
  v45 = *a4;
  v44 = *(a4 + 8);
  v43 = a4[2];
  v42 = *(a4 + 24);
  v51 = a12;
  v52 = a13;
  v53 = a14;
  v54 = a15;
  v55 = a16;
  v56 = a17;
  v23 = type metadata accessor for ShelfGrid();
  v24 = a9 + v23[23];
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  v25 = a9 + v23[24];
  *v25 = swift_getKeyPath();
  *(v25 + 8) = 0;
  v26 = a9 + v23[25];
  *v26 = swift_getKeyPath();
  *(v26 + 8) = 0;
  v27 = a9 + v23[26];
  *v27 = swift_getKeyPath();
  *(v27 + 32) = 0;
  v28 = a9 + v23[27];
  *v28 = swift_getKeyPath();
  *(v28 + 8) = 0;
  *(v28 + 16) = 0;
  v51 = v18;
  v52 = v19;
  v53 = v20;
  v54 = v21;
  v55 = v22;
  v56 = v37;
  v57 = v36;
  sub_1B7A15E9C(&v51);
  result = (*(*(a12 - 8) + 32))(a9, a1, a12);
  v30 = a9 + v23[17];
  *v30 = v18;
  *(v30 + 8) = v19;
  *(v30 + 16) = v20;
  *(v30 + 24) = v21;
  *(v30 + 32) = v22;
  *(v30 + 40) = v37;
  *(v30 + 48) = v36;
  v31 = a9 + v23[18];
  *v31 = v41;
  *(v31 + 8) = v40;
  *(v31 + 16) = v39;
  *(v31 + 24) = v38;
  v32 = a9 + v23[19];
  *v32 = v45;
  *(v32 + 8) = v44;
  *(v32 + 16) = v43;
  *(v32 + 24) = v42;
  v33 = a9 + v23[20];
  *v33 = a5;
  *(v33 + 8) = a6 & 1;
  v34 = (a9 + v23[21]);
  *v34 = a7;
  v34[1] = a8;
  v35 = (a9 + v23[22]);
  *v35 = a10;
  v35[1] = a11;
  return result;
}

void sub_1B7A15E9C(void *a1)
{
  v2 = sub_1B7A9A280();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*a1)
  {
    sub_1B7A9A220();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8);
    sub_1B7A98D10();
    *(swift_allocObject() + 16) = xmmword_1B7A9C180;
    sub_1B7A98C40();
    sub_1B7A99E50();

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t ShelfGrid.init<>(_:layout:padding:spacing:shelfPosition:itemContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v47 = a7;
  v48 = a8;
  v45 = a6;
  v46 = a5;
  v42 = a1;
  v44 = a9;
  v41 = a11;
  v38 = a10;
  v43 = *(a10 - 8);
  v40 = a12;
  v39 = a13;
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v16);
  v21 = *(a2 + 8);
  v22 = *(a2 + 16);
  v23 = *(a2 + 24);
  v24 = *(a2 + 32);
  v25 = *(a2 + 40);
  v57[0] = *a2;
  v20 = v57[0];
  v57[1] = v21;
  v57[2] = v22;
  v57[3] = v23;
  v57[4] = v24;
  v57[5] = v25;
  LOBYTE(a2) = *(a2 + 48);
  v58 = a2;
  v26 = *(a3 + 8);
  v27 = *(a3 + 16);
  v28 = *(a3 + 24);
  v53 = *a3;
  v54 = v26;
  v55 = v27;
  v56 = v28;
  v29 = *(a4 + 8);
  v30 = *(a4 + 16);
  v31 = *(a4 + 24);
  v49 = *a4;
  v50 = v29;
  v51 = v30;
  v52 = v31;
  sub_1B7A16C88(v57[0], v21, v22, v23, v24, v25, a2);
  v32 = sub_1B7A988A0();
  v33 = sub_1B7A1D2FC(&qword_1EBA47DB8, MEMORY[0x1E697D6D0]);
  v36 = v32;
  v34 = v38;
  ShelfGrid.init(_:layout:padding:spacing:shelfPosition:itemContent:itemDivider:)(v18, v57, &v53, &v49, v46, v45 & 1, v47, v48, v44, sub_1B7A1F914, 0, v38, v41, v36, v40, v39, v33);
  sub_1B7A16CD4(v20, v21, v22, v23, v24, v25, a2);
  return (*(v43 + 8))(v42, v34);
}

uint64_t sub_1B7A162D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 + *(a1 + 68);
  v8 = *v5;
  v9 = *(v5 + 8);
  v10 = *(v5 + 16);
  v11 = *(v5 + 24);
  v12 = *(v5 + 32);
  v13 = *(v5 + 40);
  v14 = *(v5 + 48);
  sub_1B7A16C88(*v5, v9, v10, v11, v12, v13, v14);
  v6 = sub_1B7A16370(a1);
  sub_1B7A46004(v6 & 1, a2);

  return sub_1B7A16CD4(v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1B7A16370(uint64_t a1)
{
  v3 = sub_1B7A97880();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 92);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_1B7A9AA10();
    v9 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B795AE10(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_1B7A164C4(uint64_t a1)
{
  v3 = sub_1B7A97880();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 96);
  result = *v7;
  v9 = *(v7 + 8);
  if (*(v7 + 9) != 1)
  {
    v10 = *v7;

    sub_1B7A9AA10();
    v11 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B7A1F1D0(v10, v9, 0);
    (*(v4 + 8))(v6, v3);
    return v12;
  }

  return result;
}

void sub_1B7A1662C(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1B7A97880();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 100);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    *a2 = v10;
  }

  else
  {

    sub_1B7A9AA10();
    v11 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B795AE10(v10, 0);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1B7A16788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1B7A97880();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A1F52C(v2 + *(a1 + 104), v12);
  if (v13 == 1)
  {
    return sub_1B7957D50(v12, a2);
  }

  sub_1B7A9AA10();
  v10 = sub_1B7A97E70();
  sub_1B7A96D30();

  sub_1B7A97870();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1B7A168EC()
{
  sub_1B7A1F8B0();

  return sub_1B7A97890();
}

uint64_t sub_1B7A16934(uint64_t a1)
{
  sub_1B79948D0(a1, v3);
  sub_1B79948D0(v3, &v2);
  sub_1B7A1F8B0();
  sub_1B7A978A0();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

double sub_1B7A16994(uint64_t a1)
{
  v3 = sub_1B7A97880();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 108);
  v9 = *v7;
  v8 = *(v7 + 8);
  if (*(v7 + 16) == 1)
  {
    return *v7;
  }

  sub_1B7A9AA10();
  v11 = sub_1B7A97E70();
  sub_1B7A96D30();

  sub_1B7A97870();
  swift_getAtKeyPath();
  sub_1B7A1F1D0(v9, v8, 0);
  (*(v4 + 8))(v6, v3);
  return v12;
}

double EnvironmentValues.shelfGridConstrainedContainerSize.getter()
{
  type metadata accessor for ShelfContainerEnvironmentValues();
  sub_1B7A1D2FC(&qword_1EBA45FA8, type metadata accessor for ShelfContainerEnvironmentValues);
  v0 = sub_1B7A978B0();
  if (!v0)
  {
    return 0.0;
  }

  v1 = *&v0;
  swift_getKeyPath();
  sub_1B7A96CB0();

  v2 = *(*&v1 + 16);
  sub_1B79888A8();
  sub_1B7A97890();
  v3 = v1;
  if (v5)
  {
    v3 = INFINITY;
  }

  if (v3 < v2)
  {
    v2 = v3;
  }

  sub_1B7A1D08C();
  sub_1B7A97890();
  if ((LOBYTE(v1) & 1) == 0)
  {
    swift_getKeyPath();
    sub_1B7A96CB0();
  }

  return v2;
}

uint64_t sub_1B7A16C88(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  v7 = a7 >> 5;
  if (v7 <= 4 && ((1 << v7) & 0x13) != 0)
  {
    return sub_1B7A16CBC(a2, a3, a4);
  }

  return result;
}

uint64_t sub_1B7A16CBC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3)
  {
  }

  return result;
}

uint64_t sub_1B7A16CD4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  v7 = a7 >> 5;
  if (v7 <= 4 && ((1 << v7) & 0x13) != 0)
  {
    return sub_1B7A16D08(a2, a3, a4);
  }

  return result;
}

uint64_t sub_1B7A16D08(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3)
  {
  }

  return result;
}

uint64_t sub_1B7A16D20()
{
  v0 = *(sub_1B7A98D30() + 16);

  return sub_1B7A1F708(v0, sub_1B7A1F81C);
}

void sub_1B7A16DCC(int64x2_t **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  v64 = a7;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = *(sub_1B7A98D30() + 16);

  v39 = v12;
  if (!v12)
  {
    goto LABEL_19;
  }

  v13 = 0;
  while (1)
  {
    *&v44 = v64;
    *(&v44 + 1) = a8;
    v45 = a9;
    v46 = a10;
    v14 = type metadata accessor for ShelfGrid();
    v15 = sub_1B7A16994(v14);
    v17 = v16;
    v18 = *(v14 + 76);
    v19 = (a3 + *(v14 + 72));
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = v19[2];
    LOBYTE(v19) = *(v19 + 24);
    v23 = (a3 + v18);
    v24 = *v23;
    v25 = *(v23 + 8);
    v26 = v23[2];
    LOBYTE(v23) = *(v23 + 24);
    v57 = v21;
    v56 = v19;
    v55 = v25;
    v53 = v23;
    type metadata accessor for ShelfGridItemWidth.Context._OffsetStorage();
    v27 = swift_allocObject();
    *(v27 + 16) = v13;
    *(v27 + 24) = 0;
    *&v58 = v27;
    *(&v58 + 1) = v15;
    *&v59 = v17;
    *(&v59 + 1) = v20;
    LOBYTE(v60) = v57;
    *(&v60 + 1) = v44;
    DWORD1(v60) = *(&v44 + 3);
    *(&v60 + 1) = v22;
    LOBYTE(v61) = v56;
    *(&v61 + 1) = v50;
    DWORD1(v61) = *(&v50 + 3);
    *(&v61 + 1) = v24;
    LOBYTE(v62) = v55;
    DWORD1(v62) = *&v54[3];
    *(&v62 + 1) = *v54;
    *(&v62 + 1) = v26;
    v63 = v53;
    v50 = a4;
    v51 = a5;
    v52 = a6;
    v47 = v61;
    v48 = v62;
    v49 = v53;
    v45 = v59;
    v46 = v60;
    v44 = v58;
    ShelfGridItemWidth.resolve(using:)(&v44);
    if (*(v58 + 24) != 1)
    {
      break;
    }

    (*a1)->i64[v13] = v28;
    sub_1B7A1F85C(&v58);
    if (v39 == ++v13)
    {
      goto LABEL_19;
    }
  }

  v29 = *a1;
  if (!*a1)
  {
    goto LABEL_18;
  }

  v30 = a1[1];
  if ((v30 & 0x8000000000000000) == 0)
  {
    if (v30)
    {
      if (v30 > 3)
      {
        v31 = v30 & 0x7FFFFFFFFFFFFFFCLL;
        v32 = vdupq_lane_s64(v28, 0);
        v33 = v29 + 1;
        v34 = v30 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v33[-1] = v32;
          *v33 = v32;
          v33 += 2;
          v34 -= 4;
        }

        while (v34);
        if (v30 == v31)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v31 = 0;
      }

      v35 = v30 - v31;
      v36 = &v29->i64[v31];
      do
      {
        *v36++ = v28;
        --v35;
      }

      while (v35);
    }

LABEL_18:
    sub_1B7A1F85C(&v58);
LABEL_19:
    v37 = *(sub_1B7A98D30() + 16);

    *a2 = v37;
    return;
  }

  __break(1u);
}

uint64_t sub_1B7A170EC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v89 = a3;
  v81 = a2[5];
  v5 = *(v81 + 2);
  v90 = a2[2];
  v67 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v66 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v65 = &v64 - v6;
  v79 = sub_1B7A99110();
  v93 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v92 = &v64 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v88 = &v64 - v11;
  v12 = a2[3];
  v77 = a2[4];
  v75 = v12;
  swift_getTupleTypeMetadata2();
  sub_1B7A98AC0();
  swift_getWitnessTable();
  sub_1B7A987E0();
  v73 = sub_1B7A97B40();
  v13 = sub_1B7A985B0();
  v78 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v64 - v14;
  WitnessTable = swift_getWitnessTable();
  v69 = a2[6];
  v113 = WitnessTable;
  v114 = v69;
  v70 = swift_getWitnessTable();
  v112 = v70;
  v17 = swift_getWitnessTable();
  v72 = v17;
  v71 = sub_1B7A1D2A8();
  v108 = v13;
  v109 = &type metadata for ComponentModelViewID;
  v110 = v17;
  v111 = v71;
  v18 = sub_1B7A987A0();
  v74 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v64 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45FE8);
  v21 = sub_1B7A97590();
  v76 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v64 - v22;
  v24 = sub_1B7A97590();
  v84 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v64 - v25;
  sub_1B7A97E00();
  v85 = v24;
  v87 = sub_1B7A97590();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v82 = &v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v83 = &v64 - v29;
  *&v30 = v90;
  *(&v30 + 1) = v75;
  *&v31 = v77;
  *(&v31 + 1) = v81;
  v95 = v31;
  v94 = v30;
  v32 = a2[7];
  v96 = v69;
  v97 = v32;
  v98 = a1;
  v99 = v91;
  sub_1B7A985A0();
  __swift_project_boxed_opaque_existential_1(a1 + 1, a1[4]);
  ComponentModel.viewID.getter();
  sub_1B7A98390();
  sub_1B79F9A0C(&v108);
  v33 = v15;
  v34 = v79;
  (*(v78 + 8))(v33, v13);
  v35 = swift_getWitnessTable();
  View._shelfGridPrefersEagerLayout(_:)();
  (*(v74 + 8))(v20, v18);
  v36 = a1[6];
  v37 = sub_1B79E3274(&qword_1EBA45FF0, &qword_1EBA45FE8);
  v106 = v35;
  v107 = v37;
  v38 = swift_getWitnessTable();
  v81 = v26;
  View.unifiedImpressionableLayoutItem(_:position:)((a1 + 1), v36, 0, v21, v38);
  (*(v76 + 8))(v23, v21);
  v39 = v80;
  sub_1B7A99100();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47590);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1B7A9C180;
  __swift_project_boxed_opaque_existential_1(a1 + 1, a1[4]);
  v41 = sub_1B7A18694();
  v42 = MEMORY[0x1E69E6158];
  *(v40 + 56) = MEMORY[0x1E69E6158];
  *(v40 + 32) = v41;
  *(v40 + 40) = v43;
  sub_1B7A990F0();

  v44 = *(v93 + 8);
  v93 += 8;
  v44(v39, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48768);
  sub_1B7A99780();
  *(swift_allocObject() + 16) = xmmword_1B7A9D270;
  __swift_project_boxed_opaque_existential_1(a1 + 1, a1[4]);
  v45 = sub_1B7A18890();
  v111 = v42;
  v108 = v45;
  v109 = v46;
  sub_1B7A99770();
  __swift_project_boxed_opaque_existential_1(a1 + 1, a1[4]);
  v47 = sub_1B7A18AA4();
  v111 = v42;
  if (!v48)
  {
    v104 = 0;
    v105 = 0xE000000000000000;
    v49 = v65;
    sub_1B7A9AC60();
    v50 = AssociatedTypeWitness;
    sub_1B7A9AE60();
    (*(v66 + 8))(v49, v50);
    v47 = v104;
    v48 = v105;
  }

  v108 = v47;
  v109 = v48;
  sub_1B7A99770();
  v51 = v88;
  v52 = v92;
  sub_1B7A990E0();

  v44(v52, v34);
  v53 = sub_1B79F8F4C();
  v102 = v38;
  v103 = v53;
  v54 = v85;
  v55 = swift_getWitnessTable();
  v56 = v82;
  v57 = v81;
  View._automationIdentifier(_:)();
  v44(v51, v34);
  (*(v84 + 8))(v57, v54);
  v58 = sub_1B7A1D2FC(&qword_1EDC10A40, MEMORY[0x1E697CBE8]);
  v100 = v55;
  v101 = v58;
  v59 = v87;
  v60 = swift_getWitnessTable();
  v61 = v83;
  sub_1B7957EE0(v56, v59, v60);
  v62 = *(v86 + 8);
  v62(v56, v59);
  sub_1B7957EE0(v61, v59, v60);
  return (v62)(v61, v59);
}

uint64_t sub_1B7A17CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v67 = a8;
  v72 = a7;
  v73 = a9;
  v65 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v63 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v64 = &v56 - v17;
  swift_getTupleTypeMetadata2();
  v18 = sub_1B7A98AC0();
  WitnessTable = swift_getWitnessTable();
  v59 = v18;
  v58 = WitnessTable;
  v20 = sub_1B7A987E0();
  v62 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v61 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v60 = &v56 - v23;
  v66 = v24;
  v25 = a4;
  v26 = sub_1B7A97B40();
  v70 = *(v26 - 8);
  v71 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v69 = &v56 - v27;
  sub_1B7A9A760();
  v68 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v28 = *(a1 + 64);
  v29 = *(a1 + 72);
  v30 = *(a1 + 80);
  v31 = *(a1 + 88);
  v32 = *(a1 + 96);
  v33 = *(a1 + 104);
  v34 = *(a1 + 48);
  v77 = *(a1 + 56);
  v78 = v28;
  v79 = v29;
  v80 = v30;
  v81 = v31;
  v82 = v32;
  v83 = v33;
  sub_1B7A16C88(v77, v28, v29, v30, v31, v32, v33);
  v35 = a2;
  v36 = *(sub_1B7A98D30() + 16);

  v76[0] = a3;
  v76[1] = a4;
  v76[2] = a5;
  v76[3] = a6;
  v56 = a5;
  v37 = v72;
  v57 = a6;
  v38 = v67;
  v76[4] = v72;
  v76[5] = v67;
  v39 = type metadata accessor for ShelfGrid();
  sub_1B7A1662C(v39, v76);
  v40 = sub_1B7A46488(v34, v36, v76);
  sub_1B7A16CD4(v77, v78, v79, v80, v81, v82, v83);
  if (v40)
  {
    v41 = sub_1B7A979A0();
    MEMORY[0x1EEE9AC00](v41);
    *(&v56 - 8) = a3;
    *(&v56 - 7) = v25;
    v42 = v57;
    *(&v56 - 6) = v56;
    *(&v56 - 5) = v42;
    *(&v56 - 4) = v37;
    *(&v56 - 3) = v38;
    *(&v56 - 2) = v35;
    *(&v56 - 1) = a1;
    v43 = v61;
    sub_1B7A987D0();
    v44 = v66;
    v45 = swift_getWitnessTable();
    v46 = v60;
    sub_1B7957EE0(v43, v44, v45);
    v47 = *(v62 + 8);
    v47(v43, v44);
    sub_1B7957EE0(v46, v44, v45);
    v48 = v69;
    sub_1B79B5878(v43, v44);
    v47(v43, v44);
    v47(v46, v44);
  }

  else
  {
    v49 = v63;
    (*(v35 + *(v39 + 84)))(a1);
    v50 = v64;
    sub_1B7957EE0(v49, v25, v37);
    v51 = *(v65 + 8);
    v51(v49, v25);
    sub_1B7957EE0(v50, v25, v37);
    v52 = v66;
    swift_getWitnessTable();
    v48 = v69;
    sub_1B7959A28(v49, v52, v25);
    v51(v49, v25);
    v51(v50, v25);
  }

  v74 = swift_getWitnessTable();
  v75 = v37;
  v53 = v71;
  v54 = swift_getWitnessTable();
  sub_1B7957EE0(v48, v53, v54);
  (*(v70 + 8))(v48, v53);
}

uint64_t sub_1B7A182F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v50 = a8;
  v51 = a3;
  v46 = a2;
  v49 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v45 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v47 = &v39 - v15;
  v17 = v16;
  v44 = *(v16 - 1);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v39 - v22;
  sub_1B7A9A760();
  v48 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v55 = v51;
  v56 = v17;
  v57 = a4;
  v58 = a5;
  v42 = a6;
  v59 = a6;
  v60 = a7;
  v24 = a7;
  v25 = type metadata accessor for ShelfGrid();
  v26 = a1;
  v27 = *(a1 + *(v25 + 84));
  v28 = v46;
  v27(v46);
  sub_1B7957EE0(v20, v17, a6);
  v51 = v23;
  v29 = v44;
  v40 = v20;
  v41 = v24;
  v43 = *(v44 + 8);
  v43(v20, v17);
  v30 = *(v26 + *(v25 + 88));
  v31 = v45;
  v30(v28);
  v32 = v47;
  sub_1B7957EE0(v31, a4, v24);
  v33 = v49;
  v34 = v17;
  v35 = *(v49 + 8);
  v35(v31, a4);
  v36 = v40;
  (*(v29 + 16))(v40, v51, v34);
  v55 = v36;
  (*(v33 + 16))(v31, v32, a4);
  v56 = v31;
  v54[0] = v34;
  v54[1] = a4;
  v52 = v42;
  v53 = v41;
  sub_1B7959BAC(&v55, 2uLL, v54);
  v35(v32, a4);
  v37 = v43;
  v43(v51, v34);
  v35(v31, a4);
  v37(v36, v34);
}

uint64_t sub_1B7A18694()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  sub_1B7A9A370();
  v3 = sub_1B7A99670();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1B7957888(v2, &qword_1EBA45C90);
LABEL_9:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_10;
  }

  v5 = sub_1B7A99660();
  (*(v4 + 8))(v2, v3);
  if (!*(v5 + 16) || (v6 = sub_1B79948B8(0x6973736572706D69, 0xEE00657079546E6FLL), (v7 & 1) == 0))
  {

    goto LABEL_9;
  }

  sub_1B79948D0(*(v5 + 56) + 32 * v6, &v10);

  if (!*(&v11 + 1))
  {
LABEL_10:
    sub_1B7957888(&v10, &qword_1EBA46B50);
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v9;
  }

LABEL_11:
  swift_getDynamicType();
  return sub_1B7A9AFF0();
}

uint64_t sub_1B7A18890()
{
  v0 = sub_1B7A99630();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12[-v5 - 8];
  sub_1B7A9A370();
  v7 = sub_1B7A99670();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1B7957888(v6, &qword_1EBA45C90);
    _s9JetEngine14ComponentModelP01_aB8_SwiftUIE6viewIDAD0cd4ViewH0Vvg_0();
    v9 = _s9JetEngine12MediaArtworkV01_aB8_SwiftUIE8CacheKeyV16debugDescriptionSSvg_0();
    sub_1B7991408(v12);
  }

  else
  {
    sub_1B7A99650();
    (*(v8 + 8))(v6, v7);
    v9 = sub_1B7A99620();
    (*(v1 + 8))(v3, v0);
  }

  return v9;
}

uint64_t sub_1B7A18AA4()
{
  v0 = sub_1B7A99630();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1B7A9A370();
  v7 = sub_1B7A99670();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1B7957888(v6, &qword_1EBA45C90);
    return 0;
  }

  else
  {
    sub_1B7A99650();
    (*(v8 + 8))(v6, v7);
    v10 = sub_1B7A99610();
    (*(v1 + 8))(v3, v0);
    return v10;
  }
}

uint64_t ShelfGrid.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48650);
  v3 = a1[5];
  v35 = a1[2];
  v36 = v3;
  type metadata accessor for UnifiedImpressionableLayoutViewModifier();
  sub_1B7A97590();
  v4 = sub_1B7A1D0E0();
  WitnessTable = swift_getWitnessTable();
  v69 = v4;
  v70 = WitnessTable;
  v5 = MEMORY[0x1E697E858];
  swift_getWitnessTable();
  v29[1] = sub_1B7A97690();
  v6 = a1[3];
  v34 = a1[4];
  v32 = v6;
  swift_getTupleTypeMetadata2();
  sub_1B7A98AC0();
  swift_getWitnessTable();
  sub_1B7A987E0();
  sub_1B7A97B40();
  v7 = sub_1B7A985B0();
  v33 = MEMORY[0x1E6981870];
  v8 = swift_getWitnessTable();
  v31 = a1[6];
  v67 = v8;
  v68 = v31;
  v29[2] = MEMORY[0x1E697F968];
  v66 = swift_getWitnessTable();
  v62 = v7;
  v63 = &type metadata for ComponentModelViewID;
  v64 = swift_getWitnessTable();
  v65 = sub_1B7A1D2A8();
  sub_1B7A987A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45FE8);
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97E00();
  sub_1B7A97590();
  v60 = swift_getWitnessTable();
  v61 = sub_1B79E3274(&qword_1EBA45FF0, &qword_1EBA45FE8);
  v58 = swift_getWitnessTable();
  v59 = sub_1B79F8F4C();
  v56 = swift_getWitnessTable();
  v57 = sub_1B7A1D2FC(&qword_1EDC10A40, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  type metadata accessor for _ResolvedVerticalShelfLayout();
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97B40();
  v9 = swift_getWitnessTable();
  v10 = swift_getWitnessTable();
  v11 = MEMORY[0x1E697E5D8];
  v54 = v10;
  v55 = MEMORY[0x1E697E5D8];
  v52 = swift_getWitnessTable();
  v53 = v11;
  v29[0] = v5;
  v50 = swift_getWitnessTable();
  v51 = MEMORY[0x1E697EBF8];
  v48 = swift_getWitnessTable();
  v49 = WitnessTable;
  v46 = v9;
  v47 = swift_getWitnessTable();
  swift_getWitnessTable();
  v12 = sub_1B7A987E0();
  WitnessTable = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v29 - v13;
  v15 = sub_1B7A97590();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v29 - v20;
  sub_1B7A97990();
  *&v23 = v34;
  *&v22 = v35;
  *(&v22 + 1) = v32;
  *(&v23 + 1) = v36;
  v39 = v22;
  v40 = v23;
  v24 = a1[7];
  v41 = v31;
  v42 = v24;
  v43 = v37;
  sub_1B7A987D0();
  sub_1B7A98A20();
  v28 = swift_getWitnessTable();
  sub_1B7A98410();
  (*(WitnessTable + 8))(v14, v12);
  v44 = v28;
  v45 = MEMORY[0x1E697EBF8];
  v25 = swift_getWitnessTable();
  sub_1B7957EE0(v18, v15, v25);
  v26 = *(v16 + 8);
  v26(v18, v15);
  sub_1B7957EE0(v21, v15, v25);
  return (v26)(v21, v15);
}

uint64_t sub_1B7A19374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *&v128 = a6;
  *(&v128 + 1) = a7;
  v133 = a5;
  v126 = a1;
  v122 = a8;
  swift_getTupleTypeMetadata2();
  sub_1B7A98AC0();
  swift_getWitnessTable();
  sub_1B7A987E0();
  sub_1B7A97B40();
  v12 = sub_1B7A985B0();
  WitnessTable = swift_getWitnessTable();
  v218 = a6;
  v216 = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v14 = sub_1B7A1D2A8();
  *&v207[0] = v12;
  *(&v207[0] + 1) = &type metadata for ComponentModelViewID;
  *&v207[1] = v13;
  *(&v207[1] + 1) = v14;
  sub_1B7A987A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45FE8);
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97E00();
  v15 = sub_1B7A97590();
  v16 = swift_getWitnessTable();
  v17 = sub_1B79E3274(&qword_1EBA45FF0, &qword_1EBA45FE8);
  v214 = v16;
  v215 = v17;
  v18 = swift_getWitnessTable();
  v19 = sub_1B79F8F4C();
  v212 = v18;
  v213 = v19;
  v20 = swift_getWitnessTable();
  v21 = sub_1B7A1D2FC(&qword_1EDC10A40, MEMORY[0x1E697CBE8]);
  v210 = v20;
  v211 = v21;
  v108 = swift_getWitnessTable();
  v109 = v15;
  v131 = type metadata accessor for _ResolvedVerticalShelfLayout();
  v132 = sub_1B7A97590();
  v127 = sub_1B7A97590();
  v22 = sub_1B7A97590();
  v23 = v133;
  type metadata accessor for UnifiedImpressionableLayoutViewModifier();
  v124 = v22;
  v24 = sub_1B7A97590();
  v113 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v112 = &v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v110 = &v104 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v111 = &v104 - v29;
  v130 = a2;
  *&v207[0] = a2;
  v116 = a3;
  v117 = a4;
  *(&v207[0] + 1) = a3;
  *&v207[1] = a4;
  *(&v207[1] + 1) = v23;
  v207[2] = v128;
  v30 = type metadata accessor for ShelfGrid();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v114 = &v104 - v33;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48650);
  v34 = sub_1B7A97590();
  v35 = sub_1B7A1D0E0();
  v36 = swift_getWitnessTable();
  v208 = v35;
  v209 = v36;
  v129 = v36;
  v106 = swift_getWitnessTable();
  v107 = v34;
  v37 = sub_1B7A97690();
  v123 = v24;
  v38 = sub_1B7A97B40();
  v120 = *(v38 - 8);
  v121 = v38;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v104 - v39;
  sub_1B7A9A760();
  v119 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v41 = v126;
  sub_1B7A162D8(v30, v219);
  v115 = *v219;
  v118 = v37;
  v42 = MEMORY[0x1E697EBF8];
  v125 = v40;
  if (((1 << (v221 >> 5)) & 0x13) == 0)
  {
    v107 = sub_1B7A98D30();
    v61 = v41 + *(v30 + 76);
    v62 = *v61;
    v63 = *(v61 + 8);
    v64 = *(v61 + 16);
    LOBYTE(v61) = *(v61 + 24);
    v180 = v62;
    v181 = v63;
    v182 = v64;
    v183 = v61;
    v65 = *(&v220 + 1);
    v66 = v220;
    v67 = v221 >> 5;
    if (v67 <= 2)
    {
      if (v67 == 1)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (v67 == 3)
    {
      v66 = *&v219[8];
      v65 = *&v219[16];
    }

    else
    {
      if (v67 == 4)
      {
        if ((v221 & 1) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      v66 = *&v219[8];
      v65 = *&v219[16];
      if (v219[24])
      {
LABEL_14:
        v66 = sub_1B7A989F0();
      }
    }

LABEL_15:
    v106 = v65;
    sub_1B7A1662C(v30, v207);
    v68 = v114;
    (*(v31 + 16))(v114, v41, v30);
    v69 = (*(v31 + 80) + 64) & ~*(v31 + 80);
    v70 = swift_allocObject();
    v71 = v116;
    v72 = v117;
    *(v70 + 2) = v130;
    *(v70 + 3) = v71;
    v73 = v133;
    *(v70 + 4) = v72;
    *(v70 + 5) = v73;
    v74 = *(&v128 + 1);
    *(v70 + 6) = v128;
    *(v70 + 7) = v74;
    v75 = *(v31 + 32);
    v105 = v30;
    v75(&v70[v69], v68, v30);
    v76 = &v70[(v32 + v69 + 7) & 0xFFFFFFFFFFFFFFF8];
    v77 = *&v219[16];
    *v76 = *v219;
    *(v76 + 1) = v77;
    *(v76 + 2) = v220;
    v76[48] = v221;
    sub_1B79CD298(v107, v115, &v180, v66, v106, v207, sub_1B7A1F1DC, v70, v178);
    sub_1B7A1F2D4(v219, v207);
    sub_1B7A97F00();
    v78 = v126;
    v79 = v131;
    v80 = swift_getWitnessTable();
    sub_1B7A98450();
    v176[4] = v178[4];
    v176[5] = v178[5];
    v177 = v179;
    v176[0] = v178[0];
    v176[1] = v178[1];
    v176[2] = v178[2];
    v176[3] = v178[3];
    (*(*(v79 - 8) + 8))(v176, v79);
    v172 = v190;
    v173 = v191;
    v174 = v192;
    v175 = v193;
    v168 = v186;
    v169 = v187;
    v170 = v188;
    v171 = v189;
    v166 = v184;
    v167 = v185;
    sub_1B7A97F20();
    v159 = v80;
    v160 = MEMORY[0x1E697E5D8];
    *(&v128 + 1) = MEMORY[0x1E697E858];
    v81 = v132;
    v82 = swift_getWitnessTable();
    sub_1B7A98450();
    v161[6] = v172;
    v161[7] = v173;
    v161[8] = v174;
    v162 = v175;
    v161[2] = v168;
    v161[3] = v169;
    v161[4] = v170;
    v161[5] = v171;
    v161[0] = v166;
    v161[1] = v167;
    (*(*(v81 - 8) + 8))(v161, v81);
    v165[10] = v204;
    v165[11] = v205;
    LOBYTE(v165[12]) = v206;
    v165[6] = v200;
    v165[7] = v201;
    v165[8] = v202;
    v165[9] = v203;
    v165[2] = v196;
    v165[3] = v197;
    v165[4] = v198;
    v165[5] = v199;
    v165[0] = v194;
    v165[1] = v195;
    v83 = v105;
    sub_1B7A164C4(v105);
    sub_1B7A98A20();
    v157 = v82;
    v158 = MEMORY[0x1E697E5D8];
    v102 = v127;
    v103 = swift_getWitnessTable();
    sub_1B7A98410();
    v163[10] = v165[10];
    v163[11] = v165[11];
    v164 = v165[12];
    v163[6] = v165[6];
    v163[7] = v165[7];
    v163[8] = v165[8];
    v163[9] = v165[9];
    v163[2] = v165[2];
    v163[3] = v165[3];
    v163[4] = v165[4];
    v163[5] = v165[5];
    v163[0] = v165[0];
    v163[1] = v165[1];
    (*(*(v102 - 8) + 8))(v163, v102);
    memcpy(v156, v207, sizeof(v156));
    v84 = v78 + *(v83 + 80);
    v85 = *v84;
    v86 = *(v84 + 8);
    v154 = v103;
    v155 = MEMORY[0x1E697EBF8];
    v87 = v124;
    v88 = swift_getWitnessTable();
    v89 = v110;
    View.unifiedImpressionableLayout<A>(_:position:definesParentContext:)(v78, v85, v86, 1, v87, v130, v88, v110);
    memcpy(v165, v156, 0x138uLL);
    (*(*(v87 - 8) + 8))(v165, v87);
    v152 = v88;
    v153 = v129;
    v90 = v123;
    v91 = swift_getWitnessTable();
    v92 = v111;
    sub_1B7957EE0(v89, v90, v91);
    v93 = *(v113 + 8);
    v93(v89, v90);
    v94 = v112;
    sub_1B7957EE0(v92, v90, v91);
    v95 = v118;
    swift_getWitnessTable();
    v60 = v125;
    sub_1B7959A28(v94, v95, v90);
    sub_1B7A1F330(v219);
    v93(v94, v90);
    v96 = v92;
    v55 = MEMORY[0x1E697EBF8];
    v93(v96, v90);
    v59 = MEMORY[0x1E697E5D8];
    goto LABEL_16;
  }

  v207[0] = *&v219[8];
  LOBYTE(v207[1]) = v219[24];
  v113 = sub_1B7A16D20();
  v43 = v114;
  (*(v31 + 16))(v114, v41, v30);
  v44 = (*(v31 + 80) + 64) & ~*(v31 + 80);
  v45 = v42;
  v46 = (v32 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  v48 = v116;
  v49 = v117;
  *(v47 + 2) = v130;
  *(v47 + 3) = v48;
  v50 = v133;
  *(v47 + 4) = v49;
  *(v47 + 5) = v50;
  v51 = *(&v128 + 1);
  *(v47 + 6) = v128;
  *(v47 + 7) = v51;
  (*(v31 + 32))(&v47[v44], v43, v30);
  *&v47[v46] = v115;
  v52 = &v47[(v46 + 15) & 0xFFFFFFFFFFFFFFF8];
  v52[48] = v221;
  v53 = v220;
  v54 = *v219;
  *(v52 + 1) = *&v219[16];
  *(v52 + 2) = v53;
  *v52 = v54;
  *&v47[(v46 + 71) & 0xFFFFFFFFFFFFFFF8] = v113;
  sub_1B7A1F2D4(v219, v207);
  v55 = v45;
  *&v165[0] = sub_1B7A97680();
  *(&v165[0] + 1) = v56;
  v57 = v118;
  v58 = swift_getWitnessTable();
  sub_1B7957EE0(v165, v57, v58);

  *v156 = v207[0];
  sub_1B7957EE0(v156, v57, v58);
  *v156 = v165[0];

  v140 = swift_getWitnessTable();
  v59 = MEMORY[0x1E697E5D8];
  v141 = MEMORY[0x1E697E5D8];
  v138 = swift_getWitnessTable();
  v139 = v59;
  v136 = swift_getWitnessTable();
  v137 = v55;
  v134 = swift_getWitnessTable();
  v135 = v129;
  swift_getWitnessTable();
  sub_1B79B5878(v156, v57);
  sub_1B7A1F330(v219);

  v60 = v125;

LABEL_16:
  v97 = swift_getWitnessTable();
  v150 = swift_getWitnessTable();
  v151 = v59;
  v148 = swift_getWitnessTable();
  v149 = v59;
  v146 = swift_getWitnessTable();
  v147 = v55;
  v144 = swift_getWitnessTable();
  v145 = v129;
  v98 = swift_getWitnessTable();
  v142 = v97;
  v143 = v98;
  v99 = v121;
  v100 = swift_getWitnessTable();
  sub_1B7957EE0(v60, v99, v100);
  (*(v120 + 8))(v60, v99);
}

uint64_t sub_1B7A1A400@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v155 = a5;
  v152 = a4;
  v153 = a1;
  v143 = a2;
  v144 = a3;
  v150 = a8;
  v146 = a11;
  v154 = a9;
  v13 = sub_1B7A97D60();
  v148 = *(v13 - 8);
  v149 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v147 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B7A97B60();
  v141 = *(v15 - 8);
  v142 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v140 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = a7;
  swift_getTupleTypeMetadata2();
  sub_1B7A98AC0();
  swift_getWitnessTable();
  sub_1B7A987E0();
  sub_1B7A97B40();
  v17 = sub_1B7A985B0();
  WitnessTable = swift_getWitnessTable();
  v174 = a10;
  v145 = a10;
  v172 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v19 = sub_1B7A1D2A8();
  *&v175 = v17;
  *(&v175 + 1) = &type metadata for ComponentModelViewID;
  *&v176 = v18;
  *(&v176 + 1) = v19;
  sub_1B7A987A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45FE8);
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97E00();
  sub_1B7A97590();
  sub_1B7A97590();
  v20 = swift_getWitnessTable();
  v21 = sub_1B79E3274(&qword_1EBA45FF0, &qword_1EBA45FE8);
  v170 = v20;
  v171 = v21;
  v22 = swift_getWitnessTable();
  v23 = sub_1B79F8F4C();
  v168 = v22;
  v169 = v23;
  v24 = swift_getWitnessTable();
  v25 = sub_1B7A1D2FC(&qword_1EDC10A40, MEMORY[0x1E697CBE8]);
  v166 = v24;
  v167 = v25;
  v164 = swift_getWitnessTable();
  v165 = MEMORY[0x1E697E040];
  swift_getWitnessTable();
  v26 = type metadata accessor for _ResolvedHorizontalShelfLayout();
  v27 = swift_getWitnessTable();
  v127 = v26;
  v124 = v27;
  v28 = sub_1B7A97050();
  v129 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v125 = &v109 - v29;
  v30 = swift_getWitnessTable();
  *&v175 = v28;
  *(&v175 + 1) = v30;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v126 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v33 = &v109 - v32;
  v34 = v28;
  *&v175 = v28;
  *(&v175 + 1) = v30;
  v118 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v175 = OpaqueTypeMetadata2;
  *(&v175 + 1) = OpaqueTypeConformance2;
  v36 = swift_getOpaqueTypeMetadata2();
  v120 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v115 = &v109 - v37;
  v116 = OpaqueTypeConformance2;
  v128 = OpaqueTypeMetadata2;
  *&v175 = OpaqueTypeMetadata2;
  *(&v175 + 1) = OpaqueTypeConformance2;
  v38 = swift_getOpaqueTypeConformance2();
  *&v175 = v36;
  *(&v175 + 1) = v38;
  v39 = swift_getOpaqueTypeMetadata2();
  v113 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v110 = &v109 - v40;
  v111 = v38;
  v122 = v36;
  *&v175 = v36;
  *(&v175 + 1) = v38;
  v41 = swift_getOpaqueTypeConformance2();
  v121 = v39;
  *&v175 = v39;
  *(&v175 + 1) = v41;
  v112 = v41;
  v119 = swift_getOpaqueTypeMetadata2();
  v117 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v114 = &v109 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48748);
  v130 = *(v43 - 8);
  v131 = v43;
  MEMORY[0x1EEE9AC00](v43);
  v151 = &v109 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48650);
  MEMORY[0x1EEE9AC00](v45);
  v133 = &v109 - v46;
  v47 = type metadata accessor for UnifiedImpressionableLayoutViewModifier();
  v134 = v45;
  v132 = v47;
  v48 = sub_1B7A97590();
  v138 = *(v48 - 8);
  v139 = v48;
  MEMORY[0x1EEE9AC00](v48);
  v136 = &v109 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v137 = &v109 - v51;
  sub_1B7A9A760();
  v135 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v52 = sub_1B7A97EA0();
  MEMORY[0x1EEE9AC00](v52);
  v53 = v155;
  *(&v109 - 10) = v155;
  *(&v109 - 9) = a6;
  v54 = v123;
  v109 = a6;
  v55 = v153;
  v56 = v154;
  *(&v109 - 8) = v123;
  *(&v109 - 7) = v56;
  v57 = v145;
  v58 = v146;
  v103 = v145;
  v104 = v146;
  v105 = v55;
  v106 = v143;
  v107 = v144;
  v108 = v152;
  v59 = v125;
  sub_1B7A3879C();
  v60 = v140;
  sub_1B7A97B50();
  sub_1B7A97EA0();
  sub_1B7A982F0();
  (*(v141 + 8))(v60, v142);
  (*(v129 + 8))(v59, v34);
  *&v175 = v53;
  *(&v175 + 1) = v109;
  *&v176 = v54;
  *(&v176 + 1) = v56;
  *&v177 = v57;
  *(&v177 + 1) = v58;
  v61 = type metadata accessor for ShelfGrid();
  v62 = v153;
  sub_1B7A164C4(v61);
  v63 = v115;
  v64 = v128;
  sub_1B7A98290();
  v65 = v33;
  v66 = v62;
  (*(v126 + 8))(v65, v64);
  sub_1B7A97F00();
  v67 = v110;
  v68 = v122;
  sub_1B7A98300();
  (*(v120 + 8))(v63, v68);
  sub_1B7A97F20();
  v69 = v114;
  v70 = v121;
  v71 = v112;
  sub_1B7A98300();
  (*(v113 + 8))(v67, v70);
  sub_1B7A16788(v61, &v175);
  v72 = v66 + *(v61 + 76);
  v73 = *v72;
  v74 = *(v72 + 8);
  v75 = *(v72 + 16);
  LOBYTE(v72) = *(v72 + 24);
  v159 = v71;
  v160 = v73;
  v161 = v74;
  v162 = v75;
  v163 = v72;
  v158 = v70;
  v76 = swift_getOpaqueTypeConformance2();
  v77 = v119;
  sub_1B7A1BEE4(&v175, v152, &v160, v119, v76, &v158);
  __swift_destroy_boxed_opaque_existential_1(&v175);
  (*(v117 + 8))(v69, v77);
  v78 = v158;
  v79 = v159;
  *&v175 = v158;
  BYTE8(v175) = v159;
  v80 = v147;
  sub_1B7A97D40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7A9D270;
  v82 = sub_1B7A97EC0();
  *(inited + 32) = v82;
  v83 = sub_1B7A97EA0();
  *(inited + 33) = v83;
  sub_1B7A97EB0();
  sub_1B7A97EB0();
  if (sub_1B7A97EB0() != v82)
  {
    sub_1B7A97EB0();
  }

  sub_1B7A97EB0();
  if (sub_1B7A97EB0() != v83)
  {
    sub_1B7A97EB0();
  }

  v84 = v151;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48660);
  sub_1B7A1D1A8();
  sub_1B7A98230();
  (*(v148 + 8))(v80, v149);
  sub_1B7A1F4C4(v78, v79);
  sub_1B7A164C4(v61);
  v107 = sub_1B7A98A20();
  v108 = v85;
  LOBYTE(v106) = 1;
  v105 = 0;
  LOBYTE(v104) = 1;
  v103 = 0;
  sub_1B7A976F0();
  v86 = v133;
  (*(v130 + 32))(v133, v84, v131);
  v87 = v134;
  v88 = (v86 + *(v134 + 36));
  v89 = v180;
  v88[4] = v179;
  v88[5] = v89;
  v88[6] = v181;
  v90 = v176;
  *v88 = v175;
  v88[1] = v90;
  v91 = v178;
  v88[2] = v177;
  v88[3] = v91;
  v92 = v66 + *(v61 + 80);
  v93 = *v92;
  v94 = *(v92 + 8);
  v95 = sub_1B7A1D0E0();
  v96 = v136;
  View.unifiedImpressionableLayout<A>(_:position:definesParentContext:)(v66, v93, v94, 1, v87, v155, v95, v136);
  sub_1B79694AC(v86);
  v97 = swift_getWitnessTable();
  v156 = v95;
  v157 = v97;
  v98 = v139;
  v99 = swift_getWitnessTable();
  v100 = v137;
  sub_1B7957EE0(v96, v98, v99);
  v101 = *(v138 + 8);
  v101(v96, v98);
  sub_1B7957EE0(v100, v98, v99);
  v101(v100, v98);
}

uint64_t sub_1B7A1B310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10)
{
  v61 = a4;
  v55 = a2;
  v57 = a9;
  *&v88 = a5;
  *(&v88 + 1) = a6;
  v49 = a6;
  v50 = *(&a10 + 1);
  v51 = a7;
  *&v89 = a7;
  *(&v89 + 1) = a8;
  v58 = a8;
  v60 = a10;
  v90 = a10;
  v13 = type metadata accessor for ShelfGrid();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v48 - v16;
  sub_1B7A9A760();
  v56 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v54 = sub_1B7A98D30();
  v18 = a1 + *(v13 + 76);
  v19 = *v18;
  v20 = *(v18 + 8);
  v21 = *(v18 + 16);
  LOBYTE(v18) = *(v18 + 24);
  v84 = v19;
  v85 = v20;
  v86 = v21;
  v87 = v18;
  v22 = *(a3 + 4);
  v23 = *(a3 + 5);
  v24 = *(a3 + 48);
  v25 = v24 >> 5;
  v59 = a3;
  if (v24 >> 5 <= 2)
  {
    if (v25 == 1)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v25 == 3)
  {
    v22 = *(a3 + 1);
    v23 = *(a3 + 2);
  }

  else
  {
    if (v25 == 4)
    {
      if ((v24 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v22 = *(a3 + 1);
    v23 = *(a3 + 2);
    if (*(a3 + 24))
    {
LABEL_12:
      v22 = sub_1B7A989F0();
    }
  }

LABEL_13:
  v52 = v22;
  v53 = v23;
  v26 = v14;
  (*(v14 + 16))(v17, a1, v13);
  v27 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v28 = swift_allocObject();
  v29 = v49;
  *(v28 + 2) = a5;
  *(v28 + 3) = v29;
  v30 = v58;
  *(v28 + 4) = v51;
  *(v28 + 5) = v30;
  v31 = v50;
  *(v28 + 6) = v60;
  *(v28 + 7) = v31;
  (*(v26 + 32))(&v28[v27], v17, v13);
  v32 = &v28[(v27 + v15 + 7) & 0xFFFFFFFFFFFFFFF8];
  v33 = v59;
  v34 = v59[1];
  *v32 = *v59;
  *(v32 + 1) = v34;
  *(v32 + 2) = v33[2];
  v32[48] = *(v33 + 48);
  *&v28[(v27 + v15 + 63) & 0xFFFFFFFFFFFFFFF8] = v61;
  swift_getTupleTypeMetadata2();
  sub_1B7A98AC0();
  swift_getWitnessTable();
  sub_1B7A987E0();
  sub_1B7A97B40();
  v35 = sub_1B7A985B0();
  WitnessTable = swift_getWitnessTable();
  v77 = v60;
  v75 = swift_getWitnessTable();
  v36 = swift_getWitnessTable();
  v37 = sub_1B7A1D2A8();
  *&v88 = v35;
  *(&v88 + 1) = &type metadata for ComponentModelViewID;
  *&v89 = v36;
  *(&v89 + 1) = v37;
  sub_1B7A987A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45FE8);
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97E00();
  sub_1B7A97590();
  sub_1B7A97590();
  v38 = swift_getWitnessTable();
  v39 = sub_1B79E3274(&qword_1EBA45FF0, &qword_1EBA45FE8);
  v73 = v38;
  v74 = v39;
  v40 = swift_getWitnessTable();
  v41 = sub_1B79F8F4C();
  v71 = v40;
  v72 = v41;
  v42 = swift_getWitnessTable();
  v43 = sub_1B7A1D2FC(&qword_1EDC10A40, MEMORY[0x1E697CBE8]);
  v69 = v42;
  v70 = v43;
  v67 = swift_getWitnessTable();
  v68 = MEMORY[0x1E697E040];
  swift_getWitnessTable();
  sub_1B7A68240(v54, v55, &v84, v52, v53, sub_1B7A1F59C, v28, &v79);
  v44 = type metadata accessor for _ResolvedHorizontalShelfLayout();
  v45 = swift_getWitnessTable();
  sub_1B7957EE0(&v79, v44, v45);
  v78[2] = v81;
  v78[3] = v82;
  v78[4] = v83;
  v78[0] = v79;
  v78[1] = v80;
  sub_1B7A1F2D4(v59, &v62);
  v46 = *(*(v44 - 8) + 8);

  v46(v78, v44);
  v64 = v90;
  v65 = v91;
  v66 = v92;
  v62 = v88;
  v63 = v89;
  sub_1B7957EE0(&v62, v44, v45);
  v81 = v64;
  v82 = v65;
  v83 = v66;
  v79 = v62;
  v80 = v63;
  v46(&v79, v44);
}

uint64_t sub_1B7A1B980@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v50 = a1;
  v51 = a7;
  v45 = a8;
  v46 = a4;
  v49 = a2;
  v52 = a11;
  v47 = a10;
  v48 = a6;
  swift_getTupleTypeMetadata2();
  sub_1B7A98AC0();
  swift_getWitnessTable();
  sub_1B7A987E0();
  sub_1B7A97B40();
  v13 = sub_1B7A985B0();
  WitnessTable = swift_getWitnessTable();
  v71 = a10;
  v69 = swift_getWitnessTable();
  v62 = v13;
  v63[0] = &type metadata for ComponentModelViewID;
  v63[1] = swift_getWitnessTable();
  v63[2] = sub_1B7A1D2A8();
  v14 = sub_1B7A987A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45FE8);
  v40[0] = v14;
  v40[1] = sub_1B7A97590();
  v15 = sub_1B7A97590();
  sub_1B7A97E00();
  v40[2] = v15;
  v16 = sub_1B7A97590();
  v43 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v40 - v17;
  v19 = sub_1B7A97590();
  v44 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v41 = v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v42 = v40 - v22;
  sub_1B7999E90(v49, v63);
  v23 = a5;
  v24 = *(sub_1B7A98D30() + 16);

  v25 = v50;
  v63[5] = v50;
  v62 = v24;
  v26 = *(a3 + 16);
  v64 = *a3;
  v65 = v26;
  v66 = *(a3 + 32);
  v67 = *(a3 + 48);
  v68 = 2;
  sub_1B7A1F2D4(a3, v61);
  v61[0] = v23;
  v61[1] = v48;
  v61[2] = v51;
  v61[3] = a9;
  v61[4] = v47;
  v61[5] = v52;
  v27 = type metadata accessor for ShelfGrid();
  sub_1B7A170EC(&v62, v27, v18);
  result = sub_1B7A1F6A0(&v62);
  if ((v25 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v46 + 16) > v25)
  {
    v52 = sub_1B7A98A30();
    v29 = swift_getWitnessTable();
    v30 = sub_1B79E3274(&qword_1EBA45FF0, &qword_1EBA45FE8);
    v59 = v29;
    v60 = v30;
    v31 = swift_getWitnessTable();
    v32 = sub_1B79F8F4C();
    v57 = v31;
    v58 = v32;
    v33 = swift_getWitnessTable();
    v34 = sub_1B7A1D2FC(&qword_1EDC10A40, MEMORY[0x1E697CBE8]);
    v55 = v33;
    v56 = v34;
    v35 = swift_getWitnessTable();
    v36 = v41;
    sub_1B7A98400();
    (*(v43 + 8))(v18, v16);
    v53 = v35;
    v54 = MEMORY[0x1E697E040];
    v37 = swift_getWitnessTable();
    v38 = v42;
    sub_1B7957EE0(v36, v19, v37);
    v39 = *(v44 + 8);
    v39(v36, v19);
    sub_1B7957EE0(v38, v19, v37);
    return (v39)(v38, v19);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7A1BEE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v86 = a2;
  v101 = a1;
  v102 = a6;
  *&v113 = a4;
  *(&v113 + 1) = sub_1B7A97E50();
  *&v114 = a5;
  *(&v114 + 1) = MEMORY[0x1E697CC08];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v93 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v91 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v92 = &v78 - v11;
  v90 = sub_1B7A97E30();
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v88 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v78 - v14;
  v16 = swift_checkMetadataState();
  v100 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v78 - v17;
  v19 = MEMORY[0x1E697C890];
  *&v113 = a4;
  *(&v113 + 1) = MEMORY[0x1E697C890];
  v20 = MEMORY[0x1E697C888];
  *&v114 = a5;
  *(&v114 + 1) = MEMORY[0x1E697C888];
  v21 = swift_getOpaqueTypeMetadata2();
  v95 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v81 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v80 = &v78 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v84 = &v78 - v26;
  *&v113 = a4;
  *(&v113 + 1) = v19;
  *&v114 = a5;
  *(&v114 + 1) = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v113 = v21;
  *(&v113 + 1) = v16;
  v99 = OpaqueTypeConformance2;
  *&v114 = OpaqueTypeConformance2;
  *(&v114 + 1) = MEMORY[0x1E697CC08];
  v28 = swift_getOpaqueTypeMetadata2();
  v87 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v85 = &v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v82 = &v78 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v83 = &v78 - v33;
  v34 = sub_1B7A97B40();
  v98 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v97 = &v78 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v96 = &v78 - v37;
  v38 = *a3;
  v79 = *(a3 + 8);
  v78 = a3[2];
  v39 = *(a3 + 24);
  sub_1B79948D0(v101, &v105);
  if (swift_dynamicCast())
  {
    LODWORD(v91) = v39;
    v92 = v15;
    v93 = v18;
    v101 = v34;
    OpaqueTypeMetadata2 = v16;
    v113 = v111[0];
    v114 = v111[1];
    v115 = v112;
    sub_1B7A1D64C(v111);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48688);
    if (swift_dynamicCast())
    {

      sub_1B7A1D528(v86, &v105);
      sub_1B7A1D64C(v111);
      if (swift_dynamicCast())
      {
        v40 = v38;
        v41 = v103;
        v42 = v104;
        v43 = sub_1B7A1F4D8();
        v44 = swift_allocObject();
        *(v44 + 16) = v41;
        *(v44 + 24) = v40;
        *(v44 + 32) = v79;
        *(v44 + 40) = v78;
        *(v44 + 48) = v91;
        *(v44 + 49) = v42;
        sub_1B7A1D9D8(&v105);
        v45 = &type metadata for _CenterAlignedShelfGridScrollTargetBehavior;
      }

      else
      {
        v44 = v105;
        v103 = v106;
        v45 = v107;
        v43 = v108;
      }

      v61 = v100;
      v62 = v93;
      *&v111[0] = v44;
      *(v111 + 8) = v103;
      *(&v111[1] + 1) = v45;
      v112 = v43;
      v63 = v84;
      sub_1B7A98310();
      sub_1B7A1D9D8(v111);
      v64 = v92;
      sub_1B7A97E10();
      v65 = v89;
      v66 = v90;
      (*(v89 + 16))(v88, v64, v90);
      sub_1B7A97E40();
      (*(v65 + 8))(v64, v66);
      v67 = v82;
      v59 = OpaqueTypeMetadata2;
      v57 = v99;
      v68 = MEMORY[0x1E697CC08];
      sub_1B7A98310();
      (*(v61 + 8))(v62, v59);
      (*(v95 + 8))(v63, v21);
      *&v111[0] = v21;
      *(&v111[0] + 1) = v59;
      *&v111[1] = v57;
      *(&v111[1] + 1) = v68;
      v69 = swift_getOpaqueTypeConformance2();
      v70 = v83;
      sub_1B7957EE0(v67, v28, v69);
      v71 = *(v87 + 8);
      v71(v67, v28);
      v72 = v85;
      sub_1B7957EE0(v70, v28, v69);
      v60 = v96;
      sub_1B79B5878(v72, v28);
      v71(v72, v28);
      v71(v70, v28);
    }

    else
    {
      v55 = v81;
      sub_1B7A98310();
      v56 = v80;
      v57 = v99;
      sub_1B7957EE0(v55, v21, v99);
      v58 = *(v95 + 8);
      v58(v55, v21);
      sub_1B7957EE0(v56, v21, v57);
      v59 = OpaqueTypeMetadata2;
      *&v111[0] = v21;
      *(&v111[0] + 1) = OpaqueTypeMetadata2;
      *&v111[1] = v57;
      *(&v111[1] + 1) = MEMORY[0x1E697CC08];
      swift_getOpaqueTypeConformance2();
      v60 = v96;
      sub_1B7959A28(v55, v28, v21);
      v58(v55, v21);
      v58(v56, v21);
    }

    v73 = v101;
    *&v111[0] = v21;
    *(&v111[0] + 1) = v59;
    *&v111[1] = v57;
    *(&v111[1] + 1) = MEMORY[0x1E697CC08];
    v109 = swift_getOpaqueTypeConformance2();
    v110 = v57;
    WitnessTable = swift_getWitnessTable();
    v75 = v97;
    sub_1B7957EE0(v60, v73, WitnessTable);
    v105 = sub_1B79F770C(v75);
    LOBYTE(v106) = 0;
    sub_1B7A97B30();
    v76 = *(v98 + 8);
    v76(v75, v73);
    v76(v60, v73);
    result = sub_1B7A1D9D8(&v113);
    v53 = *&v111[0];
    v54 = BYTE8(v111[0]);
  }

  else
  {
    v112 = 0;
    memset(v111, 0, sizeof(v111));
    sub_1B7957888(v111, qword_1EBA48690);
    sub_1B7A97E20();
    sub_1B7A97E40();
    v46 = v91;
    v47 = MEMORY[0x1E697CC08];
    sub_1B7A98310();
    (*(v100 + 8))(v18, v16);
    *&v113 = a4;
    *(&v113 + 1) = v16;
    *&v114 = a5;
    *(&v114 + 1) = v47;
    v48 = swift_getOpaqueTypeConformance2();
    v49 = v92;
    v50 = OpaqueTypeMetadata2;
    sub_1B7957EE0(v46, OpaqueTypeMetadata2, v48);
    v51 = *(v93 + 1);
    v51(v46, v50);
    sub_1B7957EE0(v49, v50, v48);
    *&v111[0] = sub_1B79F770C(v46);
    BYTE8(v111[0]) = 1;
    sub_1B7A97B30();
    v51(v46, v50);
    result = (v51)(v49, v50);
    v53 = v113;
    v54 = BYTE8(v113);
  }

  v77 = v102;
  *v102 = v53;
  *(v77 + 8) = v54;
  return result;
}

uint64_t sub_1B7A1CB84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v35 = a6;
  v36 = a2;
  v38 = a1;
  v39 = a8;
  v37 = a10;
  v33[0] = a9;
  v34 = a5;
  swift_getTupleTypeMetadata2();
  sub_1B7A98AC0();
  swift_getWitnessTable();
  sub_1B7A987E0();
  sub_1B7A97B40();
  v13 = sub_1B7A985B0();
  WitnessTable = swift_getWitnessTable();
  v56 = a9;
  v54 = swift_getWitnessTable();
  v47 = v13;
  v48[0] = &type metadata for ComponentModelViewID;
  v48[1] = swift_getWitnessTable();
  v48[2] = sub_1B7A1D2A8();
  sub_1B7A987A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45FE8);
  v33[1] = sub_1B7A97590();
  v33[2] = sub_1B7A97590();
  sub_1B7A97E00();
  v14 = sub_1B7A97590();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v33 - v19;
  sub_1B7999E90(v36, v48);
  v21 = *(sub_1B7A98D30() + 16);

  v46[0] = a4;
  v46[1] = v34;
  v46[2] = v35;
  v46[3] = a7;
  v46[4] = v33[0];
  v46[5] = v37;
  v22 = type metadata accessor for ShelfGrid();
  sub_1B7A1662C(v22, v46);
  v48[5] = v38;
  v47 = v21;
  v23 = *(a3 + 16);
  v49 = *a3;
  v50 = v23;
  v51 = *(a3 + 32);
  v52 = *(a3 + 48);
  v53 = v46[0];
  sub_1B7A1F2D4(a3, v46);
  sub_1B7A170EC(&v47, v22, v17);
  sub_1B7A1F6A0(&v47);
  v24 = swift_getWitnessTable();
  v25 = sub_1B79E3274(&qword_1EBA45FF0, &qword_1EBA45FE8);
  v44 = v24;
  v45 = v25;
  v26 = swift_getWitnessTable();
  v27 = sub_1B79F8F4C();
  v42 = v26;
  v43 = v27;
  v28 = swift_getWitnessTable();
  v29 = sub_1B7A1D2FC(&qword_1EDC10A40, MEMORY[0x1E697CBE8]);
  v40 = v28;
  v41 = v29;
  v30 = swift_getWitnessTable();
  sub_1B7957EE0(v17, v14, v30);
  v31 = *(v15 + 8);
  v31(v17, v14);
  sub_1B7957EE0(v20, v14, v30);
  return (v31)(v20, v14);
}

uint64_t sub_1B7A1D050()
{
  sub_1B7A1D08C();
  sub_1B7A97890();
  return v1;
}

unint64_t sub_1B7A1D08C()
{
  result = qword_1EBA48648;
  if (!qword_1EBA48648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48648);
  }

  return result;
}

unint64_t sub_1B7A1D0E0()
{
  result = qword_1EBA48658;
  if (!qword_1EBA48658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48650);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48660);
    sub_1B7A1D1A8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48658);
  }

  return result;
}

unint64_t sub_1B7A1D1A8()
{
  result = qword_1EBA48668;
  if (!qword_1EBA48668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48660);
    sub_1B7A1D22C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48668);
  }

  return result;
}

unint64_t sub_1B7A1D22C()
{
  result = qword_1EBA48670;
  if (!qword_1EBA48670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48670);
  }

  return result;
}

unint64_t sub_1B7A1D2A8()
{
  result = qword_1EBA48680;
  if (!qword_1EBA48680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48680);
  }

  return result;
}

uint64_t sub_1B7A1D2FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t View.shelfGridIgnoresContainerHeightForItemWidth(_:)()
{
  swift_getKeyPath();
  sub_1B7A98150();
}

uint64_t sub_1B7A1D3CC@<X0>(uint64_t **a1@<X8>)
{
  v2 = sub_1B7A97E30();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_1B7A97E10();
  (*(v3 + 16))(v5, v8, v2);
  a1[3] = MEMORY[0x1E697C890];
  v9 = swift_allocObject();
  *a1 = v9;
  v10 = sub_1B7A97E50();
  v11 = MEMORY[0x1E697CC08];
  v9[5] = v10;
  v9[6] = v11;
  __swift_allocate_boxed_opaque_existential_1Tm(v9 + 2);
  sub_1B7A97E40();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1B7A1D528@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1B7A1D64C(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48688);
  if (!swift_dynamicCast())
  {
    return sub_1B7A1D97C(v2, a2);
  }

  v5 = 32;
  v6 = *(a1 + 16);
  do
  {
    v7 = v6;
    if (!v6)
    {
      break;
    }

    v8 = *(a1 + v5);
    v5 += 8;
    --v6;
  }

  while (v8 == *(a1 + 32));
  v9 = v7 == 0;

  a2[3] = &type metadata for _CenterAlignedShelfGridScrollTargetBehavior;
  a2[4] = sub_1B7A1F4D8();
  result = swift_allocObject();
  *a2 = result;
  *(result + 16) = a1;
  *(result + 24) = v11;
  *(result + 32) = v12;
  *(result + 40) = v13;
  *(result + 48) = v14;
  *(result + 49) = v9;
  return result;
}

uint64_t sub_1B7A1D64C@<X0>(uint64_t a1@<X8>)
{
  sub_1B7999E90(v1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48688);
  if (swift_dynamicCast())
  {
    v8[0] = v4;
    v8[1] = v5;
    v9 = v6;
    sub_1B7A1D64C();
    return sub_1B7A1D9D8(v8);
  }

  else
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
    sub_1B7957888(&v4, qword_1EBA48690);
    return sub_1B7999E90(v1, a1);
  }
}

uint64_t ShelfGrid.horizontalScrollTargetBehavior(_:)(void *a1)
{
  sub_1B7999E90(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48688);
  v2 = MEMORY[0x1E697C890];
  if (swift_dynamicCast())
  {
    v13 = v9;
    v14 = v10;
    v15 = v11;
    swift_getKeyPath();
    v12[3] = v2;
    v12[0] = swift_allocObject();
    sub_1B7A1D97C(&v13, v12[0] + 16);
    swift_getWitnessTable();
    sub_1B7A98150();

    sub_1B7A1D9D8(&v13);
    v3 = v12;
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    sub_1B7957888(&v9, qword_1EBA48690);
    swift_getKeyPath();
    v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v5 = MEMORY[0x1EEE9AC00](v4);
    (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    *(&v14 + 1) = v2;
    *&v13 = swift_allocObject();
    sub_1B7A97CA0();
    swift_getWitnessTable();
    sub_1B7A98150();

    v3 = &v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

void _CenterAlignedShelfGridScrollTargetBehavior.updateTarget(_:context:)(uint64_t a1, uint64_t a2)
{
  v92 = a2;
  v4 = sub_1B7A9A280();
  v91 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B7A971B0();
  v90 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v84 - v11;
  v13 = sub_1B7A97220();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(*v2 + 16);
  if (v17 >= 2)
  {
    v88 = *v2;
    v89 = a1;
    v85 = v17;
    v18 = v2[3];
    v19 = *(v2 + 33);
    v86 = *(v2 + 32);
    v87 = v19;
    sub_1B7A97DE0();
    v20 = sub_1B7A97EA0();
    sub_1B7A97EB0();
    if (sub_1B7A97EB0() != v20)
    {
      sub_1B7A9A220();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8);
      sub_1B7A98D10();
      *(swift_allocObject() + 16) = xmmword_1B7A9C180;
      sub_1B7A98C40();
      sub_1B7A99E60();

      (*(v91 + 8))(v6, v4);
      return;
    }

    sub_1B7A97DC0();
    sub_1B7A97210();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v31 = *(v14 + 8);
    v29 = v14 + 8;
    v30 = v31;
    v31(v16, v13);
    v94.origin.x = v22;
    v94.origin.y = v24;
    v94.size.width = v26;
    v94.size.height = v28;
    MinX = CGRectGetMinX(v94);
    sub_1B7A97210();
    v33 = CGRectGetMinX(v95);
    v34 = v88;
    if (MinX != v33)
    {
      v91 = v29;
      if (MinX < v33)
      {
        v35 = 1;
      }

      else
      {
        v35 = -1;
      }

      if (v86)
      {
        sub_1B7A971A0();
        sub_1B7A971A0();
        sub_1B7A97190();
        v18 = v36;
        v37 = *(v90 + 8);
        v37(v9, v7);
        v37(v12, v7);
        v34 = v88;
      }

      if (v87 && *(v34 + 16))
      {
        v38 = *(v34 + 32);
        sub_1B7A97DC0();
        sub_1B7A97210();
        v39 = CGRectGetMinX(v96);
        sub_1B7A97DD0();
        v41 = v40;
        v30(v16, v13);
        v42 = trunc((v39 + v41 * 0.5) / (v18 + v38));
        if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v42 > -9.22337204e18)
          {
            if (v42 < 9.22337204e18)
            {
              sub_1B7A97210();
              v43 = CGRectGetMinX(v97);
              sub_1B7A97DD0();
              v45 = trunc((v43 + v44 * 0.5) / (v18 + v38));
              if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v45 > -9.22337204e18)
                {
                  if (v45 < 9.22337204e18)
                  {
                    v46 = v42;
                    v47 = v45;
                    if (*&v42 != *&v45 || (v47 = v46 + v35, !__OFADD__(v46, v35)))
                    {
                      if (v47 >= (v85 - 1))
                      {
                        v47 = v85 - 1;
                      }

                      v48 = v38 * (v47 & ~(v47 >> 63)) + v18 * (v47 & ~(v47 >> 63));
                      v49 = 0.5;
                      v50 = v38 * 0.5 + v48;
                      goto LABEL_66;
                    }

LABEL_77:
                    __break(1u);
                    return;
                  }

LABEL_76:
                  __break(1u);
                  goto LABEL_77;
                }

LABEL_75:
                __break(1u);
                goto LABEL_76;
              }

LABEL_74:
              __break(1u);
              goto LABEL_75;
            }

LABEL_73:
            __break(1u);
            goto LABEL_74;
          }

LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      sub_1B7A97DC0();
      sub_1B7A97210();
      v51 = CGRectGetMinX(v98);
      sub_1B7A97DD0();
      v53 = v52;
      v30(v16, v13);
      sub_1B7A97210();
      v54 = CGRectGetMinX(v99);
      sub_1B7A97DD0();
      v56 = *(v88 + 16);
      if (v56)
      {
        v57 = 0;
        v58 = v51 + v53 * 0.5;
        v59 = v54 + v55 * 0.5;
        v60 = v85;
        v61 = v85 - 1;
        v62 = 0.0;
        v63 = -1;
        v64 = -1;
        v65 = -1;
        while (1)
        {
          v66 = *(v88 + 32 + 8 * v57);
          if ((v63 & 0x8000000000000000) == 0)
          {
            v64 = v65;
            if ((v65 & 0x8000000000000000) == 0)
            {
              v64 = v65;
              goto LABEL_49;
            }
          }

          if (v61 == v57)
          {
            break;
          }

          v67 = v18 + v62 + v66;
          if (v63 < 0 && v58 < v67 && v62 < v58)
          {
            v63 = v57;
          }

          v70 = v62 < v59;
          if (v59 >= v67)
          {
            v70 = 0;
          }

          if (v70 && v64 < 0)
          {
            v64 = v57;
            v65 = v57;
          }

          v62 = v62 + v18 + v66;
          if (v56 == ++v57)
          {
            goto LABEL_49;
          }
        }

        if (v64 < 0)
        {
          v64 = v85 - 1;
        }

        if (v63 < 0)
        {
          v63 = v85 - 1;
        }

LABEL_49:
        if (v63 != v64)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v63 = -1;
        v60 = v85;
      }

      v64 = v63 + v35;
      if (__OFADD__(v63, v35))
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v61 = v60 - 1;
LABEL_52:
      if (v64 >= v61)
      {
        v64 = v61;
      }

      if (v64 > v56)
      {
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      v71 = v64 & ~(v64 >> 63);
      if (v64 < 1)
      {
        v73 = 0.0;
        goto LABEL_64;
      }

      if (v64 > 3)
      {
        v72 = v64 & 0x7FFFFFFFFFFFFFFCLL;
        v74 = (v88 + 48);
        v73 = 0.0;
        v75 = v64 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v73 = v73 + *(v74 - 2) + *(v74 - 1) + *v74 + v74[1];
          v74 += 4;
          v75 -= 4;
        }

        while (v75);
        if (v64 == v72)
        {
LABEL_64:
          if (v71 < v56)
          {
            v79 = v18 * v71 + v73;
            v49 = 0.5;
            v50 = v79 + *(v88 + 32 + 8 * v71) * 0.5;
LABEL_66:
            sub_1B7A97DD0();
            v81 = v50 - v80 * v49;
            v82 = sub_1B7A97200();
            *v83 = v81;
            v82(v93, 0);
            return;
          }

          goto LABEL_69;
        }
      }

      else
      {
        v72 = 0;
        v73 = 0.0;
      }

      v76 = v64 - v72;
      v77 = (v88 + 8 * v72 + 32);
      do
      {
        v78 = *v77++;
        v73 = v73 + v78;
        --v76;
      }

      while (v76);
      goto LABEL_64;
    }
  }
}

void static ScrollTargetBehavior<>.centerAligned.getter(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 256;
}

uint64_t ShelfGrid.init(_:layout:padding:spacing:itemContent:itemDivider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  v37 = a6;
  v38 = a5;
  v39 = a3;
  v40 = a4;
  v33 = a1;
  v36 = a7;
  v35 = a9;
  v34 = a10;
  v12 = *(a8 - 8);
  v32 = a11;
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 32);
  v17 = *(a2 + 40);
  v18 = *(a2 + 48);
  v20 = *v19;
  v21 = *(v19 + 8);
  v22 = *(v19 + 16);
  v31 = *(v19 + 24);
  v30 = *v23;
  v29 = *(v23 + 8);
  v28 = *(v23 + 16);
  v27 = *(v23 + 24);
  (*(v12 + 16))(v15, v13);
  v24 = *(a2 + 16);
  v49[0] = *a2;
  v49[1] = v24;
  v50 = v16;
  v51 = v17;
  v52 = v18;
  v45 = v20;
  v46 = v21;
  v47 = v22;
  v48 = v31;
  v41 = v30;
  v42 = v29;
  v43 = v28;
  v44 = v27;
  ShelfGrid.init(_:layout:padding:spacing:shelfPosition:itemContent:itemDivider:)(v15, v49, &v45, &v41, 0, 1, v39, v40, v36, v38, v37, a8, v35, *(&v35 + 1), v34, *(&v34 + 1), v32);
  return (*(v12 + 8))(v33, a8);
}

uint64_t ShelfGrid.init<>(_:layout:padding:spacing:itemContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v39 = a8;
  v40 = a1;
  v43 = a5;
  v44 = a6;
  v42 = a9;
  v36 = a7;
  v41 = *(a7 - 8);
  v38 = a10;
  v37 = a11;
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v14);
  v19 = *(a2 + 8);
  v21 = *(a2 + 16);
  v20 = *(a2 + 24);
  v22 = *(a2 + 32);
  v23 = *(a2 + 40);
  v53[0] = *a2;
  v18 = v53[0];
  v53[1] = v19;
  v53[2] = v21;
  v53[3] = v20;
  v53[4] = v22;
  v53[5] = v23;
  LOBYTE(a2) = *(a2 + 48);
  v54 = a2;
  v24 = *(a3 + 8);
  v25 = *(a3 + 16);
  v26 = *(a3 + 24);
  v49 = *a3;
  v50 = v24;
  v51 = v25;
  v52 = v26;
  v27 = *(a4 + 8);
  v28 = *(a4 + 16);
  v29 = *(a4 + 24);
  v45 = *a4;
  v46 = v27;
  v47 = v28;
  v48 = v29;
  sub_1B7A16C88(v53[0], v19, v21, v20, v22, v23, a2);
  v30 = sub_1B7A988A0();
  v31 = sub_1B7A1D2FC(&qword_1EBA47DB8, MEMORY[0x1E697D6D0]);
  v34 = v30;
  v32 = v36;
  ShelfGrid.init(_:layout:padding:spacing:shelfPosition:itemContent:itemDivider:)(v16, v53, &v49, &v45, 0, 1, v43, v44, v42, sub_1B7A1F914, 0, v36, v39, v34, v38, v37, v31);
  sub_1B7A16CD4(v18, v19, v21, v20, v22, v23, a2);
  return (*(v41 + 8))(v40, v32);
}

uint64_t ShelfGrid.init(_:layout:spacing:itemContent:itemDivider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, __int128 a10, uint64_t a11)
{
  v33 = a6;
  v34 = a5;
  v35 = a3;
  v36 = a4;
  v29 = a1;
  v32 = a8;
  v31 = a9;
  v30 = a10;
  v13 = *(a7 - 8);
  v28 = a11;
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 32);
  v18 = *(a2 + 40);
  v19 = *(a2 + 48);
  v21 = *v20;
  v22 = *(v20 + 8);
  v23 = *(v20 + 16);
  v27 = *(v20 + 24);
  (*(v13 + 16))(v16, v14);
  v24 = *(a2 + 16);
  v45[0] = *a2;
  v45[1] = v24;
  v46 = v17;
  v47 = v18;
  v48 = v19;
  v41 = 0;
  v42 = 1;
  v43 = 0;
  v44 = 1;
  v37 = v21;
  v38 = v22;
  v39 = v23;
  v40 = v27;
  ShelfGrid.init(_:layout:padding:spacing:shelfPosition:itemContent:itemDivider:)(v16, v45, &v41, &v37, 0, 1, v35, v36, v32, v34, v33, a7, v31, *(&v31 + 1), v30, *(&v30 + 1), v28);
  return (*(v13 + 8))(v29, a7);
}

uint64_t ShelfGrid.init<>(_:layout:spacing:itemContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v29 = a1;
  v30 = a8;
  v32 = a7;
  v33 = a4;
  v34 = a5;
  v31 = a9;
  v27 = a6;
  v12 = *(a6 - 8);
  v28 = a10;
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, v13);
  v17 = *(a2 + 8);
  v18 = *(a2 + 16);
  v19 = *(a2 + 24);
  v20 = *(a2 + 32);
  v21 = *(a2 + 40);
  v43[0] = *a2;
  v16 = v43[0];
  v43[1] = v17;
  v43[2] = v18;
  v43[3] = v19;
  v43[4] = v20;
  v43[5] = v21;
  LOBYTE(a2) = *(a2 + 48);
  v44 = a2;
  v39 = 0;
  v40 = 1;
  v41 = 0;
  v42 = 1;
  v22 = *(a3 + 8);
  v23 = a3[2];
  v24 = *(a3 + 24);
  v35 = *a3;
  v36 = v22;
  v37 = v23;
  v38 = v24;
  sub_1B7A16C88(v43[0], v17, v18, v19, v20, v21, a2);
  v25 = v27;
  ShelfGrid.init<>(_:layout:padding:spacing:shelfPosition:itemContent:)(v15, v43, &v39, &v35, 0, 1, v33, v34, v31, v27, v32, v30, v28);
  sub_1B7A16CD4(v16, v17, v18, v19, v20, v21, a2);
  return (*(v12 + 8))(v29, v25);
}

void sub_1B7A1EB08()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1B7A1F068(319, &qword_1EDC0FC70, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B7958DD8();
      if (v2 <= 0x3F)
      {
        sub_1B7A1F068(319, &qword_1EBA484E8, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1B797CE50(319, &qword_1EBA48718, &qword_1EBA463B8);
          if (v4 <= 0x3F)
          {
            sub_1B797CE50(319, &qword_1EBA48720, &qword_1EBA46460);
            if (v5 <= 0x3F)
            {
              sub_1B7A1F068(319, &qword_1EBA48728, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E697DCC0]);
              if (v6 <= 0x3F)
              {
                sub_1B7A1F0B8();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1B7A1ECDC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((((((v6 + 143) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 73) & 0xFFFFFFFFFFFFFFF8) + 17;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    if ((*((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 24) >> 2) > 0x80000000)
    {
      return -(*((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 24) >> 2);
    }

    return 0;
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = (v13 - 1) << (8 * (((((((((v6 - 113) & 0xF8) + 23) & 0xF8) + 39) & 0xF8) + 73) & 0xF8) + 17));
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

double sub_1B7A1EE48(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((((((((v9 + 143) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 73) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return result;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v19 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v19 + 40) = 0;
          result = 0.0;
          *(v19 + 24) = 0u;
          *(v19 + 8) = 0u;
          *(v19 + 48) = 0;
          *v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *v19 = 0;
          *(v19 + 8) = 0;
          *(v19 + 16) = 0;
          *(v19 + 24) = 4 * -a2;
          *(v19 + 32) = 0;
          *(v19 + 40) = 0;
          *(v19 + 48) = 0;
        }
      }

      else
      {
        v18 = *(v6 + 56);

        v18();
      }

      return result;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((((((((v9 + 143) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 73) & 0xFFFFFFFFFFFFFFF8) + 17);
  if (v10 <= 3)
  {
    v17 = (v15 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v17;
      }

      else
      {
        *&a1[v10] = v17;
      }

      return result;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v17;
  }

  return result;
}

void sub_1B7A1F068(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B7A1F0B8()
{
  if (!qword_1EBA48730)
  {
    type metadata accessor for CGSize(255);
    v0 = sub_1B7A970E0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA48730);
    }
  }
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B7A1F124(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_1B7A1F16C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B7A1F1D0(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1B7A1F1DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v11 = v3[6];
  v12 = v3[7];
  v13 = *(type metadata accessor for ShelfGrid() - 8);
  return sub_1B7A1CB84(a1, a2, v3 + ((*(v13 + 64) + ((*(v13 + 80) + 64) & ~*(v13 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8), v7, v8, v9, v10, a3, v11, v12);
}

uint64_t sub_1B7A1F384@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = *(type metadata accessor for ShelfGrid() - 8);
  v10 = (*(v9 + 80) + 64) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1B7A1A400(v1 + v10, *(v1 + v11), v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8), *(v1 + ((v11 + 71) & 0xFFFFFFFFFFFFFFF8)), v3, v4, v5, a1, v6, v7, v8);
}

uint64_t sub_1B7A1F4C4(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

unint64_t sub_1B7A1F4D8()
{
  result = qword_1EBA48758;
  if (!qword_1EBA48758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48758);
  }

  return result;
}

uint64_t sub_1B7A1F52C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7A1F59C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v11 = v3[6];
  v12 = v3[7];
  v13 = *(type metadata accessor for ShelfGrid() - 8);
  v14 = ((*(v13 + 80) + 64) & ~*(v13 + 80)) + *(v13 + 64);
  return sub_1B7A1B980(a1, a2, v3 + ((v14 + 7) & 0xFFFFFFFFFFFFFFF8), *(v3 + ((v14 + 63) & 0xFFFFFFFFFFFFFFF8)), v7, v8, v9, a3, v10, v11, v12);
}

uint64_t sub_1B7A1F708(uint64_t result, uint64_t (*a2)(void *, uint64_t *))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  if (result)
  {
    v5 = sub_1B7A9A690();
    *(v5 + 16) = v4;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = v5 + 32;
  v8 = 0;
  v7[0] = v5 + 32;
  v7[1] = v4;
  result = a2(v7, &v8);
  if (v2)
  {
    if (v8 <= v4)
    {
      if (!v7[0])
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v6 == v7[0])
      {
        *(v5 + 16) = v8;

        return v5;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 > v4)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7[0])
  {
    if (v6 == v7[0])
    {
      *(v5 + 16) = v8;
      return v5;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1B7A1F8B0()
{
  result = qword_1EBA48770;
  if (!qword_1EBA48770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48770);
  }

  return result;
}

uint64_t sub_1B7A1F918(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1B7A991B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_1B7A9A7E0();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v4 + 16))(v6, a1, v3);
  sub_1B7A9A760();
  v11 = sub_1B7A9A750();
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = (v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  *(v14 + 16) = v11;
  *(v14 + 24) = v15;
  (*(v4 + 32))(v14 + v12, v6, v3);
  *(v14 + v13) = ObjectType;
  sub_1B79A9B34(0, 0, v9, &unk_1B7AA3698, v14);
}

uint64_t sub_1B7A1FB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1B7A9A760();
  *(v4 + 24) = sub_1B7A9A750();
  v6 = sub_1B7A9A710();

  return MEMORY[0x1EEE6DFA0](sub_1B7A1FBC4, v6, v5);
}

uint64_t sub_1B7A1FBC4()
{
  v1 = *(v0 + 16);

  sub_1B7A20454(v1);
  v2 = *(v0 + 8);

  return v2();
}

void *sub_1B7A1FC2C()
{
  result = sub_1B7990F54(MEMORY[0x1E69E7CC0]);
  off_1EBA48778 = result;
  return result;
}

BOOL sub_1B7A1FC54(void **a1)
{
  v1 = *a1;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [v1 activationState];

  return v2 == 0;
}

uint64_t sub_1B7A1FCF8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v3;
  }

  *a2 = v4;
  return result;
}

void sub_1B7A1FDB4(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [v3 windows];
  sub_1B79596F8(0, &qword_1EDC10A20);
  v5 = sub_1B7A9A640();

  *a2 = v5;
}

id sub_1B7A1FEEC@<X0>(void *a1@<X8>)
{
  v4.receiver = objc_allocWithZone(v1);
  v4.super_class = v1;
  result = objc_msgSendSuper2(&v4, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1B7A1FF58(uint64_t a1)
{
  v4 = *(sub_1B7A991B0() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B798D338;

  return sub_1B7A1FB2C(a1, v6, v7, v1 + v5);
}

id sub_1B7A20088@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result)
  {
    *a2 = result;
    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B7A2009C(uint64_t a1)
{
  v2 = sub_1B7A99000();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1B7A96BF0();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = _s21PopupHUDConfigurationVMa(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EBA45B70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = off_1EBA48778;
  if (*(off_1EBA48778 + 2) && (v8 = sub_1B7994C28(a1), (v9 & 1) != 0))
  {
    v10 = v7[7] + 16 * v8;
    v11 = *v10;
    v12 = *(v10 + 8);
    swift_endAccess();
    v11;
    v12;
  }

  else
  {
    swift_endAccess();
    *v6 = sub_1B7A98DB0();
    v6[1] = v13;
    _s13PopupHUDModelCMa(0);
    v14 = swift_allocObject();
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_1B7A96EE0();
    v15 = MEMORY[0x1E69E7CC0];
    v27 = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48790);
    sub_1B7A96EE0();
    v6[2] = v14;
    v6[3] = v15;
    sub_1B7A96BE0();
    sub_1B7A98FF0();
    sub_1B7A99AF0();
    v16 = _s22PopupHUDViewControllerCMa(0);
    v17 = objc_allocWithZone(v16);
    sub_1B7A20DF8(v6, v17 + OBJC_IVAR____TtCC18_JetEngine_SwiftUI28_PageRenderMetricsVisualizer22PopupHUDViewController_config);
    v26.receiver = v17;
    v26.super_class = v16;
    v18 = objc_msgSendSuper2(&v26, sel_initWithNibName_bundle_, 0, 0);
    sub_1B7A20E5C(v6);
    v19 = [objc_allocWithZone(_s25MetricsVisualizerUIWindowCMa()) initWithWindowScene_];
    [v19 setHidden_];
    v20 = v18;
    [v19 setRootViewController_];
    v21 = [v20 view];

    if (v21)
    {
      [v19 addSubview_];

      swift_beginAccess();
      v22 = v20;
      v23 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = off_1EBA48778;
      off_1EBA48778 = 0x8000000000000000;
      sub_1B79A0874(v23, v22, a1, isUniquelyReferenced_nonNull_native);
      off_1EBA48778 = v25;
      swift_endAccess();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1B7A20454(uint64_t a1)
{
  v45 = a1;
  v1 = sub_1B7A9A280();
  v44 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v43 = v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = [objc_opt_self() sharedApplication];
  v4 = [v3 connectedScenes];

  v5 = sub_1B79596F8(0, &qword_1EDC0FC58);
  sub_1B7A20D28();
  v6 = sub_1B7A9A8A0();

  v49 = v5;
  if ((v6 & 0xC000000000000001) != 0)
  {

    sub_1B7A9ABC0();
    sub_1B7A9A8D0();
    v7 = v72;
    v8 = v73;
    v9 = v74;
    v10 = v75;
    v11 = v76;
  }

  else
  {
    v12 = -1 << *(v6 + 32);
    v8 = v6 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v6 + 56);

    v10 = 0;
    v7 = v6;
  }

  v15 = 0;
  v16 = (v9 + 64) >> 6;
  v52 = v10;
  v51 = v7;
  v50 = v16;
  v48 = v1;
  v47 = v6;
  v46 = v9;
LABEL_24:
  v17 = 0;
  if (v7 < 0)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v26 = v52;
    if (!v11)
    {
      break;
    }

    v10 = v52;
LABEL_35:
    v27 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v25 = *(*(v7 + 48) + ((v10 << 9) | (8 * v27)));
    if (!v25)
    {
LABEL_55:
      v7 = v51;
      goto LABEL_56;
    }

    while (2)
    {
      sub_1B7A9A760();
      sub_1B7A9A750();
      sub_1B7A9A710();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v28 = [v25 activationState];

      if (v28)
      {

        goto LABEL_44;
      }

      sub_1B7A9A750();
      sub_1B7A9A710();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (!v29)
      {

        goto LABEL_44;
      }

      v30 = v29;

      sub_1B7A9A750();
      sub_1B7A9A710();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v31 = [v30 windows];
      sub_1B79596F8(0, &qword_1EDC10A20);
      v32 = sub_1B7A9A640();

      v15 = v32;
      v7 = v51;
      v16 = v50;
      if (!v32)
      {
        goto LABEL_24;
      }

      v42 = v8;
      v17 = 0;
      v18 = v32 & 0xFFFFFFFFFFFFFF8;
      if (v32 >= 0)
      {
        v19 = v32 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        v19 = v32;
      }

      v41[1] = v19;
      v53 = v32 & 0xC000000000000001;
      if (v32 >> 62)
      {
        goto LABEL_21;
      }

      while (v17 != *(v18 + 16))
      {
        while (1)
        {
          if (v53)
          {
            v20 = v15;
            v21 = MEMORY[0x1B8CABED0](v17, v15);
          }

          else
          {
            if (v17 >= *(v18 + 16))
            {
              goto LABEL_62;
            }

            v20 = v15;
            v21 = *(v15 + 8 * v17 + 32);
          }

          v22 = v21;
          if (__OFADD__(v17, 1))
          {
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
            return;
          }

          sub_1B7A9A760();
          sub_1B7A9A750();
          sub_1B7A9A710();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v23 = [v22 isKeyWindow];

          if (v23)
          {
            v55 = v51;
            v56 = v42;
            v57 = v46;
            v58 = v10;
            v59 = v11;
            v60 = sub_1B7A1FC54;
            v61 = 0;
            v62 = sub_1B7A1FCF8;
            v63 = 0;
            v64 = sub_1B7A20078;
            v65 = 0;
            v66 = sub_1B7A20088;
            v67 = 0;
            v68 = sub_1B7A1FDB4;
            v69 = 0;
            v70 = v20;
            v71 = v17 + 1;
            sub_1B7A20D90(&v55);

            goto LABEL_57;
          }

          ++v17;
          v15 = v20;
          if (!(v20 >> 62))
          {
            break;
          }

LABEL_21:
          if (v17 == sub_1B7A9AD90())
          {
            goto LABEL_28;
          }
        }
      }

LABEL_28:
      v8 = v42;
LABEL_44:
      v7 = v51;
      v16 = v50;
      if (v51 < 0)
      {
LABEL_25:
        v24 = sub_1B7A9ABD0();
        if (!v24)
        {
          goto LABEL_55;
        }

        v54 = v24;
        swift_dynamicCast();
        v25 = v55;
        if (!v55)
        {
          goto LABEL_55;
        }

        continue;
      }

      break;
    }
  }

  while (1)
  {
    v10 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_61;
    }

    if (v10 >= v16)
    {
      break;
    }

    v11 = *(v8 + 8 * v10);
    ++v26;
    if (v11)
    {
      v52 = v10;
      goto LABEL_35;
    }
  }

  v11 = 0;
  if (v16 <= v52 + 1)
  {
    v33 = v52 + 1;
  }

  else
  {
    v33 = v16;
  }

  v10 = v33 - 1;
LABEL_56:
  v55 = v7;
  v56 = v8;
  v57 = v46;
  v58 = v10;
  v59 = v11;
  v60 = sub_1B7A1FC54;
  v61 = 0;
  v62 = sub_1B7A1FCF8;
  v63 = 0;
  v64 = sub_1B7A20078;
  v65 = 0;
  v66 = sub_1B7A20088;
  v67 = 0;
  v68 = sub_1B7A1FDB4;
  v69 = 0;
  v70 = v15;
  v71 = v17;
  sub_1B7A20D90(&v55);

  v22 = 0;
LABEL_57:
  v34 = v48;
  v35 = [v22 windowScene];

  if (v35)
  {
    v36 = v35;
    sub_1B7A2009C(v36);
    v38 = v37;

    swift_beginAccess();
    sub_1B7A59A5C(v45);
    swift_endAccess();
  }

  else
  {
    v40 = v43;
    sub_1B7A9A240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8);
    sub_1B7A98D10();
    *(swift_allocObject() + 16) = xmmword_1B7A9C180;
    sub_1B7A98C40();
    sub_1B7A99E60();

    (*(v44 + 8))(v40, v34);
  }
}

unint64_t sub_1B7A20D28()
{
  result = qword_1EBA48780;
  if (!qword_1EBA48780)
  {
    sub_1B79596F8(255, &qword_1EDC0FC58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48780);
  }

  return result;
}

uint64_t sub_1B7A20D90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48788);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7A20DF8(uint64_t a1, uint64_t a2)
{
  v4 = _s21PopupHUDConfigurationVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7A20E5C(uint64_t a1)
{
  v2 = _s21PopupHUDConfigurationVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ComponentMenuContent()
{
  result = qword_1EBA487A0;
  if (!qword_1EBA487A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B7A20F2C()
{
  sub_1B7A21010();
  if (v0 <= 0x3F)
  {
    sub_1B7A21068();
    if (v1 <= 0x3F)
    {
      sub_1B797CE50(319, qword_1EDC0EC28, &qword_1EBA47828);
      if (v2 <= 0x3F)
      {
        sub_1B797CE50(319, &qword_1EBA487C0, &qword_1EBA487C8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B7A21010()
{
  if (!qword_1EBA487B0)
  {
    sub_1B7A9A0D0();
    v0 = sub_1B7A9AB60();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA487B0);
    }
  }
}

unint64_t sub_1B7A21068()
{
  result = qword_1EBA487B8;
  if (!qword_1EBA487B8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBA487B8);
  }

  return result;
}

uint64_t sub_1B7A210E8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t *))
{
  v5 = a2;
  a3(&v4, a1, &v5);
  return v4;
}

uint64_t sub_1B7A21128()
{
  v1 = v0;
  v2 = type metadata accessor for ComponentMenuContent();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48798);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  sub_1B7957820(v1, v14 - v6, &qword_1EBA48798);
  v8 = sub_1B7A9A0D0();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1B7957888(v7, &qword_1EBA48798);
    v10 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v10 = sub_1B7A9A0C0();
    (*(v9 + 8))(v7, v8);
  }

  v14[1] = v10;
  sub_1B7A22F34(v1, v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_1B7A22F98(v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA487D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA487D8);
  sub_1B797EC34(&qword_1EBA487E0, &qword_1EBA487D0);
  sub_1B7A2307C();
  sub_1B7A234E0(&qword_1EBA48860, MEMORY[0x1E69AB5E0]);
  return sub_1B7A988D0();
}

uint64_t sub_1B7A21410@<X0>(void (*a1)(unint64_t, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v104 = a2;
  v118 = a1;
  v124 = a3;
  v100 = sub_1B7A97880();
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v98 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48818);
  MEMORY[0x1EEE9AC00](v117);
  v103 = &v97 - v4;
  v112 = sub_1B7A9A0D0();
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v102 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48868);
  MEMORY[0x1EEE9AC00](v121);
  v123 = (&v97 - v6);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48870);
  MEMORY[0x1EEE9AC00](v114);
  v115 = &v97 - v7;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA487F8);
  MEMORY[0x1EEE9AC00](v122);
  v116 = &v97 - v8;
  v106 = sub_1B7A9A0B0();
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v101 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48878);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v97 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47018);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v109 = &v97 - v14;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48880);
  MEMORY[0x1EEE9AC00](v107);
  v16 = &v97 - v15;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48808);
  MEMORY[0x1EEE9AC00](v113);
  v108 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v110 = &v97 - v19;
  v125 = sub_1B7A9A090();
  v119 = *(v125 - 8);
  v20 = v119[8];
  MEMORY[0x1EEE9AC00](v125);
  v21 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v97 - v23;
  v25 = sub_1B7A9A0A0();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = (&v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA487D8);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v126 = &v97 - v30;
  sub_1B7A9A760();
  v120 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v26 + 16))(v28, v118, v25);
  v31 = (*(v26 + 88))(v28, v25);
  if (v31 != *MEMORY[0x1E69AB5C8])
  {
    if (v31 == *MEMORY[0x1E69AB5D0])
    {
      (*(v26 + 96))(v28, v25);
      v38 = v102;
      v39 = (*(v111 + 32))(v102, v28, v112);
      MEMORY[0x1EEE9AC00](v39);
      MEMORY[0x1EEE9AC00](v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48888);
      type metadata accessor for ComponentMenuContent();
      sub_1B797EC34(&qword_1EBA48890, &qword_1EBA48888);
      sub_1B7A234E0(&qword_1EBA47010, type metadata accessor for ComponentMenuContent);
      v41 = v103;
      sub_1B7A98040();
      v42 = sub_1B7A9A050();
      v43 = (v41 + *(v117 + 52));
      *v43 = v42;
      v43[1] = v44;
      sub_1B7957820(v41, v115, &qword_1EBA48818);
      swift_storeEnumTagMultiPayload();
      sub_1B797EC34(&qword_1EBA48800, &qword_1EBA48808);
      sub_1B797EC34(&qword_1EBA48810, &qword_1EBA48818);
      v45 = v116;
      sub_1B7A97B30();
      sub_1B7957820(v45, v123, &qword_1EBA487F8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48828);
      sub_1B7A23108();
      sub_1B7A231E8();
      sub_1B7A97B30();
      sub_1B7957888(v45, &qword_1EBA487F8);
      sub_1B7957888(v41, &qword_1EBA48818);
      (*(v111 + 8))(v38, v112);
LABEL_19:
      sub_1B797E788(v126, v124, &qword_1EBA487D8);
    }

    if (v31 != *MEMORY[0x1E69AB5D8])
    {
      v131 = 0uLL;
      v132 = 0;
      v133 = 256;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48838);
      sub_1B7A23274();
      sub_1B7A97B30();
      v78 = v128;
      v79 = v129;
      v80 = BYTE1(v129);
      v81 = v123;
      *v123 = v127;
      *(v81 + 2) = v78;
      *(v81 + 24) = v79;
      *(v81 + 25) = v80;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48828);
      sub_1B7A23108();
      sub_1B7A231E8();
      sub_1B7A97B30();
      (*(v26 + 8))(v28, v25);
      goto LABEL_19;
    }

    (*(v26 + 96))(v28, v25);
    v49 = *v28;
    v48 = v28[1];
    v50 = type metadata accessor for ComponentMenuContent();
    v51 = v104;
    sub_1B797C31C(&v127);
    v52 = v129;
    if (!v129)
    {
      sub_1B7957888(&v127, &qword_1EBA47828);
LABEL_26:
      *&v127 = 0;
      *(&v127 + 1) = 0xE000000000000000;
      sub_1B7A9AC50();
      MEMORY[0x1B8CAB750](0xD000000000000020, 0x80000001B7AC6B30);
      MEMORY[0x1B8CAB750](v49, v48);

      MEMORY[0x1B8CAB750](0xD000000000000051, 0x80000001B7AC6B60);
      v88 = v127;
      v89 = swift_allocObject();
      *(v89 + 16) = v88;
      *&v131 = sub_1B797D598;
      *(&v131 + 1) = v89;
      v132 = 0;
      LOBYTE(v133) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48848);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48858);
      sub_1B797EC34(&qword_1EBA48840, &qword_1EBA48848);
      sub_1B797EC34(&qword_1EBA48850, &qword_1EBA48858);
      sub_1B7A97B30();
      goto LABEL_27;
    }

    v53 = v130;
    __swift_project_boxed_opaque_existential_1(&v127, v129);
    v54 = (*(v53 + 16))(v52, v53);
    __swift_destroy_boxed_opaque_existential_1(&v127);
    v55 = v51 + *(v50 + 28);
    v56 = *v55;
    if (*(v55 + 8) == 1)
    {

      if (!*(v56 + 16))
      {
        goto LABEL_25;
      }
    }

    else
    {

      sub_1B7A9AA10();
      v82 = sub_1B7A97E70();
      sub_1B7A96D30();

      v83 = v98;
      sub_1B7A97870();
      swift_getAtKeyPath();
      sub_1B79A5B8C(v56, 0);
      (*(v99 + 8))(v83, v100);
      v56 = v127;
      if (!*(v127 + 16))
      {
LABEL_25:

        goto LABEL_26;
      }
    }

    v84 = sub_1B79948B8(v49, v48);
    if (v85)
    {
      v86 = *(*(v56 + 56) + 16 * v84);

      v87 = *(v50 + 20);
      *&v127 = v54;
      v86(&v131, v51 + v87, &v127);

      *(&v131 + 1) = v49;
      v132 = v48;
      LOBYTE(v133) = 0;
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48848);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48858);
      sub_1B797EC34(&qword_1EBA48840, &qword_1EBA48848);
      sub_1B797EC34(&qword_1EBA48850, &qword_1EBA48858);
      sub_1B7A97B30();
      swift_bridgeObjectRelease_n();

LABEL_27:
      v90 = v128;
      v91 = v129;
      v131 = v127;
      v132 = v128;
      v133 = v129;
      v92 = v127;
      sub_1B7A23358(v127, *(&v127 + 1), v128, v129);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48838);
      sub_1B7A23274();
      sub_1B7A97B30();
      v93 = v128;
      v94 = v129;
      v95 = BYTE1(v129);
      v96 = v123;
      *v123 = v127;
      *(v96 + 2) = v93;
      *(v96 + 24) = v94;
      *(v96 + 25) = v95;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48828);
      sub_1B7A23108();
      sub_1B7A231E8();
      sub_1B7A97B30();
      sub_1B7A233A8(v92, *(&v92 + 1), v90, v91);
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  (*(v26 + 96))(v28, v25);
  v32 = v119[4];
  v32(v24, v28, v125);
  sub_1B7A9A070();
  v33 = v105;
  v34 = v106;
  v35 = (*(v105 + 48))(v12, 1, v106);
  v118 = v32;
  if (v35 == 1)
  {
    sub_1B7957888(v12, &qword_1EBA48878);
    v36 = sub_1B7A96FC0();
    v37 = v109;
    (*(*(v36 - 8) + 56))(v109, 1, 1, v36);
LABEL_18:
    sub_1B7A9A080();
    v58 = v24;
    v59 = v119;
    v60 = v119[2];
    v97 = v58;
    v61 = v125;
    v60(v21);
    v62 = (*(v59 + 80) + 16) & ~*(v59 + 80);
    v63 = swift_allocObject();
    v118(v63 + v62, v21, v61);
    *(v16 + 10) = swift_getKeyPath();
    v16[120] = 0;
    v64 = v107;
    v65 = *(v107 + 44);
    *&v16[v65] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98);
    swift_storeEnumTagMultiPayload();
    v66 = &v16[*(v64 + 48)];
    *v66 = swift_getKeyPath();
    *(v66 + 1) = 0;
    v66[16] = 0;
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48898);
    *(v16 + 3) = v67;
    *(v16 + 4) = sub_1B797EC34(&qword_1EBA488A0, &qword_1EBA48898);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v16);
    sub_1B797E788(v37, boxed_opaque_existential_1Tm, &qword_1EBA47018);
    v69 = (boxed_opaque_existential_1Tm + *(v67 + 36));
    *v69 = sub_1B7A23408;
    v69[1] = v63;
    v70 = sub_1B7A9A060();
    v72 = v71;
    v73 = v108;
    sub_1B7957820(v16, v108, &qword_1EBA48880);
    v74 = (v73 + *(v113 + 52));
    *v74 = v70;
    v74[1] = v72;
    sub_1B7957888(v16, &qword_1EBA48880);
    v75 = v110;
    sub_1B797E788(v73, v110, &qword_1EBA48808);
    sub_1B7957820(v75, v115, &qword_1EBA48808);
    swift_storeEnumTagMultiPayload();
    sub_1B797EC34(&qword_1EBA48800, &qword_1EBA48808);
    sub_1B797EC34(&qword_1EBA48810, &qword_1EBA48818);
    v76 = v116;
    sub_1B7A97B30();
    sub_1B7957820(v76, v123, &qword_1EBA487F8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48828);
    sub_1B7A23108();
    sub_1B7A231E8();
    sub_1B7A97B30();
    sub_1B7957888(v76, &qword_1EBA487F8);
    sub_1B7957888(v75, &qword_1EBA48808);
    (v59[1])(v97, v125);
    goto LABEL_19;
  }

  v46 = v101;
  (*(v33 + 16))(v101, v12, v34);
  v47 = (*(v33 + 88))(v46, v34);
  v37 = v109;
  if (v47 == *MEMORY[0x1E69AB600])
  {
    sub_1B7A96FA0();
LABEL_17:
    v57 = sub_1B7A96FC0();
    (*(*(v57 - 8) + 56))(v37, 0, 1, v57);
    (*(v33 + 8))(v12, v34);
    goto LABEL_18;
  }

  if (v47 == *MEMORY[0x1E69AB5F8])
  {
    sub_1B7A96F90();
    goto LABEL_17;
  }

  result = sub_1B7A9AD70();
  __break(1u);
  return result;
}