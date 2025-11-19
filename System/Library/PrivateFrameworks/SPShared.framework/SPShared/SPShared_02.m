uint64_t sub_2644E0EF0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3[3];
  v5 = v3[4];
  v6 = v3[5];
  v7 = v3[6];
  v8 = v3[7];
  v9 = v3[8];
  return sub_2644E030C(a1, v3[2], a3, a2);
}

uint64_t sub_2644E0F40()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2644E0F88(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2644E0FE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2644E1034()
{
  v0 = sub_2644EAE0C();
  __swift_allocate_value_buffer(v0, qword_2814ACCD0);
  __swift_project_value_buffer(v0, qword_2814ACCD0);
  return sub_2644EADFC();
}

uint64_t sub_2644E10A0()
{
  sub_2644C5EC4();
  result = sub_2644EB5FC();
  qword_27FF71628 = result;
  return result;
}

uint64_t sub_2644E1108(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_2644E1220(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t Lock.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t Lock.init()()
{
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t Lock.__deallocating_deinit()
{
  MEMORY[0x26673AD40](*(v0 + 16), -1, -1);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void Lock.criticalSection<A>(_:)(void (*a1)(void))
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3);
  a1();
  os_unfair_lock_unlock(v3);
}

void Lock.callAsFunction<A>(_:)(void (*a1)(void))
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3);
  a1();
  os_unfair_lock_unlock(v3);
}

uint64_t Lock.debugDescription.getter()
{
  MEMORY[0x266739CC0](0x5B6B636F4CLL, 0xE500000000000000);
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6FA08, &qword_2644EDE20);
  sub_2644EB81C();
  MEMORY[0x266739CC0](58, 0xE100000000000000);
  v4 = *v1;
  v2 = sub_2644EB94C();
  MEMORY[0x266739CC0](v2);

  MEMORY[0x266739CC0](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_2644E16DC()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 isInternalBuild];

  if (v1)
  {
    v2 = [objc_opt_self() processInfo];
    v3 = [v2 environment];

    v4 = sub_2644EB15C();
    if (*(v4 + 16))
    {
      sub_2644E9810(0x45545F5245444E55, 0xEA00000000005453);
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_2644E17E4()
{
  v0 = sub_2644EAE0C();
  __swift_allocate_value_buffer(v0, qword_27FF6FA10);
  v1 = __swift_project_value_buffer(v0, qword_27FF6FA10);
  if (qword_27FF6F600 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FF71630);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t Sequencer.__allocating_init(name:softTimeout:hardTimeout:)(uint64_t a1, unint64_t a2, double a3, double a4)
{
  v23 = a2;
  v24 = a1;
  v6 = sub_2644EB4DC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_2644EB0AC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_2644EB55C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v15 = swift_allocObject();
  v22 = sub_2644B2D18();
  (*(v11 + 104))(v14, *MEMORY[0x277D85268], v10);
  sub_2644EB08C();
  v25 = MEMORY[0x277D84F90];
  sub_2644B2E3C(&qword_2814AC6A8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF6FAB0, qword_2644EDB90);
  sub_2644B5B18(&qword_2814AC6B0, &unk_27FF6FAB0, qword_2644EDB90);
  sub_2644EB6CC();
  v16 = sub_2644EB59C();
  *(v15 + 96) = MEMORY[0x277D84F90];
  v17 = v23;
  v18 = 0x65636E6575716553;
  if (v23)
  {
    v18 = v24;
  }

  *(v15 + 16) = v16;
  *(v15 + 24) = v18;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0xE900000000000072;
  }

  *(v15 + 32) = v19;
  *(v15 + 40) = a3;
  *(v15 + 48) = a4;
  if (sub_2644E16DC())
  {
    v20 = v27;
    *(v15 + 56) = v26;
    *(v15 + 72) = v20;
    *(v15 + 88) = v28;
  }

  else
  {
    sub_2644E1BA8(&v26);
    *(v15 + 56) = 0u;
    *(v15 + 72) = 0u;
    *(v15 + 88) = 0;
  }

  return v15;
}

uint64_t sub_2644E1BA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6FA28, &qword_2644EDE98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Sequencer.perform(identifier:_:enqueueCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a4;
  v36 = a5;
  v33 = a1;
  v34 = a2;
  v7 = sub_2644EB06C();
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2644EB0AC();
  v37 = *(v11 - 8);
  v38 = v11;
  v12 = *(v37 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Sequencer.WorkItem();
  v16 = v15 - 8;
  v17 = *(v15 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v15);
  v20 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v33 - v21;
  v23 = sub_2644EADAC();
  (*(*(v23 - 8) + 16))(v22, v33, v23);
  v24 = &v22[*(v16 + 28)];
  *v24 = v34;
  *(v24 + 1) = a3;
  v34 = *(v5 + 16);
  v25 = swift_allocObject();
  swift_weakInit();
  sub_2644E2108(v22, v20);
  v26 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  sub_2644E216C(v20, v27 + v26);
  v28 = (v27 + ((v18 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
  v30 = v35;
  v29 = v36;
  *v28 = v35;
  v28[1] = v29;
  aBlock[4] = sub_2644E21D0;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2644BD140;
  aBlock[3] = &block_descriptor_6;
  v31 = _Block_copy(aBlock);

  sub_2644D9284(v30);
  sub_2644EB08C();
  v40 = MEMORY[0x277D84F90];
  sub_2644B2E3C(&qword_2814AC1D0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F780, &unk_2644EDCE0);
  sub_2644B5B18(&qword_2814ABF78, &qword_27FF6F780, &unk_2644EDCE0);
  sub_2644EB6CC();
  MEMORY[0x266739FD0](0, v14, v10, v31);
  _Block_release(v31);
  (*(v39 + 8))(v10, v7);
  (*(v37 + 8))(v14, v38);
  sub_2644E2264(v22);
}

uint64_t type metadata accessor for Sequencer.WorkItem()
{
  result = qword_27FF6FA30;
  if (!qword_27FF6FA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2644E208C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2644E22C0(a2, a3);
  }

  return result;
}

uint64_t sub_2644E2108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Sequencer.WorkItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2644E216C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Sequencer.WorkItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2644E21D0()
{
  v1 = *(type metadata accessor for Sequencer.WorkItem() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_2644E208C(v3, v0 + v2, v5);
}

uint64_t sub_2644E2264(uint64_t a1)
{
  v2 = type metadata accessor for Sequencer.WorkItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2644E22C0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = type metadata accessor for Sequencer.WorkItem();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2644EB10C();
  v11 = *(v10 - 1);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(v2 + 16);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x277D85200], v10);
  v16 = v15;
  v17 = sub_2644EB12C();
  (*(v11 + 8))(v14, v10);
  if (v17)
  {
    swift_beginAccess();
    v10 = *(v2 + 96);
    v17 = v10[2];
    sub_2644E2108(a1, v9);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 96) = v10;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v10 = sub_2644DF3F0(0, v17 + 1, 1, v10);
  *(v2 + 96) = v10;
LABEL_3:
  v20 = v10[2];
  v19 = v10[3];
  if (v20 >= v19 >> 1)
  {
    v10 = sub_2644DF3F0(v19 > 1, v20 + 1, 1, v10);
  }

  v10[2] = v20 + 1;
  sub_2644E216C(v9, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v20);
  *(v2 + 96) = v10;
  result = swift_endAccess();
  if (a2)
  {
    result = a2(a1);
  }

  if (!v17)
  {
    return sub_2644E2544();
  }

  return result;
}

uint64_t sub_2644E2544()
{
  v1 = v0;
  v94 = *v0;
  v89 = sub_2644EB0CC();
  v2 = *(v89 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v89);
  v87 = v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v88 = v77 - v6;
  v84 = sub_2644EB06C();
  v7 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v85 = v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for Sequencer.WorkItem();
  v9 = *(v86 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v86);
  v90 = v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v77 - v13;
  MEMORY[0x28223BE20](v12);
  v95 = v77 - v15;
  v16 = sub_2644EB10C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = (v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = v1[2];
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x277D85200], v16);
  v22 = v21;
  v23 = sub_2644EB12C();
  (*(v17 + 8))(v20, v16);
  if ((v23 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  result = swift_beginAccess();
  v25 = v1[12];
  if (!*(v25 + 16))
  {
    return result;
  }

  v82 = v22;
  v83 = v2;
  v16 = *(v9 + 80);
  v80 = (v16 + 32) & ~v16;
  v22 = v95;
  sub_2644E2108(v25 + v80, v95);
  v20 = v1[3];
  v23 = v1[4];
  v26 = qword_27FF6F5F8;

  if (v26 != -1)
  {
    goto LABEL_13;
  }

LABEL_4:
  v92 = v16;
  v81 = ~v16;
  v27 = sub_2644EAE0C();
  __swift_project_value_buffer(v27, qword_27FF6FA10);
  sub_2644E2108(v22, v14);

  v28 = sub_2644EADEC();
  v29 = sub_2644EB47C();

  v30 = os_log_type_enabled(v28, v29);
  v93 = v20;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = v1;
    v33 = swift_slowAlloc();
    aBlock = v33;
    *v31 = 136446466;
    *(v31 + 4) = sub_2644B73B8(v93, v23, &aBlock);
    *(v31 + 12) = 2082;
    sub_2644EADAC();
    sub_2644B2E3C(&qword_2814ABF38, MEMORY[0x277CC95F0]);
    v34 = sub_2644EB94C();
    v36 = v35;
    sub_2644E2264(v14);
    v37 = sub_2644B73B8(v34, v36, &aBlock);

    *(v31 + 14) = v37;
    _os_log_impl(&dword_2644B1000, v28, v29, "%{public}s: Execute %{public}s", v31, 0x16u);
    swift_arrayDestroy();
    v38 = v33;
    v1 = v32;
    MEMORY[0x26673AD40](v38, -1, -1);
    v39 = v31;
    v20 = v93;
    MEMORY[0x26673AD40](v39, -1, -1);
  }

  else
  {

    sub_2644E2264(v14);
  }

  v91 = v1;
  v40 = v1[5];
  v41 = swift_allocObject();
  swift_weakInit();
  v42 = v90;
  sub_2644E2108(v95, v90);
  v79 = v10 + 7;
  v43 = v80;
  v44 = (v10 + 7 + v80) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  *(v46 + 16) = v20;
  *(v46 + 24) = v23;
  sub_2644E216C(v42, v46 + v43);
  *(v46 + v44) = v40;
  *(v46 + v45) = v41;
  *(v46 + ((v45 + 15) & 0xFFFFFFFFFFFFFFF8)) = v94;
  v101 = sub_2644E45CC;
  v102 = v46;
  aBlock = MEMORY[0x277D85DD0];
  v98 = 1107296256;
  v78 = &v99;
  v99 = sub_2644BD140;
  v100 = &block_descriptor_13_0;
  _Block_copy(&aBlock);
  v96 = MEMORY[0x277D84F90];
  v77[1] = sub_2644B2E3C(&qword_2814AC1D0, MEMORY[0x277D85198]);

  v77[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F780, &unk_2644EDCE0);
  v77[2] = sub_2644B5B18(&qword_2814ABF78, &qword_27FF6F780, &unk_2644EDCE0);
  sub_2644EB6CC();
  v47 = sub_2644EB0FC();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  v80 = sub_2644EB0DC();

  v50 = swift_allocObject();
  swift_weakInit();
  sub_2644E2108(v95, v42);
  v51 = (v92 + 24) & v81;
  v52 = (v79 + v51) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  *(v53 + 16) = v50;
  v79 = v51;
  sub_2644E216C(v42, v53 + v51);
  v54 = (v53 + v52);
  *v54 = v93;
  v54[1] = v23;
  *(v53 + ((v52 + 23) & 0xFFFFFFFFFFFFFFF8)) = v94;
  v101 = sub_2644E4674;
  v102 = v53;
  aBlock = MEMORY[0x277D85DD0];
  v98 = 1107296256;
  v99 = sub_2644BD140;
  v100 = &block_descriptor_20;
  _Block_copy(&aBlock);
  v96 = MEMORY[0x277D84F90];
  v81 = v23;

  v55 = v91;
  sub_2644EB6CC();
  v56 = *(v47 + 48);
  v57 = *(v47 + 52);
  swift_allocObject();
  v85 = sub_2644EB0DC();

  v84 = swift_allocObject();
  *(v84 + 16) = 0;
  v78 = mach_continuous_time();
  sub_2644E4714((v55 + 7), &aBlock);
  v58 = v100;
  if (v100)
  {
    v59 = v101;
    __swift_project_boxed_opaque_existential_1(&aBlock, v100);
    v60 = v95;
    v59[3](v95, v58, v59);
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
  }

  else
  {
    sub_2644E1BA8(&aBlock);
    v60 = v95;
  }

  v61 = (v60 + *(v86 + 20));
  v62 = v61[1];
  v86 = *v61;
  v63 = swift_allocObject();
  swift_weakInit();
  v64 = v90;
  sub_2644E2108(v60, v90);
  v65 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
  v66 = (v65 + 23) & 0xFFFFFFFFFFFFFFF8;
  v67 = (v66 + 15) & 0xFFFFFFFFFFFFFFF8;
  v68 = (v67 + 15) & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  *(v69 + 16) = v63;
  sub_2644E216C(v64, v69 + v79);
  *(v69 + v52) = v84;
  v70 = (v69 + v65);
  v71 = v81;
  *v70 = v93;
  v70[1] = v71;
  *(v69 + v66) = v80;
  *(v69 + v67) = v85;
  *(v69 + v68) = v78;
  *(v69 + ((v68 + 15) & 0xFFFFFFFFFFFFFFF8)) = v94;

  (v86)(sub_2644E4784, v69);

  v72 = v87;
  sub_2644EB0BC();
  v73 = v88;
  sub_2644EB11C();
  v74 = *(v83 + 8);
  v75 = v89;
  v74(v72, v89);
  sub_2644EB4FC();
  v74(v73, v75);
  sub_2644EB0BC();
  v76 = v91[6];
  sub_2644EB11C();
  v74(v72, v75);
  sub_2644EB4FC();

  v74(v73, v75);
  sub_2644E2264(v95);
}

uint64_t sub_2644E310C(uint64_t a1, unint64_t a2, uint64_t a3, double a4)
{
  v8 = type metadata accessor for Sequencer.WorkItem();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27FF6F5F8 != -1)
  {
    swift_once();
  }

  v12 = sub_2644EAE0C();
  __swift_project_value_buffer(v12, qword_27FF6FA10);
  sub_2644E2108(a3, v11);

  v13 = sub_2644EADEC();
  v14 = sub_2644EB4BC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25[0] = v16;
    *v15 = 136446722;
    *(v15 + 4) = sub_2644B73B8(a1, a2, v25);
    *(v15 + 12) = 2082;
    sub_2644EADAC();
    sub_2644B2E3C(&qword_2814ABF38, MEMORY[0x277CC95F0]);
    v17 = sub_2644EB94C();
    v19 = v18;
    sub_2644E2264(v11);
    v20 = sub_2644B73B8(v17, v19, v25);

    *(v15 + 14) = v20;
    *(v15 + 22) = 2048;
    *(v15 + 24) = a4;
    _os_log_impl(&dword_2644B1000, v13, v14, "%{public}s: queue item %{public}s took longer than %f seconds.", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26673AD40](v16, -1, -1);
    MEMORY[0x26673AD40](v15, -1, -1);
  }

  else
  {

    sub_2644E2264(v11);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2644E4714(result + 56, v25);

    v22 = v26;
    if (v26)
    {
      v23 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      (*(v23 + 8))(a3, v22, v23);
      return __swift_destroy_boxed_opaque_existential_0(v25);
    }

    else
    {
      return sub_2644E1BA8(v25);
    }
  }

  return result;
}

void sub_2644E3404(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = type metadata accessor for Sequencer.WorkItem();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_2644E16DC())
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_2644E4714(Strong + 56, v24);

      v12 = v25;
      if (v25)
      {
        v13 = v26;
        __swift_project_boxed_opaque_existential_1(v24, v25);
        (*(v13 + 16))(a2, v12, v13);
        __swift_destroy_boxed_opaque_existential_0(v24);
      }

      else
      {
        sub_2644E1BA8(v24);
      }
    }
  }

  else
  {
    if (qword_27FF6F5F8 != -1)
    {
      swift_once();
    }

    v14 = sub_2644EAE0C();
    __swift_project_value_buffer(v14, qword_27FF6FA10);
    sub_2644E2108(a2, v10);

    v15 = sub_2644EADEC();
    v16 = sub_2644EB4AC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24[0] = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_2644B73B8(a3, a4, v24);
      *(v17 + 12) = 2082;
      sub_2644EADAC();
      sub_2644B2E3C(&qword_2814ABF38, MEMORY[0x277CC95F0]);
      v19 = sub_2644EB94C();
      v21 = v20;
      sub_2644E2264(v10);
      v22 = sub_2644B73B8(v19, v21, v24);

      *(v17 + 14) = v22;
      _os_log_impl(&dword_2644B1000, v15, v16, "%{public}s: queue item %{public}s did not call completion block in time!", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26673AD40](v18, -1, -1);
      MEMORY[0x26673AD40](v17, -1, -1);
    }

    else
    {

      sub_2644E2264(v10);
    }
  }
}

uint64_t sub_2644E36F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v55 = a6;
  v56 = a7;
  v53 = a4;
  v54 = a5;
  v58 = a3;
  v52 = a2;
  v10 = sub_2644EB06C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2644EB0AC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v57 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Sequencer.WorkItem();
  v51 = *(v19 - 8);
  v20 = v51[8];
  MEMORY[0x28223BE20](v19 - 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v46 = v16;
    v47 = v14;
    v44 = a9;
    v43 = mach_continuous_time();
    sub_2644E4714(v22 + 56, aBlock);
    v23 = v61;
    v49 = v11;
    v50 = v10;
    v48 = v15;
    v45 = a8;
    if (v61)
    {
      v24 = v62;
      __swift_project_boxed_opaque_existential_1(aBlock, v61);
      v25 = v52;
      (*(v24 + 4))(v52, v23, v24);
      __swift_destroy_boxed_opaque_existential_0(aBlock);
    }

    else
    {
      sub_2644E1BA8(aBlock);
      v25 = v52;
    }

    v52 = *(v22 + 16);
    v26 = swift_allocObject();
    swift_weakInit();
    v27 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2644E2108(v25, v27);
    v28 = (*(v51 + 80) + 48) & ~*(v51 + 80);
    v29 = (v20 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
    v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
    v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    v34 = v58;
    v33[2] = v26;
    v33[3] = v34;
    v35 = v53;
    v53 = v22;
    v36 = v54;
    v33[4] = v35;
    v33[5] = v36;
    sub_2644E216C(v27, v33 + v28);
    v37 = v56;
    *(v33 + v29) = v55;
    *(v33 + v30) = v37;
    *(v33 + v31) = v43;
    *(v33 + v32) = v45;
    *(v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8)) = v44;
    v62 = sub_2644E4854;
    v63 = v33;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2644BD140;
    v61 = &block_descriptor_34;
    v51 = _Block_copy(aBlock);

    v38 = v57;
    sub_2644EB08C();
    v59 = MEMORY[0x277D84F90];
    sub_2644B2E3C(&qword_2814AC1D0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F780, &unk_2644EDCE0);
    sub_2644B5B18(&qword_2814ABF78, &qword_27FF6F780, &unk_2644EDCE0);
    v39 = v47;
    v40 = v50;
    sub_2644EB6CC();
    v41 = v51;
    MEMORY[0x266739FD0](0, v38, v39, v51);
    _Block_release(v41);
    (*(v49 + 8))(v39, v40);
    (*(v46 + 8))(v38, v48);
  }

  return result;
}

uint64_t sub_2644E3C0C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9)
{
  v49 = a3;
  v13 = type metadata accessor for Sequencer.WorkItem();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (&v48 - v19);
  MEMORY[0x28223BE20](v18);
  v22 = &v48 - v21;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = result;
    swift_beginAccess();
    if (*(a2 + 16))
    {
      if (qword_27FF6F5F8 != -1)
      {
        swift_once();
      }

      v25 = sub_2644EAE0C();
      __swift_project_value_buffer(v25, qword_27FF6FA10);
      sub_2644E2108(a5, v17);

      v20 = sub_2644EADEC();
      v26 = sub_2644EB4AC();

      if (os_log_type_enabled(v20, v26))
      {
        v22 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v51 = v27;
        *v22 = 136446466;
        *(v22 + 4) = sub_2644B73B8(v49, a4, &v51);
        *(v22 + 6) = 2082;
        sub_2644EADAC();
        sub_2644B2E3C(&qword_2814ABF38, MEMORY[0x277CC95F0]);
        v28 = sub_2644EB94C();
        v30 = v29;
        sub_2644E2264(v17);
        v31 = sub_2644B73B8(v28, v30, &v51);

        *(v22 + 14) = v31;
        _os_log_impl(&dword_2644B1000, v20, v26, "%{public}s: Completion block called twice: %{public}s", v22, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26673AD40](v27, -1, -1);
        MEMORY[0x26673AD40](v22, -1, -1);
      }

      else
      {

        sub_2644E2264(v17);
      }

      v42 = [objc_opt_self() sharedInstance];
      v43 = [v42 isInternalBuild];

      if (!v43)
      {
      }

      v51 = 0;
      v52 = 0xE000000000000000;
      sub_2644EB79C();
      v33 = *(v24 + 24);
      v44 = *(v24 + 32);

      v51 = v33;
      v52 = v44;
      MEMORY[0x266739CC0](0xD000000000000021, 0x80000002644EEED0);
      sub_2644EADAC();
      sub_2644B2E3C(&qword_2814ABF38, MEMORY[0x277CC95F0]);
      v45 = sub_2644EB94C();
      MEMORY[0x266739CC0](v45);

      sub_2644EB86C();
      __break(1u);
      goto LABEL_14;
    }

    v48 = v24;
    swift_beginAccess();
    *(a2 + 16) = 1;
    sub_2644EB0EC();
    sub_2644EB0EC();
    if (a8 < a9)
    {
      __break(1u);
    }

    else
    {
      a8 = sub_2644EABAC();
      if (qword_27FF6F5F8 == -1)
      {
        goto LABEL_9;
      }
    }

    swift_once();
LABEL_9:
    v32 = sub_2644EAE0C();
    __swift_project_value_buffer(v32, qword_27FF6FA10);
    sub_2644E2108(a5, v22);

    sub_2644BF454();
    sub_2644BF454();
    v33 = sub_2644EADEC();
    v34 = sub_2644EB47C();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = a8 / 1000000.0;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v50[0] = v37;
      *v36 = 136446978;
      *(v36 + 4) = sub_2644B73B8(v49, a4, v50);
      *(v36 + 12) = 2082;
      sub_2644EADAC();
      sub_2644B2E3C(&qword_2814ABF38, MEMORY[0x277CC95F0]);
      v38 = sub_2644EB94C();
      v40 = v39;
      sub_2644E2264(v22);
      v41 = sub_2644B73B8(v38, v40, v50);

      *(v36 + 14) = v41;
      *(v36 + 22) = 1040;
      *(v36 + 24) = 3;
      *(v36 + 28) = 2048;
      *(v36 + 30) = v35;
      _os_log_impl(&dword_2644B1000, v33, v34, "%{public}s: Completion %{public}s [%.*fms]", v36, 0x26u);
      swift_arrayDestroy();
      MEMORY[0x26673AD40](v37, -1, -1);
      MEMORY[0x26673AD40](v36, -1, -1);

      goto LABEL_15;
    }

LABEL_14:

    sub_2644E2264(v22);
LABEL_15:
    v46 = v48;
    swift_beginAccess();
    sub_2644E42C0(0, v20);
    swift_endAccess();
    v47 = sub_2644E2264(v20);
    if (*(*(v46 + 96) + 16))
    {
      sub_2644E2544(v47);
    }
  }

  return result;
}

size_t sub_2644E42C0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2644E4918(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for Sequencer.WorkItem() - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_2644E216C(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t Sequencer.deinit()
{
  v1 = *(v0 + 32);

  sub_2644E1BA8(v0 + 56);
  v2 = *(v0 + 96);

  return v0;
}

uint64_t Sequencer.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  sub_2644E1BA8(v0 + 56);
  v2 = *(v0 + 96);

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

unint64_t sub_2644E44CC()
{
  result = sub_2644EADAC();
  if (v1 <= 0x3F)
  {
    result = sub_2644C7BA0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2644E4550()
{
  v0 = sub_2644EAE0C();
  __swift_allocate_value_buffer(v0, qword_27FF71630);
  __swift_project_value_buffer(v0, qword_27FF71630);
  return sub_2644EADFC();
}

uint64_t sub_2644E45CC()
{
  v1 = *(type metadata accessor for Sequencer.WorkItem() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + v3);
  v8 = *(v0 + v4);
  v9 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_2644E310C(v5, v6, v0 + v2, v7);
}

void sub_2644E4674()
{
  v1 = *(type metadata accessor for Sequencer.WorkItem() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = (v0 + v3);
  v7 = *(v0 + v4);
  v8 = *v6;
  v9 = v6[1];

  sub_2644E3404(v5, v0 + v2, v8, v9);
}

uint64_t sub_2644E4714(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6FA28, &qword_2644EDE98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2644E4784()
{
  v1 = *(type metadata accessor for Sequencer.WorkItem() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_2644E36F0(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2644E4854()
{
  v1 = *(type metadata accessor for Sequencer.WorkItem() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  return sub_2644E3C0C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + v5), *(v0 + v6));
}

uint64_t sub_2644E4944()
{
  v0 = sub_2644EAE0C();
  __swift_allocate_value_buffer(v0, qword_2814ACCE8);
  __swift_project_value_buffer(v0, qword_2814ACCE8);
  return sub_2644EADFC();
}

uint64_t sub_2644E4A44(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  result = sub_2644EBB1C();
  *a4 = result;
  return result;
}

uint64_t sub_2644E4ABC(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t sub_2644E4B40(void *a1, void *a2)
{
  if (*a1 != -1)
  {
    v4 = a2;
    swift_once();
    a2 = v4;
  }

  v2 = *a2;
  sub_2644EBB2C();
  return v5;
}

uint64_t sub_2644E4B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6FA48, &qword_2644EDF20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2644E6A60(a3, v27 - v11);
  v13 = sub_2644EB3DC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2644B7828(v12);
  }

  else
  {
    sub_2644EB3CC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2644EB39C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2644EB24C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_2644B7828(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2644B7828(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t Transaction.subscriptionCleaner.getter()
{
  v1 = *(v0 + 64);
  sub_2644EADDC();
  return v3;
}

uint64_t sub_2644E4EBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = swift_weakLoadStrong();
  if (!result)
  {
    type metadata accessor for Transaction.CleanupHelper();
    v5 = swift_allocObject();
    *(v5 + 16) = sub_2644E69B4;
    *(v5 + 24) = a1;
    swift_weakAssign();

    result = v5;
  }

  *a2 = result;
  return result;
}

uint64_t sub_2644E4F5C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_beginAccess();

  v4 = sub_2644E5BC4((a2 + 8), a1);
  result = swift_endAccess();
  *a2 = v4 & 1;
  return result;
}

uint64_t static Transaction.named<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 88) = a4;
  *(v7 + 32) = a3;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2644E5048, 0, 0);
}

uint64_t sub_2644E5048()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);
  v5 = *(v0 + 88);
  swift_allocObject();
  v6 = sub_2644B6B7C(v4, v3, v5);
  *(v0 + 64) = v6;
  v12 = (v2 + *v2);
  v7 = v2[1];
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_2644E5184;
  v9 = *(v0 + 48);
  v10 = *(v0 + 16);

  return v12(v10, v6);
}

uint64_t sub_2644E5184()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_2644E52FC;
  }

  else
  {
    v3 = sub_2644E5298;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2644E5298()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2644E52FC()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t static Transaction.named<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 96) = a4;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  return MEMORY[0x2822009F8](sub_2644E5390, 0, 0);
}

uint64_t sub_2644E5390()
{
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  v3 = *(v0 + 40);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_2644E5468;
  v5 = *(v0 + 64);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);
  v9 = *(v0 + 96);

  return static Transaction.named<A>(_:with:)(v8, v6, v7, v9, &unk_2644EDF50, v2);
}

uint64_t sub_2644E5468()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2644E55A4, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2644E55A4()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_2644E5608(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2644B8384;

  return v8(a1);
}

uint64_t sub_2644E5700(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2644B8384;

  return sub_2644E5608(a1, a2, v7);
}

void *Transaction.deinit()
{
  _s8SPShared11TransactionC3endyyF_0();
  v1 = v0[3];

  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[5];
  swift_unknownObjectRelease();
  v4 = v0[8];

  v5 = v0[9];

  swift_weakDestroy();
  return v0;
}

uint64_t sub_2644E5814()
{
  v1 = v0;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3(v4);

  v5 = *(v1 + 24);

  return MEMORY[0x2821FE8D8](v1, 32, 7);
}

uint64_t sub_2644E587C(uint64_t a1, uint64_t a2)
{
  v8 = *v2;
  v4 = type metadata accessor for Transaction.CleanupHelper();
  v5 = sub_2644EB92C();
  MEMORY[0x266739CC0](v5);

  MEMORY[0x266739CC0](8250, 0xE200000000000000);
  v6 = MEMORY[0x26673A380](v4, a2);
  MEMORY[0x266739CC0](v6);

  MEMORY[0x266739CC0](62, 0xE100000000000000);
  return 60;
}

uint64_t Transaction.description.getter()
{
  MEMORY[0x266739CC0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x266739CC0](93, 0xE100000000000000);
  return 0x3A4E58545BLL;
}

uint64_t sub_2644E5994()
{
  MEMORY[0x266739CC0](*(*v0 + 16), *(*v0 + 24));
  MEMORY[0x266739CC0](93, 0xE100000000000000);
  return 0x3A4E58545BLL;
}

uint64_t AnyCancellable.store(in:)(uint64_t a1)
{
  v1 = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6FA50, &qword_2644EDF58);
  sub_2644EADDC();
}

uint64_t PressuredExitTransactionManager.begin(_:)(unint64_t a1, uint64_t a2, int a3)
{
  type metadata accessor for Transaction();
  swift_allocObject();
  return sub_2644B6B7C(a1, a2, a3);
}

uint64_t sub_2644E5AF0()
{
  qword_2814AC0F0 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

uint64_t os_activity(name:block:)(char *a1, int a2, char a3, void (*a4)(void))
{
  v9 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = sub_2644B716C(a1, a3, &dword_2644B1000);
  os_activity_scope_enter(v5, &state);
  a4();
  os_activity_scope_leave(&state);
  result = swift_unknownObjectRelease();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2644E5BC4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_2644EB71C();

    if (v8)
    {

      sub_2644EAEDC();
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = sub_2644EB70C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = sub_2644E5E3C(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_2644E605C(v19 + 1);
    }

    sub_2644E62DC(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  sub_2644EAEDC();
  v10 = *(v6 + 40);
  sub_2644E6970(&qword_2814ABF30);
  v11 = sub_2644EB1CC();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;

    sub_2644E63B0(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v23;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  sub_2644E6970(&qword_27FF6FA58);
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v13);
    if (sub_2644EB20C())
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

uint64_t sub_2644E5E3C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF6FA60, &qword_2644EE068);
    v2 = sub_2644EB75C();
    v16 = v2;
    sub_2644EB6FC();
    if (sub_2644EB72C())
    {
      sub_2644EAEDC();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_2644E605C(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        sub_2644E6970(&qword_2814ABF30);
        result = sub_2644EB1CC();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_2644EB72C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2644E605C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF6FA60, &qword_2644EE068);
  result = sub_2644EB74C();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v29 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_2644EAEDC();
      sub_2644E6970(&qword_2814ABF30);
      result = sub_2644EB1CC();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_2644E62DC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_2644EAEDC();
  sub_2644E6970(&qword_2814ABF30);
  sub_2644EB1CC();
  v5 = -1 << *(a2 + 32);
  result = sub_2644EB6EC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_2644E63B0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2644E605C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_2644E6570();
      goto LABEL_12;
    }

    sub_2644E66C0(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_2644EAEDC();
  sub_2644E6970(&qword_2814ABF30);
  result = sub_2644EB1CC();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_2644E6970(&qword_27FF6FA58);
    do
    {
      v16 = *(*(v8 + 48) + 8 * a2);
      result = sub_2644EB20C();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2644EBA0C();
  __break(1u);
  return result;
}

void *sub_2644E6570()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF6FA60, &qword_2644EE068);
  v2 = *v0;
  v3 = sub_2644EB73C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_2644E66C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF6FA60, &qword_2644EE068);
  result = sub_2644EB74C();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v29 = (v11 - 1) & v11;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_2644EAEDC();
      sub_2644E6970(&qword_2814ABF30);

      result = sub_2644EB1CC();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v28;
      v11 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2644E6970(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2644EAEDC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2644E6A0C()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  *(v0 + 72) = MEMORY[0x277D84FA0];
}

uint64_t sub_2644E6A60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6FA48, &qword_2644EDF20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t UnsignedInteger.reversed.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36[0] = *(a1 - 8);
  v4 = *(v36[0] + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v36 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v36 - v11;
  v14 = *(v13 + 8);
  v15 = *(v14[3] + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = v36 - v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v40 = AssociatedTypeWitness;
  v38 = AssociatedConformanceWitness;
  sub_2644EB9EC();
  v36[1] = a2;
  v39 = v19;
  v41 = v15;
  sub_2644EB99C();
  result = sub_2644EB68C();
  if (result < 0)
  {
    goto LABEL_22;
  }

  v22 = result;
  if (result)
  {
    v42 = sub_2644BF2BC();
    v23 = 0;
    v24 = (v36[0] + 8);
    v37 = v22;
    while (1)
    {
      v43 = v23;
      sub_2644EB64C();
      sub_2644EB9EC();
      sub_2644EB99C();
      sub_2644EB63C();
      v25 = *v24;
      (*v24)(v7, a1);
      v25(v10, a1);
      if (sub_2644EB69C())
      {
        break;
      }

      v26 = sub_2644EB69C();
      v27 = sub_2644EB68C();
      if ((v26 & 1) == 0)
      {
        if (v27 >= 64)
        {
LABEL_15:
          v43 = 0;
          sub_2644EB62C();
          v31 = *(v14[2] + 8);
          v32 = sub_2644EB20C();
          v25(v10, a1);
          result = (v25)(v12, a1);
          if (v32)
          {
            goto LABEL_4;
          }

          goto LABEL_16;
        }

        goto LABEL_13;
      }

      if (v27 > 64)
      {
        goto LABEL_15;
      }

      sub_2644EB9EC();
      sub_2644EB99C();
      v28 = *(v14[4] + 8);
      v29 = sub_2644EB1FC();
      v25(v10, a1);
      if (v29)
      {
        goto LABEL_13;
      }

      v25(v12, a1);
LABEL_16:
      sub_2644EB9EC();
      sub_2644EB99C();
      result = sub_2644EB68C();
      v33 = result - 1;
      if (__OFSUB__(result, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }

      v34 = __OFSUB__(v33, v23);
      v35 = v33 - v23;
      if (v34)
      {
        goto LABEL_21;
      }

      v43 = v35;
      sub_2644EB65C();
      v25(v7, a1);
      sub_2644EB66C();
      result = (v25)(v10, a1);
LABEL_4:
      if (v37 == ++v23)
      {
        return result;
      }
    }

    if (sub_2644EB68C() >= 64)
    {
      goto LABEL_15;
    }

LABEL_13:
    v30 = sub_2644EB67C();
    result = (v25)(v12, a1);
    if (!v30)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  return result;
}

int8x8_t static UInt64.interleave(x:y:)(unsigned int a1, unsigned int a2)
{
  v2 = vdupq_n_s64(a2);
  v3 = vdupq_n_s64(a1);
  v4 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_2644EE350), xmmword_2644EE390), vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_2644EE2F0), xmmword_2644EE330), vshlq_u64(vandq_s8(v3, xmmword_2644EE290), xmmword_2644EE2B0)), vshlq_u64(vandq_s8(v3, xmmword_2644EE2F0), xmmword_2644EE310))), vshlq_u64(vandq_s8(v3, xmmword_2644EE350), xmmword_2644EE370)), vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_2644EE290), xmmword_2644EE2D0), vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_2644EE230), xmmword_2644EE270), vshlq_u64(vandq_s8(v3, xmmword_2644EE1D0), xmmword_2644EE1F0)), vshlq_u64(vandq_s8(v3, xmmword_2644EE230), xmmword_2644EE250))), vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_2644EE1D0), xmmword_2644EE210), vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_2644EE170), xmmword_2644EE1B0), vshlq_u64(vandq_s8(v3, xmmword_2644EE170), xmmword_2644EE190))), vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_2644EE110), xmmword_2644EE150), vshlq_u64(vandq_s8(v3, xmmword_2644EE110), xmmword_2644EE130)), vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_2644EE0C0), xmmword_2644EE0F0), vshlq_u64(vandq_s8(v3, xmmword_2644EE0C0), xmmword_2644EE0E0)))))), vorrq_s8(vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_2644EE340), xmmword_2644EE380), vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_2644EE2E0), xmmword_2644EE320), vshlq_u64(vandq_s8(v3, xmmword_2644EE280), xmmword_2644EE2A0)), vshlq_u64(vandq_s8(v3, xmmword_2644EE2E0), xmmword_2644EE300))), vshlq_u64(vandq_s8(v3, xmmword_2644EE340), xmmword_2644EE360)), vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_2644EE280), xmmword_2644EE2C0), vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_2644EE220), xmmword_2644EE260), vshlq_u64(vandq_s8(v3, xmmword_2644EE1C0), xmmword_2644EE1E0)), vshlq_u64(vandq_s8(v3, xmmword_2644EE220), xmmword_2644EE240))), vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_2644EE1C0), xmmword_2644EE200), vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_2644EE160), xmmword_2644EE1A0), vshlq_u64(vandq_s8(v3, xmmword_2644EE160), xmmword_2644EE180))), vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_2644EE100), xmmword_2644EE140), vshlq_u64(vandq_s8(v3, xmmword_2644EE100), xmmword_2644EE120)), vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_2644ED0A0), xmmword_2644ED0A0), vshlq_u64(vandq_s8(v3, xmmword_2644ED0A0), xmmword_2644EE0D0)))))));
  return vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
}

uint64_t UInt64.deinterleave.getter(uint64_t result)
{
  LODWORD(v1) = 0;
  LODWORD(v2) = 0;
  v3 = -2;
  for (i = 1; ; ++i)
  {
    v5 = ((1 << (v3 + 2)) & result) >> (i - 1);
    if (HIDWORD(v5))
    {
      break;
    }

    v6 = ((2 << (v3 + 2)) & result) >> i;
    if (HIDWORD(v6))
    {
      goto LABEL_7;
    }

    v2 = v2 | v5;
    v1 = v1 | v6;
    v3 += 2;
    if (v3 >= 0x3E)
    {
      return v2 | (v1 << 32);
    }
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

uint64_t LocalizationUtility.Table.hashValue.getter()
{
  v1 = *v0;
  sub_2644EBA7C();
  MEMORY[0x26673A4D0](v1);
  return sub_2644EBAAC();
}

uint64_t static LocalizationUtility.localizedString(key:table:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (!*a3)
  {
    v3 = *a3;
  }

  type metadata accessor for BundleHelper();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_2644EAC5C();

  return v6;
}

unint64_t sub_2644E753C()
{
  result = qword_27FF6FA80;
  if (!qword_27FF6FA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6FA80);
  }

  return result;
}

void static DispatchUtilities.logCurrentDispatchQueueQoS()()
{
  HIDWORD(v1) = qos_class_self() - 9;
  LODWORD(v1) = HIDWORD(v1);
  v0 = v1 >> 2;
  sub_2644EB4BC();
  sub_2644C5EC4();
  v5 = sub_2644EB5EC();
  if (v0 <= 2)
  {
    if (!v0 || v0 == 2)
    {
LABEL_8:
      sub_2644EADCC();

      return;
    }
  }

  else if (v0 == 3 || v0 == 4 || v0 == 6)
  {
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F8F8, &unk_2644ED0B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2644ED0A0;
  v3 = qos_class_self();
  v4 = MEMORY[0x277D84D30];
  *(v2 + 56) = MEMORY[0x277D84CC0];
  *(v2 + 64) = v4;
  *(v2 + 32) = v3;
  sub_2644EADCC();
}

uint64_t QueueSynchronizer.__allocating_init(queue:)(void *a1)
{
  v2 = swift_allocObject();
  QueueSynchronizer.init(queue:)(a1);
  return v2;
}

uint64_t QueueSynchronizer.init(queue:)(void *a1)
{
  v2 = v1;
  v4 = sub_2644EB10C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6FA88, "L ");
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v1 + 24) = sub_2644EB05C();
  *v8 = a1;
  (*(v5 + 104))(v8, *MEMORY[0x277D851F0], v4);
  v12 = a1;
  LOBYTE(a1) = sub_2644EB12C();
  (*(v5 + 8))(v8, v4);
  if ((a1 & 1) == 0)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v13 = *(v2 + 24);

  sub_2644EB50C();

  if (LOBYTE(aBlock[0]) == 1)
  {
    *(v2 + 16) = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = v2;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_2644E7AD0;
    *(v15 + 24) = v14;
    aBlock[4] = sub_2644B3F5C;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2644B3F0C;
    aBlock[3] = &block_descriptor_7;
    v16 = _Block_copy(aBlock);
    v17 = v12;

    dispatch_sync(v17, v16);

    _Block_release(v16);
    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

    if ((v17 & 1) == 0)
    {
      return v2;
    }

    goto LABEL_6;
  }

LABEL_7:
  result = sub_2644EB86C();
  __break(1u);
  return result;
}

uint64_t sub_2644E7AD0()
{
  v1 = *(v0 + 16);
  v2 = *(*(v0 + 24) + 24);
  return sub_2644EB52C();
}

uint64_t QueueSynchronizer.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t objectdestroyTm_0(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 24);

  return a1(v1, 32, 7);
}

uint64_t PerformanceCapture.flag.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

double sub_2644E7C20()
{
  v1 = OBJC_IVAR____TtC8SPShared18PerformanceCapture_duration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PerformanceCapture.__allocating_init(flag:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_2644EAD5C();
  *(v7 + OBJC_IVAR____TtC8SPShared18PerformanceCapture_duration) = 0;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return v7;
}

uint64_t PerformanceCapture.init(flag:)(uint64_t a1, uint64_t a2)
{
  sub_2644EAD5C();
  *(v2 + OBJC_IVAR____TtC8SPShared18PerformanceCapture_duration) = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_2644E7D18()
{
  v1 = v0;
  v2 = sub_2644EAD6C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC8SPShared18PerformanceCapture_duration;
  swift_beginAccess();
  if (*(v1 + v7) == 0.0)
  {
    sub_2644EAD5C();
    sub_2644EAD4C();
    v9 = v8;
    (*(v3 + 8))(v6, v2);
    *(v1 + v7) = v9;
  }

  sub_2644EB4BC();
  if (qword_27FF6F5F0 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F8F8, &unk_2644ED0B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2644EE4F0;
  v12 = *(v1 + 16);
  v11 = *(v1 + 24);
  v13 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v14 = sub_2644B4744();
  *(v10 + 64) = v14;
  *(v10 + 32) = v12;
  *(v10 + 40) = v11;
  v15 = *(v1 + v7);

  v16 = sub_2644EB3EC();
  *(v10 + 96) = v13;
  *(v10 + 104) = v14;
  *(v10 + 72) = v16;
  *(v10 + 80) = v17;
  sub_2644EADCC();
}

uint64_t PerformanceCapture.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC8SPShared18PerformanceCapture_start;
  v3 = sub_2644EAD6C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t PerformanceCapture.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC8SPShared18PerformanceCapture_start;
  v3 = sub_2644EAD6C();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t type metadata accessor for PerformanceCapture()
{
  result = qword_27FF6FA98;
  if (!qword_27FF6FA98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2644E807C()
{
  result = sub_2644EAD6C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2644E8198(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF6FB48, &qword_2644EE5F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for XPCSessionManager.ListenerRecord();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_2644C0CF4(a1, &unk_27FF6FB48, &qword_2644EE5F0);
    sub_2644E9940(a2, v8);
    v14 = sub_2644EAB8C();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_2644C0CF4(v8, &unk_27FF6FB48, &qword_2644EE5F0);
  }

  else
  {
    sub_2644B462C(a1, v12, type metadata accessor for XPCSessionManager.ListenerRecord);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_2644EA2C0(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_2644EAB8C();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_2644E83B8()
{
  sub_2644B4694(0, qword_2814AC390, 0x277D86200);
  result = sub_2644EB5FC();
  qword_2814ACD00 = result;
  return result;
}

uint64_t XPCSessionManager.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  XPCSessionManager.init(name:)(a1, a2);
  return v4;
}

uint64_t XPCSessionManager.init(name:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = sub_2644EB4DC();
  v6 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v7 = sub_2644EB0AC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_2644EB55C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277D84F98];
  v3[5] = 0;
  v3[6] = v14;
  v3[2] = a1;
  v3[3] = a2;
  v21 = sub_2644B4694(0, &qword_2814AC6A0, 0x277D85C78);
  aBlock = 0;
  v24 = 0xE000000000000000;
  sub_2644EB79C();

  aBlock = 0xD000000000000030;
  v24 = 0x80000002644EF330;
  v15 = v3[2];
  v16 = v3[3];

  MEMORY[0x266739CC0](v15, v16);

  (*(v10 + 104))(v13, *MEMORY[0x277D85268], v9);
  sub_2644EB08C();
  aBlock = MEMORY[0x277D84F90];
  sub_2644B2E84(&qword_2814AC6A8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF6FAB0, qword_2644EDB90);
  sub_2644B2ECC();
  sub_2644EB6CC();
  v17 = sub_2644EB59C();
  v3[4] = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_2644E88AC;
  *(v18 + 24) = v3;
  v27 = sub_2644B3F5C;
  v28 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_2644B3F0C;
  v26 = &block_descriptor_8;
  v19 = _Block_copy(&aBlock);

  dispatch_sync(v17, v19);
  _Block_release(v19);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if ((v17 & 1) == 0)
  {
    return v3;
  }

  __break(1u);
  return result;
}

void sub_2644E8834(uint64_t a1)
{
  v2 = type metadata accessor for _XPCListenerDelegateTrampoline();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC8SPSharedP33_4DFE191C45A702EAD1213F8D530A798030_XPCListenerDelegateTrampoline_sessionManager] = a1;
  swift_unownedRetain();
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  v5 = *(a1 + 40);
  *(a1 + 40) = v4;
}

uint64_t XPCSessionManager.register(service:)(uint64_t a1)
{
  v3 = type metadata accessor for XPCServiceDescription();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *(v1 + 32);
  sub_2644B45C4(a1, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for XPCServiceDescription);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  sub_2644B462C(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for XPCServiceDescription);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_2644E8EE4;
  *(v9 + 24) = v8;
  aBlock[4] = sub_2644B42CC;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2644B3F0C;
  aBlock[3] = &block_descriptor_10;
  v10 = _Block_copy(aBlock);

  dispatch_sync(v6, v10);
  _Block_release(v10);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2644E8AC0(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF6FB48, &qword_2644EE5F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v37 = v32 - v5;
  v6 = type metadata accessor for XPCSessionManager.ListenerRecord();
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v38 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2644EAB8C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[1] = sub_2644EB4BC();
  if (qword_2814AC3C8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F8F8, &unk_2644ED0B0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2644EE4F0;
  v16 = *(a1 + 16);
  v15 = *(a1 + 24);
  v33 = a1;
  v17 = MEMORY[0x277D837D0];
  *(v14 + 56) = MEMORY[0x277D837D0];
  v18 = sub_2644B4744();
  *(v14 + 64) = v18;
  *(v14 + 32) = v16;
  *(v14 + 40) = v15;
  sub_2644B2E84(&unk_2814ABF50, MEMORY[0x277D08970]);

  v19 = v36;
  v20 = sub_2644EB94C();
  *(v14 + 96) = v17;
  *(v14 + 104) = v18;
  *(v14 + 72) = v20;
  *(v14 + 80) = v21;
  sub_2644EADCC();

  v22 = *(v10 + 16);
  v22(v13, v19, v9);
  v23 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  sub_2644EAB7C();
  v24 = sub_2644EB21C();

  v25 = [v23 initWithMachServiceName_];

  (*(v10 + 8))(v13, v9);
  v26 = v38;
  sub_2644B45C4(v19, v38, type metadata accessor for XPCServiceDescription);
  v27 = v35;
  *(v26 + *(v35 + 20)) = v25;
  v22(v13, v19, v9);
  v28 = v37;
  sub_2644B45C4(v26, v37, type metadata accessor for XPCSessionManager.ListenerRecord);
  (*(v34 + 56))(v28, 0, 1, v27);
  v29 = v33;
  swift_beginAccess();
  v30 = v25;
  sub_2644E8198(v28, v13);
  swift_endAccess();
  [v30 setDelegate_];
  [v30 resume];

  return sub_2644B47A0(v26);
}

uint64_t sub_2644E8EE4()
{
  v1 = *(type metadata accessor for XPCServiceDescription() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_2644E8AC0(v2, v3);
}

uint64_t NSXPCConnection.machServiceName.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 serviceName];
  if (v3)
  {
    v4 = v3;
    sub_2644EB22C();

    sub_2644EAB9C();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_2644EAB8C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_2644E9008(uint64_t a1, void *a2)
{
  v4 = a1 + *(type metadata accessor for XPCServiceDescription() + 44);
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v4 + 8);

    v5(a2);

    return sub_2644B3C64(v5);
  }

  else
  {
    sub_2644EB4BC();
    if (qword_2814AC3C8 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F8F8, &unk_2644ED0B0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_2644EE4F0;
    v10 = *(v2 + 16);
    v9 = *(v2 + 24);
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 64) = sub_2644B4744();
    *(v8 + 32) = v10;
    *(v8 + 40) = v9;
    *(v8 + 96) = sub_2644B4694(0, &unk_2814AC3B0, 0x277CCAE80);
    *(v8 + 104) = sub_2644B46DC();
    *(v8 + 72) = a2;

    v11 = a2;
    sub_2644EADCC();
  }
}

uint64_t sub_2644E9194(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a4(a2, a3);
  }

  return result;
}

uint64_t sub_2644E9210(uint64_t a1, void *a2)
{
  v4 = a1 + *(type metadata accessor for XPCServiceDescription() + 40);
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v4 + 8);

    v5(a2);

    return sub_2644B3C64(v5);
  }

  else
  {
    sub_2644EB4BC();
    if (qword_2814AC3C8 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F8F8, &unk_2644ED0B0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_2644EE4F0;
    v10 = *(v2 + 16);
    v9 = *(v2 + 24);
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 64) = sub_2644B4744();
    *(v8 + 32) = v10;
    *(v8 + 40) = v9;
    *(v8 + 96) = sub_2644B4694(0, &unk_2814AC3B0, 0x277CCAE80);
    *(v8 + 104) = sub_2644B46DC();
    *(v8 + 72) = a2;

    v11 = a2;
    sub_2644EADCC();
  }
}

uint64_t XPCSessionManager.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return v0;
}

uint64_t XPCSessionManager.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

id sub_2644E9454()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _XPCListenerDelegateTrampoline();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL NSXPCConnection.hasEntitlement<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  sub_2644EB2AC();
  v4 = NSXPCConnection.hasEntitlement(_:)(v6);

  return v4;
}

Swift::Bool __swiftcall NSXPCConnection.hasEntitlement(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = sub_2644EB21C();
  v5 = [v1 valueForEntitlement_];

  if (v5)
  {
    sub_2644EB6AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    if (swift_dynamicCast() & 1) != 0 && (v9)
    {
      return 1;
    }
  }

  else
  {
    sub_2644C0CF4(v12, &unk_27FF6FAC0, &unk_2644ECEA0);
  }

  sub_2644EB49C();
  if (qword_2814AC3C8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F8F8, &unk_2644ED0B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2644EE4F0;
  *(v7 + 56) = sub_2644B4694(0, &unk_2814AC3B0, 0x277CCAE80);
  *(v7 + 64) = sub_2644B46DC();
  *(v7 + 32) = v1;
  *(v7 + 96) = MEMORY[0x277D837D0];
  *(v7 + 104) = sub_2644B4744();
  *(v7 + 72) = countAndFlagsBits;
  *(v7 + 80) = object;
  v8 = v1;

  sub_2644EADCC();

  return 0;
}

uint64_t sub_2644E977C()
{
  result = type metadata accessor for XPCServiceDescription();
  if (v1 <= 0x3F)
  {
    result = sub_2644B4694(319, qword_2814ABAC8, 0x277CCAE98);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2644E9810(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2644EBA7C();
  sub_2644EB26C();
  v6 = sub_2644EBAAC();

  return sub_2644E9888(a1, a2, v6);
}

unint64_t sub_2644E9888(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2644EB9AC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_2644E9940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_2644B436C(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2644EA598();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_2644EAB8C();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for XPCSessionManager.ListenerRecord();
    v22 = *(v15 - 8);
    sub_2644B462C(v14 + *(v22 + 72) * v8, a2, type metadata accessor for XPCSessionManager.ListenerRecord);
    sub_2644E9F7C(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for XPCSessionManager.ListenerRecord();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_2644E9ADC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for XPCSessionManager.ListenerRecord();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2644EAB8C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6FB58, &qword_2644EE5F8);
  v48 = a2;
  result = sub_2644EB88C();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_2644B462C(v31 + v32 * v28, v52, type metadata accessor for XPCSessionManager.ListenerRecord);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_2644B45C4(v33 + v32 * v28, v52, type metadata accessor for XPCSessionManager.ListenerRecord);
      }

      v34 = *(v16 + 40);
      sub_2644B2E84(&qword_2814ABF68, MEMORY[0x277D08970]);
      result = sub_2644EB1CC();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_2644B462C(v52, *(v16 + 56) + v32 * v24, type metadata accessor for XPCSessionManager.ListenerRecord);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

unint64_t sub_2644E9F7C(int64_t a1, uint64_t a2)
{
  v4 = sub_2644EAB8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = sub_2644EB6DC();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_2644B2E84(&qword_2814ABF68, MEMORY[0x277D08970]);
      v24 = sub_2644EB1CC();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(type metadata accessor for XPCSessionManager.ListenerRecord() - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2644EA2C0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2644EAB8C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_2644B436C(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_2644EA598();
      goto LABEL_7;
    }

    sub_2644E9ADC(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_2644B436C(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_2644EA4A8(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_2644EBA1C();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = v22 + *(*(type metadata accessor for XPCSessionManager.ListenerRecord() - 8) + 72) * v15;

  return sub_2644EAAE8(a1, v23);
}

uint64_t sub_2644EA4A8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2644EAB8C();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for XPCSessionManager.ListenerRecord();
  result = sub_2644B462C(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for XPCSessionManager.ListenerRecord);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

char *sub_2644EA598()
{
  v1 = v0;
  v2 = type metadata accessor for XPCSessionManager.ListenerRecord();
  v40 = *(v2 - 8);
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v39 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_2644EAB8C();
  v42 = *(v38 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6FB58, &qword_2644EE5F8);
  v7 = *v0;
  v8 = sub_2644EB87C();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v41 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v34 = v42 + 32;
    v35 = v42 + 16;
    v36 = v7;
    v19 = v42;
    v20 = v9;
    if (v17)
    {
      do
      {
        v21 = __clz(__rbit64(v17));
        v43 = (v17 - 1) & v17;
LABEL_14:
        v24 = v21 | (v13 << 6);
        v25 = *(v19 + 72) * v24;
        v27 = v37;
        v26 = v38;
        (*(v19 + 16))(v37, *(v7 + 48) + v25, v38);
        v28 = *(v7 + 56);
        v29 = v39;
        v30 = *(v40 + 72) * v24;
        sub_2644B45C4(v28 + v30, v39, type metadata accessor for XPCSessionManager.ListenerRecord);
        (*(v19 + 32))(*(v20 + 48) + v25, v27, v26);
        v31 = v29;
        v7 = v36;
        result = sub_2644B462C(v31, *(v20 + 56) + v30, type metadata accessor for XPCSessionManager.ListenerRecord);
        v17 = v43;
      }

      while (v43);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v32;
        v9 = v41;
        goto LABEL_18;
      }

      v23 = *(v33 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v43 = (v23 - 1) & v23;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t objectdestroy_24Tm()
{
  v1 = type metadata accessor for XPCServiceDescription();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = sub_2644EAB8C();
  (*(*(v7 - 8) + 8))(v0 + v3, v7);

  v8 = (v0 + v3 + v1[9]);
  if (*v8)
  {
    v9 = v8[1];
  }

  v10 = (v6 + v1[10]);
  if (*v10)
  {
    v11 = v10[1];
  }

  v12 = (v6 + v1[11]);
  if (*v12)
  {
    v13 = v12[1];
  }

  v14 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v14 + 8, v2 | 7);
}

uint64_t sub_2644EAA54(void (*a1)(uint64_t, uint64_t))
{
  v3 = *(type metadata accessor for XPCServiceDescription() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  return sub_2644E9194(*(v1 + 16), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t sub_2644EAAE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCSessionManager.ListenerRecord();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}