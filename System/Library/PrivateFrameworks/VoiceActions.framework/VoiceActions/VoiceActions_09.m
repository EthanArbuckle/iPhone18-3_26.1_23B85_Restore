uint64_t sub_2722AD3FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_272376DFC();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2722AD4C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_272376DFC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2722AD56C()
{
  sub_2721F3E38(319, &qword_280881708);
  if (v0 <= 0x3F)
  {
    sub_2721F3E38(319, &qword_280881710);
    if (v1 <= 0x3F)
    {
      sub_272376DFC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 sub_2722AD630(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2722AD644(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2722AD68C(uint64_t result, int a2, int a3)
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
      *(result + 33) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2722AD6F8()
{
  result = qword_280882768;
  if (!qword_280882768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882768);
  }

  return result;
}

uint64_t sub_2722AD74C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2722AD7A8()
{
  v1 = 1701736302;
  v2 = 0x6863656570536F6ELL;
  if (*v0 != 2)
  {
    v2 = 0x7973736F6CLL;
  }

  if (*v0)
  {
    v1 = 0x73736563637573;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2722AD818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2722AFD24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2722AD840(uint64_t a1)
{
  v2 = sub_2722ADED0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2722AD87C(uint64_t a1)
{
  v2 = sub_2722ADED0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2722AD8B8(uint64_t a1)
{
  v2 = sub_2722ADF24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2722AD8F4(uint64_t a1)
{
  v2 = sub_2722ADF24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2722AD930(uint64_t a1)
{
  v2 = sub_2722ADF78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2722AD96C(uint64_t a1)
{
  v2 = sub_2722ADF78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2722AD9A8(uint64_t a1)
{
  v2 = sub_2722AE020();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2722AD9E4(uint64_t a1)
{
  v2 = sub_2722AE020();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2722ADA20(uint64_t a1)
{
  v2 = sub_2722ADFCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2722ADA5C(uint64_t a1)
{
  v2 = sub_2722ADFCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VASingleEnrollmentStatus.encode(to:)(void *a1)
{
  v3 = sub_2721F065C(&qword_280882790, &qword_272381E20);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3);
  v36 = &v28 - v5;
  v6 = sub_2721F065C(&qword_280882798, &qword_272381E28);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v33 = &v28 - v8;
  v9 = sub_2721F065C(&qword_2808827A0, &qword_272381E30);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v9);
  v30 = &v28 - v11;
  v12 = sub_2721F065C(&qword_2808827A8, &qword_272381E38);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v16 = sub_2721F065C(&qword_2808827B0, &qword_272381E40);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_2722ADED0();
  sub_2723787CC();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_2722ADF78();
      v24 = v33;
      sub_27237851C();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_2722ADF24();
      v24 = v36;
      sub_27237851C();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_2722ADFCC();
    v24 = v30;
    sub_27237851C();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_2722AE020();
  sub_27237851C();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

unint64_t sub_2722ADED0()
{
  result = qword_28088CF40;
  if (!qword_28088CF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088CF40);
  }

  return result;
}

unint64_t sub_2722ADF24()
{
  result = qword_28088CF48;
  if (!qword_28088CF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088CF48);
  }

  return result;
}

unint64_t sub_2722ADF78()
{
  result = qword_28088CF50;
  if (!qword_28088CF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088CF50);
  }

  return result;
}

unint64_t sub_2722ADFCC()
{
  result = qword_28088CF58;
  if (!qword_28088CF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088CF58);
  }

  return result;
}

unint64_t sub_2722AE020()
{
  result = qword_28088CF60;
  if (!qword_28088CF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088CF60);
  }

  return result;
}

uint64_t VASingleEnrollmentStatus.hashValue.getter()
{
  v1 = *v0;
  sub_27237874C();
  MEMORY[0x2743C58B0](v1);
  return sub_27237878C();
}

uint64_t VASingleEnrollmentStatus.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v51 = sub_2721F065C(&qword_2808827B8, &qword_272381E48);
  v47 = *(v51 - 8);
  v3 = *(v47 + 64);
  MEMORY[0x28223BE20](v51);
  v54 = v42 - v4;
  v5 = sub_2721F065C(&qword_2808827C0, &qword_272381E50);
  v6 = *(v5 - 8);
  v49 = v5;
  v50 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v53 = v42 - v8;
  v48 = sub_2721F065C(&qword_2808827C8, &qword_272381E58);
  v45 = *(v48 - 8);
  v9 = *(v45 + 64);
  MEMORY[0x28223BE20](v48);
  v11 = v42 - v10;
  v12 = sub_2721F065C(&qword_2808827D0, &qword_272381E60);
  v46 = *(v12 - 8);
  v13 = *(v46 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v42 - v14;
  v16 = sub_2721F065C(&qword_2808827D8, &unk_272381E68);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v42 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v56 = a1;
  sub_27220300C(a1, v21);
  sub_2722ADED0();
  v23 = v55;
  sub_2723787AC();
  if (!v23)
  {
    v43 = v12;
    v44 = 0;
    v24 = v53;
    v25 = v54;
    v55 = v17;
    v26 = v20;
    v27 = sub_27237850C();
    v28 = *(v27 + 16);
    if (!v28 || ((v29 = *(v27 + 32), v28 == 1) ? (v30 = v29 == 4) : (v30 = 1), v30))
    {
      v31 = sub_27237824C();
      swift_allocError();
      v33 = v32;
      v34 = *(sub_2721F065C(&qword_280882600, &unk_2723810A0) + 48);
      *v33 = &type metadata for VASingleEnrollmentStatus;
      sub_27237842C();
      sub_27237823C();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84160], v31);
      swift_willThrow();
      (*(v55 + 8))(v26, v16);
    }

    else
    {
      v42[1] = v27;
      if (v29 <= 1)
      {
        if (v29)
        {
          v58 = 1;
          sub_2722ADFCC();
          v39 = v44;
          sub_27237841C();
          if (!v39)
          {
            (*(v45 + 8))(v11, v48);
            goto LABEL_23;
          }
        }

        else
        {
          v57 = 0;
          sub_2722AE020();
          v35 = v44;
          sub_27237841C();
          if (!v35)
          {
            (*(v46 + 8))(v15, v43);
LABEL_23:
            (*(v55 + 8))(v20, v16);
LABEL_25:
            swift_unknownObjectRelease();
            *v52 = v29;
            return sub_2722039C8(v56);
          }
        }

        (*(v55 + 8))(v20, v16);
        goto LABEL_20;
      }

      v36 = v52;
      v37 = v55;
      if (v29 == 2)
      {
        v59 = 2;
        sub_2722ADF78();
        v38 = v44;
        sub_27237841C();
        if (!v38)
        {
          (*(v50 + 8))(v24, v49);
          (*(v37 + 8))(v26, v16);
          swift_unknownObjectRelease();
          *v36 = 2;
          return sub_2722039C8(v56);
        }
      }

      else
      {
        v60 = 3;
        sub_2722ADF24();
        v40 = v44;
        sub_27237841C();
        if (!v40)
        {
          (*(v47 + 8))(v25, v51);
          (*(v37 + 8))(v26, v16);
          goto LABEL_25;
        }
      }

      (*(v37 + 8))(v26, v16);
    }

LABEL_20:
    swift_unknownObjectRelease();
  }

  return sub_2722039C8(v56);
}

uint64_t VASingleEnrollmentData.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_272376E5C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t VASingleEnrollmentData.embeddings.getter()
{
  v1 = *(v0 + *(type metadata accessor for VASingleEnrollmentData() + 20));
}

uint64_t type metadata accessor for VASingleEnrollmentData()
{
  result = qword_28088D3F0;
  if (!qword_28088D3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t VASingleEnrollmentData.keywordIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for VASingleEnrollmentData() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t VASingleEnrollmentData.debugAudioSamples.getter()
{
  v1 = *(v0 + *(type metadata accessor for VASingleEnrollmentData() + 28));
}

uint64_t VASingleEnrollmentData.debugStartFrame.setter(uint64_t a1)
{
  result = type metadata accessor for VASingleEnrollmentData();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t VASingleEnrollmentData.debugEndFrame.setter(uint64_t a1)
{
  result = type metadata accessor for VASingleEnrollmentData();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t VASingleEnrollmentData.status.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VASingleEnrollmentData();
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t VASingleEnrollmentData.description.getter()
{
  sub_27237820C();
  MEMORY[0x2743C4AD0](540697705, 0xE400000000000000);
  sub_272376E5C();
  sub_2722B0200(&qword_280881BA8, MEMORY[0x277CC95F0]);
  v1 = sub_27237862C();
  MEMORY[0x2743C4AD0](v1);

  MEMORY[0x2743C4AD0](0x646465626D65202CLL, 0xEE00203A73676E69);
  v2 = type metadata accessor for VASingleEnrollmentData();
  v3 = *(v0 + v2[5]);
  v12 = *(v3 + 16);
  v4 = sub_27237862C();
  MEMORY[0x2743C4AD0](v4);

  result = MEMORY[0x2743C4AD0](2127904, 0xE300000000000000);
  if (*(v3 + 16))
  {
    v13 = *(*(v3 + 32) + 16);
    v6 = sub_27237862C();
    MEMORY[0x2743C4AD0](v6);

    MEMORY[0x2743C4AD0](0xD000000000000015, 0x800000027238D600);
    MEMORY[0x2743C4AD0](*(v0 + v2[6]), *(v0 + v2[6] + 8));
    MEMORY[0x2743C4AD0](0xD000000000000015, 0x800000027238D620);
    v7 = *(v0 + v2[7]);
    if (v7)
    {
      v8 = *(v7 + 16);
    }

    v9 = sub_27237862C();
    MEMORY[0x2743C4AD0](v9);

    MEMORY[0x2743C4AD0](0xD000000000000013, 0x800000027238D640);
    v14 = *(v0 + v2[8]);
    v10 = sub_27237862C();
    MEMORY[0x2743C4AD0](v10);

    MEMORY[0x2743C4AD0](0xD000000000000011, 0x800000027238D660);
    v15 = *(v0 + v2[9]);
    v11 = sub_27237862C();
    MEMORY[0x2743C4AD0](v11);

    MEMORY[0x2743C4AD0](0x737574617473202CLL, 0xEA0000000000203ALL);
    LOBYTE(v15) = *(v0 + v2[10]);
    sub_27237836C();
    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_2722AED94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = *(a1 + 32);
    v5 = *(a2 + 32);
    v6 = *(v4 + 16);
    if (v6 == *(v5 + 16))
    {
      v7 = 1;
      while (!v6 || v4 == v5)
      {
LABEL_11:
        result = v7 == v2;
        if (v7 != v2)
        {
          v4 = *(v3 + 8 * v7);
          v5 = *(a2 + 32 + 8 * v7++);
          v6 = *(v4 + 16);
          if (v6 == *(v5 + 16))
          {
            continue;
          }
        }

        return result;
      }

      v8 = (v4 + 32);
      v9 = (v5 + 32);
      while (*v8 == *v9)
      {
        ++v8;
        ++v9;
        if (!--v6)
        {
          goto LABEL_11;
        }
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_2722AEE4C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2722AEEA8()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x646E456775626564;
  if (v1 != 5)
  {
    v3 = 0x737574617473;
  }

  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x6174536775626564;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6E69646465626D65;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2722AEF98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2722B0C34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2722AEFC0(uint64_t a1)
{
  v2 = sub_2722AFF6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2722AEFFC(uint64_t a1)
{
  v2 = sub_2722AFF6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VASingleEnrollmentData.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_2808827E0, &qword_272381E78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_2722AFF6C();
  sub_2723787CC();
  LOBYTE(v19) = 0;
  sub_272376E5C();
  sub_2722B0200(&qword_280881CD8, MEMORY[0x277CC95F0]);
  sub_2723785DC();
  if (!v2)
  {
    v11 = type metadata accessor for VASingleEnrollmentData();
    v19 = *(v3 + v11[5]);
    HIBYTE(v18) = 1;
    sub_2721F065C(&qword_280881F28, &unk_272381E80);
    sub_2722B0014(&qword_2808827E8, &qword_2808827F0);
    sub_2723785DC();
    v12 = (v3 + v11[6]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v19) = 2;
    sub_27237858C();
    v19 = *(v3 + v11[7]);
    HIBYTE(v18) = 3;
    sub_2721F065C(&qword_280881858, &unk_27237C260);
    sub_2722B00A0(&qword_2808827F0);
    sub_27237857C();
    v15 = *(v3 + v11[8]);
    LOBYTE(v19) = 4;
    sub_2723785CC();
    v16 = *(v3 + v11[9]);
    LOBYTE(v19) = 5;
    sub_2723785CC();
    LOBYTE(v19) = *(v3 + v11[10]);
    HIBYTE(v18) = 6;
    sub_2722AFFC0();
    sub_2723785DC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t VASingleEnrollmentData.hash(into:)(uint64_t a1)
{
  sub_272376E5C();
  sub_2722B0200(&qword_280882800, MEMORY[0x277CC95F0]);
  sub_27237777C();
  v3 = type metadata accessor for VASingleEnrollmentData();
  sub_2722AFC84(a1, *(v1 + v3[5]));
  v4 = (v1 + v3[6]);
  v5 = *v4;
  v6 = v4[1];
  sub_27237790C();
  v7 = *(v1 + v3[7]);
  sub_27237876C();
  if (v7)
  {
    sub_2722AFC1C(a1, v7);
  }

  MEMORY[0x2743C58B0](*(v1 + v3[8]));
  MEMORY[0x2743C58B0](*(v1 + v3[9]));
  return MEMORY[0x2743C58B0](*(v1 + v3[10]));
}

uint64_t VASingleEnrollmentData.hashValue.getter()
{
  sub_27237874C();
  VASingleEnrollmentData.hash(into:)(v1);
  return sub_27237878C();
}

uint64_t VASingleEnrollmentData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_272376E5C();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2721F065C(&qword_280882808, &qword_272381E90);
  v25 = *(v29 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v29);
  v9 = &v23 - v8;
  v10 = type metadata accessor for VASingleEnrollmentData();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_2722AFF6C();
  v28 = v9;
  sub_2723787AC();
  if (v2)
  {
    return sub_2722039C8(a1);
  }

  v15 = v13;
  v17 = v25;
  v16 = v26;
  LOBYTE(v31) = 0;
  sub_2722B0200(&qword_280882810, MEMORY[0x277CC95F0]);
  v18 = v27;
  sub_2723784FC();
  (*(v16 + 32))(v15, v18, v4);
  sub_2721F065C(&qword_280881F28, &unk_272381E80);
  v30 = 1;
  sub_2722B0014(&qword_280882818, &qword_280882820);
  sub_2723784FC();
  *(v15 + v10[5]) = v31;
  LOBYTE(v31) = 2;
  v27 = 0;
  v19 = sub_2723784AC();
  v20 = (v15 + v10[6]);
  *v20 = v19;
  v20[1] = v21;
  sub_2721F065C(&qword_280881858, &unk_27237C260);
  v30 = 3;
  sub_2722B00A0(&qword_280882820);
  sub_27237848C();
  *(v15 + v10[7]) = v31;
  LOBYTE(v31) = 4;
  *(v15 + v10[8]) = sub_2723784EC();
  LOBYTE(v31) = 5;
  *(v15 + v10[9]) = sub_2723784EC();
  v30 = 6;
  sub_2722B010C();
  sub_2723784FC();
  (*(v17 + 8))(v28, v29);
  *(v15 + v10[10]) = v31;
  sub_272204F54(v15, v24);
  sub_2722039C8(a1);
  return sub_272204FB8(v15);
}

int *sub_2722AFA68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>)
{
  v17 = *a8;
  v18 = sub_272376E5C();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  result = type metadata accessor for VASingleEnrollmentData();
  *(a9 + result[5]) = a2;
  v20 = (a9 + result[6]);
  *v20 = a3;
  v20[1] = a4;
  *(a9 + result[7]) = a5;
  *(a9 + result[8]) = a6;
  *(a9 + result[9]) = a7;
  *(a9 + result[10]) = v17;
  return result;
}

uint64_t sub_2722AFB74()
{
  sub_27237874C();
  VASingleEnrollmentData.hash(into:)(v1);
  return sub_27237878C();
}

uint64_t sub_2722AFBB8()
{
  sub_27237874C();
  VASingleEnrollmentData.hash(into:)(v1);
  return sub_27237878C();
}

uint64_t sub_2722AFC10@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_2722AFC1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x2743C58B0](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      result = sub_27237877C();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2722AFC84(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x2743C58B0](v3);
  if (v3)
  {
    v5 = 0;
    v6 = a2 + 32;
    do
    {
      v7 = *(v6 + 8 * v5);
      result = MEMORY[0x2743C58B0](*(v7 + 16));
      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = (v7 + 32);
        do
        {
          v10 = *v9++;
          result = sub_27237877C();
          --v8;
        }

        while (v8);
      }

      ++v5;
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t sub_2722AFD24(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73736563637573 && a2 == 0xE700000000000000 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6863656570536F6ELL && a2 == 0xE800000000000000 || (sub_27237865C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7973736F6CLL && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_27237865C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

BOOL _s12VoiceActions22VASingleEnrollmentDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_272376E2C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for VASingleEnrollmentData();
  if (!sub_2722AED94(*(a1 + v4[5]), *(a2 + v4[5])))
  {
    return 0;
  }

  v5 = v4[6];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_27237865C() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[7];
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11)
  {
    if (!v12 || (sub_2722AEE4C(v11, v12) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (*(a1 + v4[8]) == *(a2 + v4[8]) && *(a1 + v4[9]) == *(a2 + v4[9]))
  {
    return *(a1 + v4[10]) == *(a2 + v4[10]);
  }

  return 0;
}

unint64_t sub_2722AFF6C()
{
  result = qword_28088CF68[0];
  if (!qword_28088CF68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088CF68);
  }

  return result;
}

unint64_t sub_2722AFFC0()
{
  result = qword_2808827F8;
  if (!qword_2808827F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808827F8);
  }

  return result;
}

uint64_t sub_2722B0014(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_2721F214C(&qword_280881F28, &unk_272381E80);
    sub_2722B00A0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2722B00A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2721F214C(&qword_280881858, &unk_27237C260);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2722B010C()
{
  result = qword_280882828;
  if (!qword_280882828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882828);
  }

  return result;
}

unint64_t sub_2722B0164()
{
  result = qword_280882830;
  if (!qword_280882830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882830);
  }

  return result;
}

uint64_t sub_2722B0200(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2722B026C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_272376E5C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2722B033C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_272376E5C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_2722B03F4()
{
  sub_272376E5C();
  if (v0 <= 0x3F)
  {
    sub_2722B04E4(319, &qword_280882840, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_2722B04E4(319, &qword_280882848, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2722B04E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_2721F214C(&qword_280881858, &unk_27237C260);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

__n128 initializeBufferWithCopyOfBuffer for VAEnrollmentProgress(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for VAEnrollmentProgress(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for VAEnrollmentProgress(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_2722B0768()
{
  result = qword_28088D900[0];
  if (!qword_28088D900[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088D900);
  }

  return result;
}

unint64_t sub_2722B07C0()
{
  result = qword_28088DB10[0];
  if (!qword_28088DB10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088DB10);
  }

  return result;
}

unint64_t sub_2722B0818()
{
  result = qword_28088DC20;
  if (!qword_28088DC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088DC20);
  }

  return result;
}

unint64_t sub_2722B0870()
{
  result = qword_28088DC28[0];
  if (!qword_28088DC28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088DC28);
  }

  return result;
}

unint64_t sub_2722B08C8()
{
  result = qword_28088DCB0;
  if (!qword_28088DCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088DCB0);
  }

  return result;
}

unint64_t sub_2722B0920()
{
  result = qword_28088DCB8[0];
  if (!qword_28088DCB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088DCB8);
  }

  return result;
}

unint64_t sub_2722B0978()
{
  result = qword_28088DD40;
  if (!qword_28088DD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088DD40);
  }

  return result;
}

unint64_t sub_2722B09D0()
{
  result = qword_28088DD48[0];
  if (!qword_28088DD48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088DD48);
  }

  return result;
}

unint64_t sub_2722B0A28()
{
  result = qword_28088DDD0;
  if (!qword_28088DDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088DDD0);
  }

  return result;
}

unint64_t sub_2722B0A80()
{
  result = qword_28088DDD8[0];
  if (!qword_28088DDD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088DDD8);
  }

  return result;
}

unint64_t sub_2722B0AD8()
{
  result = qword_28088DE60;
  if (!qword_28088DE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088DE60);
  }

  return result;
}

unint64_t sub_2722B0B30()
{
  result = qword_28088DE68[0];
  if (!qword_28088DE68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088DE68);
  }

  return result;
}

unint64_t sub_2722B0B88()
{
  result = qword_28088DEF0;
  if (!qword_28088DEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088DEF0);
  }

  return result;
}

unint64_t sub_2722B0BE0()
{
  result = qword_28088DEF8[0];
  if (!qword_28088DEF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088DEF8);
  }

  return result;
}

uint64_t sub_2722B0C34(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69646465626D65 && a2 == 0xEA00000000007367 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000027238D680 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000027238D6A0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174536775626564 && a2 == 0xEF656D6172467472 || (sub_27237865C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x646E456775626564 && a2 == 0xED0000656D617246 || (sub_27237865C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_27237865C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_2722B0F34()
{
  v0 = sub_272291FE0(&unk_28818C7F0);
  swift_arrayDestroy();
  return v0;
}

id sub_2722B0F7C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x800000027238CEB0 == a2;
  if (v3 || (sub_27237865C() & 1) != 0)
  {
    v6 = (*(*v2 + 112))();
  }

  else if (a1 == 0xD000000000000017 && 0x800000027238CED0 == a2 || (sub_27237865C() & 1) != 0)
  {
    v6 = (*(*v2 + 136))();
  }

  else if (a1 == 0x75615F7475706E69 && a2 == 0xEF6E656C5F6F6964 || (sub_27237865C() & 1) != 0)
  {
    v6 = (*(*v2 + 160))();
  }

  else
  {
    if ((a1 != 0xD000000000000010 || 0x800000027238CEF0 != a2) && (sub_27237865C() & 1) == 0)
    {
      return 0;
    }

    v6 = (*(*v2 + 184))();
  }

  v7 = v6;
  v8 = [objc_opt_self() featureValueWithMultiArray_];

  return v8;
}

uint64_t sub_2722B11E4()
{
  v1 = (*(*v0 + 88))();
  v2 = MEMORY[0x277D83A90];
  v3 = MEMORY[0x277CBFDD0];

  return MEMORY[0x2821117E8](v1, v2, v3);
}

uint64_t sub_2722B1338(void *a1)
{
  swift_allocObject();
  v2 = sub_2722B2584(a1);

  return v2;
}

void sub_2722B1380()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v1 = sub_2723777FC();
  v2 = sub_2723777FC();
  v3 = [v4 URLForResource:v1 withExtension:v2];

  if (v3)
  {
    sub_272376D0C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2722B1478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_272376D5C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 88))(v10);
  (*(v3 + 120))(v12, a1, a2, a3);
  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_2722B1588(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_272376D5C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2722B1648, 0, 0);
}

uint64_t sub_2722B1648()
{
  v1 = v0[6];
  v10 = v0[3];
  (*(v10 + 88))();
  v2 = *(v10 + 128);
  v9 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_272290FC0;
  v5 = v0[6];
  v6 = v0[2];
  v7 = v0[3];

  return v9(v5, v6);
}

uint64_t sub_2722B1778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  sub_272377F8C();
}

uint64_t sub_2722B1830(uint64_t a1, uint64_t a2)
{
  sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  v5 = *(MEMORY[0x277CBFE10] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2722B18F8;

  return MEMORY[0x2821119A8](a1, a2);
}

uint64_t sub_2722B18F8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 24) = a1;

    return MEMORY[0x2822009F8](sub_2722B1A44, 0, 0);
  }
}

uint64_t sub_2722B1A44()
{
  v1 = *(v0 + 24);
  type metadata accessor for aa_verifier_125141826_nocrop();
  *(swift_allocObject() + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2722B1AB8(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CBFF60]) init];
  v4 = (*(*v1 + 144))(a1, v3);

  return v4;
}

uint64_t sub_2722B1B44(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(v2 + 16);
  v13[0] = 0;
  v6 = [v5 predictionFromFeatures:a1 options:a2 error:v13];
  v7 = v13[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for aa_verifier_125141826_nocropOutput();
    v3 = swift_allocObject();
    *(v3 + 16) = v8;
    v9 = v7;
  }

  else
  {
    v10 = v13[0];
    sub_272376C6C();

    swift_willThrow();
  }

  v11 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_2722B1C1C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2722B1C40, 0, 0);
}

uint64_t sub_2722B1C40()
{
  v1 = *(v0[4] + 16);
  v2 = *(MEMORY[0x277CBFDE8] + 4);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_2722B1CE0;
  v5 = v0[2];
  v4 = v0[3];

  return MEMORY[0x282111980](v5, v4);
}

uint64_t sub_2722B1CE0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 48) = a1;

    return MEMORY[0x2822009F8](sub_2722B1E2C, 0, 0);
  }
}

uint64_t sub_2722B1E2C()
{
  v1 = *(v0 + 48);
  type metadata accessor for aa_verifier_125141826_nocropOutput();
  *(swift_allocObject() + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2722B1EA0(void *a1, void *a2, void *a3, void *a4)
{
  type metadata accessor for aa_verifier_125141826_nocropInput();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = *(*v4 + 136);
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = v10(v9);

  return v15;
}

uint64_t sub_2722B1F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v4 = sub_2721F065C(&qword_280882530, &unk_272380BE0);
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v31 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v31 - v14;
  v31 = &v31 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v31 - v17;
  v38 = &v31 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v31 - v19;
  v21 = v5[2];
  v35 = &v31 - v19;
  v21(&v31 - v19, v32, v4);
  v21(v18, v33, v4);
  v21(v15, v34, v4);
  v21(v12, v36, v4);
  sub_27221982C(0, &qword_2808821D0, 0x277CBFF40);
  v21(v9, v20, v4);
  sub_272292148();
  v36 = sub_272377E5C();
  v21(v9, v38, v4);
  v34 = sub_272377E5C();
  v22 = v31;
  v21(v9, v31, v4);
  v33 = sub_272377E5C();
  v21(v9, v12, v4);
  v23 = sub_272377E5C();
  v24 = v5[1];
  v24(v12, v4);
  v24(v22, v4);
  v24(v38, v4);
  v24(v35, v4);
  type metadata accessor for aa_verifier_125141826_nocropInput();
  v25 = swift_allocObject();
  v26 = v37;
  v27 = v33;
  v28 = v34;
  v25[2] = v36;
  v25[3] = v28;
  v25[4] = v27;
  v25[5] = v23;
  v29 = (*(*v26 + 136))();

  return v29;
}

void sub_2722B22C0(unint64_t a1, uint64_t a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v5 = a1 >> 62;
  if (a1 >> 62)
  {

    sub_2721F065C(&qword_2808825A8, &qword_272380C30);
    sub_27237838C();
  }

  else
  {

    sub_27237867C();
  }

  v6 = objc_allocWithZone(MEMORY[0x277CBFEB8]);
  sub_2721F065C(&qword_2808825A8, &qword_272380C30);
  v7 = sub_272377AEC();

  v8 = [v6 initWithFeatureProviderArray_];

  v9 = *(v2 + 16);
  v23[0] = 0;
  v10 = [v9 predictionsFromBatch:v8 options:a2 error:v23];
  v11 = v23[0];
  if (v10)
  {
    v12 = v10;
    v23[0] = MEMORY[0x277D84F90];
    if (v5)
    {
      v13 = sub_2723783AC();
    }

    else
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v11;
    sub_272291E24(v13);
    v16 = [v12 count];
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    v17 = v16;
    if (v16)
    {
      v18 = 0;
      do
      {
        v19 = [v12 featuresAtIndex_];
        type metadata accessor for aa_verifier_125141826_nocropOutput();
        *(swift_allocObject() + 16) = v19;
        swift_unknownObjectRetain();

        MEMORY[0x2743C4C30](v20);
        if (*((v23[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v22 = *((v23[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_272377B2C();
        }

        ++v18;
        sub_272377B7C();

        swift_unknownObjectRelease();
      }

      while (v17 != v18);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = v23[0];
    sub_272376C6C();

    swift_willThrow();
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2722B2584(uint64_t a1)
{
  v2 = v1;
  sub_2721F065C(&qword_280881A58, &unk_272382730);
  inited = swift_initStackObject();
  *(inited + 32) = 0x74757074756FLL;
  *(inited + 16) = xmmword_27237AF80;
  *(inited + 40) = 0xE600000000000000;
  v5 = [objc_opt_self() featureValueWithMultiArray_];
  *(inited + 72) = sub_27221982C(0, &qword_2808825B0, 0x277CBFEF0);
  *(inited + 48) = v5;
  sub_27221651C(inited);
  swift_setDeallocating();
  sub_272292598(inited + 32);
  v6 = objc_allocWithZone(MEMORY[0x277CBFED8]);
  *(v2 + 16) = sub_272291EF8();
  return v2;
}

uint64_t sub_2722B26D0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2722B2708(void *a1, char a2)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  if (a2)
  {
    return v4(a1, 1);
  }

  type metadata accessor for aa_verifier_125141826_nocrop();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = a1;
  v4(v7, 0);
}

uint64_t sub_2722B2870()
{
  v0 = sub_272291FE0(&unk_28818C8A8);
  sub_272203A70(&unk_28818C8C8);
  return v0;
}

id sub_2722B28AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x61775F7475706E69 && a2 == 0xE900000000000076;
  if (!v3 && (sub_27237865C() & 1) == 0)
  {
    return 0;
  }

  v4 = (*(*v2 + 88))();
  v5 = [objc_opt_self() featureValueWithMultiArray_];

  return v5;
}

uint64_t sub_2722B2A80()
{
  v1 = (*(*v0 + 88))();
  v2 = MEMORY[0x277D83A90];
  v3 = MEMORY[0x277CBFDD0];

  return MEMORY[0x2821117E8](v1, v2, v3);
}

uint64_t sub_2722B2BD4(void *a1)
{
  swift_allocObject();
  v2 = sub_2722B3C64(a1);

  return v2;
}

void sub_2722B2C1C()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v1 = sub_2723777FC();
  v2 = sub_2723777FC();
  v3 = [v4 URLForResource:v1 withExtension:v2];

  if (v3)
  {
    sub_272376D0C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2722B2D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_272376D5C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 88))(v10);
  (*(v3 + 120))(v12, a1, a2, a3);
  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_2722B2E24(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_272376D5C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2722B2EE4, 0, 0);
}

uint64_t sub_2722B2EE4()
{
  v1 = v0[6];
  v10 = v0[3];
  (*(v10 + 88))();
  v2 = *(v10 + 128);
  v9 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_272290FC0;
  v5 = v0[6];
  v6 = v0[2];
  v7 = v0[3];

  return v9(v5, v6);
}

uint64_t sub_2722B3014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  sub_272377F8C();
}

uint64_t sub_2722B30CC(uint64_t a1, uint64_t a2)
{
  sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  v5 = *(MEMORY[0x277CBFE10] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2722B3194;

  return MEMORY[0x2821119A8](a1, a2);
}

uint64_t sub_2722B3194(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 24) = a1;

    return MEMORY[0x2822009F8](sub_2722B32E0, 0, 0);
  }
}

uint64_t sub_2722B32E0()
{
  v1 = *(v0 + 24);
  type metadata accessor for aa_encoder_125141826_nocrop();
  *(swift_allocObject() + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2722B3354(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CBFF60]) init];
  v4 = (*(*v1 + 144))(a1, v3);

  return v4;
}

uint64_t sub_2722B33E0(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(v2 + 16);
  v13[0] = 0;
  v6 = [v5 predictionFromFeatures:a1 options:a2 error:v13];
  v7 = v13[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for aa_encoder_125141826_nocropOutput();
    v3 = swift_allocObject();
    *(v3 + 16) = v8;
    v9 = v7;
  }

  else
  {
    v10 = v13[0];
    sub_272376C6C();

    swift_willThrow();
  }

  v11 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_2722B34B8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2722B34DC, 0, 0);
}

uint64_t sub_2722B34DC()
{
  v1 = *(v0[4] + 16);
  v2 = *(MEMORY[0x277CBFDE8] + 4);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_2722B357C;
  v5 = v0[2];
  v4 = v0[3];

  return MEMORY[0x282111980](v5, v4);
}

uint64_t sub_2722B357C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 48) = a1;

    return MEMORY[0x2822009F8](sub_2722B36C8, 0, 0);
  }
}

uint64_t sub_2722B36C8()
{
  v1 = *(v0 + 48);
  type metadata accessor for aa_encoder_125141826_nocropOutput();
  *(swift_allocObject() + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2722B373C(void *a1)
{
  type metadata accessor for aa_encoder_125141826_nocropInput();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = *(*v1 + 136);
  v5 = a1;
  v6 = v4(v3);

  return v6;
}

uint64_t sub_2722B37D0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2721F065C(&qword_280882530, &unk_272380BE0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v16 - v10;
  v12 = *(v5 + 16);
  v12(v16 - v10, a1, v4);
  sub_27221982C(0, &qword_2808821D0, 0x277CBFF40);
  v12(v9, v11, v4);
  sub_272292148();
  v13 = sub_272377E5C();
  (*(v5 + 8))(v11, v4);
  type metadata accessor for aa_encoder_125141826_nocropInput();
  *(swift_allocObject() + 16) = v13;
  v14 = (*(*v2 + 136))();

  return v14;
}

void sub_2722B39A0(unint64_t a1, uint64_t a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v5 = a1 >> 62;
  if (a1 >> 62)
  {

    sub_2721F065C(&qword_2808825A8, &qword_272380C30);
    sub_27237838C();
  }

  else
  {

    sub_27237867C();
  }

  v6 = objc_allocWithZone(MEMORY[0x277CBFEB8]);
  sub_2721F065C(&qword_2808825A8, &qword_272380C30);
  v7 = sub_272377AEC();

  v8 = [v6 initWithFeatureProviderArray_];

  v9 = *(v2 + 16);
  v23[0] = 0;
  v10 = [v9 predictionsFromBatch:v8 options:a2 error:v23];
  v11 = v23[0];
  if (v10)
  {
    v12 = v10;
    v23[0] = MEMORY[0x277D84F90];
    if (v5)
    {
      v13 = sub_2723783AC();
    }

    else
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v11;
    sub_272291E24(v13);
    v16 = [v12 count];
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    v17 = v16;
    if (v16)
    {
      v18 = 0;
      do
      {
        v19 = [v12 featuresAtIndex_];
        type metadata accessor for aa_encoder_125141826_nocropOutput();
        *(swift_allocObject() + 16) = v19;
        swift_unknownObjectRetain();

        MEMORY[0x2743C4C30](v20);
        if (*((v23[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v22 = *((v23[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_272377B2C();
        }

        ++v18;
        sub_272377B7C();

        swift_unknownObjectRelease();
      }

      while (v17 != v18);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = v23[0];
    sub_272376C6C();

    swift_willThrow();
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2722B3C64(uint64_t a1)
{
  v2 = v1;
  sub_2721F065C(&qword_280881A58, &unk_272382730);
  inited = swift_initStackObject();
  strcpy((inited + 32), "enc_3d_output");
  *(inited + 16) = xmmword_27237AF80;
  *(inited + 46) = -4864;
  v5 = [objc_opt_self() featureValueWithMultiArray_];
  *(inited + 72) = sub_27221982C(0, &qword_2808825B0, 0x277CBFEF0);
  *(inited + 48) = v5;
  sub_27221651C(inited);
  swift_setDeallocating();
  sub_272292598(inited + 32);
  v6 = objc_allocWithZone(MEMORY[0x277CBFED8]);
  *(v2 + 16) = sub_272291EF8();
  return v2;
}

uint64_t sub_2722B3DC0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2722B3DF8(void *a1, char a2)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  if (a2)
  {
    return v4(a1, 1);
  }

  type metadata accessor for aa_encoder_125141826_nocrop();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = a1;
  v4(v7, 0);
}

uint64_t sub_2722B3F74()
{
  v0 = sub_272291FE0(&unk_28818C940);
  swift_arrayDestroy();
  return v0;
}

id sub_2722B3FBC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000027238D8B0 == a2 || (sub_27237865C() & 1) != 0)
  {
    v5 = (*(*v2 + 96))();
  }

  else
  {
    if ((a1 != 0x62616C5F74786574 || a2 != 0xEB00000000736C65) && (sub_27237865C() & 1) == 0)
    {
      return 0;
    }

    v5 = (*(*v2 + 120))();
  }

  v6 = v5;
  v7 = [objc_opt_self() featureValueWithMultiArray_];

  return v7;
}

uint64_t sub_2722B4168(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_2722B41A8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2722B41E8()
{
  v1 = (*(*v0 + 88))();
  v2 = MEMORY[0x277D83A90];
  v3 = MEMORY[0x277CBFDD0];

  return MEMORY[0x2821117E8](v1, v2, v3);
}

uint64_t sub_2722B433C(void *a1)
{
  swift_allocObject();
  v2 = sub_2722B5600(a1);

  return v2;
}

void sub_2722B4384()
{
  sub_272255BD4();
  v4 = v0;
  if (!v0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = sub_2723777FC();
  v2 = sub_2723777FC();
  v3 = [v4 URLForResource:v1 withExtension:v2];

  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_272376D0C();
}

uint64_t sub_2722B4458(void *a1)
{
  v3 = v1;
  v5 = sub_272376D5C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v19 - v12;
  (*(v1 + 88))(v11);
  v14 = sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  (*(v6 + 16))(v10, v13, v5);
  v15 = a1;
  v16 = sub_272292308(v10, v15);
  if (v2)
  {

    (*(v6 + 8))(v13, v5);
  }

  else
  {
    v17 = v16;

    v14 = (*(v3 + 96))(v17);
    (*(v6 + 8))(v13, v5);
  }

  return v14;
}

uint64_t sub_2722B4618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_272376D5C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 88))(v10);
  (*(v3 + 120))(v12, a1, a2, a3);
  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_2722B4728(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_272376D5C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2722B47E8, 0, 0);
}

uint64_t sub_2722B47E8()
{
  v1 = v0[6];
  v10 = v0[3];
  (*(v10 + 88))();
  v2 = *(v10 + 128);
  v9 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_272290FC0;
  v5 = v0[6];
  v6 = v0[2];
  v7 = v0[3];

  return v9(v5, v6);
}

uint64_t sub_2722B4918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  sub_272377F8C();
}

uint64_t sub_2722B49D0(uint64_t a1, uint64_t a2)
{
  sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  v5 = *(MEMORY[0x277CBFE10] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2722B4A98;

  return MEMORY[0x2821119A8](a1, a2);
}

uint64_t sub_2722B4A98(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 24) = a1;

    return MEMORY[0x2822009F8](sub_2722B4BE4, 0, 0);
  }
}

uint64_t sub_2722B4BE4()
{
  v1 = *(v0 + 24);
  type metadata accessor for at_verifier_rdr_125141826();
  *(swift_allocObject() + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2722B4C58(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CBFF60]) init];
  v4 = (*(*v1 + 144))(a1, v3);

  return v4;
}

uint64_t sub_2722B4CE4(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(v2 + 16);
  v13[0] = 0;
  v6 = [v5 predictionFromFeatures:a1 options:a2 error:v13];
  v7 = v13[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for at_verifier_rdr_125141826Output();
    v3 = swift_allocObject();
    *(v3 + 16) = v8;
    v9 = v7;
  }

  else
  {
    v10 = v13[0];
    sub_272376C6C();

    swift_willThrow();
  }

  v11 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_2722B4DBC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2722B4DE0, 0, 0);
}

uint64_t sub_2722B4DE0()
{
  v1 = *(v0[4] + 16);
  v2 = *(MEMORY[0x277CBFDE8] + 4);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_2722B4E80;
  v5 = v0[2];
  v4 = v0[3];

  return MEMORY[0x282111980](v5, v4);
}

uint64_t sub_2722B4E80(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 48) = a1;

    return MEMORY[0x2822009F8](sub_2722B4FCC, 0, 0);
  }
}

uint64_t sub_2722B4FCC()
{
  v1 = *(v0 + 48);
  type metadata accessor for at_verifier_rdr_125141826Output();
  *(swift_allocObject() + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2722B5040(void *a1, void *a2)
{
  type metadata accessor for at_verifier_rdr_125141826Input();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *(*v2 + 136);
  v7 = a1;
  v8 = a2;
  v9 = v6(v5);

  return v9;
}

uint64_t sub_2722B50E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280882530, &unk_272380BE0);
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v21 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v21 - v13;
  v15 = v5[2];
  v15(v21 - v13, a1, v4);
  v15(v12, a2, v4);
  sub_27221982C(0, &qword_2808821D0, 0x277CBFF40);
  v15(v9, v14, v4);
  sub_272292148();
  v21[0] = sub_272377E5C();
  v15(v9, v12, v4);
  v16 = sub_272377E5C();
  v17 = v5[1];
  v17(v12, v4);
  v17(v14, v4);
  type metadata accessor for at_verifier_rdr_125141826Input();
  v18 = swift_allocObject();
  *(v18 + 16) = v21[0];
  *(v18 + 24) = v16;
  v19 = (*(*v21[1] + 136))();

  return v19;
}

void sub_2722B533C(unint64_t a1, uint64_t a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v5 = a1 >> 62;
  if (a1 >> 62)
  {

    sub_2721F065C(&qword_2808825A8, &qword_272380C30);
    sub_27237838C();
  }

  else
  {

    sub_27237867C();
  }

  v6 = objc_allocWithZone(MEMORY[0x277CBFEB8]);
  sub_2721F065C(&qword_2808825A8, &qword_272380C30);
  v7 = sub_272377AEC();

  v8 = [v6 initWithFeatureProviderArray_];

  v9 = *(v2 + 16);
  v23[0] = 0;
  v10 = [v9 predictionsFromBatch:v8 options:a2 error:v23];
  v11 = v23[0];
  if (v10)
  {
    v12 = v10;
    v23[0] = MEMORY[0x277D84F90];
    if (v5)
    {
      v13 = sub_2723783AC();
    }

    else
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v11;
    sub_272291E24(v13);
    v16 = [v12 count];
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    v17 = v16;
    if (v16)
    {
      v18 = 0;
      do
      {
        v19 = [v12 featuresAtIndex_];
        type metadata accessor for at_verifier_rdr_125141826Output();
        *(swift_allocObject() + 16) = v19;
        swift_unknownObjectRetain();

        MEMORY[0x2743C4C30](v20);
        if (*((v23[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v22 = *((v23[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_272377B2C();
        }

        ++v18;
        sub_272377B7C();

        swift_unknownObjectRelease();
      }

      while (v17 != v18);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = v23[0];
    sub_272376C6C();

    swift_willThrow();
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2722B5600(uint64_t a1)
{
  v2 = v1;
  sub_2721F065C(&qword_280881A58, &unk_272382730);
  inited = swift_initStackObject();
  *(inited + 32) = 0x74757074756FLL;
  *(inited + 16) = xmmword_27237AF80;
  *(inited + 40) = 0xE600000000000000;
  v5 = [objc_opt_self() featureValueWithMultiArray_];
  *(inited + 72) = sub_27221982C(0, &qword_2808825B0, 0x277CBFEF0);
  *(inited + 48) = v5;
  sub_27221651C(inited);
  swift_setDeallocating();
  sub_272292598(inited + 32);
  v6 = objc_allocWithZone(MEMORY[0x277CBFED8]);
  *(v2 + 16) = sub_272291EF8();
  return v2;
}

uint64_t sub_2722B574C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2722B5784(void *a1, char a2)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  if (a2)
  {
    return v4(a1, 1);
  }

  type metadata accessor for at_verifier_rdr_125141826();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = a1;
  v4(v7, 0);
}

uint64_t static VAA2TBuilder.buildSpotterForAudioToTextV2(delegate:vadGated:jsonConfigFilename:computeUnits:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char *a5)
{
  v10 = *a5;
  v11 = type metadata accessor for VAConfiguration();
  v12 = static VAConfiguration.buildForFlexibleA2Tv2()();
  if (a4)
  {
    v13 = static VAConfiguration.buildFromConfigFile(jsonFile:)(a3, a4);
    if (v5)
    {
      goto LABEL_5;
    }

    v14 = v13;

    v12 = v14;
  }

  v15 = type metadata accessor for VAA2TEncoderV2();
  LOBYTE(v39[0]) = v10;
  v11 = v15;
  v16 = VAA2TEncoderV2.__allocating_init(computeUnits:)(v39);
  if (!v5)
  {
    v36 = a1;
    v42 = v16;
    v17 = type metadata accessor for VAA2TVerifierV2();
    LOBYTE(v37[0]) = v10;
    v18 = type metadata accessor for VAMemoryBackedLexicon();
    v19 = sub_27223B49C();
    v40 = v18;
    v41 = &off_28817E268;
    v39[0] = v19;
    v20 = sub_272270830(v37, v39);
    type metadata accessor for VAResultGeneratorVerifier();
    v40 = v17;
    v41 = &protocol witness table for VAA2TVerifierV2;
    v39[0] = v20;

    v21 = v12;
    v22 = VAResultGeneratorVerifier.__allocating_init(subVerifier:config:)(v39, v21);
    type metadata accessor for VASilenceModel();
    v23 = (*((*MEMORY[0x277D85000] & *v21) + 0xE8))();
    v25 = v24;
    _s12VoiceActions19VASpeechBiasOptionsO010defaultForaB0ACyFZ_0(v39);
    LOBYTE(v37[0]) = v39[0];
    v26 = sub_27228DC9C(v23, v25, v37);
    type metadata accessor for VAFeatureExtract();
    v27 = VAFeatureExtract.__allocating_init()();
    type metadata accessor for VAFeatureExtractingEncoder();
    v40 = v15;
    v41 = &protocol witness table for VAA2TEncoderV2;
    v39[0] = v42;
    v28 = v21;

    v29 = v27;

    v30 = sub_2721F7EE4();
    v32 = VAFeatureExtractingEncoder.__allocating_init(subEncoder:featureExtractor:vadModel:config:useCMVN:)(v39, v29, v26, v28, v30 & 1);
    v33 = type metadata accessor for VAStrategyProviderPassthrough();
    v35 = v29;
    v34 = sub_2722043D8();
    type metadata accessor for VAFlexibleKeywordSpotter();
    v40 = v33;
    v41 = &protocol witness table for VAStrategyProviderPassthrough;
    v38 = 0;
    v39[0] = v34;
    memset(v37, 0, sizeof(v37));
    swift_unknownObjectRetain();

    v11 = VAFlexibleKeywordSpotter.__allocating_init(delegate:vadGated:verifier:encoder:configuration:strategyProvider:runtimeParametersFactory:)(v36, a2 & 1, v22, v32, v28, v39, v37);

    return v11;
  }

LABEL_5:

  return v11;
}

uint64_t sub_2722B5CC0()
{
  v0 = sub_272291FE0(&unk_28818C9D8);
  sub_272203A70(&unk_28818C9F8);
  return v0;
}

id sub_2722B5CFC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x61775F7475706E69 && a2 == 0xE900000000000076;
  if (!v3 && (sub_27237865C() & 1) == 0)
  {
    return 0;
  }

  v4 = (*(*v2 + 88))();
  v5 = [objc_opt_self() featureValueWithMultiArray_];

  return v5;
}

uint64_t sub_2722B5EE8()
{
  v1 = (*(*v0 + 88))();
  v2 = MEMORY[0x277D83A90];
  v3 = MEMORY[0x277CBFDD0];

  return MEMORY[0x2821117E8](v1, v2, v3);
}

void sub_2722B5F68()
{
  v1 = *(v0 + 16);
  v2 = sub_2723777FC();
  v3 = [v1 featureValueForName_];

  if (!v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = [v3 multiArrayValue];

  if (!v4)
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t sub_2722B5FE8()
{
  v1 = (*(*v0 + 104))();
  v2 = MEMORY[0x277D83A90];
  v3 = MEMORY[0x277CBFDD0];

  return MEMORY[0x2821117E8](v1, v2, v3);
}

uint64_t sub_2722B613C(void *a1, void *a2)
{
  swift_allocObject();
  v4 = sub_2722B737C(a1, a2);

  return v4;
}

void sub_2722B6198()
{
  sub_272255BD4();
  v4 = v0;
  if (!v0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = sub_2723777FC();
  v2 = sub_2723777FC();
  v3 = [v4 URLForResource:v1 withExtension:v2];

  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_272376D0C();
}

uint64_t sub_2722B626C(void *a1)
{
  v3 = v1;
  v5 = sub_272376D5C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v19 - v12;
  (*(v1 + 88))(v11);
  v14 = sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  (*(v6 + 16))(v10, v13, v5);
  v15 = a1;
  v16 = sub_272292308(v10, v15);
  if (v2)
  {

    (*(v6 + 8))(v13, v5);
  }

  else
  {
    v17 = v16;

    v14 = (*(v3 + 96))(v17);
    (*(v6 + 8))(v13, v5);
  }

  return v14;
}

uint64_t sub_2722B642C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_272376D5C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 88))(v10);
  (*(v3 + 120))(v12, a1, a2, a3);
  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_2722B653C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_272376D5C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2722B65FC, 0, 0);
}

uint64_t sub_2722B65FC()
{
  v1 = v0[6];
  v10 = v0[3];
  (*(v10 + 88))();
  v2 = *(v10 + 128);
  v9 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_272290FC0;
  v5 = v0[6];
  v6 = v0[2];
  v7 = v0[3];

  return v9(v5, v6);
}

uint64_t sub_2722B672C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  sub_272377F8C();
}

uint64_t sub_2722B67E4(uint64_t a1, uint64_t a2)
{
  sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  v5 = *(MEMORY[0x277CBFE10] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2722B68AC;

  return MEMORY[0x2821119A8](a1, a2);
}

uint64_t sub_2722B68AC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 24) = a1;

    return MEMORY[0x2822009F8](sub_2722B69F8, 0, 0);
  }
}

uint64_t sub_2722B69F8()
{
  v1 = *(v0 + 24);
  type metadata accessor for all_audio2audio_encoder_ig2p();
  *(swift_allocObject() + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2722B6A6C(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CBFF60]) init];
  v4 = (*(*v1 + 144))(a1, v3);

  return v4;
}

uint64_t sub_2722B6AF8(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(v2 + 16);
  v13[0] = 0;
  v6 = [v5 predictionFromFeatures:a1 options:a2 error:v13];
  v7 = v13[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for all_audio2audio_encoder_ig2pOutput();
    v3 = swift_allocObject();
    *(v3 + 16) = v8;
    v9 = v7;
  }

  else
  {
    v10 = v13[0];
    sub_272376C6C();

    swift_willThrow();
  }

  v11 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_2722B6BD0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2722B6BF4, 0, 0);
}

uint64_t sub_2722B6BF4()
{
  v1 = *(v0[4] + 16);
  v2 = *(MEMORY[0x277CBFDE8] + 4);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_2722B6C94;
  v5 = v0[2];
  v4 = v0[3];

  return MEMORY[0x282111980](v5, v4);
}

uint64_t sub_2722B6C94(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 48) = a1;

    return MEMORY[0x2822009F8](sub_2722B6DE0, 0, 0);
  }
}

uint64_t sub_2722B6DE0()
{
  v1 = *(v0 + 48);
  type metadata accessor for all_audio2audio_encoder_ig2pOutput();
  *(swift_allocObject() + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2722B6E54(void *a1)
{
  type metadata accessor for all_audio2audio_encoder_ig2pInput();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = *(*v1 + 136);
  v5 = a1;
  v6 = v4(v3);

  return v6;
}

uint64_t sub_2722B6EE8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2721F065C(&qword_280882530, &unk_272380BE0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v16 - v10;
  v12 = *(v5 + 16);
  v12(v16 - v10, a1, v4);
  sub_27221982C(0, &qword_2808821D0, 0x277CBFF40);
  v12(v9, v11, v4);
  sub_272292148();
  v13 = sub_272377E5C();
  (*(v5 + 8))(v11, v4);
  type metadata accessor for all_audio2audio_encoder_ig2pInput();
  *(swift_allocObject() + 16) = v13;
  v14 = (*(*v2 + 136))();

  return v14;
}

void sub_2722B70B8(unint64_t a1, uint64_t a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v5 = a1 >> 62;
  if (a1 >> 62)
  {

    sub_2721F065C(&qword_2808825A8, &qword_272380C30);
    sub_27237838C();
  }

  else
  {

    sub_27237867C();
  }

  v6 = objc_allocWithZone(MEMORY[0x277CBFEB8]);
  sub_2721F065C(&qword_2808825A8, &qword_272380C30);
  v7 = sub_272377AEC();

  v8 = [v6 initWithFeatureProviderArray_];

  v9 = *(v2 + 16);
  v23[0] = 0;
  v10 = [v9 predictionsFromBatch:v8 options:a2 error:v23];
  v11 = v23[0];
  if (v10)
  {
    v12 = v10;
    v23[0] = MEMORY[0x277D84F90];
    if (v5)
    {
      v13 = sub_2723783AC();
    }

    else
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v11;
    sub_272291E24(v13);
    v16 = [v12 count];
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    v17 = v16;
    if (v16)
    {
      v18 = 0;
      do
      {
        v19 = [v12 featuresAtIndex_];
        type metadata accessor for all_audio2audio_encoder_ig2pOutput();
        *(swift_allocObject() + 16) = v19;
        swift_unknownObjectRetain();

        MEMORY[0x2743C4C30](v20);
        if (*((v23[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v22 = *((v23[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_272377B2C();
        }

        ++v18;
        sub_272377B7C();

        swift_unknownObjectRelease();
      }

      while (v17 != v18);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = v23[0];
    sub_272376C6C();

    swift_willThrow();
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2722B737C(uint64_t a1, uint64_t a2)
{
  sub_2721F065C(&qword_280881A58, &unk_272382730);
  inited = swift_initStackObject();
  *(inited + 32) = 0x343834315F726176;
  *(inited + 16) = xmmword_27237AF90;
  *(inited + 40) = 0xE800000000000000;
  v6 = objc_opt_self();
  v7 = [v6 featureValueWithMultiArray_];
  v8 = sub_27221982C(0, &qword_2808825B0, 0x277CBFEF0);
  *(inited + 48) = v7;
  *(inited + 72) = v8;
  *(inited + 80) = 0x3836315F726176;
  *(inited + 88) = 0xE700000000000000;
  v9 = [v6 featureValueWithMultiArray_];
  *(inited + 120) = v8;
  *(inited + 96) = v9;
  sub_27221651C(inited);
  swift_setDeallocating();
  sub_2721F065C(&qword_280881A60, &unk_27237CA40);
  swift_arrayDestroy();
  v10 = objc_allocWithZone(MEMORY[0x277CBFED8]);
  *(v2 + 16) = sub_272291EF8();
  return v2;
}

uint64_t sub_2722B7530()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2722B7568(void *a1, char a2)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  if (a2)
  {
    return v4(a1, 1);
  }

  type metadata accessor for all_audio2audio_encoder_ig2p();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = a1;
  v4(v7, 0);
}

uint64_t sub_2722B7660()
{
  v0 = swift_allocObject();
  sub_2722B7698();
  return v0;
}

void sub_2722B7698()
{
  v1 = v0;
  v2 = sub_2723769FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *sub_2722B9360();
  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v1[2] = v7;
  v8 = sub_2722B9344();
  if (*v8 + 0x4000000000000000 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = ceilf(log2f((2 * *v8)));
  if ((LODWORD(v9) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v9 <= -1.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v9 >= 1.8447e19)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v1[4] = 0;
  v1[3] = v9;
  (*(v3 + 104))(v6, *MEMORY[0x277D83108], v2);
  type metadata accessor for DSPSplitComplex();
  v10 = sub_2721F065C(&qword_280881EE8, &unk_27237E090);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_2723769DC();
  if (v13)
  {
    v14 = v13;
    swift_beginAccess();
    v15 = v1[4];
    v1[4] = v14;

    return;
  }

LABEL_13:
  __break(1u);
}

char *sub_2722B7868(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = *(realp + 2);
  if (v3 < 0)
  {
    goto LABEL_31;
  }

  if (v3)
  {
    v5 = *(realp + 2);
    v6 = sub_272377B5C();
    *(v6 + 16) = v3;
    bzero((v6 + 32), 4 * v3);
    v7 = *(a1 + 16);
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
    v7 = *(a1 + 16);
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  if (v7 > *(v6 + 16))
  {
    __break(1u);
    goto LABEL_34;
  }

  v8 = 0;
  if (v7 < 8)
  {
    goto LABEL_12;
  }

  if ((v6 - a1) < 0x20)
  {
    goto LABEL_12;
  }

  v8 = v7 & 0x7FFFFFFFFFFFFFF8;
  v9 = (a1 + 48);
  v10 = (v6 + 48);
  v11 = v7 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v12 = *v9;
    *(v10 - 1) = *(v9 - 1);
    *v10 = v12;
    v9 += 2;
    v10 += 2;
    v11 -= 8;
  }

  while (v11);
  if (v7 != v8)
  {
LABEL_12:
    v13 = v7 - v8;
    v14 = 4 * v8 + 32;
    v15 = (v6 + v14);
    v16 = (a1 + v14);
    do
    {
      v17 = *v16++;
      *v15++ = v17;
      --v13;
    }

    while (v13);
  }

LABEL_14:
  if (v3)
  {
    v18 = sub_272377B5C();
    *(v18 + 16) = v3;
    bzero((v18 + 32), 4 * v3);
    v19 = sub_272377B5C();
    *(v19 + 16) = v3;
    bzero((v19 + 32), 4 * v3);
    v20 = sub_272377B5C();
    *(v20 + 16) = v3;
    bzero((v20 + 32), 4 * v3);
    v21 = sub_272377B5C();
    *(v21 + 16) = v3;
    bzero((v21 + 32), 4 * v3);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
    v20 = MEMORY[0x277D84F90];
    v19 = MEMORY[0x277D84F90];
  }

  v32.realp = (v19 + 32);
  v32.imagp = (v20 + 32);
  if (!(*(*realp + 104))())
  {
LABEL_34:
    __break(1u);
  }

  sub_2723769EC();

  v22 = *(v21 + 16);
  __A = v32;
  vDSP_zvabs(&__A, 1, (v21 + 32), 1, v22);
  realp = MEMORY[0x277D84F90];
  if (v3)
  {
    v23 = sub_272377B5C();
    *(v23 + 16) = v3;
    bzero((v23 + 32), 4 * v3);
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

  MEMORY[0x2743C6BD0](v21 + 32, 1, v21 + 32, 1, v23 + 32, 1, v3);

  v24 = *(v23 + 16);
  if (!v24)
  {

    if (*(realp + 2))
    {
      goto LABEL_27;
    }

    goto LABEL_30;
  }

  v32.realp = realp;
  sub_2722005AC(0, v24, 0);
  realp = v32.realp;
  v25 = *(v32.realp + 2);
  v26 = 32;
  v2 = 0.25;
  do
  {
    v27 = *(v23 + v26);
    v32.realp = realp;
    v28 = *(realp + 3);
    if (v25 >= v28 >> 1)
    {
      sub_2722005AC((v28 > 1), v25 + 1, 1);
      realp = v32.realp;
    }

    *(realp + 2) = v25 + 1;
    *&realp[4 * v25 + 32] = v27 * 0.25;
    v26 += 4;
    ++v25;
    --v24;
  }

  while (v24);

  if (!*(realp + 2))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_27:
  v2 = *(realp + 8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_32:
    realp = sub_2722002AC(realp);
  }

  *(realp + 8) = v2 * 0.5;

  v29 = *MEMORY[0x277D85DE8];
  return realp;
}

uint64_t sub_2722B7C4C()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_2722B7CA8()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
}

uint64_t sub_2722B7CE0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 88);
  *(v1 + 88) = a1;
}

uint64_t sub_2722B7D28@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[13];
  v4 = v1[14];
  v5 = v1[15];
  v6 = v1[16];
  v8 = v1[17];
  v7 = v1[18];
  result = sub_2722B7DB0(v3, v4, v5, v6, v8);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v8;
  a1[5] = v7;
  return result;
}

uint64_t sub_2722B7DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_2722B7DF4(_OWORD *a1)
{
  swift_beginAccess();
  v3 = v1[13];
  v4 = v1[14];
  v5 = v1[15];
  v6 = v1[16];
  v7 = v1[17];
  v8 = v1[18];
  v9 = a1[1];
  *(v1 + 13) = *a1;
  *(v1 + 15) = v9;
  *(v1 + 17) = a1[2];
  return sub_2722706B8(v3, v4, v5, v6, v7);
}

uint64_t sub_2722B7EA4()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & **(v0 + 72)) + 0x88))();
  v3 = (*((*v1 & *v2) + 0x100))();

  return v3;
}

uint64_t VAFeatureExtractingEncoder.__allocating_init(subEncoder:featureExtractor:vadModel:config:useCMVN:)(uint64_t *a1, void *a2, uint64_t a3, void *a4, char a5)
{
  v11 = swift_allocObject();
  *(v11 + 104) = 0u;
  *(v11 + 88) = 0u;
  *(v11 + 120) = 0u;
  *(v11 + 136) = 0u;
  *(v11 + 56) = a2;
  sub_27221629C(a1, v11 + 16);
  *(v11 + 64) = a3;
  *(v11 + 72) = a4;
  *(v11 + 80) = -1;

  v12 = a4;
  v13 = a2;
  if (a5)
  {
    v14 = sub_272323818();
    v15 = sub_272323820();
    v16 = sub_272241B00();
    sub_272323828(v14, v15, v16, v29);
    v27 = v29[0];
    v28 = v29[1];
    v17 = v30;
    v18 = v31;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v27 = 0u;
    v28 = 0u;
  }

  swift_beginAccess();
  v19 = *(v11 + 104);
  v20 = *(v11 + 112);
  v21 = *(v11 + 120);
  v22 = *(v11 + 128);
  v23 = *(v11 + 136);
  v24 = *(v11 + 144);
  *(v11 + 104) = v27;
  *(v11 + 120) = v28;
  *(v11 + 136) = v17;
  *(v11 + 144) = v18;
  sub_2722706B8(v19, v20, v21, v22, v23);
  v25 = sub_2722591B0();
  (*(*v25 + 296))();
  sub_2722039C8(a1);
  if (v5)
  {
  }

  return v25;
}

uint64_t VAFeatureExtractingEncoder.init(subEncoder:featureExtractor:vadModel:config:useCMVN:)(uint64_t *a1, void *a2, uint64_t a3, void *a4, char a5)
{
  *(v5 + 104) = 0u;
  *(v5 + 120) = 0u;
  *(v5 + 136) = 0u;
  *(v5 + 88) = 0u;
  *(v5 + 56) = a2;
  sub_27221629C(a1, v5 + 16);
  *(v5 + 64) = a3;
  *(v5 + 72) = a4;
  *(v5 + 80) = -1;

  v12 = a4;
  v13 = a2;
  if (a5)
  {
    v14 = sub_272323818();
    v15 = sub_272323820();
    v16 = sub_272241B00();
    sub_272323828(v14, v15, v16, v29);
    v27 = v29[0];
    v28 = v29[1];
    v17 = v30;
    v18 = v31;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v27 = 0u;
    v28 = 0u;
  }

  swift_beginAccess();
  v19 = *(v5 + 104);
  v20 = *(v5 + 112);
  v21 = *(v5 + 120);
  v22 = *(v5 + 128);
  v23 = *(v5 + 136);
  v24 = *(v5 + 144);
  *(v5 + 104) = v27;
  *(v5 + 120) = v28;
  *(v5 + 136) = v17;
  *(v5 + 144) = v18;
  sub_2722706B8(v19, v20, v21, v22, v23);
  v25 = sub_2722591B0();
  (*(*v25 + 296))();
  sub_2722039C8(a1);
  if (v6)
  {
  }

  return v25;
}

void sub_2722B828C()
{
  v2 = v0;
  type metadata accessor for VACircularMatrixBuffer();
  v3 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & **(v0 + 72)) + 0x88);
  v5 = v4();
  v6 = (*((*v3 & *v5) + 0x178))();

  v7 = v4();
  v8 = (*((*v3 & *v7) + 0x148))();

  v9 = sub_272302780(v6, v8);
  v10 = (*(*v2 + 216))(v9);
  if (v2[8])
  {
    v11 = (v4)(v10);
    v12 = (*((*MEMORY[0x277D85000] & *v11) + 0x148))();

    v13 = sub_272302780(66, v12);
    (*(*v2 + 240))(v13);
  }

  v14 = *(*v2 + 192);
  v15 = v14(0);
  v16 = (v4)(v15);
  v17 = (*((*MEMORY[0x277D85000] & *v16) + 0x118))();

  if (v17 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  if (v17)
  {
    v18 = sub_272377B5C();
    *(v18 + 16) = v17;
    bzero((v18 + 32), 4 * v17);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  v19 = v4();
  v20 = (*((*MEMORY[0x277D85000] & *v19) + 0x178))();

  if (v20 < 0)
  {
    goto LABEL_14;
  }

  if (v20)
  {
    while (1)
    {
      (*(*v2 + 312))(v18, 0);
      if (v1)
      {
        break;
      }

      if (!--v20)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:

    v14(0);
  }
}

void sub_2722B86DC(uint64_t a1, int a2)
{
  v4 = v3;
  v5 = v2;
  v8 = ((*v2)[26])();
  if (!v8)
  {
    sub_2722032B4();
    swift_allocError();
    *v23 = 0xD000000000000035;
    v23[1] = 0x800000027238DB20;
    swift_willThrow();
    return;
  }

  v9 = v8;
  v10 = (*v2)[23];
  if (v10() < 0)
  {
    v24 = 0x800000027238DBD0;
    sub_2722032B4();
    swift_allocError();
    v26 = 0xD00000000000002ALL;
LABEL_15:
    *v25 = v26;
    v25[1] = v24;
    swift_willThrow();
LABEL_16:

    return;
  }

  LODWORD(v48) = a2;
  v11 = MEMORY[0x277D85000];
  v45 = *((*MEMORY[0x277D85000] & *v2[9]) + 0x88);
  v12 = v45();
  v13 = (*((*v11 & *v12) + 0x118))();

  if (*(a1 + 16) != v13)
  {
    v24 = 0x800000027238DB60;
    sub_2722032B4();
    swift_allocError();
    v26 = 0xD000000000000033;
    goto LABEL_15;
  }

  v14 = ((*v5)[25])(v46);
  if (__OFADD__(*v15, 1))
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  ++*v15;
  v14(v46, 0);
  v16 = (*((*MEMORY[0x277D85000] & *v5[7]) + 0x170))(a1);
  v17 = v5[8];
  if (v17)
  {
    v18 = ((*v5)[29])();
    if (v18)
    {
      (*(*v18 + 168))(v16);
    }
  }

  ((*v5)[32])(v47);
  if (v47[4])
  {
    v44 = v17;
    sub_2722B90A4(v47);
    v19 = ((*v5)[34])(v46);
    if (!*(v20 + 32))
    {
LABEL_35:
      __break(1u);
      return;
    }

    v21 = v19;
    v22 = sub_272323A58(v16);
    if (v3)
    {
      v21(v46, 1);

      return;
    }

    v27 = v22;

    v21(v46, 0);
    v16 = v27;
    v17 = v44;
  }

  (*(*v9 + 168))(v16);

  if (v48 != 2)
  {
    if ((v48 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  v29 = (v10)(v28);
  v30 = v45();
  v31 = (*((*MEMORY[0x277D85000] & *v30) + 0x160))();

  if (!v31)
  {
    goto LABEL_33;
  }

  if (v29 == 0x8000000000000000 && v31 == -1)
  {
    goto LABEL_34;
  }

  if (v29 % v31)
  {
LABEL_23:
    v32 = (*(*v9 + 176))();

    type metadata accessor for VAFeatureExtractingEncoderOutput();
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    *(v33 + 32) = 0;
    *(v33 + 40) = 0;
    *(v33 + 24) = v32;
    return;
  }

LABEL_25:
  v34 = (*(*v9 + 176))();
  if (!v17)
  {
LABEL_30:

    v24 = 0x800000027238DBA0;
    sub_2722032B4();
    swift_allocError();
    v26 = 0xD000000000000024;
    goto LABEL_15;
  }

  v35 = (*v5)[29];

  v37 = v35(v36);
  if (!v37)
  {

    goto LABEL_30;
  }

  (*(*v37 + 176))();
  v38 = (*(*v17 + 128))();
  if (v4)
  {

    goto LABEL_16;
  }

  v48 = v38;

  v40 = v5[5];
  v39 = v5[6];
  sub_27220300C(v5 + 2, v40);
  v41 = (v39[1])(v34, v40, v39);

  type metadata accessor for VAFeatureExtractingEncoderOutput();
  v42 = swift_allocObject();
  *(v42 + 16) = 1;
  v43 = v48;
  *(v42 + 24) = v34;
  *(v42 + 32) = v43;
  *(v42 + 40) = v41;
}

uint64_t VAFeatureExtractingEncoderOutput.__allocating_init(hasNewFeature:featureExtractionBuffer:vadBuffer:encoderOutput:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  return result;
}

uint64_t sub_2722B8F0C()
{
  sub_2722039C8((v0 + 16));

  v1 = *(v0 + 64);

  v2 = *(v0 + 88);

  v3 = *(v0 + 96);

  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 136);
  v9 = *(v0 + 144);

  return sub_2722706B8(v4, v5, v6, v7, v8);
}

uint64_t VAFeatureExtractingEncoder.deinit()
{
  v0 = VAAudioEncoderModel.deinit();
  sub_2722039C8((v0 + 16));

  v1 = *(v0 + 64);

  v2 = *(v0 + 88);

  v3 = *(v0 + 96);

  v4 = *(v0 + 144);
  sub_2722706B8(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));
  return v0;
}

uint64_t VAFeatureExtractingEncoder.__deallocating_deinit()
{
  VAFeatureExtractingEncoder.deinit();

  return swift_deallocClassInstance();
}

uint64_t VAFeatureExtractingEncoderOutput.init(hasNewFeature:featureExtractionBuffer:vadBuffer:encoderOutput:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  return v4;
}

uint64_t sub_2722B90A4(uint64_t a1)
{
  v2 = sub_2721F065C(&qword_280882850, &qword_272382990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *VAFeatureExtractingEncoderOutput.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t VAFeatureExtractingEncoderOutput.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t sub_2722B92E8()
{
  sub_27221982C(0, &qword_280882130, 0x277D86200);
  result = OS_os_log.init(category:)();
  qword_280893AB8 = result;
  return result;
}

uint64_t *sub_2722B9360()
{
  if (qword_28088DF88 != -1)
  {
    swift_once();
  }

  return &qword_280893AC0;
}

id FeatureExtract.init(config:)(void *a1)
{
  v2 = v1;
  v63 = a1;
  v62 = sub_272377EDC();
  v66 = *(v62 - 8);
  v3 = *(v66 + 64);
  MEMORY[0x28223BE20](v62);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_272377ECC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_2723776EC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v60 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR___FeatureExtractObjc_audioSampleIngestionBuffer;
  v12 = *sub_272376ECC();
  v64 = v11;
  *&v2[v11] = v12;
  v52 = OBJC_IVAR___FeatureExtractObjc_audioSampleWorkBuffer;
  *&v2[OBJC_IVAR___FeatureExtractObjc_audioSampleWorkBuffer] = v12;
  v13 = MEMORY[0x277D84F90];
  v53 = OBJC_IVAR___FeatureExtractObjc_slidingCmvnBuffer;
  *&v2[OBJC_IVAR___FeatureExtractObjc_slidingCmvnBuffer] = MEMORY[0x277D84F90];
  v54 = OBJC_IVAR___FeatureExtractObjc_spliceBuffer;
  *&v2[OBJC_IVAR___FeatureExtractObjc_spliceBuffer] = v13;
  v55 = OBJC_IVAR___FeatureExtractObjc_nnetIntakeBuffer;
  *&v2[OBJC_IVAR___FeatureExtractObjc_nnetIntakeBuffer] = v13;
  *&v2[OBJC_IVAR___FeatureExtractObjc_spliceBufferCounter] = 0;
  *&v2[OBJC_IVAR___FeatureExtractObjc_spliceBufferCounterAll] = 0;
  *&v2[OBJC_IVAR___FeatureExtractObjc_frameCounter] = 0;
  v14 = OBJC_IVAR___FeatureExtractObjc_fftCalculator;
  type metadata accessor for FFTCalculator();
  swift_retain_n();
  v15 = sub_2722B7660();
  v51 = v14;
  *&v2[v14] = v15;
  v16 = sub_272377B5C();
  *(v16 + 16) = 40;
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0u;
  *(v16 + 64) = 0u;
  *(v16 + 80) = 0u;
  *(v16 + 96) = 0u;
  *(v16 + 112) = 0u;
  *(v16 + 128) = 0u;
  *(v16 + 144) = 0u;
  *(v16 + 160) = 0u;
  *(v16 + 176) = 0u;
  v50 = OBJC_IVAR___FeatureExtractObjc_cmvnSlidingWindowSum;
  *&v2[OBJC_IVAR___FeatureExtractObjc_cmvnSlidingWindowSum] = v16;
  *&v2[OBJC_IVAR___FeatureExtractObjc_cmvnBufferCount] = 0;
  v65 = OBJC_IVAR___FeatureExtractObjc_serialWorkQueue;
  sub_27221982C(0, &qword_280881910, 0x277D85C78);
  v61 = "nBuffer";
  sub_2723776DC();
  v68 = v13;
  v58 = sub_2722C2C10(&qword_280881918, MEMORY[0x277D85230]);
  v57 = sub_2721F065C(&qword_280881920, &qword_27237C500);
  v59 = sub_2722C1724(&qword_280881928, &qword_280881920, &qword_27237C500);
  sub_27237815C();
  v17 = *MEMORY[0x277D85260];
  v18 = *(v66 + 104);
  v66 += 104;
  v56 = v5;
  v19 = v62;
  v18(v5, v17, v62);
  *&v2[v65] = sub_272377F0C();
  v20 = OBJC_IVAR___FeatureExtractObjc_stateAccessQueue;
  v61 = "FeatureExtractSerialQueue";
  sub_2723776CC();
  v68 = MEMORY[0x277D84F90];
  sub_27237815C();
  v21 = v19;
  v22 = v20;
  v18(v56, v17, v21);
  *&v2[v20] = sub_272377F0C();
  v23 = OBJC_IVAR___FeatureExtractObjc_dataAvailableSem;
  *&v2[v23] = dispatch_semaphore_create(0);
  v24 = OBJC_IVAR___FeatureExtractObjc_allProcessedAfterStopSem;
  *&v2[v24] = dispatch_semaphore_create(0);
  v2[OBJC_IVAR___FeatureExtractObjc_stopSignaled] = 0;
  v25 = &v2[OBJC_IVAR___FeatureExtractObjc_acousticModelOutputAvailable];
  *v25 = 0;
  v25[1] = 0;
  v2[OBJC_IVAR___FeatureExtractObjc_isRunning] = 0;
  *&v2[OBJC_IVAR___FeatureExtractObjc_spliceBufferLength] = 7;
  *&v2[OBJC_IVAR___FeatureExtractObjc_splicedVectorDim] = 280;
  *&v2[OBJC_IVAR___FeatureExtractObjc_numSamplesRemovedFromAudioSampleInjestionBuffer] = 0;
  *&v2[OBJC_IVAR___FeatureExtractObjc_audioSampleIngestionBufferStartIndex] = 0;
  v26 = OBJC_IVAR___FeatureExtractObjc_frameDuration;
  *&v2[OBJC_IVAR___FeatureExtractObjc_frameDuration] = 1022739087;
  v2[OBJC_IVAR___FeatureExtractObjc_streamingMode] = 1;
  v27 = OBJC_IVAR___FeatureExtractObjc_config;
  v28 = v63;
  *&v2[OBJC_IVAR___FeatureExtractObjc_config] = v63;
  type metadata accessor for NeuralNet();
  v29 = v28;
  v30 = sub_27225A534(v29);
  if (v30)
  {
    *&v2[OBJC_IVAR___FeatureExtractObjc_nn] = v30;
    v31 = v64;
    swift_beginAccess();

    v32 = *&v2[v31];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (*(*&v2[v31] + 16) < 48000 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2722374C0(isUniquelyReferenced_nonNull_native, 48000);
    }

    v34 = swift_endAccess();
    v35 = MEMORY[0x277D85000];
    v36 = (*((*MEMORY[0x277D85000] & *v29) + 0x90))(v34);
    v37 = (*((*v35 & *v36) + 0xE8))();

    *&v2[v26] = (v37 * 160.0) / 16000.0;
    v38 = type metadata accessor for FeatureExtract();
    v67.receiver = v2;
    v67.super_class = v38;
    v39 = objc_msgSendSuper2(&v67, sel_init);
  }

  else
  {

    v40 = *&v2[v64];

    v41 = *&v2[v52];

    v42 = *&v2[v53];

    v43 = *&v2[v54];

    v44 = *&v2[v55];

    v45 = *&v2[v51];

    v46 = *&v2[v50];

    v47 = v25[1];
    sub_272273524(*v25);

    type metadata accessor for FeatureExtract();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v39;
}

uint64_t sub_2722B9B28(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___FeatureExtractObjc_acousticModelOutputAvailable);
  v4 = *(v2 + OBJC_IVAR___FeatureExtractObjc_acousticModelOutputAvailable);
  v5 = *(v2 + OBJC_IVAR___FeatureExtractObjc_acousticModelOutputAvailable + 8);
  *v3 = a1;
  v3[1] = a2;

  return sub_272273524(v4);
}

void sub_2722B9C18(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___FeatureExtractObjc_config);
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v3) + 0x90);
  v6 = v3;
  v7 = v5();

  (*((*v4 & *v7) + 0xA8))(a1);
}

uint64_t sub_2722B9E08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_2723776AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2723776EC();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v21);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *&v3[OBJC_IVAR___FeatureExtractObjc_serialWorkQueue];
  v16 = swift_allocObject();
  v16[2] = v3;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = ObjectType;
  aBlock[4] = sub_2722C0EAC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2722454D0;
  aBlock[3] = &unk_28818D358;
  v17 = _Block_copy(aBlock);
  v18 = v3;

  sub_2723776CC();
  v22 = MEMORY[0x277D84F90];
  sub_2722C2C10(&qword_280882928, MEMORY[0x277D85198]);
  sub_2721F065C(&qword_280882930, &qword_272382AD8);
  sub_2722C1724(&qword_280882938, &qword_280882930, &qword_272382AD8);
  sub_27237815C();
  MEMORY[0x2743C5050](0, v15, v11, v17);
  _Block_release(v17);
  (*(v8 + 8))(v11, v7);
  (*(v12 + 8))(v15, v21);
}

uint64_t sub_2722BA0E8(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR___FeatureExtractObjc_audioSampleIngestionBuffer;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  v7 = v6[3];
  v8 = OBJC_IVAR___FeatureExtractObjc_audioSampleIngestionBufferStartIndex;
  v9 = *(a1 + OBJC_IVAR___FeatureExtractObjc_audioSampleIngestionBufferStartIndex);
  v10 = __OFSUB__(v7, v9);
  v11 = v7 - v9;
  if (v10)
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v11 < 1)
  {
    return result;
  }

  v10 = __OFADD__(v9, v11);
  v12 = v9 + v11;
  if (v10)
  {
    goto LABEL_34;
  }

  *(a1 + OBJC_IVAR___FeatureExtractObjc_audioSampleIngestionBufferStartIndex) = v12;
  v10 = __OFSUB__(v12, 1);
  v13 = v12 - 1;
  if (v10)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v13 < v9)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v14 = (v13 + 1);
  if (__OFADD__(v13, 1))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v9 < 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v6[3] < v14)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v32 = a2;
  v15 = (a1 + OBJC_IVAR___FeatureExtractObjc_audioSampleWorkBuffer);
  v16 = swift_beginAccess();
  v17 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);

  result = sub_2722C2308(v6 + 2, (v6 + 5), sub_2722C34AC);
  v18 = v14 - v9;
  v19 = __OFSUB__(v14, v9);
  if ((result & 1) == 0)
  {
    result = swift_endAccess();
    if (!v19)
    {
      goto LABEL_22;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v19)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v18 > 0)
  {
    result = *v15;
    v20 = *(*v15 + 24);
    v21 = v20 + v18;
    if (__OFADD__(v20, v18))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v15;
    if (*(*v15 + 16) < v21 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2722374C0(isUniquelyReferenced_nonNull_native, v21);
      v23 = *v15;
    }

    sub_2722C18D0((v23 + 16), v23 + 40, v14 - v9, v9, v14, v6);
  }

  result = swift_endAccess();
LABEL_22:
  if (__OFADD__(*v32, v18))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  *v32 += v18;
  if (*(a1 + OBJC_IVAR___FeatureExtractObjc_streamingMode))
  {
    v24 = *(a1 + v4);
    v25 = *(v24 + 24);
    if (v25 >= 48001)
    {
      v26 = v25 - 48000;
      v27 = *(a1 + OBJC_IVAR___FeatureExtractObjc_numSamplesRemovedFromAudioSampleInjestionBuffer);
      v10 = __OFADD__(v27, v25 - 48000);
      v28 = v27 + v25 - 48000;
      if (!v10)
      {
        *(a1 + OBJC_IVAR___FeatureExtractObjc_numSamplesRemovedFromAudioSampleInjestionBuffer) = v28;
        result = swift_beginAccess();
        if (*(v24 + 24) >= v26)
        {
          v29 = *(a1 + v4);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_272237B98();
          }

          sub_272237C38((*(a1 + v4) + 16), *(a1 + v4) + 40, v26);
          swift_endAccess();

          v30 = *(a1 + v8);
          v10 = __OFSUB__(v30, v26);
          v31 = v30 - v26;
          if (!v10)
          {
            *(a1 + v8) = v31;
            return result;
          }

          goto LABEL_46;
        }

LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        return result;
      }

LABEL_44:
      __break(1u);
      goto LABEL_45;
    }
  }
}

uint64_t sub_2722BA430()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v1[OBJC_IVAR___FeatureExtractObjc_stateAccessQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = ObjectType;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2722C1778;
  *(v5 + 24) = v4;
  v9[4] = sub_27225836C;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_27225537C;
  v9[3] = &unk_28818D3D0;
  v6 = _Block_copy(v9);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

id sub_2722BA5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = OBJC_IVAR___FeatureExtractObjc_frameDuration;
  v12 = *(v4 + OBJC_IVAR___FeatureExtractObjc_frameDuration);
  v13 = ((v12 * a1) * 16000.0) + -560.0;
  if (v13 <= -9.2234e18)
  {
    goto LABEL_91;
  }

  if (v13 >= 9.2234e18)
  {
    goto LABEL_92;
  }

  v14 = fabs(((v12 * a1) * 16000.0) + -560.0);
  v15 = ((v12 * a2) * 16000.0) + 560.0;
  if (v14 > 2139095039 || (LODWORD(v15) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_93;
  }

  if (v15 <= -9.2234e18)
  {
    goto LABEL_94;
  }

  if (v15 >= 9.2234e18)
  {
    goto LABEL_95;
  }

  v3 = v4;
  v8 = v13;
  v9 = OBJC_IVAR___FeatureExtractObjc_numSamplesRemovedFromAudioSampleInjestionBuffer;
  v16 = *(v4 + OBJC_IVAR___FeatureExtractObjc_numSamplesRemovedFromAudioSampleInjestionBuffer);
  v7 = v13 - v16;
  if (__OFSUB__(v13, v16))
  {
    goto LABEL_96;
  }

  v5 = a3;
  v10 = v15;
  if ((v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

  v6 = a2;
  if (qword_28088DF80 != -1)
  {
    goto LABEL_112;
  }

LABEL_10:
  sub_2721F065C(&qword_280881CB0, qword_27237D820);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_27237AF90;
  v18 = MEMORY[0x277D83B88];
  v19 = MEMORY[0x277D83C10];
  *(v17 + 56) = MEMORY[0x277D83B88];
  *(v17 + 64) = v19;
  *(v17 + 32) = v8;
  v20 = *(v3 + v9);
  *(v17 + 96) = v18;
  *(v17 + 104) = v19;
  *(v17 + 72) = v20;
  OS_os_log.error(_:_:)("startSample %d - removed %d < 0, using 0", 40, 2, v17);

  v7 = 0;
  a2 = v6;
LABEL_11:
  *v5 = a2;
  v21 = *(v3 + v9);
  v6 = v10 - v21;
  if (!__OFSUB__(v10, v21))
  {
    if (v6 < 0)
    {
      if (qword_28088DF80 != -1)
      {
        swift_once();
      }

      sub_2721F065C(&qword_280881CB0, qword_27237D820);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_27237AF90;
      v23 = MEMORY[0x277D83B88];
      v24 = MEMORY[0x277D83C10];
      *(v22 + 56) = MEMORY[0x277D83B88];
      *(v22 + 64) = v24;
      *(v22 + 32) = v10;
      v25 = *(v3 + v9);
      *(v22 + 96) = v23;
      *(v22 + 104) = v24;
      *(v22 + 72) = v25;
      OS_os_log.error(_:_:)("endSample %d - removed %d < 0, using 0", 38, 2, v22);

      v6 = 0;
    }

    v8 = OBJC_IVAR___FeatureExtractObjc_audioSampleIngestionBuffer;
    swift_beginAccess();
    v26 = *(*(v3 + v8) + 24);
    if (v6 >= v26)
    {
      v6 = v26 - 1;
      if (!__OFSUB__(v26, 1))
      {
        v27 = *(v3 + v9);
        v28 = __OFADD__(v6, v27);
        v29 = (v6 + v27);
        if (!v28)
        {
          v28 = __OFSUB__(v29, 560);
          v30 = (v29 - 560);
          if (!v28)
          {
            v31 = v30 / (*(v11 + v3) * 16000.0);
            if (COERCE__INT64(fabs(v31)) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v31 > -9.22337204e18)
              {
                if (v31 < 9.22337204e18)
                {
                  *v5 = v31;
                  if (qword_28088DF80 != -1)
                  {
                    goto LABEL_110;
                  }

                  goto LABEL_24;
                }

                goto LABEL_109;
              }

              goto LABEL_108;
            }

            goto LABEL_107;
          }

          goto LABEL_106;
        }

        goto LABEL_105;
      }

      goto LABEL_104;
    }

    goto LABEL_25;
  }

LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
  do
  {
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
    swift_once();
LABEL_24:
    sub_2721F065C(&qword_280881CB0, qword_27237D820);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_27237AFA0;
    v33 = MEMORY[0x277D83B88];
    v34 = MEMORY[0x277D83C10];
    *(v32 + 56) = MEMORY[0x277D83B88];
    *(v32 + 64) = v34;
    v35 = *(v3 + v9);
    *(v32 + 32) = v10;
    *(v32 + 96) = v33;
    *(v32 + 104) = v34;
    *(v32 + 72) = v35;
    v36 = *(v3 + v8);
    v37 = *(v36 + 24);
    *(v32 + 136) = v33;
    *(v32 + 144) = v34;
    *(v32 + 112) = v37;
    v38 = *(v36 + 24);
    *(v32 + 176) = v33;
    *(v32 + 184) = v34;
    *(v32 + 152) = v38;
    v39 = *v5;
    *(v32 + 216) = v33;
    *(v32 + 224) = v34;
    *(v32 + 192) = v39;
    OS_os_log.error(_:_:)("Getting data beyond end of buffer: (endSample %d - removed %d) > count %d, so using %d, actual end frame=%d", 107, 2, v32);

LABEL_25:
    if (__OFSUB__(v6, v7))
    {
      goto LABEL_98;
    }

    if (!(v6 | v7))
    {
      return 0;
    }

    v40 = (v6 - v7) / 16000.0;
    v10 = &off_27237A000;
    v41 = MEMORY[0x277D839F8];
    v42 = MEMORY[0x277D83A80];
    if (v6 < 0)
    {
      v6 = *(*(v3 + v8) + 24);
      if (qword_28088DF80 != -1)
      {
        swift_once();
      }

      sub_2721F065C(&qword_280881CB0, qword_27237D820);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_27237AF80;
      *(v5 + 56) = v41;
      *(v5 + 64) = v42;
      *(v5 + 32) = v40;
      v43 = "Keyword may be trimmed at the end, audio duration is %5.3lf secs";
      v44 = 64;
    }

    else
    {
      if (qword_28088DF80 != -1)
      {
        swift_once();
      }

      sub_2721F065C(&qword_280881CB0, qword_27237D820);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_27237AF80;
      *(v5 + 56) = v41;
      *(v5 + 64) = v42;
      *(v5 + 32) = v40;
      v43 = "Keyword audio duration is %5.3lf secs";
      v44 = 37;
    }

    OS_os_log.info(_:_:)(v43, v44, 2, v5);

    v9 = v6 - v7;
    if (v6 < v7)
    {
      goto LABEL_99;
    }

    v10 = (v6 + 1);
    if (__OFADD__(v6, 1))
    {
      goto LABEL_100;
    }

    v46 = *(v3 + v8);
    if (v46[3] < v10)
    {
      goto LABEL_101;
    }

    v47 = v10 - v7;
    if (__OFSUB__(v10, v7))
    {
      goto LABEL_102;
    }

    if (v47)
    {
      v3 = sub_27223743C(v10 - v7, 0);
      v11 = &v78;
      v8 = (v3 + 4);
      v79 = v7;
      v80 = (v6 + 1);
      v81 = v46;
      v48 = MEMORY[0x28223BE20](v3);
      MEMORY[0x28223BE20](v48);
      v6 = (v46 + 5);
      swift_retain_n();
      v5 = 0;
      sub_272237D54(v46 + 2, (v46 + 5), sub_272238248);
      if (v50)
      {
        if (v47 < 1)
        {
          goto LABEL_88;
        }

        if (v7 != v10)
        {
          v51 = 0;
          while (v7 + v51 < v10)
          {
            if (v7 + v51 >= v46[3])
            {
              goto LABEL_90;
            }

            v52 = v46[4];
            if (v7 + v51 + v52 >= v46[2])
            {
              v53 = v46[2];
            }

            else
            {
              v53 = 0;
            }

            *(v8 + 4 * v51) = *(v6 + 4 * (v7 + v51 + v52 - v53));
            if (v9 != v51 && v9 + 1 != ++v51)
            {
              continue;
            }

            goto LABEL_51;
          }

          goto LABEL_89;
        }

LABEL_51:
      }

      else
      {
        v5 = v49;

        if (v5 != v47)
        {
          __break(1u);
LABEL_112:
          swift_once();
          goto LABEL_10;
        }
      }
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
    }

    v5 = v3[2];
    v54 = MEMORY[0x277D84F90];
    if (v5)
    {
      v79 = MEMORY[0x277D84F90];
      sub_272215F8C(0, v5, 0);
      v54 = v79;
      v6 = (v3 + 4);
      v7 = 2139095039;
      v8 = 3338666240;
      while (1)
      {
        v55 = *v6;
        if ((*v6 & 0x7FFFFFFFu) > 0x7F7FFFFF)
        {
          break;
        }

        if (v55 <= -32769.0)
        {
          goto LABEL_86;
        }

        if (v55 >= 32768.0)
        {
          goto LABEL_87;
        }

        v79 = v54;
        v9 = *(v54 + 16);
        v56 = *(v54 + 24);
        if (v9 >= v56 >> 1)
        {
          sub_272215F8C((v56 > 1), v9 + 1, 1);
          v54 = v79;
        }

        *(v54 + 16) = v9 + 1;
        *(v54 + 2 * v9 + 32) = v55;
        v6 += 4;
        if (!--v5)
        {
          goto LABEL_63;
        }
      }

      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

LABEL_63:
    result = [objc_allocWithZone(MEMORY[0x277CB83A8]) initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:16000.0];
    if (!result)
    {
      __break(1u);
      goto LABEL_114;
    }

    v58 = *(v54 + 16);
  }

  while (HIDWORD(v58));
  v59 = result;
  result = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:result frameCapacity:v58];
  if (!result)
  {
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v45 = result;
  [result setFrameLength_];
  result = [v45 int16ChannelData];
  if (!result)
  {
LABEL_115:
    __break(1u);
    return result;
  }

  v60 = result;

  v61 = *(v54 + 16);
  if (v61)
  {
    v62 = *v60;
    if (v61 < 4 || (v62 - v54 - 32) < 0x20)
    {
      v63 = 0;
      goto LABEL_71;
    }

    if (v61 >= 0x10)
    {
      v63 = v61 & 0x7FFFFFFFFFFFFFF0;
      v69 = (v54 + 48);
      v70 = (v62 + 16);
      v71 = v61 & 0x7FFFFFFFFFFFFFF0;
      do
      {
        v72 = *v69;
        *(v70 - 1) = *(v69 - 1);
        *v70 = v72;
        v69 += 2;
        v70 += 2;
        v71 -= 16;
      }

      while (v71);
      if (v61 != v63)
      {
        if ((v61 & 0xC) == 0)
        {
          goto LABEL_71;
        }

        goto LABEL_81;
      }
    }

    else
    {
      v63 = 0;
LABEL_81:
      v73 = v63;
      v63 = v61 & 0x7FFFFFFFFFFFFFFCLL;
      v74 = (2 * v73 + v54 + 32);
      v75 = (v62 + 2 * v73);
      v76 = v73 - (v61 & 0x7FFFFFFFFFFFFFFCLL);
      do
      {
        v77 = *v74++;
        *v75++ = v77;
        v76 += 4;
      }

      while (v76);
      if (v61 != v63)
      {
LABEL_71:
        v64 = v61 - v63;
        v65 = 2 * v63;
        v66 = (v62 + v65);
        v67 = (v65 + v54 + 32);
        do
        {
          v68 = *v67++;
          *v66++ = v68;
          --v64;
        }

        while (v64);
      }
    }
  }

  return v45;
}

uint64_t sub_2722BAF90(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v20 = MEMORY[0x277D84F90];
  sub_2722005CC(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v20;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v15 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v18 = a3 + v8;
      a1(&v19, &v18);
      if (v4)
      {
        goto LABEL_22;
      }

      v11 = v19;
      v20 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2722005CC((v12 > 1), v13 + 1, 1);
        v6 = v20;
      }

      *(v6 + 16) = v13 + 1;
      *(v6 + 8 * v13 + 32) = v11;
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v15 == ++v8)
      {
        goto LABEL_19;
      }

      if (v10 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_2722BB104(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_272377DEC();
  if (!v26)
  {
    return sub_272377B4C();
  }

  v48 = v26;
  v52 = sub_2723782EC();
  v39 = sub_2723782FC();
  sub_27237828C();
  result = sub_272377DCC();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_272377E3C();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_2723782DC();
      result = sub_272377E0C();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2722BB58C(uint64_t a1, char *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v28 = 0;
  v7 = *&v3[OBJC_IVAR___FeatureExtractObjc_stateAccessQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = &v28;
  *(v8 + 24) = v3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_2722C3598;
  *(v9 + 24) = v8;
  v26 = sub_272259128;
  v27 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_27225537C;
  v25 = &unk_28818D448;
  v10 = _Block_copy(&aBlock);
  v11 = v3;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v28 & 1) == 0)
  {
    if (qword_28088DF80 == -1)
    {
LABEL_6:
      sub_2721F065C(&qword_280881CB0, qword_27237D820);
      v18 = swift_allocObject();
      v19 = MEMORY[0x277D83B88];
      *(v18 + 16) = xmmword_27237AF80;
      v20 = MEMORY[0x277D83C10];
      *(v18 + 56) = v19;
      *(v18 + 64) = v20;
      *(v18 + 32) = a2;
      OS_os_log.info(_:_:)("Ignoring addSamples %d float bytes when not running", 51, 2, v18);

      v17 = 0;
      return sub_272273524(v17);
    }

LABEL_10:
    swift_once();
    goto LABEL_6;
  }

  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a2;
  v12[4] = a1;
  v12[5] = ObjectType;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2722C2404;
  *(v13 + 24) = v12;
  v26 = sub_272259128;
  v27 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_27225537C;
  v25 = &unk_28818D4C0;
  v14 = _Block_copy(&aBlock);
  a2 = v11;

  dispatch_sync(v7, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v16 = *&a2[OBJC_IVAR___FeatureExtractObjc_dataAvailableSem];
  sub_272377F6C();

  v17 = sub_2722C2404;
  return sub_272273524(v17);
}

uint64_t sub_2722BB96C(uint64_t a1, char *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v28 = 0;
  v7 = *&v3[OBJC_IVAR___FeatureExtractObjc_stateAccessQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = &v28;
  *(v8 + 24) = v3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_2722C25D0;
  *(v9 + 24) = v8;
  v26 = sub_272259128;
  v27 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_27225537C;
  v25 = &unk_28818D538;
  v10 = _Block_copy(&aBlock);
  v11 = v3;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v28 & 1) == 0)
  {
    if (qword_28088DF80 == -1)
    {
LABEL_6:
      sub_2721F065C(&qword_280881CB0, qword_27237D820);
      v18 = swift_allocObject();
      v19 = MEMORY[0x277D83B88];
      *(v18 + 16) = xmmword_27237AF80;
      v20 = MEMORY[0x277D83C10];
      *(v18 + 56) = v19;
      *(v18 + 64) = v20;
      *(v18 + 32) = a2;
      OS_os_log.info(_:_:)("Ignoring addSamples %d int16 bytes when not running", 51, 2, v18);

      v17 = 0;
      return sub_272273524(v17);
    }

LABEL_10:
    swift_once();
    goto LABEL_6;
  }

  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a2;
  v12[4] = a1;
  v12[5] = ObjectType;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2722C25E8;
  *(v13 + 24) = v12;
  v26 = sub_272259128;
  v27 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_27225537C;
  v25 = &unk_28818D5B0;
  v14 = _Block_copy(&aBlock);
  a2 = v11;

  dispatch_sync(v7, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v16 = *&a2[OBJC_IVAR___FeatureExtractObjc_dataAvailableSem];
  sub_272377F6C();

  v17 = sub_2722C25E8;
  return sub_272273524(v17);
}

uint64_t sub_2722BBD4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v26 = a1;
  v27 = a2;
  ObjectType = swift_getObjectType();
  v4 = sub_2723776AC();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &ObjectType - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2723776EC();
  v8 = *(v28 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v28);
  v11 = &ObjectType - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2723776BC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &ObjectType - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27221982C(0, &qword_280881910, 0x277D85C78);
  (*(v13 + 104))(v16, *MEMORY[0x277D851C8], v12);
  v17 = sub_272377F1C();
  (*(v13 + 8))(v16, v12);
  v18 = swift_allocObject();
  v19 = v26;
  v20 = v27;
  v18[2] = v3;
  v18[3] = v19;
  v21 = ObjectType;
  v18[4] = v20;
  v18[5] = v21;
  aBlock[4] = sub_2722C2818;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2722454D0;
  aBlock[3] = &unk_28818D600;
  v22 = _Block_copy(aBlock);
  v23 = v3;

  sub_2723776CC();
  v30 = MEMORY[0x277D84F90];
  sub_2722C2C10(&qword_280882928, MEMORY[0x277D85198]);
  sub_2721F065C(&qword_280882930, &qword_272382AD8);
  sub_2722C1724(&qword_280882938, &qword_280882930, &qword_272382AD8);
  sub_27237815C();
  MEMORY[0x2743C5050](0, v11, v7, v22);
  _Block_release(v22);

  (*(v29 + 8))(v7, v4);
  (*(v8 + 8))(v11, v28);
}

uint64_t sub_2722BC13C(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t sub_2722BC1D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v78 = a6;
  v76 = a4;
  v77 = a5;
  v74 = a2;
  v75 = a3;
  v69 = a1;
  v84 = a7;
  v87[36] = *MEMORY[0x277D85DE8];
  v85 = sub_272376E5C();
  v82 = *(v85 - 8);
  v7 = *(v82 + 64);
  MEMORY[0x28223BE20](v85);
  v72 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_272376C7C();
  v9 = *(v71 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v71);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2721F065C(&qword_280881A50, &unk_27237CA30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v68 - v15;
  v17 = sub_272376D5C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v73 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v70 = &v68 - v22;
  sub_2721F065C(&qword_280881A58, &unk_272382730);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27237AFA0;
  v24 = *MEMORY[0x277CB8280];
  *(inited + 32) = sub_27237782C();
  *(inited + 40) = v25;
  *(inited + 72) = MEMORY[0x277D84CC0];
  *(inited + 48) = 1819304813;
  v26 = *MEMORY[0x277CB8288];
  *(inited + 80) = sub_27237782C();
  *(inited + 88) = v27;
  v28 = MEMORY[0x277D83B88];
  *(inited + 120) = MEMORY[0x277D83B88];
  *(inited + 96) = 16;
  v29 = *MEMORY[0x277CB82A0];
  v30 = sub_27237782C();
  v31 = MEMORY[0x277D839B0];
  *(inited + 128) = v30;
  *(inited + 136) = v32;
  *(inited + 168) = v31;
  *(inited + 144) = 0;
  v33 = *MEMORY[0x277CB82E0];
  *(inited + 176) = sub_27237782C();
  *(inited + 184) = v34;
  *(inited + 216) = MEMORY[0x277D83A90];
  *(inited + 192) = 1182400512;
  v35 = *MEMORY[0x277CB82B0];
  *(inited + 224) = sub_27237782C();
  *(inited + 232) = v36;
  *(inited + 264) = v28;
  *(inited + 240) = 1;
  sub_27221651C(inited);
  swift_setDeallocating();
  sub_2721F065C(&qword_280881A60, &unk_27237CA40);
  swift_arrayDestroy();
  v37 = NSTemporaryDirectory();
  sub_27237782C();

  v81 = v18;
  v38 = *(v18 + 56);
  v83 = v17;
  v79 = v38;
  v80 = v18 + 56;
  v38(v16, 1, 1, v17);
  (*(v9 + 104))(v12, *MEMORY[0x277CC91D8], v71);
  v39 = v72;
  v40 = v70;
  sub_272376D4C();
  sub_272376E4C();
  v41 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  [v41 timeIntervalSince1970];

  v87[0] = 0;
  v87[1] = 0xE000000000000000;
  sub_27237820C();
  sub_2722C2C10(&qword_280881BA8, MEMORY[0x277CC95F0]);
  v42 = sub_27237862C();
  MEMORY[0x2743C4AD0](v42);

  MEMORY[0x2743C4AD0](95, 0xE100000000000000);
  MEMORY[0x2743C4AD0](v74, v75);
  MEMORY[0x2743C4AD0](95, 0xE100000000000000);
  MEMORY[0x2743C4AD0](v76, v77);
  MEMORY[0x2743C4AD0](95, 0xE100000000000000);
  sub_272377D2C();
  MEMORY[0x2743C4AD0](95, 0xE100000000000000);
  v86 = v78;
  v43 = sub_27237862C();
  MEMORY[0x2743C4AD0](v43);

  MEMORY[0x2743C4AD0](1986098990, 0xE400000000000000);
  v44 = v73;
  sub_272376CEC();

  v45 = objc_allocWithZone(MEMORY[0x277CB8398]);
  v46 = v44;
  v47 = sub_272376CCC();
  v48 = sub_27237770C();

  v87[0] = 0;
  v49 = [v45 initForWriting:v47 settings:v48 commonFormat:3 interleaved:1 error:v87];

  v50 = v87[0];
  if (v49)
  {
    v87[0] = 0;
    v51 = v50;
    if ([v49 writeFromBuffer:v69 error:v87])
    {
      v52 = v87[0];

      (*(v82 + 8))(v39, v85);
      v53 = v81;
      v54 = v83;
      (*(v81 + 8))(v40, v83);
      v55 = v84;
      (*(v53 + 32))(v84, v46, v54);
      v56 = v55;
      v57 = 0;
      goto LABEL_9;
    }

    v60 = v87[0];
    v59 = sub_272376C6C();

    swift_willThrow();
  }

  else
  {
    v58 = v87[0];
    v59 = sub_272376C6C();

    swift_willThrow();
  }

  v54 = v83;
  v61 = *(v81 + 8);
  v61(v46, v83);
  (*(v82 + 8))(v39, v85);
  v61(v40, v54);
  if (qword_28088DF80 != -1)
  {
    swift_once();
  }

  sub_2721F065C(&qword_280881CB0, qword_27237D820);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_27237AF80;
  swift_getErrorValue();
  v63 = sub_2723786CC();
  v65 = v64;
  *(v62 + 56) = MEMORY[0x277D837D0];
  *(v62 + 64) = sub_27225CAF0();
  *(v62 + 32) = v63;
  *(v62 + 40) = v65;
  OS_os_log.error(_:_:)("Error: %{public}@", 17, 2, v62);

  v57 = 1;
  v56 = v84;
LABEL_9:
  result = v79(v56, v57, 1, v54);
  v67 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2722BCBCC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_2721F0560(a1, a2);
  v15 = sub_2722BCD7C(a1, a2, a1, a2);
  (*((*MEMORY[0x277D85000] & *v7) + 0x3A0))(v15, a3, a4, a5, a6, a7);
}

void *sub_2722BCCC4@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    v7 = *(a2 + 16);
    v6 = *(a2 + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
LABEL_10:
      if (v5 + 1 >= 3)
      {
        v10 = v5 + (v5 >> 63);
        v11 = result;
        v12 = a4;
        v9 = sub_2722C2204(v5 / 2, 0);
        result = memcpy(v9 + 4, v11, v10 & 0xFFFFFFFFFFFFFFFELL);
        a4 = v12;
        goto LABEL_13;
      }

LABEL_11:
      v9 = MEMORY[0x277D84F90];
LABEL_13:
      *a4 = v9;
      return result;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a3);
    goto LABEL_10;
  }

  LODWORD(v5) = HIDWORD(a2) - a2;
  if (!__OFSUB__(HIDWORD(a2), a2))
  {
    v5 = v5;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_2722BCD7C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    v8 = v4;
    if (!v7)
    {
      v20[0] = a1;
      LOWORD(v20[1]) = a2;
      BYTE2(v20[1]) = BYTE2(a2);
      BYTE3(v20[1]) = BYTE3(a2);
      BYTE4(v20[1]) = BYTE4(a2);
      BYTE5(v20[1]) = BYTE5(a2);
      v9 = a3;
      v10 = a4;
      goto LABEL_10;
    }

    v16 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    v12 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    a1 = a1;
    v13 = v16;
    v14 = a3;
    v15 = a4;
LABEL_8:
    v8 = sub_2722C322C(a1, v13, v12, v14, v15);
    sub_2721F05C8(a3, a4);
    goto LABEL_12;
  }

  if (v7 == 2)
  {
    v11 = *(a1 + 24);
    v12 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    a1 = *(a1 + 16);
    v13 = v11;
    v14 = a3;
    v15 = a4;
    goto LABEL_8;
  }

  memset(v20, 0, 14);
  v9 = a3;
  v10 = a4;
  v8 = v4;
LABEL_10:
  sub_2722BCCC4(v20, v9, v10, &v19);
  sub_2721F05C8(a3, a4);
  if (!v8)
  {
    v8 = v19;
  }

LABEL_12:
  v17 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_2722BD170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  LODWORD(v90) = a6;
  v88 = a4;
  v89 = a5;
  v86 = a2;
  v87 = a3;
  v82 = a7;
  v95[36] = *MEMORY[0x277D85DE8];
  v93 = sub_272376E5C();
  v81 = *(v93 - 8);
  v8 = *(v81 + 64);
  MEMORY[0x28223BE20](v93);
  v92 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_272376C7C();
  v84 = *(v10 - 8);
  v85 = v10;
  v11 = *(v84 + 64);
  MEMORY[0x28223BE20](v10);
  v83 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2721F065C(&qword_280881A50, &unk_27237CA30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v76 - v15;
  v17 = sub_272376D5C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v91 = &v76 - v23;
  v76 = a1;
  v24 = *(a1 + 16);
  sub_2721F065C(&qword_280881A58, &unk_272382730);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27237AFA0;
  v26 = *MEMORY[0x277CB8280];
  *(inited + 32) = sub_27237782C();
  *(inited + 40) = v27;
  *(inited + 72) = MEMORY[0x277D84CC0];
  *(inited + 48) = 1819304813;
  v28 = *MEMORY[0x277CB8288];
  *(inited + 80) = sub_27237782C();
  *(inited + 88) = v29;
  v30 = MEMORY[0x277D83B88];
  *(inited + 120) = MEMORY[0x277D83B88];
  *(inited + 96) = 16;
  v31 = *MEMORY[0x277CB82A0];
  v32 = sub_27237782C();
  v33 = MEMORY[0x277D839B0];
  *(inited + 128) = v32;
  *(inited + 136) = v34;
  *(inited + 168) = v33;
  *(inited + 144) = 0;
  v35 = *MEMORY[0x277CB82E0];
  *(inited + 176) = sub_27237782C();
  *(inited + 184) = v36;
  *(inited + 216) = MEMORY[0x277D839F8];
  *(inited + 192) = 0x40CF400000000000;
  v37 = *MEMORY[0x277CB82B0];
  *(inited + 224) = sub_27237782C();
  *(inited + 232) = v38;
  *(inited + 264) = v30;
  *(inited + 240) = 1;
  sub_27221651C(inited);
  swift_setDeallocating();
  sub_2721F065C(&qword_280881A60, &unk_27237CA40);
  swift_arrayDestroy();
  v39 = NSTemporaryDirectory();
  sub_27237782C();

  v79 = v18;
  v80 = v17;
  v77 = *(v18 + 56);
  v78 = v18 + 56;
  v77(v16, 1, 1, v17);
  (*(v84 + 104))(v83, *MEMORY[0x277CC91D8], v85);
  sub_272376D4C();
  sub_272376E4C();
  v40 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  [v40 timeIntervalSince1970];

  v95[0] = 0;
  v95[1] = 0xE000000000000000;
  sub_27237820C();
  sub_2722C2C10(&qword_280881BA8, MEMORY[0x277CC95F0]);
  v41 = sub_27237862C();
  MEMORY[0x2743C4AD0](v41);

  MEMORY[0x2743C4AD0](95, 0xE100000000000000);
  MEMORY[0x2743C4AD0](v86, v87);
  MEMORY[0x2743C4AD0](95, 0xE100000000000000);
  MEMORY[0x2743C4AD0](v88, v89);
  MEMORY[0x2743C4AD0](95, 0xE100000000000000);
  sub_272377D2C();
  MEMORY[0x2743C4AD0](95, 0xE100000000000000);
  v94 = v90;
  v42 = sub_27237862C();
  MEMORY[0x2743C4AD0](v42);

  MEMORY[0x2743C4AD0](1986098990, 0xE400000000000000);
  sub_272376CEC();

  v43 = objc_allocWithZone(MEMORY[0x277CB8398]);
  v44 = sub_272376CCC();
  v45 = MEMORY[0x277D84F70];
  v46 = sub_27237770C();
  v95[0] = 0;
  v47 = [v43 initForWriting:v44 settings:v46 commonFormat:3 interleaved:1 error:v95];

  v48 = v95[0];
  if (v47)
  {
    v49 = v47;
  }

  else
  {
    v50 = v48;
    v51 = sub_272376C6C();

    swift_willThrow();
    v49 = 0;
  }

  v52 = objc_allocWithZone(MEMORY[0x277CB83A8]);
  v53 = sub_27237770C();
  v54 = [v52 initWithSettings_];

  if (!v54)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  if (HIDWORD(v24))
  {
    __break(1u);
    goto LABEL_20;
  }

  v90 = v47;
  v55 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v54 frameCapacity:v24];
  if (!v55)
  {
    goto LABEL_23;
  }

  v53 = v55;
  if (v24)
  {
    v56 = 0;
    v57 = v76 + 32;
    while (1)
    {
      v58 = [v53 int16ChannelData];
      if (!v58)
      {
        break;
      }

      *(*v58 + 2 * v56) = *(v57 + 2 * v56);
      if (v24 == ++v56)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_11:

  [v53 setFrameLength_];
  if (!v49)
  {
    v63 = v54;
    v61 = v81;
    v60 = v82;
    v62 = v93;
    v64 = v91;
    goto LABEL_15;
  }

  v95[0] = 0;
  if (![v49 writeFromBuffer:v53 error:v95])
  {
    v45 = v22;
    v68 = v95[0];
    v24 = sub_272376C6C();

    swift_willThrow();
    v47 = v90;
    if (qword_28088DF80 == -1)
    {
LABEL_17:
      sub_2721F065C(&qword_280881CB0, qword_27237D820);
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_27237AF80;
      swift_getErrorValue();
      v70 = sub_2723786CC();
      v72 = v71;
      *(v69 + 56) = MEMORY[0x277D837D0];
      *(v69 + 64) = sub_27225CAF0();
      *(v69 + 32) = v70;
      *(v69 + 40) = v72;
      OS_os_log.error(_:_:)("Error: %{public}@", 17, 2, v69);

      v65 = v80;
      v73 = *(v79 + 8);
      v73(v45, v80);
      (*(v81 + 8))(v92, v93);
      v73(v91, v65);
      v67 = 1;
      v60 = v82;
      goto LABEL_18;
    }

LABEL_20:
    swift_once();
    goto LABEL_17;
  }

  v59 = v95[0];

  v61 = v81;
  v60 = v82;
  v62 = v93;
  v63 = v90;
  v64 = v91;
LABEL_15:

  (*(v61 + 8))(v92, v62);
  v66 = v79;
  v65 = v80;
  (*(v79 + 8))(v64, v80);
  (*(v66 + 32))(v60, v22, v65);
  v67 = 0;
LABEL_18:
  result = (v77)(v60, v67, 1, v65);
  v75 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2722BDCA8()
{
  v1 = v0;
  v2 = OBJC_IVAR___FeatureExtractObjc_config;
  v3 = *(v0 + OBJC_IVAR___FeatureExtractObjc_config);
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v3) + 0x90);
  v6 = v3;
  v7 = v5();

  v8 = (*((*v4 & *v7) + 0xB8))();
  v9 = *(v1 + v2);
  v10 = *((*v4 & *v9) + 0x90);
  v11 = v9;
  v12 = v10();

  v13 = (*((*v4 & *v12) + 0xD0))();
  v14 = v8 + v13;
  if (__OFADD__(v8, v13))
  {
    __break(1u);
    goto LABEL_6;
  }

  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v17 = OBJC_IVAR___FeatureExtractObjc_spliceBufferLength;
  *(v1 + OBJC_IVAR___FeatureExtractObjc_spliceBufferLength) = v16;
  v18 = (v16 * 40) >> 64;
  v19 = 40 * v16;
  if (v18 == v19 >> 63)
  {
    *(v1 + OBJC_IVAR___FeatureExtractObjc_splicedVectorDim) = v19;
    *(v1 + OBJC_IVAR___FeatureExtractObjc_stopSignaled) = 0;
    v20 = sub_272377B5C();
    *(v20 + 16) = 40;
    *(v20 + 32) = 0u;
    *(v20 + 48) = 0u;
    *(v20 + 64) = 0u;
    *(v20 + 80) = 0u;
    *(v20 + 96) = 0u;
    *(v20 + 112) = 0u;
    *(v20 + 128) = 0u;
    *(v20 + 144) = 0u;
    *(v20 + 160) = 0u;
    *(v20 + 176) = 0u;
    v21 = *(v1 + v2);
    v22 = *((*v4 & *v21) + 0x90);
    v23 = v21;
    v24 = v22();

    v25 = (*((*v4 & *v24) + 0x88))();
    v26 = sub_27220392C(v20, v25);

    v27 = *(v1 + OBJC_IVAR___FeatureExtractObjc_slidingCmvnBuffer);
    *(v1 + OBJC_IVAR___FeatureExtractObjc_slidingCmvnBuffer) = v26;

    v28 = sub_272377B5C();
    *(v28 + 16) = 40;
    *(v28 + 32) = 0u;
    *(v28 + 48) = 0u;
    *(v28 + 64) = 0u;
    *(v28 + 80) = 0u;
    *(v28 + 96) = 0u;
    *(v28 + 112) = 0u;
    *(v28 + 128) = 0u;
    *(v28 + 144) = 0u;
    *(v28 + 160) = 0u;
    *(v28 + 176) = 0u;
    v29 = sub_27220392C(v28, *(v1 + v17));

    v30 = *(v1 + OBJC_IVAR___FeatureExtractObjc_spliceBuffer);
    *(v1 + OBJC_IVAR___FeatureExtractObjc_spliceBuffer) = v29;

    *(v1 + OBJC_IVAR___FeatureExtractObjc_numSamplesRemovedFromAudioSampleInjestionBuffer) = 0;
    *(v1 + OBJC_IVAR___FeatureExtractObjc_audioSampleIngestionBufferStartIndex) = 0;
    v31 = OBJC_IVAR___FeatureExtractObjc_audioSampleWorkBuffer;
    swift_beginAccess();
    v32 = *(v1 + v31);

    v33 = sub_272376ECC();
    *(v1 + v31) = *v33;
    swift_endAccess();
    v34 = OBJC_IVAR___FeatureExtractObjc_audioSampleIngestionBuffer;
    swift_beginAccess();
    v35 = *(v1 + v34);
    *(v1 + v34) = *v33;

    v36 = *(v1 + OBJC_IVAR___FeatureExtractObjc_nnetIntakeBuffer);
    *(v1 + OBJC_IVAR___FeatureExtractObjc_nnetIntakeBuffer) = MEMORY[0x277D84F90];

    *(v1 + OBJC_IVAR___FeatureExtractObjc_spliceBufferCounter) = 0;
    *(v1 + OBJC_IVAR___FeatureExtractObjc_spliceBufferCounterAll) = 0;
    *(v1 + OBJC_IVAR___FeatureExtractObjc_frameCounter) = 0;
    v37 = sub_272377B5C();
    *(v37 + 16) = 40;
    *(v37 + 32) = 0u;
    *(v37 + 48) = 0u;
    *(v37 + 64) = 0u;
    *(v37 + 80) = 0u;
    *(v37 + 96) = 0u;
    *(v37 + 112) = 0u;
    *(v37 + 128) = 0u;
    *(v37 + 144) = 0u;
    *(v37 + 160) = 0u;
    *(v37 + 176) = 0u;
    v38 = *(v1 + OBJC_IVAR___FeatureExtractObjc_cmvnSlidingWindowSum);
    *(v1 + OBJC_IVAR___FeatureExtractObjc_cmvnSlidingWindowSum) = v37;

    *(v1 + OBJC_IVAR___FeatureExtractObjc_cmvnBufferCount) = 0;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_2722BE09C()
{
  v1 = v0;
  v2 = OBJC_IVAR___FeatureExtractObjc_audioSampleWorkBuffer;
  v69 = OBJC_IVAR___FeatureExtractObjc_fftCalculator;
  result = swift_beginAccess();
  v4 = *(v0 + v2);
  v5 = v4 + 3;
  if (v4[3] < 401)
  {
    return result;
  }

  v70 = v1;
  v68 = v2;
  while (1)
  {
    sub_2721F065C(&qword_280881848, &unk_27237C250);
    v6 = swift_allocObject();
    v7 = j__malloc_size(v6);
    v8 = v7 - 32;
    if (v7 < 32)
    {
      v8 = v7 - 29;
    }

    *(v6 + 2) = 400;
    *(v6 + 3) = 2 * (v8 >> 2);
    v9 = v6 + 8;
    v73 = xmmword_272382AA0;
    v74 = v4;
    v10 = MEMORY[0x28223BE20](v7);
    MEMORY[0x28223BE20](v10);
    swift_retain_n();
    result = sub_272237D54(v4 + 2, (v4 + 5), sub_2722C3618);
    if (v12)
    {
      v13 = v70;
      if (*v5 < 1)
      {
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      v14 = 0;
      while (1)
      {
        v15 = v4[4];
        v16 = v14 + v15 >= v4[2] ? v4[2] : 0;
        v9[v14] = *(v4 + v14 + v15 - v16 + 10);
        if (v14 == 399)
        {
          break;
        }

        if (++v14 >= *v5)
        {
          goto LABEL_79;
        }
      }
    }

    else
    {
      v17 = v11;

      v13 = v70;
      if (v17 != 400)
      {
        goto LABEL_88;
      }
    }

    v18 = *(v6 + 2);
    if (qword_28088DF90 != -1)
    {
      result = swift_once();
    }

    v19 = qword_280893AC8;
    if (v18 != *(qword_280893AC8 + 16))
    {
      goto LABEL_81;
    }

    v20 = *(v6 + 2);
    if (!v20)
    {
      v23 = MEMORY[0x277D84F90];
      goto LABEL_24;
    }

    if (v20 <= 7)
    {
      v21 = 0;
      v22 = 0.0;
LABEL_71:
      v61 = v20 - v21;
      v62 = &v6[v21 + 8];
      do
      {
        v63 = *v62++;
        v22 = v22 + v63;
        --v61;
      }

      while (v61);
      goto LABEL_73;
    }

    v21 = v20 & 0x7FFFFFFFFFFFFFF8;
    v59 = v6 + 12;
    v22 = 0.0;
    v60 = v20 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v22 = (((((((v22 + COERCE_FLOAT(*(v59 - 1))) + COERCE_FLOAT(HIDWORD(*(v59 - 2)))) + COERCE_FLOAT(*(v59 - 1))) + COERCE_FLOAT(HIDWORD(*(v59 - 1)))) + COERCE_FLOAT(*v59)) + COERCE_FLOAT(HIDWORD(*v59))) + COERCE_FLOAT(v59[1])) + COERCE_FLOAT(HIDWORD(*v59));
      v59 += 4;
      v60 -= 8;
    }

    while (v60);
    if (v20 != v21)
    {
      goto LABEL_71;
    }

LABEL_73:
    v64 = v22 / v20;
    *&v73 = MEMORY[0x277D84F90];
    sub_2722005AC(0, v20, 0);
    v23 = v73;
    v65 = *(v73 + 16);
    do
    {
      v66 = *v9;
      *&v73 = v23;
      v67 = *(v23 + 3);
      if (v65 >= v67 >> 1)
      {
        sub_2722005AC((v67 > 1), v65 + 1, 1);
        v23 = v73;
      }

      *(v23 + 2) = v65 + 1;
      *&v23[4 * v65 + 32] = v66 - v64;
      ++v9;
      ++v65;
      --v20;
    }

    while (v20);
LABEL_24:

    v24 = *(v23 + 2);

    if (v24 >= 2)
    {
      break;
    }

LABEL_29:
    if (!*(v23 + 2))
    {
      goto LABEL_82;
    }

    v26 = *(v23 + 8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_2722002AC(v23);
    }

    *(v23 + 8) = v26 * 0.03;
    v27 = sub_272377B5C();
    *(v27 + 16) = 400;
    bzero((v27 + 32), 0x640uLL);
    v28 = *(v19 + 16);
    v72 = v27;

    MEMORY[0x2743C6BD0](v23 + 32, 1, v19 + 32, 1, v27 + 32, 1, v28);

    sub_272242274(v23, v19, &v72);
    v29 = v72;
    v30 = *(**(v13 + v69) + 136);

    v31 = v30(v29);

    if (qword_28088DF88 != -1)
    {
      result = swift_once();
    }

    if (qword_280893AC0 < -3)
    {
      goto LABEL_83;
    }

    v32 = qword_280893AC0 / 2;
    v33 = *(v31 + 16);
    if (v33 <= qword_280893AC0 / 2)
    {
      goto LABEL_84;
    }

    v34 = v32 + 1;
    if (v33 != v32 + 1)
    {
      sub_272241D34(v31, v31 + 32, 0, (2 * v34) | 1);
      v36 = v35;

      v31 = v36;
    }

    v37 = sub_272377B5C();
    *(v37 + 16) = 40;
    *(v37 + 32) = 0u;
    *(v37 + 48) = 0u;
    *(v37 + 64) = 0u;
    *(v37 + 80) = 0u;
    *(v37 + 96) = 0u;
    *(v37 + 112) = 0u;
    *(v37 + 128) = 0u;
    *(v37 + 144) = 0u;
    *(v37 + 160) = 0u;
    *(v37 + 176) = 0u;
    v71 = v37;
    if (qword_28088DF98 != -1)
    {
      swift_once();
    }

    sub_272242158(v31, qword_280893AD0, &v71, 1, 40, v34);

    v38 = v71;
    v39 = *(v71 + 2);
    if (v39)
    {
      *&v73 = MEMORY[0x277D84F90];
      sub_2722005AC(0, v39, 0);
      v40 = v73;
      v41 = *(v73 + 16);
      v42 = 32;
      do
      {
        v43 = *&v38[v42];
        if (v43 <= 1.2e-38)
        {
          v43 = 1.2e-38;
        }

        v44 = logf(v43);
        *&v73 = v40;
        v45 = *(v40 + 24);
        if (v41 >= v45 >> 1)
        {
          v46 = v44;
          sub_2722005AC((v45 > 1), v41 + 1, 1);
          v44 = v46;
          v40 = v73;
        }

        *(v40 + 16) = v41 + 1;
        *(v40 + 4 * v41 + 32) = v44;
        v42 += 4;
        ++v41;
        --v39;
      }

      while (v39);

      v13 = v70;
    }

    else
    {

      v40 = MEMORY[0x277D84F90];
    }

    (*((*MEMORY[0x277D85000] & *v13) + 0x3D0))(v40);

    swift_beginAccess();
    result = *(v13 + v68);
    if (*(result + 24) < 160)
    {
      goto LABEL_85;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_272237B98();
    }

    v47 = *(v13 + v68);
    v48 = v47[4];
    v49 = v47[2];
    if (v48 >= v49)
    {
      v50 = v47[2];
    }

    else
    {
      v50 = 0;
    }

    v51 = v48 - v50;
    if (v48 + 160 >= v49)
    {
      v52 = v47[2];
    }

    else
    {
      v52 = 0;
    }

    v53 = v51 >= v48 + 160 - v52 && __OFSUB__(v49, v51);
    if (v53)
    {
      goto LABEL_89;
    }

    v53 = __OFADD__(v48, 160);
    v54 = v48 + 160;
    if (v53)
    {
      goto LABEL_86;
    }

    v55 = __OFSUB__(v54, v49);
    v56 = v54 - v49;
    if (v56 < 0 == v55)
    {
      v54 = v56;
      if (v55)
      {
        goto LABEL_90;
      }
    }

    v47[4] = v54;
    v57 = v47[3];
    v53 = __OFSUB__(v57, 160);
    v58 = v57 - 160;
    if (v53)
    {
      goto LABEL_87;
    }

    v47[3] = v58;
    swift_endAccess();

    v4 = *(v13 + v68);
    v5 = v4 + 3;
    if (v4[3] <= 400)
    {
      return result;
    }
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2722002AC(v23);
    v23 = result;
  }

  while (1)
  {
    v25 = v24 - 1;
    if (v24 - 1 >= *(v23 + 2))
    {
      break;
    }

    *&v23[4 * v24 + 28] = *&v23[4 * v24 + 28] + (*&v23[4 * v24 + 24] * -0.97);
    --v24;
    if (v25 <= 1)
    {
      goto LABEL_29;
    }
  }

LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
  return result;
}

uint64_t sub_2722BE8D8()
{
  v1 = v0;
  v2 = OBJC_IVAR___FeatureExtractObjc_nnetIntakeBuffer;
  v3 = *(*(v0 + OBJC_IVAR___FeatureExtractObjc_nnetIntakeBuffer) + 16);
  v4 = *(v0 + OBJC_IVAR___FeatureExtractObjc_config);
  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v4) + 0x90);
  v7 = v4;
  v8 = v6();

  v9 = (*((*v5 & *v8) + 0x100))();
  if (v3 != v9)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v11 = *(v1 + v2);
  if (!*(v11 + 16))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (*(*(v11 + 32) + 16) != *(v1 + OBJC_IVAR___FeatureExtractObjc_splicedVectorDim))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = *(v1 + OBJC_IVAR___FeatureExtractObjc_nnetIntakeBuffer);
  v14 = *(**(v1 + OBJC_IVAR___FeatureExtractObjc_nn) + 216);

  v16 = v14(v15);
  v43 = v18;
  v44 = v17;

  v19 = *(v16 + 16);
  if (!v19)
  {
LABEL_40:
    __break(1u);
    return MEMORY[0x2821F9378](isUniquelyReferenced_nonNull_native);
  }

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  do
  {
    if (v20 >= *(v16 + 16))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v22 = v16 + 8 * v20;
    v23 = *(v22 + 32);
    v24 = *(v23 + 16);
    v25 = *(v21 + 2);
    v26 = v25 + v24;
    if (__OFADD__(v25, v24))
    {
      goto LABEL_31;
    }

    v27 = *(v22 + 32);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v26 <= *(v21 + 3) >> 1)
    {
      if (!*(v23 + 16))
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (v25 <= v26)
      {
        v28 = v25 + v24;
      }

      else
      {
        v28 = v25;
      }

      isUniquelyReferenced_nonNull_native = sub_2721FF8B4(isUniquelyReferenced_nonNull_native, v28, 1, v21);
      v21 = isUniquelyReferenced_nonNull_native;
      if (!*(v23 + 16))
      {
LABEL_6:

        if (v24)
        {
          goto LABEL_32;
        }

        goto LABEL_7;
      }
    }

    v29 = *(v21 + 2);
    if ((*(v21 + 3) >> 1) - v29 < v24)
    {
      goto LABEL_33;
    }

    memcpy(&v21[4 * v29 + 32], (v23 + 32), 4 * v24);

    if (v24)
    {
      v30 = *(v21 + 2);
      v31 = __OFADD__(v30, v24);
      v32 = v30 + v24;
      if (v31)
      {
        goto LABEL_34;
      }

      *(v21 + 2) = v32;
    }

LABEL_7:
    ++v20;
  }

  while (v19 != v20);
  v33 = *(v16 + 16);
  if (!v33)
  {
    goto LABEL_40;
  }

  v34 = *(v16 + 32);

  v35 = *(v34 + 16);

  v36 = v33 * v35;
  if ((v33 * v35) >> 64 != (v33 * v35) >> 63)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if ((v36 - 0x2000000000000000) >> 62 != 3)
  {
    goto LABEL_39;
  }

  v37 = [objc_allocWithZone(MEMORY[0x277CBEA90]) initWithBytes:v21 + 32 length:4 * v36];

  v38 = v1 + OBJC_IVAR___FeatureExtractObjc_acousticModelOutputAvailable;
  v39 = *(v1 + OBJC_IVAR___FeatureExtractObjc_acousticModelOutputAvailable);
  if (v39)
  {
    v40 = *(v38 + 8);
    sub_2722734B4(v39);
    v41 = v37;
    v39(v37, v44, v43);

    sub_272273524(v39);
  }

  isUniquelyReferenced_nonNull_native = v12;

  return MEMORY[0x2821F9378](isUniquelyReferenced_nonNull_native);
}

void sub_2722BEC60()
{
  v1 = *(v0 + OBJC_IVAR___FeatureExtractObjc_splicedVectorDim);
  if (v1 < 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR___FeatureExtractObjc_splicedVectorDim);
    v3 = sub_272377B5C();
    *(v3 + 16) = v1;
    bzero((v3 + 32), 4 * v1);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v4 = *(v0 + OBJC_IVAR___FeatureExtractObjc_spliceBufferCounterAll);
  v5 = *(v0 + OBJC_IVAR___FeatureExtractObjc_spliceBufferLength);
  if (v4 >= v5)
  {
    v19 = *(v3 + 16);
    if (v19)
    {
      v20 = 0;
      v21 = *(v0 + OBJC_IVAR___FeatureExtractObjc_spliceBuffer);
      v22 = v21 + 32;
      v23 = *(v21 + 16);
      while (1)
      {
        v24 = v20 / 0x28;
        if (v20 / 0x28 >= v23)
        {
          break;
        }

        v25 = *(v22 + 8 * v24);
        if (v20 % 0x28 >= *(v25 + 16))
        {
          goto LABEL_37;
        }

        if (v20 >= v19)
        {
          goto LABEL_38;
        }

        *(v3 + 32 + 4 * v20) = *(v25 + 32 - 160 * v24 + 4 * v20);
        if (v19 == ++v20)
        {
          return;
        }
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }
  }

  else
  {
    v6 = v5 - v4;
    if (__OFSUB__(v5, v4))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v7 = 40 * v6;
    if ((v6 * 40) >> 64 != (40 * v6) >> 63)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (v7)
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v8 = *(v0 + OBJC_IVAR___FeatureExtractObjc_spliceBuffer);
      if (v6 >= *(v8 + 16))
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v9 = 0;
      v10 = v8 + 32;
      v11 = 32;
      while (1)
      {
        v12 = *(v10 + 8 * v6);
        if (v9 % 0x28 >= *(v12 + 16))
        {
          break;
        }

        v13 = *(v3 + 16);
        if (v9 >= v13)
        {
          goto LABEL_35;
        }

        *(v3 + 32 + 4 * v9) = *(v12 + v11 - 160 * (v9 / 0x28));
        v11 += 4;
        if (v7 == ++v9)
        {
          if (v13 >= v7)
          {
            goto LABEL_17;
          }

          __break(1u);
          break;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v13 = *(v3 + 16);
LABEL_17:
    if (v7 != v13)
    {
      if (v7 >= v13)
      {
LABEL_48:
        __break(1u);
        return;
      }

      v14 = *(v0 + OBJC_IVAR___FeatureExtractObjc_spliceBuffer);
      v15 = v14 + 32;
      v16 = *(v14 + 16);
      while (1)
      {
        v17 = v7 / 0x28;
        if (v7 / 0x28 >= v16)
        {
          goto LABEL_39;
        }

        v18 = *(v15 + 8 * v17);
        if (v7 % 0x28 >= *(v18 + 16))
        {
          goto LABEL_40;
        }

        if (v7 >= *(v3 + 16))
        {
          goto LABEL_41;
        }

        *(v3 + 32 + 4 * v7) = *(v18 - 160 * v17 + 4 * v7 + 32);
        if (v13 == ++v7)
        {
          return;
        }
      }
    }
  }
}

void sub_2722BEF00()
{
  v5 = OBJC_IVAR___FeatureExtractObjc_spliceBufferCounterAll;
  v6 = *(v1 + OBJC_IVAR___FeatureExtractObjc_spliceBufferCounterAll);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    goto LABEL_37;
  }

  v0 = v1;
  *(v1 + OBJC_IVAR___FeatureExtractObjc_spliceBufferCounterAll) = v8;
  v2 = OBJC_IVAR___FeatureExtractObjc_spliceBufferCounter;
  v9 = *(v1 + OBJC_IVAR___FeatureExtractObjc_spliceBufferCounter);
  v7 = __OFADD__(v9, 1);
  v10 = v9 + 1;
  if (v7)
  {
    goto LABEL_38;
  }

  *(v1 + OBJC_IVAR___FeatureExtractObjc_spliceBufferCounter) = v10;
  v3 = OBJC_IVAR___FeatureExtractObjc_config;
  v11 = *(v1 + OBJC_IVAR___FeatureExtractObjc_config);
  v4 = MEMORY[0x277D85000];
  v12 = *((*MEMORY[0x277D85000] & *v11) + 0x90);
  v13 = v11;
  v14 = v12();

  v1 = (*((*v4 & *v14) + 0xD0))();
  v15 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    goto LABEL_39;
  }

  v16 = *(v0 + v2);
  v17 = *(v0 + v3);
  v18 = *((*v4 & *v17) + 0x90);
  v19 = v17;
  v20 = v18();

  v21 = (*((*v4 & *v20) + 0xE8))();
  if (v16 >= v21 && *(v0 + v5) >= v15)
  {
    v1 = (*((*v4 & *v0) + 0x3C0))();
    *(v0 + v2) = 0;
    v5 = OBJC_IVAR___FeatureExtractObjc_nnetIntakeBuffer;
    v2 = *(v0 + OBJC_IVAR___FeatureExtractObjc_nnetIntakeBuffer);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + v5) = v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_40;
    }

    while (1)
    {
      v24 = *(v2 + 16);
      v23 = *(v2 + 24);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v2 = sub_272241E04((v23 > 1), v24 + 1, 1, v2);
      }

      *(v2 + 16) = v25;
      *(v2 + 8 * v24 + 32) = v1;
      *(v0 + v5) = v2;
      v26 = *(v0 + v3);
      v27 = *((*v4 & *v26) + 0x90);
      v28 = v26;
      v2 = v27();

      v29 = (*((*v4 & *v2) + 0x100))();
      if (v25 != v29)
      {
        break;
      }

      v1 = *(v0 + v5);
      v38 = v1[2];
      if (!v38)
      {
LABEL_28:
        (*((*v4 & *v0) + 0x3B8))();
        v37 = *(v0 + v5);
        *(v0 + v5) = MEMORY[0x277D84F90];

        return;
      }

      v3 = 0;
      while (v3 < v1[2])
      {
        v4 = *(v1[v3 + 4] + 16);
        if (v4)
        {
          v2 = 0;
          while (v3 < v1[2])
          {
            v30 = v1[v3 + 4];
            if (v2 >= *(v30 + 16))
            {
              goto LABEL_32;
            }

            if (v2 == 280)
            {
              goto LABEL_33;
            }

            v31 = *(v30 + 4 * v2 + 32);
            v32 = flt_28818CA30[v2 + 8];
            v33 = flt_28818CEB0[v2 + 8];
            v34 = swift_isUniquelyReferenced_nonNull_native();
            *(v0 + v5) = v1;
            if ((v34 & 1) == 0)
            {
              v1 = sub_272200344(v1);
              *(v0 + v5) = v1;
            }

            if (v3 >= v1[2])
            {
              goto LABEL_34;
            }

            v35 = v1[v3 + 4];
            v36 = swift_isUniquelyReferenced_nonNull_native();
            v1[v3 + 4] = v35;
            if ((v36 & 1) == 0)
            {
              v35 = sub_2722002AC(v35);
              v1[v3 + 4] = v35;
            }

            if (v2 >= *(v35 + 2))
            {
              goto LABEL_35;
            }

            *&v35[4 * v2 + 32] = (v31 + v32) * v33;
            *(v0 + v5) = v1;
            if (v4 == ++v2)
            {
              goto LABEL_12;
            }
          }

          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          break;
        }

LABEL_12:
        ++v3;
        v4 = MEMORY[0x277D85000];
        if (v3 == v38)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      v2 = sub_272241E04(0, *(v2 + 16) + 1, 1, v2);
      *(v0 + v5) = v2;
    }
  }
}

uint64_t sub_2722BF3D4(void *a1)
{
  if (a1[2] != 40)
  {
    goto LABEL_78;
  }

  v4 = v1;
  v2 = a1;
  v3 = OBJC_IVAR___FeatureExtractObjc_slidingCmvnBuffer;
  v1 = *(v1 + OBJC_IVAR___FeatureExtractObjc_slidingCmvnBuffer);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + v3) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_79;
  }

  while (1)
  {
    v7 = v1[2];
    v6 = v1[3];
    if (v7 >= v6 >> 1)
    {
      v1 = sub_272241E04((v6 > 1), v7 + 1, 1, v1);
    }

    v1[2] = v7 + 1;
    v1[v7 + 4] = v2;
    *(v4 + v3) = v1;
    v8 = OBJC_IVAR___FeatureExtractObjc_cmvnBufferCount;
    v9 = *(v4 + OBJC_IVAR___FeatureExtractObjc_cmvnBufferCount);
    v100 = OBJC_IVAR___FeatureExtractObjc_config;
    v10 = *(v4 + OBJC_IVAR___FeatureExtractObjc_config);
    v11 = MEMORY[0x277D85000];
    v12 = *((*MEMORY[0x277D85000] & *v10) + 0x90);
    v13 = v10;
    v14 = v12();

    v15 = (*((*v11 & *v14) + 0x88))();
    if (v9 < v15)
    {
      v16 = *(v4 + v8);
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_81;
      }

      *(v4 + v8) = v18;
    }

    v19 = *(v4 + v3);
    if (!*(v19 + 16))
    {
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v20 = *(v19 + 32);

    v98 = v3;
    sub_2722C2B50(0, 1);
    v21 = OBJC_IVAR___FeatureExtractObjc_cmvnSlidingWindowSum;
    v22 = *(v4 + OBJC_IVAR___FeatureExtractObjc_cmvnSlidingWindowSum);

    v24 = sub_2722BFE3C(v23, v2);

    v25 = *(v4 + v21);
    *(v4 + v21) = v24;

    v26 = *(v4 + v21);

    v28 = sub_2722C0018(v27, v20);

    v29 = *(v4 + v21);
    *(v4 + v21) = v28;

    v30 = *(v4 + v100);
    v31 = *((*v11 & *v30) + 0x90);
    v32 = v30;
    v33 = v31();

    v34 = (*((*v11 & *v33) + 0x88))();
    v35 = *(v4 + v8);
    if (v35 >= v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = *(v4 + v8);
    }

    v37 = *(v4 + v21);
    v38 = *(v37 + 16);
    v39 = MEMORY[0x277D84F90];
    v99 = v4;
    if (v38)
    {
      v40 = v36;
      v102[0] = MEMORY[0x277D84F90];

      sub_2722005AC(0, v38, 0);
      v39 = v102[0];
      v41 = *(v102[0] + 16);
      v42 = 32;
      do
      {
        v43 = *(v37 + v42);
        v102[0] = v39;
        v44 = *(v39 + 24);
        if (v41 >= v44 >> 1)
        {
          sub_2722005AC((v44 > 1), v41 + 1, 1);
          v39 = v102[0];
        }

        *(v39 + 16) = v41 + 1;
        *(v39 + 4 * v41 + 32) = v43 / v40;
        v42 += 4;
        ++v41;
        --v38;
      }

      while (v38);

      v45 = v8;
      v35 = *(v4 + v8);
      v11 = MEMORY[0x277D85000];
    }

    else
    {
      v45 = v8;
    }

    v46 = v100;
    v47 = *(v4 + v100);
    v48 = *((*v11 & *v47) + 0x90);
    v49 = v47;
    v50 = v48();

    v51 = (*((*v11 & *v50) + 0xA0))();
    if (v35 < v51)
    {
      goto LABEL_20;
    }

    v53 = *(v4 + v45);
    v54 = *(v4 + v100);
    v55 = *((*v11 & *v54) + 0x90);
    v56 = v54;
    v57 = v55();

    v58 = (*((*v11 & *v57) + 0xA0))();
    if (v53 != v58)
    {
      break;
    }

    v59 = *(v4 + v100);
    v60 = *((*v11 & *v59) + 0x90);
    v14 = ((*v11 & *v59) + 144);
    v61 = v59;
    v2 = v60();

    v15 = (*((*v11 & *v2) + 0xA0))();
    v97 = v15;
    if (v15 < 0)
    {
      goto LABEL_82;
    }

    if (!v15)
    {
LABEL_20:
    }

    v101 = 0;
    v96 = *(v39 + 16);
    v94 = *((*v11 & *v4) + 0x3C8);
    v95 = OBJC_IVAR___FeatureExtractObjc_spliceBuffer;
    while (1)
    {
      v62 = *(v4 + v46);
      v63 = *((*v11 & *v62) + 0x90);
      v64 = v62;
      v65 = v63();

      v3 = (*((*v11 & *v65) + 0x88))();
      v66 = *(v4 + v46);
      v67 = *((*v11 & *v66) + 0x90);
      v68 = v66;
      v2 = v67();

      v1 = (*((*v11 & *v2) + 0xA0))();
      v69 = v3 - v1;
      if (__OFSUB__(v3, v1))
      {
        break;
      }

      v17 = __OFADD__(v69, v101);
      v70 = v69 + v101;
      if (v17)
      {
        goto LABEL_74;
      }

      if ((v70 & 0x8000000000000000) != 0)
      {
        goto LABEL_75;
      }

      v71 = *(v4 + v98);
      if (v70 >= *(v71 + 16))
      {
        goto LABEL_76;
      }

      v2 = *(v71 + 8 * v70 + 32);
      if (v96 >= v2[2])
      {
        v3 = v2[2];
      }

      else
      {
        v3 = v96;
      }

      v102[0] = MEMORY[0x277D84F90];

      v1 = v102;
      sub_2722005AC(0, v3, 0);
      v72 = v102[0];
      if (v3)
      {
        v73 = 0;
        v4 = v2[2];
        v74 = v39 + 32;
        while (v4 != v73)
        {
          if (v73 >= v2[2])
          {
            goto LABEL_68;
          }

          v75 = *(v39 + 16);
          if (v73 == v75)
          {
            goto LABEL_69;
          }

          if (v73 >= v75)
          {
            goto LABEL_70;
          }

          v76 = *(v2 + v73 + 8);
          v77 = *(v74 + 4 * v73);
          v102[0] = v72;
          v79 = *(v72 + 16);
          v78 = *(v72 + 24);
          if (v79 >= v78 >> 1)
          {
            v1 = v102;
            sub_2722005AC((v78 > 1), v79 + 1, 1);
            v74 = v39 + 32;
            v72 = v102[0];
          }

          ++v73;
          *(v72 + 16) = v79 + 1;
          *(v72 + 4 * v79 + 32) = v76 - v77;
          if (v3 == v73)
          {
            goto LABEL_43;
          }
        }

        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

LABEL_43:
      v80 = v2[2];
      if (v3 != v80)
      {
        v4 = v99;
        v46 = v100;
        while (v3 < v80)
        {
          v85 = *(v39 + 16);
          if (v3 == v85)
          {
            goto LABEL_45;
          }

          if (v3 >= v85)
          {
            goto LABEL_72;
          }

          v86 = *(v2 + v3 + 8);
          v87 = *(v39 + 4 * v3 + 32);
          v102[0] = v72;
          v89 = *(v72 + 16);
          v88 = *(v72 + 24);
          if (v89 >= v88 >> 1)
          {
            v1 = v102;
            sub_2722005AC((v88 > 1), v89 + 1, 1);
            v72 = v102[0];
          }

          ++v3;
          *(v72 + 16) = v89 + 1;
          *(v72 + 4 * v89 + 32) = v86 - v87;
          v80 = v2[2];
          if (v3 == v80)
          {
            goto LABEL_45;
          }
        }

LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
        break;
      }

      v4 = v99;
      v46 = v100;
LABEL_45:

      v1 = *(v4 + v95);
      v81 = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + v95) = v1;
      if ((v81 & 1) == 0)
      {
        v1 = sub_272241E04(0, v1[2] + 1, 1, v1);
        *(v4 + v95) = v1;
      }

      v83 = v1[2];
      v82 = v1[3];
      v2 = (v83 + 1);
      if (v83 >= v82 >> 1)
      {
        v1 = sub_272241E04((v82 > 1), v83 + 1, 1, v1);
      }

      v1[2] = v2;
      v1[v83 + 4] = v72;
      *(v4 + v95) = v1;
      if (!v1[2])
      {
        goto LABEL_77;
      }

      v84 = sub_2722C2B50(0, 1);
      v94(v84);
      ++v101;
      v11 = MEMORY[0x277D85000];
      if (v101 == v97)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    v1 = sub_272241E04(0, v1[2] + 1, 1, v1);
    *(v4 + v3) = v1;
  }

  v15 = sub_2722C0018(v90, v39);

  v2 = OBJC_IVAR___FeatureExtractObjc_spliceBuffer;
  v14 = *(v4 + OBJC_IVAR___FeatureExtractObjc_spliceBuffer);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v4) = v14;
  if (result)
  {
    goto LABEL_61;
  }

LABEL_83:
  result = sub_272241E04(0, v14[2] + 1, 1, v14);
  v14 = result;
  *(v2 + v4) = result;
LABEL_61:
  v92 = v14[2];
  v91 = v14[3];
  if (v92 >= v91 >> 1)
  {
    result = sub_272241E04((v91 > 1), v92 + 1, 1, v14);
    v14 = result;
  }

  v14[2] = v92 + 1;
  v14[v92 + 4] = v15;
  *(v2 + v4) = v14;
  if (v14[2])
  {
    sub_2722C2B50(0, 1);
    v93 = *((*v11 & *v4) + 0x3C8);

    return v93();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2722BFE3C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v27 = MEMORY[0x277D84F90];
  sub_2722005AC(0, v6, 0);
  result = v27;
  v26 = v4;
  v24 = a1;
  v25 = a2;
  if (v6)
  {
    v8 = (a1 + 32);
    v9 = (a2 + 32);
    v10 = v6;
    v11 = v5;
    v12 = v5;
    while (v4)
    {
      if (!v11)
      {
        goto LABEL_23;
      }

      v13 = *v8;
      v14 = *v9;
      v28 = result;
      v16 = *(result + 16);
      v15 = *(result + 24);
      if (v16 >= v15 >> 1)
      {
        v23 = v12;
        sub_2722005AC((v15 > 1), v16 + 1, 1);
        v12 = v23;
        result = v28;
      }

      --v11;
      *(result + 16) = v16 + 1;
      *(result + 4 * v16 + 32) = v13 + v14;
      --v4;
      ++v9;
      ++v8;
      if (!--v10)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = v5;
LABEL_13:
  if (v26 > v12)
  {
    while (v6 < v26)
    {
      v17 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_25;
      }

      if (v12 != v6)
      {
        if (v6 >= v12)
        {
          goto LABEL_26;
        }

        v18 = *(v24 + 32 + 4 * v6);
        v19 = *(v25 + 32 + 4 * v6);
        v29 = result;
        v21 = *(result + 16);
        v20 = *(result + 24);
        if (v21 >= v20 >> 1)
        {
          v22 = v12;
          sub_2722005AC((v20 > 1), v21 + 1, 1);
          v12 = v22;
          result = v29;
        }

        *(result + 16) = v21 + 1;
        *(result + 4 * v21 + 32) = v18 + v19;
        ++v6;
        if (v17 != v26)
        {
          continue;
        }
      }

      return result;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_2722C0018(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v27 = MEMORY[0x277D84F90];
  sub_2722005AC(0, v6, 0);
  result = v27;
  v26 = v4;
  v24 = a1;
  v25 = a2;
  if (v6)
  {
    v8 = (a1 + 32);
    v9 = (a2 + 32);
    v10 = v6;
    v11 = v5;
    v12 = v5;
    while (v4)
    {
      if (!v11)
      {
        goto LABEL_23;
      }

      v13 = *v8;
      v14 = *v9;
      v28 = result;
      v16 = *(result + 16);
      v15 = *(result + 24);
      if (v16 >= v15 >> 1)
      {
        v23 = v12;
        sub_2722005AC((v15 > 1), v16 + 1, 1);
        v12 = v23;
        result = v28;
      }

      --v11;
      *(result + 16) = v16 + 1;
      *(result + 4 * v16 + 32) = v13 - v14;
      --v4;
      ++v9;
      ++v8;
      if (!--v10)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = v5;
LABEL_13:
  if (v26 > v12)
  {
    while (v6 < v26)
    {
      v17 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_25;
      }

      if (v12 != v6)
      {
        if (v6 >= v12)
        {
          goto LABEL_26;
        }

        v18 = *(v24 + 32 + 4 * v6);
        v19 = *(v25 + 32 + 4 * v6);
        v29 = result;
        v21 = *(result + 16);
        v20 = *(result + 24);
        if (v21 >= v20 >> 1)
        {
          v22 = v12;
          sub_2722005AC((v20 > 1), v21 + 1, 1);
          v12 = v22;
          result = v29;
        }

        *(result + 16) = v21 + 1;
        *(result + 4 * v21 + 32) = v18 - v19;
        ++v6;
        if (v17 != v26)
        {
          continue;
        }
      }

      return result;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

void sub_2722C01F4()
{
  v0 = sub_272377B5C();
  *(v0 + 16) = 400;
  bzero((v0 + 32), 0x640uLL);
  v1 = xmmword_272382AB0;
  v2 = xmmword_272382AC0;
  v3 = 32;
  v13 = vdupq_n_s32(0x43C78000u);
  v14 = vdupq_n_s32(0x40490FDAu);
  v11 = vdupq_n_s32(0x3F0A3D71u);
  v12 = vdupq_n_s32(0xBEEB851F);
  v10 = vdupq_n_s64(4uLL);
  do
  {
    v15 = v2;
    v16 = v1;
    v4 = vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(v2)), vcvtq_f64_u64(v1));
    v20 = vdivq_f32(vmulq_f32(vaddq_f32(v4, v4), v14), v13);
    v17 = cosf(v20.f32[1]);
    v5.f32[0] = cosf(v20.f32[0]);
    v5.f32[1] = v17;
    v18 = v5;
    v6 = cosf(v20.f32[2]);
    v7 = v18;
    v7.f32[2] = v6;
    v19 = v7;
    v8 = cosf(v20.f32[3]);
    v9 = v19;
    v9.f32[3] = v8;
    *(v0 + v3) = vaddq_f32(vmulq_f32(v9, v12), v11);
    v1 = vaddq_s64(v16, v10);
    v2 = vaddq_s64(v15, v10);
    v3 += 16;
  }

  while (v3 != 1632);
  qword_280893AC8 = v0;
}

void sub_2722C034C()
{
  if (qword_28088DF88 != -1)
  {
    goto LABEL_68;
  }

LABEL_2:
  v0 = qword_280893AC0;
  if (qword_280893AC0 < -3)
  {
    __break(1u);
    return;
  }

  v1 = qword_280893AC0 / 2 + 1;
  if (qword_280893AC0 < -1)
  {
    v2 = MEMORY[0x277D84F90];
    if (qword_280893AC0 / 2 == -1)
    {
      goto LABEL_9;
    }

LABEL_7:
    *(v2 + 32) = 0;
    if ((v0 + 1) >= 3)
    {
      bzero((v2 + 36), 4 * (v0 / 2));
    }

    goto LABEL_9;
  }

  v2 = sub_272377B5C();
  *(v2 + 16) = v1;
  if (v0 / 2 != -1)
  {
    goto LABEL_7;
  }

LABEL_9:
  sub_2721F065C(&qword_280881858, &unk_27237C260);
  v3 = 40;
  v4 = sub_272377B5C();
  *(v4 + 16) = 40;
  *(v4 + 32) = v2;
  v5 = v4 + 32;
  do
  {
    *(v4 + v3) = v2;

    v3 += 8;
  }

  while (v3 != 352);
  v6 = 0;
  while (1)
  {
    v7 = v6 + 1;
    if (v1)
    {
      break;
    }

LABEL_12:
    ++v6;
    if (v7 == 40)
    {
      goto LABEL_38;
    }
  }

  v8 = 0;
  v9 = (v6 * 66.864) + 98.598;
  v10 = (v7 * 66.864) + 98.598;
  v11 = ((v6 + 2) * 66.864) + 98.598;
  while (1)
  {
    v13 = (logf((((16000.0 / v0) * v8) / 700.0) + 1.0) / 2.3026) * 2595.0;
    if (v9 >= v13 || v13 >= v11)
    {
      goto LABEL_17;
    }

    v15 = *(v4 + 16);
    if (v13 > v10)
    {
      if (v6 >= v15)
      {
        goto LABEL_59;
      }

      v16 = *(v5 + 8 * v6);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v5 + 8 * v6) = v16;
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v16 = sub_2722002AC(v16);
        *(v5 + 8 * v6) = v16;
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_60;
        }
      }

      if (v8 >= *(v16 + 2))
      {
        goto LABEL_61;
      }

      v12 = (v11 - v13) / (v11 - v10);
      goto LABEL_16;
    }

    if (v6 >= v15)
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      swift_once();
      goto LABEL_2;
    }

    v16 = *(v5 + 8 * v6);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 8 * v6) = v16;
    if (v18)
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        break;
      }

      goto LABEL_32;
    }

    v16 = sub_2722002AC(v16);
    *(v5 + 8 * v6) = v16;
    if ((v8 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_32:
    if (v8 >= *(v16 + 2))
    {
      goto LABEL_62;
    }

    v12 = (v13 - v9) / (v10 - v9);
LABEL_16:
    *&v16[4 * v8 + 32] = v12;
LABEL_17:
    if (v1 == ++v8)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_38:
  v19 = sub_2722C0764(v4);
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v21 >= *(v19 + 16))
      {
        goto LABEL_63;
      }

      v23 = *(v19 + 32 + 8 * v21);
      v24 = *(v23 + 16);
      v25 = *(v22 + 2);
      v26 = v25 + v24;
      if (__OFADD__(v25, v24))
      {
        goto LABEL_64;
      }

      v27 = *(v19 + 32 + 8 * v21);

      v28 = swift_isUniquelyReferenced_nonNull_native();
      if (v28 && v26 <= *(v22 + 3) >> 1)
      {
        if (!*(v23 + 16))
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v25 <= v26)
        {
          v29 = v25 + v24;
        }

        else
        {
          v29 = v25;
        }

        v22 = sub_2721FF8B4(v28, v29, 1, v22);
        if (!*(v23 + 16))
        {
LABEL_40:

          if (v24)
          {
            goto LABEL_65;
          }

          goto LABEL_41;
        }
      }

      v30 = *(v22 + 2);
      if ((*(v22 + 3) >> 1) - v30 < v24)
      {
        goto LABEL_66;
      }

      memcpy(&v22[4 * v30 + 32], (v23 + 32), 4 * v24);

      if (v24)
      {
        v31 = *(v22 + 2);
        v32 = __OFADD__(v31, v24);
        v33 = v31 + v24;
        if (v32)
        {
          goto LABEL_67;
        }

        *(v22 + 2) = v33;
      }

LABEL_41:
      if (v20 == ++v21)
      {
        goto LABEL_57;
      }
    }
  }

  v22 = MEMORY[0x277D84F90];
LABEL_57:

  qword_280893AD0 = v22;
}

uint64_t sub_2722C0764(uint64_t a1)
{
  v5 = a1;
  if (!*(a1 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v1 = *(*(a1 + 32) + 16);
  MEMORY[0x28223BE20](a1);
  v4[2] = &v5;

  v2 = sub_2722BAF90(sub_2722C31E4, v4, 0, v1);

  return v2;
}

uint64_t sub_2722C0820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v6 = *(*(a3 + 8) + 8);
  v7 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = v6;
  v9 = swift_getAssociatedTypeWitness();
  v36 = *(v9 - 8);
  v37 = v9;
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v35 = v33 - v11;
  v12 = sub_27237801C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v33 - v16;
  v18 = *(AssociatedTypeWitness - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = v33 - v20;
  sub_272377E1C();
  if ((*(v18 + 48))(v17, 1, AssociatedTypeWitness) == 1)
  {
    (*(v13 + 8))(v17, v12);
    v22 = *(v38 + 8);
    swift_getAssociatedTypeWitness();
    sub_272377BAC();
    return sub_272377B4C();
  }

  else
  {
    (*(v18 + 32))(v21, v17, AssociatedTypeWitness);
    v24 = v35;
    v25 = v38;
    v26 = sub_272377DFC();
    v33[1] = v33;
    MEMORY[0x28223BE20](v26);
    v33[-4] = a1;
    v33[-3] = a2;
    v33[-2] = v34;
    v33[-1] = v3;
    v27 = *(v25 + 8);
    swift_getAssociatedTypeWitness();
    v28 = sub_272377BAC();
    v29 = v37;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v32 = sub_2722BB104(sub_2722C2C58, &v33[-6], v29, v28, MEMORY[0x277D84A98], AssociatedConformanceWitness, MEMORY[0x277D84AC0], v31);
    (*(v36 + 8))(v24, v29);
    (*(v18 + 8))(v21, AssociatedTypeWitness);
    return v32;
  }
}

id FeatureExtract.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FeatureExtract.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeatureExtract();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_2722C0DC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v10 = MEMORY[0x277D84F90];
    result = sub_2722005AC(0, v3, 0);
    if ((a1 & 0x8000000000000000) == 0)
    {
      v6 = a2 + 32;
      result = v10;
      while (*(*v6 + 16) > a1)
      {
        v7 = *(*v6 + 4 * a1 + 32);
        v11 = result;
        v9 = *(result + 2);
        v8 = *(result + 3);
        if (v9 >= v8 >> 1)
        {
          sub_2722005AC((v8 > 1), v9 + 1, 1);
          result = v11;
        }

        *(result + 2) = v9 + 1;
        *&result[4 * v9 + 32] = v7;
        v6 += 8;
        if (!--v3)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2722C0EAC()
{
  v2 = v0[2];
  p_aBlock = v0[3];
  v3 = v0[4];
  v4 = *&v2[OBJC_IVAR___FeatureExtractObjc_stateAccessQueue];
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2722C33E4;
  *(v6 + 24) = v5;
  v61 = sub_272259128;
  v62 = v6;
  aBlock = MEMORY[0x277D85DD0];
  v58 = 1107296256;
  v59 = sub_27225537C;
  v60 = &unk_28818D768;
  v7 = _Block_copy(&aBlock);
  v54 = v2;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
LABEL_22:
    __break(1u);
  }

  else
  {
    queue = v4;
    if (qword_28088DF80 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  sub_2721F065C(&qword_280881CB0, qword_27237D820);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_27237AF80;
  dispatch_queue_get_label(0);
  v9 = sub_27237798C();
  v11 = v10;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_27225CAF0();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  OS_os_log.info(_:_:)("Start Processing in thread %s", 29, 2, v8);

  v56 = 0;
  v50 = mach_absolute_time();
  p_aBlock();
  v12 = 0;
  v13 = 0;
  v52 = *&v54[OBJC_IVAR___FeatureExtractObjc_dataAvailableSem];
  v51 = *((*MEMORY[0x277D85000] & *v54) + 0x3B0);
  while (1)
  {
    sub_272377F5C();
    v14 = swift_allocObject();
    *(v14 + 16) = v54;
    *(v14 + 24) = &v56;
    v15 = v54;
    sub_272273524(v12);
    v16 = swift_allocObject();
    *(v16 + 16) = sub_2722C345C;
    *(v16 + 24) = v14;
    v61 = sub_272259128;
    v62 = v16;
    aBlock = MEMORY[0x277D85DD0];
    v58 = 1107296256;
    v59 = sub_27225537C;
    v60 = &unk_28818D7E0;
    p_aBlock = &aBlock;
    v17 = _Block_copy(&aBlock);

    dispatch_sync(queue, v17);
    _Block_release(v17);
    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

    if (v17)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v51(v18);
    v55 = 0;
    v19 = swift_allocObject();
    *(v19 + 16) = &v55;
    *(v19 + 24) = v15;
    v20 = v15;
    sub_272273524(v13);
    v21 = swift_allocObject();
    *(v21 + 16) = sub_2722C3464;
    *(v21 + 24) = v19;
    v61 = sub_272259128;
    v62 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v58 = 1107296256;
    v59 = sub_27225537C;
    v60 = &unk_28818D858;
    v22 = _Block_copy(&aBlock);

    dispatch_sync(queue, v22);
    _Block_release(v22);
    LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

    if (v22)
    {
      goto LABEL_21;
    }

    if (v55 == 1)
    {
      break;
    }

    v13 = sub_2722C3464;
    v12 = sub_2722C345C;
  }

  v23 = OBJC_IVAR___FeatureExtractObjc_audioSampleWorkBuffer;
  swift_beginAccess();
  v24 = *&v20[v23];
  v25 = MEMORY[0x277D83B88];
  v26 = MEMORY[0x277D83C10];
  if (*(v24 + 24) > 0)
  {
    goto LABEL_11;
  }

  v27 = OBJC_IVAR___FeatureExtractObjc_audioSampleIngestionBuffer;
  result = swift_beginAccess();
  v29 = *(*&v20[v27] + 24);
  v30 = *&v20[OBJC_IVAR___FeatureExtractObjc_audioSampleIngestionBufferStartIndex];
  v31 = __OFSUB__(v29, v30);
  v32 = v29 - v30;
  if (v31)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v32 < 1)
  {
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_27237AF80;
    v49 = v56;
    *(v33 + 56) = v25;
    *(v33 + 64) = v26;
    *(v33 + 32) = v49;
    v36 = "Stopped after processing %d samples";
    v37 = 35;
  }

  else
  {
LABEL_11:
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_27237AF90;
    v34 = *(v24 + 24);
    *(v33 + 56) = v25;
    *(v33 + 64) = v26;
    *(v33 + 32) = v34;
    v35 = v56;
    *(v33 + 96) = v25;
    *(v33 + 104) = v26;
    *(v33 + 72) = v35;
    v36 = "Ignoring last %d of work buffer when stopping, processed total of %d bytes";
    v37 = 74;
  }

  OS_os_log.debug(_:_:)(v36, v37, 2, v33);

  v38 = *&v20[OBJC_IVAR___FeatureExtractObjc_allProcessedAfterStopSem];
  sub_272377F6C();
  v39 = swift_allocObject();
  *(v39 + 16) = v20;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_2722C347C;
  *(v40 + 24) = v39;
  v61 = sub_272259128;
  v62 = v40;
  aBlock = MEMORY[0x277D85DD0];
  v58 = 1107296256;
  v59 = sub_27225537C;
  v60 = &unk_28818D8D0;
  v41 = _Block_copy(&aBlock);
  v42 = v20;

  dispatch_sync(queue, v41);
  _Block_release(v41);
  LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

  if (v41)
  {
    __break(1u);
    goto LABEL_25;
  }

  v43 = mach_absolute_time();
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_27237AF90;
  v45 = v56;
  *(v44 + 56) = v25;
  *(v44 + 64) = v26;
  *(v44 + 32) = v45;
  aBlock = 0;
  result = mach_timebase_info(&aBlock);
  v46 = -1.0;
  if (result)
  {
LABEL_18:
    v48 = MEMORY[0x277D83A80];
    *(v44 + 96) = MEMORY[0x277D839F8];
    *(v44 + 104) = v48;
    *(v44 + 72) = v46;
    OS_os_log.debug(_:_:)("[TIMING] Done processing %d samples in %5.3lf secs", 50, 2, v44);
  }

  v47 = v43 - v50;
  if (v43 < v50)
  {
    goto LABEL_26;
  }

  if (!is_mul_ok(v47, aBlock.numer))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (aBlock.denom)
  {
    v46 = (v47 * aBlock.numer / aBlock.denom) / 1000000000.0;
    goto LABEL_18;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_2722C170C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2722C1724(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2721F214C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2722C1778()
{
  v1 = *(v0 + 16);
  if (*(v1 + OBJC_IVAR___FeatureExtractObjc_isRunning) != 1)
  {
    return (*((*MEMORY[0x277D85000] & *v1) + 0x3A8))();
  }

  if (qword_28088DF80 != -1)
  {
    swift_once();
  }

  return OS_os_log.info(_:_:)("Ignoring reset when running", 27, 2, MEMORY[0x277D84F90]);
}

char *sub_2722C1840(char *a1, uint64_t a2, char **a3)
{
  result = *a3;
  v5 = *(*a3 + 3);
  v6 = v5 + a2;
  if (__OFADD__(v5, a2))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *a3;
    if (*(*a3 + 2) < v6 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2722374C0(isUniquelyReferenced_nonNull_native, v6);
      v10 = *a3;
    }

    return sub_27223766C(v10 + 16, (v10 + 40), a1, a2);
  }

  return result;
}

uint64_t sub_2722C18D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v79 = a1;
  sub_2722C20B0(a1, a2, v73);
  v69 = a3;
  result = sub_2722C215C(a3, &v74);
  v11 = v78;
  v12 = v74;
  v13 = v75;
  if (v78)
  {
    v14 = MEMORY[0x28223BE20](result);
    v15 = &v63;
    v64 = v12;
    v65 = v13;
    v70 = a4;
    v71 = a5;
    v72 = a6;
    MEMORY[0x28223BE20](v14);
    v60 = &v70;
    v61 = sub_2722C34CC;
    v62 = v16;
    v17 = (a6 + 5);
    result = sub_2722C2280(a6 + 2, (a6 + 5), sub_2722C34E4);
    if ((v18 & 1) == 0)
    {
LABEL_78:
      v57 = v79[1];
      v58 = __OFADD__(v57, v69);
      v11 = v57 + v69;
      if (!v58)
      {
        v79[1] = v11;
        return result;
      }

      __break(1u);
      goto LABEL_81;
    }

    v70 = a4;
    v71 = a5;
    v15 = a5;
    v72 = a6;
    v19 = MEMORY[0x28223BE20](result);
    v64 = v12;
    v65 = v13;
    MEMORY[0x28223BE20](v19);
    v60 = &v70;
    v61 = sub_2722C35BC;
    v62 = v20;

    result = sub_272237D54(a6 + 2, (a6 + 5), sub_2722C3618);
    if (v22)
    {
      v11 = a4;
      v23 = a5;
      if (v12)
      {
        v11 = a4;
        if (v13)
        {
          if (v13 < 0)
          {
LABEL_95:
            __break(1u);
            goto LABEL_96;
          }

          if (a5 <= a4)
          {
            v24 = a4;
          }

          else
          {
            v24 = a5;
          }

          v11 = a4 - a5;
          if (a4 != a5)
          {
            v25 = 0;
            v26 = v24 - a4;
            while (v26 != v25)
            {
              if (a4 < 0)
              {
                goto LABEL_85;
              }

              if (&v25[a4] >= a6[3])
              {
                goto LABEL_86;
              }

              v27 = a6[4];
              v28 = &v25[a4];
              if (&v25[a4 + v27] >= a6[2])
              {
                v29 = a6[2];
              }

              else
              {
                v29 = 0;
              }

              v12[v25] = *(v17 + 4 * &v28[v27 - v29]);
              if ((v13 - 1) == v25)
              {
                v11 = (v28 + 1);
                goto LABEL_42;
              }

              ++v25;
              if (!&v25[v11])
              {
                goto LABEL_77;
              }
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }
      }
    }

    else
    {
      v11 = a4 + v21;
      if (__OFADD__(a4, v21))
      {
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      v23 = a5;
    }

LABEL_42:
    if (v11 == v23)
    {
LABEL_77:

      goto LABEL_78;
    }

    if (v11 < a4 || v11 >= a5)
    {
      goto LABEL_108;
    }

    if (v11 < 0)
    {
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    if (v11 >= a6[3])
    {
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

    __break(1u);
LABEL_48:
    v11 = a4 + v36;
    v38 = v68;
    if (__OFADD__(a4, v36))
    {
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    goto LABEL_49;
  }

  v15 = a4 + v75;
  if (__OFADD__(a4, v75))
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (v15 < a4)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  if (a5 < v15)
  {
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v68 = a5;
  v66 = v77;
  v67 = v76;
  v30 = MEMORY[0x28223BE20](result);
  v64 = v12;
  v65 = v13;
  v70 = a4;
  v71 = v15;
  v72 = a6;
  MEMORY[0x28223BE20](v30);
  v60 = &v70;
  v61 = sub_2722C35D4;
  v62 = v31;
  v17 = (a6 + 5);

  v32 = sub_2722C2280(a6 + 2, (a6 + 5), sub_2722C3630);
  if ((v33 & 1) == 0)
  {
    a5 = &v70;
    v41 = v67;
    a4 = v68;
    v42 = v66;
    goto LABEL_51;
  }

  v70 = a4;
  v71 = v15;
  v72 = a6;
  v34 = MEMORY[0x28223BE20](v32);
  v64 = v12;
  v65 = v13;
  MEMORY[0x28223BE20](v34);
  a5 = &v70;
  v60 = &v70;
  v61 = sub_2722C35BC;
  v62 = v35;

  result = sub_272237D54(a6 + 2, (a6 + 5), sub_2722C3618);
  if ((v37 & 1) == 0)
  {
    goto LABEL_48;
  }

  v11 = a4;
  v38 = v68;
  if (v12)
  {
    v11 = a4;
    if (v13)
    {
      if (v13 < 0)
      {
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      if (v15 != a4)
      {
        v11 = a4;
        while ((a4 & 0x8000000000000000) == 0)
        {
          if (v11 >= a6[3])
          {
            goto LABEL_88;
          }

          v39 = a6[4];
          if (v11 + v39 >= a6[2])
          {
            v40 = a6[2];
          }

          else
          {
            v40 = 0;
          }

          *v12 = *(v17 + 4 * (v11 + v39 - v40));
          if (!--v13)
          {
            ++v11;
            goto LABEL_49;
          }

          ++v12;
          ++v11;
        }

        goto LABEL_87;
      }

      goto LABEL_50;
    }
  }

LABEL_49:
  if (v11 != v15)
  {
    goto LABEL_98;
  }

LABEL_50:

  v42 = v66;
  v41 = v67;
  a4 = v38;
LABEL_51:
  v43 = MEMORY[0x28223BE20](v32);
  v64 = v41;
  v65 = v42;
  v70 = v15;
  v71 = a4;
  v72 = a6;
  MEMORY[0x28223BE20](v43);
  v60 = a5;
  v61 = sub_2722C35D4;
  v62 = v44;
  v45 = sub_2722C2280(a6 + 2, v17, sub_2722C3630);
  if ((v46 & 1) == 0)
  {
    goto LABEL_77;
  }

  v70 = v15;
  v71 = a4;
  v47 = a4;
  v72 = a6;
  v48 = MEMORY[0x28223BE20](v45);
  v64 = v41;
  v65 = v42;
  MEMORY[0x28223BE20](v48);
  a4 = &v59;
  v60 = &v70;
  v61 = sub_2722C35BC;
  v62 = v49;

  result = sub_272237D54(a6 + 2, v17, sub_2722C3618);
  if ((v51 & 1) == 0)
  {
    v11 = v15 + v50;
    if (__OFADD__(v15, v50))
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v52 = v47;
    goto LABEL_75;
  }

  if (!v41)
  {
    v11 = v15;
    v52 = v47;
LABEL_75:
    if (v11 != v52)
    {
      goto LABEL_103;
    }

LABEL_76:

    goto LABEL_77;
  }

  v52 = v47;
  if (!v42)
  {
    v11 = v15;
    goto LABEL_75;
  }

  if ((v42 & 0x8000000000000000) == 0)
  {
    v11 = v47 - v15;
    if (v47 != v15)
    {
      v53 = 0;
      while (v11 != v53)
      {
        if (v15 < 0)
        {
          goto LABEL_90;
        }

        if (v15 + v53 >= a6[3])
        {
          goto LABEL_91;
        }

        v54 = a6[4];
        v55 = (v15 + v53);
        if (v15 + v53 + v54 >= a6[2])
        {
          v56 = a6[2];
        }

        else
        {
          v56 = 0;
        }

        v41[v53] = *(v17 + 4 * &v55[v54 - v56]);
        if (v42 - 1 == v53)
        {
          v11 = (v55 + 1);
          goto LABEL_75;
        }

        if (v11 == ++v53)
        {
          goto LABEL_76;
        }
      }

LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    goto LABEL_76;
  }

LABEL_97:
  __break(1u);
LABEL_98:
  if (v11 < a4 || v11 >= v15)
  {
    goto LABEL_111;
  }

  if (v11 < 0)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  if (v11 >= a6[3])
  {
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  __break(1u);
LABEL_103:
  if (v11 < v15 || v11 >= v68)
  {
    goto LABEL_114;
  }

  if (v11 < 0)
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  if (v11 < a6[3])
  {

    __break(1u);
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

LABEL_116:
  __break(1u);
  return result;
}

void *sub_2722C20B0@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result[1];
  v3 = result[2];
  v5 = v3 + v4;
  if (__OFADD__(v3, v4))
  {
    __break(1u);
    goto LABEL_24;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = *result;
    v7 = __OFSUB__(v5, *result);
    if (v5 < *result)
    {
      goto LABEL_9;
    }

    v5 -= *result;
    if (!v7)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v6 = *result;
  if (v5 < 0)
  {
    v7 = __OFADD__(v5, v6);
    v5 += v6;
    if (v7)
    {
      goto LABEL_26;
    }
  }

LABEL_9:
  if (v4 >= v6)
  {
    goto LABEL_14;
  }

  if (v5 < v3)
  {
    v8 = v3 - v5;
    if (!__OFSUB__(v3, v5))
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_14:
    v8 = 0;
LABEL_15:
    v9 = 0;
    v3 = 0;
    v10 = 1;
LABEL_22:
    *a3 = a2 + 4 * v5;
    *(a3 + 8) = v8;
    *(a3 + 16) = v9;
    *(a3 + 24) = v3;
    *(a3 + 32) = v10;
    return result;
  }

  v8 = v6 - v5;
  if (!__OFSUB__(v6, v5))
  {
    if ((v3 & 0x8000000000000000) == 0 && v6 >= v5)
    {
      v10 = v3 == 0;
      if (v3)
      {
        v9 = a2;
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_22;
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2722C215C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v2 + 24);
  }

  if (__OFADD__(v3, v6))
  {
    __break(1u);
    goto LABEL_25;
  }

  v7 = *(v2 + 16);
  if (v3 + v6 <= result)
  {
LABEL_23:
    *a2 = *v2;
    *(a2 + 8) = v3;
    *(a2 + 16) = v7;
    *(a2 + 24) = v4;
    *(a2 + 32) = v5 & 1;
    return result;
  }

  if (v3 >= result)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      v7 = 0;
      v4 = 0;
      v5 = 1;
      v3 = result;
      goto LABEL_23;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if ((*(v2 + 32) & 1) == 0)
  {
    v8 = result - v3;
    if (!__OFSUB__(result, v3))
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        if (v4 >= v8)
        {
          v9 = result - v3;
        }

        else
        {
          v9 = *(v2 + 24);
        }

        if (v4 >= 0)
        {
          v4 = v9;
        }

        else
        {
          v4 = result - v3;
        }

        if (!v8)
        {
          v4 = 0;
        }

        v5 = v4 == 0;
        if (!v4)
        {
          v7 = 0;
        }

        goto LABEL_23;
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2722C2204(uint64_t a1, uint64_t a2)
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

  sub_2721F065C(&qword_280881A78, &unk_27237CA50);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = (v5 - 32 + ((v5 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  return result;
}

void *sub_2722C2280(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t, void))
{
  v4 = result[2];
  v5 = result[1] + v4;
  if (*result < v5)
  {
    return 0;
  }

  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(v5, v4))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  result = a3(&v6, a2 + 4 * v4, result[1]);
  if (!v3)
  {
    return v6;
  }

  return result;
}

uint64_t *sub_2722C2308(uint64_t *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  v4 = result[2];
  v5 = *result;
  v6 = result[1] + v4;
  if (*result >= v6)
  {
    if (v6 < v4)
    {
      __break(1u);
    }

    else if (!__OFSUB__(v6, v4))
    {
      result = a3(&v7, a2 + 4 * v4, result[1]);
      if (v3)
      {
        return result;
      }

      return (v5 < v6);
    }

    __break(1u);
    return result;
  }

  return (v5 < v6);
}

uint64_t sub_2722C2394()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2722C23CC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2722C2404()
{
  v2 = v0[2];
  v1 = v0[3];
  if (*(v2 + OBJC_IVAR___FeatureExtractObjc_stopSignaled) == 1)
  {
    if (qword_28088DF80 != -1)
    {
      swift_once();
    }

    sub_2721F065C(&qword_280881CB0, qword_27237D820);
    v3 = swift_allocObject();
    v4 = MEMORY[0x277D83B88];
    *(v3 + 16) = xmmword_27237AF80;
    v5 = MEMORY[0x277D83C10];
    *(v3 + 56) = v4;
    *(v3 + 64) = v5;
    *(v3 + 32) = v1;
    OS_os_log.info(_:_:)("Ignoring addSamples %d int16 bytes when running but stop is pending", 67, 2, v3);
  }

  else
  {
    if (v1)
    {
      v7 = v0[4];
      v8 = sub_27223743C(v1, 0);
      memcpy(v8 + 32, v7, 4 * v1);
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    v9 = OBJC_IVAR___FeatureExtractObjc_audioSampleIngestionBuffer;
    swift_beginAccess();
    v10 = *(v8 + 2);
    result = *(v2 + v9);
    v11 = *(result + 24);
    v12 = v11 + v10;
    if (__OFADD__(v11, v10))
    {
      __break(1u);
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *(v2 + v9);
      if (*(v14 + 16) < v12 || (isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2722374C0(isUniquelyReferenced_nonNull_native, v12);
        v14 = *(v2 + v9);
      }

      sub_27223766C((v14 + 16), v14 + 40, v8 + 32, v10);
      swift_endAccess();
    }
  }

  return result;
}

void sub_2722C25E8()
{
  v2 = v0[2];
  v1 = v0[3];
  if (*(v2 + OBJC_IVAR___FeatureExtractObjc_stopSignaled) == 1)
  {
    if (qword_28088DF80 != -1)
    {
      swift_once();
    }

    sub_2721F065C(&qword_280881CB0, qword_27237D820);
    v3 = swift_allocObject();
    v4 = MEMORY[0x277D83B88];
    *(v3 + 16) = xmmword_27237AF80;
    v5 = MEMORY[0x277D83C10];
    *(v3 + 56) = v4;
    *(v3 + 64) = v5;
    *(v3 + 32) = v1;
    OS_os_log.info(_:_:)("Ignoring addSamples %d int16 bytes when running but stop is pending", 67, 2, v3);

    return;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  v6 = v0[4];
  if (v1)
  {
    v7 = sub_272377B5C();
    *(v7 + 16) = v1;
    bzero((v7 + 32), 4 * v1);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  vDSP_vflt16(v6, 1, (v7 + 32), 1, v1);
  v8 = OBJC_IVAR___FeatureExtractObjc_audioSampleIngestionBuffer;
  swift_beginAccess();
  v9 = *(v7 + 16);
  v10 = *(*(v2 + v8) + 24);
  v11 = v10 + v9;
  if (__OFADD__(v10, v9))
  {
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v2 + v8);
  if (*(v13 + 16) < v11 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2722374C0(isUniquelyReferenced_nonNull_native, v11);
    v13 = *(v2 + v8);
  }

  sub_27223766C((v13 + 16), v13 + 40, (v7 + 32), v9);

  swift_endAccess();
}

uint64_t sub_2722C27D8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2722C2818()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *&v1[OBJC_IVAR___FeatureExtractObjc_stateAccessQueue];
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2722C3304;
  *(v7 + 24) = v6;
  v14[4] = sub_272259128;
  v14[5] = v7;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_27225537C;
  v14[3] = &unk_28818D6F0;
  v8 = _Block_copy(v14);
  v9 = v1;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LODWORD(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    v11 = *&v9[OBJC_IVAR___FeatureExtractObjc_dataAvailableSem];
    sub_272377F6C();
    v12 = *&v9[OBJC_IVAR___FeatureExtractObjc_allProcessedAfterStopSem];
    v13 = sub_272377F5C();
    v2(v13);
  }

  return result;
}

void *sub_2722C29AC@<X0>(void *result@<X0>, void *a2@<X2>, void *(*a3)(uint64_t *__return_ptr, char *, uint64_t)@<X3>, void *a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = __OFSUB__(v7, *a2);
  v9 = v7 - *a2;
  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = __OFADD__(v6, v9);
  v10 = v6 + v9;
  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10 - v6;
  if (v10 < v6)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = result + 4 * v6;
  if (result)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  result = a3(&v14, v13, v11);
  if (!v4)
  {
    *a4 = v14;
  }

  return result;
}