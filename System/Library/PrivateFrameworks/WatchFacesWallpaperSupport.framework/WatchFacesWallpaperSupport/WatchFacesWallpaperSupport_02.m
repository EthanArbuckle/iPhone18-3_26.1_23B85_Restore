uint64_t sub_1D96D8738(UIImage *a1, uint64_t *a2, void *a3)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  if (v4 < 0)
  {
    v8 = a3[3];
    v9 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v8);
    v16 = v5;
    v17 = v4;
    v18 = v6;
    v11 = (*(v9 + 8))(&v16, v8, v9);
    swift_beginAccess();
    v12 = a1;
    v13 = *(v3 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v3 + 24);
    *(v3 + 24) = 0x8000000000000000;
    sub_1D96BCF10(a1, v11, isUniquelyReferenced_nonNull_native);

    *(v3 + 24) = v15;
    return swift_endAccess();
  }

  else
  {
    v16 = *a2;
    v17 = v4;
    v18 = v6;
    return sub_1D96D8838(a1, &v16, a3);
  }
}

uint64_t sub_1D96D8838(UIImage *a1, uint64_t *a2, void *a3)
{
  v62 = a1;
  v5 = sub_1D96DA440();
  v64 = *(v5 - 8);
  v65 = v5;
  v6 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F420, &unk_1D96DDA98);
  v8 = *(*(v61 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v61);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v60 = &v59 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v59 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v59 - v17;
  v19 = *a2;
  v20 = a2[1];
  v21 = a2[2];
  v22 = a3[3];
  v23 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v22);
  v67 = v19;
  v68 = v20;
  v69 = v21;
  v24 = (*(v23 + 8))(&v67, v22, v23);
  v67 = v19;
  v68 = v20;
  v69 = v21;
  v66 = v18;
  sub_1D96D7A70(&v67, a3, v18);
  if (qword_1EDB95870 != -1)
  {
    swift_once();
  }

  v25 = sub_1D96DA5D0();
  __swift_project_value_buffer(v25, qword_1EDB969A0);
  sub_1D96D92A4(v66, v16);
  v26 = sub_1D96DA5B0();
  v27 = sub_1D96DA870();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = v24;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v67 = v30;
    *v29 = 136315138;
    if ((*(v64 + 48))(v16, 1, v65) == 1)
    {
      v31 = 0xEE004C5255746F68;
      v32 = 0x7370616E53206F4ELL;
    }

    else
    {
      sub_1D96D92A4(v16, v60);
      v32 = sub_1D96DA6E0();
      v31 = v35;
    }

    sub_1D96BE544(v16, &qword_1ECB3F420, &unk_1D96DDA98);
    v36 = sub_1D96BB28C(v32, v31, &v67);

    *(v29 + 4) = v36;
    _os_log_impl(&dword_1D96B3000, v26, v27, "_saveSnapshotToDisk: snapshotURL: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x1DA736010](v30, -1, -1);
    MEMORY[0x1DA736010](v29, -1, -1);

    v34 = v64;
    v33 = v65;
    v24 = v28;
  }

  else
  {

    sub_1D96BE544(v16, &qword_1ECB3F420, &unk_1D96DDA98);
    v34 = v64;
    v33 = v65;
  }

  sub_1D96D92A4(v66, v11);
  v37 = (*(v34 + 48))(v11, 1, v33);
  v38 = v63;
  if (v37 == 1)
  {
    sub_1D96BE544(v11, &qword_1ECB3F420, &unk_1D96DDA98);
  }

  else
  {
    (*(v34 + 32))(v63, v11, v33);
    v39 = UIImagePNGRepresentation(v62);
    if (v39)
    {
      v40 = v39;
      v41 = sub_1D96DA4A0();
      v43 = v42;

      sub_1D96DA4B0();
      v50 = v24;
      v51 = sub_1D96DA5B0();
      v52 = sub_1D96DA860();

      if (os_log_type_enabled(v51, v52))
      {
        v54 = swift_slowAlloc();
        v55 = v38;
        v56 = swift_slowAlloc();
        *v54 = 138543362;
        *(v54 + 4) = v50;
        *v56 = v50;
        v57 = v50;
        _os_log_impl(&dword_1D96B3000, v51, v52, "Saved snapshot view for key=%{public}@ to disk", v54, 0xCu);
        sub_1D96BE544(v56, &unk_1ECB3EF10, &qword_1D96DC4A0);
        MEMORY[0x1DA736010](v56, -1, -1);
        MEMORY[0x1DA736010](v54, -1, -1);
        sub_1D96CDF80(v41, v43);

        (*(v34 + 8))(v55, v33);
      }

      else
      {
        sub_1D96CDF80(v41, v43);

        (*(v34 + 8))(v38, v33);
      }

      return sub_1D96BE544(v66, &qword_1ECB3F420, &unk_1D96DDA98);
    }

    (*(v34 + 8))(v38, v33);
  }

  v44 = v24;
  v45 = sub_1D96DA5B0();
  v46 = sub_1D96DA880();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v47 = 138543362;
    *(v47 + 4) = v44;
    *v48 = v44;
    v49 = v44;
    _os_log_impl(&dword_1D96B3000, v45, v46, "Failed to create PNG data when saving snapshot to disk for key=%{public}@", v47, 0xCu);
    sub_1D96BE544(v48, &unk_1ECB3EF10, &qword_1D96DC4A0);
    MEMORY[0x1DA736010](v48, -1, -1);
    MEMORY[0x1DA736010](v47, -1, -1);
  }

  else
  {
    v49 = v45;
    v45 = v44;
  }

  return sub_1D96BE544(v66, &qword_1ECB3F420, &unk_1D96DDA98);
}

uint64_t sub_1D96D9070()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  *(v0 + 24) = MEMORY[0x1E69E7CC8];
}

uint64_t SnapshotManager.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t SnapshotManager.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

id sub_1D96D9140(void *a1, void *a2)
{
  v3 = *v2;
  v4 = a1[1];
  v5 = a1[2];
  *&v7 = *a1;
  *(&v7 + 1) = v4;
  v8 = v5;
  if (v4 < 0)
  {
    return sub_1D96D845C(&v7, a2);
  }

  else
  {
    return sub_1D96D7CEC(&v7, a2);
  }
}

uint64_t sub_1D96D92A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F420, &unk_1D96DDA98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D96D9314(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1D96D9378()
{
  result = qword_1ECB3F430;
  if (!qword_1ECB3F430)
  {
    sub_1D96DA440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB3F430);
  }

  return result;
}

void SnapshotType.init(renderer:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_msgSend(a1 environment)];
  swift_unknownObjectRelease();
  if (v4)
  {
    v5 = [objc_msgSend(a1 environment)];
    swift_unknownObjectRelease();
    v6 = [objc_msgSend(a1 environment)];
    swift_unknownObjectRelease();
    if (v5)
    {

      a2[1] = 0;
      a2[2] = 0;
      *a2 = v6;
    }

    else
    {
      v7 = [a1 environment];
      swift_getObjectType();
      PRPosterRenderingEnvironment.unlockState.getter(v10);

      swift_unknownObjectRelease();
      v8 = v11;
      v9 = v10[0] | 0x8000000000000000;
      *a2 = v6;
      a2[1] = v9;
      a2[2] = v8;
    }
  }

  else
  {

    *a2 = xmmword_1D96DDAB0;
    a2[2] = 0;
  }
}

uint64_t SnapshotType.description.getter()
{
  v1 = 0x7469617274726F50;
  v2 = *v0;
  v3 = v0[1];
  if (v3 < 0)
  {
    v7 = 0x7265686374697773;
    if (v2 > 2)
    {
      if (v2 != 3)
      {
        if (v2 == 4)
        {
          v1 = 0x70616373646E614CLL;
          v5 = 0xEE007466654C2065;
          goto LABEL_21;
        }

        goto LABEL_18;
      }

      v1 = 0x70616373646E614CLL;
      v5 = 0xEF74686769522065;
    }

    else
    {
      if (v2 != 1)
      {
        if (v2 == 2)
        {
          v5 = 0x80000001D96DE980;
          v1 = 0xD000000000000014;
          goto LABEL_21;
        }

LABEL_18:
        v1 = 0xD000000000000013;
        v5 = 0x80000001D96DE960;
        goto LABEL_21;
      }

      v5 = 0xE800000000000000;
    }

LABEL_21:
    MEMORY[0x1DA735440](v1, v5);

    MEMORY[0x1DA735440](45, 0xE100000000000000);
    if (v3)
    {
      if (v3 == 1)
      {
        v1 = 0x64656B636F6C6E75;
      }

      else
      {
        v1 = 0x697469736E617274;
      }

      if (v3 == 1)
      {
        v4 = 0xE800000000000000;
      }

      else
      {
        v4 = 0xED0000676E696E6FLL;
      }
    }

    else
    {
      v4 = 0xE600000000000000;
      v1 = 0x64656B636F6CLL;
    }

    goto LABEL_29;
  }

  v4 = 0xE800000000000000;
  v7 = 0x2D77656976657270;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v1 = 0x70616373646E614CLL;
      v4 = 0xEF74686769522065;
      goto LABEL_29;
    }

    if (v2 == 4)
    {
      v1 = 0x70616373646E614CLL;
      v4 = 0xEE007466654C2065;
      goto LABEL_29;
    }

    goto LABEL_16;
  }

  if (v2 != 1)
  {
    if (v2 == 2)
    {
      v4 = 0x80000001D96DE980;
      v1 = 0xD000000000000014;
      goto LABEL_29;
    }

LABEL_16:
    v1 = 0xD000000000000013;
    v4 = 0x80000001D96DE960;
  }

LABEL_29:
  MEMORY[0x1DA735440](v1, v4);

  return v7;
}

void PRRenderer.snapshotType.getter(void *a1@<X8>)
{
  v3 = v1;

  SnapshotType.init(renderer:)(v3, a1);
}

BOOL _s26WatchFacesWallpaperSupport12SnapshotTypeO2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  v3 = *a1;
  v2 = *(a1 + 1);
  v5 = *a2;
  v4 = *(a2 + 1);
  if ((v2 & 0x8000000000000000) == 0)
  {
    return v4 >= 0 && *&v3 == *&v5;
  }

  v8 = 0;
  if (v4 < 0 && *&v3 == *&v5)
  {
    return a1[2] == a2[2] && v4 == v2;
  }

  return v8;
}

uint64_t getEnumTagSinglePayload for SnapshotType(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for SnapshotType(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 4 * -a2;
      *(result + 16) = 0;
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

uint64_t WallpaperMetalRenderingFloatingLayerStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1D96DAB70();
  MEMORY[0x1DA735890](v1);
  return sub_1D96DAB90();
}

unint64_t sub_1D96D9978()
{
  result = qword_1ECB3F440;
  if (!qword_1ECB3F440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB3F440);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1D96D99FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D96D9A44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

id sub_1D96D9B44()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  switch(v1)
  {
    case 1:
      LODWORD(v3) = 1054615798;
      v11 = 1058139013;
      goto LABEL_20;
    case 2:
      LODWORD(v4) = 1054951342;
      v8 = 1065017672;
      goto LABEL_8;
    case 3:
      LODWORD(v4) = 1052266988;
      v7 = 1059313418;
      goto LABEL_10;
    case 4:
      LODWORD(v4) = 1060320051;
      v7 = 1050253722;
      goto LABEL_10;
    case 5:
      LODWORD(v5) = 1044549468;
      LODWORD(v4) = 1060991140;
      v3 = 0.0;
      LODWORD(v6) = 1060991140;
      break;
    case 6:
      LODWORD(v4) = 1062165545;
      LODWORD(v5) = 1038174126;
      v10 = 1062501089;
      goto LABEL_17;
    case 7:
      LODWORD(v3) = 1061830001;
      LODWORD(v6) = 1036831949;
      v4 = 0.0;
      LODWORD(v5) = 0.75;
      break;
    case 8:
      LODWORD(v3) = 1063675494;
      v11 = 1035489772;
LABEL_20:
      LODWORD(v5) = v11;
      v4 = 0.0;
      LODWORD(v6) = 1.0;
      break;
    case 9:
      LODWORD(v4) = 1064849900;
      LODWORD(v5) = 1065185444;
      v10 = 1017370378;
      goto LABEL_17;
    case 10:
      LODWORD(v3) = 1059816735;
      LODWORD(v5) = 1065185444;
      LODWORD(v6) = 1058139013;
      v4 = 0.0;
      break;
    case 11:
      LODWORD(v4) = 1059816735;
      v8 = 1058139013;
LABEL_8:
      LODWORD(v5) = v8;
      v10 = 1065185444;
LABEL_17:
      LODWORD(v6) = v10;
      v3 = 0.0;
      break;
    case 12:
      LODWORD(v3) = 1064011039;
      LODWORD(v4) = 1041865114;
      LODWORD(v5) = 1034147594;
      v9 = 1062333317;
      goto LABEL_15;
    case 13:
      LODWORD(v3) = 1041865114;
      LODWORD(v4) = 1064011039;
      LODWORD(v5) = 1062333317;
      v9 = 1034147594;
LABEL_15:
      LODWORD(v6) = v9;
      break;
    default:
      LODWORD(v4) = 1054615798;
      v7 = 1058139013;
LABEL_10:
      LODWORD(v6) = v7;
      v3 = 0.0;
      LODWORD(v5) = 1.0;
      break;
  }

  return [v2 initWithControlPoints__:v3 :{v4, v5, v6}];
}

uint64_t TimingFunction.hashValue.getter()
{
  v1 = *v0;
  sub_1D96DAB70();
  MEMORY[0x1DA735890](v1);
  return sub_1D96DAB90();
}

float FloatingPoint<>.retimed(_:)(char *a1, float a2)
{
  v8 = *a1;
  v3 = sub_1D96D9B44();
  *&v4 = a2;
  [v3 _solveForInput_];
  v6 = v5;

  return v6;
}

double FloatingPoint<>.retimed(_:)(char *a1, double a2)
{
  v7 = *a1;
  v3 = sub_1D96D9B44();
  *&v4 = a2;
  [v3 _solveForInput_];
  LODWORD(a2) = v5;

  return *&a2;
}

unint64_t sub_1D96D9EE8()
{
  result = qword_1ECB3F448;
  if (!qword_1ECB3F448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB3F448);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TimingFunction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TimingFunction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t Keyframe.Name.hashValue.getter()
{
  v1 = *v0;
  sub_1D96DAB70();
  MEMORY[0x1DA735890](v1);
  return sub_1D96DAB90();
}

unint64_t Keyframe.Progress.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D96DA9A0();

  v3 = sub_1D96DA840();
  MEMORY[0x1DA735440](v3);

  MEMORY[0x1DA735440](0xD000000000000012, 0x80000001D96DF870);
  v4 = sub_1D96DA840();
  MEMORY[0x1DA735440](v4);

  MEMORY[0x1DA735440](41, 0xE100000000000000);
  return 0xD000000000000018;
}

unint64_t sub_1D96DA208()
{
  result = qword_1EDB958D8;
  if (!qword_1EDB958D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB958D8);
  }

  return result;
}