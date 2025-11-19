uint64_t sub_23010EFA0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v4 == *v6 && *(v4 + 1) == *(v6 + 1);
      if (!v16 && (sub_230311048() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = *(v6 - 2) == v19 && *(v6 - 1) == v20;
      if (!v21 && (sub_230311048() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t CLAuthorizationStatus.description.getter(int a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x7265746544746F6ELL;
    }

    if (a1 == 1)
    {
      return 0x7463697274736572;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x6465696E6564;
      case 3:
        return 0xD000000000000010;
      case 4:
        return 0xD000000000000013;
    }
  }

  return 0x6E776F6E6B6E75;
}

uint64_t CLAccuracyAuthorization.description.getter(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E75;
  if (a1 == 1)
  {
    v1 = 0x4164656375646572;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x756363416C6C7566;
  }
}

uint64_t sub_23010F310()
{
  v1 = 0x6E776F6E6B6E75;
  if (*v0 == 1)
  {
    v1 = 0x4164656375646572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x756363416C6C7566;
  }
}

uint64_t sub_23010F380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16[-v9];
  sub_23004D5CC(a1, v16);
  v11 = sub_23030EB58();
  v12 = swift_dynamicCast();
  v13 = *(*(v11 - 8) + 56);
  if (v12)
  {
    v14 = *(v11 - 8);
    v13(v10, 0, 1, v11);
    return (*(v14 + 32))(a4, v10, v11);
  }

  else
  {
    v13(v10, 1, 1, v11);
    sub_230061918(v10, &unk_27DB15AA0);
    sub_23004D5CC(a1, v16);
    sub_2301FF8A4(v16, a2, a3);
    sub_230061918(v16, &qword_27DB14810);
    return swift_willThrow();
  }
}

uint64_t sub_23010F53C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15638);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15[-v9];
  sub_23004D5CC(a1, v15);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  v12 = swift_dynamicCast();
  v13 = *(*(v11 - 8) + 56);
  if (v12)
  {
    v13(v10, 0, 1, v11);
    return sub_230112AF4(v10, a4, &qword_27DB14800);
  }

  else
  {
    v13(v10, 1, 1, v11);
    sub_230061918(v10, &qword_27DB15638);
    sub_23004D5CC(a1, v15);
    sub_2301FF8CC(v15, a2, a3);
    sub_230061918(v15, &qword_27DB14810);
    return swift_willThrow();
  }
}

uint64_t sub_23010F6F0(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (*(a5 + 16) && (v10 = sub_23005EE00(a1, a2), (v11 & 1) != 0))
  {
    sub_23004D5CC(*(a5 + 56) + 32 * v10, v14);
    sub_230061914(v14, v15);
    v5 = sub_23010F8E4(v15, a1, v5, a3, a4);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    sub_2300BB7A4();
    swift_allocError();
    *v12 = a1;
    *(v12 + 8) = v5;
    *(v12 + 16) = 1;
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_23010F7E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (*(a5 + 16) && (v12 = sub_23005EE00(a1, a2), (v13 & 1) != 0))
  {
    sub_23004D5CC(*(a5 + 56) + 32 * v12, v16);
    sub_230061914(v16, v17);
    sub_230110874(v17, a1, a2, a3, a4, a6);
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_2300BB7A4();
    swift_allocError();
    *v15 = a1;
    *(v15 + 8) = a2;
    *(v15 + 16) = 1;
    swift_willThrow();
  }
}

uint64_t sub_23010F8E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v34 = a3;
  v35 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v11 = sub_23030EBB8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23030EB58();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5 >> 62)
  {
    if (a5 >> 62 == 1)
    {
      sub_23004D5CC(a1, v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15578);
      if (swift_dynamicCast())
      {
        v20 = v33;
        v12 = sub_23010BE58();

        if (!v20)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15608);
          v21 = sub_230310B08();

          v22 = &unk_27DB15610;
LABEL_9:
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(v22);
          v37[0] = v21;
LABEL_10:
          sub_23004D5CC(v37, &v36);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15640);
          if (swift_dynamicCast())
          {
            v12 = v39;
            __swift_destroy_boxed_opaque_existential_1(v37);
            return v12;
          }

          sub_23004D5CC(v37, &v36);
          sub_2301FEB34(&v36, 0, 0);
          sub_230061918(&v36, &qword_27DB14810);
          swift_willThrow();
LABEL_33:
          __swift_destroy_boxed_opaque_existential_1(v37);
          return v12;
        }

        return v12;
      }
    }

    else
    {
      if (a4 > 0x38)
      {
        goto LABEL_26;
      }

      if (((1 << a4) & 0x100000101010101) != 0)
      {
        sub_23004D5CC(a1, v37);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15640);
        if (swift_dynamicCast())
        {
          return v36;
        }

        goto LABEL_28;
      }

      if (a4 == 40)
      {
        v24 = v17;
        sub_23004D5CC(a1, v37);
        if (swift_dynamicCast())
        {
          sub_23030EA38();
          v38 = v24;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v37);
          (*(v16 + 16))(boxed_opaque_existential_0, v19, v24);
          sub_23004D5CC(v37, &v36);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15640);
          if (swift_dynamicCast())
          {
            v12 = v39;
          }

          else
          {
            sub_23004D5CC(v37, &v36);
            sub_2301FEB34(&v36, 0, 0);
            sub_230061918(&v36, &qword_27DB14810);
            swift_willThrow();
          }

          (*(v16 + 8))(v19, v24);
          goto LABEL_33;
        }

        goto LABEL_28;
      }

      if (a4 == 48)
      {
        sub_23004D5CC(a1, v37);
        if (swift_dynamicCast())
        {
          sub_23030EB68();

          v26 = v12;
          if ((*(v12 + 48))(v10, 1, v11) != 1)
          {
            (*(v12 + 32))(v14, v10, v11);
            v38 = v11;
            v31 = __swift_allocate_boxed_opaque_existential_0(v37);
            (*(v12 + 16))(v31, v14, v11);
            sub_23004D5CC(v37, &v36);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15640);
            if (swift_dynamicCast())
            {
              v12 = v39;
              (*(v26 + 8))(v14, v11);
            }

            else
            {
              sub_23004D5CC(v37, &v36);
              sub_2301FEB34(&v36, 0, 0);
              sub_230061918(&v36, &qword_27DB14810);
              swift_willThrow();
              (*(v12 + 8))(v14, v11);
            }

            goto LABEL_33;
          }

          sub_230061918(v10, &qword_27DB14800);
        }
      }

      else
      {
LABEL_26:
        sub_23004D5CC(a1, v37);
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15578);
        if (swift_dynamicCast())
        {
          v38 = v27;
          v37[0] = v36;
          goto LABEL_10;
        }
      }
    }

LABEL_28:
    sub_2300BB7A4();
    swift_allocError();
    v28 = v34;
    *v29 = v35;
    *(v29 + 8) = v28;
    *(v29 + 16) = 2;
    swift_willThrow();

    return v12;
  }

  sub_23004D5CC(a1, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15570);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_28;
  }

  v23 = v33;
  v12 = sub_23010BA2C(a4, v36, a4, a5);

  if (!v23)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15608);
    v21 = sub_230310A18();

    v22 = &unk_27DB15618;
    goto LABEL_9;
  }

  return v12;
}

uint64_t sub_2301100A0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v33 = a3;
  v38 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v11 = sub_23030EBB8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23030EB58();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5 >> 62)
  {
    if (a5 >> 62 == 1)
    {
      sub_23004D5CC(a1, v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15578);
      if (swift_dynamicCast())
      {
        v20 = v32;
        v12 = sub_23010BE58();

        if (!v20)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15608);
          v21 = sub_230310B08();

          v22 = &unk_27DB15610;
LABEL_9:
          v37 = __swift_instantiateConcreteTypeFromMangledNameV2(v22);
          v36[0] = v21;
LABEL_10:
          sub_23004D5CC(v36, &v35);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15630);
          if (swift_dynamicCast())
          {
            v12 = v34;
            __swift_destroy_boxed_opaque_existential_1(v36);
            return v12;
          }

          sub_23004D5CC(v36, &v35);
          sub_2301FF880(&v35, 0, 0);
          sub_230061918(&v35, &qword_27DB14810);
          swift_willThrow();
LABEL_33:
          __swift_destroy_boxed_opaque_existential_1(v36);
          return v12;
        }

        return v12;
      }
    }

    else
    {
      if (a4 > 0x38)
      {
        goto LABEL_26;
      }

      if (((1 << a4) & 0x100000101010101) != 0)
      {
        sub_23004D5CC(a1, v36);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15630);
        if (swift_dynamicCast())
        {
          return v35;
        }

        goto LABEL_28;
      }

      if (a4 == 40)
      {
        v24 = v17;
        sub_23004D5CC(a1, v36);
        if (swift_dynamicCast())
        {
          sub_23030EA38();
          v37 = v24;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v36);
          (*(v16 + 16))(boxed_opaque_existential_0, v19, v24);
          sub_23004D5CC(v36, &v35);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15630);
          if (swift_dynamicCast())
          {
            v12 = v34;
          }

          else
          {
            sub_23004D5CC(v36, &v35);
            sub_2301FF880(&v35, 0, 0);
            sub_230061918(&v35, &qword_27DB14810);
            swift_willThrow();
          }

          (*(v16 + 8))(v19, v24);
          goto LABEL_33;
        }

        goto LABEL_28;
      }

      if (a4 == 48)
      {
        sub_23004D5CC(a1, v36);
        if (swift_dynamicCast())
        {
          sub_23030EB68();

          v26 = v12;
          if ((*(v12 + 48))(v10, 1, v11) != 1)
          {
            (*(v12 + 32))(v14, v10, v11);
            v37 = v11;
            v31 = __swift_allocate_boxed_opaque_existential_0(v36);
            (*(v12 + 16))(v31, v14, v11);
            sub_23004D5CC(v36, &v35);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15630);
            if (swift_dynamicCast())
            {
              v12 = v34;
              (*(v26 + 8))(v14, v11);
            }

            else
            {
              sub_23004D5CC(v36, &v35);
              sub_2301FF880(&v35, 0, 0);
              sub_230061918(&v35, &qword_27DB14810);
              swift_willThrow();
              (*(v12 + 8))(v14, v11);
            }

            goto LABEL_33;
          }

          sub_230061918(v10, &qword_27DB14800);
        }
      }

      else
      {
LABEL_26:
        sub_23004D5CC(a1, v36);
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15578);
        if (swift_dynamicCast())
        {
          v37 = v27;
          v36[0] = v35;
          goto LABEL_10;
        }
      }
    }

LABEL_28:
    sub_2300BB7A4();
    swift_allocError();
    v28 = v33;
    *v29 = v38;
    *(v29 + 8) = v28;
    *(v29 + 16) = 2;
    swift_willThrow();

    return v12;
  }

  sub_23004D5CC(a1, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15570);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_28;
  }

  v23 = v32;
  v12 = sub_23010BA2C(a4, v35, a4, a5);

  if (!v23)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15608);
    v21 = sub_230310A18();

    v22 = &unk_27DB15618;
    goto LABEL_9;
  }

  return v12;
}

uint64_t sub_230110874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v47 = a2;
  v52 = a4;
  v48 = a3;
  v45 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v43 - v9;
  v11 = sub_23030EBB8();
  v44 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v43 - v15;
  v17 = sub_23030EB58();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v23 = &v43 - v22;
  if (a5 >> 62)
  {
    if (a5 >> 62 == 1)
    {
      sub_23004D5CC(a1, v50);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15578);
      if (swift_dynamicCast())
      {
        v24 = v46;
        sub_23010BE58();

        if (!v24)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15608);
          v26 = sub_230310B08();

          v27 = &unk_27DB15610;
LABEL_9:
          v51 = __swift_instantiateConcreteTypeFromMangledNameV2(v27);
          v50[0] = v26;
          v29 = v45;
LABEL_10:
          sub_23010F380(v50, 0, 0, v29);
          return __swift_destroy_boxed_opaque_existential_1(v50);
        }

        return result;
      }

LABEL_18:
      sub_2300BB7A4();
      swift_allocError();
      v36 = v48;
      *v37 = v47;
      *(v37 + 8) = v36;
      *(v37 + 16) = 2;
      swift_willThrow();
    }

    if (v52 <= 0x38)
    {
      if (((1 << v52) & 0x100000101010101) != 0)
      {
        v30 = v21;
        sub_23004D5CC(a1, v50);
        v31 = swift_dynamicCast();
        v32 = *(v30 + 56);
        if (v31)
        {
          v32(v16, 0, 1, v17);
          v33 = *(v30 + 32);
          v33(v23, v16, v17);
          return (v33)(v45, v23, v17);
        }

        v32(v16, 1, 1, v17);
        v34 = &unk_27DB15AA0;
        v35 = v16;
LABEL_17:
        sub_230061918(v35, v34);
        goto LABEL_18;
      }

      if (v52 == 40)
      {
        v38 = v21;
        sub_23004D5CC(a1, v50);
        if (swift_dynamicCast())
        {
          sub_23030EA38();
          v51 = v17;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v50);
          (*(v38 + 16))(boxed_opaque_existential_0, v20, v17);
          sub_23010F380(v50, 0, 0, v45);
          (*(v38 + 8))(v20, v17);
          return __swift_destroy_boxed_opaque_existential_1(v50);
        }

        goto LABEL_18;
      }

      if (v52 == 48)
      {
        sub_23004D5CC(a1, v50);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_18;
        }

        sub_23030EB68();

        v40 = v44;
        if ((*(v44 + 48))(v10, 1, v11) != 1)
        {
          (*(v40 + 32))(v13, v10, v11);
          v51 = v11;
          v42 = __swift_allocate_boxed_opaque_existential_0(v50);
          (*(v40 + 16))(v42, v13, v11);
          sub_23010F380(v50, 0, 0, v45);
          (*(v40 + 8))(v13, v11);
          return __swift_destroy_boxed_opaque_existential_1(v50);
        }

        v34 = &qword_27DB14800;
        v35 = v10;
        goto LABEL_17;
      }
    }

    sub_23004D5CC(a1, v50);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15578);
    if (swift_dynamicCast())
    {
      v51 = v41;
      v50[0] = v49;
      v29 = v45;
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  sub_23004D5CC(a1, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15570);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v28 = v46;
  sub_23010BA2C(v52, v49, v52, a5);

  if (!v28)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15608);
    v26 = sub_230310A18();

    v27 = &unk_27DB15618;
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_230110FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v48 = a2;
  v53 = a4;
  v49 = a3;
  v46 = a6;
  v8 = sub_23030EBB8();
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x28223BE20](v8);
  v42 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23030EB58();
  v43 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15638);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  if (a5 >> 62)
  {
    if (a5 >> 62 == 1)
    {
      sub_23004D5CC(a1, v51);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15578);
      if (swift_dynamicCast())
      {
        v23 = v47;
        sub_23010BE58();

        if (!v23)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15608);
          v25 = sub_230310B08();

          v26 = &unk_27DB15610;
LABEL_9:
          v52 = __swift_instantiateConcreteTypeFromMangledNameV2(v26);
          v51[0] = v25;
          v28 = v46;
LABEL_10:
          sub_23010F53C(v51, 0, 0, v28);
          return __swift_destroy_boxed_opaque_existential_1(v51);
        }

        return result;
      }

LABEL_18:
      sub_2300BB7A4();
      swift_allocError();
      v33 = v49;
      *v34 = v48;
      *(v34 + 8) = v33;
      *(v34 + 16) = 2;
      swift_willThrow();
    }

    if (v53 <= 0x38)
    {
      if (((1 << v53) & 0x100000101010101) != 0)
      {
        sub_23004D5CC(a1, v51);
        v29 = swift_dynamicCast();
        v30 = *(v17 + 56);
        if (v29)
        {
          v30(v15, 0, 1, v16);
          sub_230112AF4(v15, v22, &qword_27DB14800);
          return sub_230112AF4(v22, v46, &qword_27DB14800);
        }

        v30(v15, 1, 1, v16);
        v31 = &qword_27DB15638;
        v32 = v15;
LABEL_17:
        sub_230061918(v32, v31);
        goto LABEL_18;
      }

      if (v53 == 40)
      {
        sub_23004D5CC(a1, v51);
        if (swift_dynamicCast())
        {
          sub_23030EA38();
          v52 = v10;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v51);
          v36 = v43;
          (*(v43 + 16))(boxed_opaque_existential_0, v12, v10);
          sub_23010F53C(v51, 0, 0, v46);
          (*(v36 + 8))(v12, v10);
          return __swift_destroy_boxed_opaque_existential_1(v51);
        }

        goto LABEL_18;
      }

      if (v53 == 48)
      {
        sub_23004D5CC(a1, v51);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_18;
        }

        sub_23030EB68();

        v38 = v44;
        v37 = v45;
        if ((*(v44 + 48))(v20, 1, v45) != 1)
        {
          v40 = v42;
          (*(v38 + 32))(v42, v20, v37);
          v52 = v37;
          v41 = __swift_allocate_boxed_opaque_existential_0(v51);
          (*(v38 + 16))(v41, v40, v37);
          sub_23010F53C(v51, 0, 0, v46);
          (*(v38 + 8))(v40, v37);
          return __swift_destroy_boxed_opaque_existential_1(v51);
        }

        v31 = &qword_27DB14800;
        v32 = v20;
        goto LABEL_17;
      }
    }

    sub_23004D5CC(a1, v51);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15578);
    if (swift_dynamicCast())
    {
      v52 = v39;
      v51[0] = v50;
      v28 = v46;
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  sub_23004D5CC(a1, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15570);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v27 = v47;
  sub_23010BA2C(v53, v50, v53, a5);

  if (!v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15608);
    v25 = sub_230310A18();

    v26 = &unk_27DB15618;
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_230111720(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a7 + 16))
  {
    v14 = sub_23005EE00(a1, a2);
    if (v15)
    {
      sub_23004D5CC(*(a7 + 56) + 32 * v14, &v19);
      sub_230061914(&v19, v21);
      sub_23004D5CC(v21, &v19);
      sub_23004CBA4(0, qword_27DB15580);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v21);
      }

      else
      {
        sub_23004D5CC(v21, v18);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14810);
        swift_dynamicCast();
        if (v20)
        {
          sub_230061918(&v19, &qword_27DB14810);
          v16 = sub_2301100A0(v21, a1, a2, a3, a4);
          if (!v7)
          {
            a5 = v16;
          }
        }

        __swift_destroy_boxed_opaque_existential_1(v21);
      }
    }
  }

  return a5;
}

uint64_t REMTextMemberships.toJSON()@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v49 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v52 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v51 = &v48 - v7;
  v50 = v1;
  v8 = [v1 memberships];
  sub_23004CBA4(0, &qword_27DB15628);
  v9 = sub_23030F658();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146A8);
  result = sub_230310B98();
  v11 = result;
  v12 = 0;
  v14 = v9 + 64;
  v13 = *(v9 + 64);
  v55 = v9;
  v15 = 1 << *(v9 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v13;
  v18 = (v15 + 63) >> 6;
  v53 = result + 64;
  v54 = result;
  if ((v16 & v13) != 0)
  {
    while (1)
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_10:
      v23 = v19 | (v12 << 6);
      v24 = (*(v55 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v55 + 56) + 8 * v23);

      v28 = v27;
      REMTimestampedUUID.toJSON()(&v57);
      if (v3)
      {
      }

      v56 = 0;
      v29 = v57;
      v30 = (v58 & 1) != 0 ? &qword_27DB15570 : &qword_27DB15578;
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(v30);

      *&v59 = v29;
      *(v53 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v11 = v54;
      v31 = (*(v54 + 48) + 16 * v23);
      *v31 = v25;
      v31[1] = v26;
      result = sub_230061914(&v59, (*(v11 + 56) + 32 * v23));
      v32 = *(v11 + 16);
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        break;
      }

      *(v11 + 16) = v34;
      v3 = v56;
      if (!v17)
      {
        goto LABEL_5;
      }
    }

LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_5:
    v20 = v12;
    v21 = v52;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v12 >= v18)
      {
        break;
      }

      v22 = *(v14 + 8 * v12);
      ++v20;
      if (v22)
      {
        v19 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_10;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2303167B0;
    *(inited + 32) = 0x68737265626D656DLL;
    *(inited + 40) = 0xEB00000000737069;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15578);
    *(inited + 48) = v11;
    *(inited + 72) = v36;
    strcpy((inited + 80), "lastResetDate");
    *(inited + 94) = -4864;
    *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15630);
    v37 = [v50 lastResetDate];
    if (v37)
    {
      v38 = v37;
      sub_23030EB18();

      v39 = 0;
    }

    else
    {
      v39 = 1;
    }

    v40 = v49;
    v41 = sub_23030EB58();
    v42 = *(v41 - 8);
    (*(v42 + 56))(v21, v39, 1, v41);
    v43 = v51;
    sub_230112AF4(v21, v51, &unk_27DB15AA0);
    v44 = (*(v42 + 48))(v43, 1, v41);
    if (v44 == 1)
    {
      sub_230061918(v43, &unk_27DB15AA0);
      v45 = 0;
    }

    else
    {
      sub_23030EA48();
      v45 = v46;
      (*(v42 + 8))(v43, v41);
    }

    *(inited + 96) = v45;
    *(inited + 104) = v44 == 1;
    v47 = sub_23008C5BC(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146B0);
    result = swift_arrayDestroy();
    *v40 = v47;
    *(v40 + 8) = 0;
  }

  return result;
}

id static REMTextMemberships.fromJSON(_:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  if (*(a1 + 8))
  {
    sub_2300BB7A4();
    swift_allocError();
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 3;
    swift_willThrow();
    return v1;
  }

  v11 = *a1;
  sub_230111720(0x657365527473616CLL, 0xED00006574614474, 0x18uLL, 0x8000000000000000, 0, 1, v11);
  if (v2)
  {
  }

  else if ((v12 & 1) == 0)
  {
    sub_23030EA38();
    v20 = sub_23030EB58();
    (*(*(v20 - 8) + 56))(v9, 0, 1, v20);
    goto LABEL_7;
  }

  v13 = sub_23030EB58();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
LABEL_7:
  v14 = sub_23004CBA4(0, &qword_27DB15628);
  sub_23010F6F0(0x68737265626D656DLL, 0xEB00000000737069, v14, 0x40000002844F36B0uLL, v11);
  sub_230055F74(v9, v7, &unk_27DB15AA0);
  v15 = sub_23030F638();

  v16 = sub_23030EB58();
  v17 = *(v16 - 8);
  v18 = 0;
  if ((*(v17 + 48))(v7, 1, v16) != 1)
  {
    v18 = sub_23030EAA8();
    (*(v17 + 8))(v7, v16);
  }

  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithMemberships:v15 lastResetDate:v18];

  sub_230061918(v9, &unk_27DB15AA0);
  return v1;
}

id sub_23011219C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = static REMTextMemberships.fromJSON(_:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t REMTimestampedUUID.toJSON()@<X0>(unint64_t *a1@<X8>)
{
  v29 = a1;
  v2 = v1;
  v28 = sub_23030EB58();
  v3 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2303167B0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB148A8);
  v27 = v2;
  v13 = [v2 identifier];
  if (v13)
  {
    v14 = v13;
    sub_23030EBA8();

    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = sub_23030EBB8();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v9, v15, 1, v16);
  sub_230112AF4(v9, v11, &qword_27DB14800);
  if ((*(v17 + 48))(v11, 1, v16) == 1)
  {
    sub_230061918(v11, &qword_27DB14800);
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v18 = sub_23030EB78();
    v19 = v20;
    (*(v17 + 8))(v11, v16);
  }

  *(inited + 48) = v18;
  *(inited + 56) = v19;
  *(inited + 80) = 0x6465696669646F6DLL;
  *(inited + 88) = 0xEA00000000006E4FLL;
  v21 = [v27 modifiedOn];
  sub_23030EB18();

  sub_23030EA48();
  v23 = v22;
  (*(v3 + 8))(v5, v28);
  *(inited + 120) = MEMORY[0x277D839F8];
  *(inited + 96) = v23;
  v24 = sub_23008C5BC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146B0);
  result = swift_arrayDestroy();
  v26 = v29;
  *v29 = v24;
  *(v26 + 8) = 0;
  return result;
}

_BYTE *static REMTimestampedUUID.fromJSON(_:)(_BYTE *a1)
{
  v3 = sub_23030EB58();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v29 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  if (a1[8])
  {
    sub_2300BB7A4();
    swift_allocError();
    *v19 = 0;
    *(v19 + 8) = 0;
    *(v19 + 16) = 3;
    swift_willThrow();
    return a1;
  }

  v32 = v4;
  a1 = *a1;
  v20 = sub_23030EBB8();
  v31 = *(v20 - 8);
  (*(v31 + 56))(v16, 1, 1, v20);
  if (*(a1 + 2))
  {
    v21 = sub_23005EE00(0x696669746E656469, 0xEA00000000007265);
    if (v22)
    {
      sub_23004D5CC(*(a1 + 7) + 32 * v21, &v34);
      sub_230061914(&v34, v36);
      sub_23004D5CC(v36, &v34);
      sub_23004CBA4(0, qword_27DB15580);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v36);
      }

      else
      {
        sub_23004D5CC(v36, v33);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14810);
        swift_dynamicCast();
        if (v35)
        {
          sub_230061918(&v34, &qword_27DB14810);
          sub_230110FB0(v36, 0x696669746E656469, 0xEA00000000007265, 0x30uLL, 0x8000000000000000, v18);
          __swift_destroy_boxed_opaque_existential_1(v36);
          sub_230061918(v16, &qword_27DB14800);
          if (v1)
          {
            return a1;
          }

          goto LABEL_12;
        }

        __swift_destroy_boxed_opaque_existential_1(v36);
      }
    }
  }

  sub_230112AF4(v16, v18, &qword_27DB14800);
LABEL_12:
  sub_23010F7E8(0x6465696669646F6DLL, 0xEA00000000006E4FLL, 0x28uLL, 0x8000000000000000, a1, v9);
  if (v1)
  {
    sub_230061918(v18, &qword_27DB14800);
  }

  else
  {
    sub_230055F74(v18, v13, &qword_27DB14800);
    (*(v32 + 16))(v7, v9, v3);
    v23 = v31;
    if ((*(v31 + 48))(v13, 1, v20) == 1)
    {
      v24 = 0;
    }

    else
    {
      v30 = v3;
      v24 = sub_23030EB88();
      (*(v23 + 8))(v13, v20);
      v3 = v30;
    }

    v25 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v26 = sub_23030EAA8();
    a1 = [v25 initWithIdentifier:v24 modifiedOn:v26];

    v27 = *(v32 + 8);
    v27(v7, v3);
    v27(v9, v3);
    sub_230061918(v18, &qword_27DB14800);
  }

  return a1;
}

_BYTE *sub_230112AC8@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  result = static REMTimestampedUUID.fromJSON(_:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_230112AF4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t URLQueryItemValueDirectStringInitializable.init(queryItemString:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_2303104C8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - v12;
  (*(a4 + 24))(a1, a2, a3, a4);
  v14 = *(a3 - 8);
  if ((*(v14 + 48))(v13, 1, a3))
  {
    (*(v11 + 8))(v13, v10);
    v15 = 1;
  }

  else
  {
    (*(v14 + 32))(a5, v13, a3);
    v15 = 0;
  }

  return (*(v14 + 56))(a5, v15, 1, a3);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> URLQueryItemValueDirectStringInitializable.queryItemStringRepresentation()()
{
  sub_230311008();
  v0 = 0;
  v1 = 0xE000000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_230112D48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23030FB18();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double sub_230112D98@<D0>(_OWORD *a1@<X8>)
{
  sub_230112D48(&v3);
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_230112E38@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = HIBYTE(a2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    v27 = 0;
    LOBYTE(v26) = 1;
LABEL_66:
    *a3 = v27;
    a3[1] = v26 & 1;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v8 = sub_230115C2C(result, a2, 10);

    v26 = (v8 >> 8) & 1;
LABEL_63:
    if (v26)
    {
      v27 = 0;
    }

    else
    {
      v27 = v8;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_230310958();
      v5 = v28;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        if (--v5)
        {
          LOBYTE(v8) = 0;
          if (result)
          {
            v15 = (result + 1);
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_61;
              }

              v17 = (10 * v8);
              if (v17 != 10 * v8)
              {
                goto LABEL_61;
              }

              v8 = v17 + v16;
              if ((v17 + v16) != v8)
              {
                goto LABEL_61;
              }

              ++v15;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        LOBYTE(v8) = 0;
        if (result)
        {
          while (1)
          {
            v21 = *result - 48;
            if (v21 > 9)
            {
              goto LABEL_61;
            }

            v22 = (10 * v8);
            if (v22 != 10 * v8)
            {
              goto LABEL_61;
            }

            v8 = v22 + v21;
            if ((v22 + v21) != v8)
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LOBYTE(v8) = 0;
      LOBYTE(v5) = 1;
      goto LABEL_62;
    }

    if (v5 >= 1)
    {
      if (--v5)
      {
        LOBYTE(v8) = 0;
        if (result)
        {
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            v11 = (10 * v8);
            if (v11 != 10 * v8)
            {
              goto LABEL_61;
            }

            v8 = v11 - v10;
            if ((v11 - v10) != v8)
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v5) = 0;
LABEL_62:
        v30 = v5;
        LOBYTE(v26) = v5;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v29[0] = result;
  v29[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        LOBYTE(v8) = 0;
        v23 = v29;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = (10 * v8);
          if (v25 != 10 * v8)
          {
            break;
          }

          v8 = v25 + v24;
          if ((v25 + v24) != v8)
          {
            break;
          }

          ++v23;
          if (!--v4)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      v5 = v4 - 1;
      if (v4 != 1)
      {
        LOBYTE(v8) = 0;
        v12 = v29 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = (10 * v8);
          if (v14 != 10 * v8)
          {
            break;
          }

          v8 = v14 - v13;
          if ((v14 - v13) != v8)
          {
            break;
          }

          ++v12;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v4)
  {
    v5 = v4 - 1;
    if (v4 != 1)
    {
      LOBYTE(v8) = 0;
      v18 = v29 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        v20 = (10 * v8);
        if (v20 != 10 * v8)
        {
          break;
        }

        v8 = v20 + v19;
        if ((v20 + v19) != v8)
        {
          break;
        }

        ++v18;
        if (!--v5)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_230113178@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23011895C(a1, a2);
  *a3 = result;
  a3[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_2301131A8@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = HIBYTE(a2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    v27 = 0;
    LOBYTE(v26) = 1;
LABEL_66:
    *a3 = v27;
    *(a3 + 2) = v26 & 1;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v8 = sub_23011620C(result, a2, 10);

    v26 = HIWORD(v8) & 1;
LABEL_63:
    if (v26)
    {
      v27 = 0;
    }

    else
    {
      v27 = v8;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_230310958();
      v5 = v28;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        if (--v5)
        {
          LOWORD(v8) = 0;
          if (result)
          {
            v15 = (result + 1);
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_61;
              }

              v17 = (10 * v8);
              if (v17 != 10 * v8)
              {
                goto LABEL_61;
              }

              v8 = v17 + v16;
              if ((v17 + v16) != v8)
              {
                goto LABEL_61;
              }

              ++v15;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        LOWORD(v8) = 0;
        if (result)
        {
          while (1)
          {
            v21 = *result - 48;
            if (v21 > 9)
            {
              goto LABEL_61;
            }

            v22 = (10 * v8);
            if (v22 != 10 * v8)
            {
              goto LABEL_61;
            }

            v8 = v22 + v21;
            if ((v22 + v21) != v8)
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LOWORD(v8) = 0;
      LOBYTE(v5) = 1;
      goto LABEL_62;
    }

    if (v5 >= 1)
    {
      if (--v5)
      {
        LOWORD(v8) = 0;
        if (result)
        {
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            v11 = (10 * v8);
            if (v11 != 10 * v8)
            {
              goto LABEL_61;
            }

            v8 = v11 - v10;
            if ((v11 - v10) != v8)
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v5) = 0;
LABEL_62:
        v30 = v5;
        LOBYTE(v26) = v5;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v29[0] = result;
  v29[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        LOWORD(v8) = 0;
        v23 = v29;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = (10 * v8);
          if (v25 != 10 * v8)
          {
            break;
          }

          v8 = v25 + v24;
          if ((v25 + v24) != v8)
          {
            break;
          }

          ++v23;
          if (!--v4)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      v5 = v4 - 1;
      if (v4 != 1)
      {
        LOWORD(v8) = 0;
        v12 = v29 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = (10 * v8);
          if (v14 != 10 * v8)
          {
            break;
          }

          v8 = v14 - v13;
          if ((v14 - v13) != v8)
          {
            break;
          }

          ++v12;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v4)
  {
    v5 = v4 - 1;
    if (v4 != 1)
    {
      LOWORD(v8) = 0;
      v18 = v29 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        v20 = (10 * v8);
        if (v20 != 10 * v8)
        {
          break;
        }

        v8 = v20 + v19;
        if ((v20 + v19) != v8)
        {
          break;
        }

        ++v18;
        if (!--v5)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_2301134E8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_230118C8C(a1, a2);
  *a3 = result;
  *(a3 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_230113518@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = HIBYTE(a2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    v27 = 0;
    LOBYTE(v26) = 1;
LABEL_66:
    *a3 = v27;
    *(a3 + 4) = v26 & 1;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v8 = sub_2301167EC(result, a2, 10);

    v26 = (v8 >> 32) & 1;
LABEL_63:
    if (v26)
    {
      v27 = 0;
    }

    else
    {
      v27 = v8;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_230310958();
      v5 = v28;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        if (--v5)
        {
          LODWORD(v8) = 0;
          if (result)
          {
            v15 = (result + 1);
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_61;
              }

              v17 = 10 * v8;
              if (v17 != v17)
              {
                goto LABEL_61;
              }

              LODWORD(v8) = v17 + v16;
              if (__OFADD__(v17, v16))
              {
                goto LABEL_61;
              }

              ++v15;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        LODWORD(v8) = 0;
        if (result)
        {
          while (1)
          {
            v21 = *result - 48;
            if (v21 > 9)
            {
              goto LABEL_61;
            }

            v22 = 10 * v8;
            if (v22 != v22)
            {
              goto LABEL_61;
            }

            LODWORD(v8) = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LODWORD(v8) = 0;
      LOBYTE(v5) = 1;
      goto LABEL_62;
    }

    if (v5 >= 1)
    {
      if (--v5)
      {
        LODWORD(v8) = 0;
        if (result)
        {
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            v11 = 10 * v8;
            if (v11 != v11)
            {
              goto LABEL_61;
            }

            LODWORD(v8) = v11 - v10;
            if (__OFSUB__(v11, v10))
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v5) = 0;
LABEL_62:
        v30 = v5;
        LOBYTE(v26) = v5;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v29[0] = result;
  v29[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        LODWORD(v8) = 0;
        v23 = v29;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v8;
          if (v25 != v25)
          {
            break;
          }

          LODWORD(v8) = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v4)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      v5 = v4 - 1;
      if (v4 != 1)
      {
        LODWORD(v8) = 0;
        v12 = v29 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = 10 * v8;
          if (v14 != v14)
          {
            break;
          }

          LODWORD(v8) = v14 - v13;
          if (__OFSUB__(v14, v13))
          {
            break;
          }

          ++v12;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v4)
  {
    v5 = v4 - 1;
    if (v4 != 1)
    {
      LODWORD(v8) = 0;
      v18 = v29 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        v20 = 10 * v8;
        if (v20 != v20)
        {
          break;
        }

        LODWORD(v8) = v20 + v19;
        if (__OFADD__(v20, v19))
        {
          break;
        }

        ++v18;
        if (!--v5)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_2301137F8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_230118FBC(a1, a2);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_230113828@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = HIBYTE(a2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    v27 = 0;
    v26 = 1;
LABEL_66:
    *a3 = v27;
    *(a3 + 8) = v26 & 1;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v8 = sub_230116D5C(result, a2, 10);
    v26 = v28;
LABEL_63:

    if (v26)
    {
      v27 = 0;
    }

    else
    {
      v27 = v8;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_230310958();
      v5 = v29;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        if (--v5)
        {
          v8 = 0;
          if (result)
          {
            v15 = (result + 1);
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_61;
              }

              v17 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_61;
              }

              v8 = v17 + v16;
              if (__OFADD__(v17, v16))
              {
                goto LABEL_61;
              }

              ++v15;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        v8 = 0;
        if (result)
        {
          while (1)
          {
            v21 = *result - 48;
            if (v21 > 9)
            {
              goto LABEL_61;
            }

            v22 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      v8 = 0;
      LOBYTE(v5) = 1;
      goto LABEL_62;
    }

    if (v5 >= 1)
    {
      if (--v5)
      {
        v8 = 0;
        if (result)
        {
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            v11 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v11 - v10;
            if (__OFSUB__(v11, v10))
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v5) = 0;
LABEL_62:
        v31 = v5;
        v26 = v5;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v30[0] = result;
  v30[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        v8 = 0;
        v23 = v30;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v4)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      v5 = v4 - 1;
      if (v4 != 1)
      {
        v8 = 0;
        v12 = v30 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v14 - v13;
          if (__OFSUB__(v14, v13))
          {
            break;
          }

          ++v12;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v4)
  {
    v5 = v4 - 1;
    if (v4 != 1)
    {
      v8 = 0;
      v18 = v30 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        v20 = 10 * v8;
        if ((v8 * 10) >> 64 != (10 * v8) >> 63)
        {
          break;
        }

        v8 = v20 + v19;
        if (__OFADD__(v20, v19))
        {
          break;
        }

        ++v18;
        if (!--v5)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_230113B34@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = HIBYTE(a2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    v21 = 0;
    LOBYTE(v20) = 1;
LABEL_66:
    *a3 = v21;
    a3[1] = v20 & 1;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v8 = sub_2301172DC(result, a2, 10);

    v20 = (v8 >> 8) & 1;
LABEL_63:
    if (v20)
    {
      v21 = 0;
    }

    else
    {
      v21 = v8;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_230310958();
      v5 = v22;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        if (--v5)
        {
          LOBYTE(v8) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              if (((10 * v8) & 0xF00) != 0)
              {
                goto LABEL_61;
              }

              v8 = (10 * v8) + v14;
              if ((v8 >> 8))
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        LOBYTE(v8) = 0;
        if (result)
        {
          while (1)
          {
            v17 = *result - 48;
            if (v17 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v8) & 0xF00) != 0)
            {
              goto LABEL_61;
            }

            v8 = (10 * v8) + v17;
            if ((v8 >> 8))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LOBYTE(v8) = 0;
      LOBYTE(v5) = 1;
      goto LABEL_62;
    }

    if (v5 >= 1)
    {
      if (--v5)
      {
        LOBYTE(v8) = 0;
        if (result)
        {
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v8) & 0xF00) != 0)
            {
              goto LABEL_61;
            }

            v8 = (10 * v8) - v10;
            if ((v8 & 0xFFFFFF00) != 0)
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v5) = 0;
LABEL_62:
        v24 = v5;
        LOBYTE(v20) = v5;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v23[0] = result;
  v23[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        LOBYTE(v8) = 0;
        v18 = v23;
        while (1)
        {
          v19 = *v18 - 48;
          if (v19 > 9)
          {
            break;
          }

          if (((10 * v8) & 0xF00) != 0)
          {
            break;
          }

          v8 = (10 * v8) + v19;
          if ((v8 >> 8))
          {
            break;
          }

          ++v18;
          if (!--v4)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      v5 = v4 - 1;
      if (v4 != 1)
      {
        LOBYTE(v8) = 0;
        v11 = v23 + 1;
        while (1)
        {
          v12 = *v11 - 48;
          if (v12 > 9)
          {
            break;
          }

          if (((10 * v8) & 0xF00) != 0)
          {
            break;
          }

          v8 = (10 * v8) - v12;
          if ((v8 & 0xFFFFFF00) != 0)
          {
            break;
          }

          ++v11;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v4)
  {
    v5 = v4 - 1;
    if (v4 != 1)
    {
      LOBYTE(v8) = 0;
      v15 = v23 + 1;
      while (1)
      {
        v16 = *v15 - 48;
        if (v16 > 9)
        {
          break;
        }

        if (((10 * v8) & 0xF00) != 0)
        {
          break;
        }

        v8 = (10 * v8) + v16;
        if ((v8 >> 8))
        {
          break;
        }

        ++v15;
        if (!--v5)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_230113E5C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230119598(a1, a2);
  *a3 = result;
  a3[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_230113EEC@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = HIBYTE(a2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    v21 = 0;
    LOBYTE(v20) = 1;
LABEL_66:
    *a3 = v21;
    *(a3 + 2) = v20 & 1;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v8 = sub_2301178A4(result, a2, 10);

    v20 = HIWORD(v8) & 1;
LABEL_63:
    if (v20)
    {
      v21 = 0;
    }

    else
    {
      v21 = v8;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_230310958();
      v5 = v22;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        if (--v5)
        {
          LOWORD(v8) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              if (((10 * v8) & 0xF0000) != 0)
              {
                goto LABEL_61;
              }

              v8 = (10 * v8) + v14;
              if ((v8 & 0x10000) != 0)
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        LOWORD(v8) = 0;
        if (result)
        {
          while (1)
          {
            v17 = *result - 48;
            if (v17 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v8) & 0xF0000) != 0)
            {
              goto LABEL_61;
            }

            v8 = (10 * v8) + v17;
            if ((v8 & 0x10000) != 0)
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LOWORD(v8) = 0;
      LOBYTE(v5) = 1;
      goto LABEL_62;
    }

    if (v5 >= 1)
    {
      if (--v5)
      {
        LOWORD(v8) = 0;
        if (result)
        {
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v8) & 0xF0000) != 0)
            {
              goto LABEL_61;
            }

            v8 = (10 * v8) - v10;
            if ((v8 & 0xFFFF0000) != 0)
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v5) = 0;
LABEL_62:
        v24 = v5;
        LOBYTE(v20) = v5;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v23[0] = result;
  v23[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        LOWORD(v8) = 0;
        v18 = v23;
        while (1)
        {
          v19 = *v18 - 48;
          if (v19 > 9)
          {
            break;
          }

          if (((10 * v8) & 0xF0000) != 0)
          {
            break;
          }

          v8 = (10 * v8) + v19;
          if ((v8 & 0x10000) != 0)
          {
            break;
          }

          ++v18;
          if (!--v4)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      v5 = v4 - 1;
      if (v4 != 1)
      {
        LOWORD(v8) = 0;
        v11 = v23 + 1;
        while (1)
        {
          v12 = *v11 - 48;
          if (v12 > 9)
          {
            break;
          }

          if (((10 * v8) & 0xF0000) != 0)
          {
            break;
          }

          v8 = (10 * v8) - v12;
          if ((v8 & 0xFFFF0000) != 0)
          {
            break;
          }

          ++v11;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v4)
  {
    v5 = v4 - 1;
    if (v4 != 1)
    {
      LOWORD(v8) = 0;
      v15 = v23 + 1;
      while (1)
      {
        v16 = *v15 - 48;
        if (v16 > 9)
        {
          break;
        }

        if (((10 * v8) & 0xF0000) != 0)
        {
          break;
        }

        v8 = (10 * v8) + v16;
        if ((v8 & 0x10000) != 0)
        {
          break;
        }

        ++v15;
        if (!--v5)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_230114214@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_2301198B0(a1, a2);
  *a3 = result;
  *(a3 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_2301142A4@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = HIBYTE(a2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    v27 = 0;
    LOBYTE(v26) = 1;
LABEL_66:
    *a3 = v27;
    *(a3 + 4) = v26 & 1;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v8 = sub_230117E6C(result, a2, 10);

    v26 = (v8 >> 32) & 1;
LABEL_63:
    if (v26)
    {
      v27 = 0;
    }

    else
    {
      v27 = v8;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_230310958();
      v5 = v28;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        if (--v5)
        {
          LODWORD(v8) = 0;
          if (result)
          {
            v15 = (result + 1);
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_61;
              }

              v17 = 10 * v8;
              if ((v17 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v8) = v17 + v16;
              if (__CFADD__(v17, v16))
              {
                goto LABEL_61;
              }

              ++v15;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        LODWORD(v8) = 0;
        if (result)
        {
          while (1)
          {
            v21 = *result - 48;
            if (v21 > 9)
            {
              goto LABEL_61;
            }

            v22 = 10 * v8;
            if ((v22 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v8) = v22 + v21;
            if (__CFADD__(v22, v21))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LODWORD(v8) = 0;
      LOBYTE(v5) = 1;
      goto LABEL_62;
    }

    if (v5 >= 1)
    {
      if (--v5)
      {
        LODWORD(v8) = 0;
        if (result)
        {
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            v11 = 10 * v8;
            if ((v11 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v8) = v11 - v10;
            if (v11 < v10)
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v5) = 0;
LABEL_62:
        v30 = v5;
        LOBYTE(v26) = v5;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v29[0] = result;
  v29[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        LODWORD(v8) = 0;
        v23 = v29;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v8;
          if ((v25 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v8) = v25 + v24;
          if (__CFADD__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v4)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      v5 = v4 - 1;
      if (v4 != 1)
      {
        LODWORD(v8) = 0;
        v12 = v29 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = 10 * v8;
          if ((v14 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v8) = v14 - v13;
          if (v14 < v13)
          {
            break;
          }

          ++v12;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v4)
  {
    v5 = v4 - 1;
    if (v4 != 1)
    {
      LODWORD(v8) = 0;
      v18 = v29 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        v20 = 10 * v8;
        if ((v20 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v8) = v20 + v19;
        if (__CFADD__(v20, v19))
        {
          break;
        }

        ++v18;
        if (!--v5)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_230114584@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_230119BC8(a1, a2);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_230114614@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = HIBYTE(a2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    v22 = 0;
    v21 = 1;
LABEL_68:
    *a3 = v22;
    *(a3 + 8) = v21 & 1;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v8 = sub_2301183DC(result, a2, 10);
    v21 = v23;
LABEL_65:

    if (v21)
    {
      v22 = 0;
    }

    else
    {
      v22 = v8;
    }

    goto LABEL_68;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_230310958();
      v5 = v24;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        if (--v5)
        {
          v8 = 0;
          if (result)
          {
            v14 = (result + 1);
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v8, 0xAuLL))
              {
                goto LABEL_63;
              }

              v11 = __CFADD__(10 * v8, v15);
              v8 = 10 * v8 + v15;
              if (v11)
              {
                goto LABEL_63;
              }

              ++v14;
              if (!--v5)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

        goto LABEL_63;
      }

      goto LABEL_74;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        v8 = 0;
        if (result)
        {
          while (1)
          {
            v18 = *result - 48;
            if (v18 > 9)
            {
              goto LABEL_63;
            }

            if (!is_mul_ok(v8, 0xAuLL))
            {
              goto LABEL_63;
            }

            v11 = __CFADD__(10 * v8, v18);
            v8 = 10 * v8 + v18;
            if (v11)
            {
              goto LABEL_63;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_62;
      }

LABEL_63:
      v8 = 0;
      LOBYTE(v5) = 1;
      goto LABEL_64;
    }

    if (v5 >= 1)
    {
      if (--v5)
      {
        v8 = 0;
        if (result)
        {
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_63;
            }

            if (!is_mul_ok(v8, 0xAuLL))
            {
              goto LABEL_63;
            }

            v11 = 10 * v8 >= v10;
            v8 = 10 * v8 - v10;
            if (!v11)
            {
              goto LABEL_63;
            }

            ++v9;
            if (!--v5)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_62:
        LOBYTE(v5) = 0;
LABEL_64:
        v26 = v5;
        v21 = v5;
        goto LABEL_65;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v25[0] = result;
  v25[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        v8 = 0;
        v19 = v25;
        while (1)
        {
          v20 = *v19 - 48;
          if (v20 > 9)
          {
            break;
          }

          if (!is_mul_ok(v8, 0xAuLL))
          {
            break;
          }

          v11 = __CFADD__(10 * v8, v20);
          v8 = 10 * v8 + v20;
          if (v11)
          {
            break;
          }

          ++v19;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_63;
    }

    if (v4)
    {
      v5 = v4 - 1;
      if (v4 != 1)
      {
        v8 = 0;
        v12 = v25 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          if (!is_mul_ok(v8, 0xAuLL))
          {
            break;
          }

          v11 = 10 * v8 >= v13;
          v8 = 10 * v8 - v13;
          if (!v11)
          {
            break;
          }

          ++v12;
          if (!--v5)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_73;
  }

  if (v4)
  {
    v5 = v4 - 1;
    if (v4 != 1)
    {
      v8 = 0;
      v16 = v25 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        if (!is_mul_ok(v8, 0xAuLL))
        {
          break;
        }

        v11 = __CFADD__(10 * v8, v17);
        v8 = 10 * v8 + v17;
        if (v11)
        {
          break;
        }

        ++v16;
        if (!--v5)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_75:
  __break(1u);
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Bool.queryItemStringRepresentation()()
{
  v1 = (v0 & 1) == 0;
  if (v0)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  MEMORY[0x231911790](v2, v3);

  v4 = 0;
  v5 = 0xE000000000000000;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t sub_230114AC0@<X0>(_BYTE *a1@<X8>)
{
  result = _sSb19ReminderKitInternalE15queryItemStringSbSgSS_tcfC_0();
  *a1 = result;
  return result;
}

uint64_t sub_230114AE8()
{
  if (*v0)
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*v0)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x231911790](v1, v2);

  return 0;
}

uint64_t Array<A>.init(queryItemString:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[0] = 44;
  v15[1] = 0xE100000000000000;
  v14 = v15;
  v15[0] = sub_2300F2908(0x7FFFFFFFFFFFFFFFLL, 1, sub_23011A358, v13, a1, a2, v15);
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15648);
  v9 = sub_23005F108(&qword_27DB15650, &qword_27DB15648);
  v10 = Sequence.completeCompactMap<A>(_:)(sub_23011A378, v12, v8, a3, v9);

  return v10;
}

uint64_t Array<A>.queryItemStringRepresentation()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v13 = a1;
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v6 = sub_23030FDE8();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14308);
  WitnessTable = swift_getWitnessTable();
  v9 = sub_23006CBDC(sub_23011A3E8, v11, v6, MEMORY[0x277D837D0], v7, WitnessTable, MEMORY[0x277D84950], &v12);
  if (!v4)
  {
    v13 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
    sub_23005F108(&qword_280C99CF8, &unk_27DB13DE0);
    v5 = sub_23030F7C8();
  }

  return v5;
}

uint64_t sub_230114DDC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = Array<A>.init(queryItemString:)(a1, a2, *(a3 + 16), *(a4 - 8), *(a4 - 16));
  *a5 = result;
  return result;
}

uint64_t Date.init(queryItemString:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23030EB58();
  v11 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  v6 = sub_23030F8B8();

  v7 = [v5 dateFromString_];

  if (v7)
  {
    sub_23030EB18();

    (*(v11 + 32))(a1, v4, v2);
    return (*(v11 + 56))(a1, 0, 1, v2);
  }

  else
  {

    v9 = *(v11 + 56);

    return v9(a1, 1, 1, v2);
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Date.queryItemStringRepresentation()()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  v1 = sub_23030EAA8();
  v2 = [v0 stringFromDate_];

  v3 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t sub_230115090()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  v1 = sub_23030EAA8();
  v2 = [v0 stringFromDate_];

  v3 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  return v3;
}

uint64_t TimeZone.init(queryItemString:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB147D8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  sub_23030EE18();

  v5 = sub_23030EE68();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5))
  {
    sub_23011A44C(v4);
    v7 = 1;
  }

  else
  {
    (*(v6 + 32))(a1, v4, v5);
    v7 = 0;
  }

  return (*(v6 + 56))(a1, v7, 1, v5);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TimeZone.queryItemStringRepresentation()()
{
  v0 = sub_23030EE28();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_230115294@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB147D8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_23030EE18();

  v7 = *(a1 - 8);
  if ((*(v7 + 48))(v6, 1, a1))
  {
    sub_23011A44C(v6);
    v8 = 1;
  }

  else
  {
    (*(v7 + 32))(a2, v6, a1);
    v8 = 0;
  }

  return (*(v7 + 56))(a2, v8, 1, a1);
}

uint64_t sub_2301153FC()
{
  v0 = sub_23030FB28();
  v4 = sub_23011547C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_23011547C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_2303104E8();
    if (!v9 || (v10 = v9, v11 = sub_23004C888(v9, 0), v12 = sub_2301155D4(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_23030F9A8();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_23030F9A8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_230310958();
LABEL_4:

  return sub_23030F9A8();
}

unint64_t sub_2301155D4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_2301157F4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_23030FA78();
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
          result = sub_230310958();
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

    result = sub_2301157F4(v12, a6, a7);
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

    result = sub_23030FA58();
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

uint64_t sub_2301157F4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_23030FAB8();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x2319117E0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_230115870(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0 || !(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
    sub_230310818();

    v6 = v9;
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    if ((a2 & 0x2000000000000000) != 0)
    {
      v6 = (v3 > 0x20u || ((0x100003E01uLL >> v3) & 1) == 0) && (v7 = _swift_stdlib_strtod_clocale()) != 0 && *v7 == 0;
    }

    else
    {
      if ((v3 & 0x1000000000000000) != 0)
      {
        v4 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v5 = v3 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v4 = sub_230310958();
      }

      v6 = sub_230115A18(v4, v5, sub_23011A530);
    }
  }

  if (v6)
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_230115A18(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  if (a1)
  {
    a3(&var2);
    if (!v3)
    {
      v4 = var2;
    }
  }

  else
  {
    (a3)((&var2 + 1), 0, 0);
    if (!v3)
    {
      v4 = BYTE1(var2);
    }
  }

  return v4 & 1;
}

unint64_t sub_230115A78(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0 || !(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
    sub_230310818();

    v6 = v9;
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    if ((a2 & 0x2000000000000000) != 0)
    {
      v6 = (v3 > 0x20u || ((0x100003E01uLL >> v3) & 1) == 0) && (v7 = _swift_stdlib_strtof_clocale()) != 0 && *v7 == 0;
    }

    else
    {
      if ((v3 & 0x1000000000000000) != 0)
      {
        v4 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v5 = v3 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v4 = sub_230310958();
      }

      v6 = sub_230115A18(v4, v5, sub_23011A6A8);
    }
  }

  return ((v6 & 1) == 0) << 32;
}

unsigned __int8 *sub_230115C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v74 = a1;
  v75 = a2;

  result = sub_23030FB18();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2301153FC();
    v42 = v41;

    v5 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_230310958();
      v7 = v73;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
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
            LOBYTE(v13) = 0;
            v26 = result + 1;
            v27 = a3;
            v16 = 1;
            do
            {
              v28 = *v26;
              if (v28 < 0x30 || v28 >= v23)
              {
                if (v28 < 0x41 || v28 >= v24)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v25)
                  {
                    goto LABEL_126;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              v30 = v13 * v27;
              v31 = (v13 * v27);
              if (v31 != v30)
              {
                goto LABEL_125;
              }

              v13 = v31 + (v28 + v29);
              if (v13 != v13)
              {
                goto LABEL_125;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v16 = 0;
            v19 = v13;
            goto LABEL_126;
          }

          goto LABEL_65;
        }

LABEL_125:
        v19 = 0;
        v16 = 1;
        goto LABEL_126;
      }

      goto LABEL_130;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        LOBYTE(v32) = 0;
        v33 = a3 + 48;
        v34 = a3 + 55;
        v35 = a3 + 87;
        if (a3 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        v36 = a3;
        v16 = 1;
        while (1)
        {
          v37 = *result;
          if (v37 < 0x30 || v37 >= v33)
          {
            if (v37 < 0x41 || v37 >= v34)
            {
              v19 = 0;
              if (v37 < 0x61 || v37 >= v35)
              {
                goto LABEL_126;
              }

              v38 = -87;
            }

            else
            {
              v38 = -55;
            }
          }

          else
          {
            v38 = -48;
          }

          v39 = v32 * v36;
          v40 = (v32 * v36);
          if (v40 != v39)
          {
            goto LABEL_125;
          }

          v32 = v40 + (v37 + v38);
          if (v32 != v32)
          {
            goto LABEL_125;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOBYTE(v13) = 0;
          v14 = result + 1;
          v15 = a3;
          v16 = 1;
          while (1)
          {
            v17 = *v14;
            if (v17 < 0x30 || v17 >= v10)
            {
              if (v17 < 0x41 || v17 >= v11)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v12)
                {
                  goto LABEL_126;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v13 * v15;
            v21 = (v13 * v15);
            if (v21 != v20)
            {
              goto LABEL_125;
            }

            v13 = v21 - (v17 + v18);
            if (v13 != v13)
            {
              goto LABEL_125;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_65:
        v19 = 0;
        v16 = 0;
LABEL_126:

        return (v19 | (v16 << 8));
      }

      goto LABEL_125;
    }

    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v43 = HIBYTE(v5) & 0xF;
  v74 = v6;
  v75 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v43)
      {
        LOBYTE(v32) = 0;
        v64 = a3 + 55;
        v65 = a3 + 87;
        v66 = a3 + 48;
        if (a3 > 10)
        {
          v66 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v67 = &v74;
        v68 = a3;
        v16 = 1;
        while (1)
        {
          v69 = *v67;
          if (v69 < 0x30 || v69 >= v66)
          {
            if (v69 < 0x41 || v69 >= v64)
            {
              v19 = 0;
              if (v69 < 0x61 || v69 >= v65)
              {
                goto LABEL_126;
              }

              v70 = -87;
            }

            else
            {
              v70 = -55;
            }
          }

          else
          {
            v70 = -48;
          }

          v71 = v32 * v68;
          v72 = (v32 * v68);
          if (v72 != v71)
          {
            goto LABEL_125;
          }

          v32 = v72 + (v69 + v70);
          if (v32 != v32)
          {
            goto LABEL_125;
          }

          v67 = (v67 + 1);
          if (!--v43)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        LOBYTE(v32) = 0;
        v45 = a3 + 48;
        v46 = a3 + 55;
        v47 = a3 + 87;
        if (a3 > 10)
        {
          v45 = 58;
        }

        else
        {
          v47 = 97;
          v46 = 65;
        }

        v48 = &v74 + 1;
        v49 = a3;
        v16 = 1;
        while (1)
        {
          v50 = *v48;
          if (v50 < 0x30 || v50 >= v45)
          {
            if (v50 < 0x41 || v50 >= v46)
            {
              v19 = 0;
              if (v50 < 0x61 || v50 >= v47)
              {
                goto LABEL_126;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * v49;
          v53 = (v32 * v49);
          if (v53 != v52)
          {
            goto LABEL_125;
          }

          v32 = v53 - (v50 + v51);
          if (v32 != v32)
          {
            goto LABEL_125;
          }

          ++v48;
          if (!--v44)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    goto LABEL_129;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      LOBYTE(v32) = 0;
      v55 = a3 + 48;
      v56 = a3 + 55;
      v57 = a3 + 87;
      if (a3 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v74 + 1;
      v59 = a3;
      v16 = 1;
      do
      {
        v60 = *v58;
        if (v60 < 0x30 || v60 >= v55)
        {
          if (v60 < 0x41 || v60 >= v56)
          {
            v19 = 0;
            if (v60 < 0x61 || v60 >= v57)
            {
              goto LABEL_126;
            }

            v61 = -87;
          }

          else
          {
            v61 = -55;
          }
        }

        else
        {
          v61 = -48;
        }

        v62 = v32 * v59;
        v63 = (v32 * v59);
        if (v63 != v62)
        {
          goto LABEL_125;
        }

        v32 = v63 + (v60 + v61);
        if (v32 != v32)
        {
          goto LABEL_125;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_124:
      v16 = 0;
      v19 = v32;
      goto LABEL_126;
    }

    goto LABEL_125;
  }

LABEL_131:
  __break(1u);
  return result;
}

unsigned __int8 *sub_23011620C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v74 = a1;
  v75 = a2;

  result = sub_23030FB18();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2301153FC();
    v42 = v41;

    v5 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_230310958();
      v7 = v73;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
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
            LOWORD(v13) = 0;
            v26 = result + 1;
            v27 = a3;
            v16 = 1;
            do
            {
              v28 = *v26;
              if (v28 < 0x30 || v28 >= v23)
              {
                if (v28 < 0x41 || v28 >= v24)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v25)
                  {
                    goto LABEL_126;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              v30 = v13 * v27;
              v31 = (v13 * v27);
              if (v31 != v30)
              {
                goto LABEL_125;
              }

              v13 = v31 + (v28 + v29);
              if (v13 != v13)
              {
                goto LABEL_125;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v16 = 0;
            v19 = v13;
            goto LABEL_126;
          }

          goto LABEL_65;
        }

LABEL_125:
        v19 = 0;
        v16 = 1;
        goto LABEL_126;
      }

      goto LABEL_130;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        LOWORD(v32) = 0;
        v33 = a3 + 48;
        v34 = a3 + 55;
        v35 = a3 + 87;
        if (a3 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        v36 = a3;
        v16 = 1;
        while (1)
        {
          v37 = *result;
          if (v37 < 0x30 || v37 >= v33)
          {
            if (v37 < 0x41 || v37 >= v34)
            {
              v19 = 0;
              if (v37 < 0x61 || v37 >= v35)
              {
                goto LABEL_126;
              }

              v38 = -87;
            }

            else
            {
              v38 = -55;
            }
          }

          else
          {
            v38 = -48;
          }

          v39 = v32 * v36;
          v40 = (v32 * v36);
          if (v40 != v39)
          {
            goto LABEL_125;
          }

          v32 = v40 + (v37 + v38);
          if (v32 != v32)
          {
            goto LABEL_125;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOWORD(v13) = 0;
          v14 = result + 1;
          v15 = a3;
          v16 = 1;
          while (1)
          {
            v17 = *v14;
            if (v17 < 0x30 || v17 >= v10)
            {
              if (v17 < 0x41 || v17 >= v11)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v12)
                {
                  goto LABEL_126;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v13 * v15;
            v21 = (v13 * v15);
            if (v21 != v20)
            {
              goto LABEL_125;
            }

            v13 = v21 - (v17 + v18);
            if (v13 != v13)
            {
              goto LABEL_125;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_65:
        v19 = 0;
        v16 = 0;
LABEL_126:

        return (v19 | (v16 << 16));
      }

      goto LABEL_125;
    }

    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v43 = HIBYTE(v5) & 0xF;
  v74 = v6;
  v75 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v43)
      {
        LOWORD(v32) = 0;
        v64 = a3 + 55;
        v65 = a3 + 87;
        v66 = a3 + 48;
        if (a3 > 10)
        {
          v66 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v67 = &v74;
        v68 = a3;
        v16 = 1;
        while (1)
        {
          v69 = *v67;
          if (v69 < 0x30 || v69 >= v66)
          {
            if (v69 < 0x41 || v69 >= v64)
            {
              v19 = 0;
              if (v69 < 0x61 || v69 >= v65)
              {
                goto LABEL_126;
              }

              v70 = -87;
            }

            else
            {
              v70 = -55;
            }
          }

          else
          {
            v70 = -48;
          }

          v71 = v32 * v68;
          v72 = (v32 * v68);
          if (v72 != v71)
          {
            goto LABEL_125;
          }

          v32 = v72 + (v69 + v70);
          if (v32 != v32)
          {
            goto LABEL_125;
          }

          v67 = (v67 + 1);
          if (!--v43)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        LOWORD(v32) = 0;
        v45 = a3 + 48;
        v46 = a3 + 55;
        v47 = a3 + 87;
        if (a3 > 10)
        {
          v45 = 58;
        }

        else
        {
          v47 = 97;
          v46 = 65;
        }

        v48 = &v74 + 1;
        v49 = a3;
        v16 = 1;
        while (1)
        {
          v50 = *v48;
          if (v50 < 0x30 || v50 >= v45)
          {
            if (v50 < 0x41 || v50 >= v46)
            {
              v19 = 0;
              if (v50 < 0x61 || v50 >= v47)
              {
                goto LABEL_126;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * v49;
          v53 = (v32 * v49);
          if (v53 != v52)
          {
            goto LABEL_125;
          }

          v32 = v53 - (v50 + v51);
          if (v32 != v32)
          {
            goto LABEL_125;
          }

          ++v48;
          if (!--v44)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    goto LABEL_129;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      LOWORD(v32) = 0;
      v55 = a3 + 48;
      v56 = a3 + 55;
      v57 = a3 + 87;
      if (a3 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v74 + 1;
      v59 = a3;
      v16 = 1;
      do
      {
        v60 = *v58;
        if (v60 < 0x30 || v60 >= v55)
        {
          if (v60 < 0x41 || v60 >= v56)
          {
            v19 = 0;
            if (v60 < 0x61 || v60 >= v57)
            {
              goto LABEL_126;
            }

            v61 = -87;
          }

          else
          {
            v61 = -55;
          }
        }

        else
        {
          v61 = -48;
        }

        v62 = v32 * v59;
        v63 = (v32 * v59);
        if (v63 != v62)
        {
          goto LABEL_125;
        }

        v32 = v63 + (v60 + v61);
        if (v32 != v32)
        {
          goto LABEL_125;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_124:
      v16 = 0;
      v19 = v32;
      goto LABEL_126;
    }

    goto LABEL_125;
  }

LABEL_131:
  __break(1u);
  return result;
}

unsigned __int8 *sub_2301167EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = a1;
  v70 = a2;

  result = sub_23030FB18();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2301153FC();
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_230310958();
      v7 = v68;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
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
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_126;
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

              v29 = v13 * a3;
              if (v29 != v29)
              {
                goto LABEL_125;
              }

              v30 = v27 + v28;
              v21 = __OFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_125;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_126;
          }

          goto LABEL_65;
        }

LABEL_125:
        v18 = 0;
        v15 = 1;
        goto LABEL_126;
      }

      goto LABEL_130;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = 0;
        v32 = a3 + 48;
        v33 = a3 + 55;
        v34 = a3 + 87;
        if (a3 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        v15 = 1;
        while (1)
        {
          v35 = *result;
          if (v35 < 0x30 || v35 >= v32)
          {
            if (v35 < 0x41 || v35 >= v33)
            {
              v18 = 0;
              if (v35 < 0x61 || v35 >= v34)
              {
                goto LABEL_126;
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

          v37 = v31 * a3;
          if (v37 != v37)
          {
            goto LABEL_125;
          }

          v38 = v35 + v36;
          v21 = __OFADD__(v37, v38);
          v31 = v37 + v38;
          if (v21)
          {
            goto LABEL_125;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_126;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if (v19 != v19)
            {
              goto LABEL_125;
            }

            v20 = v16 + v17;
            v21 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v21)
            {
              goto LABEL_125;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_65:
        v18 = 0;
        v15 = 0;
LABEL_126:

        LOBYTE(v69) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_125;
    }

    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v41 = HIBYTE(v5) & 0xF;
  v69 = v6;
  v70 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v31 = 0;
        v60 = a3 + 55;
        v61 = a3 + 87;
        v62 = a3 + 48;
        if (a3 > 10)
        {
          v62 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v63 = &v69;
        v15 = 1;
        while (1)
        {
          v64 = *v63;
          if (v64 < 0x30 || v64 >= v62)
          {
            if (v64 < 0x41 || v64 >= v60)
            {
              v18 = 0;
              if (v64 < 0x61 || v64 >= v61)
              {
                goto LABEL_126;
              }

              v65 = -87;
            }

            else
            {
              v65 = -55;
            }
          }

          else
          {
            v65 = -48;
          }

          v66 = v31 * a3;
          if (v66 != v66)
          {
            goto LABEL_125;
          }

          v67 = v64 + v65;
          v21 = __OFADD__(v66, v67);
          v31 = v66 + v67;
          if (v21)
          {
            goto LABEL_125;
          }

          v63 = (v63 + 1);
          if (!--v41)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v31 = 0;
        v43 = a3 + 48;
        v44 = a3 + 55;
        v45 = a3 + 87;
        if (a3 > 10)
        {
          v43 = 58;
        }

        else
        {
          v45 = 97;
          v44 = 65;
        }

        v46 = &v69 + 1;
        v15 = 1;
        while (1)
        {
          v47 = *v46;
          if (v47 < 0x30 || v47 >= v43)
          {
            if (v47 < 0x41 || v47 >= v44)
            {
              v18 = 0;
              if (v47 < 0x61 || v47 >= v45)
              {
                goto LABEL_126;
              }

              v48 = -87;
            }

            else
            {
              v48 = -55;
            }
          }

          else
          {
            v48 = -48;
          }

          v49 = v31 * a3;
          if (v49 != v49)
          {
            goto LABEL_125;
          }

          v50 = v47 + v48;
          v21 = __OFSUB__(v49, v50);
          v31 = v49 - v50;
          if (v21)
          {
            goto LABEL_125;
          }

          ++v46;
          if (!--v42)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    goto LABEL_129;
  }

  if (v41)
  {
    v51 = v41 - 1;
    if (v51)
    {
      v31 = 0;
      v52 = a3 + 48;
      v53 = a3 + 55;
      v54 = a3 + 87;
      if (a3 > 10)
      {
        v52 = 58;
      }

      else
      {
        v54 = 97;
        v53 = 65;
      }

      v55 = &v69 + 1;
      v15 = 1;
      do
      {
        v56 = *v55;
        if (v56 < 0x30 || v56 >= v52)
        {
          if (v56 < 0x41 || v56 >= v53)
          {
            v18 = 0;
            if (v56 < 0x61 || v56 >= v54)
            {
              goto LABEL_126;
            }

            v57 = -87;
          }

          else
          {
            v57 = -55;
          }
        }

        else
        {
          v57 = -48;
        }

        v58 = v31 * a3;
        if (v58 != v58)
        {
          goto LABEL_125;
        }

        v59 = v56 + v57;
        v21 = __OFADD__(v58, v59);
        v31 = v58 + v59;
        if (v21)
        {
          goto LABEL_125;
        }

        ++v55;
        --v51;
      }

      while (v51);
LABEL_124:
      v15 = 0;
      v18 = v31;
      goto LABEL_126;
    }

    goto LABEL_125;
  }

LABEL_131:
  __break(1u);
  return result;
}

unsigned __int8 *sub_230116D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a1;
  v62 = a2;

  result = sub_23030FB18();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2301153FC();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_230310958();
      v7 = v60;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_124;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_124;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_125;
          }

          goto LABEL_64;
        }

LABEL_124:
        v17 = 0;
        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = 0;
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        while (1)
        {
          v31 = *result;
          if (v31 < 0x30 || v31 >= v28)
          {
            if (v31 < 0x41 || v31 >= v29)
            {
              v17 = 0;
              if (v31 < 0x61 || v31 >= v30)
              {
                goto LABEL_125;
              }

              v32 = -87;
            }

            else
            {
              v32 = -55;
            }
          }

          else
          {
            v32 = -48;
          }

          v33 = v27 * a3;
          if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
          {
            goto LABEL_124;
          }

          v27 = v33 + (v31 + v32);
          if (__OFADD__(v33, (v31 + v32)))
          {
            goto LABEL_124;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_125;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_124;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_124;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_64:
        v17 = 0;
LABEL_125:

        return v17;
      }

      goto LABEL_124;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v36 = HIBYTE(v5) & 0xF;
  v61 = v6;
  v62 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v27 = 0;
        v53 = a3 + 48;
        v54 = a3 + 55;
        v55 = a3 + 87;
        if (a3 > 10)
        {
          v53 = 58;
        }

        else
        {
          v55 = 97;
          v54 = 65;
        }

        v56 = &v61;
        while (1)
        {
          v57 = *v56;
          if (v57 < 0x30 || v57 >= v53)
          {
            if (v57 < 0x41 || v57 >= v54)
            {
              v17 = 0;
              if (v57 < 0x61 || v57 >= v55)
              {
                goto LABEL_125;
              }

              v58 = -87;
            }

            else
            {
              v58 = -55;
            }
          }

          else
          {
            v58 = -48;
          }

          v59 = v27 * a3;
          if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
          {
            goto LABEL_124;
          }

          v27 = v59 + (v57 + v58);
          if (__OFADD__(v59, (v57 + v58)))
          {
            goto LABEL_124;
          }

          v56 = (v56 + 1);
          if (!--v36)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v27 = 0;
        v38 = a3 + 48;
        v39 = a3 + 55;
        v40 = a3 + 87;
        if (a3 > 10)
        {
          v38 = 58;
        }

        else
        {
          v40 = 97;
          v39 = 65;
        }

        v41 = &v61 + 1;
        while (1)
        {
          v42 = *v41;
          if (v42 < 0x30 || v42 >= v38)
          {
            if (v42 < 0x41 || v42 >= v39)
            {
              v17 = 0;
              if (v42 < 0x61 || v42 >= v40)
              {
                goto LABEL_125;
              }

              v43 = -87;
            }

            else
            {
              v43 = -55;
            }
          }

          else
          {
            v43 = -48;
          }

          v44 = v27 * a3;
          if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
          {
            goto LABEL_124;
          }

          v27 = v44 - (v42 + v43);
          if (__OFSUB__(v44, (v42 + v43)))
          {
            goto LABEL_124;
          }

          ++v41;
          if (!--v37)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
    }

    goto LABEL_128;
  }

  if (v36)
  {
    v45 = v36 - 1;
    if (v45)
    {
      v27 = 0;
      v46 = a3 + 48;
      v47 = a3 + 55;
      v48 = a3 + 87;
      if (a3 > 10)
      {
        v46 = 58;
      }

      else
      {
        v48 = 97;
        v47 = 65;
      }

      v49 = &v61 + 1;
      do
      {
        v50 = *v49;
        if (v50 < 0x30 || v50 >= v46)
        {
          if (v50 < 0x41 || v50 >= v47)
          {
            v17 = 0;
            if (v50 < 0x61 || v50 >= v48)
            {
              goto LABEL_125;
            }

            v51 = -87;
          }

          else
          {
            v51 = -55;
          }
        }

        else
        {
          v51 = -48;
        }

        v52 = v27 * a3;
        if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
        {
          goto LABEL_124;
        }

        v27 = v52 + (v50 + v51);
        if (__OFADD__(v52, (v50 + v51)))
        {
          goto LABEL_124;
        }

        ++v49;
        --v45;
      }

      while (v45);
LABEL_123:
      v17 = v27;
      goto LABEL_125;
    }

    goto LABEL_124;
  }

LABEL_130:
  __break(1u);
  return result;
}

unsigned __int8 *sub_2301172DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_23030FB18();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2301153FC();
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_230310958();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v20 = v7 - 1;
        if (v20)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            LOBYTE(v13) = 0;
            v24 = result + 1;
            v15 = 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_126;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v13 * a3;
              if ((v27 & 0xFF00) != 0)
              {
                goto LABEL_125;
              }

              v13 = v27 + (v25 + v26);
              if ((v13 >> 8))
              {
                goto LABEL_125;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_126;
          }

          goto LABEL_65;
        }

LABEL_125:
        v18 = 0;
        v15 = 1;
        goto LABEL_126;
      }

      goto LABEL_130;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        LOBYTE(v28) = 0;
        v29 = a3 + 48;
        v30 = a3 + 55;
        v31 = a3 + 87;
        if (a3 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        v15 = 1;
        while (1)
        {
          v32 = *result;
          if (v32 < 0x30 || v32 >= v29)
          {
            if (v32 < 0x41 || v32 >= v30)
            {
              v18 = 0;
              if (v32 < 0x61 || v32 >= v31)
              {
                goto LABEL_126;
              }

              v33 = -87;
            }

            else
            {
              v33 = -55;
            }
          }

          else
          {
            v33 = -48;
          }

          v34 = v28 * a3;
          if ((v34 & 0xFF00) != 0)
          {
            goto LABEL_125;
          }

          v28 = v34 + (v32 + v33);
          if ((v28 >> 8))
          {
            goto LABEL_125;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOBYTE(v13) = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_126;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFF00) != 0)
            {
              goto LABEL_125;
            }

            v13 = v19 - (v16 + v17);
            if ((v13 & 0xFFFFFF00) != 0)
            {
              goto LABEL_125;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_65:
        v18 = 0;
        v15 = 0;
LABEL_126:

        return (v18 | (v15 << 8));
      }

      goto LABEL_125;
    }

    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v37 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        LOBYTE(v28) = 0;
        v54 = a3 + 55;
        v55 = a3 + 87;
        v56 = a3 + 48;
        if (a3 > 10)
        {
          v56 = 58;
        }

        else
        {
          v55 = 97;
          v54 = 65;
        }

        v57 = &v62;
        v15 = 1;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v56)
          {
            if (v58 < 0x41 || v58 >= v54)
            {
              v18 = 0;
              if (v58 < 0x61 || v58 >= v55)
              {
                goto LABEL_126;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v28 * a3;
          if ((v60 & 0xFF00) != 0)
          {
            goto LABEL_125;
          }

          v28 = v60 + (v58 + v59);
          if ((v28 >> 8))
          {
            goto LABEL_125;
          }

          v57 = (v57 + 1);
          if (!--v37)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        LOBYTE(v28) = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        v15 = 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v18 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_126;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v28 * a3;
          if ((v45 & 0xFF00) != 0)
          {
            goto LABEL_125;
          }

          v28 = v45 - (v43 + v44);
          if ((v28 & 0xFFFFFF00) != 0)
          {
            goto LABEL_125;
          }

          ++v42;
          if (!--v38)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    goto LABEL_129;
  }

  if (v37)
  {
    v46 = v37 - 1;
    if (v46)
    {
      LOBYTE(v28) = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      v15 = 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v18 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_126;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v28 * a3;
        if ((v53 & 0xFF00) != 0)
        {
          goto LABEL_125;
        }

        v28 = v53 + (v51 + v52);
        if ((v28 >> 8))
        {
          goto LABEL_125;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_124:
      v15 = 0;
      v18 = v28;
      goto LABEL_126;
    }

    goto LABEL_125;
  }

LABEL_131:
  __break(1u);
  return result;
}

unsigned __int8 *sub_2301178A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_23030FB18();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2301153FC();
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_230310958();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v20 = v7 - 1;
        if (v20)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            LOWORD(v13) = 0;
            v24 = result + 1;
            v15 = 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_126;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v13 * a3;
              if ((v27 & 0xFFFF0000) != 0)
              {
                goto LABEL_125;
              }

              v13 = v27 + (v25 + v26);
              if ((v13 & 0x10000) != 0)
              {
                goto LABEL_125;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_126;
          }

          goto LABEL_65;
        }

LABEL_125:
        v18 = 0;
        v15 = 1;
        goto LABEL_126;
      }

      goto LABEL_130;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        LOWORD(v28) = 0;
        v29 = a3 + 48;
        v30 = a3 + 55;
        v31 = a3 + 87;
        if (a3 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        v15 = 1;
        while (1)
        {
          v32 = *result;
          if (v32 < 0x30 || v32 >= v29)
          {
            if (v32 < 0x41 || v32 >= v30)
            {
              v18 = 0;
              if (v32 < 0x61 || v32 >= v31)
              {
                goto LABEL_126;
              }

              v33 = -87;
            }

            else
            {
              v33 = -55;
            }
          }

          else
          {
            v33 = -48;
          }

          v34 = v28 * a3;
          if ((v34 & 0xFFFF0000) != 0)
          {
            goto LABEL_125;
          }

          v28 = v34 + (v32 + v33);
          if ((v28 & 0x10000) != 0)
          {
            goto LABEL_125;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOWORD(v13) = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_126;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFF0000) != 0)
            {
              goto LABEL_125;
            }

            v13 = v19 - (v16 + v17);
            if ((v13 & 0xFFFF0000) != 0)
            {
              goto LABEL_125;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_65:
        v18 = 0;
        v15 = 0;
LABEL_126:

        return (v18 | (v15 << 16));
      }

      goto LABEL_125;
    }

    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v37 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        LOWORD(v28) = 0;
        v54 = a3 + 55;
        v55 = a3 + 87;
        v56 = a3 + 48;
        if (a3 > 10)
        {
          v56 = 58;
        }

        else
        {
          v55 = 97;
          v54 = 65;
        }

        v57 = &v62;
        v15 = 1;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v56)
          {
            if (v58 < 0x41 || v58 >= v54)
            {
              v18 = 0;
              if (v58 < 0x61 || v58 >= v55)
              {
                goto LABEL_126;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v28 * a3;
          if ((v60 & 0xFFFF0000) != 0)
          {
            goto LABEL_125;
          }

          v28 = v60 + (v58 + v59);
          if ((v28 & 0x10000) != 0)
          {
            goto LABEL_125;
          }

          v57 = (v57 + 1);
          if (!--v37)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        LOWORD(v28) = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        v15 = 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v18 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_126;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v28 * a3;
          if ((v45 & 0xFFFF0000) != 0)
          {
            goto LABEL_125;
          }

          v28 = v45 - (v43 + v44);
          if ((v28 & 0xFFFF0000) != 0)
          {
            goto LABEL_125;
          }

          ++v42;
          if (!--v38)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    goto LABEL_129;
  }

  if (v37)
  {
    v46 = v37 - 1;
    if (v46)
    {
      LOWORD(v28) = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      v15 = 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v18 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_126;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v28 * a3;
        if ((v53 & 0xFFFF0000) != 0)
        {
          goto LABEL_125;
        }

        v28 = v53 + (v51 + v52);
        if ((v28 & 0x10000) != 0)
        {
          goto LABEL_125;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_124:
      v15 = 0;
      v18 = v28;
      goto LABEL_126;
    }

    goto LABEL_125;
  }

LABEL_131:
  __break(1u);
  return result;
}

unsigned __int8 *sub_230117E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = a1;
  v70 = a2;

  result = sub_23030FB18();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2301153FC();
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_230310958();
      v7 = v68;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
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
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_128;
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

              v29 = v13 * a3;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_127;
              }

              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_127;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v15 = 0;
            v18 = v13;
            goto LABEL_128;
          }

          goto LABEL_66;
        }

LABEL_127:
        v18 = 0;
        v15 = 1;
        goto LABEL_128;
      }

      goto LABEL_132;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = 0;
        v32 = a3 + 48;
        v33 = a3 + 55;
        v34 = a3 + 87;
        if (a3 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        v15 = 1;
        while (1)
        {
          v35 = *result;
          if (v35 < 0x30 || v35 >= v32)
          {
            if (v35 < 0x41 || v35 >= v33)
            {
              v18 = 0;
              if (v35 < 0x61 || v35 >= v34)
              {
                goto LABEL_128;
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

          v37 = v31 * a3;
          if ((v37 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_127;
          }

          v38 = v35 + v36;
          v21 = __CFADD__(v37, v38);
          v31 = v37 + v38;
          if (v21)
          {
            goto LABEL_127;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_126;
          }
        }
      }

      goto LABEL_127;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_128;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_127;
            }

            v20 = v16 + v17;
            v21 = v19 >= v20;
            v13 = v19 - v20;
            if (!v21)
            {
              goto LABEL_127;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_128:

        LOBYTE(v69) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_127;
    }

    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  v41 = HIBYTE(v5) & 0xF;
  v69 = v6;
  v70 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v31 = 0;
        v60 = a3 + 55;
        v61 = a3 + 87;
        v62 = a3 + 48;
        if (a3 > 10)
        {
          v62 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v63 = &v69;
        v15 = 1;
        while (1)
        {
          v64 = *v63;
          if (v64 < 0x30 || v64 >= v62)
          {
            if (v64 < 0x41 || v64 >= v60)
            {
              v18 = 0;
              if (v64 < 0x61 || v64 >= v61)
              {
                goto LABEL_128;
              }

              v65 = -87;
            }

            else
            {
              v65 = -55;
            }
          }

          else
          {
            v65 = -48;
          }

          v66 = v31 * a3;
          if ((v66 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_127;
          }

          v67 = v64 + v65;
          v21 = __CFADD__(v66, v67);
          v31 = v66 + v67;
          if (v21)
          {
            goto LABEL_127;
          }

          v63 = (v63 + 1);
          if (!--v41)
          {
            goto LABEL_126;
          }
        }
      }

      goto LABEL_127;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v31 = 0;
        v43 = a3 + 48;
        v44 = a3 + 55;
        v45 = a3 + 87;
        if (a3 > 10)
        {
          v43 = 58;
        }

        else
        {
          v45 = 97;
          v44 = 65;
        }

        v46 = &v69 + 1;
        v15 = 1;
        while (1)
        {
          v47 = *v46;
          if (v47 < 0x30 || v47 >= v43)
          {
            if (v47 < 0x41 || v47 >= v44)
            {
              v18 = 0;
              if (v47 < 0x61 || v47 >= v45)
              {
                goto LABEL_128;
              }

              v48 = -87;
            }

            else
            {
              v48 = -55;
            }
          }

          else
          {
            v48 = -48;
          }

          v49 = v31 * a3;
          if ((v49 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_127;
          }

          v50 = v47 + v48;
          v21 = v49 >= v50;
          v31 = v49 - v50;
          if (!v21)
          {
            goto LABEL_127;
          }

          ++v46;
          if (!--v42)
          {
            goto LABEL_126;
          }
        }
      }

      goto LABEL_127;
    }

    goto LABEL_131;
  }

  if (v41)
  {
    v51 = v41 - 1;
    if (v51)
    {
      v31 = 0;
      v52 = a3 + 48;
      v53 = a3 + 55;
      v54 = a3 + 87;
      if (a3 > 10)
      {
        v52 = 58;
      }

      else
      {
        v54 = 97;
        v53 = 65;
      }

      v55 = &v69 + 1;
      v15 = 1;
      do
      {
        v56 = *v55;
        if (v56 < 0x30 || v56 >= v52)
        {
          if (v56 < 0x41 || v56 >= v53)
          {
            v18 = 0;
            if (v56 < 0x61 || v56 >= v54)
            {
              goto LABEL_128;
            }

            v57 = -87;
          }

          else
          {
            v57 = -55;
          }
        }

        else
        {
          v57 = -48;
        }

        v58 = v31 * a3;
        if ((v58 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_127;
        }

        v59 = v56 + v57;
        v21 = __CFADD__(v58, v59);
        v31 = v58 + v59;
        if (v21)
        {
          goto LABEL_127;
        }

        ++v55;
        --v51;
      }

      while (v51);
LABEL_126:
      v15 = 0;
      v18 = v31;
      goto LABEL_128;
    }

    goto LABEL_127;
  }

LABEL_133:
  __break(1u);
  return result;
}

unsigned __int8 *sub_2301183DC(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_23030FB18();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2301153FC();
    v39 = v38;

    v5 = v39;
    if ((v39 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_230310958();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_126;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_47:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_65;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = 0;
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        while (1)
        {
          v34 = *result;
          if (v34 < 0x30 || v34 >= v31)
          {
            if (v34 < 0x41 || v34 >= v32)
            {
              v17 = 0;
              if (v34 < 0x61 || v34 >= v33)
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

          if (!is_mul_ok(v30, a3))
          {
            goto LABEL_126;
          }

          v36 = v30 * a3;
          v37 = v34 + v35;
          v20 = __CFADD__(v36, v37);
          v30 = v36 + v37;
          if (v20)
          {
            goto LABEL_126;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_126;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_65:
        v17 = 0;
LABEL_127:

        return v17;
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

  v40 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v40)
      {
        v30 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_127;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v30, a3))
          {
            goto LABEL_126;
          }

          v65 = v30 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v30 = v65 + v66;
          if (v20)
          {
            goto LABEL_126;
          }

          v62 = (v62 + 1);
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v40)
    {
      v41 = v40 - 1;
      if (v41)
      {
        v30 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
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

          if (!is_mul_ok(v30, a3))
          {
            goto LABEL_126;
          }

          v48 = v30 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v30 = v48 - v49;
          if (!v20)
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v41)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v40)
  {
    v50 = v40 - 1;
    if (v50)
    {
      v30 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_127;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v30, a3))
        {
          goto LABEL_126;
        }

        v57 = v30 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v30 = v57 + v58;
        if (v20)
        {
          goto LABEL_126;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_125:
      v17 = v30;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_23011895C(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v25 = 0;
    LOBYTE(v24) = 1;
    return v25 | ((v24 & 1) << 8);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_230115C2C(result, a2, 10);

    v24 = (v6 >> 8) & 1;
LABEL_63:
    if (v24)
    {
      v25 = 0;
    }

    else
    {
      v25 = v6;
    }

    return v25 | ((v24 & 1) << 8);
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_230310958();
      v3 = v26;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LOBYTE(v6) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              v15 = (10 * v6);
              if (v15 != 10 * v6)
              {
                goto LABEL_61;
              }

              v6 = v15 + v14;
              if ((v15 + v14) != v6)
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LOBYTE(v6) = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_61;
            }

            v20 = (10 * v6);
            if (v20 != 10 * v6)
            {
              goto LABEL_61;
            }

            v6 = v20 + v19;
            if ((v20 + v19) != v6)
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LOBYTE(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LOBYTE(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            v9 = (10 * v6);
            if (v9 != 10 * v6)
            {
              goto LABEL_61;
            }

            v6 = v9 - v8;
            if ((v9 - v8) != v6)
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v24) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LOBYTE(v6) = 0;
        v21 = v27;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = (10 * v6);
          if (v23 != 10 * v6)
          {
            break;
          }

          v6 = v23 + v22;
          if ((v23 + v22) != v6)
          {
            break;
          }

          ++v21;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LOBYTE(v6) = 0;
        v10 = v27 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = (10 * v6);
          if (v12 != 10 * v6)
          {
            break;
          }

          v6 = v12 - v11;
          if ((v12 - v11) != v6)
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LOBYTE(v6) = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = (10 * v6);
        if (v18 != 10 * v6)
        {
          break;
        }

        v6 = v18 + v17;
        if ((v18 + v17) != v6)
        {
          break;
        }

        ++v16;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_230118C8C(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v25 = 0;
    LOBYTE(v24) = 1;
    return v25 & 0xFFFEFFFF | ((v24 & 1) << 16);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_23011620C(result, a2, 10);

    v24 = HIWORD(v6) & 1;
LABEL_63:
    if (v24)
    {
      v25 = 0;
    }

    else
    {
      v25 = v6;
    }

    return v25 & 0xFFFEFFFF | ((v24 & 1) << 16);
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_230310958();
      v3 = v26;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LOWORD(v6) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              v15 = (10 * v6);
              if (v15 != 10 * v6)
              {
                goto LABEL_61;
              }

              v6 = v15 + v14;
              if ((v15 + v14) != v6)
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LOWORD(v6) = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_61;
            }

            v20 = (10 * v6);
            if (v20 != 10 * v6)
            {
              goto LABEL_61;
            }

            v6 = v20 + v19;
            if ((v20 + v19) != v6)
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LOWORD(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LOWORD(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            v9 = (10 * v6);
            if (v9 != 10 * v6)
            {
              goto LABEL_61;
            }

            v6 = v9 - v8;
            if ((v9 - v8) != v6)
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v24) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LOWORD(v6) = 0;
        v21 = v27;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = (10 * v6);
          if (v23 != 10 * v6)
          {
            break;
          }

          v6 = v23 + v22;
          if ((v23 + v22) != v6)
          {
            break;
          }

          ++v21;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LOWORD(v6) = 0;
        v10 = v27 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = (10 * v6);
          if (v12 != 10 * v6)
          {
            break;
          }

          v6 = v12 - v11;
          if ((v12 - v11) != v6)
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LOWORD(v6) = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = (10 * v6);
        if (v18 != 10 * v6)
        {
          break;
        }

        v6 = v18 + v17;
        if ((v18 + v17) != v6)
        {
          break;
        }

        ++v16;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_230118FBC(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v25 = 0;
    LOBYTE(v24) = 1;
LABEL_65:
    LOBYTE(v27[0]) = v24;
    return v25 | ((v24 & 1) << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_2301167EC(result, a2, 10);

    v24 = (v6 >> 32) & 1;
LABEL_63:
    v25 = v6;
    if (v24)
    {
      v25 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_230310958();
      v3 = v26;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LODWORD(v6) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              v15 = 10 * v6;
              if (v15 != v15)
              {
                goto LABEL_61;
              }

              LODWORD(v6) = v15 + v14;
              if (__OFADD__(v15, v14))
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_61;
            }

            v20 = 10 * v6;
            if (v20 != v20)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v20 + v19;
            if (__OFADD__(v20, v19))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LODWORD(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            v9 = 10 * v6;
            if (v9 != v9)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v9 - v8;
            if (__OFSUB__(v9, v8))
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v24) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LODWORD(v6) = 0;
        v21 = v27;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v6;
          if (v23 != v23)
          {
            break;
          }

          LODWORD(v6) = v23 + v22;
          if (__OFADD__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LODWORD(v6) = 0;
        v10 = v27 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = 10 * v6;
          if (v12 != v12)
          {
            break;
          }

          LODWORD(v6) = v12 - v11;
          if (__OFSUB__(v12, v11))
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LODWORD(v6) = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = 10 * v6;
        if (v18 != v18)
        {
          break;
        }

        LODWORD(v6) = v18 + v17;
        if (__OFADD__(v18, v17))
        {
          break;
        }

        ++v16;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}