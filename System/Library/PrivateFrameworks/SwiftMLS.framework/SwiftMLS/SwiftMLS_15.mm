uint64_t sub_26BF18960()
{
  v1 = v0[52];
  v2 = v0[49];

  v3 = v0[70];
  v4 = v0[1];

  return v4();
}

uint64_t sub_26BF189D0()
{
  v1 = v0[78];
  v2 = v0[77];
  v3 = v0[76];
  v4 = v0[75];
  v5 = v0[52];
  v6 = v0[49];
  sub_26BE415F8((v0 + 12));
  sub_26BE132D4(v2, v1);

  sub_26BE00258(v4, v3);
  v7 = v0[80];
  v8 = v0[1];

  return v8();
}

uint64_t sub_26BF18A84(uint64_t a1)
{
  *(v2 + 800) = v1;
  *(v2 + 792) = a1;
  return MEMORY[0x2822009F8](sub_26BF18AA8, 0, 0);
}

uint64_t sub_26BF18AA8()
{
  v1 = v0[100];
  v2 = v0[99];
  v3 = *v2;
  v0[101] = *v2;
  v4 = v2[1];
  v0[102] = v4;
  v5 = v2[2];
  v0[103] = v5;
  v6 = v2[3];
  v0[104] = v6;
  result = swift_beginAccess();
  v8 = *(v1 + 48);
  if (!*(v8 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_26BEBB618(v3, v4);
  if ((v9 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = *(*(v8 + 56) + 8 * result);
  if (!*(v10 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = *(*(v8 + 56) + 8 * result);

  v12 = sub_26BEBB618(v5, v6);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v15 = *(*(v10 + 56) + 8 * v12);
  v0[105] = v15;

  v18 = (*v15 + 488);
  v19 = (*v18 + **v18);
  v16 = (*v18)[1];
  v17 = swift_task_alloc();
  v0[106] = v17;
  *v17 = v0;
  v17[1] = sub_26BF18CB8;

  return v19(v0 + 89);
}

uint64_t sub_26BF18CB8()
{
  v2 = *v1;
  v3 = *(*v1 + 848);
  v7 = *v1;
  *(*v1 + 856) = v0;

  if (v0)
  {
    v4 = *(v2 + 816);

    v5 = sub_26BF1A26C;
  }

  else
  {
    v5 = sub_26BF18DD4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF18DD4()
{
  v1 = v0[105];
  v2 = v0[89];
  v0[108] = v2;
  v3 = v0[90];
  v0[109] = v3;
  v0[91] = v2;
  v0[92] = v3;
  v8 = (*v1 + 464);
  v9 = (*v8 + **v8);
  v4 = (*v8)[1];
  v5 = swift_task_alloc();
  v0[110] = v5;
  *v5 = v0;
  v5[1] = sub_26BF18F1C;
  v6 = v0[105];

  return v9(v0 + 91);
}

uint64_t sub_26BF18F1C()
{
  v2 = *v1;
  v3 = *(*v1 + 880);
  v7 = *v1;
  *(*v1 + 888) = v0;

  if (v0)
  {
    v4 = *(v2 + 816);

    v5 = sub_26BF1A2D0;
  }

  else
  {

    v5 = sub_26BF1904C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF1904C()
{
  v1 = v0[100];
  swift_beginAccess();
  v2 = *(v1 + 56);
  v3 = *(v2 + 16);

  if (v3 && (v4 = sub_26BEBB618(v0[103], v0[104]), (v5 & 1) != 0))
  {
    v6 = *(*(v2 + 56) + 8 * v4);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = -v8;
    v11 = MEMORY[0x277D84F90];
    do
    {
      v12 = (v6 + 40 + 16 * v9++);
      while (1)
      {
        if ((v9 - 1) >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_39;
        }

        v13 = *(v12 - 1);
        v14 = *v12;
        if (v13 != v0[101] || v14 != v0[102])
        {
          v16 = *(v12 - 1);
          v17 = *v12;
          result = sub_26C00AF2C();
          if ((result & 1) == 0)
          {
            break;
          }
        }

        ++v9;
        v12 += 2;
        if (v10 + v9 == 1)
        {
          goto LABEL_22;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_26BECB834(0, *(v11 + 16) + 1, 1);
      }

      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_26BECB834((v18 > 1), v19 + 1, 1);
      }

      *(v11 + 16) = v19 + 1;
      v20 = v11 + 16 * v19;
      *(v20 + 32) = v13;
      *(v20 + 40) = v14;
    }

    while (v10 + v9);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

LABEL_22:
  v0[112] = v11;

  v21 = *(v11 + 16);
  v0[113] = v21;
  if (v21)
  {
    v0[114] = 0;
    v22 = v0[112];
    if (v22[2])
    {
      v23 = *(v0[100] + 48);
      if (*(v23 + 16))
      {
        v24 = v22[4];
        v25 = v22[5];

        result = sub_26BEBB618(v24, v25);
        if (v26)
        {
          v27 = *(*(v23 + 56) + 8 * result);
          if (*(v27 + 16))
          {
            v28 = v0[104];
            v29 = v0[103];
            v30 = *(*(v23 + 56) + 8 * result);

            v31 = sub_26BEBB618(v29, v28);
            LOBYTE(v29) = v32;

            if (v29)
            {
              v33 = v0[109];
              v34 = v0[108];
              v35 = *(*(v27 + 56) + 8 * v31);
              v0[115] = v35;

              v0[93] = v34;
              v0[94] = v33;
              v53 = (*v35 + 464);
              v54 = (*v53 + **v53);
              v36 = (*v53)[1];
              v37 = swift_task_alloc();
              v0[116] = v37;
              *v37 = v0;
              v37[1] = sub_26BF19534;

              return v54(v0 + 93);
            }

            goto LABEL_43;
          }

LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

LABEL_41:
        __break(1u);
        goto LABEL_42;
      }
    }

    else
    {
LABEL_39:
      __break(1u);
    }

    __break(1u);
    goto LABEL_41;
  }

  v38 = *(v0[100] + 48);
  if (!*(v38 + 16))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v39 = v0[99];
  v41 = *(v39 + 32);
  v40 = *(v39 + 40);
  v42 = *(v0[100] + 48);

  result = sub_26BEBB618(v41, v40);
  if ((v43 & 1) == 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v44 = *(*(v38 + 56) + 8 * result);
  if (!*(v44 + 16))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v45 = v0[112];
  v46 = v0[104];
  v47 = v0[103];
  v48 = *(*(v38 + 56) + 8 * result);

  v49 = sub_26BEBB618(v47, v46);
  LOBYTE(v47) = v50;

  if ((v47 & 1) == 0)
  {
LABEL_47:
    __break(1u);
    return result;
  }

  v51 = *(*(v44 + 56) + 8 * v49);
  v0[119] = v51;

  v52 = swift_task_alloc();
  v0[120] = v52;
  *v52 = v0;
  v52[1] = sub_26BF19B60;

  return sub_26BE96744((v0 + 76), v51, v51);
}

uint64_t sub_26BF19534(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 928);
  v9 = *v2;
  v3[117] = a1;
  v3[118] = v1;

  if (v1)
  {
    v5 = v3[112];
    v6 = v3[102];

    v7 = sub_26BF1A348;
  }

  else
  {
    v7 = sub_26BF19660;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BF19660()
{
  v1 = *(v0 + 936);
  if (!*(v1 + 16))
  {
    v24 = *(v0 + 896);
    v25 = *(v0 + 816);

    goto LABEL_15;
  }

  sub_26BF26CF0(v1 + 32, v0 + 152);

  if (*(v0 + 265) != 4 || *(v0 + 264) || (v2 = vorrq_s8(vorrq_s8(vorrq_s8(*(v0 + 200), *(v0 + 232)), vorrq_s8(*(v0 + 216), *(v0 + 248))), vorrq_s8(*(v0 + 168), *(v0 + 184))), *&vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL)) | *(v0 + 160) | *(v0 + 152)))
  {
    v22 = *(v0 + 896);
    v23 = *(v0 + 816);

    sub_26BF26D4C(v0 + 152);
LABEL_15:
    v26 = *(v0 + 920);
    v27 = *(v0 + 872);
    v28 = *(v0 + 864);
    v29 = *(v0 + 840);
    sub_26BE773C4();
    swift_allocError();
    *v30 = 0xD000000000000019;
    v30[1] = 0x800000026C02CD30;
    swift_willThrow();
    sub_26BE00258(v28, v27);

    v31 = *(v0 + 8);

    return v31();
  }

  v3 = *(v0 + 920);
  v4 = *(v0 + 912);
  v5 = *(v0 + 904);

  result = sub_26BF26D4C(v0 + 152);
  if (v4 + 1 == v5)
  {
    v7 = *(*(v0 + 800) + 48);
    if (*(v7 + 16))
    {
      v8 = *(v0 + 792);
      v10 = *(v8 + 32);
      v9 = *(v8 + 40);
      v11 = *(*(v0 + 800) + 48);

      result = sub_26BEBB618(v10, v9);
      if (v12)
      {
        v13 = *(*(v7 + 56) + 8 * result);
        if (*(v13 + 16))
        {
          v14 = *(v0 + 896);
          v15 = *(v0 + 832);
          v16 = *(v0 + 824);
          v17 = *(*(v7 + 56) + 8 * result);

          v18 = sub_26BEBB618(v16, v15);
          LOBYTE(v16) = v19;

          if (v16)
          {
            v20 = *(*(v13 + 56) + 8 * v18);
            *(v0 + 952) = v20;

            v21 = swift_task_alloc();
            *(v0 + 960) = v21;
            *v21 = v0;
            v21[1] = sub_26BF19B60;

            return sub_26BE96744(v0 + 608, v20, v20);
          }

          goto LABEL_32;
        }

        goto LABEL_30;
      }

      goto LABEL_28;
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v32 = *(v0 + 912) + 1;
  *(v0 + 912) = v32;
  v33 = *(v0 + 896);
  if (v32 >= *(v33 + 16))
  {
    goto LABEL_27;
  }

  v34 = *(*(v0 + 800) + 48);
  if (!*(v34 + 16))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v35 = v33 + 16 * v32;
  v36 = *(v35 + 32);
  v37 = *(v35 + 40);

  result = sub_26BEBB618(v36, v37);
  if ((v38 & 1) == 0)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v39 = *(*(v34 + 56) + 8 * result);
  if (!*(v39 + 16))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v40 = *(v0 + 832);
  v41 = *(v0 + 824);
  v42 = *(*(v34 + 56) + 8 * result);

  v43 = sub_26BEBB618(v41, v40);
  LOBYTE(v41) = v44;

  if ((v41 & 1) == 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v45 = *(v0 + 872);
  v46 = *(v0 + 864);
  v47 = *(*(v39 + 56) + 8 * v43);
  *(v0 + 920) = v47;

  *(v0 + 744) = v46;
  *(v0 + 752) = v45;
  v50 = (*v47 + 464);
  v51 = (*v50 + **v50);
  v48 = (*v50)[1];
  v49 = swift_task_alloc();
  *(v0 + 928) = v49;
  *v49 = v0;
  v49[1] = sub_26BF19534;

  return v51(v0 + 744);
}

uint64_t sub_26BF19B60()
{
  v2 = *(*v1 + 960);
  v5 = *v1;
  *(*v1 + 968) = v0;

  if (v0)
  {
    v3 = sub_26BF19EDC;
  }

  else
  {
    v3 = sub_26BF19C74;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF19C74()
{
  v1 = *(v0 + 952);
  v2 = *(v0 + 624);
  *(v0 + 552) = *(v0 + 608);
  *(v0 + 568) = v2;
  *(v0 + 584) = *(v0 + 640);
  *(v0 + 600) = *(v0 + 656);
  v7 = (*v1 + 512);
  v8 = (*v7 + **v7);
  v3 = (*v7)[1];
  v4 = swift_task_alloc();
  *(v0 + 976) = v4;
  *v4 = v0;
  v4[1] = sub_26BF19DC0;
  v5 = *(v0 + 952);

  return v8(v0 + 392);
}

uint64_t sub_26BF19DC0()
{
  v2 = *v1;
  v3 = *(*v1 + 976);
  v7 = *v1;
  *(*v1 + 984) = v0;

  if (v0)
  {
    v4 = *(v2 + 816);

    v5 = sub_26BF1A3D4;
  }

  else
  {
    v5 = sub_26BF19EF8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF19EF8()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 808);
  v3 = *(v0 + 440);
  *(v0 + 504) = *(v0 + 424);
  *(v0 + 520) = v3;
  *(v0 + 536) = *(v0 + 456);
  v4 = *(v0 + 408);
  *(v0 + 472) = *(v0 + 392);
  *(v0 + 488) = v4;
  sub_26BE2DA9C(v0 + 552, v0 + 272);
  *(v0 + 384) = 22;
  v6 = *(v0 + 472);
  v5 = *(v0 + 480);
  *(v0 + 760) = v6;
  *(v0 + 768) = v5;
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  sub_26BE2DC18(v0 + 272, v0 + 32);
  *(v0 + 776) = 0;
  *(v0 + 784) = 0xF000000000000000;
  sub_26BE00608(v6, v5);
  v7 = swift_task_alloc();
  *(v0 + 992) = v7;
  *v7 = v0;
  v7[1] = sub_26BF1A034;
  v8 = *(v0 + 832);
  v9 = *(v0 + 824);
  v10 = *(v0 + 800);

  return sub_26BEFDA68((v0 + 760), v9, v8, v0 + 16, 0, 0, (v0 + 776), 0);
}

uint64_t sub_26BF1A034()
{
  v2 = *v1;
  v3 = *(*v1 + 992);
  v6 = *v1;
  *(*v1 + 1000) = v0;

  if (v0)
  {
    sub_26BE2E258(v2 + 16, &qword_28045FA40, &qword_26C01D898);
    sub_26BE00258(*(v2 + 760), *(v2 + 768));
    v4 = sub_26BF1A45C;
  }

  else
  {

    sub_26BE2E258(v2 + 16, &qword_28045FA40, &qword_26C01D898);
    sub_26BE00258(*(v2 + 760), *(v2 + 768));
    v4 = sub_26BF1A1A4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BF1A1A4()
{
  v1 = v0[125];
  v2 = v0[100];
  sub_26BF05BF0(v0[101], v0[102], v0[103], v0[104]);
  v3 = v0[119];
  v4 = v0[105];
  sub_26BE00258(v0[108], v0[109]);

  sub_26BF26EB4((v0 + 59));
  sub_26BE2DC9C((v0 + 34));
  sub_26BE2DAF8((v0 + 69));
  v5 = v0[1];

  return v5();
}

uint64_t sub_26BF1A26C()
{
  v1 = v0[105];

  v2 = v0[107];
  v3 = v0[1];

  return v3();
}

uint64_t sub_26BF1A2D0()
{
  v1 = v0[109];
  v2 = v0[108];
  v3 = v0[105];

  sub_26BE00258(v2, v1);
  v4 = v0[111];
  v5 = v0[1];

  return v5();
}

uint64_t sub_26BF1A348()
{
  v1 = v0[115];
  v2 = v0[109];
  v3 = v0[108];
  v4 = v0[105];

  sub_26BE00258(v3, v2);
  v5 = v0[118];
  v6 = v0[1];

  return v6();
}

uint64_t sub_26BF1A3D4()
{
  v1 = v0[119];
  v2 = v0[105];
  sub_26BE00258(v0[108], v0[109]);

  sub_26BE2DAF8((v0 + 69));
  v3 = v0[123];
  v4 = v0[1];

  return v4();
}

uint64_t sub_26BF1A45C()
{
  v1 = v0[119];
  v2 = v0[105];
  sub_26BE00258(v0[108], v0[109]);

  sub_26BF26EB4((v0 + 59));
  sub_26BE2DC9C((v0 + 34));
  sub_26BE2DAF8((v0 + 69));
  v3 = v0[125];
  v4 = v0[1];

  return v4();
}

uint64_t sub_26BF1A514()
{
  v1 = v0[50];
  v0[51] = *(v1 + 72);
  v2 = *(v1 + 80);
  v0[52] = v2;
  if (v2 && *(v1 + 66) == 1)
  {
    swift_beginAccess();
    if (*(v1 + 32) == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_26C011280;
      *(v3 + 56) = MEMORY[0x277D837D0];
      *(v3 + 32) = 0xD000000000000039;
      *(v3 + 40) = 0x800000026C02CE90;

      sub_26C00B03C();
    }

    else
    {
    }

    v6 = swift_task_alloc();
    v0[53] = v6;
    *v6 = v0;
    v6[1] = sub_26BF1A6A8;
    v7 = v0[50];

    return sub_26BF820B8();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_26BF1A6A8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 424);
  v8 = *v3;
  v4[54] = a1;
  v4[55] = a2;
  v4[56] = v2;

  if (v2)
  {
    v6 = sub_26BF1AB04;
  }

  else
  {
    v6 = sub_26BF1A7C0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26BF1A7C0()
{
  v1 = v0[56];
  v2 = v0[50];
  sub_26BF0DAD4(v0[51], v0[52], 0, 0, v0 + 2);
  if (v1)
  {
    v3 = v0[52];
    sub_26BE00258(v0[54], v0[55]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[52];

    v7 = swift_task_alloc();
    v0[57] = v7;
    *v7 = v0;
    v7[1] = sub_26BF1A8D8;
    v8 = v0[54];
    v9 = v0[55];
    v10 = v0[50];

    return sub_26BF832D8((v0 + 2), v8, v9);
  }
}

uint64_t sub_26BF1A8D8()
{
  v2 = *(*v1 + 456);
  v5 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v3 = sub_26BF1AB68;
  }

  else
  {
    v3 = sub_26BF1A9EC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF1A9EC()
{
  v1 = v0[54];
  v2 = v0[55];
  if (*(v0[50] + 32) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_26C011280;
    *(v3 + 56) = MEMORY[0x277D837D0];
    *(v3 + 32) = 0xD00000000000001ALL;
    *(v3 + 40) = 0x800000026C02CE70;
    sub_26C00B03C();

    sub_26BE00258(v1, v2);
    sub_26BE29710((v0 + 2));
  }

  else
  {
    sub_26BE29710((v0 + 2));
    sub_26BE00258(v1, v2);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_26BF1AB04()
{
  v1 = v0[52];

  v2 = v0[56];
  v3 = v0[1];

  return v3();
}

uint64_t sub_26BF1AB68()
{
  sub_26BE00258(v0[54], v0[55]);
  sub_26BE29710((v0 + 2));
  v1 = v0[58];
  v2 = v0[1];

  return v2();
}

uint64_t sub_26BF1ABD4(uint64_t a1)
{
  *(v2 + 768) = v1;
  *(v2 + 760) = a1;
  return MEMORY[0x2822009F8](sub_26BF1ABF8, 0, 0);
}

uint64_t sub_26BF1ABF8()
{
  v1 = v0[96];
  v2 = v0[95];
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v0[97] = v5;
  v6 = v2[3];
  v0[98] = v6;
  result = swift_beginAccess();
  v8 = *(v1 + 48);
  if (!*(v8 + 16))
  {
    __break(1u);
    goto LABEL_15;
  }

  result = sub_26BEBB618(v3, v4);
  if ((v9 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = *(*(v8 + 56) + 8 * result);
  if (!*(v10 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = *(*(v8 + 56) + 8 * result);

  v12 = sub_26BEBB618(v5, v6);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = v0[96];
  v16 = v0[95];
  v0[99] = *(*(v10 + 56) + 8 * v12);

  v17 = *(v16 + 32);
  v0[100] = v17;
  v18 = *(v17 + 16);
  v0[101] = v18;
  result = swift_beginAccess();
  if (v18)
  {
    v0[103] = 0;
    v0[102] = MEMORY[0x277D84F90];
    v19 = v0[100];
    v20 = v0[96];
    v21 = *(v19 + 32);
    v0[104] = v21;
    v22 = *(v19 + 40);
    v0[105] = v22;
    v23 = *(v20 + 40);
    if (*(v23 + 16))
    {

      result = sub_26BEBB618(v21, v22);
      if (v24)
      {
        v25 = *(*(v23 + 56) + 8 * result);
        v0[106] = v25;

        v26 = swift_task_alloc();
        v0[107] = v26;
        *v26 = v0;
        v26[1] = sub_26BF1AF44;

        return sub_26BE8E304((v0 + 86), v25, v25);
      }

LABEL_19:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v27 = MEMORY[0x277D84F90];
  v0[114] = MEMORY[0x277D84F90];
  v28 = v0[99];
  v0[94] = v27;
  v29 = *(*v28 + 576);

  v33 = (v29 + *v29);
  v30 = v29[1];
  v31 = swift_task_alloc();
  v0[115] = v31;
  *v31 = v0;
  v31[1] = sub_26BF1B6EC;
  v32 = v0[99];

  return (v33)(v0 + 34, v0 + 94);
}

uint64_t sub_26BF1AF44()
{
  v2 = *v1;
  v3 = *(*v1 + 856);
  v8 = *v1;
  *(*v1 + 864) = v0;

  if (v0)
  {
    v4 = *(v2 + 840);

    v5 = sub_26BF1B068;
  }

  else
  {
    v6 = *(v2 + 848);

    v5 = sub_26BF1B0E4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF1B068()
{
  v1 = v0[106];
  v2 = v0[102];
  v3 = v0[99];

  v4 = v0[108];
  v5 = v0[1];

  return v5();
}

void sub_26BF1B0E4()
{
  v1 = *(v0 + 768);
  *(v0 + 872) = *(v0 + 688);
  v2 = *(v1 + 48);
  if (!*(v2 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = *(v0 + 840);
  v4 = *(v0 + 832);

  v5 = sub_26BEBB618(v4, v3);
  if ((v6 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = *(*(v2 + 56) + 8 * v5);
  if (!*(v7 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = *(v0 + 840);
  v9 = *(v0 + 784);
  v10 = *(v0 + 776);
  v11 = *(*(v2 + 56) + 8 * v5);

  v12 = sub_26BEBB618(v10, v9);
  LOBYTE(v10) = v13;

  if ((v10 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v14 = *(*(v7 + 56) + 8 * v12);
  *(v0 + 888) = v14;

  v15 = swift_task_alloc();
  *(v0 + 896) = v15;
  *v15 = v0;
  v15[1] = sub_26BF1B268;

  sub_26BE96EDC(v0 + 560, v14, v14);
}

uint64_t sub_26BF1B268()
{
  v2 = *v1;
  v3 = *(*v1 + 896);
  v7 = *v1;
  *(*v1 + 904) = v0;

  if (v0)
  {
    v4 = sub_26BF1B6D0;
  }

  else
  {
    v5 = *(v2 + 888);

    v4 = sub_26BF1B384;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BF1B384()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 872);
  v3 = *(v0 + 816);
  v4 = *(v0 + 576);
  *(v0 + 504) = *(v0 + 560);
  *(v0 + 520) = v4;
  *(v0 + 536) = *(v0 + 592);
  *(v0 + 552) = *(v0 + 608);
  sub_26BE2DB68(v0 + 504, v0 + 432);
  *(v0 + 488) = v2;
  *(v0 + 496) = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + 816);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_26BEEDC00(0, *(v6 + 2) + 1, 1, *(v0 + 816));
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = sub_26BEEDC00((v7 > 1), v8 + 1, 1, v6);
  }

  v9 = *(v0 + 808);
  v10 = *(v0 + 824) + 1;
  result = sub_26BE2DBC4(v0 + 504);
  *(v6 + 2) = v8 + 1;
  v12 = &v6[72 * v8];
  *(v12 + 2) = *(v0 + 432);
  v14 = *(v0 + 464);
  v13 = *(v0 + 480);
  v15 = *(v0 + 448);
  *(v12 + 12) = *(v0 + 496);
  *(v12 + 4) = v14;
  *(v12 + 5) = v13;
  *(v12 + 3) = v15;
  if (v10 == v9)
  {
    *(v0 + 912) = v6;
    v16 = *(v0 + 792);
    *(v0 + 752) = v6;
    v17 = *(*v16 + 576);

    v30 = (v17 + *v17);
    v18 = v17[1];
    v19 = swift_task_alloc();
    *(v0 + 920) = v19;
    *v19 = v0;
    v19[1] = sub_26BF1B6EC;
    v20 = *(v0 + 792);

    return v30(v0 + 272, v0 + 752);
  }

  v21 = *(v0 + 824) + 1;
  *(v0 + 824) = v21;
  *(v0 + 816) = v6;
  v22 = *(v0 + 768);
  v23 = *(v0 + 800) + 16 * v21;
  v24 = *(v23 + 32);
  *(v0 + 832) = v24;
  v25 = *(v23 + 40);
  *(v0 + 840) = v25;
  v26 = *(v22 + 40);
  if (!*(v26 + 16))
  {
    __break(1u);
    goto LABEL_15;
  }

  result = sub_26BEBB618(v24, v25);
  if ((v27 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v28 = *(*(v26 + 56) + 8 * result);
  *(v0 + 848) = v28;

  v29 = swift_task_alloc();
  *(v0 + 856) = v29;
  *v29 = v0;
  v29[1] = sub_26BF1AF44;

  return sub_26BE8E304(v0 + 688, v28, v28);
}

uint64_t sub_26BF1B6EC()
{
  v2 = *v1;
  v3 = *(*v1 + 920);
  v9 = *v1;
  *(*v1 + 928) = v0;

  if (v0)
  {
    v4 = *(v2 + 912);
    v5 = *(v2 + 752);

    v6 = sub_26BF1BE2C;
  }

  else
  {
    v7 = *(v2 + 752);

    v6 = sub_26BF1B81C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26BF1B81C()
{
  v1 = *(v0 + 800);
  v2 = *(v0 + 288);
  *(v0 + 352) = *(v0 + 272);
  *(v0 + 368) = v2;
  v3 = *(v0 + 320);
  *(v0 + 384) = *(v0 + 304);
  *(v0 + 400) = v3;
  *(v0 + 416) = *(v0 + 336);
  v4 = *(v0 + 352);
  v5 = *(v0 + 360);
  v6 = *(v0 + 368);
  v7 = *(v0 + 376);
  *(v0 + 704) = v4;
  *(v0 + 712) = v5;
  *(v0 + 144) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 720) = v6;
  *(v0 + 728) = v7;
  sub_26BE00608(v4, v5);
  sub_26BE2BAE8(v6, v7);
  v8 = swift_task_alloc();
  *(v0 + 936) = v8;
  *v8 = v0;
  v8[1] = sub_26BF1B944;
  v9 = *(v0 + 784);
  v10 = *(v0 + 776);
  v11 = *(v0 + 768);

  return sub_26BEFDA68((v0 + 704), v10, v9, v0 + 16, 0, 0, (v0 + 720), v1);
}

uint64_t sub_26BF1B944(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 936);
  v8 = *v2;
  v3[118] = a1;
  v3[119] = v1;

  if (v1)
  {
    v5 = v3[114];
    sub_26BE132D4(v3[90], v3[91]);
    sub_26BE2E258((v3 + 2), &qword_28045FA40, &qword_26C01D898);
    sub_26BE00258(v3[88], v3[89]);

    v6 = sub_26BF1BE90;
  }

  else
  {
    sub_26BE132D4(v3[90], v3[91]);
    sub_26BE2E258((v3 + 2), &qword_28045FA40, &qword_26C01D898);
    sub_26BE00258(v3[88], v3[89]);
    v6 = sub_26BF1BAC8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26BF1BAC8()
{
  v1 = *(v0 + 768);
  result = swift_beginAccess();
  v3 = *(v1 + 56);
  if (!*(v3 + 16))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  v4 = *(v0 + 784);
  v5 = *(v0 + 776);

  result = sub_26BEBB618(v5, v4);
  if ((v6 & 1) == 0)
  {
    goto LABEL_26;
  }

  v7 = *(*(v3 + 56) + 8 * result);

  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v35 = *(v0 + 944);
    v34 = *(v0 + 808) + 1;
    v11 = *(v0 + 952);
    v12 = (v7 + 40);
    v33 = v7;
    while (v10 < *(v7 + 16))
    {
      v13 = *(v0 + 800);
      v14 = *v12;
      *(v0 + 736) = *(v12 - 1);
      *(v0 + 744) = v14;
      v15 = swift_task_alloc();
      *(v15 + 16) = v0 + 736;

      LOBYTE(v13) = sub_26BEC254C(sub_26BF27278, v15, v13);

      if (v13)
      {
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_23;
        }

        if (v9 >= *(v35 + 16))
        {
          goto LABEL_24;
        }

        result = sub_26BF26CF0(v35 + 32 + 120 * v9, v0 + 152);
        if (*(v0 + 265) != 3)
        {
          v26 = *(v0 + 944);
          v27 = *(v0 + 912);
          v28 = *(v0 + 792);

          sub_26BF26D4C(v0 + 152);
LABEL_18:
          sub_26BE01654();
          swift_allocError();
          *v32 = 1;
          *(v32 + 8) = 0u;
          *(v32 + 24) = 0u;
          *(v32 + 40) = 0u;
          *(v32 + 56) = 0u;
          *(v32 + 72) = 0u;
          *(v32 + 88) = 0u;
          *(v32 + 104) = 0;
          *(v32 + 112) = 23;
          swift_willThrow();
          sub_26BE41488(v0 + 352);

          v25 = *(v0 + 8);
          goto LABEL_19;
        }

        v16 = *(v0 + 152);
        if (!v16)
        {
          goto LABEL_27;
        }

        v17 = v11;
        v18 = v8;
        v38 = *(v0 + 168);
        v39 = *(v0 + 160);
        v19 = *(v0 + 176);
        v36 = *(v0 + 192);
        v37 = *(v0 + 184);
        v20 = *(v0 + 200);

        sub_26BF26F5C(v16);
        v21 = *(v19 + 16);

        if (v21 != v34)
        {
          v29 = *(v0 + 944);
          v30 = *(v0 + 912);
          v31 = *(v0 + 792);

          goto LABEL_18;
        }

        ++v9;
        v7 = v33;
        v8 = v18;
        v11 = v17;
      }

      ++v10;
      v12 += 2;
      if (v8 == v10)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_15:
  v22 = *(v0 + 944);
  v23 = *(v0 + 912);
  v24 = *(v0 + 792);

  sub_26BE41488(v0 + 352);

  v25 = *(v0 + 8);
LABEL_19:

  return v25();
}

uint64_t sub_26BF1BE2C()
{
  v1 = v0[99];

  v2 = v0[116];
  v3 = v0[1];

  return v3();
}

uint64_t sub_26BF1BE90()
{
  v1 = v0[99];
  sub_26BE41488((v0 + 44));

  v2 = v0[119];
  v3 = v0[1];

  return v3();
}

uint64_t sub_26BF1BF00(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_26BF1BF90, 0, 0);
}

uint64_t sub_26BF1BF90()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = v0[12];
  v2 = v0[13];
  v3 = *v1;
  v0[14] = *v1;
  v4 = v1[1];
  v0[15] = v4;
  swift_beginAccess();
  v5 = *(v2 + 40);
  if (!*(v5 + 16))
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  v6 = sub_26BEBB618(v3, v4);
  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

  v8 = *(*(v5 + 56) + 8 * v6);
  v0[16] = v8;

  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = sub_26BF1C0EC;
  v10 = *MEMORY[0x277D85DE8];

  return sub_26BE90BC4(v8, v8);
}

uint64_t sub_26BF1C0EC(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *(*v2 + 136);
  v9 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v5 = sub_26BF1C3C4;
  }

  else
  {
    v5 = sub_26BF1C22C;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF1C22C()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = v0[12];
  if ((*(v1 + 24) & 1) != 0 || *(v0[18] + 16) == *(v1 + 16))
  {
    v2 = swift_task_alloc();
    v0[20] = v2;
    *v2 = v0;
    v2[1] = sub_26BF1C454;
    v3 = v0[16];
    v4 = *MEMORY[0x277D85DE8];

    return sub_26BE270D4();
  }

  else
  {
    v6 = v0[16];

    sub_26BE01654();
    swift_allocError();
    *v7 = 1;
    *(v7 + 8) = 0u;
    *(v7 + 24) = 0u;
    *(v7 + 40) = 0u;
    *(v7 + 56) = 0u;
    *(v7 + 72) = 0u;
    *(v7 + 88) = 0u;
    *(v7 + 104) = 0;
    *(v7 + 112) = 23;
    swift_willThrow();

    v8 = v0[1];
    v9 = *MEMORY[0x277D85DE8];

    return v8();
  }
}

uint64_t sub_26BF1C3C4()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[16];

  v2 = v0[19];
  v3 = v0[1];
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

uint64_t sub_26BF1C454()
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 160);
  v9 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = *(v2 + 144);

    v5 = sub_26BF1D79C;
  }

  else
  {
    v5 = sub_26BF1C5A4;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF1C5A4()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 128);

  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  *v2 = v0;
  v2[1] = sub_26BF1C684;
  v3 = *(v0 + 128);
  v4 = *MEMORY[0x277D85DE8];

  return sub_26BE90BC4(v3, v3);
}

uint64_t sub_26BF1C684(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *(*v2 + 176);
  v10 = *v2;
  v3[23] = a1;
  v3[24] = v1;

  if (v1)
  {
    v5 = v3[18];

    v6 = sub_26BF1CC60;
  }

  else
  {
    v6 = sub_26BF1C7D4;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26BF1C7D4()
{
  v48 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 96);
  if ((*(v1 + 40) & 1) == 0 && *(*(v0 + 184) + 16) != *(v1 + 32))
  {
    v17 = *(v0 + 144);
    v18 = *(v0 + 128);

    sub_26BE01654();
    swift_allocError();
    *v19 = 1;
    *(v19 + 8) = 0u;
    *(v19 + 24) = 0u;
    *(v19 + 40) = 0u;
    *(v19 + 56) = 0u;
    *(v19 + 72) = 0u;
    *(v19 + 88) = 0u;
    *(v19 + 104) = 0;
    *(v19 + 112) = 23;
    swift_willThrow();
    goto LABEL_11;
  }

  v2 = *(*(v0 + 144) + 16);
  *(v0 + 200) = v2;
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = *(v0 + 104);
  swift_beginAccess();
  v4 = 0;
  v5 = *(v0 + 192);
  do
  {
    *(v0 + 208) = v4;
    v6 = *(v0 + 144);
    if (v4 >= *(v6 + 16))
    {
      __break(1u);
      goto LABEL_29;
    }

    v7 = *(v0 + 184);
    v8 = v6 + 16 * v4;
    v9 = *(v8 + 32);
    *(v0 + 216) = v9;
    v10 = *(v8 + 40);
    *(v0 + 224) = v10;
    *(v0 + 64) = v9;
    *(v0 + 72) = v10;
    v11 = swift_task_alloc();
    *(v11 + 16) = v0 + 64;
    sub_26BE00608(v9, v10);
    LOBYTE(v7) = sub_26BEC25F8(sub_26BF272D0, v11, v7);

    if ((v7 & 1) == 0)
    {
      v22 = *(*(v0 + 104) + 48);
      if (*(v22 + 16))
      {
        v24 = *(v0 + 112);
        v23 = *(v0 + 120);
        v25 = *(*(v0 + 104) + 48);

        v26 = sub_26BEBB618(v24, v23);
        if (v27)
        {
          v28 = *(*(v22 + 56) + 8 * v26);
          *(v0 + 232) = v28;

          v29 = *(v28 + 32);
          *(v0 + 328) = v29;
          v30 = -1;
          v31 = -1 << v29;
          if (-v31 < 64)
          {
            v30 = ~(-1 << -v31);
          }

          v32 = v30 & *(v28 + 64);
          if (v32)
          {
            v33 = 0;
            v34 = *(v0 + 232);
LABEL_24:
            *(v0 + 240) = v32;
            *(v0 + 248) = v33;
            v37 = __clz(__rbit64(v32)) | (v33 << 6);
            v38 = (*(v34 + 48) + 16 * v37);
            *(v0 + 256) = *v38;
            *(v0 + 264) = v38[1];
            v39 = *(*(v34 + 56) + 8 * v37);
            *(v0 + 272) = v39;
            swift_retain_n();

            v40 = swift_task_alloc();
            *(v0 + 280) = v40;
            *v40 = v0;
            v40[1] = sub_26BF1CCF0;
            v41 = *MEMORY[0x277D85DE8];

            return sub_26BE8FE74(v0 + 80, v39, v39);
          }

          v35 = 0;
          v36 = ((63 - v31) >> 6) - 1;
          v34 = *(v0 + 232);
          while (v36 != v35)
          {
            v33 = v35 + 1;
            v32 = *(v34 + 8 * v35++ + 72);
            if (v32)
            {
              goto LABEL_24;
            }
          }

          v43 = *(v0 + 216);
          v42 = *(v0 + 224);
          v44 = *(v0 + 184);
          v45 = *(v0 + 144);
          v46 = *(v0 + 128);

          sub_26BE01654();
          swift_allocError();
          *v47 = 1;
          *(v47 + 8) = 0u;
          *(v47 + 24) = 0u;
          *(v47 + 40) = 0u;
          *(v47 + 56) = 0u;
          *(v47 + 72) = 0u;
          *(v47 + 88) = 0u;
          *(v47 + 104) = 0;
          *(v47 + 112) = 23;
          swift_willThrow();
          sub_26BE00258(v43, v42);
LABEL_11:

          v15 = *(v0 + 8);
          v20 = *MEMORY[0x277D85DE8];
          goto LABEL_12;
        }

LABEL_30:
        __break(1u);
      }

LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    sub_26BE00258(v9, v10);
    v4 = *(v0 + 208) + 1;
  }

  while (v4 != *(v0 + 200));
  v12 = *(v0 + 144);
LABEL_9:

  v13 = *(v0 + 184);
  v14 = *(v0 + 128);

  v15 = *(v0 + 8);
  v16 = *MEMORY[0x277D85DE8];
LABEL_12:

  return v15();
}

uint64_t sub_26BF1CC60()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[16];

  v2 = v0[24];
  v3 = v0[1];
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

uint64_t sub_26BF1CCF0()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 280);
  v7 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_26BF1D710;
  }

  else
  {
    v3 = sub_26BF1CE30;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF1CE30()
{
  v103 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 272);

  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = v3 >> 62;
  if (v3 >> 62 == 3)
  {
    v5 = 0;
    if (!v2)
    {
      v6 = *(v0 + 224);
      v7 = v3 == 0xC000000000000000 && v6 >> 62 == 3;
      v8 = v7 && v6 == 0xC000000000000000;
      if (v8 && *(v0 + 216) == 0)
      {
        v10 = *(v0 + 272);
        v11 = *(v0 + 232);

        v12 = 0;
        v13 = 0xC000000000000000;
LABEL_53:
        sub_26BE00258(v12, v13);

        v30 = *(v0 + 288);
LABEL_54:
        v42 = *(v0 + 256);
        v43 = *(v0 + 264);
        goto LABEL_55;
      }
    }

    goto LABEL_25;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(v3);
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (v4 != 2)
  {
    v5 = 0;
    goto LABEL_25;
  }

  v15 = *(v2 + 16);
  v14 = *(v2 + 24);
  v16 = __OFSUB__(v14, v15);
  v5 = v14 - v15;
  if (v16)
  {
    __break(1u);
LABEL_22:
    LODWORD(v5) = HIDWORD(v2) - v2;
    if (__OFSUB__(HIDWORD(v2), v2))
    {
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    v5 = v5;
  }

LABEL_25:
  v17 = *(v0 + 224);
  v18 = v17 >> 62;
  if ((v17 >> 62) <= 1)
  {
    if (v18)
    {
      v22 = *(v0 + 216);
      v23 = *(v0 + 220);
      v16 = __OFSUB__(v23, v22);
      v24 = v23 - v22;
      if (v16)
      {
LABEL_104:
        __break(1u);
        goto LABEL_105;
      }

      if (v5 != v24)
      {
        goto LABEL_42;
      }
    }

    else if (v5 != BYTE6(v17))
    {
      goto LABEL_42;
    }

LABEL_35:
    if (v5 >= 1)
    {
      if (v4 > 1)
      {
        if (v4 == 2)
        {
          v70 = *(v2 + 16);
          v71 = *(v2 + 24);
          sub_26BE00608(*(v0 + 216), *(v0 + 224));
          v72 = sub_26C008E9C();
          if (v72)
          {
            v73 = v72;
            v74 = sub_26C008ECC();
            if (__OFSUB__(v70, v74))
            {
LABEL_108:
              __break(1u);
LABEL_109:
              __break(1u);
            }

            v75 = v70 - v74 + v73;
          }

          else
          {
            v75 = 0;
          }

          if (__OFSUB__(v71, v70))
          {
LABEL_107:
            __break(1u);
            goto LABEL_108;
          }

          v101 = *(v0 + 288);
          v97 = *(v0 + 216);
          v96 = *(v0 + 224);
          sub_26C008EBC();
          sub_26BE567B0(v75, v97, v96, (v0 + 324));
          result = sub_26BE00258(*(v0 + 216), *(v0 + 224));
          if (v101)
          {
            goto LABEL_96;
          }

          sub_26BE00258(v2, v3);
          if ((*(v0 + 324) & 1) == 0)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v80 = *(v0 + 288);
          v81 = *(v0 + 216);
          *(v0 + 310) = 0;
          *(v0 + 316) = 0;
          sub_26BE00608(v81, v17);
          sub_26BE567B0(v0 + 310, v81, v17, (v0 + 327));
          result = sub_26BE00258(*(v0 + 216), *(v0 + 224));
          if (v80)
          {
            goto LABEL_96;
          }

          sub_26BE00258(v2, v3);
          if ((*(v0 + 327) & 1) == 0)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
        if (!v4)
        {
          v25 = *(v0 + 288);
          v26 = *(v0 + 216);
          *(v0 + 296) = v2;
          *(v0 + 304) = v3;
          *(v0 + 306) = BYTE2(v3);
          *(v0 + 307) = BYTE3(v3);
          *(v0 + 308) = BYTE4(v3);
          *(v0 + 309) = BYTE5(v3);
          sub_26BE00608(v26, v17);
          sub_26BE567B0(v0 + 296, v26, v17, (v0 + 326));
          result = sub_26BE00258(*(v0 + 216), *(v0 + 224));
          if (!v25)
          {
            sub_26BE00258(v2, v3);
            if ((*(v0 + 326) & 1) == 0)
            {
LABEL_40:
              v28 = *(v0 + 264);
              v29 = *(v0 + 272);

              v30 = 0;
              goto LABEL_43;
            }

            goto LABEL_85;
          }

LABEL_96:
          v100 = *MEMORY[0x277D85DE8];
          return result;
        }

        if (v2 >> 32 < v2)
        {
LABEL_106:
          __break(1u);
          goto LABEL_107;
        }

        sub_26BE00608(*(v0 + 216), *(v0 + 224));
        v76 = sub_26C008E9C();
        if (v76)
        {
          v77 = v76;
          v78 = sub_26C008ECC();
          if (__OFSUB__(v2, v78))
          {
            goto LABEL_109;
          }

          v79 = v2 - v78 + v77;
        }

        else
        {
          v79 = 0;
        }

        v102 = *(v0 + 288);
        v99 = *(v0 + 216);
        v98 = *(v0 + 224);
        sub_26C008EBC();
        sub_26BE567B0(v79, v99, v98, (v0 + 325));
        result = sub_26BE00258(*(v0 + 216), *(v0 + 224));
        if (v102)
        {
          goto LABEL_96;
        }

        sub_26BE00258(v2, v3);
        if ((*(v0 + 325) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

LABEL_85:
      v82 = *(v0 + 272);
      v83 = *(v0 + 232);

      v30 = 0;
      goto LABEL_54;
    }

    goto LABEL_52;
  }

  if (v18 == 2)
  {
    v19 = *(*(v0 + 216) + 16);
    v20 = *(*(v0 + 216) + 24);
    v16 = __OFSUB__(v20, v19);
    v21 = v20 - v19;
    if (v16)
    {
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    if (v5 != v21)
    {
      goto LABEL_42;
    }

    goto LABEL_35;
  }

  if (!v5)
  {
LABEL_52:
    v44 = *(v0 + 272);
    v45 = *(v0 + 232);

    v12 = v2;
    v13 = v3;
    goto LABEL_53;
  }

LABEL_42:
  v31 = *(v0 + 264);
  v32 = *(v0 + 272);

  sub_26BE00258(v2, v3);
  v30 = *(v0 + 288);
LABEL_43:
  v33 = *(v0 + 248);
  v34 = (*(v0 + 240) - 1) & *(v0 + 240);
  if (v34)
  {
LABEL_74:
    v36 = *(v0 + 232);
    goto LABEL_48;
  }

  while (1)
  {
    while (1)
    {
      v35 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

      v36 = *(v0 + 232);
      if (v35 >= (((1 << *(v0 + 328)) + 63) >> 6))
      {
        break;
      }

      v34 = *(v36 + 8 * v35 + 64);
      ++v33;
      if (v34)
      {
        v33 = v35;
LABEL_48:
        *(v0 + 240) = v34;
        *(v0 + 248) = v33;
        v37 = __clz(__rbit64(v34)) | (v33 << 6);
        v38 = (*(v36 + 48) + 16 * v37);
        *(v0 + 256) = *v38;
        *(v0 + 264) = v38[1];
        v39 = *(*(v36 + 56) + 8 * v37);
        *(v0 + 272) = v39;
        swift_retain_n();

        v40 = swift_task_alloc();
        *(v0 + 280) = v40;
        *v40 = v0;
        v40[1] = sub_26BF1CCF0;
        v41 = *MEMORY[0x277D85DE8];

        return sub_26BE8FE74(v0 + 80, v39, v39);
      }
    }

    v42 = 0;
    v43 = 0xE000000000000000;
LABEL_55:
    v46 = HIBYTE(v43) & 0xF;
    if ((v43 & 0x2000000000000000) == 0)
    {
      v46 = v42 & 0xFFFFFFFFFFFFLL;
    }

    if (!v46)
    {
      v85 = *(v0 + 216);
      v84 = *(v0 + 224);
      v86 = *(v0 + 184);
      v87 = *(v0 + 144);
      v88 = *(v0 + 128);

      sub_26BE01654();
      swift_allocError();
      *v89 = 1;
      *(v89 + 8) = 0u;
      *(v89 + 24) = 0u;
      *(v89 + 40) = 0u;
      *(v89 + 56) = 0u;
      *(v89 + 72) = 0u;
      *(v89 + 88) = 0u;
      *(v89 + 104) = 0;
      *(v89 + 112) = 23;
      swift_willThrow();
      sub_26BE00258(v85, v84);
      goto LABEL_88;
    }

    v47 = *(v0 + 104);
    sub_26BF05BF0(*(v0 + 112), *(v0 + 120), v42, v43);
    if (v30)
    {
      break;
    }

    sub_26BE00258(*(v0 + 216), *(v0 + 224));

    v48 = *(v0 + 208) + 1;
    if (v48 == *(v0 + 200))
    {
LABEL_64:
      v55 = *(v0 + 144);

      v56 = *(v0 + 184);
      v57 = *(v0 + 128);

      v58 = *(v0 + 8);
      v59 = *MEMORY[0x277D85DE8];
      goto LABEL_65;
    }

    v30 = 0;
    while (1)
    {
      *(v0 + 208) = v48;
      v49 = *(v0 + 144);
      if (v48 >= *(v49 + 16))
      {
        goto LABEL_100;
      }

      v50 = *(v0 + 184);
      v51 = v49 + 16 * v48;
      v52 = *(v51 + 32);
      *(v0 + 216) = v52;
      v53 = *(v51 + 40);
      *(v0 + 224) = v53;
      *(v0 + 64) = v52;
      *(v0 + 72) = v53;
      v54 = swift_task_alloc();
      *(v54 + 16) = v0 + 64;
      sub_26BE00608(v52, v53);
      LOBYTE(v50) = sub_26BEC25F8(sub_26BF272D0, v54, v50);

      if ((v50 & 1) == 0)
      {
        break;
      }

      sub_26BE00258(v52, v53);
      v48 = *(v0 + 208) + 1;
      if (v48 == *(v0 + 200))
      {
        goto LABEL_64;
      }
    }

    v60 = *(*(v0 + 104) + 48);
    if (!*(v60 + 16))
    {
      goto LABEL_101;
    }

    v62 = *(v0 + 112);
    v61 = *(v0 + 120);
    v63 = *(*(v0 + 104) + 48);

    v64 = sub_26BEBB618(v62, v61);
    if ((v65 & 1) == 0)
    {
      goto LABEL_102;
    }

    v66 = *(*(v60 + 56) + 8 * v64);
    *(v0 + 232) = v66;

    v33 = 0;
    v67 = *(v66 + 32);
    *(v0 + 328) = v67;
    v68 = 1 << v67;
    if (v68 < 64)
    {
      v69 = ~(-1 << v68);
    }

    else
    {
      v69 = -1;
    }

    v34 = v69 & *(v66 + 64);
    if (v34)
    {
      goto LABEL_74;
    }
  }

  v90 = *(v0 + 184);
  v91 = *(v0 + 144);
  v92 = *(v0 + 128);
  v93 = *(v0 + 216);
  v94 = *(v0 + 224);

  sub_26BE00258(v93, v94);

LABEL_88:

  v58 = *(v0 + 8);
  v95 = *MEMORY[0x277D85DE8];
LABEL_65:

  return v58();
}

uint64_t sub_26BF1D710()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 288);
  v2 = *MEMORY[0x277D85DE8];

  return swift_unexpectedError();
}

uint64_t sub_26BF1D79C()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[16];

  v2 = v0[21];
  v3 = v0[1];
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

uint64_t sub_26BF1D82C()
{
  v1[458] = v0;
  v2 = sub_26C00921C();
  v1[459] = v2;
  v3 = *(v2 - 8);
  v1[460] = v3;
  v4 = *(v3 + 64) + 15;
  v1[461] = swift_task_alloc();
  v1[462] = swift_task_alloc();
  v5 = sub_26C008FDC();
  v1[463] = v5;
  v6 = *(v5 - 8);
  v1[464] = v6;
  v7 = *(v6 + 64) + 15;
  v1[465] = swift_task_alloc();
  v1[466] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  v1[467] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[468] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF1D99C, 0, 0);
}

uint64_t sub_26BF1D99C()
{
  v1 = *(v0 + 3664);
  swift_beginAccess();
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  if (v2 >= *(v3 + 16))
  {
    if (qword_28045DF48 == -1)
    {
LABEL_10:
      v23 = *(v0 + 3744);
      v24 = *(v0 + 3728);
      v25 = *(v0 + 3720);
      v26 = *(v0 + 3696);
      v27 = *(v0 + 3688);
      v28 = *(v0 + 3680);
      v29 = *(v0 + 3672);
      v30 = __swift_project_value_buffer(*(v0 + 3736), qword_28045E4F0);
      (*(v28 + 56))(v23, 1, 1, v29);
      swift_beginAccess();
      sub_26BF25BE4(v23, v30);
      swift_endAccess();

      v31 = *(v0 + 8);
LABEL_11:

      return v31();
    }

LABEL_55:
    swift_once();
    goto LABEL_10;
  }

  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_55;
  }

  v4 = *(v0 + 3664);
  sub_26BE038A8(v3 + 40 * v2 + 32, v0 + 1896);
  if (*(v4 + 32) == 1)
  {
    v5 = *(v0 + 3664);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_26C011280;
    *(v0 + 3072) = 0;
    *(v0 + 3080) = 0xE000000000000000;
    sub_26C00AC1C();
    v7 = *(v0 + 3080);

    strcpy((v0 + 3120), "Running step ");
    *(v0 + 3134) = -4864;
    *(v0 + 3640) = *(v5 + 24);
    v8 = sub_26C00AEFC();
    MEMORY[0x26D699090](v8);

    MEMORY[0x26D699090](3026478, 0xE300000000000000);
    v9 = *(v0 + 3120);
    v10 = *(v0 + 3128);
    v11 = MEMORY[0x277D837D0];
    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 32) = v9;
    *(v6 + 40) = v10;
    sub_26C00B03C();

    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_26C011280;
    *(v0 + 2976) = 0;
    *(v0 + 2984) = 0xE000000000000000;
    sub_26C00AC1C();
    v13 = *(v0 + 2984);
    *(v0 + 3024) = *(v0 + 2976);
    *(v0 + 3032) = v13;
    MEMORY[0x26D699090](0x6974636120746F47, 0xEB00000000206E6FLL);
    __swift_project_boxed_opaque_existential_1((v0 + 1896), *(v0 + 1920));
    sub_26C00AF0C();
    MEMORY[0x26D699090](3026478, 0xE300000000000000);
    v14 = *(v0 + 3024);
    v15 = *(v0 + 3032);
    *(v12 + 56) = v11;
    *(v12 + 32) = v14;
    *(v12 + 40) = v15;
    sub_26C00B03C();
  }

  sub_26BE038A8(v0 + 1896, v0 + 1976);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA28, &qword_26C01D618);
  if (swift_dynamicCast())
  {
    v16 = *(v0 + 2184);
    v17 = *(v0 + 2192);
    *(v0 + 3752) = v17;
    v18 = *(v0 + 2200);
    v19 = *(v0 + 2208);
    *(v0 + 3760) = v19;
    v20 = swift_task_alloc();
    *(v0 + 3768) = v20;
    *v20 = v0;
    v20[1] = sub_26BF1F230;
    v21 = *(v0 + 3664);

    return sub_26BEFD100(v16, v17, v18, v19);
  }

  if (swift_dynamicCast())
  {
    v32 = *(v0 + 2152);
    v33 = *(v0 + 2160);
    *(v0 + 3784) = v33;
    v34 = *(v0 + 2168);
    v35 = *(v0 + 2176);
    *(v0 + 3792) = v35;
    v36 = swift_task_alloc();
    *(v0 + 3800) = v36;
    *v36 = v0;
    v36[1] = sub_26BF1F434;
    v37 = *(v0 + 3664);

    return sub_26BF0177C(v32, v33, v34, v35);
  }

  if (swift_dynamicCast())
  {
    v38 = *(v0 + 424);
    *(v0 + 496) = *(v0 + 408);
    *(v0 + 512) = v38;
    *(v0 + 528) = *(v0 + 440);
    *(v0 + 544) = *(v0 + 456);
    v39 = *(v0 + 392);
    *(v0 + 464) = *(v0 + 376);
    *(v0 + 480) = v39;
    v40 = swift_task_alloc();
    *(v0 + 3816) = v40;
    *v40 = v0;
    v40[1] = sub_26BF1F584;
    v41 = *(v0 + 3664);

    return sub_26BF01DA0(v0 + 464);
  }

  if (swift_dynamicCast())
  {
    v42 = *(v0 + 1096);
    *(v0 + 1136) = *(v0 + 1080);
    *(v0 + 1152) = v42;
    *(v0 + 1168) = *(v0 + 1112);
    *(v0 + 1184) = *(v0 + 1128);
    v43 = swift_task_alloc();
    *(v0 + 3832) = v43;
    *v43 = v0;
    v43[1] = sub_26BF1F6A0;
    v44 = *(v0 + 3664);

    return sub_26BF05E40(v0 + 1136);
  }

  if (swift_dynamicCast())
  {
    v45 = *(v0 + 3600);
    v46 = *(v0 + 3608);
    *(v0 + 3848) = v46;
    v47 = swift_task_alloc();
    *(v0 + 3856) = v47;
    *v47 = v0;
    v47[1] = sub_26BF1F7BC;
    v48 = *(v0 + 3664);

    return sub_26BF07E6C(v45, v46);
  }

  if (swift_dynamicCast())
  {
    v49 = *(v0 + 904);
    *(v0 + 824) = *(v0 + 888);
    *(v0 + 840) = v49;
    v50 = *(v0 + 936);
    *(v0 + 856) = *(v0 + 920);
    *(v0 + 872) = v50;
    v51 = swift_task_alloc();
    *(v0 + 3872) = v51;
    *v51 = v0;
    v51[1] = sub_26BF1F8F0;
    v52 = *(v0 + 3664);

    return sub_26BF097B4(v0 + 824);
  }

  if (swift_dynamicCast())
  {
    v53 = *(v0 + 2888);
    v54 = *(v0 + 2896);
    *(v0 + 3888) = v54;
    v55 = *(v0 + 2904);
    v56 = swift_task_alloc();
    *(v0 + 3896) = v56;
    *v56 = v0;
    v56[1] = sub_26BF1FA0C;
    v57 = *(v0 + 3664);

    return sub_26BF0AE24(v53, v54, v55);
  }

  if (swift_dynamicCast())
  {
    v58 = *(v0 + 2120);
    v59 = *(v0 + 2128);
    *(v0 + 3912) = v59;
    v60 = *(v0 + 2136);
    v61 = *(v0 + 2144);
    *(v0 + 3920) = v61;
    v62 = swift_task_alloc();
    *(v0 + 3928) = v62;
    *v62 = v0;
    v62[1] = sub_26BF1FB40;
    v63 = *(v0 + 3664);

    return sub_26BF0F1A0(v58, v59, v60, v61);
  }

  if (swift_dynamicCast())
  {
    v64 = *(v0 + 2088);
    v65 = *(v0 + 2096);
    *(v0 + 3944) = v65;
    v66 = *(v0 + 2104);
    v67 = *(v0 + 2112);
    *(v0 + 3952) = v67;
    v68 = swift_task_alloc();
    *(v0 + 3960) = v68;
    *v68 = v0;
    v68[1] = sub_26BF1FC90;
    v69 = *(v0 + 3664);

    return sub_26BF1238C(v64, v65, v66, v67);
  }

  if (swift_dynamicCast())
  {
    v70 = *(v0 + 1448);
    *(v0 + 1384) = *(v0 + 1432);
    *(v0 + 1400) = v70;
    *(v0 + 1416) = *(v0 + 1464);
    v71 = swift_task_alloc();
    *(v0 + 3976) = v71;
    *v71 = v0;
    v71[1] = sub_26BF1FDE0;
    v72 = *(v0 + 3664);

    return sub_26BF18A84(v0 + 1384);
  }

  if (swift_dynamicCast())
  {
    v73 = *(v0 + 1496);
    *(v0 + 1336) = *(v0 + 1480);
    *(v0 + 1352) = v73;
    *(v0 + 1368) = *(v0 + 1512);
    v74 = swift_task_alloc();
    *(v0 + 3992) = v74;
    *v74 = v0;
    v74[1] = sub_26BF1FF70;
    v75 = *(v0 + 3664);

    return sub_26BF12A6C(v0 + 1336);
  }

  if (swift_dynamicCast())
  {
    v76 = *(v0 + 1544);
    *(v0 + 1288) = *(v0 + 1528);
    *(v0 + 1304) = v76;
    *(v0 + 1320) = *(v0 + 1560);
    v77 = swift_task_alloc();
    *(v0 + 4008) = v77;
    *v77 = v0;
    v77[1] = sub_26BF20100;
    v78 = *(v0 + 3664);

    return sub_26BF0DC34(v0 + 1288);
  }

  if (swift_dynamicCast())
  {
    v79 = *(v0 + 1592);
    *(v0 + 1240) = *(v0 + 1576);
    *(v0 + 1256) = v79;
    *(v0 + 1272) = *(v0 + 1608);
    v80 = swift_task_alloc();
    *(v0 + 4024) = v80;
    *v80 = v0;
    v80[1] = sub_26BF202B0;
    v81 = *(v0 + 3664);

    return sub_26BF0E2DC(v0 + 1240);
  }

  if (swift_dynamicCast())
  {
    v82 = *(v0 + 776);
    *(v0 + 1016) = *(v0 + 760);
    *(v0 + 1032) = v82;
    v83 = *(v0 + 808);
    *(v0 + 1048) = *(v0 + 792);
    *(v0 + 1064) = v83;
    v84 = swift_task_alloc();
    *(v0 + 4040) = v84;
    *v84 = v0;
    v84[1] = sub_26BF20440;

    return sub_26BF265C4(v0 + 1016);
  }

  if (swift_dynamicCast())
  {
    v85 = *(v0 + 1688);
    *(v0 + 1192) = *(v0 + 1672);
    *(v0 + 1208) = v85;
    *(v0 + 1224) = *(v0 + 1704);
    v86 = swift_task_alloc();
    *(v0 + 4056) = v86;
    *v86 = v0;
    v86[1] = sub_26BF206A8;
    v87 = *(v0 + 3664);

    return sub_26BF0EA34(v0 + 1192);
  }

  if (swift_dynamicCast())
  {
    v88 = *(v0 + 712);
    *(v0 + 952) = *(v0 + 696);
    *(v0 + 968) = v88;
    v89 = *(v0 + 744);
    *(v0 + 984) = *(v0 + 728);
    *(v0 + 1000) = v89;
    v90 = swift_task_alloc();
    *(v0 + 4072) = v90;
    *v90 = v0;
    v90[1] = sub_26BF20838;
    v91 = *(v0 + 3664);

    return sub_26BF13A1C(v0 + 952);
  }

  if (swift_dynamicCast())
  {
    v92 = *(v0 + 2056);
    v93 = *(v0 + 2064);
    *(v0 + 4088) = v93;
    v94 = *(v0 + 2072);
    v95 = *(v0 + 2080);
    *(v0 + 4096) = v95;
    v96 = swift_task_alloc();
    *(v0 + 4104) = v96;
    *v96 = v0;
    v96[1] = sub_26BF20954;
    v97 = *(v0 + 3664);

    return sub_26BF15A4C(v92, v93, v94, v95);
  }

  if (swift_dynamicCast())
  {
    v98 = *(v0 + 600);
    *(v0 + 656) = *(v0 + 584);
    *(v0 + 672) = v98;
    *(v0 + 688) = *(v0 + 616);
    v99 = *(v0 + 568);
    *(v0 + 624) = *(v0 + 552);
    *(v0 + 640) = v99;
    v100 = swift_task_alloc();
    *(v0 + 4120) = v100;
    *v100 = v0;
    v100[1] = sub_26BF20AA4;
    v101 = *(v0 + 3664);

    return sub_26BF15C60(v0 + 624);
  }

  if (swift_dynamicCast())
  {
    v102 = *(v0 + 2032);
    *(v0 + 1816) = *(v0 + 2016);
    *(v0 + 1832) = v102;
    *(v0 + 1848) = *(v0 + 2048);
    v103 = swift_task_alloc();
    *(v0 + 4136) = v103;
    *v103 = v0;
    v103[1] = sub_26BF20BC0;
    v104 = *(v0 + 3664);

    return sub_26BF16334(v0 + 1816);
  }

  if (swift_dynamicCast())
  {
    v105 = *(v0 + 371);
    if (v105 != 2)
    {
      *(*(v0 + 3664) + 64) = v105 & 1;
    }

LABEL_91:
    v106 = *(v0 + 3664);
    __swift_destroy_boxed_opaque_existential_1((v0 + 1976));
    v107 = *(v106 + 24);
    v108 = __OFADD__(v107, 1);
    v109 = v107 + 1;
    if (!v108)
    {
      *(*(v0 + 3664) + 24) = v109;
      v110 = swift_task_alloc();
      *(v0 + 4296) = v110;
      *v110 = v0;
      v110[1] = sub_26BF217E8;
      v111 = *(v0 + 3664);

      return sub_26BF1A4F4();
    }

    __break(1u);
LABEL_120:
    swift_once();
LABEL_110:
    v139 = *(v0 + 3744);
    v140 = *(v0 + 3680);
    v141 = *(v0 + 3672);
    v142 = __swift_project_value_buffer(*(v0 + 3736), qword_28045E4F0);
    (*(v140 + 56))(v139, 1, 1, v141);
    swift_beginAccess();
    sub_26BF25BE4(v139, v142);
    swift_endAccess();
    v143 = *(v0 + 3744);
    v144 = *(v0 + 3728);
    v145 = *(v0 + 3720);
    v146 = *(v0 + 3696);
    v147 = *(v0 + 3688);

    v31 = *(v0 + 8);
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    *(v0 + 4152) = *(v0 + 3136);
    *(v0 + 4160) = *(v0 + 3144);
    v112 = swift_task_alloc();
    *(v0 + 4168) = v112;
    *v112 = v0;
    v112[1] = sub_26BF20D64;
    v113 = *(v0 + 3664);

    return sub_26BF820B8();
  }

  else if (swift_dynamicCast())
  {
    v114 = *(v0 + 3664);
    v115 = *(v0 + 1624);
    *(v0 + 4208) = *(v0 + 1632);
    v116 = *(v0 + 1640);
    v117 = *(v0 + 1648);
    *(v0 + 4216) = v117;
    v118 = *(v0 + 1656);
    v119 = *(v0 + 1664);
    *(v0 + 4224) = v119;
    sub_26BF0DAD4(v116, v117, v118, v119, (v0 + 16));
    v134 = *(v0 + 3720);
    sub_26C008F9C();
    v135 = sub_26C008FFC();
    *(v0 + 4232) = v135;
    *(v0 + 4240) = v136;
    v137 = *(v0 + 3720);
    v138 = *(v0 + 3704);
    v151 = v135;
    v152 = v136;
    (*(*(v0 + 3712) + 8))(*(v0 + 3720), *(v0 + 3704));
    v153 = swift_task_alloc();
    *(v0 + 4248) = v153;
    *v153 = v0;
    v153[1] = sub_26BF2119C;
    v154 = *(v0 + 3664);

    return sub_26BF832D8(v0 + 16, v151, v152);
  }

  else
  {
    if (swift_dynamicCast())
    {
      v120 = *(v0 + 3696);
      v121 = *(v0 + 3688);
      v122 = *(v0 + 3680);
      v123 = *(v0 + 3672);
      v124 = *(v0 + 3616);
      sub_26C00920C();
      sub_26C0091BC();
      v125 = *(v122 + 8);
      v125(v121, v123);
      if (qword_28045DF48 != -1)
      {
        swift_once();
      }

      v126 = *(v0 + 3744);
      v127 = *(v0 + 3696);
      v128 = *(v0 + 3680);
      v129 = *(v0 + 3672);
      v130 = __swift_project_value_buffer(*(v0 + 3736), qword_28045E4F0);
      (*(v128 + 16))(v126, v127, v129);
      (*(v128 + 56))(v126, 0, 1, v129);
      swift_beginAccess();
      sub_26BF25BE4(v126, v130);
      swift_endAccess();
      v125(v127, v129);
      goto LABEL_91;
    }

    if (swift_dynamicCast())
    {
      v131 = *(v0 + 1952);
      *(v0 + 1856) = *(v0 + 1936);
      *(v0 + 1872) = v131;
      *(v0 + 1888) = *(v0 + 1968);
      v132 = swift_task_alloc();
      *(v0 + 4264) = v132;
      *v132 = v0;
      v132[1] = sub_26BF21528;
      v133 = *(v0 + 3664);

      return sub_26BF1ABD4(v0 + 1856);
    }

    else
    {
      if (!swift_dynamicCast())
      {
        sub_26BE773C4();
        swift_allocError();
        *v155 = 0;
        v155[1] = 0;
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_1((v0 + 1976));
        __swift_destroy_boxed_opaque_existential_1((v0 + 1896));
        if (qword_28045DF48 == -1)
        {
          goto LABEL_110;
        }

        goto LABEL_120;
      }

      v148 = *(v0 + 1784);
      *(v0 + 1720) = *(v0 + 1768);
      *(v0 + 1736) = v148;
      *(v0 + 1745) = *(v0 + 1793);
      v149 = swift_task_alloc();
      *(v0 + 4280) = v149;
      *v149 = v0;
      v149[1] = sub_26BF216CC;
      v150 = *(v0 + 3664);

      return sub_26BF1BF00(v0 + 1720);
    }
  }
}

uint64_t sub_26BF1F230()
{
  v2 = *v1;
  v3 = *(*v1 + 3768);
  v4 = *v1;
  *(*v1 + 3776) = v0;

  v5 = *(v2 + 3760);
  v6 = *(v2 + 3752);

  if (v0)
  {
    v7 = sub_26BF23184;
  }

  else
  {
    v7 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BF1F380()
{
  v1 = v0[458];
  result = __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  v3 = *(v1 + 24);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v0[458] + 24) = v5;
    v6 = swift_task_alloc();
    v0[537] = v6;
    *v6 = v0;
    v6[1] = sub_26BF217E8;
    v7 = v0[458];

    return sub_26BF1A4F4();
  }

  return result;
}

uint64_t sub_26BF1F434()
{
  v2 = *v1;
  v3 = *(*v1 + 3800);
  v4 = *v1;
  *(*v1 + 3808) = v0;

  v5 = *(v2 + 3792);
  v6 = *(v2 + 3784);

  if (v0)
  {
    v7 = sub_26BF232D0;
  }

  else
  {
    v7 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BF1F584()
{
  v2 = *v1;
  v3 = *(*v1 + 3816);
  v6 = *v1;
  *(v2 + 3824) = v0;

  sub_26BEFB09C(v2 + 464);
  if (v0)
  {
    v4 = sub_26BF2341C;
  }

  else
  {
    v4 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BF1F6A0()
{
  v2 = *v1;
  v3 = *(*v1 + 3832);
  v6 = *v1;
  *(v2 + 3840) = v0;

  sub_26BF268C8(v2 + 1136);
  if (v0)
  {
    v4 = sub_26BF23568;
  }

  else
  {
    v4 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BF1F7BC()
{
  v2 = *v1;
  v3 = *(*v1 + 3856);
  v4 = *v1;
  *(*v1 + 3864) = v0;

  v5 = *(v2 + 3848);

  if (v0)
  {
    v6 = sub_26BF236B4;
  }

  else
  {
    v6 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26BF1F8F0()
{
  v2 = *v1;
  v3 = *(*v1 + 3872);
  v6 = *v1;
  *(v2 + 3880) = v0;

  sub_26BEFAF38(v2 + 824);
  if (v0)
  {
    v4 = sub_26BF23800;
  }

  else
  {
    v4 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BF1FA0C()
{
  v2 = *v1;
  v3 = *(*v1 + 3896);
  v4 = *v1;
  *(*v1 + 3904) = v0;

  v5 = *(v2 + 3888);

  if (v0)
  {
    v6 = sub_26BF2394C;
  }

  else
  {
    v6 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26BF1FB40()
{
  v2 = *v1;
  v3 = *(*v1 + 3928);
  v4 = *v1;
  *(*v1 + 3936) = v0;

  v5 = *(v2 + 3920);
  v6 = *(v2 + 3912);

  if (v0)
  {
    v7 = sub_26BF23A98;
  }

  else
  {
    v7 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BF1FC90()
{
  v2 = *v1;
  v3 = *(*v1 + 3960);
  v4 = *v1;
  *(*v1 + 3968) = v0;

  v5 = *(v2 + 3952);
  v6 = *(v2 + 3944);

  if (v0)
  {
    v7 = sub_26BF23BE4;
  }

  else
  {
    v7 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BF1FDE0()
{
  v2 = *v1;
  v3 = (*v1 + 1384);
  v4 = *(*v1 + 3976);
  v9 = *v1;
  *(v2 + 3984) = v0;

  v5 = (v2 + 1416);
  v6 = (v2 + 1400);
  if (v0)
  {
    *(v2 + 3168) = *v3;
    sub_26BF25CA8(v2 + 3168);
    *(v2 + 3152) = *v6;
    sub_26BF25CA8(v2 + 3152);
    *(v2 + 2912) = *v5;
    sub_26BF25CA8(v2 + 2912);
    v7 = sub_26BF23D30;
  }

  else
  {
    *(v2 + 3568) = *v3;
    sub_26BF25CA8(v2 + 3568);
    *(v2 + 3584) = *v6;
    sub_26BF25CA8(v2 + 3584);
    *(v2 + 2928) = *v5;
    sub_26BF25CA8(v2 + 2928);
    v7 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BF1FF70()
{
  v2 = *v1;
  v3 = (*v1 + 1336);
  v4 = *(*v1 + 3992);
  v9 = *v1;
  *(v2 + 4000) = v0;

  v5 = (v2 + 1368);
  v6 = (v2 + 1352);
  if (v0)
  {
    *(v2 + 3520) = *v3;
    sub_26BF25CA8(v2 + 3520);
    *(v2 + 3536) = *v6;
    sub_26BF25CA8(v2 + 3536);
    *(v2 + 3552) = *v5;
    sub_26BF25CA8(v2 + 3552);
    v7 = sub_26BF23E7C;
  }

  else
  {
    *(v2 + 3472) = *v3;
    sub_26BF25CA8(v2 + 3472);
    *(v2 + 3488) = *v6;
    sub_26BF25CA8(v2 + 3488);
    *(v2 + 3504) = *v5;
    sub_26BF25CA8(v2 + 3504);
    v7 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BF20100()
{
  v2 = *v1;
  v3 = (*v1 + 1288);
  v4 = *(*v1 + 4008);
  v9 = *v1;
  *(v2 + 4016) = v0;

  v5 = (v2 + 1320);
  v6 = (v2 + 1304);
  if (v0)
  {
    *(v2 + 3424) = *v3;
    sub_26BF25CA8(v2 + 3424);
    *(v2 + 3440) = *v6;
    sub_26BF25CA8(v2 + 3440);
    *(v2 + 3456) = *v5;
    sub_26BE2E258(v2 + 3456, &qword_28045EE08, &qword_26C016570);
    v7 = sub_26BF23FC8;
  }

  else
  {
    *(v2 + 3376) = *v3;
    sub_26BF25CA8(v2 + 3376);
    *(v2 + 3392) = *v6;
    sub_26BF25CA8(v2 + 3392);
    *(v2 + 3408) = *v5;
    sub_26BE2E258(v2 + 3408, &qword_28045EE08, &qword_26C016570);
    v7 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BF202B0()
{
  v2 = *v1;
  v3 = (*v1 + 1240);
  v4 = *(*v1 + 4024);
  v9 = *v1;
  *(v2 + 4032) = v0;

  v5 = (v2 + 1272);
  v6 = (v2 + 1256);
  if (v0)
  {
    *(v2 + 3328) = *v3;
    sub_26BF25CA8(v2 + 3328);
    *(v2 + 3344) = *v6;
    sub_26BF25CA8(v2 + 3344);
    *(v2 + 3360) = *v5;
    sub_26BF25CA8(v2 + 3360);
    v7 = sub_26BF24114;
  }

  else
  {
    *(v2 + 3280) = *v3;
    sub_26BF25CA8(v2 + 3280);
    *(v2 + 3296) = *v6;
    sub_26BF25CA8(v2 + 3296);
    *(v2 + 3312) = *v5;
    sub_26BF25CA8(v2 + 3312);
    v7 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BF20440()
{
  v2 = *v1;
  v3 = *(*v1 + 4040);
  v6 = *v1;
  *(v2 + 4048) = v0;

  sub_26BEFAC30(v2 + 1016);
  if (v0)
  {
    v4 = sub_26BF2055C;
  }

  else
  {
    v4 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BF2055C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  __swift_destroy_boxed_opaque_existential_1(v0 + 237);
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v1 = v0[468];
  v2 = v0[460];
  v3 = v0[459];
  v4 = __swift_project_value_buffer(v0[467], qword_28045E4F0);
  (*(v2 + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  sub_26BF25BE4(v1, v4);
  swift_endAccess();
  v5 = v0[506];
  v6 = v0[468];
  v7 = v0[466];
  v8 = v0[465];
  v9 = v0[462];
  v10 = v0[461];

  v11 = v0[1];

  return v11();
}

uint64_t sub_26BF206A8()
{
  v2 = *v1;
  v3 = (*v1 + 1192);
  v4 = *(*v1 + 4056);
  v9 = *v1;
  *(v2 + 4064) = v0;

  v5 = (v2 + 1224);
  v6 = (v2 + 1208);
  if (v0)
  {
    *(v2 + 3232) = *v3;
    sub_26BF25CA8(v2 + 3232);
    *(v2 + 3248) = *v6;
    sub_26BF25CA8(v2 + 3248);
    *(v2 + 3264) = *v5;
    sub_26BF25CA8(v2 + 3264);
    v7 = sub_26BF24260;
  }

  else
  {
    *(v2 + 3184) = *v3;
    sub_26BF25CA8(v2 + 3184);
    *(v2 + 3200) = *v6;
    sub_26BF25CA8(v2 + 3200);
    *(v2 + 3216) = *v5;
    sub_26BF25CA8(v2 + 3216);
    v7 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BF20838()
{
  v2 = *v1;
  v3 = *(*v1 + 4072);
  v6 = *v1;
  *(v2 + 4080) = v0;

  sub_26BEFAB20(v2 + 952);
  if (v0)
  {
    v4 = sub_26BF243AC;
  }

  else
  {
    v4 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BF20954()
{
  v2 = *v1;
  v3 = *(*v1 + 4104);
  v4 = *v1;
  *(*v1 + 4112) = v0;

  v5 = *(v2 + 4096);
  v6 = *(v2 + 4088);

  if (v0)
  {
    v7 = sub_26BF244F8;
  }

  else
  {
    v7 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BF20AA4()
{
  v2 = *v1;
  v3 = *(*v1 + 4120);
  v6 = *v1;
  *(v2 + 4128) = v0;

  sub_26BEFAA10(v2 + 624);
  if (v0)
  {
    v4 = sub_26BF24644;
  }

  else
  {
    v4 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BF20BC0()
{
  v2 = *v1;
  v3 = (*v1 + 1816);
  v4 = *(*v1 + 4136);
  v8 = *v1;
  *(v2 + 4144) = v0;

  v5 = (v2 + 1832);
  if (v0)
  {
    *(v2 + 3088) = *v3;
    sub_26BF25CA8(v2 + 3088);
    *(v2 + 3104) = *v5;
    sub_26BF25CA8(v2 + 3104);
    *(v2 + 3624) = *(v2 + 1848);
    sub_26BE2E258(v2 + 3624, &qword_28045E4B0, &qword_26C00ECE0);
    v6 = sub_26BF24790;
  }

  else
  {
    *(v2 + 3040) = *v3;
    sub_26BF25CA8(v2 + 3040);
    *(v2 + 3056) = *v5;
    sub_26BF25CA8(v2 + 3056);
    *(v2 + 3632) = *(v2 + 1848);
    sub_26BE2E258(v2 + 3632, &qword_28045E4B0, &qword_26C00ECE0);
    v6 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26BF20D64(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 4168);
  v6 = *v3;
  v4[522] = a1;
  v4[523] = a2;
  v4[524] = v2;

  if (v2)
  {
    v7 = v4[520];

    v4[525] = v2;
    v8 = sub_26BF21050;
  }

  else
  {
    v8 = sub_26BF20E98;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26BF20E98()
{
  v1 = v0[524];
  v2 = v0[523];
  v3 = v0[522];
  v4 = v0[520];
  v5 = v0[519];
  v6 = v0[466];
  sub_26C008F9C();
  sub_26C00912C();
  if (v1)
  {
    v7 = v0[520];
    v8 = v0[466];
    v9 = v0[464];
    v10 = v0[463];
    sub_26BE00258(v0[522], v0[523]);

    (*(v9 + 8))(v8, v10);
    v0[525] = v1;
    v11 = sub_26BF21050;
    v12 = 0;
    v13 = 0;

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  v14 = v0[520];
  v15 = v0[466];
  v16 = v0[464];
  v17 = v0[463];
  sub_26BE00258(v0[522], v0[523]);

  (*(v16 + 8))(v15, v17);
  v18 = v0[458];
  v11 = __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  v19 = *(v18 + 24);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  *(v0[458] + 24) = v21;
  v22 = swift_task_alloc();
  v0[537] = v22;
  *v22 = v0;
  v22[1] = sub_26BF217E8;
  v23 = v0[458];

  return sub_26BF1A4F4();
}

uint64_t sub_26BF21050()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  __swift_destroy_boxed_opaque_existential_1(v0 + 237);
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v1 = v0[468];
  v2 = v0[460];
  v3 = v0[459];
  v4 = __swift_project_value_buffer(v0[467], qword_28045E4F0);
  (*(v2 + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  sub_26BF25BE4(v1, v4);
  swift_endAccess();
  v5 = v0[525];
  v6 = v0[468];
  v7 = v0[466];
  v8 = v0[465];
  v9 = v0[462];
  v10 = v0[461];

  v11 = v0[1];

  return v11();
}

uint64_t sub_26BF2119C()
{
  v2 = *(*v1 + 4248);
  v5 = *v1;
  *(*v1 + 4256) = v0;

  if (v0)
  {
    v3 = sub_26BF213A4;
  }

  else
  {
    v3 = sub_26BF212B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF212B0()
{
  v1 = v0[528];
  v2 = v0[527];
  v3 = v0[526];
  sub_26BE00258(v0[529], v0[530]);

  sub_26BE29710((v0 + 2));
  v4 = v0[458];
  result = __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  v6 = *(v4 + 24);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v0[458] + 24) = v8;
    v9 = swift_task_alloc();
    v0[537] = v9;
    *v9 = v0;
    v9[1] = sub_26BF217E8;
    v10 = v0[458];

    return sub_26BF1A4F4();
  }

  return result;
}

uint64_t sub_26BF213A4()
{
  v1 = v0[528];
  v2 = v0[527];
  v3 = v0[526];
  sub_26BE00258(v0[529], v0[530]);

  sub_26BE29710((v0 + 2));
  v4 = v0[532];
  __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  __swift_destroy_boxed_opaque_existential_1(v0 + 237);
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v5 = v0[468];
  v6 = v0[460];
  v7 = v0[459];
  v8 = __swift_project_value_buffer(v0[467], qword_28045E4F0);
  (*(v6 + 56))(v5, 1, 1, v7);
  swift_beginAccess();
  sub_26BF25BE4(v5, v8);
  swift_endAccess();
  v9 = v0[468];
  v10 = v0[466];
  v11 = v0[465];
  v12 = v0[462];
  v13 = v0[461];

  v14 = v0[1];

  return v14();
}

uint64_t sub_26BF21528()
{
  v2 = *v1;
  v3 = (*v1 + 1856);
  v4 = *(*v1 + 4264);
  v8 = *v1;
  *(v2 + 4272) = v0;

  v5 = (v2 + 1872);
  if (v0)
  {
    *(v2 + 2992) = *v3;
    sub_26BF25CA8(v2 + 2992);
    *(v2 + 3008) = *v5;
    sub_26BF25CA8(v2 + 3008);
    *(v2 + 3648) = *(v2 + 1888);
    sub_26BE2E258(v2 + 3648, &qword_28045E4B0, &qword_26C00ECE0);
    v6 = sub_26BF248DC;
  }

  else
  {
    *(v2 + 2944) = *v3;
    sub_26BF25CA8(v2 + 2944);
    *(v2 + 2960) = *v5;
    sub_26BF25CA8(v2 + 2960);
    *(v2 + 3656) = *(v2 + 1888);
    sub_26BE2E258(v2 + 3656, &qword_28045E4B0, &qword_26C00ECE0);
    v6 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26BF216CC()
{
  v2 = *v1;
  v3 = *(*v1 + 4280);
  v6 = *v1;
  *(v2 + 4288) = v0;

  sub_26BF25C54(v2 + 1720);
  if (v0)
  {
    v4 = sub_26BF24A28;
  }

  else
  {
    v4 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BF217E8()
{
  v2 = *(*v1 + 4296);
  v5 = *v1;
  *(*v1 + 4304) = v0;

  if (v0)
  {
    v3 = sub_26BF24B74;
  }

  else
  {
    v3 = sub_26BF218FC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF218FC()
{
  v1 = *(v0 + 3664);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1896));
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  if (v2 >= *(v3 + 16))
  {
    if (qword_28045DF48 == -1)
    {
LABEL_10:
      v24 = *(v0 + 3744);
      v25 = *(v0 + 3728);
      v26 = *(v0 + 3720);
      v27 = *(v0 + 3696);
      v28 = *(v0 + 3688);
      v29 = *(v0 + 3680);
      v30 = *(v0 + 3672);
      v31 = __swift_project_value_buffer(*(v0 + 3736), qword_28045E4F0);
      (*(v29 + 56))(v24, 1, 1, v30);
      swift_beginAccess();
      sub_26BF25BE4(v24, v31);
      swift_endAccess();

      v32 = *(v0 + 8);
LABEL_11:

      return v32();
    }

LABEL_55:
    swift_once();
    goto LABEL_10;
  }

  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_55;
  }

  v4 = *(v0 + 4304);
  v5 = *(v0 + 3664);
  sub_26BE038A8(v3 + 40 * v2 + 32, v0 + 1896);
  if (*(v5 + 32) == 1)
  {
    v6 = *(v0 + 3664);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_26C011280;
    *(v0 + 3072) = 0;
    *(v0 + 3080) = 0xE000000000000000;
    sub_26C00AC1C();
    v8 = *(v0 + 3080);

    strcpy((v0 + 3120), "Running step ");
    *(v0 + 3134) = -4864;
    *(v0 + 3640) = *(v6 + 24);
    v9 = sub_26C00AEFC();
    MEMORY[0x26D699090](v9);

    MEMORY[0x26D699090](3026478, 0xE300000000000000);
    v10 = *(v0 + 3120);
    v11 = *(v0 + 3128);
    v12 = MEMORY[0x277D837D0];
    *(v7 + 56) = MEMORY[0x277D837D0];
    *(v7 + 32) = v10;
    *(v7 + 40) = v11;
    sub_26C00B03C();

    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_26C011280;
    *(v0 + 2976) = 0;
    *(v0 + 2984) = 0xE000000000000000;
    sub_26C00AC1C();
    v14 = *(v0 + 2984);
    *(v0 + 3024) = *(v0 + 2976);
    *(v0 + 3032) = v14;
    MEMORY[0x26D699090](0x6974636120746F47, 0xEB00000000206E6FLL);
    __swift_project_boxed_opaque_existential_1((v0 + 1896), *(v0 + 1920));
    sub_26C00AF0C();
    MEMORY[0x26D699090](3026478, 0xE300000000000000);
    v15 = *(v0 + 3024);
    v16 = *(v0 + 3032);
    *(v13 + 56) = v12;
    *(v13 + 32) = v15;
    *(v13 + 40) = v16;
    sub_26C00B03C();
  }

  sub_26BE038A8(v0 + 1896, v0 + 1976);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA28, &qword_26C01D618);
  if (swift_dynamicCast())
  {
    v17 = *(v0 + 2184);
    v18 = *(v0 + 2192);
    *(v0 + 3752) = v18;
    v19 = *(v0 + 2200);
    v20 = *(v0 + 2208);
    *(v0 + 3760) = v20;
    v21 = swift_task_alloc();
    *(v0 + 3768) = v21;
    *v21 = v0;
    v21[1] = sub_26BF1F230;
    v22 = *(v0 + 3664);

    return sub_26BEFD100(v17, v18, v19, v20);
  }

  if (swift_dynamicCast())
  {
    v33 = *(v0 + 2152);
    v34 = *(v0 + 2160);
    *(v0 + 3784) = v34;
    v35 = *(v0 + 2168);
    v36 = *(v0 + 2176);
    *(v0 + 3792) = v36;
    v37 = swift_task_alloc();
    *(v0 + 3800) = v37;
    *v37 = v0;
    v37[1] = sub_26BF1F434;
    v38 = *(v0 + 3664);

    return sub_26BF0177C(v33, v34, v35, v36);
  }

  if (swift_dynamicCast())
  {
    v39 = *(v0 + 424);
    *(v0 + 496) = *(v0 + 408);
    *(v0 + 512) = v39;
    *(v0 + 528) = *(v0 + 440);
    *(v0 + 544) = *(v0 + 456);
    v40 = *(v0 + 392);
    *(v0 + 464) = *(v0 + 376);
    *(v0 + 480) = v40;
    v41 = swift_task_alloc();
    *(v0 + 3816) = v41;
    *v41 = v0;
    v41[1] = sub_26BF1F584;
    v42 = *(v0 + 3664);

    return sub_26BF01DA0(v0 + 464);
  }

  if (swift_dynamicCast())
  {
    v43 = *(v0 + 1096);
    *(v0 + 1136) = *(v0 + 1080);
    *(v0 + 1152) = v43;
    *(v0 + 1168) = *(v0 + 1112);
    *(v0 + 1184) = *(v0 + 1128);
    v44 = swift_task_alloc();
    *(v0 + 3832) = v44;
    *v44 = v0;
    v44[1] = sub_26BF1F6A0;
    v45 = *(v0 + 3664);

    return sub_26BF05E40(v0 + 1136);
  }

  if (swift_dynamicCast())
  {
    v46 = *(v0 + 3600);
    v47 = *(v0 + 3608);
    *(v0 + 3848) = v47;
    v48 = swift_task_alloc();
    *(v0 + 3856) = v48;
    *v48 = v0;
    v48[1] = sub_26BF1F7BC;
    v49 = *(v0 + 3664);

    return sub_26BF07E6C(v46, v47);
  }

  if (swift_dynamicCast())
  {
    v50 = *(v0 + 904);
    *(v0 + 824) = *(v0 + 888);
    *(v0 + 840) = v50;
    v51 = *(v0 + 936);
    *(v0 + 856) = *(v0 + 920);
    *(v0 + 872) = v51;
    v52 = swift_task_alloc();
    *(v0 + 3872) = v52;
    *v52 = v0;
    v52[1] = sub_26BF1F8F0;
    v53 = *(v0 + 3664);

    return sub_26BF097B4(v0 + 824);
  }

  if (swift_dynamicCast())
  {
    v54 = *(v0 + 2888);
    v55 = *(v0 + 2896);
    *(v0 + 3888) = v55;
    v56 = *(v0 + 2904);
    v57 = swift_task_alloc();
    *(v0 + 3896) = v57;
    *v57 = v0;
    v57[1] = sub_26BF1FA0C;
    v58 = *(v0 + 3664);

    return sub_26BF0AE24(v54, v55, v56);
  }

  if (swift_dynamicCast())
  {
    v59 = *(v0 + 2120);
    v60 = *(v0 + 2128);
    *(v0 + 3912) = v60;
    v61 = *(v0 + 2136);
    v62 = *(v0 + 2144);
    *(v0 + 3920) = v62;
    v63 = swift_task_alloc();
    *(v0 + 3928) = v63;
    *v63 = v0;
    v63[1] = sub_26BF1FB40;
    v64 = *(v0 + 3664);

    return sub_26BF0F1A0(v59, v60, v61, v62);
  }

  if (swift_dynamicCast())
  {
    v65 = *(v0 + 2088);
    v66 = *(v0 + 2096);
    *(v0 + 3944) = v66;
    v67 = *(v0 + 2104);
    v68 = *(v0 + 2112);
    *(v0 + 3952) = v68;
    v69 = swift_task_alloc();
    *(v0 + 3960) = v69;
    *v69 = v0;
    v69[1] = sub_26BF1FC90;
    v70 = *(v0 + 3664);

    return sub_26BF1238C(v65, v66, v67, v68);
  }

  if (swift_dynamicCast())
  {
    v71 = *(v0 + 1448);
    *(v0 + 1384) = *(v0 + 1432);
    *(v0 + 1400) = v71;
    *(v0 + 1416) = *(v0 + 1464);
    v72 = swift_task_alloc();
    *(v0 + 3976) = v72;
    *v72 = v0;
    v72[1] = sub_26BF1FDE0;
    v73 = *(v0 + 3664);

    return sub_26BF18A84(v0 + 1384);
  }

  if (swift_dynamicCast())
  {
    v74 = *(v0 + 1496);
    *(v0 + 1336) = *(v0 + 1480);
    *(v0 + 1352) = v74;
    *(v0 + 1368) = *(v0 + 1512);
    v75 = swift_task_alloc();
    *(v0 + 3992) = v75;
    *v75 = v0;
    v75[1] = sub_26BF1FF70;
    v76 = *(v0 + 3664);

    return sub_26BF12A6C(v0 + 1336);
  }

  if (swift_dynamicCast())
  {
    v77 = *(v0 + 1544);
    *(v0 + 1288) = *(v0 + 1528);
    *(v0 + 1304) = v77;
    *(v0 + 1320) = *(v0 + 1560);
    v78 = swift_task_alloc();
    *(v0 + 4008) = v78;
    *v78 = v0;
    v78[1] = sub_26BF20100;
    v79 = *(v0 + 3664);

    return sub_26BF0DC34(v0 + 1288);
  }

  if (swift_dynamicCast())
  {
    v80 = *(v0 + 1592);
    *(v0 + 1240) = *(v0 + 1576);
    *(v0 + 1256) = v80;
    *(v0 + 1272) = *(v0 + 1608);
    v81 = swift_task_alloc();
    *(v0 + 4024) = v81;
    *v81 = v0;
    v81[1] = sub_26BF202B0;
    v82 = *(v0 + 3664);

    return sub_26BF0E2DC(v0 + 1240);
  }

  if (swift_dynamicCast())
  {
    v83 = *(v0 + 776);
    *(v0 + 1016) = *(v0 + 760);
    *(v0 + 1032) = v83;
    v84 = *(v0 + 808);
    *(v0 + 1048) = *(v0 + 792);
    *(v0 + 1064) = v84;
    v85 = swift_task_alloc();
    *(v0 + 4040) = v85;
    *v85 = v0;
    v85[1] = sub_26BF20440;

    return sub_26BF265C4(v0 + 1016);
  }

  if (swift_dynamicCast())
  {
    v86 = *(v0 + 1688);
    *(v0 + 1192) = *(v0 + 1672);
    *(v0 + 1208) = v86;
    *(v0 + 1224) = *(v0 + 1704);
    v87 = swift_task_alloc();
    *(v0 + 4056) = v87;
    *v87 = v0;
    v87[1] = sub_26BF206A8;
    v88 = *(v0 + 3664);

    return sub_26BF0EA34(v0 + 1192);
  }

  if (swift_dynamicCast())
  {
    v89 = *(v0 + 712);
    *(v0 + 952) = *(v0 + 696);
    *(v0 + 968) = v89;
    v90 = *(v0 + 744);
    *(v0 + 984) = *(v0 + 728);
    *(v0 + 1000) = v90;
    v91 = swift_task_alloc();
    *(v0 + 4072) = v91;
    *v91 = v0;
    v91[1] = sub_26BF20838;
    v92 = *(v0 + 3664);

    return sub_26BF13A1C(v0 + 952);
  }

  if (swift_dynamicCast())
  {
    v93 = *(v0 + 2056);
    v94 = *(v0 + 2064);
    *(v0 + 4088) = v94;
    v95 = *(v0 + 2072);
    v96 = *(v0 + 2080);
    *(v0 + 4096) = v96;
    v97 = swift_task_alloc();
    *(v0 + 4104) = v97;
    *v97 = v0;
    v97[1] = sub_26BF20954;
    v98 = *(v0 + 3664);

    return sub_26BF15A4C(v93, v94, v95, v96);
  }

  if (swift_dynamicCast())
  {
    v99 = *(v0 + 600);
    *(v0 + 656) = *(v0 + 584);
    *(v0 + 672) = v99;
    *(v0 + 688) = *(v0 + 616);
    v100 = *(v0 + 568);
    *(v0 + 624) = *(v0 + 552);
    *(v0 + 640) = v100;
    v101 = swift_task_alloc();
    *(v0 + 4120) = v101;
    *v101 = v0;
    v101[1] = sub_26BF20AA4;
    v102 = *(v0 + 3664);

    return sub_26BF15C60(v0 + 624);
  }

  if (swift_dynamicCast())
  {
    v103 = *(v0 + 2032);
    *(v0 + 1816) = *(v0 + 2016);
    *(v0 + 1832) = v103;
    *(v0 + 1848) = *(v0 + 2048);
    v104 = swift_task_alloc();
    *(v0 + 4136) = v104;
    *v104 = v0;
    v104[1] = sub_26BF20BC0;
    v105 = *(v0 + 3664);

    return sub_26BF16334(v0 + 1816);
  }

  if (swift_dynamicCast())
  {
    v106 = *(v0 + 371);
    if (v106 != 2)
    {
      *(*(v0 + 3664) + 64) = v106 & 1;
    }

LABEL_91:
    v107 = *(v0 + 3664);
    __swift_destroy_boxed_opaque_existential_1((v0 + 1976));
    v108 = *(v107 + 24);
    v109 = __OFADD__(v108, 1);
    v110 = v108 + 1;
    if (!v109)
    {
      *(*(v0 + 3664) + 24) = v110;
      v111 = swift_task_alloc();
      *(v0 + 4296) = v111;
      *v111 = v0;
      v111[1] = sub_26BF217E8;
      v112 = *(v0 + 3664);

      return sub_26BF1A4F4();
    }

    __break(1u);
    goto LABEL_122;
  }

  if (swift_dynamicCast())
  {
    *(v0 + 4152) = *(v0 + 3136);
    *(v0 + 4160) = *(v0 + 3144);
    v113 = swift_task_alloc();
    *(v0 + 4168) = v113;
    *v113 = v0;
    v113[1] = sub_26BF20D64;
    v114 = *(v0 + 3664);

    return sub_26BF820B8();
  }

  if (swift_dynamicCast())
  {
    v115 = *(v0 + 3664);
    v116 = *(v0 + 1624);
    *(v0 + 4208) = *(v0 + 1632);
    v117 = *(v0 + 1640);
    v118 = *(v0 + 1648);
    *(v0 + 4216) = v118;
    v119 = *(v0 + 1656);
    v120 = *(v0 + 1664);
    *(v0 + 4224) = v120;
    sub_26BF0DAD4(v117, v118, v119, v120, (v0 + 16));
    if (v4)
    {

      goto LABEL_111;
    }

    v135 = *(v0 + 3720);
    sub_26C008F9C();
    v136 = sub_26C008FFC();
    *(v0 + 4232) = v136;
    *(v0 + 4240) = v137;
    v138 = *(v0 + 3720);
    v139 = *(v0 + 3704);
    v152 = v136;
    v153 = v137;
    (*(*(v0 + 3712) + 8))(*(v0 + 3720), *(v0 + 3704));
    v154 = swift_task_alloc();
    *(v0 + 4248) = v154;
    *v154 = v0;
    v154[1] = sub_26BF2119C;
    v155 = *(v0 + 3664);

    return sub_26BF832D8(v0 + 16, v152, v153);
  }

  else
  {
    if (swift_dynamicCast())
    {
      v121 = *(v0 + 3696);
      v122 = *(v0 + 3688);
      v123 = *(v0 + 3680);
      v124 = *(v0 + 3672);
      v125 = *(v0 + 3616);
      sub_26C00920C();
      sub_26C0091BC();
      v126 = *(v123 + 8);
      v126(v122, v124);
      if (qword_28045DF48 != -1)
      {
        swift_once();
      }

      v127 = *(v0 + 3744);
      v128 = *(v0 + 3696);
      v129 = *(v0 + 3680);
      v130 = *(v0 + 3672);
      v131 = __swift_project_value_buffer(*(v0 + 3736), qword_28045E4F0);
      (*(v129 + 16))(v127, v128, v130);
      (*(v129 + 56))(v127, 0, 1, v130);
      swift_beginAccess();
      sub_26BF25BE4(v127, v131);
      swift_endAccess();
      v126(v128, v130);
      goto LABEL_91;
    }

    if (swift_dynamicCast())
    {
      v132 = *(v0 + 1952);
      *(v0 + 1856) = *(v0 + 1936);
      *(v0 + 1872) = v132;
      *(v0 + 1888) = *(v0 + 1968);
      v133 = swift_task_alloc();
      *(v0 + 4264) = v133;
      *v133 = v0;
      v133[1] = sub_26BF21528;
      v134 = *(v0 + 3664);

      return sub_26BF1ABD4(v0 + 1856);
    }

    else
    {
      if (!swift_dynamicCast())
      {
        sub_26BE773C4();
        swift_allocError();
        *v156 = 0;
        v156[1] = 0;
        swift_willThrow();
LABEL_111:
        __swift_destroy_boxed_opaque_existential_1((v0 + 1976));
        __swift_destroy_boxed_opaque_existential_1((v0 + 1896));
        if (qword_28045DF48 == -1)
        {
LABEL_112:
          v140 = *(v0 + 3744);
          v141 = *(v0 + 3680);
          v142 = *(v0 + 3672);
          v143 = __swift_project_value_buffer(*(v0 + 3736), qword_28045E4F0);
          (*(v141 + 56))(v140, 1, 1, v142);
          swift_beginAccess();
          sub_26BF25BE4(v140, v143);
          swift_endAccess();
          v144 = *(v0 + 3744);
          v145 = *(v0 + 3728);
          v146 = *(v0 + 3720);
          v147 = *(v0 + 3696);
          v148 = *(v0 + 3688);

          v32 = *(v0 + 8);
          goto LABEL_11;
        }

LABEL_122:
        swift_once();
        goto LABEL_112;
      }

      v149 = *(v0 + 1784);
      *(v0 + 1720) = *(v0 + 1768);
      *(v0 + 1736) = v149;
      *(v0 + 1745) = *(v0 + 1793);
      v150 = swift_task_alloc();
      *(v0 + 4280) = v150;
      *v150 = v0;
      v150[1] = sub_26BF216CC;
      v151 = *(v0 + 3664);

      return sub_26BF1BF00(v0 + 1720);
    }
  }
}

uint64_t sub_26BF23184()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  __swift_destroy_boxed_opaque_existential_1(v0 + 237);
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v1 = v0[468];
  v2 = v0[460];
  v3 = v0[459];
  v4 = __swift_project_value_buffer(v0[467], qword_28045E4F0);
  (*(v2 + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  sub_26BF25BE4(v1, v4);
  swift_endAccess();
  v5 = v0[472];
  v6 = v0[468];
  v7 = v0[466];
  v8 = v0[465];
  v9 = v0[462];
  v10 = v0[461];

  v11 = v0[1];

  return v11();
}

uint64_t sub_26BF232D0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  __swift_destroy_boxed_opaque_existential_1(v0 + 237);
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v1 = v0[468];
  v2 = v0[460];
  v3 = v0[459];
  v4 = __swift_project_value_buffer(v0[467], qword_28045E4F0);
  (*(v2 + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  sub_26BF25BE4(v1, v4);
  swift_endAccess();
  v5 = v0[476];
  v6 = v0[468];
  v7 = v0[466];
  v8 = v0[465];
  v9 = v0[462];
  v10 = v0[461];

  v11 = v0[1];

  return v11();
}

uint64_t sub_26BF2341C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  __swift_destroy_boxed_opaque_existential_1(v0 + 237);
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v1 = v0[468];
  v2 = v0[460];
  v3 = v0[459];
  v4 = __swift_project_value_buffer(v0[467], qword_28045E4F0);
  (*(v2 + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  sub_26BF25BE4(v1, v4);
  swift_endAccess();
  v5 = v0[478];
  v6 = v0[468];
  v7 = v0[466];
  v8 = v0[465];
  v9 = v0[462];
  v10 = v0[461];

  v11 = v0[1];

  return v11();
}

uint64_t sub_26BF23568()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  __swift_destroy_boxed_opaque_existential_1(v0 + 237);
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v1 = v0[468];
  v2 = v0[460];
  v3 = v0[459];
  v4 = __swift_project_value_buffer(v0[467], qword_28045E4F0);
  (*(v2 + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  sub_26BF25BE4(v1, v4);
  swift_endAccess();
  v5 = v0[480];
  v6 = v0[468];
  v7 = v0[466];
  v8 = v0[465];
  v9 = v0[462];
  v10 = v0[461];

  v11 = v0[1];

  return v11();
}

uint64_t sub_26BF236B4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  __swift_destroy_boxed_opaque_existential_1(v0 + 237);
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v1 = v0[468];
  v2 = v0[460];
  v3 = v0[459];
  v4 = __swift_project_value_buffer(v0[467], qword_28045E4F0);
  (*(v2 + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  sub_26BF25BE4(v1, v4);
  swift_endAccess();
  v5 = v0[483];
  v6 = v0[468];
  v7 = v0[466];
  v8 = v0[465];
  v9 = v0[462];
  v10 = v0[461];

  v11 = v0[1];

  return v11();
}

uint64_t sub_26BF23800()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  __swift_destroy_boxed_opaque_existential_1(v0 + 237);
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v1 = v0[468];
  v2 = v0[460];
  v3 = v0[459];
  v4 = __swift_project_value_buffer(v0[467], qword_28045E4F0);
  (*(v2 + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  sub_26BF25BE4(v1, v4);
  swift_endAccess();
  v5 = v0[485];
  v6 = v0[468];
  v7 = v0[466];
  v8 = v0[465];
  v9 = v0[462];
  v10 = v0[461];

  v11 = v0[1];

  return v11();
}

uint64_t sub_26BF2394C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  __swift_destroy_boxed_opaque_existential_1(v0 + 237);
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v1 = v0[468];
  v2 = v0[460];
  v3 = v0[459];
  v4 = __swift_project_value_buffer(v0[467], qword_28045E4F0);
  (*(v2 + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  sub_26BF25BE4(v1, v4);
  swift_endAccess();
  v5 = v0[488];
  v6 = v0[468];
  v7 = v0[466];
  v8 = v0[465];
  v9 = v0[462];
  v10 = v0[461];

  v11 = v0[1];

  return v11();
}

uint64_t sub_26BF23A98()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  __swift_destroy_boxed_opaque_existential_1(v0 + 237);
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v1 = v0[468];
  v2 = v0[460];
  v3 = v0[459];
  v4 = __swift_project_value_buffer(v0[467], qword_28045E4F0);
  (*(v2 + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  sub_26BF25BE4(v1, v4);
  swift_endAccess();
  v5 = v0[492];
  v6 = v0[468];
  v7 = v0[466];
  v8 = v0[465];
  v9 = v0[462];
  v10 = v0[461];

  v11 = v0[1];

  return v11();
}

uint64_t sub_26BF23BE4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  __swift_destroy_boxed_opaque_existential_1(v0 + 237);
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v1 = v0[468];
  v2 = v0[460];
  v3 = v0[459];
  v4 = __swift_project_value_buffer(v0[467], qword_28045E4F0);
  (*(v2 + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  sub_26BF25BE4(v1, v4);
  swift_endAccess();
  v5 = v0[496];
  v6 = v0[468];
  v7 = v0[466];
  v8 = v0[465];
  v9 = v0[462];
  v10 = v0[461];

  v11 = v0[1];

  return v11();
}

uint64_t sub_26BF23D30()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  __swift_destroy_boxed_opaque_existential_1(v0 + 237);
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v1 = v0[468];
  v2 = v0[460];
  v3 = v0[459];
  v4 = __swift_project_value_buffer(v0[467], qword_28045E4F0);
  (*(v2 + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  sub_26BF25BE4(v1, v4);
  swift_endAccess();
  v5 = v0[498];
  v6 = v0[468];
  v7 = v0[466];
  v8 = v0[465];
  v9 = v0[462];
  v10 = v0[461];

  v11 = v0[1];

  return v11();
}

uint64_t sub_26BF23E7C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  __swift_destroy_boxed_opaque_existential_1(v0 + 237);
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v1 = v0[468];
  v2 = v0[460];
  v3 = v0[459];
  v4 = __swift_project_value_buffer(v0[467], qword_28045E4F0);
  (*(v2 + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  sub_26BF25BE4(v1, v4);
  swift_endAccess();
  v5 = v0[500];
  v6 = v0[468];
  v7 = v0[466];
  v8 = v0[465];
  v9 = v0[462];
  v10 = v0[461];

  v11 = v0[1];

  return v11();
}

uint64_t sub_26BF23FC8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  __swift_destroy_boxed_opaque_existential_1(v0 + 237);
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v1 = v0[468];
  v2 = v0[460];
  v3 = v0[459];
  v4 = __swift_project_value_buffer(v0[467], qword_28045E4F0);
  (*(v2 + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  sub_26BF25BE4(v1, v4);
  swift_endAccess();
  v5 = v0[502];
  v6 = v0[468];
  v7 = v0[466];
  v8 = v0[465];
  v9 = v0[462];
  v10 = v0[461];

  v11 = v0[1];

  return v11();
}

uint64_t sub_26BF24114()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  __swift_destroy_boxed_opaque_existential_1(v0 + 237);
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v1 = v0[468];
  v2 = v0[460];
  v3 = v0[459];
  v4 = __swift_project_value_buffer(v0[467], qword_28045E4F0);
  (*(v2 + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  sub_26BF25BE4(v1, v4);
  swift_endAccess();
  v5 = v0[504];
  v6 = v0[468];
  v7 = v0[466];
  v8 = v0[465];
  v9 = v0[462];
  v10 = v0[461];

  v11 = v0[1];

  return v11();
}

uint64_t sub_26BF24260()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  __swift_destroy_boxed_opaque_existential_1(v0 + 237);
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v1 = v0[468];
  v2 = v0[460];
  v3 = v0[459];
  v4 = __swift_project_value_buffer(v0[467], qword_28045E4F0);
  (*(v2 + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  sub_26BF25BE4(v1, v4);
  swift_endAccess();
  v5 = v0[508];
  v6 = v0[468];
  v7 = v0[466];
  v8 = v0[465];
  v9 = v0[462];
  v10 = v0[461];

  v11 = v0[1];

  return v11();
}

uint64_t sub_26BF243AC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  __swift_destroy_boxed_opaque_existential_1(v0 + 237);
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v1 = v0[468];
  v2 = v0[460];
  v3 = v0[459];
  v4 = __swift_project_value_buffer(v0[467], qword_28045E4F0);
  (*(v2 + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  sub_26BF25BE4(v1, v4);
  swift_endAccess();
  v5 = v0[510];
  v6 = v0[468];
  v7 = v0[466];
  v8 = v0[465];
  v9 = v0[462];
  v10 = v0[461];

  v11 = v0[1];

  return v11();
}

uint64_t sub_26BF244F8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  __swift_destroy_boxed_opaque_existential_1(v0 + 237);
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v1 = v0[468];
  v2 = v0[460];
  v3 = v0[459];
  v4 = __swift_project_value_buffer(v0[467], qword_28045E4F0);
  (*(v2 + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  sub_26BF25BE4(v1, v4);
  swift_endAccess();
  v5 = v0[514];
  v6 = v0[468];
  v7 = v0[466];
  v8 = v0[465];
  v9 = v0[462];
  v10 = v0[461];

  v11 = v0[1];

  return v11();
}

uint64_t sub_26BF24644()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  __swift_destroy_boxed_opaque_existential_1(v0 + 237);
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v1 = v0[468];
  v2 = v0[460];
  v3 = v0[459];
  v4 = __swift_project_value_buffer(v0[467], qword_28045E4F0);
  (*(v2 + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  sub_26BF25BE4(v1, v4);
  swift_endAccess();
  v5 = v0[516];
  v6 = v0[468];
  v7 = v0[466];
  v8 = v0[465];
  v9 = v0[462];
  v10 = v0[461];

  v11 = v0[1];

  return v11();
}

uint64_t sub_26BF24790()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  __swift_destroy_boxed_opaque_existential_1(v0 + 237);
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v1 = v0[468];
  v2 = v0[460];
  v3 = v0[459];
  v4 = __swift_project_value_buffer(v0[467], qword_28045E4F0);
  (*(v2 + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  sub_26BF25BE4(v1, v4);
  swift_endAccess();
  v5 = v0[518];
  v6 = v0[468];
  v7 = v0[466];
  v8 = v0[465];
  v9 = v0[462];
  v10 = v0[461];

  v11 = v0[1];

  return v11();
}

uint64_t sub_26BF248DC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  __swift_destroy_boxed_opaque_existential_1(v0 + 237);
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v1 = v0[468];
  v2 = v0[460];
  v3 = v0[459];
  v4 = __swift_project_value_buffer(v0[467], qword_28045E4F0);
  (*(v2 + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  sub_26BF25BE4(v1, v4);
  swift_endAccess();
  v5 = v0[534];
  v6 = v0[468];
  v7 = v0[466];
  v8 = v0[465];
  v9 = v0[462];
  v10 = v0[461];

  v11 = v0[1];

  return v11();
}

uint64_t sub_26BF24A28()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  __swift_destroy_boxed_opaque_existential_1(v0 + 237);
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v1 = v0[468];
  v2 = v0[460];
  v3 = v0[459];
  v4 = __swift_project_value_buffer(v0[467], qword_28045E4F0);
  (*(v2 + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  sub_26BF25BE4(v1, v4);
  swift_endAccess();
  v5 = v0[536];
  v6 = v0[468];
  v7 = v0[466];
  v8 = v0[465];
  v9 = v0[462];
  v10 = v0[461];

  v11 = v0[1];

  return v11();
}

uint64_t sub_26BF24B74()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 237);
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v1 = v0[468];
  v2 = v0[460];
  v3 = v0[459];
  v4 = __swift_project_value_buffer(v0[467], qword_28045E4F0);
  (*(v2 + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  sub_26BF25BE4(v1, v4);
  swift_endAccess();
  v5 = v0[538];
  v6 = v0[468];
  v7 = v0[466];
  v8 = v0[465];
  v9 = v0[462];
  v10 = v0[461];

  v11 = v0[1];

  return v11();
}

void *Runner.deinit()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[10];

  return v0;
}

uint64_t Runner.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[10];

  return swift_deallocClassInstance();
}

uint64_t sub_26BF24D50(uint64_t a1)
{
  v2 = sub_26BF26C9C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26BF24D8C(uint64_t a1)
{
  v2 = sub_26BF26C9C();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_26BF24DE4()
{
  v1 = *(v0 + 8);
  if (v1 > 8)
  {
    return 8;
  }

  else
  {
    return qword_26C01D940[v1];
  }
}

void (*sub_26BF24E08(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_26BF25120(v8);
  v8[9] = sub_26BF24F14(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_26BF24EB4;
}

void sub_26BF24EB4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_26BF24F14(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_26BEBB618(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_26BE6F250();
      v13 = v21;
      goto LABEL_11;
    }

    sub_26BE6C1E0(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_26BEBB618(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_26C00AF8C();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_26BF2506C;
}

void sub_26BF2506C(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(*(v5 + 56) + 8 * v4) = v2;
    }

    else
    {
      sub_26BF7F1A8(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    v6 = v1[4];
    v7 = *v1[3];
    sub_26BF25CA8(*(v7 + 48) + 16 * v6);
    sub_26C006458(v6, v7);
  }

  v8 = *v1;

  free(v1);
}

uint64_t (*sub_26BF25120(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_26BF25148;
}

unsigned __int8 *sub_26BF25154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v65 = a1;
  v66 = a2;
  v67 = a3;
  v68 = a4;
  sub_26BE77C30();

  result = sub_26C00A65C();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_26BF25734();
    v38 = v37;

    v7 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_26C00AC5C();
      v9 = v64;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v22 = v9 - 1;
        if (v22)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            LOBYTE(v15) = 0;
            v26 = result + 1;
            v17 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v15 * a5;
              if ((v29 & 0xFF00) != 0)
              {
                goto LABEL_126;
              }

              v15 = v29 + (v27 + v28);
              if ((v15 >> 8))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v17 = 0;
            v20 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        v17 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          LOBYTE(v33) = 0;
          v17 = 1;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v36 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if ((v33 >> 8))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v33;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          LOBYTE(v15) = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if ((v21 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v15 = v21 - (v18 + v19);
            if ((v15 & 0xFFFFFF00) != 0)
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
        v17 = 0;
LABEL_127:

        return (v20 | (v17 << 8));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v39 = HIBYTE(v7) & 0xF;
  v65 = v8;
  v66 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        LOBYTE(v41) = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        v17 = 1;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v63 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if ((v41 >> 8))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        LOBYTE(v41) = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v65 + 1;
        v17 = 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v48 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if ((v41 & 0xFFFFFF00) != 0)
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      LOBYTE(v41) = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v65 + 1;
      v17 = 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v56 & 0xFF00) != 0)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if ((v41 >> 8))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v17 = 0;
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_26BF25734()
{
  v0 = sub_26C00A66C();
  v4 = sub_26BF257B4(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_26BF257B4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_26C00A57C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_26C00AABC();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_26BF2E840(v9, 0);
  v12 = sub_26BF2590C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_26C00A57C();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_26C00AC5C();
LABEL_4:

  return sub_26C00A57C();
}

unint64_t sub_26BF2590C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_26BE122D8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_26C00A62C();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_26C00AC5C();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_26BE122D8(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_26C00A5FC();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_26BF25B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_26C008E9C();
  v11 = result;
  if (result)
  {
    result = sub_26C008ECC();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_26C008EBC();
  sub_26BE567B0(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_26BF25BE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BF25CFC(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      v2 = sub_26C008EEC();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_26C008EDC();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_26C00904C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_26BF25DA0(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_26BE122D8(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_26C00A61C();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_26BE122D8(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_26BE122D8(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = sub_26C00A61C();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 87;
        if (a6 > 10)
        {
          v40 = a6 + 55;
        }

        else
        {
          v39 = 97;
          v40 = 65;
        }

        if (a6 <= 10)
        {
          v41 = a6 + 48;
        }

        else
        {
          v41 = 58;
        }

        if (v27)
        {
          LOBYTE(v32) = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v41)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                v38 = 1;
                if (v44 < 0x61 || v44 >= v39)
                {
                  return v37 | (v38 << 8);
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            if (((v32 * a6) & 0xFF00) != 0)
            {
              goto LABEL_96;
            }

            v32 = (v32 * a6) + (v44 + v45);
            if ((v32 >> 8))
            {
              goto LABEL_96;
            }

            ++v42;
            --v43;
          }

          while (v43);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 8);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v46 = a6 + 87;
      if (a6 > 10)
      {
        v47 = a6 + 55;
      }

      else
      {
        v46 = 97;
        v47 = 65;
      }

      if (a6 <= 10)
      {
        v48 = a6 + 48;
      }

      else
      {
        v48 = 58;
      }

      if (v27)
      {
        LOBYTE(v32) = 0;
        while (1)
        {
          v49 = *v27;
          if (v49 < 0x30 || v49 >= v48)
          {
            if (v49 < 0x41 || v49 >= v47)
            {
              v37 = 0;
              v38 = 1;
              if (v49 < 0x61 || v49 >= v46)
              {
                return v37 | (v38 << 8);
              }

              v50 = -87;
            }

            else
            {
              v50 = -55;
            }
          }

          else
          {
            v50 = -48;
          }

          if (((v32 * a6) & 0xFF00) != 0)
          {
            goto LABEL_96;
          }

          v32 = (v32 * a6) + (v49 + v50);
          if ((v32 >> 8))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 8);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        LOBYTE(v32) = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 8);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          if (((v32 * a6) & 0xFF00) != 0)
          {
            goto LABEL_96;
          }

          v32 = (v32 * a6) - (v35 + v36);
          if ((v32 & 0xFFFFFF00) != 0)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 8);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

uint64_t sub_26BF26234(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = sub_26C008E0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  v35 = a2;
  sub_26C008DFC();
  sub_26BF26F08();
  v9 = sub_26C00AAEC();
  v11 = v10;
  (*(v5 + 8))(v8, v4);

  v12 = sub_26C00A59C();
  if (v12)
  {

LABEL_25:
    result = 0;
    goto LABEL_26;
  }

  v38 = sub_26BF25CFC(v12 >> 1);
  v39 = v13;
  v14 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v14 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    v15 = 0;
    v32 = 4 * v14;
    while (v15 <= sub_26C00A5BC() >> 14)
    {
      v17 = sub_26C00A66C();
      v21 = v20;
      if (!((v17 ^ v18) >> 14))
      {
        goto LABEL_23;
      }

      v22 = v17;
      v23 = v18;
      v24 = v19;
      if ((v20 & 0x1000000000000000) != 0)
      {
        LOWORD(v24) = sub_26BF25154(v17, v18, v19, v20, 16);

        if ((v24 & 0x100) != 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if ((v20 & 0x2000000000000000) != 0)
        {
          v34 = v19;
          v35 = v20 & 0xFFFFFFFFFFFFFFLL;
          v25 = &v34;
        }

        else if ((v19 & 0x1000000000000000) != 0)
        {
          v25 = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v25 = sub_26C00AC5C();
        }

        v26 = sub_26BF25DA0(v25, v22, v23, v24, v21, 16);
        LOBYTE(v24) = v26;
        v33 = BYTE1(v26) & 1;
        v27 = (v26 >> 8) & 1;

        if (v27)
        {
          goto LABEL_24;
        }
      }

      if (v39 >> 62 == 2)
      {
        v28 = *(v38 + 24);
      }

      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA68, &qword_26C01D8C0);
      v36 = v16;
      v37 = sub_26BE13630(&qword_28045FA70, &qword_28045FA68, &qword_26C01D8C0);
      LOBYTE(v34) = v24;
      v33 = *__swift_project_boxed_opaque_existential_1(&v34, v16);
      sub_26C00906C();
      __swift_destroy_boxed_opaque_existential_1(&v34);
      v15 = sub_26C00A5BC() >> 14;
      if (v15 >= v32)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:

LABEL_24:

    sub_26BE00258(v38, v39);
    goto LABEL_25;
  }

LABEL_21:

  result = v38;
LABEL_26:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BF265C4(uint64_t a1)
{
  v1[8] = a1;
  v2 = sub_26C00A4EC();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF26690, 0, 0);
}

uint64_t sub_26BF26690()
{
  v28 = v0;
  static MockRoot.getRootCert(rootFilepath:)(*(*(v0 + 64) + 32), *(*(v0 + 64) + 40), &v23._countAndFlagsBits);
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  countAndFlagsBits = v23._countAndFlagsBits;
  object = v23._object;
  v5 = v25;
  v22 = v24;
  v7 = v26;
  v6 = v27;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  sub_26C00A4CC();
  v10._countAndFlagsBits = sub_26C00A44C();
  v23._countAndFlagsBits = countAndFlagsBits;
  v23._object = object;
  v24 = v22;
  v25 = v5;
  v26 = v7;
  v27 = v6;
  v11 = MockRoot.signCSR(csrJson:)(v10);
  if (v12)
  {

    v14 = *(v0 + 88);
    v13 = *(v0 + 96);
  }

  else
  {
    v17 = *(v0 + 88);
    v18 = *(v0 + 64);

    v23 = v11;

    MEMORY[0x26D699090](v22, v5);

    v19 = v23._object;
    *(v0 + 32) = v23._countAndFlagsBits;
    *(v0 + 40) = v19;
    *(v0 + 16) = *(v18 + 48);
    *(v0 + 48) = *(v18 + 48);
    v20 = *(v0 + 24);

    sub_26C00A4CC();
    sub_26BF26F08();
    sub_26C00AAFC();
    v21 = *(v0 + 96);
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    sub_26BF25CA8(v0 + 16);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_26BF2691C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_26BF26964(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 32) = v2;
  return result;
}

uint64_t dispatch thunk of Runner.run()()
{
  v2 = *(*v0 + 792);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26BE2E3F4;

  return v6();
}

uint64_t get_enum_tag_for_layout_string_8SwiftMLS9ToolErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26BF26BC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF6 && *(a1 + 16))
  {
    return (*a1 + 2147483639);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 8;
  if (v4 >= 0xA)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BF26C18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF7)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483639;
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 8;
    }
  }

  return result;
}

void *sub_26BF26C68(void *result, int a2)
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

unint64_t sub_26BF26C9C()
{
  result = qword_28045FA30;
  if (!qword_28045FA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FA30);
  }

  return result;
}

uint64_t sub_26BF26DA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26BE28F58;

  return sub_26BE192D0(a1, v4, v5, v6);
}

uint64_t sub_26BF26E54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_26BF26F08()
{
  result = qword_28045FA60;
  if (!qword_28045FA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FA60);
  }

  return result;
}

uint64_t sub_26BF26F5C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26BF27010(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE28F58;

  return sub_26BE40028(a1, v1);
}

uint64_t sub_26BF27108(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26BE2E3F4;

  return sub_26BE36EE8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_26BF27278(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_26C00AF2C() & 1;
  }
}

uint64_t MLS.Cryptography.Ciphersuite.deriveSenderDataKey(secret:ciphertext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45[1] = a4;
  v45[2] = a1;
  v56 = *MEMORY[0x277D85DE8];
  v7 = sub_26C009EDC();
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](v7);
  v47 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26C00A4EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v4[1];
  v17 = v4[3];
  v16 = v4[4];
  sub_26BE00608(a2, a3);
  sub_26BE3C290(v15, a2, a3, &v50);
  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (v17 >> 16)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v45[0] = v7;
  v19 = v50;
  v18 = v51;
  sub_26C00A4DC();
  v20 = sub_26C00A49C();
  v22 = v21;
  (*(v11 + 8))(v14, v10);
  if (v22 >> 60 != 15)
  {
    v54 = xmmword_26C00BBD0;
    v55 = 0;
    v49 = bswap32(v17) >> 16;
    v52 = MEMORY[0x277D838B0];
    v53 = MEMORY[0x277CC9C18];
    v50 = &v49;
    v51 = &v50;
    v26 = __swift_project_boxed_opaque_existential_1(&v50, MEMORY[0x277D838B0]);
    v28 = *v26;
    v27 = v26[1];
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v50);
    v29 = v22 >> 62;
    if ((v22 >> 62) > 1)
    {
      v30 = 0;
      if (v29 != 2)
      {
        goto LABEL_14;
      }

      v32 = *(v20 + 16);
      v31 = *(v20 + 24);
      v30 = v31 - v32;
      if (!__OFSUB__(v31, v32))
      {
        goto LABEL_14;
      }

      __break(1u);
    }

    else if (!v29)
    {
      v30 = BYTE6(v22);
LABEL_14:
      v33 = v48;
      sub_26BF30414(v30);
      if (v33)
      {
        sub_26BE00258(v19, v18);
        sub_26BE136AC(v20, v22);
LABEL_27:
        v25 = *(&v54 + 1);
        v24 = v54;
        goto LABEL_28;
      }

      sub_26BE11228(v20, v22);
      v34 = v18 >> 62;
      if ((v18 >> 62) > 1)
      {
        if (v34 != 2)
        {
          v35 = 0;
          goto LABEL_25;
        }

        v37 = *(v19 + 16);
        v36 = *(v19 + 24);
        v35 = v36 - v37;
        if (!__OFSUB__(v36, v37))
        {
          goto LABEL_25;
        }

        __break(1u);
      }

      else if (!v34)
      {
        v35 = BYTE6(v18);
LABEL_25:
        sub_26BF30414(v35);
        sub_26BE11228(v19, v18);
        sub_26C009E6C();
        v40 = *(&v54 + 1) >> 62;
        if ((*(&v54 + 1) >> 62) > 1)
        {
          if (v40 != 2 || (*(v54 + 24) & 0x8000000000000000) == 0)
          {
            goto LABEL_37;
          }
        }

        else if (!v40 || ((v54 >> 32) & 0x8000000000000000) == 0)
        {
          goto LABEL_37;
        }

        __break(1u);
LABEL_37:
        v41 = sub_26C00909C();
        v43 = v42;
        v44 = v47;
        sub_26C009EBC();
        sub_26BE00258(v41, v43);
        sub_26BE136AC(v20, v22);
        sub_26BE00258(v19, v18);
        (*(v46 + 8))(v44, v45[0]);
        goto LABEL_27;
      }

      if (!__OFSUB__(HIDWORD(v19), v19))
      {
        v35 = HIDWORD(v19) - v19;
        goto LABEL_25;
      }

LABEL_41:
      __break(1u);
    }

    if (!__OFSUB__(HIDWORD(v20), v20))
    {
      v30 = HIDWORD(v20) - v20;
      goto LABEL_14;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  sub_26BE01654();
  swift_allocError();
  *v23 = 5;
  v23[112] = 1;
  swift_willThrow();
  v24 = v19;
  v25 = v18;
LABEL_28:
  result = sub_26BE00258(v24, v25);
  v39 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MLS.Cryptography.Ciphersuite.deriveSenderDataNonce(secret:ciphertext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45[1] = a4;
  v45[2] = a1;
  v56 = *MEMORY[0x277D85DE8];
  v7 = sub_26C009EDC();
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](v7);
  v47 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26C00A4EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v4[1];
  v16 = v4[2];
  v17 = v4[4];
  sub_26BE00608(a2, a3);
  sub_26BE3C290(v15, a2, a3, &v50);
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (v16 >> 16)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v45[0] = v7;
  v19 = v50;
  v18 = v51;
  sub_26C00A4DC();
  v20 = sub_26C00A49C();
  v22 = v21;
  (*(v11 + 8))(v14, v10);
  if (v22 >> 60 != 15)
  {
    v54 = xmmword_26C00BBD0;
    v55 = 0;
    v49 = bswap32(v16) >> 16;
    v52 = MEMORY[0x277D838B0];
    v53 = MEMORY[0x277CC9C18];
    v50 = &v49;
    v51 = &v50;
    v26 = __swift_project_boxed_opaque_existential_1(&v50, MEMORY[0x277D838B0]);
    v28 = *v26;
    v27 = v26[1];
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v50);
    v29 = v22 >> 62;
    if ((v22 >> 62) > 1)
    {
      v30 = 0;
      if (v29 != 2)
      {
        goto LABEL_14;
      }

      v32 = *(v20 + 16);
      v31 = *(v20 + 24);
      v30 = v31 - v32;
      if (!__OFSUB__(v31, v32))
      {
        goto LABEL_14;
      }

      __break(1u);
    }

    else if (!v29)
    {
      v30 = BYTE6(v22);
LABEL_14:
      v33 = v48;
      sub_26BF30414(v30);
      if (v33)
      {
        sub_26BE00258(v19, v18);
        sub_26BE136AC(v20, v22);
LABEL_27:
        v25 = *(&v54 + 1);
        v24 = v54;
        goto LABEL_28;
      }

      sub_26BE11228(v20, v22);
      v34 = v18 >> 62;
      if ((v18 >> 62) > 1)
      {
        if (v34 != 2)
        {
          v35 = 0;
          goto LABEL_25;
        }

        v37 = *(v19 + 16);
        v36 = *(v19 + 24);
        v35 = v36 - v37;
        if (!__OFSUB__(v36, v37))
        {
          goto LABEL_25;
        }

        __break(1u);
      }

      else if (!v34)
      {
        v35 = BYTE6(v18);
LABEL_25:
        sub_26BF30414(v35);
        sub_26BE11228(v19, v18);
        sub_26C009E6C();
        v40 = *(&v54 + 1) >> 62;
        if ((*(&v54 + 1) >> 62) > 1)
        {
          if (v40 != 2 || (*(v54 + 24) & 0x8000000000000000) == 0)
          {
            goto LABEL_37;
          }
        }

        else if (!v40 || ((v54 >> 32) & 0x8000000000000000) == 0)
        {
          goto LABEL_37;
        }

        __break(1u);
LABEL_37:
        v41 = sub_26C00909C();
        v43 = v42;
        v44 = v47;
        sub_26C009EBC();
        sub_26BE00258(v41, v43);
        sub_26BE136AC(v20, v22);
        sub_26BE00258(v19, v18);
        (*(v46 + 8))(v44, v45[0]);
        goto LABEL_27;
      }

      if (!__OFSUB__(HIDWORD(v19), v19))
      {
        v35 = HIDWORD(v19) - v19;
        goto LABEL_25;
      }

LABEL_41:
      __break(1u);
    }

    if (!__OFSUB__(HIDWORD(v20), v20))
    {
      v30 = HIDWORD(v20) - v20;
      goto LABEL_14;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  sub_26BE01654();
  swift_allocError();
  *v23 = 5;
  v23[112] = 1;
  swift_willThrow();
  v24 = v19;
  v25 = v18;
LABEL_28:
  result = sub_26BE00258(v24, v25);
  v39 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BF27BF0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v21 - v7;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return 0;
  }

  v21[1] = v2;
  v10 = 0;
  v11 = a1 + 32;
  do
  {
    v13 = *(a2 + 56);
    if (*(v13 + 16))
    {
      v14 = sub_26BEBB414(*(v11 + 4 * v10));
      if (v15)
      {
        v16 = *(v13 + 56);
        v17 = v14;
        v18 = sub_26C009C8C();
        v19 = *(v18 - 8);
        (*(v19 + 16))(v8, v16 + *(v19 + 72) * v17, v18);
        (*(v19 + 56))(v8, 0, 1, v18);
        sub_26BE2E258(v8, &qword_28045E708, &unk_26C011370);
        return v10;
      }
    }

    v12 = sub_26C009C8C();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    sub_26BE2E258(v8, &qword_28045E708, &unk_26C011370);
    ++v10;
  }

  while (v9 != v10);
  return 0;
}

unsigned __int16 *MLS.SecretTree.init(ciphersuiteID:groupSize:encryptionSecret:)@<X0>(unsigned __int16 *result@<X0>, int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *result;
  if ((v6 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    v8 = *a2;
    LOBYTE(v37) = v6 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v37, &v31);
    v9 = v31;
    v10 = v32;
    v11 = v33;
    v12 = v35;
    v30 = v34;
    v36 = UInt32.nextPowerOfTwo()();
    v37 = v8;
    MLS.NodeIndex.init(forRoot:)(&v37, &v31);
    if (v4)
    {
      v13 = sub_26C009C8C();
      (*(*(v13 - 8) + 8))(a3, v13);
    }

    else
    {
      v27 = a3;
      v14 = v31;
      v25 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA88, &qword_26C01D988);
      v29 = v10;
      v28 = v11;
      v15 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA90, &qword_26C01D990) - 8);
      v16 = *(*v15 + 72);
      v17 = (*(*v15 + 80) + 32) & ~*(*v15 + 80);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_26C011280;
      v19 = (v18 + v17);
      v26 = v9;
      v20 = v15[14];
      *v19 = v14;
      v21 = sub_26C009C8C();
      v24 = v12;
      v22 = *(v21 - 8);
      (*(v22 + 16))(v19 + v20, v27, v21);
      v23 = sub_26C004CEC(v18);
      swift_setDeallocating();
      sub_26BE2E258(v19, &qword_28045FA90, &qword_26C01D990);
      swift_deallocClassInstance();
      result = (*(v22 + 8))(v27, v21);
      *a4 = v6;
      *(a4 + 4) = v36;
      *(a4 + 8) = v25;
      *(a4 + 16) = v26;
      *(a4 + 24) = v29;
      *(a4 + 32) = v28;
      *(a4 + 40) = v30;
      *(a4 + 48) = v24;
      *(a4 + 56) = v23;
    }
  }

  return result;
}

uint64_t sub_26BF280A8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v157 = a2;
  v182 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v159 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v160 = &v127 - v9;
  v10 = sub_26C009EDC();
  v158 = *(v10 - 8);
  v11 = *(v158 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v164 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v165 = &v127 - v14;
  v15 = sub_26C009C8C();
  v162 = *(v15 - 8);
  v16 = v162[8];
  v17 = MEMORY[0x28223BE20](v15);
  v156 = &v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v163 = &v127 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v167 = &v127 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v161 = &v127 - v24;
  MEMORY[0x28223BE20](v23);
  v168 = &v127 - v25;
  v26 = sub_26C00A4EC();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v127 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *a1;
  sub_26C00A4CC();
  v172 = sub_26C00A49C();
  v33 = v32;
  v36 = *(v27 + 8);
  v35 = v27 + 8;
  v34 = v36;
  v36(v30, v26);
  v171 = v33;
  if (v33 >> 60 == 15)
  {
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
  }

  sub_26C00A4CC();
  v170 = sub_26C00A49C();
  v38 = v37;
  v166 = v26;
  v34(v30, v26);
  v169 = v38;
  if (v38 >> 60 == 15)
  {
    goto LABEL_127;
  }

  if (v31 < 0)
  {
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
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:

    v42 = v173;
    goto LABEL_100;
  }

  LODWORD(v26) = 2 * v31;
  LODWORD(v176) = 2 * v31;
  LODWORD(v180) = *(v173 + 4);
  v39 = sub_26BE7B518(&v180);
  if (!v2)
  {
    v38 = v39;
    v40 = *(v39 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v175 = v38;
    if (!isUniquelyReferenced_nonNull_native || v40 >= *(v38 + 24) >> 1)
    {
      v38 = sub_26BEEBFB0(isUniquelyReferenced_nonNull_native, v40 + 1, 1, v38);
      v175 = v38;
    }

    sub_26BE58910(0, 0, 1, v26);
    v42 = v173;
    v43 = sub_26BF27BF0(v38, v173);
    if (v44)
    {

      sub_26BE01654();
      swift_allocError();
      v46 = 0x800000026C02CED0;
      v47 = 0xD000000000000022;
LABEL_111:
      *v45 = v47;
      *(v45 + 8) = v46;
      *(v45 + 112) = 14;
      swift_willThrow();
      goto LABEL_112;
    }

    v155 = v15;
    v142 = v38;
    if (v43 >= 1)
    {
      v48 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        __break(1u);
      }

      else
      {
        v49 = *(v38 + 16);
        if (v49 && v49 >= v48)
        {
          v150 = v10;
          if ((v48 & 0x8000000000000000) == 0)
          {
            v50 = v43;
            v151 = v162 + 2;
            v141 = v162 + 4;
            v153 = &v175;
            v51 = v171 >> 62;
            v52 = __OFSUB__(HIDWORD(v172), v172);
            v130 = v52;
            v129 = HIDWORD(v172) - v172;
            v132 = BYTE6(v171);
            v149 = (v158 + 8);
            v139 = v169 >> 62;
            v53 = __OFSUB__(HIDWORD(v170), v170);
            v128 = v53;
            v127 = HIDWORD(v170) - v170;
            v131 = BYTE6(v169);
            v134 = (v162 + 7);
            v140 = (v162 + 1);

            v152 = xmmword_26C00BBD0;
            v138 = v35;
            v154 = v34;
            v137 = v26;
            v136 = v48;
            v135 = v51;
            v133 = v30;
            while (1)
            {
              if (v50 >= v48)
              {
                goto LABEL_92;
              }

              v148 = v50;
              v61 = *(v38 + 4 * v50 + 32);
              LODWORD(v180) = v61;
              MLS.NodeIndex.left.getter(&v176);
              if (BYTE4(v176) == 1 || (v147 = v176, LODWORD(v180) = v61, MLS.NodeIndex.right.getter(&v176), BYTE4(v176) == 1) || (v62 = *(v173 + 56), !*(v62 + 16)) || (v146 = v176, v63 = sub_26BEBB414(v61), (v64 & 1) == 0))
              {

                sub_26BE01654();
                swift_allocError();
                *v99 = 0xD00000000000001FLL;
                *(v99 + 8) = 0x800000026C02CF20;
                *(v99 + 112) = 14;
                swift_willThrow();
                sub_26BE136AC(v170, v169);
                sub_26BE136AC(v172, v171);

                goto LABEL_113;
              }

              v65 = v162;
              v66 = *(v62 + 56) + v162[9] * v63;
              v67 = v161;
              v145 = v162[2];
              v145(v161, v66, v15);
              (v65[4])(v168, v67, v15);
              v38 = *(v173 + 24);
              if ((v38 & 0x8000000000000000) != 0)
              {
                goto LABEL_93;
              }

              if (v38 >> 16)
              {
                goto LABEL_94;
              }

              v158 = *(v173 + 48);

              sub_26C00A4DC();
              v15 = sub_26C00A49C();
              v69 = v68;
              v154(v30, v166);
              if (v69 >> 60 == 15)
              {
                sub_26BE01654();
                swift_allocError();
                *v101 = 5;
                v101[112] = 1;
                swift_willThrow();
                sub_26BE136AC(v170, v169);
                sub_26BE136AC(v172, v171);

                (*v140)(v168, v155);
                goto LABEL_90;
              }

              v180 = v152;
              v181 = 0;
              v174 = bswap32(v38) >> 16;
              v178 = MEMORY[0x277D838B0];
              v179 = MEMORY[0x277CC9C18];
              v176 = &v174;
              v177 = v153;
              v70 = __swift_project_boxed_opaque_existential_1(&v176, MEMORY[0x277D838B0]);
              v72 = *v70;
              v71 = v70[1];
              sub_26C00908C();
              __swift_destroy_boxed_opaque_existential_1(&v176);
              v73 = v69 >> 62;
              if ((v69 >> 62) > 1)
              {
                v74 = 0;
                if (v73 == 2)
                {
                  v76 = *(v15 + 16);
                  v75 = *(v15 + 24);
                  v74 = v75 - v76;
                  if (__OFSUB__(v75, v76))
                  {
                    goto LABEL_118;
                  }
                }
              }

              else if (v73)
              {
                if (__OFSUB__(HIDWORD(v15), v15))
                {
                  goto LABEL_119;
                }

                v74 = HIDWORD(v15) - v15;
              }

              else
              {
                v74 = BYTE6(v69);
              }

              sub_26BF30414(v74);
              if (v3)
              {
                sub_26BE136AC(v170, v169);
                sub_26BE136AC(v15, v69);
                sub_26BE136AC(v172, v171);

                (*v140)(v168, v155);
                sub_26BE00258(v180, *(&v180 + 1));
LABEL_90:

                goto LABEL_113;
              }

              sub_26BE11228(v15, v69);
              if (v51 > 1)
              {
                if (v51 == 2)
                {
                  v79 = *(v172 + 16);
                  v78 = *(v172 + 24);
                  v77 = v78 - v79;
                  if (__OFSUB__(v78, v79))
                  {
                    goto LABEL_120;
                  }
                }

                else
                {
                  v77 = 0;
                }
              }

              else
              {
                v77 = v132;
                if (v51)
                {
                  v77 = v129;
                  if (v130)
                  {
                    goto LABEL_121;
                  }
                }
              }

              sub_26BF30414(v77);
              sub_26BE11228(v172, v171);
              sub_26C009E6C();
              v80 = *(&v180 + 1) >> 62;
              if ((*(&v180 + 1) >> 62) > 1)
              {
                if (v80 != 2)
                {
                  goto LABEL_57;
                }

                v81 = *(v180 + 24);
              }

              else
              {
                if (!v80)
                {
                  goto LABEL_57;
                }

                v81 = v180 >> 32;
              }

              if (v81 < 0)
              {
                goto LABEL_95;
              }

LABEL_57:
              v26 = sub_26C00909C();
              v83 = v82;
              v84 = v165;
              sub_26C009EBC();
              sub_26BE00258(v26, v83);
              sub_26BE136AC(v15, v69);
              v85 = *v149;
              (*v149)(v84, v150);
              sub_26BE00258(v180, *(&v180 + 1));

              v86 = *(v173 + 24);
              if ((v86 & 0x8000000000000000) != 0)
              {
                goto LABEL_96;
              }

              if (v86 >> 16)
              {
                goto LABEL_97;
              }

              v158 = *(v173 + 48);

              sub_26C00A4DC();
              v38 = sub_26C00A49C();
              v15 = v87;
              v154(v30, v166);
              if (v15 >> 60 == 15)
              {
                sub_26BE01654();
                swift_allocError();
                *v102 = 5;
                v102[112] = 1;
                swift_willThrow();
                sub_26BE136AC(v170, v169);
                sub_26BE136AC(v172, v171);

                v103 = *v140;
                v104 = v155;
                (*v140)(v167, v155);
                v103(v168, v104);
                goto LABEL_90;
              }

              v144 = v85;
              v180 = v152;
              v181 = 0;
              v174 = bswap32(v86) >> 16;
              v178 = MEMORY[0x277D838B0];
              v179 = MEMORY[0x277CC9C18];
              v176 = &v174;
              v177 = v153;
              v88 = __swift_project_boxed_opaque_existential_1(&v176, MEMORY[0x277D838B0]);
              v90 = *v88;
              v89 = v88[1];
              sub_26C00908C();
              __swift_destroy_boxed_opaque_existential_1(&v176);
              v91 = v15 >> 62;
              LODWORD(v26) = v172;
              if ((v15 >> 62) > 1)
              {
                v92 = 0;
                if (v91 == 2)
                {
                  v94 = *(v38 + 16);
                  v93 = *(v38 + 24);
                  v92 = v93 - v94;
                  if (__OFSUB__(v93, v94))
                  {
                    goto LABEL_123;
                  }
                }
              }

              else if (v91)
              {
                if (__OFSUB__(HIDWORD(v38), v38))
                {
                  goto LABEL_122;
                }

                v92 = HIDWORD(v38) - v38;
              }

              else
              {
                v92 = BYTE6(v15);
              }

              sub_26BF30414(v92);
              sub_26BE11228(v38, v15);
              if (v139 > 1)
              {
                if (v139 == 2)
                {
                  v97 = *(v170 + 16);
                  v96 = *(v170 + 24);
                  v95 = v96 - v97;
                  if (__OFSUB__(v96, v97))
                  {
                    goto LABEL_124;
                  }
                }

                else
                {
                  v95 = 0;
                }
              }

              else
              {
                v95 = v131;
                if (v139)
                {
                  v95 = v127;
                  if (v128)
                  {
                    goto LABEL_125;
                  }
                }
              }

              sub_26BF30414(v95);
              sub_26BE11228(v170, v169);
              sub_26C009E6C();
              v98 = *(&v180 + 1) >> 62;
              if ((*(&v180 + 1) >> 62) > 1)
              {
                if (v98 == 2 && (*(v180 + 24) & 0x8000000000000000) != 0)
                {
                  goto LABEL_98;
                }
              }

              else if (v98 && v180 >> 32 < 0)
              {
                goto LABEL_98;
              }

              v54 = sub_26C00909C();
              v56 = v55;
              v143 = 0;
              v57 = v164;
              sub_26C009EBC();
              sub_26BE00258(v54, v56);
              sub_26BE136AC(v38, v15);
              v144(v57, v150);
              sub_26BE00258(v180, *(&v180 + 1));

              v51 = v160;
              v15 = v155;
              v58 = v145;
              v145(v160, v167, v155);
              v59 = *v134;
              (*v134)(v51, 0, 1, v15);
              sub_26BE4D428(v51, v147);
              v26 = v163;
              v58(v51, v163, v15);
              v59(v51, 0, 1, v15);
              v30 = v133;
              sub_26BE4D428(v51, v146);
              v60 = *v140;
              v3 = v143;
              (*v140)(v26, v15);
              v60(v167, v15);
              v60(v168, v15);
              v50 = v148 - 1;
              v38 = v142;
              LODWORD(v26) = v137;
              v48 = v136;
              LODWORD(v51) = v135;
              if (v148 == 1)
              {
                goto LABEL_99;
              }
            }
          }

          goto LABEL_117;
        }
      }

      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
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
      goto LABEL_126;
    }

LABEL_100:
    v105 = *(v42 + 56);
    if (*(v105 + 16))
    {
      v106 = sub_26BEBB414(v26);
      if (v107)
      {
        v108 = *(v105 + 56);
        v109 = v162;
        v168 = v162[9];
        v110 = v156;
        (v162[2])(v156, v108 + v168 * v106, v15);
        v166 = v109[4];
        v167 = (v109 + 4);
        v166(v157, v110, v15);
        v111 = *(v38 + 16);
        if (v111)
        {
          v112 = v109;
          v113 = (v38 + 32);
          v114 = (v112 + 7);
          v115 = v159;
          do
          {
            v118 = *v113++;
            v119 = sub_26BEBB414(v118);
            if (v120)
            {
              v121 = v119;
              v122 = v173;
              v123 = *(v173 + 56);
              v124 = swift_isUniquelyReferenced_nonNull_native();
              v125 = *(v122 + 56);
              v176 = v125;
              if (!v124)
              {
                sub_26BE6E7A8();
                v125 = v176;
              }

              v115 = v159;
              v117 = v155;
              v166(v159, (*(v125 + 56) + v121 * v168), v155);
              sub_26C001358(v121, v125);
              v116 = 0;
              *(v122 + 56) = v125;
            }

            else
            {
              v116 = 1;
              v117 = v155;
            }

            (*v114)(v115, v116, 1, v117);
            sub_26BE2E258(v115, &qword_28045E708, &unk_26C011370);
            --v111;
          }

          while (v111);
        }

        goto LABEL_112;
      }
    }

    sub_26BE01654();
    swift_allocError();
    v46 = 0x800000026C02CF00;
    v47 = 0xD000000000000018;
    goto LABEL_111;
  }

LABEL_112:
  sub_26BE136AC(v170, v169);
  result = sub_26BE136AC(v172, v171);
LABEL_113:
  v126 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BF29310(unsigned __int16 *a1)
{
  v87 = *MEMORY[0x277D85DE8];
  v3 = sub_26C009C8C();
  v76 = *(v3 - 8);
  v4 = *(v76 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 1);
  v7 = *(a1 + 2);
  v9 = *(a1 + 7);
  LOWORD(v81) = bswap32(*a1) >> 16;
  v10 = MEMORY[0x277D838B0];
  v11 = MEMORY[0x277CC9C18];
  v85 = MEMORY[0x277D838B0];
  v86 = MEMORY[0x277CC9C18];
  v83 = &v81;
  v84 = (&v81 + 2);
  v12 = __swift_project_boxed_opaque_existential_1(&v83, MEMORY[0x277D838B0]);
  v14 = *v12;
  v13 = v12[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v83);
  LODWORD(v81) = bswap32(v8);
  v85 = v10;
  v86 = v11;
  v83 = &v81;
  v84 = (&v81 + 4);
  v15 = __swift_project_boxed_opaque_existential_1(&v83, v10);
  v17 = *v15;
  v16 = v15[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v83);
  LODWORD(v81) = bswap32(v7);
  v85 = v10;
  v86 = v11;
  v83 = &v81;
  v84 = (&v81 + 4);
  v18 = v1;
  v19 = __swift_project_boxed_opaque_existential_1(&v83, v10);
  v21 = *v19;
  v20 = v19[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v83);
  v81 = bswap64(*(v9 + 16));
  v85 = v10;
  v86 = v11;
  v83 = &v81;
  v84 = &v82;
  v22 = __swift_project_boxed_opaque_existential_1(&v83, v10);
  v24 = *v22;
  v23 = v22[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v83);
  v25 = *(v9 + 16);
  v65 = v3;
  v68 = v6;
  if (v25)
  {
    v26 = sub_26BE3277C(v25, 0);
    v27 = sub_26BE34100(&v83, v26 + 32, v25, v9);

    sub_26BE2DA4C();
    if (v27 != v25)
    {
      goto LABEL_60;
    }

    v3 = v65;
    v6 = v68;
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
  }

  v83 = v26;
  v28 = v79;
  sub_26BE5667C(&v83);
  v29 = v28;
  if (v28)
  {

    __break(1u);
  }

  else
  {
    v30 = v83;
    v75 = *(v83 + 2);
    if (v75)
    {
      v31 = 0;
      v73 = (&v81 + 4);
      v74 = v76 + 16;
      v69 = (v80 + 1);
      v64 = (v80 + 2);
      v63 = (v80 + 4);
      v71 = (v76 + 8);
      v32 = 8;
      v67 = v18;
      v70 = v9;
      v72 = v83;
      while (1)
      {
        if (v31 >= *(v30 + 2))
        {
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
        }

        if (!*(v9 + 16))
        {
          goto LABEL_51;
        }

        v79 = v32;
        v33 = *&v30[4 * v31 + 32];
        v34 = sub_26BEBB414(v33);
        if ((v35 & 1) == 0)
        {
          goto LABEL_52;
        }

        (*(v76 + 16))(v6, *(v9 + 56) + *(v76 + 72) * v34, v3);
        LODWORD(v81) = bswap32(v33);
        v85 = MEMORY[0x277D838B0];
        v86 = MEMORY[0x277CC9C18];
        v83 = &v81;
        v84 = v73;
        v36 = __swift_project_boxed_opaque_existential_1(&v83, MEMORY[0x277D838B0]);
        v38 = *v36;
        v37 = v36[1];
        sub_26C00908C();
        __swift_destroy_boxed_opaque_existential_1(&v83);
        sub_26C009C3C();
        v30 = v81;
        v32 = v82;
        v39 = v82 >> 62;
        v78 = v29;
        if ((v82 >> 62) > 1)
        {
          v40 = 0;
          if (v39 != 2)
          {
            goto LABEL_24;
          }

          v42 = *(v81 + 16);
          v41 = *(v81 + 24);
          v40 = v41 - v42;
          if (__OFSUB__(v41, v42))
          {
            goto LABEL_54;
          }

          if ((v40 & 0x8000000000000000) != 0)
          {
            goto LABEL_48;
          }
        }

        else if (v39)
        {
          v43 = HIDWORD(v81) - v81;
          if (__OFSUB__(HIDWORD(v81), v81))
          {
            goto LABEL_55;
          }

          v40 = v43;
          if ((v43 & 0x8000000000000000) != 0)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v40 = BYTE6(v82);
        }

        if (v40 <= 0x3F)
        {
LABEL_24:
          LOBYTE(v80[0]) = v40;
          v85 = MEMORY[0x277D838B0];
          v86 = MEMORY[0x277CC9C18];
          v83 = v80;
          v84 = v69;
          v48 = __swift_project_boxed_opaque_existential_1(&v83, MEMORY[0x277D838B0]);
          v50 = *v48;
          v49 = v48[1];
          sub_26C00908C();
          __swift_destroy_boxed_opaque_existential_1(&v83);
          v47 = 5;
          goto LABEL_26;
        }

        if (v40 >> 14)
        {
          if (v40 >> 30)
          {
            goto LABEL_48;
          }

          LODWORD(v80[0]) = bswap32(v40 | 0x80000000);
          v85 = MEMORY[0x277D838B0];
          v86 = MEMORY[0x277CC9C18];
          v83 = v80;
          v84 = v63;
          v44 = __swift_project_boxed_opaque_existential_1(&v83, MEMORY[0x277D838B0]);
          v46 = *v44;
          v45 = v44[1];
          sub_26C00908C();
          __swift_destroy_boxed_opaque_existential_1(&v83);
          v47 = 8;
        }

        else
        {
          LOWORD(v80[0]) = bswap32(v40 | 0x4000) >> 16;
          v85 = MEMORY[0x277D838B0];
          v86 = MEMORY[0x277CC9C18];
          v83 = v80;
          v84 = v64;
          v51 = __swift_project_boxed_opaque_existential_1(&v83, MEMORY[0x277D838B0]);
          v53 = *v51;
          v52 = v51[1];
          sub_26C00908C();
          __swift_destroy_boxed_opaque_existential_1(&v83);
          v47 = 6;
        }

LABEL_26:
        v85 = MEMORY[0x277CC9318];
        v86 = MEMORY[0x277CC9300];
        v83 = v30;
        v84 = v32;
        v54 = __swift_project_boxed_opaque_existential_1(&v83, MEMORY[0x277CC9318]);
        v55 = *v54;
        v56 = v54[1];
        v57 = v56 >> 62;
        v77 = v47;
        if ((v56 >> 62) > 1)
        {
          if (v57 != 2)
          {
            memset(v80, 0, 14);
            goto LABEL_40;
          }

          v58 = *(v55 + 16);
          v66 = *(v55 + 24);
          sub_26BE00608(v30, v32);
          if (sub_26C008E9C() && __OFSUB__(v58, sub_26C008ECC()))
          {
            goto LABEL_58;
          }

          if (__OFSUB__(v66, v58))
          {
            goto LABEL_57;
          }

          sub_26C008EBC();
          sub_26C00908C();
          sub_26BE00258(v30, v32);
        }

        else
        {
          if (!v57)
          {
            v80[0] = v55;
            LOWORD(v80[1]) = v56;
            BYTE2(v80[1]) = BYTE2(v56);
            BYTE3(v80[1]) = BYTE3(v56);
            BYTE4(v80[1]) = BYTE4(v56);
            BYTE5(v80[1]) = BYTE5(v56);
LABEL_40:
            sub_26C00908C();
            goto LABEL_41;
          }

          v59 = v55;
          if (v55 >> 32 < v55)
          {
            goto LABEL_56;
          }

          sub_26BE00608(v30, v32);
          if (sub_26C008E9C() && __OFSUB__(v59, sub_26C008ECC()))
          {
            goto LABEL_59;
          }

          sub_26C008EBC();
          sub_26C00908C();
          sub_26BE00258(v30, v32);
          v3 = v65;
        }

        v6 = v68;
LABEL_41:
        (*v71)(v6, v3);
        __swift_destroy_boxed_opaque_existential_1(&v83);
        v32 = v79 + v77 + v40;
        v9 = v70;
        v30 = v72;
        if (__OFADD__(v79, v77 + v40))
        {
          goto LABEL_53;
        }

        ++v31;
        v29 = v78;
        if (v75 == v31)
        {

          goto LABEL_45;
        }
      }
    }

    v32 = 8;
LABEL_45:
    result = v32 + 10;
    if (__OFADD__(v32, 10))
    {
      __break(1u);
LABEL_48:
      sub_26BE01600();
      swift_allocError();
      *v61 = 3;
      swift_willThrow();

      sub_26BE00258(v30, v32);
      result = (*v71)(v6, v3);
    }

    v62 = *MEMORY[0x277D85DE8];
  }

  return result;
}

void sub_26BF29B74(uint64_t a1@<X8>)
{
  v3 = v1;
  v94 = *MEMORY[0x277D85DE8];
  v5 = sub_26C009C8C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v75 - v11;
  v13 = sub_26BEE6180();
  if (v13 & 0x10000) != 0 || (v14 = v13, v15 = sub_26BEE6028(), (v15 & 0x100000000) != 0) || (v84 = v15, v16 = sub_26BEE6028(), (v16 & 0x100000000) != 0) || (v76 = v16, v17 = sub_26BEEE594(), (v18))
  {
    sub_26BE01600();
    swift_allocError();
    *v19 = 1;
    swift_willThrow();
    goto LABEL_6;
  }

  v21 = v17;
  v22 = sub_26C004CEC(MEMORY[0x277D84F90]);
  v23 = v21;
  v24 = v22;
  if (!v23)
  {
LABEL_51:
    *a1 = v14;
    v70 = v76;
    *(a1 + 4) = v84;
    *(a1 + 8) = v70;
    *(a1 + 56) = v24;
    if (v14 - 3 >= 0xFFFFFFFE)
    {
      LOBYTE(v88[0]) = v14 != 1;
      MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(v88, &v90);
      v71 = v92;
      v72 = v93;
      *(a1 + 16) = v90;
      *(a1 + 24) = v91;
      *(a1 + 40) = v71;
      *(a1 + 48) = v72;
      goto LABEL_6;
    }

LABEL_65:
    __break(1u);
  }

  v81 = (v6 + 16);
  v75[1] = v6 + 32;
  v78 = v6 + 8;
  v75[0] = v6 + 40;
  v79 = v6;
  v80 = a1;
  v82 = v5;
  v83 = v10;
  v77 = v14;
  v86 = v12;
  while (1)
  {
    v89 = 0;
    v26 = v3[2];
    v27 = v26 + 4;
    if (__OFADD__(v26, 4))
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
      goto LABEL_65;
    }

    v28 = *v3;
    v29 = v3[1];
    v30 = v29 >> 62;
    if ((v29 >> 62) <= 1)
    {
      if (v30)
      {
        v31 = v28 >> 32;
      }

      else
      {
        v31 = BYTE6(v29);
      }

LABEL_18:
      if (v31 < v27)
      {
        goto LABEL_53;
      }

      goto LABEL_21;
    }

    if (v30 == 2)
    {
      v31 = *(v28 + 24);
      goto LABEL_18;
    }

    if (v27 > 0)
    {
LABEL_53:
      sub_26BE01600();
      swift_allocError();
      *v73 = 1;
      goto LABEL_57;
    }

LABEL_21:
    v90 = *v3;
    *&v91 = v29;
    if (v27 < v26)
    {
      goto LABEL_59;
    }

    v85 = v23;
    v87 = v24;
    v88[0] = v26;
    v88[1] = v26 + 4;
    sub_26BE00608(v28, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
    sub_26BE016A8();
    sub_26BE016FC();
    sub_26C008E1C();
    sub_26BE00258(v90, v91);
    v32 = v89;
    v3[2] = v27;
    v34 = *v3;
    v33 = v3[1];
    sub_26BE00608(*v3, v33);
    sub_26BE00608(v34, v33);
    sub_26BF30764(v3, &v90);
    if (v2)
    {
      sub_26BE00258(*v3, v3[1]);
      *v3 = v34;
      v3[1] = v33;
      v3[2] = v27;
      sub_26BE00258(v34, v33);
      swift_willThrow();
      *v3 = v34;
      v3[1] = v33;
      v3[2] = v27;
      goto LABEL_57;
    }

    if (v91)
    {
      break;
    }

    v35 = v90;
    sub_26BE00258(v34, v33);
    v36 = v3[2];
    v37 = v36 + v35;
    if (__OFADD__(v36, v35))
    {
      goto LABEL_60;
    }

    v38 = *v3;
    v39 = v3[1];
    v40 = v39 >> 62;
    if ((v39 >> 62) <= 1)
    {
      if (v40)
      {
        v41 = v38 >> 32;
      }

      else
      {
        v41 = BYTE6(v39);
      }

LABEL_31:
      if (v41 < v37)
      {
        goto LABEL_56;
      }

      goto LABEL_34;
    }

    if (v40 == 2)
    {
      v41 = *(v38 + 24);
      goto LABEL_31;
    }

    if (v37 > 0)
    {
      goto LABEL_56;
    }

LABEL_34:
    if (v37 < v36)
    {
      goto LABEL_61;
    }

    v42 = sub_26C00909C();
    v43 = v42;
    v45 = v44;
    v3[2] = v37;
    v46 = v44 >> 62;
    if ((v44 >> 62) > 1)
    {
      if (v46 != 2)
      {
        goto LABEL_42;
      }

      v42 = *(v42 + 16);
      v47 = *(v43 + 24);
    }

    else
    {
      if (!v46)
      {
        goto LABEL_42;
      }

      v42 = v42;
      v47 = v43 >> 32;
    }

    if (v47 < v42)
    {
      goto LABEL_63;
    }

LABEL_42:
    v48 = bswap32(v32);
    v49 = sub_26C00909C();
    v51 = v50;
    sub_26BE00258(v43, v45);
    sub_26BE00258(v34, v33);
    v90 = v49;
    *&v91 = v51;
    v52 = v86;
    sub_26C009C5C();
    v53 = v82;
    v54 = v83;
    (*v81)(v83, v52, v82);
    v55 = v87;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v90 = v55;
    v57 = sub_26BEBB414(v48);
    v59 = *(v55 + 16);
    v60 = (v58 & 1) == 0;
    v61 = __OFADD__(v59, v60);
    v62 = v59 + v60;
    if (v61)
    {
      goto LABEL_62;
    }

    v63 = v58;
    a1 = v80;
    if (*(v55 + 24) >= v62)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v69 = v57;
        sub_26BE6E7A8();
        v57 = v69;
        v54 = v83;
      }
    }

    else
    {
      sub_26BE6B0E8(v62, isUniquelyReferenced_nonNull_native);
      v57 = sub_26BEBB414(v48);
      if ((v63 & 1) != (v64 & 1))
      {
        sub_26C00AF8C();
        __break(1u);
        return;
      }
    }

    v65 = v86;
    v24 = v90;
    if (v63)
    {
      v25 = v79;
      (*(v79 + 40))(v90[7] + *(v79 + 72) * v57, v54, v53);
      (*(v25 + 8))(v65, v53);
    }

    else
    {
      v90[(v57 >> 6) + 8] |= 1 << v57;
      *(v24[6] + 4 * v57) = v48;
      v66 = v79;
      (*(v79 + 32))(v24[7] + *(v79 + 72) * v57, v54, v53);
      (*(v66 + 8))(v65, v53);
      v67 = v24[2];
      v61 = __OFADD__(v67, 1);
      v68 = v67 + 1;
      if (v61)
      {
        goto LABEL_64;
      }

      v24[2] = v68;
    }

    LOWORD(v14) = v77;
    v23 = v85 - 1;
    if (v85 == 1)
    {
      goto LABEL_51;
    }
  }

  sub_26BE00258(*v3, v3[1]);
  *v3 = v34;
  v3[1] = v33;
  v39 = v33;
  v38 = v34;
  v3[2] = v27;
LABEL_56:
  sub_26BE00258(v38, v39);
  *v3 = v34;
  v3[1] = v33;
  v3[2] = v27;
  sub_26BE01600();
  swift_allocError();
  *v74 = 1;
LABEL_57:
  swift_willThrow();

LABEL_6:
  v20 = *MEMORY[0x277D85DE8];
}

uint64_t sub_26BF2A264(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BF2A2AC(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t sub_26BF2A30C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = a1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    if (v5)
    {
      v6 = v2 >> 32;
    }

    else
    {
      v6 = BYTE6(v3);
    }

    if (v5)
    {
      v7 = v2;
    }

    else
    {
      v7 = 0;
    }
  }

  if (v6 < result || v6 < v7)
  {
    __break(1u);
    goto LABEL_34;
  }

  v9 = sub_26C00909C();
  v11 = v10;
  sub_26C00913C();
  v12 = v11;
  v13 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v13 != 2)
    {
      sub_26BE00258(v9, v11);
      result = 0;
      goto LABEL_25;
    }

    v15 = *(v9 + 16);
    v14 = *(v9 + 24);
    sub_26BE00258(v9, v12);
    result = v14 - v15;
    if (!__OFSUB__(v14, v15))
    {
      goto LABEL_25;
    }

    __break(1u);
LABEL_22:
    result = sub_26BE00258(v9, v12);
    if (!__OFSUB__(HIDWORD(v9), v9))
    {
      result = HIDWORD(v9) - v9;
      goto LABEL_25;
    }

LABEL_34:
    __break(1u);
    return result;
  }

  if (v13)
  {
    goto LABEL_22;
  }

  sub_26BE00258(v9, v11);
  result = BYTE6(v11);
LABEL_25:
  v16 = *a1;
  v17 = a1[1];
  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v18 == 2)
    {
      v20 = *(v16 + 24);
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v19 = BYTE6(v17);
    v20 = v16 >> 32;
    if (!v18)
    {
      v20 = v19;
    }
  }

  a1[2] = v20;
  return result;
}

uint64_t sub_26BF2A44C(uint64_t a1)
{
  result = v1[2];
  v4 = result + a1;
  if (__OFADD__(result, a1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v5 = *v1;
  v6 = v1[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 == 2)
    {
      if (*(v5 + 24) >= v4)
      {
        goto LABEL_7;
      }
    }

    else if (v4 <= 0)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (v7)
  {
    v8 = v5 >> 32;
  }

  else
  {
    v8 = BYTE6(v6);
  }

  if (v8 < v4)
  {
    return 0;
  }

LABEL_7:
  if (v4 < result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  result = sub_26C00909C();
  v1[2] = v4;
  if (v9 >> 62 == 2)
  {
    v10 = *(result + 16);
  }

  return result;
}

uint64_t sub_26BF2A51C(uint64_t a1)
{
  result = v1[2];
  v4 = result + a1;
  if (!__OFADD__(result, a1))
  {
    v5 = *v1;
    v6 = v1[1];
    v7 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v7 == 2)
      {
        if (*(v5 + 24) >= v4)
        {
          goto LABEL_7;
        }
      }

      else if (v4 <= 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (v7)
      {
        v8 = v5 >> 32;
      }

      else
      {
        v8 = BYTE6(v6);
      }

      if (v8 >= v4)
      {
LABEL_7:
        if (v4 >= result)
        {
          v9 = sub_26C00909C();
          result = sub_26BF974A8(v9, v10);
          v1[2] = v4;
          return result;
        }

        goto LABEL_15;
      }
    }

    return 0;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_26BF2A5B8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  result = sub_26C00B05C();
  v5 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(v1 + 24);
    }
  }

  else if (v5)
  {
    v6 = v1 >> 32;
  }

  else
  {
    v6 = BYTE6(v2);
  }

  if (v6 < v3)
  {
    __break(1u);
  }

  else
  {
    v7 = sub_26C00909C();
    v9 = v8;
    sub_26C00911C();
    sub_26BE00258(v7, v9);
    return sub_26C00B0CC();
  }

  return result;
}

uint64_t sub_26BF2A670()
{
  v1 = *v0;
  v2 = v0[1];
  result = v0[2];
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v5 = *(v1 + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else if (v4)
  {
    v5 = v1 >> 32;
  }

  else
  {
    v5 = BYTE6(v2);
  }

  if (v5 < result)
  {
    __break(1u);
  }

  else
  {
    v6 = sub_26C00909C();
    v8 = v7;
    sub_26C00911C();

    return sub_26BE00258(v6, v8);
  }

  return result;
}

uint64_t sub_26BF2A714()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  result = sub_26C00B05C();
  v5 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v6 = *(v1 + 24);
    }

    else
    {
      v6 = 0;
    }
  }

  else if (v5)
  {
    v6 = v1 >> 32;
  }

  else
  {
    v6 = BYTE6(v2);
  }

  if (v6 < v3)
  {
    __break(1u);
  }

  else
  {
    v7 = sub_26C00909C();
    v9 = v8;
    sub_26C00911C();
    sub_26BE00258(v7, v9);
    return sub_26C00B0CC();
  }

  return result;
}

unint64_t sub_26BF2A7EC()
{
  result = qword_28045FA98;
  if (!qword_28045FA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FA98);
  }

  return result;
}

uint64_t sub_26BF2A840(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 == 2)
    {
      v10 = *(result + 24);
    }

    else
    {
      v10 = 0;
    }
  }

  else if (v9)
  {
    v10 = result >> 32;
  }

  else
  {
    v10 = BYTE6(a2);
  }

  if (v10 < a3)
  {
    __break(1u);
  }

  else
  {
    result = sub_26C00909C();
    v11 = result;
    v13 = v12;
    v14 = a5 >> 62;
    if ((a5 >> 62) > 1)
    {
      if (v14 == 2)
      {
        v15 = *(a4 + 24);
      }

      else
      {
        v15 = 0;
      }
    }

    else if (v14)
    {
      v15 = a4 >> 32;
    }

    else
    {
      v15 = BYTE6(a5);
    }

    if (v15 >= a6)
    {
      v16 = sub_26C00909C();
      v18 = v17;
      v19 = sub_26BE02DEC(v11, v13, v16, v17);
      sub_26BE00258(v16, v18);
      sub_26BE00258(v11, v13);
      return v19 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26BF2A960(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26BF2A9B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_26BF2AA34(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = &v88;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v58 - v11;
  LODWORD(v70) = *a1;
  v98 = *(a1 + 1);
  v99 = a1[3];
  v13 = *(a1 + 1);
  v68 = *(a1 + 2);
  v69 = v13;
  v14 = *(a1 + 68);
  v94 = *(a1 + 60);
  v95 = v14;
  v15 = *(a1 + 84);
  v96 = *(a1 + 76);
  v97 = v15;
  v16 = *(a1 + 36);
  v90 = *(a1 + 28);
  v91 = v16;
  v17 = *(a1 + 52);
  v92 = *(a1 + 44);
  v93 = v17;
  v18 = *(a1 + 20);
  v88 = *(a1 + 12);
  v89 = v18;
  sub_26C009C3C();
  v19 = v71;
  v100 = v72;
  sub_26BF2EC08(a3, v12);
  v20 = sub_26C009C8C();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v12, 1, v20) == 1)
  {
    sub_26BF2EC78(v12);
    v22 = 0;
    v23 = 0xF000000000000000;
  }

  else
  {
    sub_26C009C3C();
    (*(v21 + 8))(v12, v20);
    v23 = *(&v84 + 1);
    v22 = v84;
  }

  v84 = xmmword_26C00BBD0;
  v85 = 0;
  v24 = v100;
  v71 = v19;
  v72 = v100;
  v73 = v22;
  *&v74 = v23;
  *(&v74 + 1) = a4;

  sub_26BEE4A58(&v71);
  if (v4)
  {
    sub_26BE00258(v19, v24);
    sub_26BE136AC(v22, v23);

    return sub_26BE00258(v84, *(&v84 + 1));
  }

  v64 = v19;
  v27 = *(&v84 + 1);
  v26 = v84;
  v28 = *(&v84 + 1) >> 62;
  if ((*(&v84 + 1) >> 62) > 1)
  {
    if (v28 != 2)
    {
      goto LABEL_14;
    }

    v29 = *(v84 + 24);
  }

  else
  {
    if (!v28)
    {
      goto LABEL_14;
    }

    v29 = v84 >> 32;
  }

  if (v29 < 0)
  {
    __break(1u);
  }

LABEL_14:
  v63 = v23;
  v30 = sub_26C00909C();
  v65 = v31;
  v66 = v30;
  sub_26BE00258(v26, v27);
  if ((v70 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    v62 = a4;
    LOBYTE(v84) = v70 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v84, &v71);
    v32 = v69;
    v61 = *(&v74 + 1);
    if (v71)
    {
      LOBYTE(v71) = 1;
      v86 = type metadata accessor for P256EncryptionPublicKey(0);
      v87 = sub_26BF2ECE0(&qword_28045E3C0, type metadata accessor for P256EncryptionPublicKey);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v84);
      v34 = v68;
      sub_26BE00608(v32, v68);

      P256EncryptionPublicKey.init(data:ciphersuite:)(v32, v34, &v71, boxed_opaque_existential_1);
    }

    else
    {
      LOBYTE(v71) = 0;
      v86 = type metadata accessor for Curve25519EncryptionPublicKey(0);
      v87 = sub_26BF2ECE0(&qword_28045E2D8, type metadata accessor for Curve25519EncryptionPublicKey);
      v35 = __swift_allocate_boxed_opaque_existential_1(&v84);
      v36 = v68;
      sub_26BE00608(v32, v68);

      Curve25519EncryptionPublicKey.init(data:ciphersuite:)(v32, v36, &v71, v35);
    }

    v37 = v66;
    v23 = v63;
    v38 = v86;
    v39 = v87;
    __swift_project_boxed_opaque_existential_1(&v84, v86);
    v40 = (*(v39 + 16))(0x656D6F636C6557, 0xE700000000000000, v67[2], v67[3], v37, v65, v38, v39);
    v42 = v41;
    v63 = v43;
    v45 = v44;
    v46 = v40;
    v81 = v95;
    v82 = v96;
    v83 = v97;
    v76 = v90;
    v77 = v91;
    v78 = v92;
    v79 = v93;
    v80 = v94;
    v74 = v88;
    v75 = v89;
    LOWORD(v71) = v70;
    *(&v71 + 2) = v98;
    HIWORD(v71) = v99;
    v72 = v69;
    v73 = v68;
    v47 = MLS.KeyPackage.refHash.getter();
    v59 = v48;
    v68 = v47;
    v69 = v45;
    v26 = v67[1];
    sub_26BE00608(v63, v45);
    v70 = v46;
    sub_26BE00608(v46, v42);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = v65;
    a4 = v66;
    v60 = v42;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_19;
    }
  }

  v26 = sub_26BEECA34(0, *(v26 + 2) + 1, 1, v26);
LABEL_19:
  v51 = *(v26 + 2);
  v50 = *(v26 + 3);
  if (v51 >= v50 >> 1)
  {
    v26 = sub_26BEECA34((v50 > 1), v51 + 1, 1, v26);
  }

  sub_26BE00258(v64, v100);
  sub_26BE136AC(v22, v23);

  sub_26BE00258(a4, v8);
  v52 = v70;
  v53 = v60;
  sub_26BE00258(v70, v60);
  v54 = v63;
  v55 = v69;
  sub_26BE00258(v63, v69);
  *(v26 + 2) = v51 + 1;
  v56 = &v26[48 * v51];
  v57 = v59;
  *(v56 + 4) = v68;
  *(v56 + 5) = v57;
  *(v56 + 6) = v54;
  *(v56 + 7) = v55;
  *(v56 + 8) = v52;
  *(v56 + 9) = v53;
  v67[1] = v26;
  return __swift_destroy_boxed_opaque_existential_1(&v84);
}

uint64_t static MLS.Welcome.encryptGroupInfo(ciphersuiteID:groupInfo:joinerSecret:preSharedKeys:)(unsigned __int16 *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_26C009F3C();
  v56 = *(v8 - 8);
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v8);
  v57 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26C009C8C();
  *(&v62 + 1) = *(v11 - 8);
  v12 = *(*(&v62 + 1) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v61 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v50 - v16;
  MEMORY[0x28223BE20](v15);
  *&v62 = &v50 - v18;
  v19 = type metadata accessor for MLS.KeyAndNonce(0);
  v20 = *(*(v19 - 8) + 64);
  result = MEMORY[0x28223BE20](v19);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  if ((v24 - 3) >= 0xFFFFFFFE)
  {
    *&v58 = result;
    v55 = v8;
    v59 = v11;
    v60 = a2;
    LOBYTE(v64) = v24 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v64, &v65);
    v25 = v65;
    v26 = a4;
    v28 = *(&v65 + 1);
    v27 = v66;
    v30 = v67;
    v29 = v68;
    LOWORD(v65) = v24;
    v31 = v63;
    sub_26BF2D404(&v65, a3, v26, v23);
    if (v31)
    {

      return v29;
    }

    v51 = v30;
    v52 = v27;
    v53 = v28;
    v54 = v25;
    v63 = v29;
    v32 = *(*(&v62 + 1) + 16);
    v33 = v59;
    v32(v17, v23, v59);
    sub_26BF2ECE0(&qword_28045E8B8, MEMORY[0x277CC5330]);
    sub_26C009C5C();
    v32(v17, &v23[*(v58 + 20)], v33);
    sub_26C009C5C();
    v58 = xmmword_26C00BBD0;
    v65 = xmmword_26C00BBD0;
    v66 = 0;
    sub_26BED49C0(v60);
    v34 = v65;
    v35 = *(&v65 + 1) >> 62;
    v50 = v23;
    if ((*(&v65 + 1) >> 62) > 1)
    {
      v36 = *(&v62 + 1);
      v37 = v62;
      v38 = v57;
      if (v35 != 2)
      {
        goto LABEL_14;
      }

      v39 = *(v65 + 24);
    }

    else
    {
      v36 = *(&v62 + 1);
      v37 = v62;
      v38 = v57;
      if (!v35)
      {
        goto LABEL_14;
      }

      v39 = v65 >> 32;
    }

    v40 = v54;
    if ((v39 & 0x8000000000000000) == 0)
    {
LABEL_15:
      *&v62 = sub_26C00909C();
      *(&v62 + 1) = v41;
      sub_26BE00258(v34, *(&v34 + 1));
      LOBYTE(v65) = v40;
      *(&v65 + 1) = v53;
      v66 = v52;
      v67 = v51;
      v68 = v63;
      v42 = sub_26C009C7C();
      v43 = sub_26C009C7C();
      sub_26BE0DDF0(v42, v43);
      sub_26C009E9C();
      v65 = v62;
      v64 = v58;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
      sub_26C009C3C();
      v44 = v38;
      v45 = sub_26BE12418(v69);
      v47 = v46;

      sub_26BE016A8();
      v48 = sub_26C009F2C();
      v60 = 0;
      v29 = v48;
      sub_26BE00258(v45, v47);

      (*(v56 + 8))(v44, v55);
      v49 = *(v36 + 8);
      v49(v61, v33);
      v49(v37, v33);
      sub_26BF2E220(v50);
      sub_26BE00258(v62, *(&v62 + 1));
      return v29;
    }

    __break(1u);
LABEL_14:
    v40 = v54;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BF2B7B8()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v12 = MEMORY[0x277D84F90];
    sub_26BECB914(0, v2, 0);
    v3 = v12;
    v4 = (v1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      sub_26BE00608(v5, *v4);
      v8 = *(v12 + 16);
      v7 = *(v12 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_26BECB914((v7 > 1), v8 + 1, 1);
      }

      v4 += 6;
      *(v12 + 16) = v8 + 1;
      v9 = v12 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      --v2;
    }

    while (v2);
  }

  v10 = sub_26BEC800C(v3);

  return v10;
}

unint64_t sub_26BF2B8A0(uint64_t a1, unint64_t a2)
{
  v55[2] = *MEMORY[0x277D85DE8];
  v3 = *(v2 + 8);
  v52 = *(v3 + 16);
  if (!v52)
  {
    v5 = 0;
    goto LABEL_69;
  }

  v4 = a2;
  v5 = 0;
  if (a1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2 == 0xC000000000000000;
  }

  v7 = !v6;
  v48 = v7;
  v8 = a2 >> 62;
  v9 = __OFSUB__(HIDWORD(a1), a1);
  v44 = v9;
  v43 = HIDWORD(a1) - a1;
  v47 = BYTE6(a2);
  v10 = (v3 + 40);
  v50 = a2 >> 62;
  v51 = *(v2 + 8);
  while (1)
  {
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
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
    }

    v12 = *(v10 - 1);
    v11 = *v10;
    v14 = v10[1];
    v13 = v10[2];
    v15 = v10[3];
    v53 = v10[4];
    v16 = *v10 >> 62;
    if (v16 == 3)
    {
      if (v12)
      {
        v17 = 0;
      }

      else
      {
        v17 = v11 == 0xC000000000000000;
      }

      v19 = !v17 || v8 < 3;
      if (((v19 | v48) & 1) == 0)
      {
        sub_26BE00608(0, 0xC000000000000000);
        sub_26BE00608(v14, v13);
        v36 = v53;
        sub_26BE00608(v15, v53);
        v37 = 0;
        v38 = 0xC000000000000000;
        goto LABEL_68;
      }

LABEL_38:
      v20 = 0;
      if (v8 <= 1)
      {
        goto LABEL_35;
      }

      goto LABEL_39;
    }

    if (v16 > 1)
    {
      if (v16 != 2)
      {
        goto LABEL_38;
      }

      v22 = *(v12 + 16);
      v21 = *(v12 + 24);
      v23 = __OFSUB__(v21, v22);
      v20 = v21 - v22;
      if (v23)
      {
        goto LABEL_74;
      }

      if (v8 <= 1)
      {
        goto LABEL_35;
      }
    }

    else if (v16)
    {
      LODWORD(v20) = HIDWORD(v12) - v12;
      if (__OFSUB__(HIDWORD(v12), v12))
      {
        goto LABEL_73;
      }

      v20 = v20;
      if (v8 <= 1)
      {
LABEL_35:
        v24 = v47;
        if (v8)
        {
          v24 = v43;
          if (v44)
          {
            goto LABEL_71;
          }
        }

        goto LABEL_41;
      }
    }

    else
    {
      v20 = BYTE6(v11);
      if (v8 <= 1)
      {
        goto LABEL_35;
      }
    }

LABEL_39:
    if (v8 != 2)
    {
      if (!v20)
      {
        break;
      }

LABEL_13:
      sub_26BE00608(v12, v11);
      sub_26BE00608(v14, v13);
      sub_26BE00608(v15, v53);
      sub_26BE00258(v12, v11);
      sub_26BE00258(v14, v13);
      sub_26BE00258(v15, v53);
      goto LABEL_14;
    }

    v26 = *(a1 + 16);
    v25 = *(a1 + 24);
    v23 = __OFSUB__(v25, v26);
    v24 = v25 - v26;
    if (v23)
    {
      goto LABEL_72;
    }

LABEL_41:
    if (v20 != v24)
    {
      goto LABEL_13;
    }

    if (v20 < 1)
    {
      break;
    }

    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v41 = *(v12 + 24);
        v42 = *(v12 + 16);
        sub_26BE00608(v12, v11);
        sub_26BE00608(v14, v13);
        sub_26BE00608(v15, v53);
        v30 = sub_26C008E9C();
        v46 = v15;
        if (v30)
        {
          v31 = sub_26C008ECC();
          v32 = v42;
          if (__OFSUB__(v42, v31))
          {
            goto LABEL_77;
          }

          v30 += v42 - v31;
        }

        else
        {
          v32 = v42;
        }

        if (__OFSUB__(v41, v32))
        {
          goto LABEL_76;
        }

        goto LABEL_63;
      }

      memset(v55, 0, 14);
      sub_26BE00608(v12, v11);
      sub_26BE00608(v14, v13);
      v34 = v15;
      v28 = v15;
      v29 = v53;
      sub_26BE00608(v34, v53);
    }

    else
    {
      if (v16)
      {
        v46 = v10[3];
        if (v12 >> 32 < v12)
        {
          goto LABEL_75;
        }

        sub_26BE00608(v12, v11);
        sub_26BE00608(v14, v13);
        sub_26BE00608(v15, v53);
        v30 = sub_26C008E9C();
        if (v30)
        {
          v33 = sub_26C008ECC();
          if (__OFSUB__(v12, v33))
          {
            goto LABEL_78;
          }

          v30 += v12 - v33;
        }

LABEL_63:
        sub_26C008EBC();
        v35 = v30;
        v4 = a2;
        sub_26BE567B0(v35, a1, a2, v55);
        sub_26BE00258(v12, v11);
        sub_26BE00258(v14, v13);
        sub_26BE00258(v46, v53);
        if (v55[0])
        {
          goto LABEL_69;
        }

        goto LABEL_14;
      }

      v55[0] = *(v10 - 1);
      LOWORD(v55[1]) = v11;
      BYTE2(v55[1]) = BYTE2(v11);
      BYTE3(v55[1]) = BYTE3(v11);
      BYTE4(v55[1]) = BYTE4(v11);
      BYTE5(v55[1]) = BYTE5(v11);
      sub_26BE00608(v12, v11);
      sub_26BE00608(v14, v13);
      v27 = v15;
      v28 = v15;
      v29 = v53;
      sub_26BE00608(v27, v53);
      v4 = a2;
    }

    sub_26BE567B0(v55, a1, v4, &v54);
    sub_26BE00258(v12, v11);
    sub_26BE00258(v14, v13);
    sub_26BE00258(v28, v29);
    if (v54)
    {
      goto LABEL_69;
    }

LABEL_14:
    ++v5;
    v10 += 6;
    v3 = v51;
    v8 = v50;
    if (v52 == v5)
    {
      v5 = 0;
      goto LABEL_69;
    }
  }

  sub_26BE00608(v12, v11);
  sub_26BE00608(v14, v13);
  v36 = v53;
  sub_26BE00608(v15, v53);
  v37 = v12;
  v38 = v11;
LABEL_68:
  sub_26BE00258(v37, v38);
  sub_26BE00258(v14, v13);
  sub_26BE00258(v15, v36);
LABEL_69:
  v39 = *MEMORY[0x277D85DE8];
  return v5;
}